// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: delete assigns the type's default value. For integers that
// is 0, on both a local variable and a storage variable.
// EXPECTED: resetLocal(7) == 0, resetState() leaves stored == 0.
contract DeleteIntegerResetsToZero {
    uint256 public stored = 42;

    function resetLocal(uint256 x) public pure returns (uint256) {
        delete x;
        return x;
    }

    function resetState() public {
        delete stored;
    }
}
