// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Array {
    //Dos formas de inicializar un array [11, 22, 33, 44], vector [2] == print(33)
    uint256 [] public arr;
    uint256 [] public arr2 = [22, 33, 44];
    // Inicializar un array de tamaño fijo, todos los elementos en el array van a ser iguales a 0
    uint256 [10] public arr3;

    function get(uint256 i) public view returns (uint256) {
        return  arr2[i];
    }

    function getArr() public view returns (uint256[] memory){
        return arr2;
    }

    function push(uint256 i) public {
        arr2.push(i);
    }

    function pop() public {
        arr2.pop();
    }

    function getLenght() public view returns (uint256) {
        return arr2.length;
    }

    function remove(uint256 _index) public {
        delete  arr2[_index];
    }
}