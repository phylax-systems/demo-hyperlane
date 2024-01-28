// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersOptimism is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0xd4C1905BB1D26BC93DAC913e13CaCC278CdCC80D,
            0xE047cb95FB3b7117989e911c6afb34771183fC35
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("optimism");
    }
}
