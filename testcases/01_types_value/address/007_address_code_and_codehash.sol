// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .code returns the runtime bytecode as bytes memory,
// .codehash returns keccak256 of that code as bytes32. Both are
// distinct EVM-level accessors (EXTCODESIZE+EXTCODECOPY vs EXTCODEHASH)
// with different underlying opcodes -- worth confirming the converter
// doesn't conflate them.
contract AddressCodeAndCodehash {
    function getCode(address a) public view returns (bytes memory) {
        return a.code;
    }

    function getCodeHash(address a) public view returns (bytes32) {
        return a.codehash;
    }

    function isContract(address a) public view returns (bool) {
        return a.code.length > 0;
    }
}