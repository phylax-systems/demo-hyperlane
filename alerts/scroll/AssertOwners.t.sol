// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersScroll is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0x2f2aFaE1139Ce54feFC03593FeE8AB2aDF4a85A7,
            0x0761b0827849abbf7b0cC09CE14e1C93D87f5004
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("scroll");
    }
}
