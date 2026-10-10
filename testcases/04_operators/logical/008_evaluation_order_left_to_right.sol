// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: operands of && and || are evaluated strictly left to right,
// stopping as soon as the result is known. `trace` records which calls
// ran and in what order, one decimal digit per call.
// EXPECTED: runAnd() == 123 (all three run, the last returns false),
// runOr() == 31 (three() is false, one() is true, two() never runs),
// runAndStops() == 3 (three() is false so the rest never run).
contract EvaluationOrderLeftToRight {
    uint256 public trace;

    function one() internal returns (bool) {
        trace = trace * 10 + 1;
        return true;
    }

    function two() internal returns (bool) {
        trace = trace * 10 + 2;
        return true;
    }

    function three() internal returns (bool) {
        trace = trace * 10 + 3;
        return false;
    }

    function runAnd() public returns (uint256) {
        trace = 0;
        bool r = one() && two() && three();
        return r ? 0 : trace;
    }

    function runOr() public returns (uint256) {
        trace = 0;
        bool r = three() || one() || two();
        return r ? trace : 0;
    }

    function runAndStops() public returns (uint256) {
        trace = 0;
        bool r = three() && one() && two();
        return r ? 0 : trace;
    }
}
