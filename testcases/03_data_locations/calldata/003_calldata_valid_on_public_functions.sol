// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: calldata parameters are valid on PUBLIC functions, not just
// external. CORRECTION: an earlier version of this file assumed
// calldata was external-only, but this restriction was lifted in
// solc 0.6.9 -- calldata is legal on both external and public
// functions. Only internal/private functions actually exclude it
// (see 004).
contract CalldataValidOnPublicFunctions {
    function processArray(uint256[] calldata arr) public pure returns (uint256) {
        return arr.length;
    }
}