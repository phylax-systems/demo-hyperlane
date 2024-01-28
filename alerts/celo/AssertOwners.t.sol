// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersCelo is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0x50da3B3907A08a24fe4999F4Dcf337E8dC7954bb,
            0x90f9a2E9eCe93516d65FdaB726a3c62F5960a1b9
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("mainnet");
    }
}
