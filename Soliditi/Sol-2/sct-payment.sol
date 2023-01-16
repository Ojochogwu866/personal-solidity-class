// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract payUber{
    address payable public owner;
    enum Statuses { Free, Booked }
    Statuses currentStatus;
    event Booked(address _user, uint _value);
    constructor() public{
        owner = msg.sender;
        currentStatus = Statuses.Free; 
    }

    modifier onlyWhileFree{
        require(currentStatus == Statuses.Free, "Currently in service");
        _;
    }
    modifier costs (uint _amount){
         require(msg.value >= _amount, "Not Enough Ether provided");
         _;
    }

   recieve() external payable onlyWhileFree costs(2 ether){
        currentStatus = Statuses.Free;
        owner.tranfer(msg.value);
        emit Booked(msg.sender, msg.value);
    }
}
