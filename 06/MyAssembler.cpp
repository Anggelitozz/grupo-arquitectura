#include <algorithm>  // Algoritmos de busqueda, ordenamiento, copia  y eliminacion...
#include <fstream>    // Para escribir y leer archivo
#include <iostream>   //Muestra la información en pantal
#include <queue>      //la carga interna entre los pases
#include <string>     //Las instrucciones son guardadas como string

#include "Parser.hpp"
#include "TablaSimbolos.hpp"

using namespace std;

TablaSimbolos MyST;
Parser MyParser;

int main(int argc, char const *argv[]) {
    string fnameIn, fnameOut;
    ifstream fIn;
    ofstream fOut;

    queue<string> queue1, queue2;  // tempory asm instruction storage

    /* handling parameters*/
    if (argc < 2) {
        throw runtime_error("main(): plseas specify input file MyAssembler *.asm [*.hack]");
    } else {
        fnameIn = string(argv[1]);
        // Verificar que el archivo sea un .asm
        if (fnameIn.find(".asm") == string::npos)
            throw runtime_error("main(): input fime must be .asm");
        fIn.open(fnameIn);
        // Verificar si es posible abrir el .asm
        if (!fIn.is_open()) {
            throw runtime_error("main(): Incapaz de abrir el archivo " + fnameIn);
        }

        if (argc == 2) {
            string::size_type idx = fnameIn.find_last_of('.');  // Segundo parámetro del Ensamblador
            fnameOut = fnameIn.substr(0, idx) + ".hack";        // Añadir la extensión a .hack
        } else if (argc == 3) {
            fnameOut = string(argv[2]);
        } else {
            throw runtime_error("main(): Muchos parámetros");
        }
        fOut.open(fnameOut);
        if (!fOut.is_open()) {
            throw runtime_error("main(): Incapaz de abrir el archivo " + fnameOut);
        }

        cout << "output to " << fnameOut << endl;

        /* Depuracion del código para no leer comentarios y espacios vacios*/
        cout << "\t======\tPre-pass\t=====\t" << endl;
        string line;
        /*Lee cada linea del .asm*/
        while (getline(fIn, line)) {
            cout << line << endl;
            /* Eliminar comentarios */
            string::size_type idx = line.find("//");  // Encontrar el inicio del "//"
            string lineRmComm = line.substr(0, idx);
            if (lineRmComm.size() == 0) continue;  // Saltar lineas vacias
            /* Eliminar espacios */
            string::iterator str_iter = remove(lineRmComm.begin(), lineRmComm.end(), ' ');
            lineRmComm.erase(str_iter, lineRmComm.end());
            queue1.push(lineRmComm);  // Empujar la cola
        }

        /* Primera parte: Leer las etiquetas y llenar la tabla de simbolos*/
        cout << "\t======\tLeer-etiquetas\t======\t" << endl;
        while (!queue1.empty()) {
            line = queue1.front();
            queue1.pop();
            cout << line << endl;
            /* Las instruciones Label (L-instrucciones) */
            if (line.find('(') != string::npos && line.find(')') != string::npos) {
                string::size_type idx_L = line.find_last_of('(');
                string::size_type idx_R = line.find_first_of(')');
                line = line.substr(idx_L + 1, idx_R - 1);
                MyST.addLabel(line);
                continue;  // saltar la insercion a la seguna cola
            } else {
                MyST.incLabelCounter();  // Mover el contador de la etiqueta a la siguiente línea
            }
            queue2.push(line);
        }

        /* Traducir instrucciones */
        cout << "\t======\tTraducir-etiquetas\t======\t" << endl;
        while (!queue2.empty()) {
            line = queue2.front();
            queue2.pop();
            string macCode = MyParser.parseInst(line);  // Traducir esto a lenguaje máquina
            cout << line << "\t->\t" << macCode << endl;
            fOut << macCode << endl;
        }
        cout << "Traducción completada" << endl;
        fIn.close();
        fOut.close();
        cout << "Archivo cerrado" << endl;
    }
    return 0;
}
