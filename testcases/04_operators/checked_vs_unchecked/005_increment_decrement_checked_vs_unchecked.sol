// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: ++ and -- (prefix and postfix) follow the same rule as + and
// -: revert in checked context, wrap in unchecked context.
// EXPECTED: checkedInc(255) and checkedDec(0) revert with Panic(0x11),
// uncheckedInc(255) == 0, uncheckedDec(0) == type(uint256).max,
// uncheckedPreInc(255) == 0.
contract IncrementDecrementCheckedVsUnchecked {
    function checkedInc(uint8 i) public pure returns (uint8) {
        i++;
        return i;
    }

    function checkedDec(uint256 i) public pure returns (uint256) {
        i--;
        return i;
    }

    function uncheckedInc(uint8 i) public pure returns (uint8) {
        unchecked {
            i++;
        }
        return i;
    }

    function uncheckedPreInc(uint8 i) public pure returns (uint8) {
        unchecked {
            ++i;
        }
        return i;
    }

    function uncheckedDec(uint256 i) public pure returns (uint256) {
        unchecked {
            i--;
        }
        return i;
    }
}
