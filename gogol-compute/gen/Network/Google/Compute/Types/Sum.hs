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

-- | The type of configuration. The default and only option is
-- ONE_TO_ONE_NAT.
data AccessConfigType
    = ACTOneToOneNAT
      -- ^ @ONE_TO_ONE_NAT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AccessConfigType

instance FromText AccessConfigType where
    fromText = \case
        "ONE_TO_ONE_NAT" -> Just ACTOneToOneNAT
        _ -> Nothing

instance ToText AccessConfigType where
    toText = \case
        ACTOneToOneNAT -> "ONE_TO_ONE_NAT"

instance FromJSON AccessConfigType where
    parseJSON = parseJSONText "AccessConfigType"

instance ToJSON AccessConfigType where
    toJSON = toJSONText

-- | [Output Only] The status of the address, which can be either IN_USE or
-- RESERVED. An address that is RESERVED is currently reserved and
-- available to use. An IN_USE address is currently being used by another
-- resource and is not available.
data AddressStatus
    = ASInUse
      -- ^ @IN_USE@
    | ASReserved
      -- ^ @RESERVED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AddressStatus

instance FromText AddressStatus where
    fromText = \case
        "IN_USE" -> Just ASInUse
        "RESERVED" -> Just ASReserved
        _ -> Nothing

instance ToText AddressStatus where
    toText = \case
        ASInUse -> "IN_USE"
        ASReserved -> "RESERVED"

instance FromJSON AddressStatus where
    parseJSON = parseJSONText "AddressStatus"

instance ToJSON AddressStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data AddressesScopedListCodeWarning
    = ASLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ASLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ASLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ASLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ASLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ASLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ASLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ASLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ASLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ASLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ASLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ASLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ASLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ASLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AddressesScopedListCodeWarning

instance FromText AddressesScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just ASLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just ASLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just ASLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just ASLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just ASLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just ASLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just ASLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just ASLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just ASLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just ASLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just ASLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just ASLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just ASLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just ASLCWUnreachable
        _ -> Nothing

instance ToText AddressesScopedListCodeWarning where
    toText = \case
        ASLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ASLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ASLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ASLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ASLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ASLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ASLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ASLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ASLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        ASLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ASLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ASLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ASLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ASLCWUnreachable -> "UNREACHABLE"

instance FromJSON AddressesScopedListCodeWarning where
    parseJSON = parseJSONText "AddressesScopedListCodeWarning"

instance ToJSON AddressesScopedListCodeWarning where
    toJSON = toJSONText

data AttachedDiskInterface
    = ADINvme
      -- ^ @NVME@
    | ADIScsi
      -- ^ @SCSI@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskInterface

instance FromText AttachedDiskInterface where
    fromText = \case
        "NVME" -> Just ADINvme
        "SCSI" -> Just ADIScsi
        _ -> Nothing

instance ToText AttachedDiskInterface where
    toText = \case
        ADINvme -> "NVME"
        ADIScsi -> "SCSI"

instance FromJSON AttachedDiskInterface where
    parseJSON = parseJSONText "AttachedDiskInterface"

instance ToJSON AttachedDiskInterface where
    toJSON = toJSONText

-- | The mode in which to attach this disk, either READ_WRITE or READ_ONLY.
-- If not specified, the default is to attach the disk in READ_WRITE mode.
data AttachedDiskMode
    = ADMReadOnly
      -- ^ @READ_ONLY@
    | ADMReadWrite
      -- ^ @READ_WRITE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskMode

instance FromText AttachedDiskMode where
    fromText = \case
        "READ_ONLY" -> Just ADMReadOnly
        "READ_WRITE" -> Just ADMReadWrite
        _ -> Nothing

instance ToText AttachedDiskMode where
    toText = \case
        ADMReadOnly -> "READ_ONLY"
        ADMReadWrite -> "READ_WRITE"

instance FromJSON AttachedDiskMode where
    parseJSON = parseJSONText "AttachedDiskMode"

instance ToJSON AttachedDiskMode where
    toJSON = toJSONText

-- | Specifies the type of the disk, either SCRATCH or PERSISTENT. If not
-- specified, the default is PERSISTENT.
data AttachedDiskType
    = ADTPersistent
      -- ^ @PERSISTENT@
    | ADTScratch
      -- ^ @SCRATCH@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskType

instance FromText AttachedDiskType where
    fromText = \case
        "PERSISTENT" -> Just ADTPersistent
        "SCRATCH" -> Just ADTScratch
        _ -> Nothing

instance ToText AttachedDiskType where
    toText = \case
        ADTPersistent -> "PERSISTENT"
        ADTScratch -> "SCRATCH"

instance FromJSON AttachedDiskType where
    parseJSON = parseJSONText "AttachedDiskType"

