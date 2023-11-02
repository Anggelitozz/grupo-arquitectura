#ifndef ASMWRITTER_HPP
#define ASMWRITTER_HPP
#include <bitset>     
#include <cstdint>    
#include <functional> 
#include <map>        
#include <regex>      
#include <sstream>    
#include <stdexcept>  
#include <string>     

using namespace std;
extern string moduleName;
class ASMWritter
{
public:
    ASMWritter();  // Constructor
    ~ASMWritter(); // destructor

    //Comandos lógicos
    string vm_add();
    string vm_sub();
    string vm_neg();
    string vm_eq();
    string vm_gt();
    string vm_lt();
    string vm_and();
    string vm_or();
    string vm_not();
    // Comandos de acceso en memoria
    string vm_push(string segment, int offset);
    string vm_pop(string segment, int offset);

    // Funciones
    string vm_label(string label);
    string vm_goto(string label);
    string vm_if_goto(string label);
    string vm_function(string function_name, int n_vars);
    string vm_call(string function_name, int n_args);
    string vm_return();

    //Final del archivo .asm
    string vm_end();

private:
    void write(string vmCode);
    string registerName(string segment, int index);
    int symbolCounter; /**< Contador de los simbolos del programa */
    enum VMsegments
    {
        seg_constant,
        seg_static,
        seg_temp,
        seg_pointer,
        seg_local,
        seg_argument,
        seg_this,
        seg_that
    };
    map<string, VMsegments> map_segments;
    stringstream ss_ASM;
};
#endif // VMPARSER_HPP