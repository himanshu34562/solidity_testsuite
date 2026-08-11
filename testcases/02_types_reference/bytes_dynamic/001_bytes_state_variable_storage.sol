// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BytesStateVariableStorage {
    bytes public data = hex"0102030405";

    function setData(bytes memory newData) public {
        data = newData;
    }

    function getData() public view returns (bytes memory) {
        return data;
    }
}