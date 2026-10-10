// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: edge case -- 0 ** 0 evaluates to 1 in Solidity (matching
// the EVM EXP opcode), as does any x ** 0. Operands are non-literal so
// this exercises the runtime path rather than constant folding.
// EXPECTED: pow(0, 0) == 1, pow(5, 0) == 1, pow(0, 5) == 0.
contract ZeroToTheZeroIsOne {
    function pow(uint256 base, uint256 exp) public pure returns (uint256) {
        return base ** exp;
    }
}