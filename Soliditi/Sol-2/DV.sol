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
    int public intvalue = 1
    uint public uintValue = 1;
    uint256 public uintvalue = 1 
    uint8 public uintvalue = 1

    //local variable
    function getuintValue() public pure returns(uint){
        uint value =1;
        return value;
    }

    //strings: they are data types can also be stored in a smart contract
    //state variable
    string public stringvalue = "Hello, Netherlands"

//local variable
    function getValue() public pure returns(uint){
        string value = "Hello, Netherlands";
        return value;
    }

    //bytes32
    //state variable
    bytes32 public bytes32 = "Hello Netherlands",

    //local variable
     function getValue() public pure returns(uint){
        bytes32 value = "Hello, Netherlands";
        return value;
    }

    //state variable
    //address: Every blockchain has an address
    address public addressValue = 0x5a566659C000009E8494940

    //creating custom Data structures

    struct MyStruct {
        uint intValue;
        string stringvalue;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, Netherlands!");
}