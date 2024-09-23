// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;


contract Mapping {
    mapping (address => uint256) balances;

    function setBalance(address _addr) public {
        uint256 avaxBalance = _addr.balance;
        balances[_addr] = avaxBalance;
    }

    function getBalances(address _addr) public view returns (uint256){
        return  balances [_addr];
    }

    function remove(address _addr) public {
        delete balances [_addr];
    }

    function updateBalanceAvax(address _addr) public {
        setBalance(_addr);
    }
}