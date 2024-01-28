// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersArbitrum is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0x979Ca5202784112f4738403dBec5D0F3B9daabB9,
            0x80Cebd56A65e46c474a1A101e89E76C4c51D179c
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("arbitrum");
    }
}
