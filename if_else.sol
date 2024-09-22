// SPDX-License-Identifier: MIT
// Portero de un bar
pragma solidity 0.8.24;

contract if_else {

    uint256 public numero; //Variable de estado que va almacenar la edad
    uint256 public edad_int; //Edad limite para la mayoria de edad

    constructor (uint256 _edad_int){
        edad_int = _edad_int;
    }

    function establecerNumero(uint256 _numero) public { //funcion establece el valor de numero
        numero = _numero;
    }

    function mensaje () public view returns(string memory) {
        //control de flujo if - else
        if (numero > edad_int ) {
         return "Puedes ingresar eres mayor de edad";
         //condición secundaria
        } else if ( numero== edad_int){
            return  "Acabas de cumplir mayoria de edad puedes ingresar";
         //Condicion final   
        } else {
            return "Eres menor de edad no puedes entrar";
        }
    }
}