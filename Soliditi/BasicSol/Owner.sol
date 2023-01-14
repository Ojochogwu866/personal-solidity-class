// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Owner {
    address private _owner
    event OwnerSet(address owner);

    function setOwner(address ownerAddress) public{
        _owner = ownerAddress;
        emit OwnerSet(_owner)
    }
    function getCurrentOwner()public view returns (address){
        return _owner
    }
}