instance ToJSON AttachedDiskType where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data AutoscalersScopedListCodeWarning
    = ADeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ADiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | AInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ANextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ANextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ANextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ANextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ANextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ANotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ANoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ARequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | AResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ASingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | AUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AutoscalersScopedListCodeWarning

instance FromText AutoscalersScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just ADeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just ADiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just AInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just ANextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just ANextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just ANextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just ANextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just ANextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just ANotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just ANoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just ARequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just AResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just ASingleInstancePropertyTemplate
        "UNREACHABLE" -> Just AUnreachable
        _ -> Nothing

instance ToText AutoscalersScopedListCodeWarning where
    toText = \case
        ADeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ADiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        AInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ANextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ANextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ANextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ANextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ANextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ANotCriticalError -> "NOT_CRITICAL_ERROR"
        ANoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ARequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        AResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ASingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        AUnreachable -> "UNREACHABLE"

instance FromJSON AutoscalersScopedListCodeWarning where
    parseJSON = parseJSONText "AutoscalersScopedListCodeWarning"

instance ToJSON AutoscalersScopedListCodeWarning where
    toJSON = toJSONText

-- | Defines type in which utilization_target is expressed.
data AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    = APCMUUTTDeltaPerMinute
      -- ^ @DELTA_PER_MINUTE@
    | APCMUUTTDeltaPerSecond
      -- ^ @DELTA_PER_SECOND@
    | APCMUUTTGauge
      -- ^ @GAUGE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType

instance FromText AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    fromText = \case
        "DELTA_PER_MINUTE" -> Just APCMUUTTDeltaPerMinute
        "DELTA_PER_SECOND" -> Just APCMUUTTDeltaPerSecond
        "GAUGE" -> Just APCMUUTTGauge
        _ -> Nothing

instance ToText AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    toText = \case
        APCMUUTTDeltaPerMinute -> "DELTA_PER_MINUTE"
        APCMUUTTDeltaPerSecond -> "DELTA_PER_SECOND"
        APCMUUTTGauge -> "GAUGE"

instance FromJSON AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    parseJSON = parseJSONText "AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType"

instance ToJSON AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    toJSON = toJSONText

-- | Specifies the balancing mode for this backend. The default is
-- UTILIZATION but available values are UTILIZATION and RATE.
data BackendBalancingMode
    = BBMRate
      -- ^ @RATE@
    | BBMUtilization
      -- ^ @UTILIZATION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BackendBalancingMode

instance FromText BackendBalancingMode where
    fromText = \case
        "RATE" -> Just BBMRate
        "UTILIZATION" -> Just BBMUtilization
        _ -> Nothing

instance ToText BackendBalancingMode where
    toText = \case
        BBMRate -> "RATE"
        BBMUtilization -> "UTILIZATION"

instance FromJSON BackendBalancingMode where
    parseJSON = parseJSONText "BackendBalancingMode"

instance ToJSON BackendBalancingMode where
    toJSON = toJSONText

data BackendServiceProtocol
    = BSPHTTP
      -- ^ @HTTP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BackendServiceProtocol

instance FromText BackendServiceProtocol where
    fromText = \case
        "HTTP" -> Just BSPHTTP
        _ -> Nothing

instance ToText BackendServiceProtocol where
    toText = \case
        BSPHTTP -> "HTTP"

instance FromJSON BackendServiceProtocol where
    parseJSON = parseJSONText "BackendServiceProtocol"

instance ToJSON BackendServiceProtocol where
    toJSON = toJSONText

-- | The deprecation state of this resource. This can be DEPRECATED,
-- OBSOLETE, or DELETED. Operations which create a new resource using a
-- DEPRECATED resource will return successfully, but with a warning
-- indicating the deprecated resource and recommending its replacement.
-- Operations which use OBSOLETE or DELETED resources will be rejected and
-- result in an error.
data DeprecationStatusState
    = DSSDeleted
      -- ^ @DELETED@
    | DSSDeprecated
      -- ^ @DEPRECATED@
    | DSSObsolete
      -- ^ @OBSOLETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeprecationStatusState

instance FromText DeprecationStatusState where
    fromText = \case
        "DELETED" -> Just DSSDeleted
        "DEPRECATED" -> Just DSSDeprecated
        "OBSOLETE" -> Just DSSObsolete
        _ -> Nothing

instance ToText DeprecationStatusState where
    toText = \case
        DSSDeleted -> "DELETED"
        DSSDeprecated -> "DEPRECATED"
        DSSObsolete -> "OBSOLETE"

instance FromJSON DeprecationStatusState where
    parseJSON = parseJSONText "DeprecationStatusState"

instance ToJSON DeprecationStatusState where
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

-- | [Output Only] The warning type identifier for this warning.
data DiskTypesScopedListCodeWarning
    = DTSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DTSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DTSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DTSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DTSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DTSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DTSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DTSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DTSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DTSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DTSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DTSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DTSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DTSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DiskTypesScopedListCodeWarning

