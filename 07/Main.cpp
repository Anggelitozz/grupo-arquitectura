#include <algorithm> // STL algorithms like sort, search, copy, remove element...
#include <fstream>   // read write files
#include <iostream>  // display debug information in terminal
#include <string>    //instruction are saved as C++ stings.

#include "VMParser.hpp"

using namespace std;

VMParser vmp;
string moduleName;

int main(int argc, char const *argv[])
{
    string fnombreEntrada, fnombreSalida;
    ifstream fIn;
    ofstream fOut;

    /* LOS ARGUMENTOS A COMPILAR*/
    if (argc < 2)
    {
        throw runtime_error("main(): Porfavor especifica el archivo de entrada para el VMTranslator *.vm [*.asm]");
    }
    else
    {
        fnombreEntrada = string(argv[1]);
        // Validar si es un .asm
        if (fnombreEntrada.find(".vm") == string::npos)
            throw runtime_error("main(): input fime must be .vm");
        fIn.open(fnombreEntrada);
        // Validar si se puede abrir
        if (!fIn.is_open())
        {
            throw runtime_error("main(): unable to open file " + fnombreEntrada);
        }
        string::size_type idx = fnombreEntrada.find_last_of('.'); // Cambiar el nombre base
        string fNombre = fnombreEntrada.substr(0, idx);
        if (argc == 2)
        {
            fnombreSalida = fNombre + ".asm"; // Cambia la extensión a .asm
        }
        else if (argc == 3)
        {
            fnombreSalida = string(argv[2]);
        }
        else
        {
            throw runtime_error("main(): too many parameters");
        }
        fOut.open(fnombreSalida, ofstream::trunc);
        if (!fOut.is_open())
        {
            throw runtime_error("main(): Incapaz de abrir archivo" + fnombreSalida);
        }
        string::size_type relPath = fnombreEntrada.find_last_of('\\');     // Encuentra el nombre base
        moduleName = fNombre.substr(relPath + 1, fNombre.length() - 1); // Mantiene el path

        cout << "output to " << fnombreSalida << endl;
        string line;
        /* Read each line from the .vm file */
        while (getline(fIn, line))
        {
            string wtof = vmp.parseVMLine(line); // Escribe la salida
            fOut << wtof;
        }
        fOut << vmp.parseVMLine("end");
        // Asegurarse que todo este cerrado
        fIn.close();
        fOut.close();
    }
    return 0;
}
