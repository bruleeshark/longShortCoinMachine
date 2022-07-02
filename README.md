# longShortCoinMachine

this code is a work in progress and may or may not work or even compile; use at your own risk

MKR hedge ratio smart contract dispenser

Put in MKR, get $TOKEN
put in ETH, get $TOKEN
put in DAI, get $TOKEN

Smart contract;

Bullish; 
Receives inputToken,
Supply as collateral to AAVE
swap half to DAI,
borrows 50% as ETH,
Supply as collateral,
Swap 50% WETH for MKR
swap 50% WETH for DAI
MINT $TOKEN to supplierAddress,
amount equal to supplied token, minus 0.3% processing fee, (Total*1.003) taken from supplied coin(s)

(to undo)
Swap dai for WETH
swap MKR for WETH
Repay borrowed WETH from collateral WETH
swap WETH for desired outputToken
Withdrawal collateral from AAVE
Send outputToken to msg.sender
BURN $TOKEN

Bearish;
Receive inputToken,
Supply as collateral to AAVE
25% borrow power DAI
supply as collateral to AAVE
Swap DAI to inputToken,
25% borrow power MKR,
Supply as collateral to AAVE
swap MKR to inputToken,
MINT $TOKEN to supplierAddress,
amount equal to supplied token, minus 0.3% processing fee, (Total*1.003) taken from supplied coin(s)

To incentivize similar supply ratios, fees will increase or decrease around 0.3% to boost supply or cut demand for one token or the other

require if tokenBullish totalSupply => tokenBearish totalSupply then mintFee(++) for tokenBullish;
require if tokenBearish totalSupply => tokenBullish totalSupply then mintFee (++) for tokenBearish;
require if tokenBullish totalSupply < tokenBearish totalSupply then mintFee(--) for tokenBullish;
require if tokenBearish totalSupply < tokenBullish totalSupply then mintFee(--) for tokenBearish;

//So you never get too short or too long. Hopefully.

//Works like this;

//Input any one of 3;
//DAI
//MKR
//WETH

//Treasury is paid (InputAmount*1.003)

//User selects Long or Short / bull or bear
//User is minted;
//longMKRDAIshortWETH if bullish
//longWETHshortMKRDAI if bearish

//Which is priced at inputAmt x 1.5 (long or short)

//This erc1155 token represents user input, with leverage against it at 50% borrowing power via //AAVE. Therefore it's true to market price will reflect 1.5x the benchmark set by the same //basket of 3 assets with no leverage, whether this is 1.5x greater or 1.5x lower.

//In this manner, users can use the tokens;
//longMKRDAI
//shortMKRDAI
//To trade the market movements of these assets, and to hedge different trades involving these //three assets.

//You could think of this as a token representing either;

//1 short contract against SPY +
//1 long contract on major banks index
//(Short WETH, long MKRDAI)
//Or 
//1 long contract on SPY +
//1 short contract on major banks index
//(Long WETH, short MKRDAI)
