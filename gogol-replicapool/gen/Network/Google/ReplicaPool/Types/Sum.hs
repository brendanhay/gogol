{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ReplicaPool.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ReplicaPool.Types.Sum where

import           Network.Google.Prelude

-- | [Output only] The warning type identifier for this warning.
data OperationWarningsItemCode
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
        "DEPRECATED_RESOURCE_USED" -> Right DeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Right InjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NextHopNotRunning
        "NO_RESULTS_ON_PAGE" -> Right NoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right ResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SingleInstancePropertyTemplate
        "UNREACHABLE" -> Right Unreachable
        x -> Left ("Unable to parse OperationWarningsItemCode from: " <> x)

instance ToHttpApiData OperationWarningsItemCode where
    toQueryParam = \case
        DeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        InjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        Unreachable -> "UNREACHABLE"

instance FromJSON OperationWarningsItemCode where
    parseJSON = parseJSONText "OperationWarningsItemCode"

instance ToJSON OperationWarningsItemCode where
    toJSON = toJSONText

-- | The action to perform when an instance becomes unhealthy. Possible
-- values are RECREATE or REBOOT. RECREATE replaces an unhealthy instance
-- with a new instance that is based on the instance template for this
-- managed instance group. REBOOT performs a soft reboot on an instance. If
-- the instance cannot reboot, the instance performs a hard restart.
data ReplicaPoolAutoHealingPolicyActionType
    = Reboot
      -- ^ @REBOOT@
    | Recreate
      -- ^ @RECREATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ReplicaPoolAutoHealingPolicyActionType

instance FromHttpApiData ReplicaPoolAutoHealingPolicyActionType where
    parseQueryParam = \case
        "REBOOT" -> Right Reboot
        "RECREATE" -> Right Recreate
        x -> Left ("Unable to parse ReplicaPoolAutoHealingPolicyActionType from: " <> x)

instance ToHttpApiData ReplicaPoolAutoHealingPolicyActionType where
    toQueryParam = \case
        Reboot -> "REBOOT"
        Recreate -> "RECREATE"

instance FromJSON ReplicaPoolAutoHealingPolicyActionType where
    parseJSON = parseJSONText "ReplicaPoolAutoHealingPolicyActionType"

instance ToJSON ReplicaPoolAutoHealingPolicyActionType where
    toJSON = toJSONText

-- | [Output Only] Status of the operation.
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
