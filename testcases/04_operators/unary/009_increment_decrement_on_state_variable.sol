// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ++ and -- on a storage variable, prefix and postfix. The
// return value follows the same old-vs-new rule as for locals while the
// slot is updated. Decrementing a zero counter reverts with Panic(0x11).
// EXPECTED: starting from counter == 0, postInc() returns 0 and leaves
// counter == 1, inc() returns 2, dec() returns 1.
contract IncrementDecrementOnStateVariable {
    uint256 public counter;
    uint8 public small;

    function inc() public returns (uint256) {
        return ++counter;
    }

    function postInc() public returns (uint256) {
        return counter++;
    }

    function dec() public returns (uint256) {
        return --counter;
    }

    function bumpSmall() public {
        small++;
    }
}
