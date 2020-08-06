pragma solidity ^0.4.24;

import "./SobloToken.sol";

/**
 * @title HINTToken
 */
contract HINTToken is SobloToken {
    string public constant name = "HINT Token";
    string public constant symbol = "HINT";
    uint8 public constant decimals = 18;
    
    uint256 public constant INITIAL_SUPPLY = 1e9 * (10 ** uint256(decimals));

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}
