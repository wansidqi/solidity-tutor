// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {PriceConv} from "./PriceConv.sol";

contract Fund {
    using PriceConv for uint256;
    uint256 public minUSD = 5e18;
    address[] public funders;
    mapping(address => uint256) public addressToFundVal;

    function fundMe() public payable {
        require(
            // Libraries.priceConversionRate(msg.value) >= minUSD,
            msg.value.priceConversionRate() >= minUSD,
            "not send minimum value"
        );
        funders.push(msg.sender);
        addressToFundVal[msg.sender] = addressToFundVal[msg.sender] + msg.value;
    }
}
