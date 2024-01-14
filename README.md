# Solidity_assessment2
## Smart Contract: ErrorHandling
This Solidity smart contract demonstrates the calculation of an object's weight based on mass, incorporating robust error handling mechanisms using `require()`, `assert()`, and `revert()` statements.
## Important Notes
- Be cautious with `require()` and `revert()` as they consume all gas when they fail, requiring careful consideration.
- `assert()` is suitable for checking internal errors and should not fail under normal conditions.
## Functionality
The contract provides a single function, `calculateWeight`, to set the value of the weight by taking the mass of the object as input. The implementation includes error handling to ensure the correctness of the weight calculation.
## Usage
1. Deploy the contract on an Ethereum-compatible blockchain.
2. Call the `calculateWeight` function, providing the mass of the object as a parameter.
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
