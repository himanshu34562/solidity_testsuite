// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the standard loop uses of ++ and --: a for-loop counter, a
// while loop counting down, and a do-while counting up.
// EXPECTED: sumTo(5) == 10, countDown(4) == 4, doWhile(0) == 1.
contract IncrementInForAndWhileLoops {
    function sumTo(uint256 n) public pure returns (uint256 total) {
        for (uint256 i = 0; i < n; i++) {
            total += i;
        }
    }

    function countDown(uint256 n) public pure returns (uint256 steps) {
        while (n > 0) {
            n--;
            steps++;
        }
    }

    function doWhile(uint256 n) public pure returns (uint256 i) {
        do {
            i++;
        } while (i < n);
    }
}
