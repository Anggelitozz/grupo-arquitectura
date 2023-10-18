#include "Parser.hpp"
Parser::Parser() {
    compDict.clear();
    destDict.clear();
    jumpDict.clear();

    /* Mapeo de las intrucciones computarizadas*/
    /*            A_M,C1-C6 */
    compEntry("0", "0101010");
    compEntry("1", "0111111");
    compEntry("-1", "0111010");
    compEntry("D", "0001100");
    compEntry("A", "0110000");
    compEntry("!D", "0001101");
    compEntry("!A", "0110001");
    compEntry("-D", "0001111");
    compEntry("-A", "0110011");
    compEntry("D+1", "0011111");
    compEntry("1+D", "0011111");  
    compEntry("A+1", "0110111");
    compEntry("1+A", "0110111");  
    compEntry("D-1", "0001110");
    compEntry("A-1", "0110010");
    compEntry("D+A", "0000010");
    compEntry("A+D", "0000010");  
    compEntry("D-A", "0010011");
    compEntry("A-D", "0000111");
    compEntry("D&A", "0000000");
    compEntry("A&D", "0000000");  
    compEntry("D|A", "0010101");
    compEntry("A|D", "0010101");  

    compEntry("M", "1110000");
    compEntry("!M", "1110001");
    compEntry("-M", "1110011");
    compEntry("M+1", "1110111");
    compEntry("1+M", "1110111");
    compEntry("M-1", "1110010");
    compEntry("D+M", "1000010");
    compEntry("M+D", "1000010");  
    compEntry("D-M", "1010011");
    compEntry("M-D", "1000111");
    compEntry("D&M", "1000000");
    compEntry("M&D", "1000000");  
    compEntry("D|M", "1010101");
    compEntry("M|D", "1010101");  

    /* Mapeo de las direcciones */
    destEntry("null", "000");
    destEntry("M", "001");
    destEntry("D", "010");
    destEntry("MD", "011");
    destEntry("DM", "011");  
    destEntry("A", "100");
    destEntry("AM", "101");
    destEntry("MA", "101");  
    destEntry("AD", "110");
    destEntry("DA", "110");   
    destEntry("AMD", "111");  
    destEntry("ADM", "111");
    destEntry("MAD", "111");
    destEntry("MDA", "111");
    destEntry("DAM", "111");
    destEntry("DMA", "111");

    /* Mapeo de los saltos*/
    jumpEntry("null", "000");
    jumpEntry("JGT", "001");
    jumpEntry("JEQ", "010");
    jumpEntry("JGE", "011");
    jumpEntry("JLT", "100");
    jumpEntry("JNE", "101");
    jumpEntry("JLE", "110");
    jumpEntry("JMP", "111");
}

Parser::~Parser() {
    compDict.clear();  // Eliminar el contenido en la tablas de simbolos
    destDict.clear();
    jumpDict.clear();
}

void Parser::compEntry(string key, string val) {
    compDict.insert(pair<string, string>(key, val));
}
void Parser::destEntry(string key, string val) {
    destDict.insert(pair<string, string>(key, val));
}
void Parser::jumpEntry(string key, string val) {
    jumpDict.insert(pair<string, string>(key, val));
}

string Parser::compLookup(string instComp) {
    if (compDict.find(instComp) == compDict.end()) {
        return compDict.find("0")->second;  //Salida default
    } else {
        return compDict.find(instComp)->second;  // Salida de consulta
    }
}
string Parser::destLookup(string instDest) {
    if (destDict.find(instDest) == destDict.end()) {
        return destDict.find("null")->second;  // Salida default
    } else {
        return destDict.find(instDest)->second;  // Salida de consulta
    }
}
string Parser::jumpLookup(string instJump) {
    if (jumpDict.find(instJump) == jumpDict.end()) {
        return jumpDict.find("null")->second;  // Salida default
    } else {
        return jumpDict.find(instJump)->second;  // Salida de consulta
    }
}

string Parser::parseInst(string inst) {
    string tempInst;
    // Tipos de instrucciones verificar  '@'
    if (inst.find('@') != string::npos) {
        tempInst = inst.substr(1, inst.size() - 1);  // eliminar el '@'
        return parseAInst(tempInst);                 // instrucciones A
    } else {
        return parseCInst(inst);  // instrucciones C
    }
}

string Parser::parseAInst(string inst) {
    // Instrucciones con solo numeros
    if (inst.find_first_not_of("0123456789") == string::npos) {
        return prefixA + bitset<15>(stoi(inst)).to_string();
    } else {
        //Numeros enfrente de letras
        if (inst.find_first_of("0123456789") < inst.find_first_not_of("0123456789")) {  
            throw runtime_error("Parser::parseAInst(): instruccion A invalidad, la letras deben ir enfrente");
        }
        uint16_t addr = MyST.lookupSymbol(inst);
        return prefixA + bitset<15>(addr).to_string();
    }
}

string Parser::parseCInst(string inst) {
    // Divide la instrucción en '=' y ';'
    string::size_type idxe = inst.find('=');
    string::size_type idxsc = inst.find(';');

    string instDest = (idxe == string::npos) ? "null" : inst.substr(0, idxe);
    string instComp = inst.substr(idxe + 1, idxsc - idxe - 1);
    string instJump = (idxsc == string::npos) ? "null" : inst.substr(idxsc + 1, inst.size() - 1);
    // query lookup table
    return prefixC + compLookup(instComp) + destLookup(instDest) + jumpLookup(instJump);
}
