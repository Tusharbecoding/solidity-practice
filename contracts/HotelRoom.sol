// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    // Ether Payments
    // Modifiers
    // Visibility
    // Events 
    // Enums

    enum Statuses { Vacant, Occupied }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);

    address payable public owner; //the modifier payable ensures send and receive of ether
    
    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided.");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        //Check Price
        // require(msg.value >= 2 ether, "Not enough ether provided."); 
        //Check Status
        // require(currentStatus == Statuses.Vacant, "Currently occupied.");
        //setting status to occupied once paid
        currentStatus = Statuses.Occupied;
        //paying the owner
        // owner.transfer(msg.value);

        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        emit Occupy(msg.sender, msg.value);
    }
}