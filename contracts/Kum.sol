// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.7.6;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Kum is ERC20("Kumandra Token", "KUM") {
    constructor() {
        _mint(msg.sender, 27_000_000 * 10 ** uint256(decimals()));
    }
}