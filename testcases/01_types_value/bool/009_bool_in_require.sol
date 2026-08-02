// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: bool as the condition operand of require() — tests the
// specific codegen path for require's implicit conditional-revert,
// separate from an explicit if/revert combination.
contract BoolInRequire {
    function checkCondition(bool cond) public pure returns (bool) {
        require(cond, "condition must be true");
        return true;
    }
}