//calling a telephone, tx.origin != msg.sender

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMagicNum {
    function setSolver(address _solver) external;
}

contract Attacker {
    function run() external {
        address inst = "yout_instance_address";
        IMagicNum level18 = IMagicNum(inst);

        //we need to create opcodes for creating a contract that
        bytes
            memory payload = "\x60\x0a\x60\x0c\x60\x00\x39\x60\x0a\x60\x00\xf3\x60\x2a\x60\x80\x52\x60\x20\x60\x80\xf3";
        address solver;
        assembly {
            solver := create(0, add(payload, 0x20), mload(payload))
        }
        level18.setSolver(solver);
    }
}
