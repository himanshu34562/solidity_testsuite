// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// PURPOSE: delete on an array element resets that element's struct
// fields to their zero/default values WITHOUT removing it from the
// array or shifting subsequent elements -- a distinct operation from
// .pop() (which removes the LAST element and shrinks length).
contract ArrayOfStructsDeleteElement {
    struct Task {
        uint256 id;
        bool completed;
    }

    Task[] public tasks;

    function addTask(uint256 id) public {
        tasks.push(Task({id: id, completed: false}));
    }

    function clearTask(uint256 index) public {
        delete tasks[index]; // zeroes the struct in place, length unchanged
    }

    function getLength() public view returns (uint256) {
        return tasks.length; // unaffected by delete, only by push/pop
    }
}