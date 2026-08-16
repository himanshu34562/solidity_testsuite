// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: assign an external function (this.someFunc) to a variable
// of matching external function type, then call it indirectly.
contract ExternalFunctionTypeBasicAssignment {
    function double(uint256 x) external pure returns (uint256) {
        return x * 2;
    }

    function callViaVariable(uint256 x) public view returns (uint256) {
        function(uint256) external pure returns (uint256) fn = this.double;
        return fn(x);
    }
}