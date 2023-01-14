// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract mappingSol{
    mapping(uint => string) public names;
    mapping(uint => Animals) public animals;
    //nested mapping
    mapping(address => mapping(uint => Animals)) public wildAnimals;

    struct Animals{
        string name;
        string specie;
    }

    constructor() public{
        names[1] = "Atom";
        names[2] = "Adam";
        names[3] = "Kwaltom";
    }
    function addAnimals(uint _id, string memory _name, string memory _specie)public{
         animals[_id] = Animals(_name, _specie);
    }
    function addWildAnimals(uint _id, string memory _name, string memory _specie) public{
        wildAnimals[msg.sender][_id] = Animals(_name, _specie);
    }
}