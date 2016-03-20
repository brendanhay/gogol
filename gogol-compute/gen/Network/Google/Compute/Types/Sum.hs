{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Compute.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Compute.Types.Sum where

import           Network.Google.Prelude

-- | Defines the maintenance behavior for this instance. For standard
-- instances, the default behavior is MIGRATE. For preemptible instances,
-- the default and only possible behavior is TERMINATE. For more
-- information, see Setting Instance Scheduling Options.
data SchedulingOnHostMaintenance
    = Migrate
      -- ^ @MIGRATE@
    | Terminate
      -- ^ @TERMINATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SchedulingOnHostMaintenance

instance FromText SchedulingOnHostMaintenance where
    fromText = \case
        "MIGRATE" -> Just Migrate
        "TERMINATE" -> Just Terminate
        _ -> Nothing

instance ToText SchedulingOnHostMaintenance where
    toText = \case
        Migrate -> "MIGRATE"
        Terminate -> "TERMINATE"

instance FromJSON SchedulingOnHostMaintenance where
    parseJSON = parseJSONText "SchedulingOnHostMaintenance"

instance ToJSON SchedulingOnHostMaintenance where
    toJSON = toJSONText

-- | Defines how target utilization value is expressed for a Cloud Monitoring
-- metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE. If not
-- specified, the default is GAUGE.
data AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    = DeltaPerMinute
      -- ^ @DELTA_PER_MINUTE@
    | DeltaPerSecond
      -- ^ @DELTA_PER_SECOND@
    | Gauge
      -- ^ @GAUGE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType

instance FromText AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    fromText = \case
        "DELTA_PER_MINUTE" -> Just DeltaPerMinute
        "DELTA_PER_SECOND" -> Just DeltaPerSecond
        "GAUGE" -> Just Gauge
        _ -> Nothing

instance ToText AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    toText = \case
        DeltaPerMinute -> "DELTA_PER_MINUTE"
        DeltaPerSecond -> "DELTA_PER_SECOND"
        Gauge -> "GAUGE"

instance FromJSON AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    parseJSON = parseJSONText "AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType"

instance ToJSON AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    toJSON = toJSONText

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

instance FromText OperationWarningsItemCode where
    fromText = \case
        "CLEANUP_FAILED" -> Just CleanupFailed
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

instance ToText OperationWarningsItemCode where
    toText = \case
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

-- | The protocol this BackendService uses to communicate with backends.
-- Possible values are HTTP, HTTPS, HTTP2, TCP and SSL.
data BackendServiceProtocol
    = HTTP
      -- ^ @HTTP@
    | HTTPS
      -- ^ @HTTPS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BackendServiceProtocol

instance FromText BackendServiceProtocol where
    fromText = \case
        "HTTP" -> Just HTTP
        "HTTPS" -> Just HTTPS
        _ -> Nothing

instance ToText BackendServiceProtocol where
    toText = \case
        HTTP -> "HTTP"
        HTTPS -> "HTTPS"

instance FromJSON BackendServiceProtocol where
    parseJSON = parseJSONText "BackendServiceProtocol"

instance ToJSON BackendServiceProtocol where
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

-- | The type of the image used to create this disk. The default and only
-- value is RAW
data ImageSourceType
    = Raw
      -- ^ @RAW@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageSourceType

instance FromText ImageSourceType where
    fromText = \case
        "RAW" -> Just Raw
        _ -> Nothing

instance ToText ImageSourceType where
    toText = \case
        Raw -> "RAW"

instance FromJSON ImageSourceType where
    parseJSON = parseJSONText "ImageSourceType"

instance ToJSON ImageSourceType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data ForwardingRulesScopedListWarningCode
    = FRSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | FRSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just FRSLWCCleanupFailed
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
        FRSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data OperationsScopedListWarningCode
    = OSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | OSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just OSLWCCleanupFailed
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
        OSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data DisksScopedListWarningCode
    = DSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DisksScopedListWarningCode

instance FromText DisksScopedListWarningCode where
    fromText = \case
        "CLEANUP_FAILED" -> Just DSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Just DSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just DSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just DSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just DSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just DSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just DSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just DSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just DSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just DSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just DSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just DSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just DSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just DSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just DSLWCUnreachable
        _ -> Nothing

instance ToText DisksScopedListWarningCode where
    toText = \case
        DSLWCCleanupFailed -> "CLEANUP_FAILED"
        DSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        DSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DSLWCUnreachable -> "UNREACHABLE"

instance FromJSON DisksScopedListWarningCode where
    parseJSON = parseJSONText "DisksScopedListWarningCode"

instance ToJSON DisksScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceGroupManagersScopedListWarningCode
    = IGMSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IGMSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just IGMSLWCCleanupFailed
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
        IGMSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetPoolsScopedListWarningCode
    = TPSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TPSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just TPSLWCCleanupFailed
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
        TPSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] The status of the VPN gateway.
