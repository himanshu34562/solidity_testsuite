// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an ARRAY of internal function types -- a "dispatch table"
// pattern, selecting which function to call by index at runtime.
contract InternalFunctionTypeArrayDispatchTable {
    function opAdd(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    function opSub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a - b : 0;
    }

    function opMul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    function dispatch(uint256 opIndex, uint256 a, uint256 b) public pure returns (uint256) {
        function(uint256, uint256) internal pure returns (uint256)[3] memory ops =
            [opAdd, opSub, opMul];
        return ops[opIndex](a, b);
    }
}