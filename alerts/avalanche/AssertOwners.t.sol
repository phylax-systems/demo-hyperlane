// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersAvalanche is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0xFf06aFcaABaDDd1fb08371f9ccA15D73D51FeBD6,
            0xd7CF8c05fd81b8cA7CfF8E6C49B08a9D63265c9B
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("mainnet");
    }
}
