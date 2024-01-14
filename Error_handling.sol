// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingContract {
    uint public gravitationalForce = 10;
    uint public materialDensity = 5; // New variable
    address public contractOwner;

    constructor() {
        contractOwner = msg.sender;
    }
    function setMaterialDensity(uint _density) public {
        require(contractOwner == msg.sender, "You are not the owner");
        materialDensity = _density;
    }
    function calculateWeight(uint _mass) public view returns (uint) {
        require(contractOwner == msg.sender, "You are not the owner");
        assert(_mass > 0);
        uint weight = _mass * gravitationalForce * materialDensity;
        if (weight == 0) {
            revert("Weight of the object cannot be zero");
        }

        return weight;
    }
}
