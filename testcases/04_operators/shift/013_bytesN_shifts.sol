// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: fixed-size byte arrays support << and >> with an unsigned
// shift amount in BITS. << moves bytes toward the most significant
// (leftmost) end and discards overflow; >> moves them toward the least
// significant end. The result keeps the bytesN type.
// EXPECTED: shl(0x11223344, 8) == 0x22334400, shr(0x11223344, 8) ==
// 0x00112233.
contract BytesNShifts {
    function shl(bytes4 b, uint256 n) public pure returns (bytes4) {
        return b << n;
    }

    function shr(bytes4 b, uint256 n) public pure returns (bytes4) {
        return b >> n;
    }
}