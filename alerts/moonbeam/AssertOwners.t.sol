// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersMoonbeam is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0x094d03E751f49908080EFf000Dd6FD177fd44CC3,
            0x6A9cdA3dd1F593983BFd142Eb35e6ce4137bd5ce
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("mainnet");
    }
}
