// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: strings cannot be compared with == directly (see 017). The
// standard idiom compares their keccak256 hashes, which are bytes32 and
// therefore comparable.
// EXPECTED: equal("abc", "abc") == true, equal("abc", "abd") == false.
contract StringEqualityViaKeccak256 {
    function equal(string memory a, string memory b) public pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }

    function equalCalldata(string calldata a, string calldata b) external pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }
}
