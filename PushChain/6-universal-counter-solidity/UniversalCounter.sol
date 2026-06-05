// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

// Universal Account ID Struct and IUEAFactory Interface

struct UniversalAccountId {
    string chainNamespace;
    string chainId;
    bytes owner;
}

interface IUEAFactory {
    function getOriginForUEA(
        address addr
    ) external view returns (UniversalAccountId memory account, bool isUEA);
}

contract UniversalCounter {
    uint256 public countEth;
    uint256 public countSol;
    uint256 public countPC;

    event CountIncremented(
        uint256 newCount,
        address indexed caller,
        string chainNamespace,
        string chainId
    );

    constructor() {}

    function increment() public {
        address caller = msg.sender;
        (UniversalAccountId memory originAccount, bool isUEA) = IUEAFactory(
            0x00000000000000000000000000000000000000eA
        ).getOriginForUEA(caller);

        if (!isUEA) {
            // If it's a native Push Chain EOA (isUEA = false)
            countPC += 1;
        } else {
            bytes32 chainHash = keccak256(
                abi.encodePacked(
                    originAccount.chainNamespace,
                    originAccount.chainId
                )
            );

            if (
                chainHash ==
                keccak256(
                    abi.encodePacked(
                        "solana",
                        "EtWTRABZaYq6iMfeYKouRu166VU2xqa1"
                    )
                )
            ) {
                countSol += 1;
            } else if (
                chainHash == keccak256(abi.encodePacked("eip155", "11155111"))
            ) {
                countEth += 1;
            } else {
                revert("Invalid chain");
            }
        }

        emit CountIncremented(
            getCount(),
            caller,
            originAccount.chainNamespace,
            originAccount.chainId
        );
    }

    function reset() public {
        countEth = 0;
        countSol = 0;
        countPC = 0;
    }

    function getCount() public view returns (uint256) {
        return countEth + countSol + countPC;
    }
}
