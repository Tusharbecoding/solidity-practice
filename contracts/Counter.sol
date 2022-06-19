// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint public count = 0; //uint -- unsigned integer ie only positive

    // constructor() public{
    //     count = 0;
    // }

    // function getCount() public view returns(uint) { //We have added the view keyword, which tells Solidity that this is a read-only function.
    //     return count;
    // }

    function incrementCount() public {
        count++;
    }
}    