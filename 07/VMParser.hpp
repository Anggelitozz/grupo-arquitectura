#ifndef VMPARSER_HPP
#define VMPARSER_HPP
#include <bitset>     
#include <cstdint>    
#include <iostream>   
#include <map>        
#include <regex>      
#include <stdexcept>  
#include <string>     

#include "ASMWritter.hpp"

using namespace std;

class VMParser {
   public:
    VMParser();   //  constructor
    ~VMParser();  // destructor
    string parseVMLine(string vmLine);
};
#endif  // VMPARSER_HPP