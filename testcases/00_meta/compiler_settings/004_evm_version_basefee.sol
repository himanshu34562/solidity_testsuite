// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: block.basefee requires London+ EVM version.
// EXPECTED: compiles on london/paris/shanghai/cancun,
// fails (or warns, depending on solc version) on pre-london targets.
contract EvmVersionBasefee {
    function getBaseFee() public view returns (uint256) {
        return block.basefee;
    }
}