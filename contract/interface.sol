// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint256 private count;

    function getCount() external view returns (uint256) {
        return count;
    }

    function increment() external {
        count++;
    }
}

interface CounterInterface {
    function getCount() external view returns (uint256);

    function increment() external;
}

/*  */

contract CounterUser {
    CounterInterface private counterContract;

    constructor(CounterInterface _counterContract) {
        counterContract = _counterContract;
    }

    function getCounterCount() external view returns (uint256) {
        return counterContract.getCount();
    }

    function incrementCounter() external {
        counterContract.increment();
    }
}

/*  */
/*  */
/*  */