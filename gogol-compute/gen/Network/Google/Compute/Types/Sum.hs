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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SchedulingOnHostMaintenance

instance FromHttpApiData SchedulingOnHostMaintenance where
    parseQueryParam = \case
        "MIGRATE" -> Right Migrate
        "TERMINATE" -> Right Terminate
        x -> Left ("Unable to parse SchedulingOnHostMaintenance from: " <> x)

instance ToHttpApiData SchedulingOnHostMaintenance where
    toQueryParam = \case
        Migrate -> "MIGRATE"
        Terminate -> "TERMINATE"

instance FromJSON SchedulingOnHostMaintenance where
    parseJSON = parseJSONText "SchedulingOnHostMaintenance"

instance ToJSON SchedulingOnHostMaintenance where
    toJSON = toJSONText

-- | Defines how target utilization value is expressed for a Stackdriver
-- Monitoring metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE.
-- If not specified, the default is GAUGE.
data AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
    = DeltaPerMinute
      -- ^ @DELTA_PER_MINUTE@
    | DeltaPerSecond
      -- ^ @DELTA_PER_SECOND@
    | Gauge
      -- ^ @GAUGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType

instance FromHttpApiData AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    parseQueryParam = \case
        "DELTA_PER_MINUTE" -> Right DeltaPerMinute
        "DELTA_PER_SECOND" -> Right DeltaPerSecond
        "GAUGE" -> Right Gauge
        x -> Left ("Unable to parse AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType from: " <> x)

instance ToHttpApiData AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType where
    toQueryParam = \case
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
    | FieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationWarningsItemCode

instance FromHttpApiData OperationWarningsItemCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right CleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right FieldValueOverriden
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
        FieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
-- Possible values are HTTP, HTTPS, HTTP2, TCP and SSL. The default is
-- HTTP. For internal load balancing, the possible values are TCP and UDP,
-- and the default is TCP.
data BackendServiceProtocol
    = HTTP
      -- ^ @HTTP@
    | HTTPS
      -- ^ @HTTPS@
    | SSL
      -- ^ @SSL@
    | TCP
      -- ^ @TCP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendServiceProtocol

instance FromHttpApiData BackendServiceProtocol where
    parseQueryParam = \case
        "HTTP" -> Right HTTP
        "HTTPS" -> Right HTTPS
        "SSL" -> Right SSL
        "TCP" -> Right TCP
        x -> Left ("Unable to parse BackendServiceProtocol from: " <> x)

instance ToHttpApiData BackendServiceProtocol where
    toQueryParam = \case
        HTTP -> "HTTP"
        HTTPS -> "HTTPS"
        SSL -> "SSL"
        TCP -> "TCP"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AttachedDiskType

instance FromHttpApiData AttachedDiskType where
    parseQueryParam = \case
        "PERSISTENT" -> Right Persistent
        "SCRATCH" -> Right Scratch
        x -> Left ("Unable to parse AttachedDiskType from: " <> x)

instance ToHttpApiData AttachedDiskType where
    toQueryParam = \case
        Persistent -> "PERSISTENT"
        Scratch -> "SCRATCH"

instance FromJSON AttachedDiskType where
    parseJSON = parseJSONText "AttachedDiskType"

instance ToJSON AttachedDiskType where
    toJSON = toJSONText

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data TargetSSLProxyProxyHeader
    = None
      -- ^ @NONE@
    | ProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetSSLProxyProxyHeader

instance FromHttpApiData TargetSSLProxyProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right None
        "PROXY_V1" -> Right ProxyV1
        x -> Left ("Unable to parse TargetSSLProxyProxyHeader from: " <> x)

instance ToHttpApiData TargetSSLProxyProxyHeader where
    toQueryParam = \case
        None -> "NONE"
        ProxyV1 -> "PROXY_V1"

instance FromJSON TargetSSLProxyProxyHeader where
    parseJSON = parseJSONText "TargetSSLProxyProxyHeader"

instance ToJSON TargetSSLProxyProxyHeader where
    toJSON = toJSONText

-- | The type of the image used to create this disk. The default and only
-- value is RAW
data ImageSourceType
    = Raw
      -- ^ @RAW@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageSourceType

instance FromHttpApiData ImageSourceType where
    parseQueryParam = \case
        "RAW" -> Right Raw
        x -> Left ("Unable to parse ImageSourceType from: " <> x)

instance ToHttpApiData ImageSourceType where
    toQueryParam = \case
        Raw -> "RAW"

instance FromJSON ImageSourceType where
    parseJSON = parseJSONText "ImageSourceType"

instance ToJSON ImageSourceType where
    toJSON = toJSONText

-- | Type of session affinity to use. The default is NONE. When the load
-- balancing scheme is EXTERNAL, can be NONE, CLIENT_IP, or
-- GENERATED_COOKIE. When the load balancing scheme is INTERNAL, can be
-- NONE, CLIENT_IP, CLIENT_IP_PROTO, or CLIENT_IP_PORT_PROTO. When the
-- protocol is UDP, this field is not used.
data BackendServiceSessionAffinity
    = BSSAClientIP
      -- ^ @CLIENT_IP@
    | BSSAClientIPProto
      -- ^ @CLIENT_IP_PROTO@
    | BSSAGeneratedCookie
      -- ^ @GENERATED_COOKIE@
    | BSSANone
      -- ^ @NONE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendServiceSessionAffinity

