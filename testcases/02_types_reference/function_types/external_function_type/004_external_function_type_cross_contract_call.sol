// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an external function type value can reference a function on
// a DIFFERENT contract instance entirely, not just `this` -- confirms
// the address component is genuinely dynamic, not implicitly always
// "the current contract."
contract Helper {
    function triple(uint256 x) external pure returns (uint256) {
        return x * 3;
    }
}

contract ExternalFunctionTypeCrossContractCall {
    function callHelperFunction(Helper helper, uint256 x) public view returns (uint256) {
        function(uint256) external pure returns (uint256) fn = helper.triple;
        return fn(x);
    }
}