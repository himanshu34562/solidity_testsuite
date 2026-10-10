// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: when a contract inherits from a base contract, the base
// contract's state variables occupy the earliest slots, and the
// derived contract's own variables continue packing AFTER them --
// not interleaved, not overlapping, strictly base-then-derived in
// declaration/inheritance order.
contract Base {
    bool public baseFlag = true; // slot 0, offset 0
}

contract InheritedContractStateVariablesPackAfterBase is Base {
    uint8 public derivedSmall = 1; // slot 0, offset 1 -- packs alongside the INHERITED baseFlag
    uint256 public derivedBig = 2; // slot 1 -- own slot, since it doesn't fit remaining slot 0 space
}