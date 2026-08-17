// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CalldataStringParameter {
    function getLength(string calldata s) external pure returns (uint256) {
        return bytes(s).length; // still no direct .length on string, even in calldata
    }
}