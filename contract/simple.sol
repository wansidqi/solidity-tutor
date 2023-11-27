// SPDX-License-Identifier: MIT
pragma solidity >=0.8;

contract Simple {
    struct Person {
        string name;
        uint256 age;
    }
    Person[] public people;
    uint favNum;

    mapping(string => uint256) public personIndex;

    function createPerson(string memory _name, uint256 _age) public {
        Person memory person = Person({name: _name, age: _age});
        people.push(person);
        personIndex[_name] = people.length - 1;
    }

    function setFavNum(uint256 _num) public virtual {
        favNum = _num;
    }

    function editPerson(string memory _name, uint256 _age) public {
        uint256 index = personIndex[_name];
        Person memory updatePerson = Person({name: _name, age: _age});
        people[index] = updatePerson;
    }
}
