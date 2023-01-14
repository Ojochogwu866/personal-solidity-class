// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Greeter{
    string private _greeting;
    function  greet(string memory message) public{
        _greeting = Hello Adeola;
    }
    function getGreeting() public view returns(string memory){
        return _greeting
    }
}