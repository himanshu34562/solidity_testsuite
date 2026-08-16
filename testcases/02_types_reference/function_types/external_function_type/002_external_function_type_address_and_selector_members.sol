// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: an external function type value exposes .address and
// .selector members -- confirms it's genuinely represented as an
// (address, 4-byte selector) pair under the hood, not an opaque
// pointer like the internal variant.
contract ExternalFunctionTypeAddressAndSelectorMembers {
    function double(uint256 x) external pure returns (uint256) {
        return x * 2;
    }

    function inspectFunction() public view returns (address, bytes4) {
        function(uint256) external pure returns (uint256) fn = this.double;
        return (fn.address, fn.selector);
    }
}