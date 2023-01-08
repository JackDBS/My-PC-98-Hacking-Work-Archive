#include <iostream>
#include <fstream>
#include <string.h>

using namespace std;

void PrettyHex(char pretty[6], unsigned char hex)
{
    memset(pretty, 0, 6);
    sprintf(pretty, "<$%02X>", hex);   
    return;
}

void PrintHex(ofstream &scripttxt, unsigned char hex)
{
    char pretty[6];
    PrettyHex(pretty, hex);
    scripttxt.write(reinterpret_cast<char*>(&pretty), 5);
    return;
}

void PrintHexes(ifstream &scriptbin, ofstream &scripttxt, int num)
{
    for(int i = 0; i < num; i++)
    {
        unsigned char hex = 0;
        scriptbin.read(reinterpret_cast<char*>(&hex), 1);
        PrintHex(scripttxt, hex);
    }
    return;
}

int main(int argc, char *argv[])
{
	if(argc != 5) {
		std::cout << 
		"Usage:\n"
		"\tArg1: The original decompressed file\n"
		"\tArg2: The (target) text file\n"
		"\tArg3: The output script file\n"
		"\tArg4: w for write, x for read" << std::endl;
		return 0;
	}
	
	string infilename(argv[1]);
	string scriptfilename(argv[2]);
	string outfilename(argv[3]);
	string cmd(argv[4]);
	bool write = cmd == "w";
	ifstream cc(infilename, ios::binary);
	
	ifstream si;
	ofstream sc;
	if(write)
		sc.open(scriptfilename, ios::out | ios::binary);
	else
		si.open(scriptfilename, ios::in | ios::binary);
	ofstream txt(outfilename, ios::binary);

	cc.seekg(0, ios::end);
	unsigned int cc_len = cc.tellg();
	if(cc.tellg() < 0) {
		std::cout << "Could not open file " << scriptfilename << std::endl;
		return 0;
	}
	cc.seekg(0, ios::beg);

	unsigned int cc_pos = 0;
	unsigned int cc_free = 65536 - cc_len;
	while(cc_pos < cc_len)
	{
		unsigned char cmd = 0;
		cc.read(reinterpret_cast<char*>(&cmd), 1);
		cc_pos++;
		if(cc.eof())
			break;

		if (cmd == 0xFD)
		{
			if(write)
			{
				// Read in lenght + 1 for the zero
				unsigned char line_len = 0;
				cc.read(reinterpret_cast<char*>(&line_len), 1);
				cc_pos++;
				line_len += 1;
				while(true)
				{
					cc_pos++;
					char c;
					cc.read(reinterpret_cast<char*>(&c),1);
					if(c == '\0')
					{
						break;
					}
					else if(c == '\n')
					{
						sc.write("\\", 1);
					}
					else
					{
						sc.write(reinterpret_cast<char*>(&c), 1);
					}
				}
				sc.write("\n",1);
			}
			else
			{
				txt.write(reinterpret_cast<char*>(&cmd),1);
				char c;
				cc.read(reinterpret_cast<char*>(&c), 1);
				txt.write(&c,1);

				std::string sline;
				std::getline(si,sline);
				int maxWidth = 59;
				for(auto &c : sline)
				{
					if(c == '\\')
						c = '\n';
				}
				int lastSpacePos = 0;
				int width = 0;
				if(cc_free > sline.size()) {
					for(int i = 0; i < sline.size(); i++) {
						if(sline[i] == ' ') {
							lastSpacePos = i;
						}
						if(sline[i] == '\n') {
							width = 0;
						}
						width++;
						if (width >= maxWidth) {
							width = 0;
							if (lastSpacePos) {
								sline[lastSpacePos] = '\n';
								width = i - lastSpacePos;
								lastSpacePos = 0;
							}	
						}
						cc_free--;
					}
					txt.write(sline.c_str(),sline.size());
					txt.write("\0",1);
					while(true)
					{
						cc.read(reinterpret_cast<char*>(&c), 1);
						if(c == '\0')
							break;
						cc_free++;
					}					
				} else {
					while(true)
					{
						cc.read(reinterpret_cast<char*>(&c), 1);
						txt.write(&c,1);
						if(c == '\0')
							break;
					}	
				}
			}
			
		} else if(!write) {
			txt.write(reinterpret_cast<char*>(&cmd),1);
		}
	}

	cc.close();
	sc.close();
	
	//txt.seekp(0, ios::end);
	unsigned int total_len = txt.tellp();
	txt.seekp(0x14, ios::beg);
	uint16_t fileSize = total_len - 14;
	std::cout << fileSize << std::endl;
	txt.write(reinterpret_cast<char*>(&fileSize),2);
	
	txt.close();



	return 0;
}