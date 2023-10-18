#ifndef TABLASIMBOLOS_HPP
#define TABLASIMBOLOS_HPP

#include <cstdint>     
#include <map>        
#include <stdexcept>  
#include <string>     
using namespace std;
class TablaSimbolos {
   private:
    /* El espacio de las tablas de simbolos*/
    map<string, uint16_t> table;
    int VariableCounter;
    int LabelCounter;

   public:
    TablaSimbolos();                      // Inicializar la tabla de simbolos y el contador de variables
    ~TablaSimbolos();                     // Liberar la direccion usada
    int incLabelCounter();              // Encontrar la direccion de la etiqueta
    void addLabel(string Label);        //Agregar una nueva etiqueta a la tabla
    void addVariable(string Var);       // Agregar una nueva variable a la tabla
    uint16_t lookupSymbol(string Var);  // Obtener la dirección en memoria de un simbolo
};

#endif  // SYMBOLTABLE_HPP
