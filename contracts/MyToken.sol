// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("My Token", "MTK") {
        // (나) 1000개의 토큰을 ERC20 표준에 맞게 소수 18자리로 표현해서 민팅해주는 코드
        // _mint에서 언더바: 인터널이란 뜻 (상속받은 자식까지 쓸 수 잇음)
        // Wei 형식으로 작동하기 때문에 wei로 변환 해야 함
        // node_modules > openzeppelin >ERC20 > decimals 함수 찾아보기
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}
