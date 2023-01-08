#!/usr/bin/env python3
import os
import sys
import argparse
from PIL import Image # Linux package python-imaging may include python-pillow

parser = argparse.ArgumentParser(description="Converts a 16-color PNG to an 8px column mode DA1/GDT.")
parser.add_argument("filename", help="PNG file to convert")
parser.add_argument("-x", action='store', type=int, default=0, help="Image X pixel offset, must be divisible by 8, default=0");
parser.add_argument("-y", action='store', type=int, default=0, help="Image Y pixel offset, default=0");
parser.add_argument("-p", action='store_true', help="Don't save palette in DA1")
args = parser.parse_args()
if (args.x % 8) != 0:
	print("X offset must be divisible by 8, this is", args.x)
	exit(4)

def OutputLiterals():
	global buf
	global outbuf
	global litstrlen
	global litstrofs
	if (litstrlen <= 0) or (litstrlen > 0xFF):
		print("Bad litstrlen! Please complain to author.") # script logic fail
		exit(8)
	if litstrlen <= 8:
		outbuf.append(0xF0 + litstrlen)
	else:
		outbuf += bytearray([0xF0, litstrlen])

	while litstrlen != 0:
		outbuf.append(buf[litstrofs])
		litstrofs += 1
		litstrlen -= 1
	litstrlen = 0
	litstrofs = -1

