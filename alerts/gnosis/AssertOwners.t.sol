// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersGnosis is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0xaD09d78f4c6b9dA2Ae82b1D34107802d380Bb74f,
            0x81a92A1a272cb09d7b4970b07548463dC7aE0cB7
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("mainnet");
    }
}
