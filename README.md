# ERC20 Token Project

## Overview
ERC20 Token is an ERC20 token implemented in Solidity. This project demonstrates the creation, minting, burning, and transferring of a custom cryptocurrency on the Ethereum blockchain.

## Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Contract Functions](#contract-functions)
- [Deployment](#deployment)
- [Usage](#usage)
- [License](#license)

## Features
- Mint new  tokens
- Burn existing tokens
- Transfer tokens between accounts
- Track token balances

## Technologies Used
- **Solidity**: Programming language for writing smart contracts.
- **OpenZeppelin**: Library for secure smart contract development.
- **Remix IDE**: Integrated development environment for Solidity contracts.


## Contract Functions
### 1. Mint
- **Function**: `mintcoins(address to, uint amount)`
- **Description**: Mints a specified amount of tokens to the given address.
  
### 2. Burn
- **Function**: `burncoins(address from, uint amount)`
- **Description**: Burns a specified amount of tokens from the given address.

### 3. Transfer
- **Function**: `transferCoins(address from, address recipient, uint amount)`
- **Description**: Transfers a specified amount of tokens from one address to another.

## Deployment
To deploy the contract, you can use the Remix IDEFollow the instructions below:

### Using Remix IDE
1. Open the Remix IDE and create a new Solidity file.
2. Copy the contract code into the file.
3. Compile the contract.
4. Deploy the contract to a test network.


## Usage
Once deployed, you can interact with the contract using web3.js or ethers.js. You can call the functions to mint, burn, or transfer tokens as per your requirements.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
