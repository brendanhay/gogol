{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.UserAccounts.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.UserAccounts.Types.Sum where

import           Network.Google.Prelude

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data OperationWarningsItemCode
    = CleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DeprecatedResourceUsed
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

instance Hashable OperationWarningsItemCode

instance FromHttpApiData OperationWarningsItemCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right CleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Right InjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right ResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SingleInstancePropertyTemplate
        "UNREACHABLE" -> Right Unreachable
        x -> Left ("Unable to parse OperationWarningsItemCode from: " <> x)

instance ToHttpApiData OperationWarningsItemCode where
    toQueryParam = \case
        CleanupFailed -> "CLEANUP_FAILED"
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

instance FromJSON OperationWarningsItemCode where
    parseJSON = parseJSONText "OperationWarningsItemCode"

instance ToJSON OperationWarningsItemCode where
    toJSON = toJSONText

-- | [Output Only] The status of the operation, which can be one of the
-- following: PENDING, RUNNING, or DONE.
data OperationStatus
    = Done
      -- ^ @DONE@
    | Pending
      -- ^ @PENDING@
    | Running
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationStatus

instance FromHttpApiData OperationStatus where
    parseQueryParam = \case
        "DONE" -> Right Done
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        x -> Left ("Unable to parse OperationStatus from: " <> x)

instance ToHttpApiData OperationStatus where
    toQueryParam = \case
        Done -> "DONE"
        Pending -> "PENDING"
        Running -> "RUNNING"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText
