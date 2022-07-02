// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title LongShort Coin Machine
 * @dev deposit CollateralToken, select Long or Short, OutputToken minted @depositor addy, repay function, burn OutputToken @repay function call execution
 * how to deploy?
 */

import "@openzeppelin/contracts/access/Ownable.sol";
import "/3xsDAIerc20.sol";

contract LongShortCoinMachine {

    variable [address DAI, address MKR]; // how the fuck do I write this correctly?
    address SupplyAAVE; // https://docs.aave.com/developers/core-contracts/pool#supply
    address BorrowAAVE; // https://docs.aave.com/developers/core-contracts/pool#borrow
    address SwapUniswap; // https://docs.uniswap.org/protocol/reference/core/UniswapV3Pool#swap 
    address OracleDAI; // https://docs.aave.com/developers/core-contracts/aaveoracle
    address OracleMKR; // https://docs.aave.com/developers/core-contracts/aaveoracle

}

// @dev following functions are for setting contract parameters listed above

function store(address SupplyAAVE) storage private OnlyOwner {
    address = SupplyAAVE;
}

function store(address BorrowAAVE) storage private OnlyOwner {
    address = BorrowAAVE;
}

function store(address SwapUniswap) storage private OnlyOwner {
    address = SwapUniswap;
}

function store(address OracleDAI) storage private OnlyOwner {
    address = OracleDAI;
}

function store(address OracleMKR) storage private OnlyOwner {
    address = OracleDAI;
}

function store(address daiTokenAddress) storage private OnlyOwner {
    address = DAIerc20contract;
}

function store(address mkrTokenAddress) storage private OnlyOwner {
    address = MKRerc20contract
}

function DepositCoins(address msg.caller) public {
    _send(account, amount);
}

//below functions are for calling externally to execute contract functions

//supply initial collateral
// ReferralCode(uint16) is 0 for now
function supplyAAVE(address asset1, uint256 amount, address OnBehalfOf, uint16 0) storage public {
    asset1 = daiTokenAddress;
}
// borrow 50% of borrowing power, 3 times
// interest rate mode is set to variable (2), ReferralCode(uint16) is set to 0 for now
// use https://docs.aave.com/developers/periphery-contracts/walletbalanceprovider to get balance*0.50=borrowAmount
function borrowAAVE(address asset2, uint256 (amount=50% of borrowing power), uint16 2, address OnBehalfOf) storage public {
    asset2 = mkrTokenAddress;
}
function borrowAAVE(address asset2, uint256 (amount=50% of borrowing power), uint16 2, address OnBehalfOf) storage public {
    asset2 = mkrTokenAddress;
}
function borrowAAVE(address asset2, uint256 (amount=50% of borrowing power), uint16 2, address OnBehalfOf) storage public {
    asset2 = mkrTokenAddress;
}
// after borrowing, mint corresponding token to msg sender
function mint(address OnBehalfOf, uint256 amount) public {
        _mint(OnBehalfOf, amount);
        totalSupply++;
    }

function 

-----------
contract FavouriteNumberMachineExampleContract {

    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}
