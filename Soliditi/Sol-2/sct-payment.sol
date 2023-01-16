// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract payUber{
    enum Statuses { Free, Booked }
    Statuses currentStatus;
    address payable public owner;
    
    event Book(address _passenger, uint _value);

    constructor() public{
        owner = payable(msg.sender);
        currentStatus = Statuses.Free; 
    }

    modifier onlyWhileFree {
        require(currentStatus == Statuses.Free, "Currently occupied.");
        _;
    }
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }

    receive() external payable onlyWhileFree costs(2 ether) {
        currentStatus = Statuses.Booked;
        owner.transfer(msg.value);
        emit Book(msg.sender, msg.value);
    }
}
