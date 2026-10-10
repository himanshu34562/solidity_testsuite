// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: deleting a struct resets every field EXCEPT mappings, which
// cannot be enumerated and so keep their entries. Here id is reset but
// the balances mapping inside the struct is untouched.
// EXPECTED: after set(a, 5) and reset(): idOf() == 0, balanceOf(a) == 5.
contract DeleteStructWithMappingKeepsMapping {
    struct Account {
        uint256 id;
        mapping(address => uint256) balances;
    }

    Account private acct;

    function set(address a, uint256 v) public {
        acct.id = 1;
        acct.balances[a] = v;
    }

    function reset() public {
        delete acct;
    }

    function idOf() public view returns (uint256) {
        return acct.id;
    }

    function balanceOf(address a) public view returns (uint256) {
        return acct.balances[a];
    }
}
