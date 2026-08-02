// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: explicit downcast (int256 -> int8) truncates the low bits,
// reinterpreting them as signed — no overflow check on explicit casts.
contract IntDowncastTruncation {
    function truncate(int256 x) public pure returns (int8) {
        return int8(x);
    }
}