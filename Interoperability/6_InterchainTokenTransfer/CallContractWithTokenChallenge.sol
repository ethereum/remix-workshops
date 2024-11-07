//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AxelarExecutable} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/executable/AxelarExecutable.sol";
import {IAxelarGateway} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IAxelarGateway.sol";
import {IERC20} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IERC20.sol";
import {IAxelarGasService} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IAxelarGasService.sol";

/**
 * @title Call Contract With Token
 * @notice Send a token along with an Axelar GMP message between two blockchains
 */
contract CallContractWithTokenChallenge is AxelarExecutable {
    IAxelarGasService public immutable gasService;

    event Executed();

    /**
     *
     * @param _gateway address of axl gateway on deployed chain
     * @param _gasReceiver address of axl gas service on deployed chain
     */
    constructor(
        address _gateway,
        address _gasReceiver
    ) AxelarExecutable(_gateway) {
        gasService = IAxelarGasService(_gasReceiver);
    }

    /**
     * @notice trigger interchain tx from src chain
     * @dev destinationAddresses will be passed in as gmp message in this tx
     * @param _destinationChain name of the dest chain (ex. "Fantom")
     * @param _destinationAddress address on dest chain this tx is going to
     * @param _destinationAddresses recipient addresses receiving sent funds
     * @param _symbol symbol of token being sent
     * @param _amount amount of tokens being sent
     */
    function sendToMany(
        string memory _destinationChain,
        string memory _destinationAddress,
        address[] calldata _destinationAddresses,
        string memory _symbol,
        uint256 _amount
    ) external payable {
        require(msg.value > 0, "Gas payment is required");

        address tokenAddress = gateway.tokenAddresses(_symbol);
        IERC20(tokenAddress).transferFrom(msg.sender, address(this), _amount);
        IERC20(tokenAddress).approve(address(gateway), _amount);

        //TODO Implement Message + Token Interchain Transfer
    }

    /**
     * @notice logic to be executed on dest chain
     * @dev this is triggered automatically by relayer
     * @param _payload encoded gmp message sent from src chain
     * @param _tokenSymbol symbol of token sent from src chain
     * @param _amount amount of tokens sent from src chain
     */
    function _executeWithToken(
        string calldata,
        string calldata,
        bytes calldata _payload,
        string calldata _tokenSymbol,
        uint256 _amount
    ) internal override {
        address[] memory recipients = abi.decode(_payload, (address[]));
        address tokenAddress = gateway.tokenAddresses(_tokenSymbol);

        uint256 sentAmount = _amount / recipients.length;
        for (uint256 i = 0; i < recipients.length; i++) {
            IERC20(tokenAddress).transfer(recipients[i], sentAmount);
        }

        emit Executed();
    }
}
