//SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Uniquecoin {
    // Public variables
        string public coinName = "UniqueCoin";
            string public coinSymbol = "UTK";
                uint public coinSupply = 0; // Changed '-' to '=' for assignment

                    // Mapping to track balances
                        mapping (address => uint) public coinBalances;

                            // Mint Function
                                function mintCoins(address to, uint amount) public {
                                        coinSupply += amount; // Corrected syntax for adding to coinSupply
                                                coinBalances[to] += amount; // Fixed array syntax
                                                    }

                                                        // Burn function
                                                            function burnCoins(address from, uint amount) public {
                                                                    require(coinBalances[from] >= amount, "Insufficient balance to burn"); // Fixed variable name
                                                                            coinSupply -= amount; // Fixed syntax for subtraction
                                                                                    coinBalances[from] -= amount; // Fixed variable name and operator
                                                                                        }

                                                                                            // Transfer function
                                                                                                function transferCoins(address from, address recipient, uint amount) public {
                                                                                                        require(coinBalances[from] >= amount, "Insufficient balance to transfer"); // Fixed variable name and operator
                                                                                                                coinBalances[from] -= amount; // Fixed variable name
                                                                                                                        coinBalances[recipient] += amount; // Fixed variable name and operator
                                                                                                                                coinSupply -= amount; // Fixed variable name
                                                                                                                                    }
                                                                                                                                    }
