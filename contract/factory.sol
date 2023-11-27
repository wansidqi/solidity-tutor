// SPDX-License-Identifier: MIT
pragma solidity >=0.8;

import { Simple } from "./simple.sol";

contract Factory {
    Simple public simple;
    bool deployed = false;

    function deploySimpleContract () public {
        if(!deployed){
            deployed = true;
            simple = new Simple();
        }
    }
}
