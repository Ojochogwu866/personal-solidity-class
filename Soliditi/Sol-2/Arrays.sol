// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract myArrays {
    
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ['Damilola', 'Edd', 'Zedek'];
    string[] public values;
    uint[][] public array2D = [[1,2,3],[4,5,6]];

    function addValue(string memory _value)public{
        values.push(_value);
    }

    function countData() public view returns (uint){
        return values.length;
    }
}