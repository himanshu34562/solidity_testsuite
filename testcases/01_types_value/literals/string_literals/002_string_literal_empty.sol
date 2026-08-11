// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: empty string literal -- tests the zero-length dynamic bytes
// storage/memory codegen path specifically (distinct from a non-empty
// short string, which may use different in-place vs pointer storage
// depending on your converter's ABI encoding strategy).
contract StringLiteralEmpty {
    string public value = "";

    function getEmpty() public pure returns (string memory) {
        return "";
    }
}