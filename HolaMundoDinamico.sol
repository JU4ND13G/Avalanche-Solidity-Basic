// SPDX-License-Identifier: MIT
//Contrato de Saludo Dimanmico en Solidity

pragma solidity 0.8.24;

contract HolaMundoDinamico {
    string saludo_d = "Hola Dinamico";
    string public saludo_e = "Hola Estatico";

    function leerSaludo() public view returns (string memory) {
        return saludo_d;
    }
    
    function guardarSaludo(string memory nuevoSaludo) public {
        saludo_d = nuevoSaludo;
    } 
}