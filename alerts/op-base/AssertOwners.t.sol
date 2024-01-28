// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersOpBase is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0xeA87ae93Fa0019a82A727bfd3eBd1cFCa8f64f1D,
            0x4Ed7d626f1E96cD1C0401607Bf70D95243E3dEd1
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("base");
    }
}
