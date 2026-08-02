// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: many local variables to trigger "stack too deep" under the
// legacy codegen pipeline, which viaIR is specifically designed to solve.
// CONFIRMED BEHAVIOR (solc 0.8.20):
//   - default (no flags):        FAILS - stack too deep
//   - --via-ir alone:            FAILS - stack too deep (still, per solc's own error)
//   - --via-ir --optimize:       PASSES - this is the actual required combination
contract StackTooDeepRequiresViaIR {
    function manyLocals(
        uint256 a, uint256 b, uint256 c, uint256 d, uint256 e,
        uint256 f, uint256 g, uint256 h, uint256 i, uint256 j
    ) public pure returns (uint256) {
        uint256 k = a + b;
        uint256 l = c + d;
        uint256 m = e + f;
        uint256 n = g + h;
        uint256 o = i + j;
        uint256 p = k + l;
        uint256 q = m + n;
        uint256 r = o + p;
        uint256 s = q + r;
        uint256 t = s + a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s;
        return t;
    }
}