instance FromHttpApiData BackendServiceSessionAffinity where
    parseQueryParam = \case
        "CLIENT_IP" -> Right BSSAClientIP
        "CLIENT_IP_PROTO" -> Right BSSAClientIPProto
        "GENERATED_COOKIE" -> Right BSSAGeneratedCookie
        "NONE" -> Right BSSANone
        x -> Left ("Unable to parse BackendServiceSessionAffinity from: " <> x)

instance ToHttpApiData BackendServiceSessionAffinity where
    toQueryParam = \case
        BSSAClientIP -> "CLIENT_IP"
        BSSAClientIPProto -> "CLIENT_IP_PROTO"
        BSSAGeneratedCookie -> "GENERATED_COOKIE"
        BSSANone -> "NONE"

instance FromJSON BackendServiceSessionAffinity where
    parseJSON = parseJSONText "BackendServiceSessionAffinity"

instance ToJSON BackendServiceSessionAffinity where
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
    | FRSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingRulesScopedListWarningCode

instance FromHttpApiData ForwardingRulesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right FRSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right FRSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right FRSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right FRSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right FRSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right FRSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right FRSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right FRSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right FRSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right FRSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right FRSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right FRSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right FRSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right FRSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right FRSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right FRSLWCUnreachable
        x -> Left ("Unable to parse ForwardingRulesScopedListWarningCode from: " <> x)

instance ToHttpApiData ForwardingRulesScopedListWarningCode where
    toQueryParam = \case
        FRSLWCCleanupFailed -> "CLEANUP_FAILED"
        FRSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        FRSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        FRSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    | OSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationsScopedListWarningCode

instance FromHttpApiData OperationsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right OSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right OSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right OSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right OSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right OSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right OSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right OSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right OSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right OSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right OSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right OSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right OSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right OSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right OSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right OSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right OSLWCUnreachable
        x -> Left ("Unable to parse OperationsScopedListWarningCode from: " <> x)

instance ToHttpApiData OperationsScopedListWarningCode where
    toQueryParam = \case
        OSLWCCleanupFailed -> "CLEANUP_FAILED"
        OSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        OSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        OSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    | DSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DisksScopedListWarningCode

instance FromHttpApiData DisksScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right DSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right DSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right DSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right DSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right DSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right DSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right DSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right DSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right DSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right DSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right DSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right DSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right DSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right DSLWCUnreachable
        x -> Left ("Unable to parse DisksScopedListWarningCode from: " <> x)

instance ToHttpApiData DisksScopedListWarningCode where
    toQueryParam = \case
        DSLWCCleanupFailed -> "CLEANUP_FAILED"
        DSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    | IGMSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupManagersScopedListWarningCode

