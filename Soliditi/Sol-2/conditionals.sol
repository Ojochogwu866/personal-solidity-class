// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract conditionals{
    function isEven(uint _number)public view returns(uint){
        if(_number % 2 == 0){
            return true;
        } else {
            return false;
        }
    }
}