data TargetVPNGatewayStatus
    = Creating
      -- ^ @CREATING@
    | Deleting
      -- ^ @DELETING@
    | Failed
      -- ^ @FAILED@
    | Ready
      -- ^ @READY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetVPNGatewayStatus

instance FromText TargetVPNGatewayStatus where
    fromText = \case
        "CREATING" -> Just Creating
        "DELETING" -> Just Deleting
        "FAILED" -> Just Failed
        "READY" -> Just Ready
        _ -> Nothing

instance ToText TargetVPNGatewayStatus where
    toText = \case
        Creating -> "CREATING"
        Deleting -> "DELETING"
        Failed -> "FAILED"
        Ready -> "READY"

instance FromJSON TargetVPNGatewayStatus where
    parseJSON = parseJSONText "TargetVPNGatewayStatus"

instance ToJSON TargetVPNGatewayStatus where
    toJSON = toJSONText

-- | [Output Only] The status of the snapshot. This can be CREATING,
-- DELETING, FAILED, READY, or UPLOADING.
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetInstancesScopedListWarningCode
    = TISLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TISLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just TISLWCCleanupFailed
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
        TISLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RouteWarningsItemCode
    = RWICCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RWICDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just RWICCleanupFailed
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
        RWICCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] An indicator whether storageBytes is in a stable state or
-- it is being adjusted as a result of shared storage reallocation. This
-- status can either be UPDATING, meaning the size of the snapshot is being
-- updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
data SnapshotStorageBytesStatus
    = Updating
      -- ^ @UPDATING@
    | UpToDate
      -- ^ @UP_TO_DATE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SnapshotStorageBytesStatus

instance FromText SnapshotStorageBytesStatus where
    fromText = \case
        "UPDATING" -> Just Updating
        "UP_TO_DATE" -> Just UpToDate
        _ -> Nothing

instance ToText SnapshotStorageBytesStatus where
    toText = \case
        Updating -> "UPDATING"
        UpToDate -> "UP_TO_DATE"

instance FromJSON SnapshotStorageBytesStatus where
    parseJSON = parseJSONText "SnapshotStorageBytesStatus"

instance ToJSON SnapshotStorageBytesStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AddressesScopedListWarningCode
    = ASLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ASLWCDeprecatedResourceUsed
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

instance Hashable AddressesScopedListWarningCode

instance FromText AddressesScopedListWarningCode where
    fromText = \case
        "CLEANUP_FAILED" -> Just ASLWCCleanupFailed
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

instance ToText AddressesScopedListWarningCode where
    toText = \case
        ASLWCCleanupFailed -> "CLEANUP_FAILED"
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

instance FromJSON AddressesScopedListWarningCode where
    parseJSON = parseJSONText "AddressesScopedListWarningCode"

instance ToJSON AddressesScopedListWarningCode where
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

-- | Health state of the instance.
data HealthStatusHealthState
    = Healthy
      -- ^ @HEALTHY@
    | Unhealthy
      -- ^ @UNHEALTHY@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable HealthStatusHealthState

instance FromText HealthStatusHealthState where
    fromText = \case
        "HEALTHY" -> Just Healthy
        "UNHEALTHY" -> Just Unhealthy
        _ -> Nothing

instance ToText HealthStatusHealthState where
    toText = \case
        Healthy -> "HEALTHY"
        Unhealthy -> "UNHEALTHY"

instance FromJSON HealthStatusHealthState where
    parseJSON = parseJSONText "HealthStatusHealthState"

instance ToJSON HealthStatusHealthState where
    toJSON = toJSONText

-- | The deprecation state of this resource. This can be DEPRECATED,
-- OBSOLETE, or DELETED. Operations which create a new resource using a
-- DEPRECATED resource will return successfully, but with a warning
-- indicating the deprecated resource and recommending its replacement.
-- Operations which use OBSOLETE or DELETED resources will be rejected and
-- result in an error.
data DeprecationStatusState
    = Deleted
      -- ^ @DELETED@
    | Deprecated
      -- ^ @DEPRECATED@
    | Obsolete
      -- ^ @OBSOLETE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable DeprecationStatusState

instance FromText DeprecationStatusState where
    fromText = \case
        "DELETED" -> Just Deleted
        "DEPRECATED" -> Just Deprecated
        "OBSOLETE" -> Just Obsolete
        _ -> Nothing

instance ToText DeprecationStatusState where
    toText = \case
        Deleted -> "DELETED"
        Deprecated -> "DEPRECATED"
        Obsolete -> "OBSOLETE"

instance FromJSON DeprecationStatusState where
    parseJSON = parseJSONText "DeprecationStatusState"

instance ToJSON DeprecationStatusState where
    toJSON = toJSONText

-- | [Output Only] The current action that the managed instance group has
-- scheduled for the instance. Possible values: - NONE The instance is
-- running, and the managed instance group does not have any scheduled
-- actions for this instance. - CREATING The managed instance group is
-- creating this instance. If the group fails to create this instance, it
-- will try again until it is successful. - CREATING_WITHOUT_RETRIES The
-- managed instance group is attempting to create this instance only once.
-- If the group fails to create this instance, it does not try again and
-- the group\'s target_size value is decreased. - RECREATING The managed
-- instance group is recreating this instance. - DELETING The managed
-- instance group is permanently deleting this instance. - ABANDONING The
-- managed instance group is abandoning this instance. The instance will be
-- removed from the instance group and from any target pools that are
-- associated with this group. - RESTARTING The managed instance group is
-- restarting the instance. - REFRESHING The managed instance group is
-- applying configuration changes to the instance without stopping it. For
-- example, the group can update the target pool list for an instance
-- without stopping that instance.
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

-- | NAT option controlling how IPs are NAT\'ed to the instance. Currently
-- only NO_NAT (default value) is supported.
data TargetInstanceNATPolicy
    = NoNAT
      -- ^ @NO_NAT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetInstanceNATPolicy

instance FromText TargetInstanceNATPolicy where
    fromText = \case
        "NO_NAT" -> Just NoNAT
        _ -> Nothing

instance ToText TargetInstanceNATPolicy where
    toText = \case
        NoNAT -> "NO_NAT"

instance FromJSON TargetInstanceNATPolicy where
    parseJSON = parseJSONText "TargetInstanceNATPolicy"

instance ToJSON TargetInstanceNATPolicy where
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

instance FromText OperationStatus where
    fromText = \case
        "DONE" -> Just Done
        "PENDING" -> Just Pending
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText OperationStatus where
    toText = \case
        Done -> "DONE"
        Pending -> "PENDING"
        Running -> "RUNNING"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetVPNGatewaysScopedListWarningCode
    = TVGSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TVGSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just TVGSLWCCleanupFailed
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
        TVGSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] The status of the instance. This field is empty when the
-- instance does not exist.
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

-- | The mode in which to attach this disk, either READ_WRITE or READ_ONLY.
-- If not specified, the default is to attach the disk in READ_WRITE mode.
data AttachedDiskMode
    = ReadOnly
      -- ^ @READ_ONLY@
    | ReadWrite
      -- ^ @READ_WRITE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskMode

instance FromText AttachedDiskMode where
    fromText = \case
        "READ_ONLY" -> Just ReadOnly
        "READ_WRITE" -> Just ReadWrite
        _ -> Nothing

instance ToText AttachedDiskMode where
    toText = \case
        ReadOnly -> "READ_ONLY"
        ReadWrite -> "READ_WRITE"

instance FromJSON AttachedDiskMode where
    parseJSON = parseJSONText "AttachedDiskMode"

instance ToJSON AttachedDiskMode where
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

-- | [Output Only] The status of the VPN tunnel.
data VPNTunnelStatus
    = VTSAllocatingResources
      -- ^ @ALLOCATING_RESOURCES@
    | VTSAuthorizationError
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
        "ALLOCATING_RESOURCES" -> Just VTSAllocatingResources
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
        VTSAllocatingResources -> "ALLOCATING_RESOURCES"
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

