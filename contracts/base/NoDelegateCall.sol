// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.7.6;

/// @title Prevents delegatecall to a contract
/// @notice Base contract that provides a modifier for preventing delegatecall to methods in a child contract
abstract contract NoDelegateCall {
    /// @dev The original address of this contract
    address private immutable original;

    constructor() {
        // Immutables are computed in the init code of the contract, and then inlined into the deployed bytecode.
        // In other words, this variable won't change when it's checked at runtime.
        original = address(this);
    }

    /// @notice Prevents delegatecall into the modified method
    modifier noDelegateCall() {
        require(address(this) == original);
        _;
    }
}