instance FromText DiskTypesScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just DTSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just DTSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just DTSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just DTSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just DTSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just DTSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just DTSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just DTSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just DTSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just DTSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just DTSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just DTSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just DTSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just DTSLCWUnreachable
        _ -> Nothing

instance ToText DiskTypesScopedListCodeWarning where
    toText = \case
        DTSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DTSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DTSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DTSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DTSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DTSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DTSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DTSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DTSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        DTSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DTSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DTSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DTSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DTSLCWUnreachable -> "UNREACHABLE"

instance FromJSON DiskTypesScopedListCodeWarning where
    parseJSON = parseJSONText "DiskTypesScopedListCodeWarning"

instance ToJSON DiskTypesScopedListCodeWarning where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data DisksScopedListCodeWarning
    = DSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DisksScopedListCodeWarning

instance FromText DisksScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just DSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just DSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just DSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just DSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just DSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just DSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just DSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just DSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just DSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just DSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just DSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just DSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just DSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just DSLCWUnreachable
        _ -> Nothing

instance ToText DisksScopedListCodeWarning where
    toText = \case
        DSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        DSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DSLCWUnreachable -> "UNREACHABLE"

instance FromJSON DisksScopedListCodeWarning where
    parseJSON = parseJSONText "DisksScopedListCodeWarning"

instance ToJSON DisksScopedListCodeWarning where
    toJSON = toJSONText

-- | The IP protocol to which this rule applies. Valid options are TCP, UDP,
-- ESP, AH or SCTP.
data ForwardingRuleIPProtocol
    = FRIPAH
      -- ^ @AH@
    | FRIPEsp
      -- ^ @ESP@
    | FRIPSctp
      -- ^ @SCTP@
    | FRIPTCP
      -- ^ @TCP@
    | FRIPUdp
      -- ^ @UDP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ForwardingRuleIPProtocol

instance FromText ForwardingRuleIPProtocol where
    fromText = \case
        "AH" -> Just FRIPAH
        "ESP" -> Just FRIPEsp
        "SCTP" -> Just FRIPSctp
        "TCP" -> Just FRIPTCP
        "UDP" -> Just FRIPUdp
        _ -> Nothing

instance ToText ForwardingRuleIPProtocol where
    toText = \case
        FRIPAH -> "AH"
        FRIPEsp -> "ESP"
        FRIPSctp -> "SCTP"
        FRIPTCP -> "TCP"
        FRIPUdp -> "UDP"

instance FromJSON ForwardingRuleIPProtocol where
    parseJSON = parseJSONText "ForwardingRuleIPProtocol"

instance ToJSON ForwardingRuleIPProtocol where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data ForwardingRulesScopedListCodeWarning
    = FRSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | FRSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | FRSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | FRSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | FRSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | FRSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | FRSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | FRSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | FRSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | FRSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | FRSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | FRSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | FRSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | FRSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ForwardingRulesScopedListCodeWarning

instance FromText ForwardingRulesScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just FRSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just FRSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just FRSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just FRSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just FRSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just FRSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just FRSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just FRSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just FRSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just FRSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just FRSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just FRSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just FRSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just FRSLCWUnreachable
        _ -> Nothing

instance ToText ForwardingRulesScopedListCodeWarning where
    toText = \case
        FRSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        FRSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        FRSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        FRSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        FRSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        FRSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        FRSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        FRSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        FRSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        FRSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        FRSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        FRSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        FRSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        FRSLCWUnreachable -> "UNREACHABLE"

instance FromJSON ForwardingRulesScopedListCodeWarning where
    parseJSON = parseJSONText "ForwardingRulesScopedListCodeWarning"

instance ToJSON ForwardingRulesScopedListCodeWarning where
    toJSON = toJSONText

-- | Health state of the instance.
data HealthStatusHealthState
    = HSHSHealthy
      -- ^ @HEALTHY@
    | HSHSUnhealthy
      -- ^ @UNHEALTHY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable HealthStatusHealthState

instance FromText HealthStatusHealthState where
    fromText = \case
        "HEALTHY" -> Just HSHSHealthy
        "UNHEALTHY" -> Just HSHSUnhealthy
        _ -> Nothing

instance ToText HealthStatusHealthState where
    toText = \case
        HSHSHealthy -> "HEALTHY"
        HSHSUnhealthy -> "UNHEALTHY"

instance FromJSON HealthStatusHealthState where
    parseJSON = parseJSONText "HealthStatusHealthState"

instance ToJSON HealthStatusHealthState where
    toJSON = toJSONText

-- | The format used to encode and transmit the block device, which should be
-- TAR. This is just a container and transmission format and not a runtime
-- format. Provided by the client when the disk image is created.
data ImageContainerTypeRawDisk
    = ICTRDTAR
      -- ^ @TAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageContainerTypeRawDisk

