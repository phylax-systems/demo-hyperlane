// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersMainnet is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0x3a464f746D23Ab22155710f44dB16dcA53e0775E,
            0x2f2aFaE1139Ce54feFC03593FeE8AB2aDF4a85A7
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("mantapacific");
    }
}
