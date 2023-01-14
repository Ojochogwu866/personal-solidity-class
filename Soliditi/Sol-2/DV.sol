// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract dataTypes{
     /**
       VARIABLES
     Variables are of two types.
     Local and State Variables
     * State variables are stored and exist on the blockchain.
     *Local variables are only accessible to the function. The variable scope is within the function
     */
    
    //localVariable
    function dataType() public pure returns (uint){
        uint value = 1; //unassigned integer
        return value;
    }

    //stateVariable  
    int public uintvalue = 1
    uint public uintValue = 1;
    uint256 public uintvalue = 1 
    function getuintValue() public pure returns(uint){
        uint value =1;
        return value;
    }
}