// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .length on fixed bytesN is a COMPILE-TIME CONSTANT (unlike
// dynamic bytes/arrays where .length is a runtime storage read). This
// should fold to a literal in codegen, not emit any actual length-lookup
// instruction.
contract BytesNLength {
    function getLength(bytes4 b) public pure returns (uint256) {
        return b.length; // should compile-time fold to 4
    }
}