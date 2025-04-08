// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("My Token", "MTK") {
        // (나) 1000개의 토큰을 ERC20 표준에 맞게 소수 18자리로 표현해서 민팅해주는 코드
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}
