// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: tests that compile-time rational evaluation uses true
// arbitrary precision, not floating-point approximation -- this
// expression involves a large numerator/denominator that would lose
// precision under naive float arithmetic but must resolve EXACTLY.
contract RationalLiteralLargePrecisionIntermediate {
    uint256 public value = (10**30) / (10**15); // must resolve exactly to 10**15
}