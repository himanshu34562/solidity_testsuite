// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: storage bytes supports .push() and .pop() like a dynamic
// array of bytes1 -- this is genuinely array-like behavior that string
// doesn't expose at all (string has no push/pop).
contract BytesPushPop {
    bytes public data;

    function pushByte(bytes1 b) public {
        data.push(b);
    }

    function popByte() public {
        data.pop();
    }
}