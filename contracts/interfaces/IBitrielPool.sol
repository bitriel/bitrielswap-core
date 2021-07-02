// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.6;

import './pool/IBitrielPoolImmutables.sol';
import './pool/IBitrielPoolState.sol';
import './pool/IBitrielPoolDerivedState.sol';
import './pool/IBitrielPoolActions.sol';
// import './pool/IBitrielPoolOwnerActions.sol';
import './pool/IBitrielPoolEvents.sol';
    // IBitrielPoolOwnerActions,

/// @title The interface for a Bitriel Pool
/// @notice A Bitriel pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IBitrielPool is
    IBitrielPoolImmutables,
    IBitrielPoolState,
    IBitrielPoolDerivedState,
    IBitrielPoolActions,
    IBitrielPoolEvents
{

}