-- | Specifies the balancing mode for this backend. For global HTTP(S) load
-- balancing, the default is UTILIZATION. Valid values are UTILIZATION and
-- RATE.
data BackendBalancingMode
    = Rate
      -- ^ @RATE@
    | Utilization
      -- ^ @UTILIZATION@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BackendBalancingMode

instance FromText BackendBalancingMode where
    fromText = \case
        "RATE" -> Just Rate
        "UTILIZATION" -> Just Utilization
        _ -> Nothing

instance ToText BackendBalancingMode where
    toText = \case
        Rate -> "RATE"
        Utilization -> "UTILIZATION"

instance FromJSON BackendBalancingMode where
    parseJSON = parseJSONText "BackendBalancingMode"

instance ToJSON BackendBalancingMode where
    toJSON = toJSONText

-- | The IP protocol to which this rule applies. Valid options are TCP, UDP,
-- ESP, AH or SCTP.
data ForwardingRuleIPProtocol
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

instance Hashable ForwardingRuleIPProtocol

instance FromText ForwardingRuleIPProtocol where
    fromText = \case
        "AH" -> Just AH
        "ESP" -> Just Esp
        "SCTP" -> Just Sctp
        "TCP" -> Just TCP
        "UDP" -> Just Udp
        _ -> Nothing

instance ToText ForwardingRuleIPProtocol where
    toText = \case
        AH -> "AH"
        Esp -> "ESP"
        Sctp -> "SCTP"
        TCP -> "TCP"
        Udp -> "UDP"

instance FromJSON ForwardingRuleIPProtocol where
    parseJSON = parseJSONText "ForwardingRuleIPProtocol"

instance ToJSON ForwardingRuleIPProtocol where
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

-- | Specifies the disk interface to use for attaching this disk, which is
-- either SCSI or NVME. The default is SCSI. Persistent disks must always
-- use SCSI and the request will fail if you attempt to attach a persistent
-- disk in any other format than SCSI. Local SSDs can use either NVME or
-- SCSI. For performance characteristics of SCSI over NVMe, see Local SSD
-- performance.
data AttachedDiskInterface
    = Nvme
      -- ^ @NVME@
    | Scsi
      -- ^ @SCSI@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable AttachedDiskInterface

instance FromText AttachedDiskInterface where
    fromText = \case
        "NVME" -> Just Nvme
        "SCSI" -> Just Scsi
        _ -> Nothing

instance ToText AttachedDiskInterface where
    toText = \case
        Nvme -> "NVME"
        Scsi -> "SCSI"

instance FromJSON AttachedDiskInterface where
    parseJSON = parseJSONText "AttachedDiskInterface"

instance ToJSON AttachedDiskInterface where
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SubnetworksScopedListWarningCode
    = SSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | SSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | SSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | SSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | SSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | SSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | SSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | SSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | SSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SubnetworksScopedListWarningCode

instance FromText SubnetworksScopedListWarningCode where
    fromText = \case
        "CLEANUP_FAILED" -> Just SSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Just SSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Just SSLWCDiskSizeLargerThanImageSize
        "INJECTED_KERNELS_DEPRECATED" -> Just SSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Just SSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Just SSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Just SSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Just SSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Just SSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Just SSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Just SSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Just SSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Just SSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Just SSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Just SSLWCUnreachable
        _ -> Nothing

instance ToText SubnetworksScopedListWarningCode where
    toText = \case
        SSLWCCleanupFailed -> "CLEANUP_FAILED"
        SSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        SSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SSLWCUnreachable -> "UNREACHABLE"

instance FromJSON SubnetworksScopedListWarningCode where
    parseJSON = parseJSONText "SubnetworksScopedListWarningCode"

