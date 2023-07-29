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