instance FromText ImageContainerTypeRawDisk where
    fromText = \case
        "TAR" -> Just ICTRDTAR
        _ -> Nothing

instance ToText ImageContainerTypeRawDisk where
    toText = \case
        ICTRDTAR -> "TAR"

instance FromJSON ImageContainerTypeRawDisk where
    parseJSON = parseJSONText "ImageContainerTypeRawDisk"

instance ToJSON ImageContainerTypeRawDisk where
    toJSON = toJSONText

-- | The type of the image used to create this disk. The default and only
-- value is RAW
data ImageSourceType
    = ISTRaw
      -- ^ @RAW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageSourceType

instance FromText ImageSourceType where
    fromText = \case
        "RAW" -> Just ISTRaw
        _ -> Nothing

instance ToText ImageSourceType where
    toText = \case
        ISTRaw -> "RAW"

instance FromJSON ImageSourceType where
    parseJSON = parseJSONText "ImageSourceType"

instance ToJSON ImageSourceType where
    toJSON = toJSONText

-- | [Output Only] The status of the image. An image can be used to create
-- other resources, such as instances, only after the image has been
-- successfully created and the status is set to READY. Possible values are
-- FAILED, PENDING, or READY.
data ImageStatus
    = ISFailed
      -- ^ @FAILED@
    | ISPending
      -- ^ @PENDING@
    | ISReady
      -- ^ @READY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageStatus

instance FromText ImageStatus where
    fromText = \case
        "FAILED" -> Just ISFailed
        "PENDING" -> Just ISPending
        "READY" -> Just ISReady
        _ -> Nothing

instance ToText ImageStatus where
    toText = \case
        ISFailed -> "FAILED"
        ISPending -> "PENDING"
        ISReady -> "READY"

instance FromJSON ImageStatus where
    parseJSON = parseJSONText "ImageStatus"

instance ToJSON ImageStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data InstanceGroupManagersScopedListCodeWarning
    = IGMSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGMSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGMSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGMSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGMSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGMSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGMSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGMSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGMSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGMSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGMSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGMSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGMSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGMSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceGroupManagersScopedListCodeWarning

instance FromText InstanceGroupManagersScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just IGMSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just IGMSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just IGMSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just IGMSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just IGMSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just IGMSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just IGMSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just IGMSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just IGMSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just IGMSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just IGMSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just IGMSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just IGMSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just IGMSLCWUnreachable
        _ -> Nothing

instance ToText InstanceGroupManagersScopedListCodeWarning where
    toText = \case
        IGMSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGMSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGMSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGMSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGMSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGMSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGMSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGMSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGMSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGMSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGMSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGMSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGMSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGMSLCWUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupManagersScopedListCodeWarning where
    parseJSON = parseJSONText "InstanceGroupManagersScopedListCodeWarning"

instance ToJSON InstanceGroupManagersScopedListCodeWarning where
    toJSON = toJSONText

-- | A filter for the state of the instances in the instance group. Valid
-- options are ALL or RUNNING. If you do not specify this parameter the
-- list includes all instances regardless of their state.
data InstanceGroupsListInstancesRequestInstanceState
    = IGLIRISAll
      -- ^ @ALL@
    | IGLIRISRunning
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceGroupsListInstancesRequestInstanceState

instance FromText InstanceGroupsListInstancesRequestInstanceState where
    fromText = \case
        "ALL" -> Just IGLIRISAll
        "RUNNING" -> Just IGLIRISRunning
        _ -> Nothing

instance ToText InstanceGroupsListInstancesRequestInstanceState where
    toText = \case
        IGLIRISAll -> "ALL"
        IGLIRISRunning -> "RUNNING"

instance FromJSON InstanceGroupsListInstancesRequestInstanceState where
    parseJSON = parseJSONText "InstanceGroupsListInstancesRequestInstanceState"

instance ToJSON InstanceGroupsListInstancesRequestInstanceState where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data InstanceGroupsScopedListCodeWarning
    = IGSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstanceGroupsScopedListCodeWarning

instance FromText InstanceGroupsScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just IGSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just IGSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just IGSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just IGSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just IGSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just IGSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just IGSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just IGSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just IGSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just IGSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just IGSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just IGSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just IGSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just IGSLCWUnreachable
        _ -> Nothing

instance ToText InstanceGroupsScopedListCodeWarning where
    toText = \case
        IGSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGSLCWUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupsScopedListCodeWarning where
    parseJSON = parseJSONText "InstanceGroupsScopedListCodeWarning"

instance ToJSON InstanceGroupsScopedListCodeWarning where
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
data InstancesScopedListCodeWarning
    = ISLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ISLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ISLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ISLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ISLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ISLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ISLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ISLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ISLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ISLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ISLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ISLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ISLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ISLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InstancesScopedListCodeWarning

