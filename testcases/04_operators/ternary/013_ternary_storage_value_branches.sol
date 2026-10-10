// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: branches may read or modify storage state variables. As a
// statement, only the selected branch's side effect happens: bump()
// increments exactly one of the two counters.
// EXPECTED: current() == low until useHigh is set, then high;
// bump() with useHigh == false increments low only.
contract TernaryStorageValueBranches {
    uint256 public low = 1;
    uint256 public high = 10;
    bool public useHigh;

    function setUseHigh(bool v) public {
        useHigh = v;
    }

    function current() public view returns (uint256) {
        return useHigh ? high : low;
    }

    function bump() public {
        useHigh ? high++ : low++;
    }
}
