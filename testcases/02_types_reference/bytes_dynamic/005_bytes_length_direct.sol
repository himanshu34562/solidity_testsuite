// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unlike string, dynamic bytes DOES support .length directly --
// this is the key capability contrast with string/009's expected-fail case.
contract BytesLengthDirect {
    function length(bytes memory b) public pure returns (uint256) {
        return b.length;
    }
}