instance FromText InstancesScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just ISLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just ISLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just ISLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just ISLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just ISLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just ISLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just ISLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just ISLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just ISLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just ISLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just ISLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just ISLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just ISLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just ISLCWUnreachable
        _ -> Nothing

instance ToText InstancesScopedListCodeWarning where
    toText = \case
        ISLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ISLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ISLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ISLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ISLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ISLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ISLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ISLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ISLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        ISLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ISLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ISLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ISLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ISLCWUnreachable -> "UNREACHABLE"

instance FromJSON InstancesScopedListCodeWarning where
    parseJSON = parseJSONText "InstancesScopedListCodeWarning"

instance ToJSON InstancesScopedListCodeWarning where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data MachineTypesScopedListCodeWarning
    = MTSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | MTSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | MTSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | MTSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | MTSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | MTSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | MTSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | MTSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | MTSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | MTSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | MTSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | MTSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | MTSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | MTSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MachineTypesScopedListCodeWarning

instance FromText MachineTypesScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just MTSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just MTSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just MTSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just MTSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just MTSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just MTSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just MTSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just MTSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just MTSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just MTSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just MTSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just MTSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just MTSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just MTSLCWUnreachable
        _ -> Nothing

instance ToText MachineTypesScopedListCodeWarning where
    toText = \case
        MTSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        MTSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        MTSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        MTSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        MTSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        MTSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        MTSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        MTSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        MTSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        MTSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        MTSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        MTSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        MTSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        MTSLCWUnreachable -> "UNREACHABLE"

instance FromJSON MachineTypesScopedListCodeWarning where
    parseJSON = parseJSONText "MachineTypesScopedListCodeWarning"

instance ToJSON MachineTypesScopedListCodeWarning where
    toJSON = toJSONText

-- | The current action that the managed instance group has scheduled for the
-- instance.
data ManagedInstanceCurrentAction
    = MICAAbandoning
      -- ^ @ABANDONING@
    | MICACreating
      -- ^ @CREATING@
    | MICADeleting
      -- ^ @DELETING@
    | MICANone
      -- ^ @NONE@
    | MICARecreating
      -- ^ @RECREATING@
    | MICARefreshing
      -- ^ @REFRESHING@
    | MICARestarting
      -- ^ @RESTARTING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ManagedInstanceCurrentAction

instance FromText ManagedInstanceCurrentAction where
    fromText = \case
        "ABANDONING" -> Just MICAAbandoning
        "CREATING" -> Just MICACreating
        "DELETING" -> Just MICADeleting
        "NONE" -> Just MICANone
        "RECREATING" -> Just MICARecreating
        "REFRESHING" -> Just MICARefreshing
        "RESTARTING" -> Just MICARestarting
        _ -> Nothing

instance ToText ManagedInstanceCurrentAction where
    toText = \case
        MICAAbandoning -> "ABANDONING"
        MICACreating -> "CREATING"
        MICADeleting -> "DELETING"
        MICANone -> "NONE"
        MICARecreating -> "RECREATING"
        MICARefreshing -> "REFRESHING"
        MICARestarting -> "RESTARTING"

instance FromJSON ManagedInstanceCurrentAction where
    parseJSON = parseJSONText "ManagedInstanceCurrentAction"

instance ToJSON ManagedInstanceCurrentAction where
    toJSON = toJSONText

-- | The status of the instance (empty when instance does not exist).
data ManagedInstanceInstanceStatus
    = MIISProvisioning
      -- ^ @PROVISIONING@
    | MIISRunning
      -- ^ @RUNNING@
    | MIISStaging
      -- ^ @STAGING@
    | MIISStopped
      -- ^ @STOPPED@
    | MIISStopping
      -- ^ @STOPPING@
    | MIISSuspended
      -- ^ @SUSPENDED@
    | MIISSuspending
      -- ^ @SUSPENDING@
    | MIISTerminated
      -- ^ @TERMINATED@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ManagedInstanceInstanceStatus

instance FromText ManagedInstanceInstanceStatus where
    fromText = \case
        "PROVISIONING" -> Just MIISProvisioning
        "RUNNING" -> Just MIISRunning
        "STAGING" -> Just MIISStaging
        "STOPPED" -> Just MIISStopped
        "STOPPING" -> Just MIISStopping
        "SUSPENDED" -> Just MIISSuspended
        "SUSPENDING" -> Just MIISSuspending
        "TERMINATED" -> Just MIISTerminated
        _ -> Nothing

instance ToText ManagedInstanceInstanceStatus where
    toText = \case
        MIISProvisioning -> "PROVISIONING"
        MIISRunning -> "RUNNING"
        MIISStaging -> "STAGING"
        MIISStopped -> "STOPPED"
        MIISStopping -> "STOPPING"
        MIISSuspended -> "SUSPENDED"
        MIISSuspending -> "SUSPENDING"
        MIISTerminated -> "TERMINATED"

