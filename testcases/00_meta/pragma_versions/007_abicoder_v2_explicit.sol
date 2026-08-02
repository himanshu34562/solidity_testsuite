// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
pragma abicoder v2;

contract AbicoderV2Explicit {
    struct Data {
        uint256 id;
        string name;
    }

    function getData() public pure returns (Data memory) {
        return Data({id: 1, name: "test"});
    }
}