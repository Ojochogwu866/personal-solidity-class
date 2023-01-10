// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract StoreValue{
    uint256 p;

    function value() public{
        p = 101;
    }

    function get() public view returns (uint256){
        return p;
    }
}