// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.23;

import {Alert} from "phylax-std/src/Alert.sol";

abstract contract AssertOwnersBase is Alert {
    address $mailbox;
    address $proxyAdmin;

    constructor(address mailbox, address proxyAdmin) {
        $mailbox = mailbox;
        $proxyAdmin = proxyAdmin;
    }

    function test_assertOwners() internal {
        (
            address mailboxOwner,
            address proxyAdminOwner,
            address defaultHookOwner
        ) = getOwners();
        vm.rollFork({blockNumber: block.number - 1});
        (
            address nextMailboxOwner,
            address nextProxyAdminOwner,
            address nextDefaultHookOwner
        ) = getOwners();
        assertEq(mailboxOwner, nextMailboxOwner, "Mailbox Owner changed");
        assertEq(
            proxyAdminOwner,
            nextProxyAdminOwner,
            "Proxy Admin Owner changed"
        );
        assertEq(
            defaultHookOwner,
            nextDefaultHookOwner,
            "Default Hook Owner changed"
        );
    }

    function test_assertHook() internal {
        address defaultHook = MailBoxI($mailbox).defaultHook();
        vm.rollFork({blockNumber: block.number - 1});
        address nextDefaultHook = MailBoxI($mailbox).defaultHook();
        assertEq(defaultHook, nextDefaultHook, "Default Hook changed");
    }

    function getOwners() internal returns (address, address, address) {
        return (
            MailBoxI(mailbox).owner(),
            Ownable(mailbox.proxyAdmin()),
            Ownable(mailbox.defaultHook())
        );
    }
}

interface MailboxI is Ownable {
    function proxyAdmin() external view returns (address);

    function defaultHook() external view returns (address);
}

interface Ownable {
    function owner() external view returns (address);
}
