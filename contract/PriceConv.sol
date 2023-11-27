// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library PriceConv {
    function getPrice() internal view returns (uint256) {
        AggregatorV3Interface priceNow = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
        (, int256 price, , , ) = priceNow.latestRoundData();
        return uint256(price * 1e10);
    }

    function priceConversionRate(
        uint256 ethVal
    ) internal view returns (uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethUsd = (ethPrice * ethVal) / 1e18;
        return ethUsd;
    }
}
