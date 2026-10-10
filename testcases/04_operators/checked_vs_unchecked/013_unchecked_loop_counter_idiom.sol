// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the common gas optimisation. The loop counter cannot
// realistically overflow because it is bounded by n, so its increment
// is unchecked, while the accumulated total stays checked.
// EXPECTED: sum(5) == 10 (0+1+2+3+4), sum(0) == 0.
contract UncheckedLoopCounterIdiom {
    function sum(uint256 n) public pure returns (uint256 total) {
        for (uint256 i = 0; i < n; ) {
            total += i;
            unchecked {
                ++i;
            }
        }
    }
}
