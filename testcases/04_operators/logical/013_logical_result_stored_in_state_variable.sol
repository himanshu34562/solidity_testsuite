// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the result of a logical expression stored into a bool state
// variable, including toggling with !.
// EXPECTED: setAnd(true, false) leaves flag == false, setOr(true, false)
// leaves flag == true, toggle() flips flag.
contract LogicalResultStoredInStateVariable {
    bool public flag;

    function setAnd(bool a, bool b) public {
        flag = a && b;
    }

    function setOr(bool a, bool b) public {
        flag = a || b;
    }

    function toggle() public {
        flag = !flag;
    }
}
