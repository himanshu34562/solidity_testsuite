// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: the storage-only restriction propagates upward through
// nesting -- if an INNER struct contains a mapping, the OUTER struct
// containing it is transitively storage-only too, even if the outer
// struct's own direct fields don't include a mapping.
// NOTE: `doc` is declared private (not public) deliberately -- a public
// state variable auto-generates a getter, and that getter would need
// to RETURN Document, which independently fails for the same reason
// established in 002/003 (mapping-containing structs can't be copied/
// returned). Keeping doc private isolates THIS test to the nested-
// propagation behavior specifically, rather than re-triggering the
// already-covered getter-return restriction.
contract StructWithNestedStructContainingMapping {
    struct Permissions {
        mapping(address => bool) canEdit;
    }

    struct Document {
        string title;
        Permissions permissions; // Document is storage-only because Permissions contains a mapping
    }

    Document private doc;

    function setup(string memory title) public {
        doc.title = title;
    }

    function grantEdit(address user) public {
        doc.permissions.canEdit[user] = true;
    }

    function canEdit(address user) public view returns (bool) {
        return doc.permissions.canEdit[user];
    }

    function getTitle() public view returns (string memory) {
        return doc.title; // manual getter for just the non-mapping field, unlike auto-generated public getter
    }
}