instance ToJSON SubnetworksScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] Name of the quota metric.
data QuotaMetric
    = Autoscalers
      -- ^ @AUTOSCALERS@
    | BackendServices
      -- ^ @BACKEND_SERVICES@
    | CPUs
      -- ^ @CPUS@
    | DisksTotalGb
      -- ^ @DISKS_TOTAL_GB@
    | Firewalls
      -- ^ @FIREWALLS@
    | ForwardingRules
      -- ^ @FORWARDING_RULES@
    | HealthChecks
      -- ^ @HEALTH_CHECKS@
    | Images
      -- ^ @IMAGES@
    | Instances
      -- ^ @INSTANCES@
    | InstanceGroups
      -- ^ @INSTANCE_GROUPS@
    | InstanceGroupManagers
      -- ^ @INSTANCE_GROUP_MANAGERS@
    | InstanceTemplates
      -- ^ @INSTANCE_TEMPLATES@
    | InUseAddresses
      -- ^ @IN_USE_ADDRESSES@
    | LocalSsdTotalGb
      -- ^ @LOCAL_SSD_TOTAL_GB@
    | Networks
      -- ^ @NETWORKS@
    | Routes
      -- ^ @ROUTES@
    | Snapshots
      -- ^ @SNAPSHOTS@
    | SsdTotalGb
      -- ^ @SSD_TOTAL_GB@
    | SSLCertificates
      -- ^ @SSL_CERTIFICATES@
    | StaticAddresses
      -- ^ @STATIC_ADDRESSES@
    | Subnetworks
      -- ^ @SUBNETWORKS@
    | TargetHTTPSProxies
      -- ^ @TARGET_HTTPS_PROXIES@
    | TargetHTTPProxies
      -- ^ @TARGET_HTTP_PROXIES@
    | TargetInstances
      -- ^ @TARGET_INSTANCES@
    | TargetPools
      -- ^ @TARGET_POOLS@
    | TargetVPNGateways
      -- ^ @TARGET_VPN_GATEWAYS@
    | URLMaps
      -- ^ @URL_MAPS@
    | VPNTunnels
      -- ^ @VPN_TUNNELS@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable QuotaMetric

instance FromText QuotaMetric where
    fromText = \case
        "AUTOSCALERS" -> Just Autoscalers
        "BACKEND_SERVICES" -> Just BackendServices
        "CPUS" -> Just CPUs
        "DISKS_TOTAL_GB" -> Just DisksTotalGb
        "FIREWALLS" -> Just Firewalls
        "FORWARDING_RULES" -> Just ForwardingRules
        "HEALTH_CHECKS" -> Just HealthChecks
        "IMAGES" -> Just Images
        "INSTANCES" -> Just Instances
        "INSTANCE_GROUPS" -> Just InstanceGroups
        "INSTANCE_GROUP_MANAGERS" -> Just InstanceGroupManagers
        "INSTANCE_TEMPLATES" -> Just InstanceTemplates
        "IN_USE_ADDRESSES" -> Just InUseAddresses
        "LOCAL_SSD_TOTAL_GB" -> Just LocalSsdTotalGb
        "NETWORKS" -> Just Networks
        "ROUTES" -> Just Routes
        "SNAPSHOTS" -> Just Snapshots
        "SSD_TOTAL_GB" -> Just SsdTotalGb
        "SSL_CERTIFICATES" -> Just SSLCertificates
        "STATIC_ADDRESSES" -> Just StaticAddresses
        "SUBNETWORKS" -> Just Subnetworks
        "TARGET_HTTPS_PROXIES" -> Just TargetHTTPSProxies
        "TARGET_HTTP_PROXIES" -> Just TargetHTTPProxies
        "TARGET_INSTANCES" -> Just TargetInstances
        "TARGET_POOLS" -> Just TargetPools
        "TARGET_VPN_GATEWAYS" -> Just TargetVPNGateways
        "URL_MAPS" -> Just URLMaps
        "VPN_TUNNELS" -> Just VPNTunnels
        _ -> Nothing

instance ToText QuotaMetric where
    toText = \case
        Autoscalers -> "AUTOSCALERS"
        BackendServices -> "BACKEND_SERVICES"
        CPUs -> "CPUS"
        DisksTotalGb -> "DISKS_TOTAL_GB"
        Firewalls -> "FIREWALLS"
        ForwardingRules -> "FORWARDING_RULES"
        HealthChecks -> "HEALTH_CHECKS"
        Images -> "IMAGES"
        Instances -> "INSTANCES"
        InstanceGroups -> "INSTANCE_GROUPS"
        InstanceGroupManagers -> "INSTANCE_GROUP_MANAGERS"
        InstanceTemplates -> "INSTANCE_TEMPLATES"
        InUseAddresses -> "IN_USE_ADDRESSES"
        LocalSsdTotalGb -> "LOCAL_SSD_TOTAL_GB"
        Networks -> "NETWORKS"
        Routes -> "ROUTES"
        Snapshots -> "SNAPSHOTS"
        SsdTotalGb -> "SSD_TOTAL_GB"
        SSLCertificates -> "SSL_CERTIFICATES"
        StaticAddresses -> "STATIC_ADDRESSES"
        Subnetworks -> "SUBNETWORKS"
        TargetHTTPSProxies -> "TARGET_HTTPS_PROXIES"
        TargetHTTPProxies -> "TARGET_HTTP_PROXIES"
        TargetInstances -> "TARGET_INSTANCES"
        TargetPools -> "TARGET_POOLS"
        TargetVPNGateways -> "TARGET_VPN_GATEWAYS"
        URLMaps -> "URL_MAPS"
        VPNTunnels -> "VPN_TUNNELS"

