// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title LongShort Coin Machine - sDAIlongMKR longMKRsDAI 
 * @dev deposit CollateralToken, select Long or Short, OutputToken minted @depositor addy, repay function, burn OutputToken @repay function call execution
 * how to deploy?
 */

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "/contracts/longShortCoinMachine.sol";

contract sDAIlongMKR is Ownable, ERC20 {
    constructor() public ERC20("3xshortDAI3xlongMKR", "3sDAI3xlongMKR") { }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }

    function setDepositAddress(address DepositAddress) private OnlyOwner {
        address = DepositAddress //this contract's address once deployed
    }

    function 
}
