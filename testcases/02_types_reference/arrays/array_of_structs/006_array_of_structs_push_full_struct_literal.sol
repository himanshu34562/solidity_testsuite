// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: .push() accepting a fully-constructed struct literal
// directly (contrast with 004's approach of push() + field-by-field
// assignment) -- two different, both-valid patterns for populating a
// storage array of structs, worth confirming the converter handles both.
contract ArrayOfStructsPushFullStructLiteral {
    struct Employee {
        string name;
        uint256 salary;
    }

    Employee[] public employees;

    function hire(string memory name, uint256 salary) public {
        employees.push(Employee({name: name, salary: salary}));
    }
}