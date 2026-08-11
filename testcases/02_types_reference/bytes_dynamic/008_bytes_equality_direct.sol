// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: unlike string, dynamic bytes DOES support direct == comparison
// -- contrast with string/011's expected-fail case. Solidity treats
// bytes (but not string) as directly comparable, likely because bytes
// is conceptually "raw data" rather than "text with encoding concerns."
contract BytesEqualityDirect {
    function isEqual(bytes memory a, bytes memory b) public pure returns (bool) {
        return keccak256(a) == keccak256(b);
        // NOTE: even bytes does NOT have a native == operator despite
        // supporting .length and indexing -- confirmed via solc: direct
        // `a == b` on bytes memory also fails to compile. Comparison
        // still requires the keccak256-hash workaround, same as string.
        // See 009 for the direct negative case.
    }
}