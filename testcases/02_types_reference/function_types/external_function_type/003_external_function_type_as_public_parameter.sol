// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: CONTRAST with internal_function_type/007's expected-fail
// case -- external function types CAN appear in public/external
// function signatures, since (address, selector) is meaningfully
// ABI-encodable, unlike an internal code pointer.
contract ExternalFunctionTypeAsPublicParameter {
    function callProvidedFunction(function(uint256) external pure returns (uint256) fn, uint256 x)
        public
        view
        returns (uint256)
    {
        return fn(x);
    }
}