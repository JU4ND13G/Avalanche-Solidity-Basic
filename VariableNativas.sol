// SPDX-License-Identifier: MIT
// Variables nativas de Solidity

pragma solidity 0.8.24;
contract VariableNativas {
    string private fullName; //Solo la puedo cambiar en el momento que inicializo el contrato
    constructor(string memory _lastname){
        fullName = string.concat("Juan Diego"," ", _lastname); //variables de inicialización
    }

    function getName() public view returns (string memory) {
        return fullName;
    }
    /*
    uint enteros sin signo (No Negativos)
    uint8 rango de 0 a 2 ** 8-1
    uint16 rango de 0 a 2 ** 16-1
    . . .
    uint256 rango 0 a 2 ** 256-1
    */
    uint public  uint_8 = 1;
    uint256 public uint_256 = 234;

    // int enteros pero a diferencia del uint me permite numeros negativos
    int8 public int_8 = -1;
    int256 public int_256 = 456;

    // Variable de tipo address propia de Solidity y permite alamacena direcciones
    address public address_var = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // bytes guardar datos de tipo Binario
    bytes1 a_var = 0xb5; // [10110101]
    bytes1 b_var = 0x56; // [01011010]
    bytes1 c_var;

    function getBytes() public view returns (bytes1){
        return c_var;
    }
}

