// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: string.concat() (0.8.12+) is the only built-in mechanism for
// joining strings -- Solidity has no "+" operator for string. Accepts
// a variable number of arguments.
contract StringConcatBuiltin {
    function concatTwo(string memory a, string memory b) public pure returns (string memory) {
        return string.concat(a, b);
    }

    function concatThree(string memory a, string memory b, string memory c) public pure returns (string memory) {
        return string.concat(a, b, c);
    }

    function concatWithEmpty(string memory a) public pure returns (string memory) {
        return string.concat(a, ""); // concatenating with empty string is a no-op value-wise
    }
}