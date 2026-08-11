// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: Solidity has NO native string concatenation operator (+
// does not work on strings) -- string.concat() (0.8.12+) is the
// built-in mechanism. Tests that the converter does not attempt to
// support "+" on strings and correctly lowers string.concat instead.
contract StringLiteralConcatenationViaBytesConcat {
    function concatenate(string memory a, string memory b) public pure returns (string memory) {
        return string.concat(a, b);
    }

    function concatenateLiterals() public pure returns (string memory) {
        return string.concat("Hello, ", "World!");
    }
}