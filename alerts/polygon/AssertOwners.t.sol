// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;
import {AssertOwnersBase} from "../base/AssertOwnersBase.sol";

contract AssertOwnersPolygon is AssertOwnersBase {
    constructor()
        AssertOwnersBase(
            0x5d934f4e2f797775e53561bB72aca21ba36B96BB,
            0xC4F7590C5d30BE959225dC75640657954A86b980
        )
    {}

    uint256 mainnet;

    function setUp() public {
        mainnet = enableChain("polygon");
    }
}
