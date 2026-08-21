// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: external function types also support == directly, same
// exception to the no-equality rule as internal function types
// (internal_function_type/005) -- here comparing both the address AND
// selector components together as a single value.
contract ExternalFunctionTypeEqualityComparison {
    function double(uint256 x) external pure returns (uint256) {
        return x * 2;
    }

    function isSameFunction(
        function(uint256) external pure returns (uint256) a,
        function(uint256) external pure returns (uint256) b
    ) public pure returns (bool) {
        return a == b;
    }

    function compareToDouble(function(uint256) external pure returns (uint256) fn) public view returns (bool) {
        return fn == this.double;
    }
}