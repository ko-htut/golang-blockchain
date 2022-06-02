pragma solidity ^0.8.13;

// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC20/IERC20.sol

/*
transfer
approve, check allowance, transferFrom
*/

interface IERC20 {
    function totalSupply() external view returns (uint);

    function balanceOf(address account) external view returns (uint);

    function transfer(address recipient, uint amount) external returns (bool); // A send x to B

    function allowance(address owner, address spender) external view returns (uint); //

    function approve(address spender, uint amount) external returns (bool); //A approve B to withdraw x

    function transferFrom(  //B withdraw x from A
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}