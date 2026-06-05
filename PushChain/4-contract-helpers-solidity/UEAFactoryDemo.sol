// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

// Minimal types and interface for interacting with the Push Chain UEA Factory
struct UniversalAccountId {
    string chainNamespace;
    string chainId;
    bytes owner;
}

interface IUEAFactory {
    function getOriginForUEA(
        address addr
    ) external view returns (UniversalAccountId memory account, bool isUEA);

    function getUEAForOrigin(
        UniversalAccountId memory _id
    ) external view returns (address uea, bool isDeployed);
}

/// Demonstrates how to call getOriginForUEA() and getUEAForOrigin() from a contract
contract UEAFactoryDemo {
    IUEAFactory constant UEAFACTORY =
        IUEAFactory(0x00000000000000000000000000000000000000eA);

    // Demonstrates how to call UEAFactory.getOriginForUEA() from a contract
    function discoverOrigin()
        external
        view
        returns (UniversalAccountId memory originAccount, bool isUEA)
    {
        address caller = msg.sender;
        (originAccount, isUEA) = UEAFACTORY.getOriginForUEA(caller);
        // Example response (for illustration only):
        // [["eip155","11155111","0xfd6c2fe69be13d8be379ccb6c9306e74193ec1a9"], true]
    }

    // Demonstrates how to call UEAFactory.getUEAForOrigin() from a contract
    function discoverUEAForOrigin(
        UniversalAccountId memory account
    ) external view returns (address uea, bool isDeployed) {
        (uea, isDeployed) = UEAFACTORY.getUEAForOrigin(account);
        // Example response (for illustration only):
        // ["0x3445AEE60c70c9f5A947A28B879ca6B449B0a4ce", false]
    }
}
