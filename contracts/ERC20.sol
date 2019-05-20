pragma solidity ^0.5.8;


/**
 * @title ERC20 interface
 */
interface ERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address who) external view returns (uint256);

    function allowance(address tokenOwner, address spender) public view returns (uint remaining);

    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );

    event Approval(
        address indexed tokenOwner,
        address indexed spender,
        uint256 value
    );
}