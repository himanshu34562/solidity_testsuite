// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: negative test case -- confirms slicing is ALSO unavailable
// on storage arrays directly, not just memory. Slicing is exclusively
// a calldata capability across all three data locations.
// EXPECTED: compile error, slicing not supported for storage arrays
// (or similar -- array slice can only be created from calldata arrays).
contract StorageArraySliceExpectedFail {
    uint256[] public data;

    function sliceStorage(uint256 start, uint256 end) public view returns (uint256[] memory) {
        uint256[] storage sliced = data[start:end]; // should fail: storage doesn't support slicing
        uint256[] memory result = new uint256[](sliced.length);
        return result;
    }
}