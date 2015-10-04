{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Compute.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.Types.Sum where

import           Network.Google.Prelude

-- | Sesssion affinity option, must be one of the following values: NONE:
-- Connections from the same client IP may go to any instance in the pool;
-- CLIENT_IP: Connections from the same client IP will go to the same
-- instance in the pool while that instance remains healthy.
-- CLIENT_IP_PROTO: Connections from the same client IP with the same IP
-- protocol will go to the same instance in the pool while that instance
-- remains healthy.
data SessionAffinity
    = SAClientIP
      -- ^ @CLIENT_IP@
    | SAClientIPProto
      -- ^ @CLIENT_IP_PROTO@
    | SANone
      -- ^ @NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SessionAffinity

instance FromText SessionAffinity where
    fromText = \case
        "CLIENT_IP" -> Just SAClientIP
        "CLIENT_IP_PROTO" -> Just SAClientIPProto
        "NONE" -> Just SANone
        _ -> Nothing

instance ToText SessionAffinity where
    toText = \case
        SAClientIP -> "CLIENT_IP"
        SAClientIPProto -> "CLIENT_IP_PROTO"
        SANone -> "NONE"

instance FromJSON SessionAffinity where
    parseJSON = parseJSONText "SessionAffinity"

instance ToJSON SessionAffinity where
    toJSON = toJSONText

-- | [Output Only] An indicator whether storageBytes is in a stable state or
-- it is being adjusted as a result of shared storage reallocation.
data StorageBytesStatus
    = Updating
      -- ^ @UPDATING@
    | UpToDate
      -- ^ @UP_TO_DATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable StorageBytesStatus

instance FromText StorageBytesStatus where
    fromText = \case
        "UPDATING" -> Just Updating
        "UP_TO_DATE" -> Just UpToDate
        _ -> Nothing

instance ToText StorageBytesStatus where
    toText = \case
        Updating -> "UPDATING"
        UpToDate -> "UP_TO_DATE"

instance FromJSON StorageBytesStatus where
    parseJSON = parseJSONText "StorageBytesStatus"

instance ToJSON StorageBytesStatus where
    toJSON = toJSONText

-- | [Output Only] The status of the snapshot.
data Status
    = SCreating
      -- ^ @CREATING@
    | SDeleting
      -- ^ @DELETING@
    | SFailed
      -- ^ @FAILED@
    | SReady
      -- ^ @READY@
    | SUploading
      -- ^ @UPLOADING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Status

instance FromText Status where
    fromText = \case
        "CREATING" -> Just SCreating
        "DELETING" -> Just SDeleting
        "FAILED" -> Just SFailed
        "READY" -> Just SReady
        "UPLOADING" -> Just SUploading
        _ -> Nothing

instance ToText Status where
    toText = \case
        SCreating -> "CREATING"
        SDeleting -> "DELETING"
        SFailed -> "FAILED"
        SReady -> "READY"
        SUploading -> "UPLOADING"

instance FromJSON Status where
    parseJSON = parseJSONText "Status"

instance ToJSON Status where
    toJSON = toJSONText

-- | The format used to encode and transmit the block device, which should be
-- TAR. This is just a container and transmission format and not a runtime
-- format. Provided by the client when the disk image is created.
data ContainerType
    = TAR
      -- ^ @TAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ContainerType

instance FromText ContainerType where
    fromText = \case
        "TAR" -> Just TAR
        _ -> Nothing

instance ToText ContainerType where
    toText = \case
        TAR -> "TAR"

instance FromJSON ContainerType where
    parseJSON = parseJSONText "ContainerType"

instance ToJSON ContainerType where
    toJSON = toJSONText

-- | Specifies the type of the disk, either SCRATCH or PERSISTENT. If not
-- specified, the default is PERSISTENT.
data AttachedDiskType
    = Persistent
      -- ^ @PERSISTENT@
    | Scratch
      -- ^ @SCRATCH@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskType

instance FromText AttachedDiskType where
    fromText = \case
        "PERSISTENT" -> Just Persistent
        "SCRATCH" -> Just Scratch
        _ -> Nothing

instance ToText AttachedDiskType where
    toText = \case
        Persistent -> "PERSISTENT"
        Scratch -> "SCRATCH"

instance FromJSON AttachedDiskType where
    parseJSON = parseJSONText "AttachedDiskType"

instance ToJSON AttachedDiskType where
    toJSON = toJSONText

-- | The deprecation state of this resource. This can be DEPRECATED,
-- OBSOLETE, or DELETED. Operations which create a new resource using a
-- DEPRECATED resource will return successfully, but with a warning
-- indicating the deprecated resource and recommending its replacement.
-- Operations which use OBSOLETE or DELETED resources will be rejected and
-- result in an error.
data State
    = SDeleted
      -- ^ @DELETED@
    | SDeprecated
      -- ^ @DEPRECATED@
    | SObsolete
      -- ^ @OBSOLETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable State

instance FromText State where
    fromText = \case
        "DELETED" -> Just SDeleted
        "DEPRECATED" -> Just SDeprecated
        "OBSOLETE" -> Just SObsolete
        _ -> Nothing

instance ToText State where
    toText = \case
        SDeleted -> "DELETED"
        SDeprecated -> "DEPRECATED"
        SObsolete -> "OBSOLETE"

instance FromJSON State where
    parseJSON = parseJSONText "State"

instance ToJSON State where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data DisksScopedListWarningCode
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

instance Hashable DisksScopedListWarningCode

instance FromText DisksScopedListWarningCode where
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

instance ToText DisksScopedListWarningCode where
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

instance FromJSON DisksScopedListWarningCode where
    parseJSON = parseJSONText "DisksScopedListWarningCode"

instance ToJSON DisksScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data TargetPoolsScopedListWarningCode
    = TPSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TPSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TPSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TPSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TPSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TPSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TPSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TPSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TPSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TPSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TPSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TPSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TPSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TPSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetPoolsScopedListWarningCode

instance FromText TargetPoolsScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just TPSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just TPSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just TPSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just TPSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just TPSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just TPSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just TPSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just TPSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just TPSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just TPSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just TPSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just TPSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just TPSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just TPSLWCUnreachable
        _ -> Nothing

instance ToText TargetPoolsScopedListWarningCode where
    toText = \case
        TPSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TPSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TPSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TPSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TPSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TPSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TPSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TPSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TPSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TPSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TPSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TPSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TPSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TPSLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetPoolsScopedListWarningCode where
    parseJSON = parseJSONText "TargetPoolsScopedListWarningCode"

instance ToJSON TargetPoolsScopedListWarningCode where
    toJSON = toJSONText

-- | The type of the image used to create this disk. The default and only
-- value is RAW
data SourceType
    = Raw
      -- ^ @RAW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SourceType

instance FromText SourceType where
    fromText = \case
        "RAW" -> Just Raw
        _ -> Nothing

instance ToText SourceType where
    toText = \case
        Raw -> "RAW"

instance FromJSON SourceType where
    parseJSON = parseJSONText "SourceType"

instance ToJSON SourceType where
    toJSON = toJSONText

-- | [Output Only] The status of the VPN gateway.
data TargetVPNGatewayStatus
    = TVGSCreating
      -- ^ @CREATING@
    | TVGSDeleting
      -- ^ @DELETING@
    | TVGSFailed
      -- ^ @FAILED@
    | TVGSReady
      -- ^ @READY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetVPNGatewayStatus

instance FromText TargetVPNGatewayStatus where
    fromText = \case
        "CREATING" -> Just TVGSCreating
        "DELETING" -> Just TVGSDeleting
        "FAILED" -> Just TVGSFailed
        "READY" -> Just TVGSReady
        _ -> Nothing

instance ToText TargetVPNGatewayStatus where
    toText = \case
        TVGSCreating -> "CREATING"
        TVGSDeleting -> "DELETING"
        TVGSFailed -> "FAILED"
        TVGSReady -> "READY"

instance FromJSON TargetVPNGatewayStatus where
    parseJSON = parseJSONText "TargetVPNGatewayStatus"

instance ToJSON TargetVPNGatewayStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data InstanceGroupManagersScopedListWarningCode
    = IGMSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGMSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGMSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGMSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGMSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGMSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGMSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGMSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGMSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGMSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGMSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGMSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGMSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGMSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceGroupManagersScopedListWarningCode

instance FromText InstanceGroupManagersScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just IGMSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just IGMSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just IGMSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just IGMSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just IGMSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just IGMSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just IGMSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just IGMSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just IGMSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just IGMSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just IGMSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just IGMSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just IGMSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just IGMSLWCUnreachable
        _ -> Nothing

instance ToText InstanceGroupManagersScopedListWarningCode where
    toText = \case
        IGMSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGMSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGMSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGMSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGMSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGMSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGMSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGMSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGMSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGMSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGMSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGMSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGMSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGMSLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupManagersScopedListWarningCode where
    parseJSON = parseJSONText "InstanceGroupManagersScopedListWarningCode"

instance ToJSON InstanceGroupManagersScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data ForwardingRulesScopedListWarningCode
    = FRSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | FRSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | FRSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | FRSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | FRSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | FRSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | FRSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | FRSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | FRSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | FRSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | FRSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | FRSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | FRSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | FRSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ForwardingRulesScopedListWarningCode

instance FromText ForwardingRulesScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just FRSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just FRSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just FRSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just FRSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just FRSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just FRSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just FRSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just FRSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just FRSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just FRSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just FRSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just FRSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just FRSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just FRSLWCUnreachable
        _ -> Nothing

instance ToText ForwardingRulesScopedListWarningCode where
    toText = \case
        FRSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        FRSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        FRSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        FRSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        FRSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        FRSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        FRSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        FRSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        FRSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        FRSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        FRSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        FRSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        FRSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        FRSLWCUnreachable -> "UNREACHABLE"

instance FromJSON ForwardingRulesScopedListWarningCode where
    parseJSON = parseJSONText "ForwardingRulesScopedListWarningCode"

instance ToJSON ForwardingRulesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data OperationsScopedListWarningCode
    = OSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationsScopedListWarningCode

instance FromText OperationsScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just OSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just OSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just OSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just OSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just OSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just OSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just OSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just OSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just OSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just OSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just OSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just OSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just OSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just OSLWCUnreachable
        _ -> Nothing

instance ToText OperationsScopedListWarningCode where
    toText = \case
        OSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        OSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        OSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        OSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        OSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        OSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        OSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        OSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        OSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        OSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        OSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        OSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        OSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        OSLWCUnreachable -> "UNREACHABLE"

instance FromJSON OperationsScopedListWarningCode where
    parseJSON = parseJSONText "OperationsScopedListWarningCode"

instance ToJSON OperationsScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data RouteWarningsItemCode
    = RWICDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RWICDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RWICInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RWICNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RWICNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RWICNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RWICNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RWICNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RWICNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RWICNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RWICRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RWICResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RWICSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RWICUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RouteWarningsItemCode

instance FromText RouteWarningsItemCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just RWICDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just RWICDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just RWICInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just RWICNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just RWICNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just RWICNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just RWICNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just RWICNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just RWICNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just RWICNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just RWICRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just RWICResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just RWICSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just RWICUnreachable
        _ -> Nothing

instance ToText RouteWarningsItemCode where
    toText = \case
        RWICDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RWICDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RWICInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RWICNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RWICNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RWICNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RWICNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RWICNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RWICNotCriticalError -> "NOT_CRITICAL_ERROR"
        RWICNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RWICRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RWICResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RWICSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RWICUnreachable -> "UNREACHABLE"

instance FromJSON RouteWarningsItemCode where
    parseJSON = parseJSONText "RouteWarningsItemCode"

instance ToJSON RouteWarningsItemCode where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data TargetInstancesScopedListWarningCode
    = TISLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TISLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TISLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TISLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TISLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TISLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TISLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TISLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TISLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TISLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TISLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TISLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TISLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TISLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetInstancesScopedListWarningCode

instance FromText TargetInstancesScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just TISLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just TISLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just TISLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just TISLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just TISLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just TISLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just TISLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just TISLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just TISLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just TISLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just TISLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just TISLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just TISLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just TISLWCUnreachable
        _ -> Nothing

instance ToText TargetInstancesScopedListWarningCode where
    toText = \case
        TISLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TISLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TISLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TISLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TISLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TISLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TISLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TISLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TISLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TISLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TISLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TISLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TISLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TISLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetInstancesScopedListWarningCode where
    parseJSON = parseJSONText "TargetInstancesScopedListWarningCode"

instance ToJSON TargetInstancesScopedListWarningCode where
    toJSON = toJSONText

-- | Specifies the balancing mode for this backend. The default is
-- UTILIZATION but available values are UTILIZATION and RATE.
data BalancingMode
    = Rate
      -- ^ @RATE@
    | Utilization
      -- ^ @UTILIZATION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BalancingMode

instance FromText BalancingMode where
    fromText = \case
        "RATE" -> Just Rate
        "UTILIZATION" -> Just Utilization
        _ -> Nothing

instance ToText BalancingMode where
    toText = \case
        Rate -> "RATE"
        Utilization -> "UTILIZATION"

instance FromJSON BalancingMode where
    parseJSON = parseJSONText "BalancingMode"

instance ToJSON BalancingMode where
    toJSON = toJSONText

-- | The mode in which to attach this disk, either READ_WRITE or READ_ONLY.
-- If not specified, the default is to attach the disk in READ_WRITE mode.
data Mode
    = ReadOnly
      -- ^ @READ_ONLY@
    | ReadWrite
      -- ^ @READ_WRITE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Mode

instance FromText Mode where
    fromText = \case
        "READ_ONLY" -> Just ReadOnly
        "READ_WRITE" -> Just ReadWrite
        _ -> Nothing

instance ToText Mode where
    toText = \case
        ReadOnly -> "READ_ONLY"
        ReadWrite -> "READ_WRITE"

instance FromJSON Mode where
    parseJSON = parseJSONText "Mode"

instance ToJSON Mode where
    toJSON = toJSONText

-- | NAT option controlling how IPs are NAT\'ed to the instance. Currently
-- only NO_NAT (default value) is supported.
data NATPolicy
    = NoNAT
      -- ^ @NO_NAT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable NATPolicy

instance FromText NATPolicy where
    fromText = \case
        "NO_NAT" -> Just NoNAT
        _ -> Nothing

instance ToText NATPolicy where
    toText = \case
        NoNAT -> "NO_NAT"

instance FromJSON NATPolicy where
    parseJSON = parseJSONText "NATPolicy"

instance ToJSON NATPolicy where
    toJSON = toJSONText

-- | [Output Only] The status of the image. An image can be used to create
-- other resources, such as instances, only after the image has been
-- successfully created and the status is set to READY. Possible values are
-- FAILED, PENDING, or READY.
data ImageStatus
    = Failed
      -- ^ @FAILED@
    | Pending
      -- ^ @PENDING@
    | Ready
      -- ^ @READY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageStatus

instance FromText ImageStatus where
    fromText = \case
        "FAILED" -> Just Failed
        "PENDING" -> Just Pending
        "READY" -> Just Ready
        _ -> Nothing

instance ToText ImageStatus where
    toText = \case
        Failed -> "FAILED"
        Pending -> "PENDING"
        Ready -> "READY"

instance FromJSON ImageStatus where
    parseJSON = parseJSONText "ImageStatus"

instance ToJSON ImageStatus where
    toJSON = toJSONText

-- | The type of configuration. The default and only option is
-- ONE_TO_ONE_NAT.
data AccessConfigType
    = OneToOneNAT
      -- ^ @ONE_TO_ONE_NAT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccessConfigType

instance FromText AccessConfigType where
    fromText = \case
        "ONE_TO_ONE_NAT" -> Just OneToOneNAT
        _ -> Nothing

instance ToText AccessConfigType where
    toText = \case
        OneToOneNAT -> "ONE_TO_ONE_NAT"

instance FromJSON AccessConfigType where
    parseJSON = parseJSONText "AccessConfigType"

instance ToJSON AccessConfigType where
    toJSON = toJSONText

data Protocol
    = HTTP
      -- ^ @HTTP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Protocol

instance FromText Protocol where
    fromText = \case
        "HTTP" -> Just HTTP
        _ -> Nothing

instance ToText Protocol where
    toText = \case
        HTTP -> "HTTP"

instance FromJSON Protocol where
    parseJSON = parseJSONText "Protocol"

instance ToJSON Protocol where
    toJSON = toJSONText

-- | [Output Only] The status of disk creation. Applicable statuses includes:
-- CREATING, FAILED, READY, RESTORING.
data DiskStatus
    = DSCreating
      -- ^ @CREATING@
    | DSFailed
      -- ^ @FAILED@
    | DSReady
      -- ^ @READY@
    | DSRestoring
      -- ^ @RESTORING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DiskStatus

instance FromText DiskStatus where
    fromText = \case
        "CREATING" -> Just DSCreating
        "FAILED" -> Just DSFailed
        "READY" -> Just DSReady
        "RESTORING" -> Just DSRestoring
        _ -> Nothing

instance ToText DiskStatus where
    toText = \case
        DSCreating -> "CREATING"
        DSFailed -> "FAILED"
        DSReady -> "READY"
        DSRestoring -> "RESTORING"

instance FromJSON DiskStatus where
    parseJSON = parseJSONText "DiskStatus"

instance ToJSON DiskStatus where
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

-- | [Output Only] The warning type identifier for this warning.
data WarningsItemCode
    = WICDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | WICDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | WICInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | WICNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | WICNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | WICNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | WICNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | WICNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | WICNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | WICNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | WICRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | WICResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | WICSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | WICUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WarningsItemCode

instance FromText WarningsItemCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just WICDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just WICDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just WICInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just WICNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just WICNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just WICNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just WICNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just WICNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just WICNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just WICNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just WICRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just WICResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just WICSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just WICUnreachable
        _ -> Nothing

instance ToText WarningsItemCode where
    toText = \case
        WICDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        WICDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        WICInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        WICNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        WICNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        WICNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        WICNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        WICNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        WICNotCriticalError -> "NOT_CRITICAL_ERROR"
        WICNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        WICRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        WICResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        WICSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        WICUnreachable -> "UNREACHABLE"

instance FromJSON WarningsItemCode where
    parseJSON = parseJSONText "WarningsItemCode"

instance ToJSON WarningsItemCode where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data TargetVPNGatewaysScopedListWarningCode
    = TVGSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TVGSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TVGSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TVGSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TVGSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TVGSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TVGSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TVGSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TVGSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TVGSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TVGSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TVGSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TVGSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TVGSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetVPNGatewaysScopedListWarningCode

instance FromText TargetVPNGatewaysScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just TVGSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just TVGSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just TVGSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just TVGSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just TVGSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just TVGSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just TVGSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just TVGSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just TVGSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just TVGSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just TVGSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just TVGSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just TVGSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just TVGSLWCUnreachable
        _ -> Nothing

instance ToText TargetVPNGatewaysScopedListWarningCode where
    toText = \case
        TVGSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TVGSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TVGSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TVGSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TVGSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TVGSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TVGSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TVGSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TVGSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TVGSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TVGSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TVGSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TVGSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TVGSLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetVPNGatewaysScopedListWarningCode where
    parseJSON = parseJSONText "TargetVPNGatewaysScopedListWarningCode"

instance ToJSON TargetVPNGatewaysScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of the VPN tunnel.
data VPNTunnelStatus
    = VTSAuthorizationError
      -- ^ @AUTHORIZATION_ERROR@
    | VTSDeprovisioning
      -- ^ @DEPROVISIONING@
    | VTSEstablished
      -- ^ @ESTABLISHED@
    | VTSFailed
      -- ^ @FAILED@
    | VTSFirstHandshake
      -- ^ @FIRST_HANDSHAKE@
    | VTSNegotiationFailure
      -- ^ @NEGOTIATION_FAILURE@
    | VTSNetworkError
      -- ^ @NETWORK_ERROR@
    | VTSNoIncomingPackets
      -- ^ @NO_INCOMING_PACKETS@
    | VTSProvisioning
      -- ^ @PROVISIONING@
    | VTSRejected
      -- ^ @REJECTED@
    | VTSWaitingForFullConfig
      -- ^ @WAITING_FOR_FULL_CONFIG@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VPNTunnelStatus

instance FromText VPNTunnelStatus where
    fromText = \case
        "AUTHORIZATION_ERROR" -> Just VTSAuthorizationError
        "DEPROVISIONING" -> Just VTSDeprovisioning
        "ESTABLISHED" -> Just VTSEstablished
        "FAILED" -> Just VTSFailed
        "FIRST_HANDSHAKE" -> Just VTSFirstHandshake
        "NEGOTIATION_FAILURE" -> Just VTSNegotiationFailure
        "NETWORK_ERROR" -> Just VTSNetworkError
        "NO_INCOMING_PACKETS" -> Just VTSNoIncomingPackets
        "PROVISIONING" -> Just VTSProvisioning
        "REJECTED" -> Just VTSRejected
        "WAITING_FOR_FULL_CONFIG" -> Just VTSWaitingForFullConfig
        _ -> Nothing

instance ToText VPNTunnelStatus where
    toText = \case
        VTSAuthorizationError -> "AUTHORIZATION_ERROR"
        VTSDeprovisioning -> "DEPROVISIONING"
        VTSEstablished -> "ESTABLISHED"
        VTSFailed -> "FAILED"
        VTSFirstHandshake -> "FIRST_HANDSHAKE"
        VTSNegotiationFailure -> "NEGOTIATION_FAILURE"
        VTSNetworkError -> "NETWORK_ERROR"
        VTSNoIncomingPackets -> "NO_INCOMING_PACKETS"
        VTSProvisioning -> "PROVISIONING"
        VTSRejected -> "REJECTED"
        VTSWaitingForFullConfig -> "WAITING_FOR_FULL_CONFIG"

instance FromJSON VPNTunnelStatus where
    parseJSON = parseJSONText "VPNTunnelStatus"

instance ToJSON VPNTunnelStatus where
    toJSON = toJSONText

-- | [Output Only] Status of the region, either UP or DOWN.
data RegionStatus
    = Down
      -- ^ @DOWN@
    | UP
      -- ^ @UP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RegionStatus

instance FromText RegionStatus where
    fromText = \case
        "DOWN" -> Just Down
        "UP" -> Just UP
        _ -> Nothing

instance ToText RegionStatus where
    toText = \case
        Down -> "DOWN"
        UP -> "UP"

instance FromJSON RegionStatus where
    parseJSON = parseJSONText "RegionStatus"

instance ToJSON RegionStatus where
    toJSON = toJSONText

-- | Defines the maintenance behavior for this instance. For standard
-- instances, the default behavior is MIGRATE. For preemptible instances,
-- the default and only possible behavior is TERMINATE. For more
-- information, see Setting maintenance behavior.
data OnHostMaintenance
    = Migrate
      -- ^ @MIGRATE@
    | Terminate
      -- ^ @TERMINATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OnHostMaintenance

instance FromText OnHostMaintenance where
    fromText = \case
        "MIGRATE" -> Just Migrate
        "TERMINATE" -> Just Terminate
        _ -> Nothing

instance ToText OnHostMaintenance where
    toText = \case
        Migrate -> "MIGRATE"
        Terminate -> "TERMINATE"

instance FromJSON OnHostMaintenance where
    parseJSON = parseJSONText "OnHostMaintenance"

instance ToJSON OnHostMaintenance where
    toJSON = toJSONText

-- | The IP protocol to which this rule applies. Valid options are TCP, UDP,
-- ESP, AH or SCTP.
data IPProtocol
    = AH
      -- ^ @AH@
    | Esp
      -- ^ @ESP@
    | Sctp
      -- ^ @SCTP@
    | TCP
      -- ^ @TCP@
    | Udp
      -- ^ @UDP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable IPProtocol

instance FromText IPProtocol where
    fromText = \case
        "AH" -> Just AH
        "ESP" -> Just Esp
        "SCTP" -> Just Sctp
        "TCP" -> Just TCP
        "UDP" -> Just Udp
        _ -> Nothing

instance ToText IPProtocol where
    toText = \case
        AH -> "AH"
        Esp -> "ESP"
        Sctp -> "SCTP"
        TCP -> "TCP"
        Udp -> "UDP"

instance FromJSON IPProtocol where
    parseJSON = parseJSONText "IPProtocol"

instance ToJSON IPProtocol where
    toJSON = toJSONText

-- | The current action that the managed instance group has scheduled for the
-- instance.
data CurrentAction
    = CAAbandoning
      -- ^ @ABANDONING@
    | CACreating
      -- ^ @CREATING@
    | CADeleting
      -- ^ @DELETING@
    | CANone
      -- ^ @NONE@
    | CARecreating
      -- ^ @RECREATING@
    | CARefreshing
      -- ^ @REFRESHING@
    | CARestarting
      -- ^ @RESTARTING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CurrentAction

instance FromText CurrentAction where
    fromText = \case
        "ABANDONING" -> Just CAAbandoning
        "CREATING" -> Just CACreating
        "DELETING" -> Just CADeleting
        "NONE" -> Just CANone
        "RECREATING" -> Just CARecreating
        "REFRESHING" -> Just CARefreshing
        "RESTARTING" -> Just CARestarting
        _ -> Nothing

instance ToText CurrentAction where
    toText = \case
        CAAbandoning -> "ABANDONING"
        CACreating -> "CREATING"
        CADeleting -> "DELETING"
        CANone -> "NONE"
        CARecreating -> "RECREATING"
        CARefreshing -> "REFRESHING"
        CARestarting -> "RESTARTING"

instance FromJSON CurrentAction where
    parseJSON = parseJSONText "CurrentAction"

instance ToJSON CurrentAction where
    toJSON = toJSONText

-- | [Output Only] Name of the quota metric.
data QuotaMetric
    = QMBackendServices
      -- ^ @BACKEND_SERVICES@
    | QMCPUs
      -- ^ @CPUS@
    | QMDisksTotalGb
      -- ^ @DISKS_TOTAL_GB@
    | QMFirewalls
      -- ^ @FIREWALLS@
    | QMForwardingRules
      -- ^ @FORWARDING_RULES@
    | QMHealthChecks
      -- ^ @HEALTH_CHECKS@
    | QMImages
      -- ^ @IMAGES@
    | QMInstances
      -- ^ @INSTANCES@
    | QMInstanceGroups
      -- ^ @INSTANCE_GROUPS@
    | QMInstanceGroupManagers
      -- ^ @INSTANCE_GROUP_MANAGERS@
    | QMInstanceTemplates
      -- ^ @INSTANCE_TEMPLATES@
    | QMInUseAddresses
      -- ^ @IN_USE_ADDRESSES@
    | QMLocalSsdTotalGb
      -- ^ @LOCAL_SSD_TOTAL_GB@
    | QMNetworks
      -- ^ @NETWORKS@
    | QMRoutes
      -- ^ @ROUTES@
    | QMSnapshots
      -- ^ @SNAPSHOTS@
    | QMSsdTotalGb
      -- ^ @SSD_TOTAL_GB@
    | QMStaticAddresses
      -- ^ @STATIC_ADDRESSES@
    | QMTargetHTTPProxies
      -- ^ @TARGET_HTTP_PROXIES@
    | QMTargetInstances
      -- ^ @TARGET_INSTANCES@
    | QMTargetPools
      -- ^ @TARGET_POOLS@
    | QMTargetVPNGateways
      -- ^ @TARGET_VPN_GATEWAYS@
    | QMURLMaps
      -- ^ @URL_MAPS@
    | QMVPNTunnels
      -- ^ @VPN_TUNNELS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QuotaMetric

instance FromText QuotaMetric where
    fromText = \case
        "BACKEND_SERVICES" -> Just QMBackendServices
        "CPUS" -> Just QMCPUs
        "DISKS_TOTAL_GB" -> Just QMDisksTotalGb
        "FIREWALLS" -> Just QMFirewalls
        "FORWARDING_RULES" -> Just QMForwardingRules
        "HEALTH_CHECKS" -> Just QMHealthChecks
        "IMAGES" -> Just QMImages
        "INSTANCES" -> Just QMInstances
        "INSTANCE_GROUPS" -> Just QMInstanceGroups
        "INSTANCE_GROUP_MANAGERS" -> Just QMInstanceGroupManagers
        "INSTANCE_TEMPLATES" -> Just QMInstanceTemplates
        "IN_USE_ADDRESSES" -> Just QMInUseAddresses
        "LOCAL_SSD_TOTAL_GB" -> Just QMLocalSsdTotalGb
        "NETWORKS" -> Just QMNetworks
        "ROUTES" -> Just QMRoutes
        "SNAPSHOTS" -> Just QMSnapshots
        "SSD_TOTAL_GB" -> Just QMSsdTotalGb
        "STATIC_ADDRESSES" -> Just QMStaticAddresses
        "TARGET_HTTP_PROXIES" -> Just QMTargetHTTPProxies
        "TARGET_INSTANCES" -> Just QMTargetInstances
        "TARGET_POOLS" -> Just QMTargetPools
        "TARGET_VPN_GATEWAYS" -> Just QMTargetVPNGateways
        "URL_MAPS" -> Just QMURLMaps
        "VPN_TUNNELS" -> Just QMVPNTunnels
        _ -> Nothing

instance ToText QuotaMetric where
    toText = \case
        QMBackendServices -> "BACKEND_SERVICES"
        QMCPUs -> "CPUS"
        QMDisksTotalGb -> "DISKS_TOTAL_GB"
        QMFirewalls -> "FIREWALLS"
        QMForwardingRules -> "FORWARDING_RULES"
        QMHealthChecks -> "HEALTH_CHECKS"
        QMImages -> "IMAGES"
        QMInstances -> "INSTANCES"
        QMInstanceGroups -> "INSTANCE_GROUPS"
        QMInstanceGroupManagers -> "INSTANCE_GROUP_MANAGERS"
        QMInstanceTemplates -> "INSTANCE_TEMPLATES"
        QMInUseAddresses -> "IN_USE_ADDRESSES"
        QMLocalSsdTotalGb -> "LOCAL_SSD_TOTAL_GB"
        QMNetworks -> "NETWORKS"
        QMRoutes -> "ROUTES"
        QMSnapshots -> "SNAPSHOTS"
        QMSsdTotalGb -> "SSD_TOTAL_GB"
        QMStaticAddresses -> "STATIC_ADDRESSES"
        QMTargetHTTPProxies -> "TARGET_HTTP_PROXIES"
        QMTargetInstances -> "TARGET_INSTANCES"
        QMTargetPools -> "TARGET_POOLS"
        QMTargetVPNGateways -> "TARGET_VPN_GATEWAYS"
        QMURLMaps -> "URL_MAPS"
        QMVPNTunnels -> "VPN_TUNNELS"

instance FromJSON QuotaMetric where
    parseJSON = parseJSONText "QuotaMetric"

instance ToJSON QuotaMetric where
    toJSON = toJSONText

-- | [Output Only] Status of the zone, either UP or DOWN.
data ZoneStatus
    = ZSDown
      -- ^ @DOWN@
    | ZSUP
      -- ^ @UP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ZoneStatus

instance FromText ZoneStatus where
    fromText = \case
        "DOWN" -> Just ZSDown
        "UP" -> Just ZSUP
        _ -> Nothing

instance ToText ZoneStatus where
    toText = \case
        ZSDown -> "DOWN"
        ZSUP -> "UP"

instance FromJSON ZoneStatus where
    parseJSON = parseJSONText "ZoneStatus"

instance ToJSON ZoneStatus where
    toJSON = toJSONText

-- | [Output Only] The status of the address, which can be either IN_USE or
-- RESERVED. An address that is RESERVED is currently reserved and
-- available to use. An IN_USE address is currently being used by another
-- resource and is not available.
data AddressStatus
    = InUse
      -- ^ @IN_USE@
    | Reserved
      -- ^ @RESERVED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AddressStatus

instance FromText AddressStatus where
    fromText = \case
        "IN_USE" -> Just InUse
        "RESERVED" -> Just Reserved
        _ -> Nothing

instance ToText AddressStatus where
    toText = \case
        InUse -> "IN_USE"
        Reserved -> "RESERVED"

instance FromJSON AddressStatus where
    parseJSON = parseJSONText "AddressStatus"

instance ToJSON AddressStatus where
    toJSON = toJSONText

data Interface
    = Nvme
      -- ^ @NVME@
    | Scsi
      -- ^ @SCSI@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Interface

instance FromText Interface where
    fromText = \case
        "NVME" -> Just Nvme
        "SCSI" -> Just Scsi
        _ -> Nothing

instance ToText Interface where
    toText = \case
        Nvme -> "NVME"
        Scsi -> "SCSI"

instance FromJSON Interface where
    parseJSON = parseJSONText "Interface"

instance ToJSON Interface where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data MachineTypesScopedListWarningCode
    = MTSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | MTSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | MTSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | MTSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | MTSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | MTSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | MTSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | MTSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | MTSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | MTSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | MTSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | MTSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | MTSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | MTSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MachineTypesScopedListWarningCode

instance FromText MachineTypesScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just MTSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just MTSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just MTSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just MTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just MTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just MTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just MTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just MTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just MTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just MTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just MTSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just MTSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just MTSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just MTSLWCUnreachable
        _ -> Nothing

instance ToText MachineTypesScopedListWarningCode where
    toText = \case
        MTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        MTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        MTSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        MTSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        MTSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        MTSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        MTSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        MTSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        MTSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        MTSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        MTSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        MTSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        MTSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        MTSLWCUnreachable -> "UNREACHABLE"

instance FromJSON MachineTypesScopedListWarningCode where
    parseJSON = parseJSONText "MachineTypesScopedListWarningCode"

instance ToJSON MachineTypesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data Code
    = CDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | CDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | CInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | CNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | CNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | CNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | CNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | CNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | CNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | CNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | CRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | CResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | CSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | CUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Code

instance FromText Code where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just CDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just CDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just CInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just CNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just CNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just CNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just CNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just CNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just CNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just CNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just CRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just CResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just CSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just CUnreachable
        _ -> Nothing

instance ToText Code where
    toText = \case
        CDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        CDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        CInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        CNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        CNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        CNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        CNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        CNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        CNotCriticalError -> "NOT_CRITICAL_ERROR"
        CNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        CRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        CResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        CSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        CUnreachable -> "UNREACHABLE"

instance FromJSON Code where
    parseJSON = parseJSONText "Code"

instance ToJSON Code where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data AutoscalersScopedListWarningCode
    = ASLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ASLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ASLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ASLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ASLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ASLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ASLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ASLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ASLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ASLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ASLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ASLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ASLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ASLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AutoscalersScopedListWarningCode

instance FromText AutoscalersScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just ASLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just ASLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just ASLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just ASLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just ASLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just ASLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just ASLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just ASLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just ASLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just ASLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just ASLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just ASLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just ASLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just ASLWCUnreachable
        _ -> Nothing

instance ToText AutoscalersScopedListWarningCode where
    toText = \case
        ASLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ASLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ASLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ASLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ASLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ASLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ASLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ASLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ASLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ASLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ASLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ASLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ASLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ASLWCUnreachable -> "UNREACHABLE"

instance FromJSON AutoscalersScopedListWarningCode where
    parseJSON = parseJSONText "AutoscalersScopedListWarningCode"

instance ToJSON AutoscalersScopedListWarningCode where
    toJSON = toJSONText

-- | The status of the instance (empty when instance does not exist).
data InstanceStatus
    = Provisioning
      -- ^ @PROVISIONING@
    | Running
      -- ^ @RUNNING@
    | Staging
      -- ^ @STAGING@
    | Stopped
      -- ^ @STOPPED@
    | Stopping
      -- ^ @STOPPING@
    | Suspended
      -- ^ @SUSPENDED@
    | Suspending
      -- ^ @SUSPENDING@
    | Terminated
      -- ^ @TERMINATED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceStatus

instance FromText InstanceStatus where
    fromText = \case
        "PROVISIONING" -> Just Provisioning
        "RUNNING" -> Just Running
        "STAGING" -> Just Staging
        "STOPPED" -> Just Stopped
        "STOPPING" -> Just Stopping
        "SUSPENDED" -> Just Suspended
        "SUSPENDING" -> Just Suspending
        "TERMINATED" -> Just Terminated
        _ -> Nothing

instance ToText InstanceStatus where
    toText = \case
        Provisioning -> "PROVISIONING"
        Running -> "RUNNING"
        Staging -> "STAGING"
        Stopped -> "STOPPED"
        Stopping -> "STOPPING"
        Suspended -> "SUSPENDED"
        Suspending -> "SUSPENDING"
        Terminated -> "TERMINATED"

instance FromJSON InstanceStatus where
    parseJSON = parseJSONText "InstanceStatus"

instance ToJSON InstanceStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data DiskTypesScopedListWarningCode
    = DTSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DTSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DTSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DTSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DTSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DTSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DTSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DTSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DTSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DTSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DTSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DTSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DTSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DTSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DiskTypesScopedListWarningCode

instance FromText DiskTypesScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just DTSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just DTSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just DTSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just DTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just DTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just DTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just DTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just DTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just DTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just DTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just DTSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just DTSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just DTSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just DTSLWCUnreachable
        _ -> Nothing

instance ToText DiskTypesScopedListWarningCode where
    toText = \case
        DTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DTSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DTSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DTSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DTSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DTSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DTSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DTSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        DTSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DTSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DTSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DTSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DTSLWCUnreachable -> "UNREACHABLE"

instance FromJSON DiskTypesScopedListWarningCode where
    parseJSON = parseJSONText "DiskTypesScopedListWarningCode"

instance ToJSON DiskTypesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of the instance. One of the following values:
-- PROVISIONING, STAGING, RUNNING, STOPPING, and TERMINATED.
data InstanceStatus
    = ISProvisioning
      -- ^ @PROVISIONING@
    | ISRunning
      -- ^ @RUNNING@
    | ISStaging
      -- ^ @STAGING@
    | ISStopped
      -- ^ @STOPPED@
    | ISStopping
      -- ^ @STOPPING@
    | ISSuspended
      -- ^ @SUSPENDED@
    | ISSuspending
      -- ^ @SUSPENDING@
    | ISTerminated
      -- ^ @TERMINATED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceStatus

instance FromText InstanceStatus where
    fromText = \case
        "PROVISIONING" -> Just ISProvisioning
        "RUNNING" -> Just ISRunning
        "STAGING" -> Just ISStaging
        "STOPPED" -> Just ISStopped
        "STOPPING" -> Just ISStopping
        "SUSPENDED" -> Just ISSuspended
        "SUSPENDING" -> Just ISSuspending
        "TERMINATED" -> Just ISTerminated
        _ -> Nothing

instance ToText InstanceStatus where
    toText = \case
        ISProvisioning -> "PROVISIONING"
        ISRunning -> "RUNNING"
        ISStaging -> "STAGING"
        ISStopped -> "STOPPED"
        ISStopping -> "STOPPING"
        ISSuspended -> "SUSPENDED"
        ISSuspending -> "SUSPENDING"
        ISTerminated -> "TERMINATED"

instance FromJSON InstanceStatus where
    parseJSON = parseJSONText "InstanceStatus"

instance ToJSON InstanceStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data VPNTunnelsScopedListWarningCode
    = VTSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | VTSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | VTSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | VTSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | VTSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | VTSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | VTSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | VTSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | VTSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | VTSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | VTSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | VTSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | VTSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | VTSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VPNTunnelsScopedListWarningCode

instance FromText VPNTunnelsScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just VTSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just VTSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just VTSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just VTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just VTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just VTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just VTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just VTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just VTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just VTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just VTSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just VTSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just VTSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just VTSLWCUnreachable
        _ -> Nothing

instance ToText VPNTunnelsScopedListWarningCode where
    toText = \case
        VTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        VTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        VTSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        VTSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        VTSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        VTSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        VTSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        VTSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        VTSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        VTSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        VTSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        VTSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        VTSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        VTSLWCUnreachable -> "UNREACHABLE"

instance FromJSON VPNTunnelsScopedListWarningCode where
    parseJSON = parseJSONText "VPNTunnelsScopedListWarningCode"

instance ToJSON VPNTunnelsScopedListWarningCode where
    toJSON = toJSONText

-- | Health state of the instance.
data HealthState
    = Healthy
      -- ^ @HEALTHY@
    | Unhealthy
      -- ^ @UNHEALTHY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable HealthState

instance FromText HealthState where
    fromText = \case
        "HEALTHY" -> Just Healthy
        "UNHEALTHY" -> Just Unhealthy
        _ -> Nothing

instance ToText HealthState where
    toText = \case
        Healthy -> "HEALTHY"
        Unhealthy -> "UNHEALTHY"

instance FromJSON HealthState where
    parseJSON = parseJSONText "HealthState"

instance ToJSON HealthState where
    toJSON = toJSONText

-- | Defines type in which utilization_target is expressed.
data UtilizationTargetType
    = DeltaPerMinute
      -- ^ @DELTA_PER_MINUTE@
    | DeltaPerSecond
      -- ^ @DELTA_PER_SECOND@
    | Gauge
      -- ^ @GAUGE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UtilizationTargetType

instance FromText UtilizationTargetType where
    fromText = \case
        "DELTA_PER_MINUTE" -> Just DeltaPerMinute
        "DELTA_PER_SECOND" -> Just DeltaPerSecond
        "GAUGE" -> Just Gauge
        _ -> Nothing

instance ToText UtilizationTargetType where
    toText = \case
        DeltaPerMinute -> "DELTA_PER_MINUTE"
        DeltaPerSecond -> "DELTA_PER_SECOND"
        Gauge -> "GAUGE"

instance FromJSON UtilizationTargetType where
    parseJSON = parseJSONText "UtilizationTargetType"

instance ToJSON UtilizationTargetType where
    toJSON = toJSONText

-- | The status of the instance.
data InstanceWithNamedPortsStatus
    = IWNPSProvisioning
      -- ^ @PROVISIONING@
    | IWNPSRunning
      -- ^ @RUNNING@
    | IWNPSStaging
      -- ^ @STAGING@
    | IWNPSStopped
      -- ^ @STOPPED@
    | IWNPSStopping
      -- ^ @STOPPING@
    | IWNPSSuspended
      -- ^ @SUSPENDED@
    | IWNPSSuspending
      -- ^ @SUSPENDING@
    | IWNPSTerminated
      -- ^ @TERMINATED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceWithNamedPortsStatus

instance FromText InstanceWithNamedPortsStatus where
    fromText = \case
        "PROVISIONING" -> Just IWNPSProvisioning
        "RUNNING" -> Just IWNPSRunning
        "STAGING" -> Just IWNPSStaging
        "STOPPED" -> Just IWNPSStopped
        "STOPPING" -> Just IWNPSStopping
        "SUSPENDED" -> Just IWNPSSuspended
        "SUSPENDING" -> Just IWNPSSuspending
        "TERMINATED" -> Just IWNPSTerminated
        _ -> Nothing

instance ToText InstanceWithNamedPortsStatus where
    toText = \case
        IWNPSProvisioning -> "PROVISIONING"
        IWNPSRunning -> "RUNNING"
        IWNPSStaging -> "STAGING"
        IWNPSStopped -> "STOPPED"
        IWNPSStopping -> "STOPPING"
        IWNPSSuspended -> "SUSPENDED"
        IWNPSSuspending -> "SUSPENDING"
        IWNPSTerminated -> "TERMINATED"

instance FromJSON InstanceWithNamedPortsStatus where
    parseJSON = parseJSONText "InstanceWithNamedPortsStatus"

instance ToJSON InstanceWithNamedPortsStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data InstanceGroupsScopedListWarningCode
    = IGSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceGroupsScopedListWarningCode

instance FromText InstanceGroupsScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just IGSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just IGSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just IGSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just IGSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just IGSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just IGSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just IGSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just IGSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just IGSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just IGSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just IGSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just IGSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just IGSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just IGSLWCUnreachable
        _ -> Nothing

instance ToText InstanceGroupsScopedListWarningCode where
    toText = \case
        IGSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGSLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupsScopedListWarningCode where
    parseJSON = parseJSONText "InstanceGroupsScopedListWarningCode"

instance ToJSON InstanceGroupsScopedListWarningCode where
    toJSON = toJSONText

-- | A filter for the state of the instances in the instance group. Valid
-- options are ALL or RUNNING. If you do not specify this parameter the
-- list includes all instances regardless of their state.
data InstanceState
    = IAll
      -- ^ @ALL@
    | IRunning
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceState

instance FromText InstanceState where
    fromText = \case
        "ALL" -> Just IAll
        "RUNNING" -> Just IRunning
        _ -> Nothing

instance ToText InstanceState where
    toText = \case
        IAll -> "ALL"
        IRunning -> "RUNNING"

instance FromJSON InstanceState where
    parseJSON = parseJSONText "InstanceState"

instance ToJSON InstanceState where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data InstancesScopedListWarningCode
    = ISLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ISLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ISLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ISLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ISLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ISLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ISLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ISLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ISLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ISLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ISLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ISLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ISLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ISLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstancesScopedListWarningCode

instance FromText InstancesScopedListWarningCode where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just ISLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just ISLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just ISLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just ISLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just ISLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just ISLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just ISLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just ISLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just ISLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just ISLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just ISLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just ISLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just ISLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just ISLWCUnreachable
        _ -> Nothing

instance ToText InstancesScopedListWarningCode where
    toText = \case
        ISLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ISLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ISLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ISLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ISLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ISLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ISLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ISLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ISLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ISLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ISLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ISLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ISLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ISLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstancesScopedListWarningCode where
    parseJSON = parseJSONText "InstancesScopedListWarningCode"

instance ToJSON InstancesScopedListWarningCode where
    toJSON = toJSONText
