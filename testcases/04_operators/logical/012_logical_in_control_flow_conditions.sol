// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: logical expressions as conditions in if, while and require.
// The while loop combines a bound check with a flag, and exits as soon
// as either part turns false.
// EXPECTED: ifBoth(true, true) == 1, whileBound(10) == 3,
// requireEither(false, false) reverts with "neither".
contract LogicalInControlFlowConditions {
    function ifBoth(bool a, bool b) public pure returns (uint256) {
        if (a && b) {
            return 1;
        }
        return 0;
    }

    function whileBound(uint256 n) public pure returns (uint256) {
        uint256 i = 0;
        bool go = true;
        while (i < n && go) {
            i++;
            if (i == 3) {
                go = false;
            }
        }
        return i;
    }

    function requireEither(bool a, bool b) public pure {
        require(a || b, "neither");
    }
}
