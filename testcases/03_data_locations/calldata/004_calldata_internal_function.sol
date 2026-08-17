// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: calldata parameters are ALSO valid on internal functions.
// CORRECTION: an earlier version of this file assumed calldata was
// restricted to external (or external+public) functions only, and
// that internal functions specifically would be rejected -- confirmed
// via solc 0.8.20 this is wrong, no error or warning is produced.
// The real underlying restriction is unclear at this point in the
// suite and should be investigated further (possibly `private` is
// still excluded, or there may be no visibility-based restriction on
// calldata at all, only usage-based ones -- e.g. an internal function
// with a calldata parameter presumably can only meaningfully be
// called during an external call's execution context, since that's
// the only time calldata data exists to reference; calling it from a
// constructor or from another internal-only code path with no
// external calldata context may behave differently and is not tested
// here).
contract CalldataValidOnInternalFunctions {
    function processArrayInternal(uint256[] calldata arr) internal pure returns (uint256) {
        return arr.length;
    }

    function callViaExternalEntry(uint256[] calldata arr) external pure returns (uint256) {
        return processArrayInternal(arr); // internal call, calldata parameter passed through
    }
}