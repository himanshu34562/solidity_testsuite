// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: CRITICAL semantic difference from integers -- fixed bytesN
// literals shorter than the declared width are RIGHT-padded with zeros,
// not left-padded like integers. 0x01 assigned to bytes4 becomes
// 0x01000000, NOT 0x00000001. This is a classic source of bugs in
// hand-rolled compilers that reuse integer-literal padding logic for
// bytesN by mistake.
// EXPECTED: getValue() returns 0x01000000 (right-padded), not
// 0x00000001 (which would be the integer/left-padded interpretation).
contract BytesNRightPadding {
    bytes4 public value = "A";

    function getValue() public view returns (bytes4) {
        return value;
    }

    function getAsUint() public view returns (uint32) {
        return uint32(value); // demonstrates the padding difference numerically
    }
}