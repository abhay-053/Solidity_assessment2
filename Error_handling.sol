// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract ErrorHandlingContract {
    uint public gravitationalForce = 0;
    uint public materialDensity = 5;
    address public contractOwner;
    constructor() {
        contractOwner = msg.sender;
    }
    function setMaterialDensity(uint _density) public {
        require(contractOwner == msg.sender, "You are not the owner");
        require(_density > 0, "Density must be greater than 0");
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
