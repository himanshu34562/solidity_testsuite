// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: internal function types CAN be storage state variables --
// enabling a "configurable strategy" pattern where the active function
// is set once and reused across many calls, persisted in storage
// across transactions.
contract InternalFunctionTypeStorageStateVariable {
    function strategyA(uint256 x) internal pure returns (uint256) {
        return x * 10;
    }

    function strategyB(uint256 x) internal pure returns (uint256) {
        return x * 100;
    }

    function(uint256) internal pure returns (uint256) private activeStrategy;

    function setStrategy(bool useA) public {
        activeStrategy = useA ? strategyA : strategyB;
    }

    function runStrategy(uint256 x) public view returns (uint256) {
        return activeStrategy(x);
    }
}