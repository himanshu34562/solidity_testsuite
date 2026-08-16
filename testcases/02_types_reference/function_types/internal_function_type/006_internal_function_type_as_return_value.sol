// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: a function can RETURN an internal function type value,
// selecting which function to hand back based on runtime logic --
// confirms function types aren't just parameter-only, they're
// first-class values in both directions.
// NOTE: `apply` is a reserved keyword in Solidity and cannot be used
// as a function name -- renamed to applyOperation.
contract InternalFunctionTypeAsReturnValue {
    function increment(uint256 x) internal pure returns (uint256) {
        return x + 1;
    }

    function decrement(uint256 x) internal pure returns (uint256) {
        return x - 1;
    }

    function selectOperation(bool useIncrement)
        internal
        pure
        returns (function(uint256) internal pure returns (uint256))
    {
        return useIncrement ? increment : decrement;
    }

    function applyOperation(uint256 x, bool useIncrement) public pure returns (uint256) {
        function(uint256) internal pure returns (uint256) fn = selectOperation(useIncrement);
        return fn(x);
    }
}