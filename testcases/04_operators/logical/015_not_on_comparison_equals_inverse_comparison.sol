// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negating an equality gives the same result as !=, and for
// integers negating < gives >=. Both pairs must agree for every input.
// EXPECTED: notEq(a, b) == ne(a, b), notLt(a, b) == ge(a, b).
contract NotOnComparisonEqualsInverseComparison {
    function notEq(uint256 a, uint256 b) public pure returns (bool) {
        return !(a == b);
    }

    function ne(uint256 a, uint256 b) public pure returns (bool) {
        return a != b;
    }

    function notLt(uint256 a, uint256 b) public pure returns (bool) {
        return !(a < b);
    }

    function ge(uint256 a, uint256 b) public pure returns (bool) {
        return a >= b;
    }
}
