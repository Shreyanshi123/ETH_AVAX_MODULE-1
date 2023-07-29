# ETH_AVAX_MODULE-1
This is a solidity program used to create our own contract to demonstrate error handling with the help of assert, revert and require functions
# Description 
This solidity program explains the basic error handling concept in solidity programming. This is done by using functions like assert, revert and require functions. This contract takes you through these functions , their usage, functionality and syntax.
# Getting Started
# Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract LotteryGameProject{

// uint256 public lotteryNumber;
 uint256 public constant  winningLotteryNumber = 9;

function validLotteryNumber(uint256 _lotteryNum) public pure returns(uint256){
    assert(_lotteryNum!=0 && _lotteryNum<20);
    return _lotteryNum;
}

function lotteryWin(uint _lotteryNumber) public pure returns(string memory) {
require(_lotteryNumber == winningLotteryNumber,"Not Ellgibile to Claim The Prize");
return "Winner";
}

function ClaimPrize(uint256 _lotteryNumber) public pure{
if(_lotteryNumber == winningLotteryNumber){
    revert("Withdrawal is allowed");
}
else{
    revert("Try Again");
}
}
}

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile errorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "LotteryGameProject" contract from the dropdown menu, and then click on the "Deploy" button.
# function validLotteryNumber
This function demonstrates the use of assert function.
Using assert function we check if the lotteryNum provided is valid ie between 1 and 20.
If the value is 0 or 20, the exection is stopped.

# function LotteryWin
This function demonstrates the usage of require function.
It takes a parameter _lotteryNumber and checks if the value provided matches the winningLotteryNumber.

# function ClaimPrize
This function demonstrates the usage of the revert function.
It takes a parameter _lotteryNumber and checks if the value provided matches the winningLotteryNumber.
If it matches, Using revert function, it reverts a string withdrawal is allowed.
Else Try again





