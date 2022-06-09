pragma solidity ^0.8.7;

// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC20/IERC20.sol

interface IE20 {
    function totalSupply() external view returns (uint);

    function balanceOf(address account) external view returns (uint);

    function transfer(address recipient, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
contract MyToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 100 * 10**uint(decimals()));         // 1 token = 10 * 18 Wei(decimal)
    }
}
/*
Wallet1
0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
Acoin
0xd9145CCE52D386f254917e481eB44e9943F39138

Wallet2
0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
Bcoin
0xa131AD247055FD2e2aA8b156A11bdEc81b9eAD95

TokenSwap
0x417Bf7C9dc415FEEb693B6FE313d1186C692600F
10000000000000000000
20000000000000000000
*/