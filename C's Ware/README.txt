These tools are shamelessly stolen from the previous Xenon translation.
Here's a link to their stuff: https://github.com/XenonTranslation/
No idea where they found the LZSS tool but that made this possible.

We have 2 tools:

decomp.exe decompresses and recompresses the .CC script files.
Usage: 
	Arg1: d for decompress, e for compress
	Arg2: source file
	Arg3: output file
	Decompress example: decomp_s.exe d "S00.CC" "S00.U.CC"
	Compress example: decomp_s.exe e "S00.U.CC" "S00.CC"

retract.exe takes the decompressed files and spits them out into a text file,
or takes the text file and inserts the text strings back into the original file.
The original translation project created this, but I modified it for my own comfort.
Each line is a text string in game, which includes music, script and graphics data.
The format is SHIFT-JIS, so use a compatible text editor.
Don't mess with the output by getting rid of the hex or adding/removing lines,
otherwise it'll break when being re-added into the scripts.
Usage:
	Arg1: The original decompressed file
	Arg2: The (target) text file
	Arg3: The output script file
	Arg4: w for write, x for read
	Extract example: retract_s.exe "S00.U.CC" "S00.CC.txt" "Idontdoanything" w
	Insert example: retract_s.exe "Japanese/S00.U.CC" "S00.CC.txt" "English/S00.U.CC" x

Important note: If your resulting changes end up larger than 64kb uncompressed, the engine won't be able to load the file
That's all from me, good luck.