// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: internal function type as a function PARAMETER -- the
// classic "callback"/strategy pattern, passing behavior rather than
// just data.
contract InternalFunctionTypeAsParameterCallback {
    function applyOperation(
        uint256 x,
        uint256 y,
        function(uint256, uint256) internal pure returns (uint256) op
    ) internal pure returns (uint256) {
        return op(x, y);
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    function computeSum(uint256 a, uint256 b) public pure returns (uint256) {
        return applyOperation(a, b, add);
    }

    function computeProduct(uint256 a, uint256 b) public pure returns (uint256) {
        return applyOperation(a, b, multiply);
    }
}