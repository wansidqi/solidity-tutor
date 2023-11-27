// SPDX-License-Identifier: MIT
pragma solidity >=0.8;

import { Simple } from "./simple.sol";

contract Override is Simple {
   function setFavNum (uint256 num) public override  {
      favNum = num + 5;
   }

    function createPerson(string memory _name, uint256 _age) public override {
        Person memory person = Person ({name:_name, age: _age + 5});
        people.push(person);
    }

}
