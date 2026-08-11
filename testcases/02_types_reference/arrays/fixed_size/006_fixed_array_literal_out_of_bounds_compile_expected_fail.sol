// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- CONTRAST with 005. When the
// out-of-bounds index is a literal constant solc can statically
// evaluate, it becomes a COMPILE-TIME error instead of a runtime
// Panic(0x32), same static-vs-dynamic distinction observed for enums
// (01_types_value/enum/005).
// EXPECTED: compile error, "Out of bounds array access."
contract FixedArrayLiteralOutOfBoundsCompileExpectedFail {
    uint256[3] public data;

    function triggerCompileTimeOutOfBounds() public view returns (uint256) {
        return data[5]; // literal 5 >= length 3, statically provable -> compile error
    }
}