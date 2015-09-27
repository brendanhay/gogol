{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Compute.UserAccounts.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.UserAccounts.Types.Sum where

import           Network.Google.Prelude

-- | [Output Only] The warning type identifier for this warning.
data OperationCodeItemWarnings
    = OCIWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OCIWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OCIWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OCIWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OCIWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OCIWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OCIWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OCIWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OCIWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OCIWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OCIWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OCIWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OCIWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OCIWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationCodeItemWarnings

instance FromText OperationCodeItemWarnings where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just OCIWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just OCIWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just OCIWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just OCIWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just OCIWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just OCIWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just OCIWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just OCIWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just OCIWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just OCIWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just OCIWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just OCIWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just OCIWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just OCIWUnreachable
        _ -> Nothing

instance ToText OperationCodeItemWarnings where
    toText = \case
        OCIWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        OCIWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        OCIWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        OCIWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        OCIWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        OCIWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        OCIWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        OCIWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        OCIWNotCriticalError -> "NOT_CRITICAL_ERROR"
        OCIWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        OCIWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        OCIWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        OCIWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        OCIWUnreachable -> "UNREACHABLE"

instance FromJSON OperationCodeItemWarnings where
    parseJSON = parseJSONText "OperationCodeItemWarnings"

instance ToJSON OperationCodeItemWarnings where
    toJSON = toJSONText

-- | [Output Only] Status of the operation. Can be one of the following:
-- PENDING, RUNNING, or DONE.
data OperationStatus
    = OSDone
      -- ^ @DONE@
    | OSPending
      -- ^ @PENDING@
    | OSRunning
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationStatus

instance FromText OperationStatus where
    fromText = \case
        "DONE" -> Just OSDone
        "PENDING" -> Just OSPending
        "RUNNING" -> Just OSRunning
        _ -> Nothing

instance ToText OperationStatus where
    toText = \case
        OSDone -> "DONE"
        OSPending -> "PENDING"
        OSRunning -> "RUNNING"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText
