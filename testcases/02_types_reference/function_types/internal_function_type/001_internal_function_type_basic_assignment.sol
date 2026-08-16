// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assign a named function to a variable of matching internal
// function type, then call it indirectly through that variable.
contract InternalFunctionTypeBasicAssignment {
    function double(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }

    function callViaVariable(uint256 x) public pure returns (uint256) {
        function(uint256) internal pure returns (uint256) fn = double;
        return fn(x);
    }
}