with Image.open(args.filename) as img:
	print("Read as ", img.format, img.size, img.mode)
	if img.mode != 'P':
		print("Image must have a palette")
		exit(2)
	palette = img.getpalette() # bytearray in RGB order
	if len(palette) < 48: palette.append(bytearray(48 - len(palette))) # pad to 16 colors if necessary
	if (img.width % 8) != 0:
		print("Image width must be divisible by 8, this is", img.width)
		exit(3)

	args.x = args.x >> 3
	w = img.width >> 3
	h = img.height
	flag = 0x4F # 8px mode
	if not args.p: flag = flag | 0x80

	# Header
	outbuf = bytearray([0x44,0x41,0x31,0x00, 0,0,0,0]) # sig, filesize placeholder
	outbuf += bytearray([args.x, w, args.y & 0xFF, args.y >> 8, h & 0xFF, h >> 8, 0x00, flag])
	# Palette, nibble-packed BRG order.
	if not args.p:
		i = 0
		while i < 48:
			outbuf += bytearray([(palette[i + 2] & 0xF0) + (palette[i] >> 4), (palette[i + 1] & 0xF0) + (palette[i + 5] >> 4), (palette[i + 3] & 0xF0) + (palette[i + 4] >> 4)])
			i += 6
	sectionsizeofs = len(outbuf)
	outbuf += bytearray([0,0, 0,0, 0,0, 0,0]) # section size placeholders

	# The bitmap is an array of individual 4/8 bpp pixel values in scanline order.
	bitmap = img.getdata()
	bitmask = 1
	planebuf = [bytearray(), bytearray(), bytearray(), bytearray()]
	for i in range(4):
		# Process one bitplane at a time, first 0x01 (the lowest bits).
		plane = bytearray(map(lambda x: (x & bitmask) >> i, bitmap))
		bitmask = bitmask << 1
		# Pack the plane into an 8px column.
		for x in range(w):
			ofs = x << 3
			for y in range(h):
				row = 0
				for j in range(8):
					row += plane[ofs + j] << (7 - j)
				planebuf[i].append(row)
				ofs += img.width
		buf = planebuf[i]

		# Compress the columnified bitplane, add to output buffer.
		sectionsize = len(outbuf)
		y = 0
		litstrlen = 0
		litstrofs = -1
		while y < len(buf):
			row = y % h

			# Clear all bits.
			if buf[y] == 0:
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 255) and (row < h) and (buf[y] == 0):
					rep += 1
					y += 1
					row += 1
				if rep >= 0x20:
					outbuf.append(0)
				outbuf.append(rep)

			# Set all bits.
			elif buf[y] == 0xFF:
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 255) and (row < h) and (buf[y] == 0xFF):
					rep += 1
					y += 1
					row += 1
				if rep < 0x20:
					outbuf.append(0x20 + rep)
				else:
					outbuf += bytearray([0x20, rep])

			# Copy from 4 rows above.
			elif (row >= 4) and (buf[y] == buf[y - 4]):
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 255) and (row < h) and (buf[y] == buf[y - 4]):
					rep += 1
					y += 1
					row += 1
				if rep < 0x10:
					outbuf.append(0xC0 + rep)
				else:
					outbuf += bytearray([0xC0, rep])

			# Copy from 2 columns to the left.
			elif (y >= h * 2) and (buf[y] == buf[y - h * 2]):
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 255) and (row < h) and (buf[y] == buf[y - h * 2]):
					rep += 1
					y += 1
					row += 1
				if rep < 0x10:
					outbuf.append(0xE0 + rep)
				else:
					outbuf += bytearray([0xE0, rep])

			# Copy from bitplane 0.
			elif (i > 0) and (buf[y] == planebuf[0][y]):
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 255) and (row < h) and (buf[y] == planebuf[0][y]):
					rep += 1
					y += 1
					row += 1
				if rep < 0x20:
					outbuf.append(0x40 + rep)
				else:
					outbuf += bytearray([0x40, rep])

			# Copy from bitplane 0, inverted.
			elif (i > 0) and (buf[y] == planebuf[0][y] ^ 0xFF):
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 127) and (row < h) and (buf[y] == planebuf[0][y] ^ 0xFF):
					rep += 1
					y += 1
					row += 1
				outbuf += bytearray([0xFB, rep])

			# Copy from bitplane 1.
			elif (i > 1) and (buf[y] == planebuf[1][y]):
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 255) and (row < h) and (buf[y] == planebuf[1][y]):
					rep += 1
					y += 1
					row += 1
				if rep < 0x20:
					outbuf.append(0x60 + rep)
				else:
					outbuf += bytearray([0x60, rep])

			# Copy from bitplane 1, inverted.
			elif (i > 1) and (buf[y] == planebuf[1][y] ^ 0xFF):
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 127) and (row < h) and (buf[y] == planebuf[1][y] ^ 0xFF):
					rep += 1
					y += 1
					row += 1
				outbuf += bytearray([0xFB, 0x80 + rep])

			# Copy from bitplane 2.
			elif (i > 2) and (buf[y] == planebuf[2][y]):
				if litstrlen != 0: OutputLiterals()
				rep = 1
				y += 1
				row += 1
				while (rep < 255) and (row < h) and (buf[y] == planebuf[2][y]):
					rep += 1
					y += 1
					row += 1
				if rep < 0x20:
					outbuf.append(0x80 + rep)
				else:
					outbuf += bytearray([0x80, rep])

			# String of literals.
			else:
				if litstrofs < 0: litstrofs = y
				litstrlen += 1
				row += 1
				y += 1

			# Column end marker.
			if row == h:
				if litstrlen != 0: OutputLiterals()
				outbuf.append(0xFF)

		# Calculate final section size for this plane.
		sectionsize = len(outbuf) - sectionsize
		if sectionsize > 0xFFFF:
			print("Section overflow! Please complain to script author.") # needs more compression possibilities implemented
			exit(9)
		outbuf[sectionsizeofs] = sectionsize & 0xFF
		sectionsizeofs += 1
		outbuf[sectionsizeofs] = sectionsize >> 8
		sectionsizeofs += 1

	# Save the final file size at start of header.
	finalsize = len(outbuf)
	outbuf[4] = finalsize & 0xFF
	outbuf[5] = (finalsize >> 8) & 0xFF
	outbuf[6] = (finalsize >> 16) & 0xFF
	outbuf[7] = (finalsize >> 24) & 0xFF

	basename, ext = os.path.splitext(img.filename)
	outputname = basename + '.da1'
	print("writing into", outputname)
	with open(outputname, 'wb') as f:
		f.write(outbuf)

exit(0)
