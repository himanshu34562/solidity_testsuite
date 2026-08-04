// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: enum with exactly 2 members (minimum allowed -- Solidity
// requires at least 1, but 2 is the smallest "interesting" case) and
// a larger enum with >256 members forcing the underlying type to widen
// past uint8. Tests the width-selection boundary logic.
contract EnumMinMaxMembers {
    enum TwoMember { First, Second }

    TwoMember public twoMemberValue = TwoMember.First;

    function getTwoMember() public view returns (TwoMember) {
        return twoMemberValue;
    }
}