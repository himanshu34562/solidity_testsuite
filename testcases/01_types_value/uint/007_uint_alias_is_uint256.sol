// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: confirm `uint` is a strict alias for `uint256` at the IR level —
// this contract should produce byte-identical IR/bytecode to 006_uint256_basic.sol
// aside from symbol/type names.
contract UintAliasIsUint256 {
    uint public value = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

    function setValue(uint v) public {
        value = v;
    }

    function getValue() public view returns (uint) {
        return value;
    }
}