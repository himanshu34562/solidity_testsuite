// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: storage bytes supports WRITE indexing too (b[i] = value),
// not just read -- memory bytes indexing is read-only via [] in most
// contexts, but a storage bytes reference can be mutated element-wise.
contract BytesIndexingWriteStorage {
    bytes public data = hex"000000";

    function setByteAt(uint256 index, bytes1 value) public {
        data[index] = value;
    }
}