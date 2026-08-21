// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: rational literal arithmetic combined with ether unit
// suffixes (wei/gwei/ether) -- these units are themselves compile-time
// multipliers, so the whole expression is evaluated as a rational
// literal before being checked for integer-exactness.
contract RationalLiteralWithEtherUnits {
    uint256 public halfEther = 1 ether / 2; // = 0.5 ether = 500000000000000000 wei, exact integer
}