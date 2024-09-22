// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract loop{

    function Loop () pure public {
        //for loop
        for (uint256 i = 0; i < 10; i++ ){
            if (i == 3){
                continue ;
            }

            if (i == 5) {
                break;
            }
        }
        //while loop
        uint j;
        uint256 security;
        while (j < 10){
            j++;
            if (j > 10000){
                break ;
            }
            security++;

        }

    }
}