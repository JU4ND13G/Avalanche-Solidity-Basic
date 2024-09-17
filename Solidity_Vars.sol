// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Solidity_Vars{
    
    address public block_now;   // Dirección del minero actual
    uint public block_diff;     // Dificultad del bloque actual
    uint public block_num;      // Numero de bloque de la cadena actual
    bytes32 public block_hash;  // Tipo de dato para el block hash
    uint public time_stamp;     // Marca de tiempo actual en formato epoch
    uint public gas_left;       // Gas restante
    address public sender;      // Dirección de quien esta haciendo la llamada al contrato
    bytes4 public sig_id;       // Los primero 4 Bytes de la llamda de la función
    uint public gas_limit;      // Limite de gas del bloque actual

    function updateParams() public{
        block_now = block.coinbase;
        block_diff = block.prevrandao;
        block_num = block.number;
        time_stamp = block.timestamp;
        gas_left = gasleft();
        sender = msg.sender;
        sig_id = msg.sig;
        gas_limit = block.gaslimit;

    }
}