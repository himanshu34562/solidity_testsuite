// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .selector can be accessed directly from a function
// reference WITHOUT needing to go through a full external function
// type variable first -- this is the common real-world pattern for
// computing a function selector (e.g. for use in low-level .call()
// data construction) without the overhead of an actual function-type
// value.
contract ExternalFunctionTypeSelectorOnlyExtraction {
    function transfer(address to, uint256 amount) external pure returns (bool) {
        return true;
    }

    function getTransferSelector() public pure returns (bytes4) {
        return this.transfer.selector; // direct selector extraction
    }
}