// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: trivial contract to compare bytecode/IR across --evm-version
// values. PUSH0 opcode (Shanghai+) vs PUSH1 0x00 (pre-Shanghai) is the
// key observable difference for a contract this simple.
// NOTE: --evm-version cancun is NOT supported by solc 0.8.20 (requires solc >=0.8.24).
// Confirmed via testing: istanbul/london/paris all emit identical bytecode
// (PUSH1 0x00), shanghai emits PUSH0 (0x5f) instead.
contract EvmVersionPush0 {
    uint256 public zeroValue = 0;

    function getZero() public pure returns (uint256) {
        return 0;
    }
}