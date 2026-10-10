// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: && has higher precedence than ||, so a || b && c means
// a || (b && c), not (a || b) && c. The two readings differ for
// a=true, b=false, c=false.
// EXPECTED: implicit(t, f, f) == true, explicitAnd(t, f, f) == true,
// explicitOr(t, f, f) == false.
contract AndBindsTighterThanOr {
    function implicit(bool a, bool b, bool c) public pure returns (bool) {
        return a || b && c;
    }

    function explicitAnd(bool a, bool b, bool c) public pure returns (bool) {
        return a || (b && c);
    }

    function explicitOr(bool a, bool b, bool c) public pure returns (bool) {
        return (a || b) && c;
    }
}