instance FromJSON ManagedInstanceInstanceStatus where
    parseJSON = parseJSONText "ManagedInstanceInstanceStatus"

instance ToJSON ManagedInstanceInstanceStatus where
    toJSON = toJSONText

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

-- | [Output Only] The warning type identifier for this warning.
data OperationsScopedListCodeWarning
    = OSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OperationsScopedListCodeWarning

instance FromText OperationsScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just OSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just OSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just OSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just OSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just OSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just OSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just OSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just OSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just OSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just OSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just OSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just OSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just OSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just OSLCWUnreachable
        _ -> Nothing

instance ToText OperationsScopedListCodeWarning where
    toText = \case
        OSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        OSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        OSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        OSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        OSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        OSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        OSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        OSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        OSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        OSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        OSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        OSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        OSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        OSLCWUnreachable -> "UNREACHABLE"

instance FromJSON OperationsScopedListCodeWarning where
    parseJSON = parseJSONText "OperationsScopedListCodeWarning"

instance ToJSON OperationsScopedListCodeWarning where
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

-- | [Output Only] Status of the region, either UP or DOWN.
data RegionStatus
    = RSDown
      -- ^ @DOWN@
    | RSUP
      -- ^ @UP@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RegionStatus

instance FromText RegionStatus where
    fromText = \case
        "DOWN" -> Just RSDown
        "UP" -> Just RSUP
        _ -> Nothing

instance ToText RegionStatus where
    toText = \case
        RSDown -> "DOWN"
        RSUP -> "UP"

instance FromJSON RegionStatus where
    parseJSON = parseJSONText "RegionStatus"

instance ToJSON RegionStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data RouteCodeItemWarnings
    = RCIWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RCIWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RCIWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RCIWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RCIWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RCIWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RCIWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RCIWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RCIWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RCIWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RCIWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RCIWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RCIWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RCIWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable RouteCodeItemWarnings

instance FromText RouteCodeItemWarnings where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just RCIWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just RCIWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just RCIWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just RCIWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just RCIWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just RCIWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just RCIWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just RCIWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just RCIWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just RCIWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just RCIWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just RCIWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just RCIWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just RCIWUnreachable
        _ -> Nothing

instance ToText RouteCodeItemWarnings where
    toText = \case
        RCIWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RCIWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RCIWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RCIWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RCIWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RCIWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RCIWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RCIWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RCIWNotCriticalError -> "NOT_CRITICAL_ERROR"
        RCIWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RCIWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RCIWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RCIWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RCIWUnreachable -> "UNREACHABLE"

instance FromJSON RouteCodeItemWarnings where
    parseJSON = parseJSONText "RouteCodeItemWarnings"

instance ToJSON RouteCodeItemWarnings where
    toJSON = toJSONText

-- | Defines the maintenance behavior for this instance. For standard
-- instances, the default behavior is MIGRATE. For preemptible instances,
-- the default and only possible behavior is TERMINATE. For more
-- information, see Setting maintenance behavior.
data SchedulingOnHostMaintenance
    = SOHMMigrate
      -- ^ @MIGRATE@
    | SOHMTerminate
      -- ^ @TERMINATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SchedulingOnHostMaintenance

instance FromText SchedulingOnHostMaintenance where
    fromText = \case
        "MIGRATE" -> Just SOHMMigrate
        "TERMINATE" -> Just SOHMTerminate
        _ -> Nothing

instance ToText SchedulingOnHostMaintenance where
    toText = \case
        SOHMMigrate -> "MIGRATE"
        SOHMTerminate -> "TERMINATE"

instance FromJSON SchedulingOnHostMaintenance where
    parseJSON = parseJSONText "SchedulingOnHostMaintenance"

instance ToJSON SchedulingOnHostMaintenance where
    toJSON = toJSONText

-- | [Output Only] The status of the snapshot.
data SnapshotStatus
    = SSCreating
      -- ^ @CREATING@
    | SSDeleting
      -- ^ @DELETING@
    | SSFailed
      -- ^ @FAILED@
    | SSReady
      -- ^ @READY@
    | SSUploading
      -- ^ @UPLOADING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SnapshotStatus

instance FromText SnapshotStatus where
    fromText = \case
        "CREATING" -> Just SSCreating
        "DELETING" -> Just SSDeleting
        "FAILED" -> Just SSFailed
        "READY" -> Just SSReady
        "UPLOADING" -> Just SSUploading
        _ -> Nothing

instance ToText SnapshotStatus where
    toText = \case
        SSCreating -> "CREATING"
        SSDeleting -> "DELETING"
        SSFailed -> "FAILED"
        SSReady -> "READY"
        SSUploading -> "UPLOADING"

