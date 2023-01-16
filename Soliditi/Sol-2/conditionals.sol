// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract conditionals{

    address public owner;

    constructor() public{
        owner = msg.sender;
    }
    function isOwner() public view returns(bool){
        return(msg.sender == owner);
    }
}