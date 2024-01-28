// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersBsc is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0x2971b9Aec44bE4eb673DF1B88cDB57b96eefe8a4,
            0x65993Af9D0D3a64ec77590db7ba362D6eB78eF70
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("mainnet");
    }
}