instance FromJSON SnapshotStatus where
    parseJSON = parseJSONText "SnapshotStatus"

instance ToJSON SnapshotStatus where
    toJSON = toJSONText

-- | [Output Only] An indicator whether storageBytes is in a stable state or
-- it is being adjusted as a result of shared storage reallocation.
data SnapshotStorageBytesStatus
    = SSBSUpdating
      -- ^ @UPDATING@
    | SSBSUpToDate
      -- ^ @UP_TO_DATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SnapshotStorageBytesStatus

instance FromText SnapshotStorageBytesStatus where
    fromText = \case
        "UPDATING" -> Just SSBSUpdating
        "UP_TO_DATE" -> Just SSBSUpToDate
        _ -> Nothing

instance ToText SnapshotStorageBytesStatus where
    toText = \case
        SSBSUpdating -> "UPDATING"
        SSBSUpToDate -> "UP_TO_DATE"

instance FromJSON SnapshotStorageBytesStatus where
    parseJSON = parseJSONText "SnapshotStorageBytesStatus"

instance ToJSON SnapshotStorageBytesStatus where
    toJSON = toJSONText

-- | NAT option controlling how IPs are NAT\'ed to the instance. Currently
-- only NO_NAT (default value) is supported.
data TargetInstanceNatPolicy
    = TINPNoNAT
      -- ^ @NO_NAT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetInstanceNatPolicy

instance FromText TargetInstanceNatPolicy where
    fromText = \case
        "NO_NAT" -> Just TINPNoNAT
        _ -> Nothing

instance ToText TargetInstanceNatPolicy where
    toText = \case
        TINPNoNAT -> "NO_NAT"

instance FromJSON TargetInstanceNatPolicy where
    parseJSON = parseJSONText "TargetInstanceNatPolicy"

instance ToJSON TargetInstanceNatPolicy where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data TargetInstancesScopedListCodeWarning
    = TISLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TISLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TISLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TISLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TISLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TISLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TISLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TISLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TISLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TISLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TISLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TISLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TISLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TISLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetInstancesScopedListCodeWarning

instance FromText TargetInstancesScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just TISLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just TISLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just TISLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just TISLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just TISLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just TISLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just TISLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just TISLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just TISLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just TISLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just TISLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just TISLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just TISLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just TISLCWUnreachable
        _ -> Nothing

instance ToText TargetInstancesScopedListCodeWarning where
    toText = \case
        TISLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TISLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TISLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TISLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TISLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TISLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TISLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TISLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TISLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        TISLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TISLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TISLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TISLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TISLCWUnreachable -> "UNREACHABLE"

instance FromJSON TargetInstancesScopedListCodeWarning where
    parseJSON = parseJSONText "TargetInstancesScopedListCodeWarning"

instance ToJSON TargetInstancesScopedListCodeWarning where
    toJSON = toJSONText

-- | Sesssion affinity option, must be one of the following values: NONE:
-- Connections from the same client IP may go to any instance in the pool;
-- CLIENT_IP: Connections from the same client IP will go to the same
-- instance in the pool while that instance remains healthy.
-- CLIENT_IP_PROTO: Connections from the same client IP with the same IP
-- protocol will go to the same instance in the pool while that instance
-- remains healthy.
data TargetPoolSessionAffinity
    = TPSAClientIP
      -- ^ @CLIENT_IP@
    | TPSAClientIPProto
      -- ^ @CLIENT_IP_PROTO@
    | TPSANone
      -- ^ @NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetPoolSessionAffinity

instance FromText TargetPoolSessionAffinity where
    fromText = \case
        "CLIENT_IP" -> Just TPSAClientIP
        "CLIENT_IP_PROTO" -> Just TPSAClientIPProto
        "NONE" -> Just TPSANone
        _ -> Nothing

instance ToText TargetPoolSessionAffinity where
    toText = \case
        TPSAClientIP -> "CLIENT_IP"
        TPSAClientIPProto -> "CLIENT_IP_PROTO"
        TPSANone -> "NONE"

instance FromJSON TargetPoolSessionAffinity where
    parseJSON = parseJSONText "TargetPoolSessionAffinity"

instance ToJSON TargetPoolSessionAffinity where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data TargetPoolsScopedListCodeWarning
    = TPSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TPSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TPSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TPSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TPSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TPSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TPSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TPSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TPSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TPSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TPSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TPSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TPSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TPSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetPoolsScopedListCodeWarning

instance FromText TargetPoolsScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just TPSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just TPSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just TPSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just TPSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just TPSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just TPSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just TPSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just TPSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just TPSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just TPSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just TPSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just TPSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just TPSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just TPSLCWUnreachable
        _ -> Nothing

