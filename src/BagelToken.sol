// SPDX-License-Identifier : MIT

pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title A simple ERC20 token contract
 * @author count-sum
 * @notice This contract is a simple implementation of an ERC20 token
 */
contract BagelToken is ERC20, Ownable {
    constructor() ERC20("Bagel", "BAGEL") Ownable(msg.sender) {}

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}
