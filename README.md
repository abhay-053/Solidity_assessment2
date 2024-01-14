# Solidity_assessment2
# Smart Contract
## Description
This Solidity smart contract is a demonstration of error handling techniques, utilizing the `require()`, `assert()`, and `revert()` statements. T
### Features
- Single function to calculate the weight of the object.
- Implementation of `require()`, `assert()`, and `revert()` for error handling.
- Utilization of Solidity's functions and error handling concepts.
### Important Notes
- It's crucial to use error handling statements judiciously for maintaining security and correctness in smart contracts.
- `require()` and `revert()` consume all gas when they fail, so their usage should be carefully considered.
- `assert()` is typically used for checking internal errors and should not fail under normal conditions.
## Functionality
The contract provides a function `calculateWeight` that sets the value of the weight by taking the mass of the object as input. It incorporates error handling mechanisms to ensure the correctness of the weight calculation.
## Usage
1. Deploy the contract on an Ethereum-compatible blockchain.
2. Call the `calculateWeight` function with the mass of the object as a parameter.
## Getting Started
1. **Use Remix:**
   - Go to [Remix website](https://remix.ethereum.org/), an online Solidity IDE.
2. **Create a New File:**
   - Click on the "+" icon to create a new file.
   - Save it with a .sol extension (e.g., playground.sol).
3. **Copy and Paste Code:**
   - Copy the provided code.
   - Paste it into the new file in Remix.
## Code Overview
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract WeightCalculationContract {
    uint public gravitationalForce = 10;
    address public contractOwner;
    constructor() {
        contractOwner = msg.sender;
    }
    function calculateWeight(uint _mass) public view returns (uint) {
        require(contractOwner == msg.sender, "You are not the owner");
        assert(_mass > 0);
        // Weight calculation using mass and gravitational force
        uint weight = _mass * gravitationalForce;
        if (weight == 0) {
            revert("Weight of the object cannot be zero");
        }
        return weight;
    }
}
```
## Executing Program
1. **Compile Code:**
   - Go to the "Solidity Compiler" tab.
   - Set the "Compiler" version to "0.8.1" (or another compatible version).
   - Click "Compile playground.sol".
2. **Deploy the Contract:**
   - Go to the "Deploy & Run Transactions" tab.
   - Select "ErrorHandlingContract" from the dropdown.
   - Click "Deploy".
3. **Interact with the Contract:**
   - Call the "Weight" function to set the value.
   - Perform multiplication and check the value variable.
   - Click "transact" to execute the function and see results.
## Author
Abhay dhek
## License
-This contract is licensed under the MIT License.