instance ToText TargetPoolsScopedListCodeWarning where
    toText = \case
        TPSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TPSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TPSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TPSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TPSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TPSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TPSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TPSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TPSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        TPSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TPSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TPSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TPSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TPSLCWUnreachable -> "UNREACHABLE"

instance FromJSON TargetPoolsScopedListCodeWarning where
    parseJSON = parseJSONText "TargetPoolsScopedListCodeWarning"

instance ToJSON TargetPoolsScopedListCodeWarning where
    toJSON = toJSONText

-- | [Output Only] The status of the VPN gateway.
data TargetVpnGatewayStatus
    = TVGSCreating
      -- ^ @CREATING@
    | TVGSDeleting
      -- ^ @DELETING@
    | TVGSFailed
      -- ^ @FAILED@
    | TVGSReady
      -- ^ @READY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetVpnGatewayStatus

instance FromText TargetVpnGatewayStatus where
    fromText = \case
        "CREATING" -> Just TVGSCreating
        "DELETING" -> Just TVGSDeleting
        "FAILED" -> Just TVGSFailed
        "READY" -> Just TVGSReady
        _ -> Nothing

instance ToText TargetVpnGatewayStatus where
    toText = \case
        TVGSCreating -> "CREATING"
        TVGSDeleting -> "DELETING"
        TVGSFailed -> "FAILED"
        TVGSReady -> "READY"

instance FromJSON TargetVpnGatewayStatus where
    parseJSON = parseJSONText "TargetVpnGatewayStatus"

instance ToJSON TargetVpnGatewayStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data TargetVpnGatewaysScopedListCodeWarning
    = TVGSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TVGSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TVGSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TVGSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TVGSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TVGSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TVGSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TVGSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TVGSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TVGSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TVGSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TVGSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TVGSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TVGSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetVpnGatewaysScopedListCodeWarning

instance FromText TargetVpnGatewaysScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just TVGSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just TVGSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just TVGSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just TVGSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just TVGSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just TVGSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just TVGSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just TVGSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just TVGSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just TVGSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just TVGSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just TVGSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just TVGSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just TVGSLCWUnreachable
        _ -> Nothing

instance ToText TargetVpnGatewaysScopedListCodeWarning where
    toText = \case
        TVGSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TVGSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TVGSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TVGSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TVGSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TVGSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TVGSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TVGSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TVGSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        TVGSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TVGSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TVGSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TVGSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TVGSLCWUnreachable -> "UNREACHABLE"

instance FromJSON TargetVpnGatewaysScopedListCodeWarning where
    parseJSON = parseJSONText "TargetVpnGatewaysScopedListCodeWarning"

instance ToJSON TargetVpnGatewaysScopedListCodeWarning where
    toJSON = toJSONText

-- | [Output Only] The status of the VPN tunnel.
data VpnTunnelStatus
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

instance Hashable VpnTunnelStatus

instance FromText VpnTunnelStatus where
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

instance ToText VpnTunnelStatus where
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

instance FromJSON VpnTunnelStatus where
    parseJSON = parseJSONText "VpnTunnelStatus"

instance ToJSON VpnTunnelStatus where
    toJSON = toJSONText

-- | [Output Only] The warning type identifier for this warning.
data VpnTunnelsScopedListCodeWarning
    = VTSLCWDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | VTSLCWDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | VTSLCWInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | VTSLCWNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | VTSLCWNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | VTSLCWNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | VTSLCWNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | VTSLCWNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | VTSLCWNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | VTSLCWNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | VTSLCWRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | VTSLCWResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | VTSLCWSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | VTSLCWUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable VpnTunnelsScopedListCodeWarning

instance FromText VpnTunnelsScopedListCodeWarning where
    fromText = \case
        "DEPRECATED_RESOURCE_USED" -> Just VTSLCWDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just VTSLCWDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just VTSLCWInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just VTSLCWNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just VTSLCWNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just VTSLCWNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just VTSLCWNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just VTSLCWNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just VTSLCWNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just VTSLCWNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just VTSLCWRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just VTSLCWResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just VTSLCWSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just VTSLCWUnreachable
        _ -> Nothing

instance ToText VpnTunnelsScopedListCodeWarning where
    toText = \case
        VTSLCWDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        VTSLCWDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        VTSLCWInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        VTSLCWNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        VTSLCWNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        VTSLCWNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        VTSLCWNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        VTSLCWNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        VTSLCWNotCriticalError -> "NOT_CRITICAL_ERROR"
        VTSLCWNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        VTSLCWRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        VTSLCWResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        VTSLCWSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        VTSLCWUnreachable -> "UNREACHABLE"

instance FromJSON VpnTunnelsScopedListCodeWarning where
    parseJSON = parseJSONText "VpnTunnelsScopedListCodeWarning"

instance ToJSON VpnTunnelsScopedListCodeWarning where
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