instance FromJSON QuotaMetric where
    parseJSON = parseJSONText "QuotaMetric"

instance ToJSON QuotaMetric where
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data MachineTypesScopedListWarningCode
    = MTSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | MTSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just MTSLWCCleanupFailed
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
        MTSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data DiskTypesScopedListWarningCode
    = DTSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DTSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just DTSLWCCleanupFailed
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
        DTSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AutoscalersScopedListWarningCode
    = ACleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ADeprecatedResourceUsed
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

instance Hashable AutoscalersScopedListWarningCode

instance FromText AutoscalersScopedListWarningCode where
    fromText = \case
        "CLEANUP_FAILED" -> Just ACleanupFailed
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

instance ToText AutoscalersScopedListWarningCode where
    toText = \case
        ACleanupFailed -> "CLEANUP_FAILED"
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

instance FromJSON AutoscalersScopedListWarningCode where
    parseJSON = parseJSONText "AutoscalersScopedListWarningCode"

instance ToJSON AutoscalersScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data VPNTunnelsScopedListWarningCode
    = VTSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | VTSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just VTSLWCCleanupFailed
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
        VTSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceGroupsScopedListWarningCode
    = IGSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IGSLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just IGSLWCCleanupFailed
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
        IGSLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | [Output Only] The status of the instance.
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstancesScopedListWarningCode
    = ISLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ISLWCDeprecatedResourceUsed
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
        "CLEANUP_FAILED" -> Just ISLWCCleanupFailed
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
        ISLWCCleanupFailed -> "CLEANUP_FAILED"
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

-- | Sesssion affinity option, must be one of the following values: NONE:
-- Connections from the same client IP may go to any instance in the pool.
-- CLIENT_IP: Connections from the same client IP will go to the same
-- instance in the pool while that instance remains healthy.
-- CLIENT_IP_PROTO: Connections from the same client IP with the same IP
-- protocol will go to the same instance in the pool while that instance
-- remains healthy.
data TargetPoolSessionAffinity
    = ClientIP
      -- ^ @CLIENT_IP@
    | ClientIPProto
      -- ^ @CLIENT_IP_PROTO@
    | None
      -- ^ @NONE@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TargetPoolSessionAffinity

instance FromText TargetPoolSessionAffinity where
    fromText = \case
        "CLIENT_IP" -> Just ClientIP
        "CLIENT_IP_PROTO" -> Just ClientIPProto
        "NONE" -> Just None
        _ -> Nothing

instance ToText TargetPoolSessionAffinity where
    toText = \case
        ClientIP -> "CLIENT_IP"
        ClientIPProto -> "CLIENT_IP_PROTO"
        None -> "NONE"

instance FromJSON TargetPoolSessionAffinity where
    parseJSON = parseJSONText "TargetPoolSessionAffinity"

instance ToJSON TargetPoolSessionAffinity where
    toJSON = toJSONText

-- | The format used to encode and transmit the block device, which should be
-- TAR. This is just a container and transmission format and not a runtime
-- format. Provided by the client when the disk image is created.
data ImageRawDiskContainerType
    = TAR
      -- ^ @TAR@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageRawDiskContainerType

instance FromText ImageRawDiskContainerType where
    fromText = \case
        "TAR" -> Just TAR
        _ -> Nothing

instance ToText ImageRawDiskContainerType where
    toText = \case
        TAR -> "TAR"

instance FromJSON ImageRawDiskContainerType where
    parseJSON = parseJSONText "ImageRawDiskContainerType"

instance ToJSON ImageRawDiskContainerType where
    toJSON = toJSONText
