// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: deleting a storage string or bytes resets it to empty
// (length 0), freeing its storage.
// EXPECTED: after clear(): text == "" and data == 0x.
contract DeleteStringAndBytes {
    string public text = "hello";
    bytes public data = hex"010203";

    function clear() public {
        delete text;
        delete data;
    }
}
