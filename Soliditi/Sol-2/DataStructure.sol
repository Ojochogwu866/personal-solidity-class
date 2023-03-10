// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract dataTypes{
     /**
     VARIABLES
     Variables are of two types.
     Local and State Variables
     * State variables are stored and exist on the blockchain.
     *Local variables are only accessible to the function. The variable scope is within the function
     */

    //stateVariables  
    int public myInt = 1; //integer
    uint public myUint = 1; //unsigned integer
    uint256 public myUint256 = 1; //256-bit unsigned integer
    uint8 public myUint8 = 1; //8-bit unsigned integer
    string public myString = "Hello, Netherlands";    //strings
    bytes32 public myBytes32 = "Hello Netherlands";  //bytes32
    address public amyAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;  //address



    //local variable
    function getuintValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
   //local variable
    function getStringValue() public pure returns(string memory){ 
        string memory value = "Hello, Netherlands";
        return value;
    }
    //local variable
     function getBytesValue() public pure returns(bytes32){
        bytes32 value = "Hello, Netherlands";
        return value;
    }
     //localVariable
    function dataType() public pure returns (uint){
        uint value = 1; //unassigned integer
        return value;
    }

    //creating custom Data structures
    struct MyStruct {
        uint myUint;
        string myString;
    }
     MyStruct public myStruct = MyStruct(1, "Hello, Netherlands!");

}