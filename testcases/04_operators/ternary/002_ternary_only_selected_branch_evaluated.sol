// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: only the SELECTED branch is evaluated; the other branch's side
// effects never happen. A converter that lowered ?: to a branch-free
// select of two already-computed values would run both calls.
// EXPECTED: pick(true) increments aCalls only, pick(false) increments
// bCalls only.
contract TernaryOnlySelectedBranchEvaluated {
    uint256 public aCalls;
    uint256 public bCalls;

    function touchA() internal returns (uint256) {
        aCalls += 1;
        return 1;
    }

    function touchB() internal returns (uint256) {
        bCalls += 1;
        return 2;
    }

    function pick(bool c) public returns (uint256) {
        return c ? touchA() : touchB();
    }
}
