// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

// Importing the ERC20 contract from OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Contract declaration
contract Uniquecoin is ERC20 {
    // Constructor to initialize the token's name and symbol
    constructor() ERC20("UniqueCoin", "UTK") {
        // Initial supply can be minted to the contract deployer
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    // Mint function that allows minting new tokens
    function mintCoins(address to, uint amount) public {
        _mint(to, amount); 
    }

    // Burn function to destroy tokens from a specified address
    function burnCoins(address from, uint amount) public {
        require(balanceOf(from) >= amount, "Insufficient balance to burn");
        _burn(from, amount); 
    }

    // Transfer function to send tokens
    function transferCoins(address recipient, uint amount) public {
        transfer(recipient, amount);
    }
}