instance FromHttpApiData InstanceGroupManagersScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGMSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGMSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGMSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right IGMSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGMSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGMSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGMSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGMSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGMSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGMSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGMSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGMSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGMSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right IGMSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGMSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right IGMSLWCUnreachable
        x -> Left ("Unable to parse InstanceGroupManagersScopedListWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupManagersScopedListWarningCode where
    toQueryParam = \case
        IGMSLWCCleanupFailed -> "CLEANUP_FAILED"
        IGMSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGMSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGMSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    | TPSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetPoolsScopedListWarningCode

instance FromHttpApiData TargetPoolsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TPSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TPSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TPSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right TPSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TPSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TPSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TPSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TPSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TPSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TPSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TPSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TPSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TPSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right TPSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TPSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right TPSLWCUnreachable
        x -> Left ("Unable to parse TargetPoolsScopedListWarningCode from: " <> x)

instance ToHttpApiData TargetPoolsScopedListWarningCode where
    toQueryParam = \case
        TPSLWCCleanupFailed -> "CLEANUP_FAILED"
        TPSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TPSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TPSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data SSLHealthCheckProxyHeader
    = SHCPHNone
      -- ^ @NONE@
    | SHCPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SSLHealthCheckProxyHeader

instance FromHttpApiData SSLHealthCheckProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right SHCPHNone
        "PROXY_V1" -> Right SHCPHProxyV1
        x -> Left ("Unable to parse SSLHealthCheckProxyHeader from: " <> x)

instance ToHttpApiData SSLHealthCheckProxyHeader where
    toQueryParam = \case
        SHCPHNone -> "NONE"
        SHCPHProxyV1 -> "PROXY_V1"

instance FromJSON SSLHealthCheckProxyHeader where
    parseJSON = parseJSONText "SSLHealthCheckProxyHeader"

instance ToJSON SSLHealthCheckProxyHeader where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetVPNGatewayStatus

instance FromHttpApiData TargetVPNGatewayStatus where
    parseQueryParam = \case
        "CREATING" -> Right Creating
        "DELETING" -> Right Deleting
        "FAILED" -> Right Failed
        "READY" -> Right Ready
        x -> Left ("Unable to parse TargetVPNGatewayStatus from: " <> x)

instance ToHttpApiData TargetVPNGatewayStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SnapshotStatus

instance FromHttpApiData SnapshotStatus where
    parseQueryParam = \case
        "CREATING" -> Right SSCreating
        "DELETING" -> Right SSDeleting
        "FAILED" -> Right SSFailed
        "READY" -> Right SSReady
        "UPLOADING" -> Right SSUploading
        x -> Left ("Unable to parse SnapshotStatus from: " <> x)

instance ToHttpApiData SnapshotStatus where
    toQueryParam = \case
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
    | TISLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetInstancesScopedListWarningCode

instance FromHttpApiData TargetInstancesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TISLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TISLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TISLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right TISLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TISLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TISLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TISLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TISLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TISLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TISLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TISLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TISLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TISLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right TISLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TISLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right TISLWCUnreachable
        x -> Left ("Unable to parse TargetInstancesScopedListWarningCode from: " <> x)

instance ToHttpApiData TargetInstancesScopedListWarningCode where
    toQueryParam = \case
        TISLWCCleanupFailed -> "CLEANUP_FAILED"
        TISLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TISLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TISLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    | RWICFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouteWarningsItemCode

instance FromHttpApiData RouteWarningsItemCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RWICCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RWICDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RWICDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right RWICFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RWICInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RWICNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RWICNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RWICNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RWICNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RWICNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RWICNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RWICNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RWICRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right RWICResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RWICSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right RWICUnreachable
        x -> Left ("Unable to parse RouteWarningsItemCode from: " <> x)

instance ToHttpApiData RouteWarningsItemCode where
    toQueryParam = \case
        RWICCleanupFailed -> "CLEANUP_FAILED"
        RWICDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RWICDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RWICFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SnapshotStorageBytesStatus

instance FromHttpApiData SnapshotStorageBytesStatus where
    parseQueryParam = \case
        "UPDATING" -> Right Updating
        "UP_TO_DATE" -> Right UpToDate
        x -> Left ("Unable to parse SnapshotStorageBytesStatus from: " <> x)

instance ToHttpApiData SnapshotStorageBytesStatus where
    toQueryParam = \case
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
    | ASLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressesScopedListWarningCode

instance FromHttpApiData AddressesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ASLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ASLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ASLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right ASLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ASLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ASLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ASLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ASLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ASLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ASLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ASLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ASLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ASLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right ASLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ASLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right ASLWCUnreachable
        x -> Left ("Unable to parse AddressesScopedListWarningCode from: " <> x)

instance ToHttpApiData AddressesScopedListWarningCode where
    toQueryParam = \case
        ASLWCCleanupFailed -> "CLEANUP_FAILED"
        ASLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ASLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ASLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageStatus

instance FromHttpApiData ImageStatus where
    parseQueryParam = \case
        "FAILED" -> Right ISFailed
        "PENDING" -> Right ISPending
        "READY" -> Right ISReady
        x -> Left ("Unable to parse ImageStatus from: " <> x)

instance ToHttpApiData ImageStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HealthStatusHealthState

instance FromHttpApiData HealthStatusHealthState where
    parseQueryParam = \case
        "HEALTHY" -> Right Healthy
        "UNHEALTHY" -> Right Unhealthy
        x -> Left ("Unable to parse HealthStatusHealthState from: " <> x)

instance ToHttpApiData HealthStatusHealthState where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeprecationStatusState

instance FromHttpApiData DeprecationStatusState where
    parseQueryParam = \case
        "DELETED" -> Right Deleted
        "DEPRECATED" -> Right Deprecated
        "OBSOLETE" -> Right Obsolete
        x -> Left ("Unable to parse DeprecationStatusState from: " <> x)

instance ToHttpApiData DeprecationStatusState where
    toQueryParam = \case
        Deleted -> "DELETED"
        Deprecated -> "DEPRECATED"
        Obsolete -> "OBSOLETE"

instance FromJSON DeprecationStatusState where
    parseJSON = parseJSONText "DeprecationStatusState"

instance ToJSON DeprecationStatusState where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RoutersScopedListWarningCode
    = RSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RoutersScopedListWarningCode

instance FromHttpApiData RoutersScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right RSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right RSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right RSLWCUnreachable
        x -> Left ("Unable to parse RoutersScopedListWarningCode from: " <> x)

instance ToHttpApiData RoutersScopedListWarningCode where
    toQueryParam = \case
        RSLWCCleanupFailed -> "CLEANUP_FAILED"
        RSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        RSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RSLWCUnreachable -> "UNREACHABLE"

instance FromJSON RoutersScopedListWarningCode where
    parseJSON = parseJSONText "RoutersScopedListWarningCode"

instance ToJSON RoutersScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The current action that the managed instance group has
-- scheduled for the instance. Possible values: - NONE The instance is
-- running, and the managed instance group does not have any scheduled
-- actions for this instance. - CREATING The managed instance group is
-- creating this instance. If the group fails to create this instance, it
-- will try again until it is successful. - CREATING_WITHOUT_RETRIES The
-- managed instance group is attempting to create this instance only once.
-- If the group fails to create this instance, it does not try again and
-- the group\'s targetSize value is decreased instead. - RECREATING The
-- managed instance group is recreating this instance. - DELETING The
-- managed instance group is permanently deleting this instance. -
-- ABANDONING The managed instance group is abandoning this instance. The
-- instance will be removed from the instance group and from any target
-- pools that are associated with this group. - RESTARTING The managed
-- instance group is restarting the instance. - REFRESHING The managed
-- instance group is applying configuration changes to the instance without
-- stopping it. For example, the group can update the target pool list for
-- an instance without stopping that instance.
data ManagedInstanceCurrentAction
    = MICAAbandoning
      -- ^ @ABANDONING@
    | MICACreating
      -- ^ @CREATING@
    | MICACreatingWithoutRetries
      -- ^ @CREATING_WITHOUT_RETRIES@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedInstanceCurrentAction

instance FromHttpApiData ManagedInstanceCurrentAction where
    parseQueryParam = \case
        "ABANDONING" -> Right MICAAbandoning
        "CREATING" -> Right MICACreating
        "CREATING_WITHOUT_RETRIES" -> Right MICACreatingWithoutRetries
        "DELETING" -> Right MICADeleting
        "NONE" -> Right MICANone
        "RECREATING" -> Right MICARecreating
        "REFRESHING" -> Right MICARefreshing
        "RESTARTING" -> Right MICARestarting
        x -> Left ("Unable to parse ManagedInstanceCurrentAction from: " <> x)

instance ToHttpApiData ManagedInstanceCurrentAction where
    toQueryParam = \case
        MICAAbandoning -> "ABANDONING"
        MICACreating -> "CREATING"
        MICACreatingWithoutRetries -> "CREATING_WITHOUT_RETRIES"
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetInstanceNATPolicy

instance FromHttpApiData TargetInstanceNATPolicy where
    parseQueryParam = \case
        "NO_NAT" -> Right NoNAT
        x -> Left ("Unable to parse TargetInstanceNATPolicy from: " <> x)

instance ToHttpApiData TargetInstanceNATPolicy where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccessConfigType

instance FromHttpApiData AccessConfigType where
    parseQueryParam = \case
        "ONE_TO_ONE_NAT" -> Right OneToOneNAT
        x -> Left ("Unable to parse AccessConfigType from: " <> x)

instance ToHttpApiData AccessConfigType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetVPNGatewaysScopedListWarningCode
    = TVGSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TVGSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TVGSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TVGSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetVPNGatewaysScopedListWarningCode

instance FromHttpApiData TargetVPNGatewaysScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TVGSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TVGSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TVGSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right TVGSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TVGSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TVGSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TVGSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TVGSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TVGSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TVGSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TVGSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TVGSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TVGSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right TVGSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TVGSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right TVGSLWCUnreachable
        x -> Left ("Unable to parse TargetVPNGatewaysScopedListWarningCode from: " <> x)

instance ToHttpApiData TargetVPNGatewaysScopedListWarningCode where
    toQueryParam = \case
        TVGSLWCCleanupFailed -> "CLEANUP_FAILED"
        TVGSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TVGSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TVGSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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

-- | [Output Only] The status of disk creation.
data DiskStatus
    = DSCreating
      -- ^ @CREATING@
    | DSFailed
      -- ^ @FAILED@
    | DSReady
      -- ^ @READY@
    | DSRestoring
      -- ^ @RESTORING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiskStatus

instance FromHttpApiData DiskStatus where
    parseQueryParam = \case
        "CREATING" -> Right DSCreating
        "FAILED" -> Right DSFailed
        "READY" -> Right DSReady
        "RESTORING" -> Right DSRestoring
        x -> Left ("Unable to parse DiskStatus from: " <> x)

instance ToHttpApiData DiskStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedInstanceInstanceStatus

instance FromHttpApiData ManagedInstanceInstanceStatus where
    parseQueryParam = \case
        "PROVISIONING" -> Right MIISProvisioning
        "RUNNING" -> Right MIISRunning
        "STAGING" -> Right MIISStaging
        "STOPPED" -> Right MIISStopped
        "STOPPING" -> Right MIISStopping
        "SUSPENDED" -> Right MIISSuspended
        "SUSPENDING" -> Right MIISSuspending
        "TERMINATED" -> Right MIISTerminated
        x -> Left ("Unable to parse ManagedInstanceInstanceStatus from: " <> x)

instance ToHttpApiData ManagedInstanceInstanceStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AttachedDiskMode

instance FromHttpApiData AttachedDiskMode where
    parseQueryParam = \case
        "READ_ONLY" -> Right ReadOnly
        "READ_WRITE" -> Right ReadWrite
        x -> Left ("Unable to parse AttachedDiskMode from: " <> x)

instance ToHttpApiData AttachedDiskMode where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RegionStatus

instance FromHttpApiData RegionStatus where
    parseQueryParam = \case
        "DOWN" -> Right Down
        "UP" -> Right UP
        x -> Left ("Unable to parse RegionStatus from: " <> x)

instance ToHttpApiData RegionStatus where
    toQueryParam = \case
        Down -> "DOWN"
        UP -> "UP"

instance FromJSON RegionStatus where
    parseJSON = parseJSONText "RegionStatus"

instance ToJSON RegionStatus where
    toJSON = toJSONText

-- | The new type of proxy header to append before sending data to the
-- backend. NONE or PROXY_V1 are allowed.
data TargetSSLProxiesSetProxyHeaderRequestProxyHeader
    = TSPSPHRPHNone
      -- ^ @NONE@
    | TSPSPHRPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetSSLProxiesSetProxyHeaderRequestProxyHeader

instance FromHttpApiData TargetSSLProxiesSetProxyHeaderRequestProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right TSPSPHRPHNone
        "PROXY_V1" -> Right TSPSPHRPHProxyV1
        x -> Left ("Unable to parse TargetSSLProxiesSetProxyHeaderRequestProxyHeader from: " <> x)

instance ToHttpApiData TargetSSLProxiesSetProxyHeaderRequestProxyHeader where
    toQueryParam = \case
        TSPSPHRPHNone -> "NONE"
        TSPSPHRPHProxyV1 -> "PROXY_V1"

instance FromJSON TargetSSLProxiesSetProxyHeaderRequestProxyHeader where
    parseJSON = parseJSONText "TargetSSLProxiesSetProxyHeaderRequestProxyHeader"

instance ToJSON TargetSSLProxiesSetProxyHeaderRequestProxyHeader where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VPNTunnelStatus

instance FromHttpApiData VPNTunnelStatus where
    parseQueryParam = \case
        "ALLOCATING_RESOURCES" -> Right VTSAllocatingResources
        "AUTHORIZATION_ERROR" -> Right VTSAuthorizationError
        "DEPROVISIONING" -> Right VTSDeprovisioning
        "ESTABLISHED" -> Right VTSEstablished
        "FAILED" -> Right VTSFailed
        "FIRST_HANDSHAKE" -> Right VTSFirstHandshake
        "NEGOTIATION_FAILURE" -> Right VTSNegotiationFailure
        "NETWORK_ERROR" -> Right VTSNetworkError
        "NO_INCOMING_PACKETS" -> Right VTSNoIncomingPackets
        "PROVISIONING" -> Right VTSProvisioning
        "REJECTED" -> Right VTSRejected
        "WAITING_FOR_FULL_CONFIG" -> Right VTSWaitingForFullConfig
        x -> Left ("Unable to parse VPNTunnelStatus from: " <> x)

instance ToHttpApiData VPNTunnelStatus where
    toQueryParam = \case
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

-- | Specifies the balancing mode for this backend. For global HTTP(S) or
-- TCP\/SSL load balancing, the default is UTILIZATION. Valid values are
-- UTILIZATION, RATE (for HTTP(S)) and CONNECTION (for TCP\/SSL). This
-- cannot be used for internal load balancing.
data BackendBalancingMode
    = Connection
      -- ^ @CONNECTION@
    | Rate
      -- ^ @RATE@
    | Utilization
      -- ^ @UTILIZATION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendBalancingMode

instance FromHttpApiData BackendBalancingMode where
    parseQueryParam = \case
        "CONNECTION" -> Right Connection
        "RATE" -> Right Rate
        "UTILIZATION" -> Right Utilization
        x -> Left ("Unable to parse BackendBalancingMode from: " <> x)

instance ToHttpApiData BackendBalancingMode where
    toQueryParam = \case
        Connection -> "CONNECTION"
        Rate -> "RATE"
        Utilization -> "UTILIZATION"

instance FromJSON BackendBalancingMode where
    parseJSON = parseJSONText "BackendBalancingMode"

instance ToJSON BackendBalancingMode where
    toJSON = toJSONText

-- | The IP protocol to which this rule applies. Valid options are TCP, UDP,
-- ESP, AH, SCTP or ICMP. When the load balancing scheme is INTERNAL
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingRuleIPProtocol

instance FromHttpApiData ForwardingRuleIPProtocol where
    parseQueryParam = \case
        "AH" -> Right FRIPAH
        "ESP" -> Right FRIPEsp
        "SCTP" -> Right FRIPSctp
        "TCP" -> Right FRIPTCP
        "UDP" -> Right FRIPUdp
        x -> Left ("Unable to parse ForwardingRuleIPProtocol from: " <> x)

instance ToHttpApiData ForwardingRuleIPProtocol where
    toQueryParam = \case
        FRIPAH -> "AH"
        FRIPEsp -> "ESP"
        FRIPSctp -> "SCTP"
        FRIPTCP -> "TCP"
        FRIPUdp -> "UDP"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressStatus

instance FromHttpApiData AddressStatus where
    parseQueryParam = \case
        "IN_USE" -> Right InUse
        "RESERVED" -> Right Reserved
        x -> Left ("Unable to parse AddressStatus from: " <> x)

instance ToHttpApiData AddressStatus where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupsListInstancesRequestInstanceState

instance FromHttpApiData InstanceGroupsListInstancesRequestInstanceState where
    parseQueryParam = \case
        "ALL" -> Right IGLIRISAll
        "RUNNING" -> Right IGLIRISRunning
        x -> Left ("Unable to parse InstanceGroupsListInstancesRequestInstanceState from: " <> x)

instance ToHttpApiData InstanceGroupsListInstancesRequestInstanceState where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AttachedDiskInterface

instance FromHttpApiData AttachedDiskInterface where
    parseQueryParam = \case
        "NVME" -> Right Nvme
        "SCSI" -> Right Scsi
        x -> Left ("Unable to parse AttachedDiskInterface from: " <> x)

instance ToHttpApiData AttachedDiskInterface where
    toQueryParam = \case
        Nvme -> "NVME"
        Scsi -> "SCSI"

instance FromJSON AttachedDiskInterface where
    parseJSON = parseJSONText "AttachedDiskInterface"

instance ToJSON AttachedDiskInterface where
    toJSON = toJSONText

-- | Specifies the type of the healthCheck, either TCP, UDP, SSL, HTTP, HTTPS
-- or HTTP2. If not specified, the default is TCP. Exactly one of the
-- protocol-specific health check field must be specified, which must match
-- type field.
data HealthCheckType
    = HCTHTTP
      -- ^ @HTTP@
    | HCTHTTP2
      -- ^ @HTTP2@
    | HCTHTTPS
      -- ^ @HTTPS@
    | HCTInvalid
      -- ^ @INVALID@
    | HCTSSL
      -- ^ @SSL@
    | HCTTCP
      -- ^ @TCP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HealthCheckType

instance FromHttpApiData HealthCheckType where
    parseQueryParam = \case
        "HTTP" -> Right HCTHTTP
        "HTTP2" -> Right HCTHTTP2
        "HTTPS" -> Right HCTHTTPS
        "INVALID" -> Right HCTInvalid
        "SSL" -> Right HCTSSL
        "TCP" -> Right HCTTCP
        x -> Left ("Unable to parse HealthCheckType from: " <> x)

instance ToHttpApiData HealthCheckType where
    toQueryParam = \case
        HCTHTTP -> "HTTP"
        HCTHTTP2 -> "HTTP2"
        HCTHTTPS -> "HTTPS"
        HCTInvalid -> "INVALID"
        HCTSSL -> "SSL"
        HCTTCP -> "TCP"

instance FromJSON HealthCheckType where
    parseJSON = parseJSONText "HealthCheckType"

instance ToJSON HealthCheckType where
    toJSON = toJSONText

-- | [Output Only] Status of the zone, either UP or DOWN.
data ZoneStatus
    = ZSDown
      -- ^ @DOWN@
    | ZSUP
      -- ^ @UP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ZoneStatus

instance FromHttpApiData ZoneStatus where
    parseQueryParam = \case
        "DOWN" -> Right ZSDown
        "UP" -> Right ZSUP
        x -> Left ("Unable to parse ZoneStatus from: " <> x)

instance ToHttpApiData ZoneStatus where
    toQueryParam = \case
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
    | SSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubnetworksScopedListWarningCode

instance FromHttpApiData SubnetworksScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right SSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right SSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right SSLWCUnreachable
        x -> Left ("Unable to parse SubnetworksScopedListWarningCode from: " <> x)

instance ToHttpApiData SubnetworksScopedListWarningCode where
    toQueryParam = \case
        SSLWCCleanupFailed -> "CLEANUP_FAILED"
        SSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    | PreemptibleCPUs
      -- ^ @PREEMPTIBLE_CPUS@
    | RegionalAutoscalers
      -- ^ @REGIONAL_AUTOSCALERS@
    | RegionalInstanceGroupManagers
      -- ^ @REGIONAL_INSTANCE_GROUP_MANAGERS@
    | Routers
      -- ^ @ROUTERS@
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
    | TargetSSLProxies
      -- ^ @TARGET_SSL_PROXIES@
    | TargetVPNGateways
      -- ^ @TARGET_VPN_GATEWAYS@
    | URLMaps
      -- ^ @URL_MAPS@
    | VPNTunnels
      -- ^ @VPN_TUNNELS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QuotaMetric

instance FromHttpApiData QuotaMetric where
    parseQueryParam = \case
        "AUTOSCALERS" -> Right Autoscalers
        "BACKEND_SERVICES" -> Right BackendServices
        "CPUS" -> Right CPUs
        "DISKS_TOTAL_GB" -> Right DisksTotalGb
        "FIREWALLS" -> Right Firewalls
        "FORWARDING_RULES" -> Right ForwardingRules
        "HEALTH_CHECKS" -> Right HealthChecks
        "IMAGES" -> Right Images
        "INSTANCES" -> Right Instances
        "INSTANCE_GROUPS" -> Right InstanceGroups
        "INSTANCE_GROUP_MANAGERS" -> Right InstanceGroupManagers
        "INSTANCE_TEMPLATES" -> Right InstanceTemplates
        "IN_USE_ADDRESSES" -> Right InUseAddresses
        "LOCAL_SSD_TOTAL_GB" -> Right LocalSsdTotalGb
        "NETWORKS" -> Right Networks
        "PREEMPTIBLE_CPUS" -> Right PreemptibleCPUs
        "REGIONAL_AUTOSCALERS" -> Right RegionalAutoscalers
        "REGIONAL_INSTANCE_GROUP_MANAGERS" -> Right RegionalInstanceGroupManagers
        "ROUTERS" -> Right Routers
        "ROUTES" -> Right Routes
        "SNAPSHOTS" -> Right Snapshots
        "SSD_TOTAL_GB" -> Right SsdTotalGb
        "SSL_CERTIFICATES" -> Right SSLCertificates
        "STATIC_ADDRESSES" -> Right StaticAddresses
        "SUBNETWORKS" -> Right Subnetworks
        "TARGET_HTTPS_PROXIES" -> Right TargetHTTPSProxies
        "TARGET_HTTP_PROXIES" -> Right TargetHTTPProxies
        "TARGET_INSTANCES" -> Right TargetInstances
        "TARGET_POOLS" -> Right TargetPools
        "TARGET_SSL_PROXIES" -> Right TargetSSLProxies
        "TARGET_VPN_GATEWAYS" -> Right TargetVPNGateways
        "URL_MAPS" -> Right URLMaps
        "VPN_TUNNELS" -> Right VPNTunnels
        x -> Left ("Unable to parse QuotaMetric from: " <> x)

instance ToHttpApiData QuotaMetric where
    toQueryParam = \case
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
        PreemptibleCPUs -> "PREEMPTIBLE_CPUS"
        RegionalAutoscalers -> "REGIONAL_AUTOSCALERS"
        RegionalInstanceGroupManagers -> "REGIONAL_INSTANCE_GROUP_MANAGERS"
        Routers -> "ROUTERS"
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
        TargetSSLProxies -> "TARGET_SSL_PROXIES"
        TargetVPNGateways -> "TARGET_VPN_GATEWAYS"
        URLMaps -> "URL_MAPS"
        VPNTunnels -> "VPN_TUNNELS"

instance FromJSON QuotaMetric where
    parseJSON = parseJSONText "QuotaMetric"

instance ToJSON QuotaMetric where
    toJSON = toJSONText

-- | [Output Only] The status of the instance. One of the following values:
-- PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, and
-- TERMINATED.
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceStatus

instance FromHttpApiData InstanceStatus where
    parseQueryParam = \case
        "PROVISIONING" -> Right ISProvisioning
        "RUNNING" -> Right ISRunning
        "STAGING" -> Right ISStaging
        "STOPPED" -> Right ISStopped
        "STOPPING" -> Right ISStopping
        "SUSPENDED" -> Right ISSuspended
        "SUSPENDING" -> Right ISSuspending
        "TERMINATED" -> Right ISTerminated
        x -> Left ("Unable to parse InstanceStatus from: " <> x)

instance ToHttpApiData InstanceStatus where
    toQueryParam = \case
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
    | MTSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MachineTypesScopedListWarningCode

instance FromHttpApiData MachineTypesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right MTSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right MTSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right MTSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right MTSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right MTSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right MTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right MTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right MTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right MTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right MTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right MTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right MTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right MTSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right MTSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right MTSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right MTSLWCUnreachable
        x -> Left ("Unable to parse MachineTypesScopedListWarningCode from: " <> x)

instance ToHttpApiData MachineTypesScopedListWarningCode where
    toQueryParam = \case
        MTSLWCCleanupFailed -> "CLEANUP_FAILED"
        MTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        MTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        MTSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    | DTSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiskTypesScopedListWarningCode

instance FromHttpApiData DiskTypesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right DTSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DTSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DTSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right DTSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right DTSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right DTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right DTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right DTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right DTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right DTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right DTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right DTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right DTSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right DTSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right DTSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right DTSLWCUnreachable
        x -> Left ("Unable to parse DiskTypesScopedListWarningCode from: " <> x)

instance ToHttpApiData DiskTypesScopedListWarningCode where
    toQueryParam = \case
        DTSLWCCleanupFailed -> "CLEANUP_FAILED"
        DTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DTSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    | AFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalersScopedListWarningCode

instance FromHttpApiData AutoscalersScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ACleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ADeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ADiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right AFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right AInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ANextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ANextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ANextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ANextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ANextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ANotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ANoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ARequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right AResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ASingleInstancePropertyTemplate
        "UNREACHABLE" -> Right AUnreachable
        x -> Left ("Unable to parse AutoscalersScopedListWarningCode from: " <> x)

instance ToHttpApiData AutoscalersScopedListWarningCode where
    toQueryParam = \case
        ACleanupFailed -> "CLEANUP_FAILED"
        ADeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ADiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        AFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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

-- | Status of the BGP peer: {UP, DOWN}
data RouterStatusBGPPeerStatusStatus
    = RSBPSSDown
      -- ^ @DOWN@
    | RSBPSSUnknown
      -- ^ @UNKNOWN@
    | RSBPSSUP
      -- ^ @UP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterStatusBGPPeerStatusStatus

instance FromHttpApiData RouterStatusBGPPeerStatusStatus where
    parseQueryParam = \case
        "DOWN" -> Right RSBPSSDown
        "UNKNOWN" -> Right RSBPSSUnknown
        "UP" -> Right RSBPSSUP
        x -> Left ("Unable to parse RouterStatusBGPPeerStatusStatus from: " <> x)

instance ToHttpApiData RouterStatusBGPPeerStatusStatus where
    toQueryParam = \case
        RSBPSSDown -> "DOWN"
        RSBPSSUnknown -> "UNKNOWN"
        RSBPSSUP -> "UP"

instance FromJSON RouterStatusBGPPeerStatusStatus where
    parseJSON = parseJSONText "RouterStatusBGPPeerStatusStatus"

instance ToJSON RouterStatusBGPPeerStatusStatus where
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
    | VTSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VPNTunnelsScopedListWarningCode

instance FromHttpApiData VPNTunnelsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right VTSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right VTSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right VTSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right VTSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right VTSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right VTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right VTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right VTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right VTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right VTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right VTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right VTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right VTSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right VTSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right VTSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right VTSLWCUnreachable
        x -> Left ("Unable to parse VPNTunnelsScopedListWarningCode from: " <> x)

instance ToHttpApiData VPNTunnelsScopedListWarningCode where
    toQueryParam = \case
        VTSLWCCleanupFailed -> "CLEANUP_FAILED"
        VTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        VTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        VTSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data HTTP2HealthCheckProxyHeader
    = HTTPHCPHNone
      -- ^ @NONE@
    | HTTPHCPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTP2HealthCheckProxyHeader

instance FromHttpApiData HTTP2HealthCheckProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right HTTPHCPHNone
        "PROXY_V1" -> Right HTTPHCPHProxyV1
        x -> Left ("Unable to parse HTTP2HealthCheckProxyHeader from: " <> x)

instance ToHttpApiData HTTP2HealthCheckProxyHeader where
    toQueryParam = \case
        HTTPHCPHNone -> "NONE"
        HTTPHCPHProxyV1 -> "PROXY_V1"

instance FromJSON HTTP2HealthCheckProxyHeader where
    parseJSON = parseJSONText "HTTP2HealthCheckProxyHeader"

instance ToJSON HTTP2HealthCheckProxyHeader where
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
    | IGSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupsScopedListWarningCode

instance FromHttpApiData InstanceGroupsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGSLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGSLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right IGSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGSLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGSLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right IGSLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGSLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right IGSLWCUnreachable
        x -> Left ("Unable to parse InstanceGroupsScopedListWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupsScopedListWarningCode where
    toQueryParam = \case
        IGSLWCCleanupFailed -> "CLEANUP_FAILED"
        IGSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceWithNamedPortsStatus

instance FromHttpApiData InstanceWithNamedPortsStatus where
    parseQueryParam = \case
        "PROVISIONING" -> Right IWNPSProvisioning
        "RUNNING" -> Right IWNPSRunning
        "STAGING" -> Right IWNPSStaging
        "STOPPED" -> Right IWNPSStopped
        "STOPPING" -> Right IWNPSStopping
        "SUSPENDED" -> Right IWNPSSuspended
        "SUSPENDING" -> Right IWNPSSuspending
        "TERMINATED" -> Right IWNPSTerminated
        x -> Left ("Unable to parse InstanceWithNamedPortsStatus from: " <> x)

instance ToHttpApiData InstanceWithNamedPortsStatus where
    toQueryParam = \case
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

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data TCPHealthCheckProxyHeader
    = THCPHNone
      -- ^ @NONE@
    | THCPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TCPHealthCheckProxyHeader

instance FromHttpApiData TCPHealthCheckProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right THCPHNone
        "PROXY_V1" -> Right THCPHProxyV1
        x -> Left ("Unable to parse TCPHealthCheckProxyHeader from: " <> x)

instance ToHttpApiData TCPHealthCheckProxyHeader where
    toQueryParam = \case
        THCPHNone -> "NONE"
        THCPHProxyV1 -> "PROXY_V1"

instance FromJSON TCPHealthCheckProxyHeader where
    parseJSON = parseJSONText "TCPHealthCheckProxyHeader"

instance ToJSON TCPHealthCheckProxyHeader where
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
    | ISLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstancesScopedListWarningCode

instance FromHttpApiData InstancesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ISLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ISLWCDeprecatedResourceUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ISLWCDiskSizeLargerThanImageSize
        "FIELD_VALUE_OVERRIDEN" -> Right ISLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ISLWCInjectedKernelsDeprecated
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ISLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ISLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ISLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ISLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ISLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ISLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ISLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ISLWCRequiredTosAgreement
        "RESOURCE_NOT_DELETED" -> Right ISLWCResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ISLWCSingleInstancePropertyTemplate
        "UNREACHABLE" -> Right ISLWCUnreachable
        x -> Left ("Unable to parse InstancesScopedListWarningCode from: " <> x)

instance ToHttpApiData InstancesScopedListWarningCode where
    toQueryParam = \case
        ISLWCCleanupFailed -> "CLEANUP_FAILED"
        ISLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ISLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ISLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
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
    = TPSAClientIP
      -- ^ @CLIENT_IP@
    | TPSAClientIPProto
      -- ^ @CLIENT_IP_PROTO@
    | TPSAGeneratedCookie
      -- ^ @GENERATED_COOKIE@
    | TPSANone
      -- ^ @NONE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetPoolSessionAffinity

instance FromHttpApiData TargetPoolSessionAffinity where
    parseQueryParam = \case
        "CLIENT_IP" -> Right TPSAClientIP
        "CLIENT_IP_PROTO" -> Right TPSAClientIPProto
        "GENERATED_COOKIE" -> Right TPSAGeneratedCookie
        "NONE" -> Right TPSANone
        x -> Left ("Unable to parse TargetPoolSessionAffinity from: " <> x)

instance ToHttpApiData TargetPoolSessionAffinity where
    toQueryParam = \case
        TPSAClientIP -> "CLIENT_IP"
        TPSAClientIPProto -> "CLIENT_IP_PROTO"
        TPSAGeneratedCookie -> "GENERATED_COOKIE"
        TPSANone -> "NONE"

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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageRawDiskContainerType

instance FromHttpApiData ImageRawDiskContainerType where
    parseQueryParam = \case
        "TAR" -> Right TAR
        x -> Left ("Unable to parse ImageRawDiskContainerType from: " <> x)

instance ToHttpApiData ImageRawDiskContainerType where
    toQueryParam = \case
        TAR -> "TAR"

instance FromJSON ImageRawDiskContainerType where
    parseJSON = parseJSONText "ImageRawDiskContainerType"

instance ToJSON ImageRawDiskContainerType where
    toJSON = toJSONText
