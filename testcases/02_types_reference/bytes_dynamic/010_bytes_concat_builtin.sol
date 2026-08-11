// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: bytes.concat() (0.8.4+, predates string.concat by several
// versions) -- the bytes analog of string.concat(). Also accepts
// fixed-size bytesN arguments directly, unlike string.concat.
contract BytesConcatBuiltin {
    function concatTwo(bytes memory a, bytes memory b) public pure returns (bytes memory) {
        return bytes.concat(a, b);
    }

    function concatWithFixedBytes(bytes memory a, bytes4 b) public pure returns (bytes memory) {
        return bytes.concat(a, b); // bytes.concat accepts bytesN directly
    }
}