// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: redundant/foldable computation so optimizer on vs off
// should produce visibly different IR (dead code elim, constant folding).
contract OptimizerSensitive {
    function compute(uint256 x) public pure returns (uint256) {
        uint256 a = x + 0;        // should fold away with optimizer on
        uint256 b = a * 1;        // should fold away with optimizer on
        uint256 c = b - 0;        // should fold away with optimizer on
        uint256 unused = 12345;   // dead code, optimizer should eliminate
        return c + 5;
    }
}