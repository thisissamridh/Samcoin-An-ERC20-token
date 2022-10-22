// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7; // specifying higher version of solidity

import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; // importing ERC20 from openzeppelin

contract SamCoin is
    ERC20 // inheriting ERC20
{
    // creating constructor to take in the name and symbol of the token as arguments and initialize the token
    // calling the constructor of ERC20 t
    constructor(string memory _name, string memory _Symbol)
        ERC20(_name, _Symbol)
    {
        _mint(msg.sender, 10 * 10**18); // minting 10 tokens to the address of the person who deploys the contract
    }
}
