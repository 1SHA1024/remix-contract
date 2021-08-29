// SPDX-License-Identifier: MIT => Remix IDE

pragma solidity ^0.8.3;

contract IsraelPeled {
    string public name = "Israel Peled";
    string public work = "Surviving";
    
    function setWork(string memory new_work) public {
        work = new_work;
    }
}