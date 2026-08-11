// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .length on a fixed-size array is a COMPILE-TIME CONSTANT,
// same category of behavior as fixed bytesN's .length
// (bytesN_fixed/009) -- should fold to a literal in codegen, not emit
// a runtime length-lookup instruction.
contract FixedArrayLengthCompileTimeConstant {
    uint256[7] public data;

    function getLength() public pure returns (uint256) {
        return 7; // sanity reference value
    }

    function getArrayLength() public view returns (uint256) {
        return data.length; // should compile-time fold to 7
    }
}