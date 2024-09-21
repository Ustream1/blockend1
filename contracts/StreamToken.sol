// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract StreamToken is ERC20, Ownable {
    constructor() ERC20("Stream Token", "STRK") Ownable(msg.sender) {}

    function mint(address receiver, uint256 amount) external {
        _mint(receiver, amount);
    }
}
