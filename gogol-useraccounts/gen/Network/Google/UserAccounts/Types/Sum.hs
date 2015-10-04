{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.UserAccounts.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.UserAccounts.Types.Sum where

import           Network.Google.Prelude

-- | [Output Only] Status of the operation. Can be one of the following:
-- PENDING, RUNNING, or DONE.
data Status
    = Done
      -- ^ @DONE@
    | Pending
      -- ^ @PENDING@
    | Running
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Status

instance FromText Status where
    fromText = \case
        "DONE" -> Just Done
        "PENDING" -> Just Pending
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText Status where
    toText = \case
        Done -> "DONE"
        Pending -> "PENDING"
        Running -> "RUNNING"

instance FromJSON Status where
    parseJSON = parseJSONText "Status"

instance ToJSON Status where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data WarningsItemCode
    = DeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | InjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | Unreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WarningsItemCode

instance FromText WarningsItemCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just DeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just DiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just InjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just NextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just NextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just NextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just NextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just NextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just NotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just NoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just RequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just ResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just SingleInstancePropertyTemplate
        "UNREACHABLE" -> Just Unreachable
        _ -> Nothing

instance ToText WarningsItemCode where
    toText = \case
        DeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        InjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NotCriticalError -> "NOT_CRITICAL_ERROR"
        NoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        Unreachable -> "UNREACHABLE"

instance FromJSON WarningsItemCode where
    parseJSON = parseJSONText "WarningsItemCode"

instance ToJSON WarningsItemCode where
    toJSON = toJSONText
