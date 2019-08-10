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

import           Network.Google.Prelude hiding (Bytes)

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data HTTPSHealthCheckListWarningCode
    = CleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | DiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | FieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | InjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | MissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | ResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | UndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | Unreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPSHealthCheckListWarningCode

instance FromHttpApiData HTTPSHealthCheckListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right CleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right DeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right FieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right InjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right MissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right UndeclaredProperties
        "UNREACHABLE" -> Right Unreachable
        x -> Left ("Unable to parse HTTPSHealthCheckListWarningCode from: " <> x)

instance ToHttpApiData HTTPSHealthCheckListWarningCode where
    toQueryParam = \case
        CleanupFailed -> "CLEANUP_FAILED"
        DeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        DiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ExternalAPIWarning -> "EXTERNAL_API_WARNING"
        FieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        InjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        MissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NotCriticalError -> "NOT_CRITICAL_ERROR"
        NoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        UndeclaredProperties -> "UNDECLARED_PROPERTIES"
        Unreachable -> "UNREACHABLE"

instance FromJSON HTTPSHealthCheckListWarningCode where
    parseJSON = parseJSONText "HTTPSHealthCheckListWarningCode"

instance ToJSON HTTPSHealthCheckListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The current state of this attachment\'s functionality.
data InterconnectAttachmentState
    = Active
      -- ^ @ACTIVE@
    | Defunct
      -- ^ @DEFUNCT@
    | PartnerRequestReceived
      -- ^ @PARTNER_REQUEST_RECEIVED@
    | PendingCustomer
      -- ^ @PENDING_CUSTOMER@
    | PendingPartner
      -- ^ @PENDING_PARTNER@
    | StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
    | Unprovisioned
      -- ^ @UNPROVISIONED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectAttachmentState

instance FromHttpApiData InterconnectAttachmentState where
    parseQueryParam = \case
        "ACTIVE" -> Right Active
        "DEFUNCT" -> Right Defunct
        "PARTNER_REQUEST_RECEIVED" -> Right PartnerRequestReceived
        "PENDING_CUSTOMER" -> Right PendingCustomer
        "PENDING_PARTNER" -> Right PendingPartner
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "UNPROVISIONED" -> Right Unprovisioned
        x -> Left ("Unable to parse InterconnectAttachmentState from: " <> x)

instance ToHttpApiData InterconnectAttachmentState where
    toQueryParam = \case
        Active -> "ACTIVE"
        Defunct -> "DEFUNCT"
        PartnerRequestReceived -> "PARTNER_REQUEST_RECEIVED"
        PendingCustomer -> "PENDING_CUSTOMER"
        PendingPartner -> "PENDING_PARTNER"
        StateUnspecified -> "STATE_UNSPECIFIED"
        Unprovisioned -> "UNPROVISIONED"

instance FromJSON InterconnectAttachmentState where
    parseJSON = parseJSONText "InterconnectAttachmentState"

instance ToJSON InterconnectAttachmentState where
    toJSON = toJSONText

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
data BackendServiceListWarningCode
    = BSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | BSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | BSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | BSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | BSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | BSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | BSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | BSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | BSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | BSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | BSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | BSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | BSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | BSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | BSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | BSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | BSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | BSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | BSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | BSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | BSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | BSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | BSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendServiceListWarningCode

instance FromHttpApiData BackendServiceListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right BSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right BSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right BSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right BSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right BSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right BSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right BSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right BSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right BSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right BSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right BSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right BSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right BSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right BSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right BSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right BSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right BSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right BSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right BSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right BSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right BSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right BSLWCUndeclaredProperties
        "UNREACHABLE" -> Right BSLWCUnreachable
        x -> Left ("Unable to parse BackendServiceListWarningCode from: " <> x)

instance ToHttpApiData BackendServiceListWarningCode where
    toQueryParam = \case
        BSLWCCleanupFailed -> "CLEANUP_FAILED"
        BSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        BSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        BSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        BSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        BSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        BSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        BSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        BSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        BSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        BSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        BSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        BSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        BSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        BSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        BSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        BSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        BSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        BSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        BSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        BSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        BSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        BSLWCUnreachable -> "UNREACHABLE"

instance FromJSON BackendServiceListWarningCode where
    parseJSON = parseJSONText "BackendServiceListWarningCode"

instance ToJSON BackendServiceListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceListWarningCode
    = ILWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ILWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ILWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ILWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ILWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ILWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ILWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ILWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ILWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ILWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ILWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ILWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ILWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ILWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ILWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ILWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ILWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ILWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ILWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ILWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ILWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ILWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ILWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceListWarningCode

instance FromHttpApiData InstanceListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ILWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ILWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ILWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ILWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ILWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ILWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ILWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ILWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ILWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ILWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ILWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ILWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ILWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ILWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ILWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ILWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ILWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ILWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ILWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ILWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ILWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ILWCUndeclaredProperties
        "UNREACHABLE" -> Right ILWCUnreachable
        x -> Left ("Unable to parse InstanceListWarningCode from: " <> x)

instance ToHttpApiData InstanceListWarningCode where
    toQueryParam = \case
        ILWCCleanupFailed -> "CLEANUP_FAILED"
        ILWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ILWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ILWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ILWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ILWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ILWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ILWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ILWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ILWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ILWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ILWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ILWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ILWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ILWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ILWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ILWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ILWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ILWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ILWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ILWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ILWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ILWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceListWarningCode where
    parseJSON = parseJSONText "InstanceListWarningCode"

instance ToJSON InstanceListWarningCode where
    toJSON = toJSONText

-- | Specifies the QUIC override policy for this TargetHttpsProxy resource.
-- This determines whether the load balancer will attempt to negotiate QUIC
-- with clients or not. Can specify one of NONE, ENABLE, or DISABLE.
-- Specify ENABLE to always enable QUIC, Enables QUIC when set to ENABLE,
-- and disables QUIC when set to DISABLE. If NONE is specified, uses the
-- QUIC policy with no user overrides, which is equivalent to DISABLE. Not
-- specifying this field is equivalent to specifying NONE.
data TargetHTTPSProxyQuicOverride
    = Disable
      -- ^ @DISABLE@
    | Enable
      -- ^ @ENABLE@
    | None
      -- ^ @NONE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetHTTPSProxyQuicOverride

instance FromHttpApiData TargetHTTPSProxyQuicOverride where
    parseQueryParam = \case
        "DISABLE" -> Right Disable
        "ENABLE" -> Right Enable
        "NONE" -> Right None
        x -> Left ("Unable to parse TargetHTTPSProxyQuicOverride from: " <> x)

instance ToHttpApiData TargetHTTPSProxyQuicOverride where
    toQueryParam = \case
        Disable -> "DISABLE"
        Enable -> "ENABLE"
        None -> "NONE"

instance FromJSON TargetHTTPSProxyQuicOverride where
    parseJSON = parseJSONText "TargetHTTPSProxyQuicOverride"

instance ToJSON TargetHTTPSProxyQuicOverride where
    toJSON = toJSONText

-- | Specify the NatIpAllocateOption. If it is AUTO_ONLY, then nat_ip should
-- be empty.
data RouterNATNATIPAllocateOption
    = AutoOnly
      -- ^ @AUTO_ONLY@
    | ManualOnly
      -- ^ @MANUAL_ONLY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterNATNATIPAllocateOption

instance FromHttpApiData RouterNATNATIPAllocateOption where
    parseQueryParam = \case
        "AUTO_ONLY" -> Right AutoOnly
        "MANUAL_ONLY" -> Right ManualOnly
        x -> Left ("Unable to parse RouterNATNATIPAllocateOption from: " <> x)

instance ToHttpApiData RouterNATNATIPAllocateOption where
    toQueryParam = \case
        AutoOnly -> "AUTO_ONLY"
        ManualOnly -> "MANUAL_ONLY"

instance FromJSON RouterNATNATIPAllocateOption where
    parseJSON = parseJSONText "RouterNATNATIPAllocateOption"

instance ToJSON RouterNATNATIPAllocateOption where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data OperationWarningsItemCode
    = OWICCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | OWICDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OWICDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | OWICDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OWICExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | OWICExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | OWICFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | OWICInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OWICMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | OWICNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OWICNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OWICNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OWICNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OWICNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OWICNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OWICNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OWICRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OWICResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | OWICResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OWICSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | OWICSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OWICUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | OWICUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationWarningsItemCode

instance FromHttpApiData OperationWarningsItemCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right OWICCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right OWICDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right OWICDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right OWICDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right OWICExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right OWICExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right OWICFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right OWICInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right OWICMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right OWICNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right OWICNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right OWICNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right OWICNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right OWICNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right OWICNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right OWICNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right OWICRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right OWICResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right OWICResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right OWICSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right OWICSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right OWICUndeclaredProperties
        "UNREACHABLE" -> Right OWICUnreachable
        x -> Left ("Unable to parse OperationWarningsItemCode from: " <> x)

instance ToHttpApiData OperationWarningsItemCode where
    toQueryParam = \case
        OWICCleanupFailed -> "CLEANUP_FAILED"
        OWICDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        OWICDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        OWICDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        OWICExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        OWICExternalAPIWarning -> "EXTERNAL_API_WARNING"
        OWICFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        OWICInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        OWICMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        OWICNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        OWICNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        OWICNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        OWICNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        OWICNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        OWICNotCriticalError -> "NOT_CRITICAL_ERROR"
        OWICNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        OWICRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        OWICResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        OWICResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        OWICSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        OWICSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        OWICUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        OWICUnreachable -> "UNREACHABLE"

instance FromJSON OperationWarningsItemCode where
    parseJSON = parseJSONText "OperationWarningsItemCode"

instance ToJSON OperationWarningsItemCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NodeGroupAggregatedListWarningCode
    = NGALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NGALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NGALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NGALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NGALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NGALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NGALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NGALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NGALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NGALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NGALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NGALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NGALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NGALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NGALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NGALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NGALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NGALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NGALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NGALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NGALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NGALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NGALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeGroupAggregatedListWarningCode

instance FromHttpApiData NodeGroupAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NGALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NGALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NGALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NGALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NGALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NGALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NGALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NGALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NGALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NGALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NGALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NGALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NGALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NGALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NGALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NGALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NGALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NGALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NGALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NGALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NGALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NGALWCUndeclaredProperties
        "UNREACHABLE" -> Right NGALWCUnreachable
        x -> Left ("Unable to parse NodeGroupAggregatedListWarningCode from: " <> x)

instance ToHttpApiData NodeGroupAggregatedListWarningCode where
    toQueryParam = \case
        NGALWCCleanupFailed -> "CLEANUP_FAILED"
        NGALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NGALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NGALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NGALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NGALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NGALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NGALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NGALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NGALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NGALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NGALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NGALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NGALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NGALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NGALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NGALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NGALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NGALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NGALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NGALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NGALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NGALWCUnreachable -> "UNREACHABLE"

instance FromJSON NodeGroupAggregatedListWarningCode where
    parseJSON = parseJSONText "NodeGroupAggregatedListWarningCode"

instance ToJSON NodeGroupAggregatedListWarningCode where
    toJSON = toJSONText

-- | The protocol this BackendService uses to communicate with backends.
-- Possible values are HTTP, HTTPS, TCP, and SSL. The default is HTTP. For
-- internal load balancing, the possible values are TCP and UDP, and the
-- default is TCP.
data BackendServiceProtocol
    = HTTP
      -- ^ @HTTP@
    | HTTP2
      -- ^ @HTTP2@
    | HTTPS
      -- ^ @HTTPS@
    | SSL
      -- ^ @SSL@
    | TCP
      -- ^ @TCP@
    | Udp
      -- ^ @UDP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendServiceProtocol

instance FromHttpApiData BackendServiceProtocol where
    parseQueryParam = \case
        "HTTP" -> Right HTTP
        "HTTP2" -> Right HTTP2
        "HTTPS" -> Right HTTPS
        "SSL" -> Right SSL
        "TCP" -> Right TCP
        "UDP" -> Right Udp
        x -> Left ("Unable to parse BackendServiceProtocol from: " <> x)

instance ToHttpApiData BackendServiceProtocol where
    toQueryParam = \case
        HTTP -> "HTTP"
        HTTP2 -> "HTTP2"
        HTTPS -> "HTTPS"
        SSL -> "SSL"
        TCP -> "TCP"
        Udp -> "UDP"

instance FromJSON BackendServiceProtocol where
    parseJSON = parseJSONText "BackendServiceProtocol"

instance ToJSON BackendServiceProtocol where
    toJSON = toJSONText

-- | Type of network endpoints in this network endpoint group. Currently the
-- only supported value is GCE_VM_IP_PORT.
data NetworkEndpointGroupNetworkEndpointType
    = GceVMIPPort
      -- ^ @GCE_VM_IP_PORT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkEndpointGroupNetworkEndpointType

instance FromHttpApiData NetworkEndpointGroupNetworkEndpointType where
    parseQueryParam = \case
        "GCE_VM_IP_PORT" -> Right GceVMIPPort
        x -> Left ("Unable to parse NetworkEndpointGroupNetworkEndpointType from: " <> x)

instance ToHttpApiData NetworkEndpointGroupNetworkEndpointType where
    toQueryParam = \case
        GceVMIPPort -> "GCE_VM_IP_PORT"

instance FromJSON NetworkEndpointGroupNetworkEndpointType where
    parseJSON = parseJSONText "NetworkEndpointGroupNetworkEndpointType"

instance ToJSON NetworkEndpointGroupNetworkEndpointType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data BackendBucketListWarningCode
    = BBLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | BBLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | BBLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | BBLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | BBLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | BBLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | BBLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | BBLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | BBLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | BBLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | BBLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | BBLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | BBLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | BBLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | BBLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | BBLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | BBLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | BBLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | BBLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | BBLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | BBLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | BBLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | BBLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendBucketListWarningCode

instance FromHttpApiData BackendBucketListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right BBLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right BBLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right BBLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right BBLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right BBLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right BBLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right BBLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right BBLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right BBLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right BBLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right BBLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right BBLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right BBLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right BBLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right BBLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right BBLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right BBLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right BBLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right BBLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right BBLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right BBLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right BBLWCUndeclaredProperties
        "UNREACHABLE" -> Right BBLWCUnreachable
        x -> Left ("Unable to parse BackendBucketListWarningCode from: " <> x)

instance ToHttpApiData BackendBucketListWarningCode where
    toQueryParam = \case
        BBLWCCleanupFailed -> "CLEANUP_FAILED"
        BBLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        BBLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        BBLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        BBLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        BBLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        BBLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        BBLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        BBLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        BBLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        BBLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        BBLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        BBLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        BBLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        BBLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        BBLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        BBLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        BBLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        BBLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        BBLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        BBLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        BBLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        BBLWCUnreachable -> "UNREACHABLE"

instance FromJSON BackendBucketListWarningCode where
    parseJSON = parseJSONText "BackendBucketListWarningCode"

instance ToJSON BackendBucketListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AcceleratorTypesScopedListWarningCode
    = ATSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ATSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ATSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ATSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ATSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ATSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ATSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ATSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ATSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ATSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ATSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ATSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ATSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ATSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ATSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ATSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ATSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ATSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ATSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ATSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ATSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ATSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ATSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AcceleratorTypesScopedListWarningCode

instance FromHttpApiData AcceleratorTypesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ATSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ATSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ATSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ATSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ATSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ATSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ATSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ATSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ATSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ATSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ATSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ATSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ATSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ATSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ATSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ATSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ATSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ATSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ATSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ATSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ATSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ATSLWCUndeclaredProperties
        "UNREACHABLE" -> Right ATSLWCUnreachable
        x -> Left ("Unable to parse AcceleratorTypesScopedListWarningCode from: " <> x)

instance ToHttpApiData AcceleratorTypesScopedListWarningCode where
    toQueryParam = \case
        ATSLWCCleanupFailed -> "CLEANUP_FAILED"
        ATSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ATSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ATSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ATSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ATSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ATSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ATSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ATSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ATSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ATSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ATSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ATSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ATSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ATSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ATSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ATSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ATSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ATSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ATSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ATSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ATSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ATSLWCUnreachable -> "UNREACHABLE"

instance FromJSON AcceleratorTypesScopedListWarningCode where
    parseJSON = parseJSONText "AcceleratorTypesScopedListWarningCode"

instance ToJSON AcceleratorTypesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NodeGroupsScopedListWarningCode
    = NGSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NGSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NGSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NGSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NGSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NGSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NGSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NGSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NGSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NGSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NGSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NGSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NGSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NGSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NGSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NGSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NGSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NGSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NGSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NGSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NGSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NGSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NGSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeGroupsScopedListWarningCode

instance FromHttpApiData NodeGroupsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NGSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NGSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NGSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NGSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NGSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NGSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NGSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NGSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NGSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NGSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NGSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NGSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NGSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NGSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NGSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NGSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NGSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NGSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NGSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NGSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NGSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NGSLWCUndeclaredProperties
        "UNREACHABLE" -> Right NGSLWCUnreachable
        x -> Left ("Unable to parse NodeGroupsScopedListWarningCode from: " <> x)

instance ToHttpApiData NodeGroupsScopedListWarningCode where
    toQueryParam = \case
        NGSLWCCleanupFailed -> "CLEANUP_FAILED"
        NGSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NGSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NGSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NGSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NGSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NGSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NGSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NGSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NGSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NGSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NGSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NGSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NGSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NGSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NGSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NGSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NGSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NGSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NGSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NGSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NGSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NGSLWCUnreachable -> "UNREACHABLE"

instance FromJSON NodeGroupsScopedListWarningCode where
    parseJSON = parseJSONText "NodeGroupsScopedListWarningCode"

instance ToJSON NodeGroupsScopedListWarningCode where
    toJSON = toJSONText

-- | The new type of proxy header to append before sending data to the
-- backend. NONE or PROXY_V1 are allowed.
data TargetTCPProxiesSetProxyHeaderRequestProxyHeader
    = TTPSPHRPHNone
      -- ^ @NONE@
    | TTPSPHRPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetTCPProxiesSetProxyHeaderRequestProxyHeader

instance FromHttpApiData TargetTCPProxiesSetProxyHeaderRequestProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right TTPSPHRPHNone
        "PROXY_V1" -> Right TTPSPHRPHProxyV1
        x -> Left ("Unable to parse TargetTCPProxiesSetProxyHeaderRequestProxyHeader from: " <> x)

instance ToHttpApiData TargetTCPProxiesSetProxyHeaderRequestProxyHeader where
    toQueryParam = \case
        TTPSPHRPHNone -> "NONE"
        TTPSPHRPHProxyV1 -> "PROXY_V1"

instance FromJSON TargetTCPProxiesSetProxyHeaderRequestProxyHeader where
    parseJSON = parseJSONText "TargetTCPProxiesSetProxyHeaderRequestProxyHeader"

instance ToJSON TargetTCPProxiesSetProxyHeaderRequestProxyHeader where
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

-- | [Output Only] The resource that configures and manages this BGP peer.
-- MANAGED_BY_USER is the default value and can be managed by you or other
-- users; MANAGED_BY_ATTACHMENT is a BGP peer that is configured and
-- managed by Cloud Interconnect, specifically by an InterconnectAttachment
-- of type PARTNER. Google will automatically create, update, and delete
-- this type of BGP peer when the PARTNER InterconnectAttachment is
-- created, updated, or deleted.
data RouterBGPPeerManagementType
    = ManagedByAttachment
      -- ^ @MANAGED_BY_ATTACHMENT@
    | ManagedByUser
      -- ^ @MANAGED_BY_USER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterBGPPeerManagementType

instance FromHttpApiData RouterBGPPeerManagementType where
    parseQueryParam = \case
        "MANAGED_BY_ATTACHMENT" -> Right ManagedByAttachment
        "MANAGED_BY_USER" -> Right ManagedByUser
        x -> Left ("Unable to parse RouterBGPPeerManagementType from: " <> x)

instance ToHttpApiData RouterBGPPeerManagementType where
    toQueryParam = \case
        ManagedByAttachment -> "MANAGED_BY_ATTACHMENT"
        ManagedByUser -> "MANAGED_BY_USER"

instance FromJSON RouterBGPPeerManagementType where
    parseJSON = parseJSONText "RouterBGPPeerManagementType"

instance ToJSON RouterBGPPeerManagementType where
    toJSON = toJSONText

data RouterNATSubnetworkToNATSourceIPRangesToNATItem
    = AllIPRanges
      -- ^ @ALL_IP_RANGES@
    | ListOfSecondaryIPRanges
      -- ^ @LIST_OF_SECONDARY_IP_RANGES@
    | PrimaryIPRange
      -- ^ @PRIMARY_IP_RANGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterNATSubnetworkToNATSourceIPRangesToNATItem

instance FromHttpApiData RouterNATSubnetworkToNATSourceIPRangesToNATItem where
    parseQueryParam = \case
        "ALL_IP_RANGES" -> Right AllIPRanges
        "LIST_OF_SECONDARY_IP_RANGES" -> Right ListOfSecondaryIPRanges
        "PRIMARY_IP_RANGE" -> Right PrimaryIPRange
        x -> Left ("Unable to parse RouterNATSubnetworkToNATSourceIPRangesToNATItem from: " <> x)

instance ToHttpApiData RouterNATSubnetworkToNATSourceIPRangesToNATItem where
    toQueryParam = \case
        AllIPRanges -> "ALL_IP_RANGES"
        ListOfSecondaryIPRanges -> "LIST_OF_SECONDARY_IP_RANGES"
        PrimaryIPRange -> "PRIMARY_IP_RANGE"

instance FromJSON RouterNATSubnetworkToNATSourceIPRangesToNATItem where
    parseJSON = parseJSONText "RouterNATSubnetworkToNATSourceIPRangesToNATItem"

instance ToJSON RouterNATSubnetworkToNATSourceIPRangesToNATItem where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AcceleratorTypeAggregatedListWarningCode
    = ATALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ATALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ATALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ATALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ATALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ATALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ATALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ATALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ATALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ATALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ATALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ATALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ATALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ATALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ATALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ATALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ATALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ATALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ATALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ATALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ATALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ATALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ATALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AcceleratorTypeAggregatedListWarningCode

instance FromHttpApiData AcceleratorTypeAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ATALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ATALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ATALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ATALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ATALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ATALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ATALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ATALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ATALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ATALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ATALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ATALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ATALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ATALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ATALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ATALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ATALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ATALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ATALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ATALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ATALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ATALWCUndeclaredProperties
        "UNREACHABLE" -> Right ATALWCUnreachable
        x -> Left ("Unable to parse AcceleratorTypeAggregatedListWarningCode from: " <> x)

instance ToHttpApiData AcceleratorTypeAggregatedListWarningCode where
    toQueryParam = \case
        ATALWCCleanupFailed -> "CLEANUP_FAILED"
        ATALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ATALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ATALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ATALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ATALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ATALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ATALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ATALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ATALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ATALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ATALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ATALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ATALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ATALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ATALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ATALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ATALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ATALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ATALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ATALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ATALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ATALWCUnreachable -> "UNREACHABLE"

instance FromJSON AcceleratorTypeAggregatedListWarningCode where
    parseJSON = parseJSONText "AcceleratorTypeAggregatedListWarningCode"

instance ToJSON AcceleratorTypeAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data HealthCheckListWarningCode
    = HCLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | HCLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | HCLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | HCLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | HCLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | HCLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | HCLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | HCLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | HCLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | HCLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | HCLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | HCLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | HCLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | HCLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | HCLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | HCLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | HCLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | HCLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | HCLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | HCLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | HCLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | HCLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | HCLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HealthCheckListWarningCode

instance FromHttpApiData HealthCheckListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right HCLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right HCLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right HCLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right HCLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right HCLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right HCLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right HCLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right HCLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right HCLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right HCLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right HCLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right HCLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right HCLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right HCLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right HCLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right HCLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right HCLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right HCLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right HCLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right HCLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right HCLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right HCLWCUndeclaredProperties
        "UNREACHABLE" -> Right HCLWCUnreachable
        x -> Left ("Unable to parse HealthCheckListWarningCode from: " <> x)

instance ToHttpApiData HealthCheckListWarningCode where
    toQueryParam = \case
        HCLWCCleanupFailed -> "CLEANUP_FAILED"
        HCLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        HCLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        HCLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        HCLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        HCLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        HCLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        HCLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        HCLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        HCLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        HCLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        HCLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        HCLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        HCLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        HCLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        HCLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        HCLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        HCLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        HCLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        HCLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        HCLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        HCLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        HCLWCUnreachable -> "UNREACHABLE"

instance FromJSON HealthCheckListWarningCode where
    parseJSON = parseJSONText "HealthCheckListWarningCode"

instance ToJSON HealthCheckListWarningCode where
    toJSON = toJSONText

-- | Profile specifies the set of SSL features that can be used by the load
-- balancer when negotiating SSL with clients. This can be one of
-- COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of
-- SSL features to enable must be specified in the customFeatures field.
data SSLPolicyProFile
    = Compatible
      -- ^ @COMPATIBLE@
    | Custom
      -- ^ @CUSTOM@
    | Modern
      -- ^ @MODERN@
    | Restricted
      -- ^ @RESTRICTED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SSLPolicyProFile

instance FromHttpApiData SSLPolicyProFile where
    parseQueryParam = \case
        "COMPATIBLE" -> Right Compatible
        "CUSTOM" -> Right Custom
        "MODERN" -> Right Modern
        "RESTRICTED" -> Right Restricted
        x -> Left ("Unable to parse SSLPolicyProFile from: " <> x)

instance ToHttpApiData SSLPolicyProFile where
    toQueryParam = \case
        Compatible -> "COMPATIBLE"
        Custom -> "CUSTOM"
        Modern -> "MODERN"
        Restricted -> "RESTRICTED"

instance FromJSON SSLPolicyProFile where
    parseJSON = parseJSONText "SSLPolicyProFile"

instance ToJSON SSLPolicyProFile where
    toJSON = toJSONText

-- | The party that generated this notification. Note that \"NSRC_GOOGLE\"
-- has been deprecated in favor of \"GOOGLE\"
data InterconnectOutageNotificationSource
    = Google
      -- ^ @GOOGLE@
    | NsrcGoogle
      -- ^ @NSRC_GOOGLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectOutageNotificationSource

instance FromHttpApiData InterconnectOutageNotificationSource where
    parseQueryParam = \case
        "GOOGLE" -> Right Google
        "NSRC_GOOGLE" -> Right NsrcGoogle
        x -> Left ("Unable to parse InterconnectOutageNotificationSource from: " <> x)

instance ToHttpApiData InterconnectOutageNotificationSource where
    toQueryParam = \case
        Google -> "GOOGLE"
        NsrcGoogle -> "NSRC_GOOGLE"

instance FromJSON InterconnectOutageNotificationSource where
    parseJSON = parseJSONText "InterconnectOutageNotificationSource"

instance ToJSON InterconnectOutageNotificationSource where
    toJSON = toJSONText

-- | Type of link requested. This field indicates speed of each of the links
-- in the bundle, not the entire bundle.
data InterconnectLinkType
    = LinkTypeEthernet10GLr
      -- ^ @LINK_TYPE_ETHERNET_10G_LR@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectLinkType

instance FromHttpApiData InterconnectLinkType where
    parseQueryParam = \case
        "LINK_TYPE_ETHERNET_10G_LR" -> Right LinkTypeEthernet10GLr
        x -> Left ("Unable to parse InterconnectLinkType from: " <> x)

instance ToHttpApiData InterconnectLinkType where
    toQueryParam = \case
        LinkTypeEthernet10GLr -> "LINK_TYPE_ETHERNET_10G_LR"

instance FromJSON InterconnectLinkType where
    parseJSON = parseJSONText "InterconnectLinkType"

instance ToJSON InterconnectLinkType where
    toJSON = toJSONText

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data TargetSSLProxyProxyHeader
    = TSPPHNone
      -- ^ @NONE@
    | TSPPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetSSLProxyProxyHeader

instance FromHttpApiData TargetSSLProxyProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right TSPPHNone
        "PROXY_V1" -> Right TSPPHProxyV1
        x -> Left ("Unable to parse TargetSSLProxyProxyHeader from: " <> x)

instance ToHttpApiData TargetSSLProxyProxyHeader where
    toQueryParam = \case
        TSPPHNone -> "NONE"
        TSPPHProxyV1 -> "PROXY_V1"

instance FromJSON TargetSSLProxyProxyHeader where
    parseJSON = parseJSONText "TargetSSLProxyProxyHeader"

instance ToJSON TargetSSLProxyProxyHeader where
    toJSON = toJSONText

-- | User-specified flag to indicate which mode to use for advertisement.
data RouterBGPAdvertiseMode
    = RBAMCustom
      -- ^ @CUSTOM@
    | RBAMDefault
      -- ^ @DEFAULT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterBGPAdvertiseMode

instance FromHttpApiData RouterBGPAdvertiseMode where
    parseQueryParam = \case
        "CUSTOM" -> Right RBAMCustom
        "DEFAULT" -> Right RBAMDefault
        x -> Left ("Unable to parse RouterBGPAdvertiseMode from: " <> x)

instance ToHttpApiData RouterBGPAdvertiseMode where
    toQueryParam = \case
        RBAMCustom -> "CUSTOM"
        RBAMDefault -> "DEFAULT"

instance FromJSON RouterBGPAdvertiseMode where
    parseJSON = parseJSONText "RouterBGPAdvertiseMode"

instance ToJSON RouterBGPAdvertiseMode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NodeGroupsListNodesWarningCode
    = NGLNWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NGLNWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NGLNWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NGLNWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NGLNWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NGLNWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NGLNWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NGLNWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NGLNWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NGLNWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NGLNWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NGLNWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NGLNWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NGLNWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NGLNWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NGLNWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NGLNWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NGLNWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NGLNWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NGLNWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NGLNWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NGLNWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NGLNWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeGroupsListNodesWarningCode

instance FromHttpApiData NodeGroupsListNodesWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NGLNWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NGLNWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NGLNWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NGLNWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NGLNWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NGLNWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NGLNWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NGLNWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NGLNWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NGLNWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NGLNWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NGLNWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NGLNWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NGLNWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NGLNWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NGLNWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NGLNWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NGLNWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NGLNWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NGLNWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NGLNWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NGLNWCUndeclaredProperties
        "UNREACHABLE" -> Right NGLNWCUnreachable
        x -> Left ("Unable to parse NodeGroupsListNodesWarningCode from: " <> x)

instance ToHttpApiData NodeGroupsListNodesWarningCode where
    toQueryParam = \case
        NGLNWCCleanupFailed -> "CLEANUP_FAILED"
        NGLNWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NGLNWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NGLNWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NGLNWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NGLNWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NGLNWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NGLNWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NGLNWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NGLNWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NGLNWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NGLNWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NGLNWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NGLNWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NGLNWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NGLNWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NGLNWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NGLNWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NGLNWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NGLNWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NGLNWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NGLNWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NGLNWCUnreachable -> "UNREACHABLE"

instance FromJSON NodeGroupsListNodesWarningCode where
    parseJSON = parseJSONText "NodeGroupsListNodesWarningCode"

instance ToJSON NodeGroupsListNodesWarningCode where
    toJSON = toJSONText

-- | The status of the current value when compared to the warning and alarm
-- levels for the receiving or transmitting transceiver. Possible states
-- include: - OK: The value has not crossed a warning threshold. -
-- LOW_WARNING: The value has crossed below the low warning threshold. -
-- HIGH_WARNING: The value has crossed above the high warning threshold. -
-- LOW_ALARM: The value has crossed below the low alarm threshold. -
-- HIGH_ALARM: The value has crossed above the high alarm threshold.
data InterconnectDiagnosticsLinkOpticalPowerState
    = HighAlarm
      -- ^ @HIGH_ALARM@
    | HighWarning
      -- ^ @HIGH_WARNING@
    | LowAlarm
      -- ^ @LOW_ALARM@
    | LowWarning
      -- ^ @LOW_WARNING@
    | OK
      -- ^ @OK@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectDiagnosticsLinkOpticalPowerState

instance FromHttpApiData InterconnectDiagnosticsLinkOpticalPowerState where
    parseQueryParam = \case
        "HIGH_ALARM" -> Right HighAlarm
        "HIGH_WARNING" -> Right HighWarning
        "LOW_ALARM" -> Right LowAlarm
        "LOW_WARNING" -> Right LowWarning
        "OK" -> Right OK
        x -> Left ("Unable to parse InterconnectDiagnosticsLinkOpticalPowerState from: " <> x)

instance ToHttpApiData InterconnectDiagnosticsLinkOpticalPowerState where
    toQueryParam = \case
        HighAlarm -> "HIGH_ALARM"
        HighWarning -> "HIGH_WARNING"
        LowAlarm -> "LOW_ALARM"
        LowWarning -> "LOW_WARNING"
        OK -> "OK"

instance FromJSON InterconnectDiagnosticsLinkOpticalPowerState where
    parseJSON = parseJSONText "InterconnectDiagnosticsLinkOpticalPowerState"

instance ToJSON InterconnectDiagnosticsLinkOpticalPowerState where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InterconnectLocationListWarningCode
    = ILLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ILLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ILLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ILLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ILLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ILLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ILLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ILLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ILLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ILLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ILLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ILLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ILLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ILLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ILLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ILLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ILLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ILLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ILLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ILLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ILLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ILLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ILLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectLocationListWarningCode

instance FromHttpApiData InterconnectLocationListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ILLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ILLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ILLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ILLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ILLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ILLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ILLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ILLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ILLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ILLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ILLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ILLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ILLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ILLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ILLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ILLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ILLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ILLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ILLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ILLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ILLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ILLWCUndeclaredProperties
        "UNREACHABLE" -> Right ILLWCUnreachable
        x -> Left ("Unable to parse InterconnectLocationListWarningCode from: " <> x)

instance ToHttpApiData InterconnectLocationListWarningCode where
    toQueryParam = \case
        ILLWCCleanupFailed -> "CLEANUP_FAILED"
        ILLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ILLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ILLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ILLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ILLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ILLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ILLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ILLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ILLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ILLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ILLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ILLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ILLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ILLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ILLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ILLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ILLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ILLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ILLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ILLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ILLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ILLWCUnreachable -> "UNREACHABLE"

instance FromJSON InterconnectLocationListWarningCode where
    parseJSON = parseJSONText "InterconnectLocationListWarningCode"

instance ToJSON InterconnectLocationListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceGroupsListInstancesWarningCode
    = IGLIWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IGLIWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGLIWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IGLIWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGLIWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IGLIWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IGLIWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IGLIWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGLIWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IGLIWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGLIWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGLIWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGLIWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGLIWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGLIWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGLIWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGLIWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGLIWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IGLIWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGLIWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IGLIWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGLIWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IGLIWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupsListInstancesWarningCode

instance FromHttpApiData InstanceGroupsListInstancesWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGLIWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGLIWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IGLIWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGLIWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IGLIWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IGLIWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IGLIWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGLIWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IGLIWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGLIWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGLIWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGLIWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGLIWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGLIWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGLIWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGLIWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGLIWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IGLIWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IGLIWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IGLIWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGLIWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IGLIWCUndeclaredProperties
        "UNREACHABLE" -> Right IGLIWCUnreachable
        x -> Left ("Unable to parse InstanceGroupsListInstancesWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupsListInstancesWarningCode where
    toQueryParam = \case
        IGLIWCCleanupFailed -> "CLEANUP_FAILED"
        IGLIWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGLIWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IGLIWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGLIWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IGLIWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IGLIWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IGLIWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGLIWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IGLIWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGLIWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGLIWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGLIWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGLIWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGLIWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGLIWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGLIWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGLIWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IGLIWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGLIWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IGLIWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGLIWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IGLIWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupsListInstancesWarningCode where
    parseJSON = parseJSONText "InstanceGroupsListInstancesWarningCode"

instance ToJSON InstanceGroupsListInstancesWarningCode where
    toJSON = toJSONText

-- | Instances in which state should be returned. Valid options are: \'ALL\',
-- \'RUNNING\'. By default, it lists all instances.
data RegionInstanceGroupsListInstancesRequestInstanceState
    = All
      -- ^ @ALL@
    | Running
      -- ^ @RUNNING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RegionInstanceGroupsListInstancesRequestInstanceState

instance FromHttpApiData RegionInstanceGroupsListInstancesRequestInstanceState where
    parseQueryParam = \case
        "ALL" -> Right All
        "RUNNING" -> Right Running
        x -> Left ("Unable to parse RegionInstanceGroupsListInstancesRequestInstanceState from: " <> x)

instance ToHttpApiData RegionInstanceGroupsListInstancesRequestInstanceState where
    toQueryParam = \case
        All -> "ALL"
        Running -> "RUNNING"

instance FromJSON RegionInstanceGroupsListInstancesRequestInstanceState where
    parseJSON = parseJSONText "RegionInstanceGroupsListInstancesRequestInstanceState"

instance ToJSON RegionInstanceGroupsListInstancesRequestInstanceState where
    toJSON = toJSONText

-- | [Output Only] The role this project has in a shared VPC configuration.
-- Currently only HOST projects are differentiated.
data ProjectXpnProjectStatus
    = Host
      -- ^ @HOST@
    | UnspecifiedXpnProjectStatus
      -- ^ @UNSPECIFIED_XPN_PROJECT_STATUS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectXpnProjectStatus

instance FromHttpApiData ProjectXpnProjectStatus where
    parseQueryParam = \case
        "HOST" -> Right Host
        "UNSPECIFIED_XPN_PROJECT_STATUS" -> Right UnspecifiedXpnProjectStatus
        x -> Left ("Unable to parse ProjectXpnProjectStatus from: " <> x)

instance ToHttpApiData ProjectXpnProjectStatus where
    toQueryParam = \case
        Host -> "HOST"
        UnspecifiedXpnProjectStatus -> "UNSPECIFIED_XPN_PROJECT_STATUS"

instance FromJSON ProjectXpnProjectStatus where
    parseJSON = parseJSONText "ProjectXpnProjectStatus"

instance ToJSON ProjectXpnProjectStatus where
    toJSON = toJSONText

-- | Specifies how port is selected for health checking, can be one of
-- following values: USE_FIXED_PORT: The port number in port is used for
-- health checking. USE_NAMED_PORT: The portName is used for health
-- checking. USE_SERVING_PORT: For NetworkEndpointGroup, the port specified
-- for each network endpoint is used for health checking. For other
-- backends, the port or named port specified in the Backend Service is
-- used for health checking. If not specified, SSL health check follows
-- behavior specified in port and portName fields.
data SSLHealthCheckPortSpecification
    = UseFixedPort
      -- ^ @USE_FIXED_PORT@
    | UseNamedPort
      -- ^ @USE_NAMED_PORT@
    | UseServingPort
      -- ^ @USE_SERVING_PORT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SSLHealthCheckPortSpecification

instance FromHttpApiData SSLHealthCheckPortSpecification where
    parseQueryParam = \case
        "USE_FIXED_PORT" -> Right UseFixedPort
        "USE_NAMED_PORT" -> Right UseNamedPort
        "USE_SERVING_PORT" -> Right UseServingPort
        x -> Left ("Unable to parse SSLHealthCheckPortSpecification from: " <> x)

instance ToHttpApiData SSLHealthCheckPortSpecification where
    toQueryParam = \case
        UseFixedPort -> "USE_FIXED_PORT"
        UseNamedPort -> "USE_NAMED_PORT"
        UseServingPort -> "USE_SERVING_PORT"

instance FromJSON SSLHealthCheckPortSpecification where
    parseJSON = parseJSONText "SSLHealthCheckPortSpecification"

instance ToJSON SSLHealthCheckPortSpecification where
    toJSON = toJSONText

-- | This signifies the networking tier used for configuring this access
-- configuration and can only take the following values: PREMIUM, STANDARD.
-- If an AccessConfig is specified without a valid external IP address, an
-- ephemeral IP will be created with this networkTier. If an AccessConfig
-- with a valid external IP address is specified, it must match that of the
-- networkTier associated with the Address resource owning that IP.
data AccessConfigNetworkTier
    = Premium
      -- ^ @PREMIUM@
    | Standard
      -- ^ @STANDARD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AccessConfigNetworkTier

instance FromHttpApiData AccessConfigNetworkTier where
    parseQueryParam = \case
        "PREMIUM" -> Right Premium
        "STANDARD" -> Right Standard
        x -> Left ("Unable to parse AccessConfigNetworkTier from: " <> x)

instance ToHttpApiData AccessConfigNetworkTier where
    toQueryParam = \case
        Premium -> "PREMIUM"
        Standard -> "STANDARD"

instance FromJSON AccessConfigNetworkTier where
    parseJSON = parseJSONText "AccessConfigNetworkTier"

instance ToJSON AccessConfigNetworkTier where
    toJSON = toJSONText

-- | Trusted attributes supplied by any service that owns resources and uses
-- the IAM system for access control.
data ConditionSys
    = CSIP
      -- ^ @IP@
    | CSName
      -- ^ @NAME@
    | CSNoAttr
      -- ^ @NO_ATTR@
    | CSRegion
      -- ^ @REGION@
    | CSService
      -- ^ @SERVICE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionSys

instance FromHttpApiData ConditionSys where
    parseQueryParam = \case
        "IP" -> Right CSIP
        "NAME" -> Right CSName
        "NO_ATTR" -> Right CSNoAttr
        "REGION" -> Right CSRegion
        "SERVICE" -> Right CSService
        x -> Left ("Unable to parse ConditionSys from: " <> x)

instance ToHttpApiData ConditionSys where
    toQueryParam = \case
        CSIP -> "IP"
        CSName -> "NAME"
        CSNoAttr -> "NO_ATTR"
        CSRegion -> "REGION"
        CSService -> "SERVICE"

instance FromJSON ConditionSys where
    parseJSON = parseJSONText "ConditionSys"

instance ToJSON ConditionSys where
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SubnetworkAggregatedListWarningCode
    = SALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | SALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | SALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | SALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | SALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | SALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | SALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | SALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | SALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | SALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | SALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | SALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | SALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | SALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | SALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | SALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubnetworkAggregatedListWarningCode

instance FromHttpApiData SubnetworkAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right SALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right SALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right SALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right SALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right SALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right SALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right SALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right SALWCUndeclaredProperties
        "UNREACHABLE" -> Right SALWCUnreachable
        x -> Left ("Unable to parse SubnetworkAggregatedListWarningCode from: " <> x)

instance ToHttpApiData SubnetworkAggregatedListWarningCode where
    toQueryParam = \case
        SALWCCleanupFailed -> "CLEANUP_FAILED"
        SALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        SALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        SALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        SALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        SALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        SALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        SALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        SALWCUnreachable -> "UNREACHABLE"

instance FromJSON SubnetworkAggregatedListWarningCode where
    parseJSON = parseJSONText "SubnetworkAggregatedListWarningCode"

instance ToJSON SubnetworkAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NetworkEndpointGroupAggregatedListWarningCode
    = NEGALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NEGALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NEGALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NEGALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NEGALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NEGALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NEGALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NEGALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NEGALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NEGALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NEGALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NEGALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NEGALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NEGALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NEGALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NEGALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NEGALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NEGALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NEGALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NEGALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NEGALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NEGALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NEGALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkEndpointGroupAggregatedListWarningCode

instance FromHttpApiData NetworkEndpointGroupAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NEGALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NEGALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NEGALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NEGALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NEGALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NEGALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NEGALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NEGALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NEGALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NEGALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NEGALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NEGALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NEGALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NEGALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NEGALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NEGALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NEGALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NEGALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NEGALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NEGALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NEGALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NEGALWCUndeclaredProperties
        "UNREACHABLE" -> Right NEGALWCUnreachable
        x -> Left ("Unable to parse NetworkEndpointGroupAggregatedListWarningCode from: " <> x)

instance ToHttpApiData NetworkEndpointGroupAggregatedListWarningCode where
    toQueryParam = \case
        NEGALWCCleanupFailed -> "CLEANUP_FAILED"
        NEGALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NEGALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NEGALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NEGALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NEGALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NEGALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NEGALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NEGALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NEGALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NEGALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NEGALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NEGALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NEGALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NEGALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NEGALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NEGALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NEGALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NEGALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NEGALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NEGALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NEGALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NEGALWCUnreachable -> "UNREACHABLE"

instance FromJSON NetworkEndpointGroupAggregatedListWarningCode where
    parseJSON = parseJSONText "NetworkEndpointGroupAggregatedListWarningCode"

instance ToJSON NetworkEndpointGroupAggregatedListWarningCode where
    toJSON = toJSONText

-- | Type of session affinity to use. The default is NONE. When the load
-- balancing scheme is EXTERNAL, can be NONE, CLIENT_IP, or
-- GENERATED_COOKIE. When the load balancing scheme is INTERNAL, can be
-- NONE, CLIENT_IP, CLIENT_IP_PROTO, or CLIENT_IP_PORT_PROTO. When the
-- protocol is UDP, this field is not used.
data BackendServiceSessionAffinity
    = BSSAClientIP
      -- ^ @CLIENT_IP@
    | BSSAClientIPPortProto
      -- ^ @CLIENT_IP_PORT_PROTO@
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
        "CLIENT_IP_PORT_PROTO" -> Right BSSAClientIPPortProto
        "CLIENT_IP_PROTO" -> Right BSSAClientIPProto
        "GENERATED_COOKIE" -> Right BSSAGeneratedCookie
        "NONE" -> Right BSSANone
        x -> Left ("Unable to parse BackendServiceSessionAffinity from: " <> x)

instance ToHttpApiData BackendServiceSessionAffinity where
    toQueryParam = \case
        BSSAClientIP -> "CLIENT_IP"
        BSSAClientIPPortProto -> "CLIENT_IP_PORT_PROTO"
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
    | FRSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | FRSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | FRSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | FRSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | FRSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | FRSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | FRSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | FRSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | FRSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | FRSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | FRSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | FRSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | FRSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingRulesScopedListWarningCode

instance FromHttpApiData ForwardingRulesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right FRSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right FRSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right FRSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right FRSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right FRSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right FRSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right FRSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right FRSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right FRSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right FRSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right FRSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right FRSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right FRSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right FRSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right FRSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right FRSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right FRSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right FRSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right FRSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right FRSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right FRSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right FRSLWCUndeclaredProperties
        "UNREACHABLE" -> Right FRSLWCUnreachable
        x -> Left ("Unable to parse ForwardingRulesScopedListWarningCode from: " <> x)

instance ToHttpApiData ForwardingRulesScopedListWarningCode where
    toQueryParam = \case
        FRSLWCCleanupFailed -> "CLEANUP_FAILED"
        FRSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        FRSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        FRSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        FRSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        FRSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        FRSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        FRSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        FRSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        FRSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        FRSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        FRSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        FRSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        FRSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        FRSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        FRSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        FRSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        FRSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        FRSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        FRSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        FRSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        FRSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        FRSLWCUnreachable -> "UNREACHABLE"

instance FromJSON ForwardingRulesScopedListWarningCode where
    parseJSON = parseJSONText "ForwardingRulesScopedListWarningCode"

instance ToJSON ForwardingRulesScopedListWarningCode where
    toJSON = toJSONText

-- | Health state of the network endpoint determined based on the health
-- checks configured.
data HealthStatusForNetworkEndpointHealthState
    = Draining
      -- ^ @DRAINING@
    | Healthy
      -- ^ @HEALTHY@
    | Unhealthy
      -- ^ @UNHEALTHY@
    | Unknown
      -- ^ @UNKNOWN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HealthStatusForNetworkEndpointHealthState

instance FromHttpApiData HealthStatusForNetworkEndpointHealthState where
    parseQueryParam = \case
        "DRAINING" -> Right Draining
        "HEALTHY" -> Right Healthy
        "UNHEALTHY" -> Right Unhealthy
        "UNKNOWN" -> Right Unknown
        x -> Left ("Unable to parse HealthStatusForNetworkEndpointHealthState from: " <> x)

instance ToHttpApiData HealthStatusForNetworkEndpointHealthState where
    toQueryParam = \case
        Draining -> "DRAINING"
        Healthy -> "HEALTHY"
        Unhealthy -> "UNHEALTHY"
        Unknown -> "UNKNOWN"

instance FromJSON HealthStatusForNetworkEndpointHealthState where
    parseJSON = parseJSONText "HealthStatusForNetworkEndpointHealthState"

instance ToJSON HealthStatusForNetworkEndpointHealthState where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data OperationsScopedListWarningCode
    = OSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | OSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | OSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | OSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | OSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | OSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | OSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | OSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | OSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | OSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationsScopedListWarningCode

instance FromHttpApiData OperationsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right OSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right OSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right OSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right OSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right OSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right OSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right OSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right OSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right OSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right OSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right OSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right OSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right OSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right OSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right OSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right OSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right OSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right OSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right OSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right OSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right OSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right OSLWCUndeclaredProperties
        "UNREACHABLE" -> Right OSLWCUnreachable
        x -> Left ("Unable to parse OperationsScopedListWarningCode from: " <> x)

instance ToHttpApiData OperationsScopedListWarningCode where
    toQueryParam = \case
        OSLWCCleanupFailed -> "CLEANUP_FAILED"
        OSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        OSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        OSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        OSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        OSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        OSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        OSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        OSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        OSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        OSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        OSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        OSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        OSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        OSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        OSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        OSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        OSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        OSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        OSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        OSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        OSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        OSLWCUnreachable -> "UNREACHABLE"

instance FromJSON OperationsScopedListWarningCode where
    parseJSON = parseJSONText "OperationsScopedListWarningCode"

instance ToJSON OperationsScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data OperationAggregatedListWarningCode
    = OALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | OALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | OALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | OALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | OALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | OALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | OALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | OALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | OALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | OALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationAggregatedListWarningCode

instance FromHttpApiData OperationAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right OALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right OALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right OALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right OALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right OALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right OALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right OALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right OALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right OALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right OALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right OALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right OALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right OALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right OALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right OALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right OALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right OALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right OALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right OALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right OALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right OALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right OALWCUndeclaredProperties
        "UNREACHABLE" -> Right OALWCUnreachable
        x -> Left ("Unable to parse OperationAggregatedListWarningCode from: " <> x)

instance ToHttpApiData OperationAggregatedListWarningCode where
    toQueryParam = \case
        OALWCCleanupFailed -> "CLEANUP_FAILED"
        OALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        OALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        OALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        OALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        OALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        OALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        OALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        OALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        OALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        OALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        OALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        OALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        OALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        OALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        OALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        OALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        OALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        OALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        OALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        OALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        OALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        OALWCUnreachable -> "UNREACHABLE"

instance FromJSON OperationAggregatedListWarningCode where
    parseJSON = parseJSONText "OperationAggregatedListWarningCode"

instance ToJSON OperationAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data DiskAggregatedListWarningCode
    = DALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | DALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | DALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | DALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | DALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | DALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | DALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | DALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | DALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiskAggregatedListWarningCode

instance FromHttpApiData DiskAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right DALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right DALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right DALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right DALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right DALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right DALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right DALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right DALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right DALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right DALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right DALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right DALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right DALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right DALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right DALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right DALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right DALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right DALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right DALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right DALWCUndeclaredProperties
        "UNREACHABLE" -> Right DALWCUnreachable
        x -> Left ("Unable to parse DiskAggregatedListWarningCode from: " <> x)

instance ToHttpApiData DiskAggregatedListWarningCode where
    toQueryParam = \case
        DALWCCleanupFailed -> "CLEANUP_FAILED"
        DALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        DALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        DALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        DALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        DALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        DALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        DALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        DALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        DALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        DALWCUnreachable -> "UNREACHABLE"

instance FromJSON DiskAggregatedListWarningCode where
    parseJSON = parseJSONText "DiskAggregatedListWarningCode"

instance ToJSON DiskAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data UsableSubnetworksAggregatedListWarningCode
    = USALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | USALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | USALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | USALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | USALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | USALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | USALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | USALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | USALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | USALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | USALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | USALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | USALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | USALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | USALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | USALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | USALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | USALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | USALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | USALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | USALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | USALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | USALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsableSubnetworksAggregatedListWarningCode

instance FromHttpApiData UsableSubnetworksAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right USALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right USALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right USALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right USALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right USALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right USALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right USALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right USALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right USALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right USALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right USALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right USALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right USALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right USALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right USALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right USALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right USALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right USALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right USALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right USALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right USALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right USALWCUndeclaredProperties
        "UNREACHABLE" -> Right USALWCUnreachable
        x -> Left ("Unable to parse UsableSubnetworksAggregatedListWarningCode from: " <> x)

instance ToHttpApiData UsableSubnetworksAggregatedListWarningCode where
    toQueryParam = \case
        USALWCCleanupFailed -> "CLEANUP_FAILED"
        USALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        USALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        USALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        USALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        USALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        USALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        USALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        USALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        USALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        USALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        USALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        USALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        USALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        USALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        USALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        USALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        USALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        USALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        USALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        USALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        USALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        USALWCUnreachable -> "UNREACHABLE"

instance FromJSON UsableSubnetworksAggregatedListWarningCode where
    parseJSON = parseJSONText "UsableSubnetworksAggregatedListWarningCode"

instance ToJSON UsableSubnetworksAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data DisksScopedListWarningCode
    = DSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | DSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | DSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | DSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | DSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | DSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | DSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | DSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | DSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DisksScopedListWarningCode

instance FromHttpApiData DisksScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right DSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right DSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right DSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right DSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right DSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right DSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right DSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right DSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right DSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right DSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right DSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right DSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right DSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right DSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right DSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right DSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right DSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right DSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right DSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right DSLWCUndeclaredProperties
        "UNREACHABLE" -> Right DSLWCUnreachable
        x -> Left ("Unable to parse DisksScopedListWarningCode from: " <> x)

instance ToHttpApiData DisksScopedListWarningCode where
    toQueryParam = \case
        DSLWCCleanupFailed -> "CLEANUP_FAILED"
        DSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        DSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        DSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        DSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        DSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        DSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        DSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        DSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        DSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
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
    | IGMSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IGMSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGMSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IGMSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IGMSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IGMSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGMSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | IGMSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IGMSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGMSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IGMSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGMSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IGMSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupManagersScopedListWarningCode

instance FromHttpApiData InstanceGroupManagersScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGMSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGMSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IGMSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGMSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IGMSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IGMSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IGMSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGMSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IGMSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGMSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGMSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGMSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGMSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGMSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGMSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGMSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGMSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IGMSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IGMSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IGMSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGMSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IGMSLWCUndeclaredProperties
        "UNREACHABLE" -> Right IGMSLWCUnreachable
        x -> Left ("Unable to parse InstanceGroupManagersScopedListWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupManagersScopedListWarningCode where
    toQueryParam = \case
        IGMSLWCCleanupFailed -> "CLEANUP_FAILED"
        IGMSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGMSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IGMSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGMSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IGMSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IGMSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IGMSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGMSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IGMSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGMSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGMSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGMSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGMSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGMSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGMSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGMSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGMSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IGMSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGMSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IGMSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGMSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IGMSLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupManagersScopedListWarningCode where
    parseJSON = parseJSONText "InstanceGroupManagersScopedListWarningCode"

instance ToJSON InstanceGroupManagersScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SSLPolicyWarningsItemCode
    = SPWICCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SPWICDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SPWICDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | SPWICDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SPWICExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | SPWICExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | SPWICFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | SPWICInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SPWICMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | SPWICNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | SPWICNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | SPWICNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | SPWICNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | SPWICNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | SPWICNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | SPWICNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | SPWICRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | SPWICResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | SPWICResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SPWICSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SPWICSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SPWICUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | SPWICUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SSLPolicyWarningsItemCode

instance FromHttpApiData SSLPolicyWarningsItemCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SPWICCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SPWICDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right SPWICDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SPWICDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right SPWICExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right SPWICExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right SPWICFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SPWICInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right SPWICMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SPWICNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SPWICNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SPWICNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SPWICNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SPWICNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SPWICNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SPWICNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SPWICRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right SPWICResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right SPWICResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SPWICSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SPWICSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right SPWICUndeclaredProperties
        "UNREACHABLE" -> Right SPWICUnreachable
        x -> Left ("Unable to parse SSLPolicyWarningsItemCode from: " <> x)

instance ToHttpApiData SSLPolicyWarningsItemCode where
    toQueryParam = \case
        SPWICCleanupFailed -> "CLEANUP_FAILED"
        SPWICDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SPWICDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        SPWICDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SPWICExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        SPWICExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SPWICFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        SPWICInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SPWICMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        SPWICNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SPWICNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SPWICNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SPWICNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SPWICNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SPWICNotCriticalError -> "NOT_CRITICAL_ERROR"
        SPWICNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SPWICRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SPWICResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        SPWICResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SPWICSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SPWICSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SPWICUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        SPWICUnreachable -> "UNREACHABLE"

instance FromJSON SSLPolicyWarningsItemCode where
    parseJSON = parseJSONText "SSLPolicyWarningsItemCode"

instance ToJSON SSLPolicyWarningsItemCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data ForwardingRuleAggregatedListWarningCode
    = FRALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | FRALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | FRALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | FRALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | FRALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | FRALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | FRALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | FRALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | FRALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | FRALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | FRALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | FRALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | FRALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | FRALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | FRALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | FRALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | FRALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | FRALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | FRALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | FRALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | FRALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | FRALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | FRALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingRuleAggregatedListWarningCode

instance FromHttpApiData ForwardingRuleAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right FRALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right FRALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right FRALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right FRALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right FRALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right FRALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right FRALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right FRALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right FRALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right FRALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right FRALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right FRALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right FRALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right FRALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right FRALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right FRALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right FRALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right FRALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right FRALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right FRALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right FRALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right FRALWCUndeclaredProperties
        "UNREACHABLE" -> Right FRALWCUnreachable
        x -> Left ("Unable to parse ForwardingRuleAggregatedListWarningCode from: " <> x)

instance ToHttpApiData ForwardingRuleAggregatedListWarningCode where
    toQueryParam = \case
        FRALWCCleanupFailed -> "CLEANUP_FAILED"
        FRALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        FRALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        FRALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        FRALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        FRALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        FRALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        FRALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        FRALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        FRALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        FRALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        FRALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        FRALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        FRALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        FRALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        FRALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        FRALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        FRALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        FRALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        FRALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        FRALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        FRALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        FRALWCUnreachable -> "UNREACHABLE"

instance FromJSON ForwardingRuleAggregatedListWarningCode where
    parseJSON = parseJSONText "ForwardingRuleAggregatedListWarningCode"

instance ToJSON ForwardingRuleAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetPoolAggregatedListWarningCode
    = TPALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TPALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TPALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TPALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TPALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TPALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TPALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TPALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TPALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | TPALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TPALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TPALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TPALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TPALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TPALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TPALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TPALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TPALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TPALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TPALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TPALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TPALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TPALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetPoolAggregatedListWarningCode

instance FromHttpApiData TargetPoolAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TPALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TPALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TPALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TPALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TPALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TPALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TPALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TPALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TPALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TPALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TPALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TPALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TPALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TPALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TPALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TPALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TPALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TPALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TPALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TPALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TPALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TPALWCUndeclaredProperties
        "UNREACHABLE" -> Right TPALWCUnreachable
        x -> Left ("Unable to parse TargetPoolAggregatedListWarningCode from: " <> x)

instance ToHttpApiData TargetPoolAggregatedListWarningCode where
    toQueryParam = \case
        TPALWCCleanupFailed -> "CLEANUP_FAILED"
        TPALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TPALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TPALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TPALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TPALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TPALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TPALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TPALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TPALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TPALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TPALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TPALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TPALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TPALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TPALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TPALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TPALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TPALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TPALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TPALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TPALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TPALWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetPoolAggregatedListWarningCode where
    parseJSON = parseJSONText "TargetPoolAggregatedListWarningCode"

instance ToJSON TargetPoolAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetPoolsScopedListWarningCode
    = TPSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TPSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TPSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TPSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TPSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TPSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TPSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TPSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TPSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | TPSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TPSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TPSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TPSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TPSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TPSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetPoolsScopedListWarningCode

instance FromHttpApiData TargetPoolsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TPSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TPSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TPSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TPSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TPSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TPSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TPSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TPSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TPSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TPSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TPSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TPSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TPSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TPSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TPSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TPSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TPSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TPSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TPSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TPSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TPSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TPSLWCUndeclaredProperties
        "UNREACHABLE" -> Right TPSLWCUnreachable
        x -> Left ("Unable to parse TargetPoolsScopedListWarningCode from: " <> x)

instance ToHttpApiData TargetPoolsScopedListWarningCode where
    toQueryParam = \case
        TPSLWCCleanupFailed -> "CLEANUP_FAILED"
        TPSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TPSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TPSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TPSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TPSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TPSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TPSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TPSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TPSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TPSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TPSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TPSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TPSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TPSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TPSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TPSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TPSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TPSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TPSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TPSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TPSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TPSLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetPoolsScopedListWarningCode where
    parseJSON = parseJSONText "TargetPoolsScopedListWarningCode"

instance ToJSON TargetPoolsScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetInstanceListWarningCode
    = TILWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TILWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TILWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TILWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TILWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TILWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TILWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TILWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TILWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | TILWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TILWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TILWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TILWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TILWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TILWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TILWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TILWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TILWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TILWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TILWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TILWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TILWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TILWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetInstanceListWarningCode

instance FromHttpApiData TargetInstanceListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TILWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TILWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TILWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TILWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TILWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TILWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TILWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TILWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TILWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TILWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TILWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TILWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TILWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TILWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TILWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TILWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TILWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TILWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TILWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TILWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TILWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TILWCUndeclaredProperties
        "UNREACHABLE" -> Right TILWCUnreachable
        x -> Left ("Unable to parse TargetInstanceListWarningCode from: " <> x)

instance ToHttpApiData TargetInstanceListWarningCode where
    toQueryParam = \case
        TILWCCleanupFailed -> "CLEANUP_FAILED"
        TILWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TILWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TILWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TILWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TILWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TILWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TILWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TILWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TILWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TILWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TILWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TILWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TILWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TILWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TILWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TILWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TILWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TILWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TILWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TILWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TILWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TILWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetInstanceListWarningCode where
    parseJSON = parseJSONText "TargetInstanceListWarningCode"

instance ToJSON TargetInstanceListWarningCode where
    toJSON = toJSONText

-- | Identifies the network presence of this location.
data InterconnectLocationRegionInfoLocationPresence
    = Global
      -- ^ @GLOBAL@
    | LocalRegion
      -- ^ @LOCAL_REGION@
    | LpGlobal
      -- ^ @LP_GLOBAL@
    | LpLocalRegion
      -- ^ @LP_LOCAL_REGION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectLocationRegionInfoLocationPresence

instance FromHttpApiData InterconnectLocationRegionInfoLocationPresence where
    parseQueryParam = \case
        "GLOBAL" -> Right Global
        "LOCAL_REGION" -> Right LocalRegion
        "LP_GLOBAL" -> Right LpGlobal
        "LP_LOCAL_REGION" -> Right LpLocalRegion
        x -> Left ("Unable to parse InterconnectLocationRegionInfoLocationPresence from: " <> x)

instance ToHttpApiData InterconnectLocationRegionInfoLocationPresence where
    toQueryParam = \case
        Global -> "GLOBAL"
        LocalRegion -> "LOCAL_REGION"
        LpGlobal -> "LP_GLOBAL"
        LpLocalRegion -> "LP_LOCAL_REGION"

instance FromJSON InterconnectLocationRegionInfoLocationPresence where
    parseJSON = parseJSONText "InterconnectLocationRegionInfoLocationPresence"

instance ToJSON InterconnectLocationRegionInfoLocationPresence where
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

-- | [Output Only] The status of the VPN gateway, which can be one of the
-- following: CREATING, READY, FAILED, or DELETING.
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceGroupManagerAggregatedListWarningCode
    = IGMALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IGMALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGMALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IGMALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGMALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IGMALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IGMALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IGMALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGMALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IGMALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGMALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGMALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGMALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGMALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGMALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGMALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGMALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGMALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IGMALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGMALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IGMALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGMALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IGMALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupManagerAggregatedListWarningCode

instance FromHttpApiData InstanceGroupManagerAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGMALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGMALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IGMALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGMALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IGMALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IGMALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IGMALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGMALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IGMALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGMALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGMALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGMALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGMALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGMALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGMALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGMALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGMALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IGMALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IGMALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IGMALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGMALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IGMALWCUndeclaredProperties
        "UNREACHABLE" -> Right IGMALWCUnreachable
        x -> Left ("Unable to parse InstanceGroupManagerAggregatedListWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupManagerAggregatedListWarningCode where
    toQueryParam = \case
        IGMALWCCleanupFailed -> "CLEANUP_FAILED"
        IGMALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGMALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IGMALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGMALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IGMALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IGMALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IGMALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGMALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IGMALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGMALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGMALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGMALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGMALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGMALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGMALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGMALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGMALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IGMALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGMALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IGMALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGMALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IGMALWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupManagerAggregatedListWarningCode where
    parseJSON = parseJSONText "InstanceGroupManagerAggregatedListWarningCode"

instance ToJSON InstanceGroupManagerAggregatedListWarningCode where
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

-- | Preconfigured versioned expression. If this field is specified, config
-- must also be specified. Available preconfigured expressions along with
-- their requirements are: SRC_IPS_V1 - must specify the corresponding
-- src_ip_range field in config.
data SecurityPolicyRuleMatcherVersionedExpr
    = SrcIPsV1
      -- ^ @SRC_IPS_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SecurityPolicyRuleMatcherVersionedExpr

instance FromHttpApiData SecurityPolicyRuleMatcherVersionedExpr where
    parseQueryParam = \case
        "SRC_IPS_V1" -> Right SrcIPsV1
        x -> Left ("Unable to parse SecurityPolicyRuleMatcherVersionedExpr from: " <> x)

instance ToHttpApiData SecurityPolicyRuleMatcherVersionedExpr where
    toQueryParam = \case
        SrcIPsV1 -> "SRC_IPS_V1"

instance FromJSON SecurityPolicyRuleMatcherVersionedExpr where
    parseJSON = parseJSONText "SecurityPolicyRuleMatcherVersionedExpr"

instance ToJSON SecurityPolicyRuleMatcherVersionedExpr where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AutoscalerListWarningCode
    = ALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalerListWarningCode

instance FromHttpApiData AutoscalerListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ALWCUndeclaredProperties
        "UNREACHABLE" -> Right ALWCUnreachable
        x -> Left ("Unable to parse AutoscalerListWarningCode from: " <> x)

instance ToHttpApiData AutoscalerListWarningCode where
    toQueryParam = \case
        ALWCCleanupFailed -> "CLEANUP_FAILED"
        ALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ALWCUnreachable -> "UNREACHABLE"

instance FromJSON AutoscalerListWarningCode where
    parseJSON = parseJSONText "AutoscalerListWarningCode"

instance ToJSON AutoscalerListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data DiskTypeListWarningCode
    = DTLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DTLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DTLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | DTLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DTLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | DTLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | DTLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | DTLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DTLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | DTLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DTLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DTLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DTLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DTLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DTLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DTLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DTLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DTLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | DTLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DTLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | DTLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DTLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | DTLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiskTypeListWarningCode

instance FromHttpApiData DiskTypeListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right DTLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DTLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right DTLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DTLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right DTLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right DTLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right DTLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right DTLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right DTLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right DTLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right DTLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right DTLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right DTLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right DTLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right DTLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right DTLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right DTLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right DTLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right DTLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right DTLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right DTLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right DTLWCUndeclaredProperties
        "UNREACHABLE" -> Right DTLWCUnreachable
        x -> Left ("Unable to parse DiskTypeListWarningCode from: " <> x)

instance ToHttpApiData DiskTypeListWarningCode where
    toQueryParam = \case
        DTLWCCleanupFailed -> "CLEANUP_FAILED"
        DTLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DTLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        DTLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DTLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        DTLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        DTLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        DTLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DTLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        DTLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DTLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DTLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DTLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DTLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DTLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        DTLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DTLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DTLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        DTLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DTLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        DTLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DTLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        DTLWCUnreachable -> "UNREACHABLE"

instance FromJSON DiskTypeListWarningCode where
    parseJSON = parseJSONText "DiskTypeListWarningCode"

instance ToJSON DiskTypeListWarningCode where
    toJSON = toJSONText

-- | The purpose of resource, only used with INTERNAL type.
data AddressPurpose
    = DNSResolver
      -- ^ @DNS_RESOLVER@
    | GceEndpoint
      -- ^ @GCE_ENDPOINT@
    | NATAuto
      -- ^ @NAT_AUTO@
    | VPCPeering
      -- ^ @VPC_PEERING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressPurpose

instance FromHttpApiData AddressPurpose where
    parseQueryParam = \case
        "DNS_RESOLVER" -> Right DNSResolver
        "GCE_ENDPOINT" -> Right GceEndpoint
        "NAT_AUTO" -> Right NATAuto
        "VPC_PEERING" -> Right VPCPeering
        x -> Left ("Unable to parse AddressPurpose from: " <> x)

instance ToHttpApiData AddressPurpose where
    toQueryParam = \case
        DNSResolver -> "DNS_RESOLVER"
        GceEndpoint -> "GCE_ENDPOINT"
        NATAuto -> "NAT_AUTO"
        VPCPeering -> "VPC_PEERING"

instance FromJSON AddressPurpose where
    parseJSON = parseJSONText "AddressPurpose"

instance ToJSON AddressPurpose where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NodeTypeAggregatedListWarningCode
    = NTALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NTALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NTALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NTALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NTALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NTALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NTALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NTALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NTALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NTALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NTALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NTALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NTALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NTALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NTALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NTALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NTALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NTALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NTALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NTALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NTALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NTALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NTALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeTypeAggregatedListWarningCode

instance FromHttpApiData NodeTypeAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NTALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NTALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NTALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NTALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NTALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NTALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NTALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NTALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NTALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NTALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NTALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NTALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NTALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NTALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NTALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NTALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NTALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NTALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NTALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NTALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NTALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NTALWCUndeclaredProperties
        "UNREACHABLE" -> Right NTALWCUnreachable
        x -> Left ("Unable to parse NodeTypeAggregatedListWarningCode from: " <> x)

instance ToHttpApiData NodeTypeAggregatedListWarningCode where
    toQueryParam = \case
        NTALWCCleanupFailed -> "CLEANUP_FAILED"
        NTALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NTALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NTALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NTALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NTALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NTALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NTALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NTALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NTALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NTALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NTALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NTALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NTALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NTALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NTALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NTALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NTALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NTALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NTALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NTALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NTALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NTALWCUnreachable -> "UNREACHABLE"

instance FromJSON NodeTypeAggregatedListWarningCode where
    parseJSON = parseJSONText "NodeTypeAggregatedListWarningCode"

instance ToJSON NodeTypeAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetInstancesScopedListWarningCode
    = TISLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TISLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TISLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TISLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TISLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TISLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TISLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TISLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TISLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | TISLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TISLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TISLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TISLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TISLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TISLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetInstancesScopedListWarningCode

instance FromHttpApiData TargetInstancesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TISLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TISLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TISLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TISLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TISLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TISLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TISLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TISLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TISLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TISLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TISLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TISLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TISLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TISLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TISLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TISLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TISLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TISLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TISLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TISLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TISLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TISLWCUndeclaredProperties
        "UNREACHABLE" -> Right TISLWCUnreachable
        x -> Left ("Unable to parse TargetInstancesScopedListWarningCode from: " <> x)

instance ToHttpApiData TargetInstancesScopedListWarningCode where
    toQueryParam = \case
        TISLWCCleanupFailed -> "CLEANUP_FAILED"
        TISLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TISLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TISLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TISLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TISLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TISLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TISLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TISLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TISLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TISLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TISLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TISLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TISLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TISLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TISLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TISLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TISLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TISLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TISLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TISLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TISLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TISLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetInstancesScopedListWarningCode where
    parseJSON = parseJSONText "TargetInstancesScopedListWarningCode"

instance ToJSON TargetInstancesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data VPNTunnelAggregatedListWarningCode
    = VTALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | VTALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | VTALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | VTALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | VTALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | VTALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | VTALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | VTALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | VTALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | VTALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | VTALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | VTALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | VTALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | VTALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | VTALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | VTALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | VTALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | VTALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | VTALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | VTALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | VTALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | VTALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | VTALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VPNTunnelAggregatedListWarningCode

instance FromHttpApiData VPNTunnelAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right VTALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right VTALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right VTALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right VTALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right VTALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right VTALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right VTALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right VTALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right VTALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right VTALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right VTALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right VTALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right VTALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right VTALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right VTALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right VTALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right VTALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right VTALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right VTALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right VTALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right VTALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right VTALWCUndeclaredProperties
        "UNREACHABLE" -> Right VTALWCUnreachable
        x -> Left ("Unable to parse VPNTunnelAggregatedListWarningCode from: " <> x)

instance ToHttpApiData VPNTunnelAggregatedListWarningCode where
    toQueryParam = \case
        VTALWCCleanupFailed -> "CLEANUP_FAILED"
        VTALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        VTALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        VTALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        VTALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        VTALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        VTALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        VTALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        VTALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        VTALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        VTALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        VTALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        VTALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        VTALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        VTALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        VTALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        VTALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        VTALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        VTALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        VTALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        VTALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        VTALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        VTALWCUnreachable -> "UNREACHABLE"

instance FromJSON VPNTunnelAggregatedListWarningCode where
    parseJSON = parseJSONText "VPNTunnelAggregatedListWarningCode"

instance ToJSON VPNTunnelAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetHTTPProxyListWarningCode
    = THTTPPLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | THTTPPLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | THTTPPLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | THTTPPLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | THTTPPLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | THTTPPLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | THTTPPLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | THTTPPLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | THTTPPLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | THTTPPLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | THTTPPLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | THTTPPLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | THTTPPLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | THTTPPLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | THTTPPLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | THTTPPLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | THTTPPLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | THTTPPLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | THTTPPLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | THTTPPLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | THTTPPLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | THTTPPLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | THTTPPLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetHTTPProxyListWarningCode

instance FromHttpApiData TargetHTTPProxyListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right THTTPPLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right THTTPPLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right THTTPPLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right THTTPPLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right THTTPPLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right THTTPPLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right THTTPPLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right THTTPPLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right THTTPPLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right THTTPPLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right THTTPPLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right THTTPPLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right THTTPPLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right THTTPPLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right THTTPPLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right THTTPPLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right THTTPPLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right THTTPPLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right THTTPPLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right THTTPPLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right THTTPPLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right THTTPPLWCUndeclaredProperties
        "UNREACHABLE" -> Right THTTPPLWCUnreachable
        x -> Left ("Unable to parse TargetHTTPProxyListWarningCode from: " <> x)

instance ToHttpApiData TargetHTTPProxyListWarningCode where
    toQueryParam = \case
        THTTPPLWCCleanupFailed -> "CLEANUP_FAILED"
        THTTPPLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        THTTPPLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        THTTPPLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        THTTPPLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        THTTPPLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        THTTPPLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        THTTPPLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        THTTPPLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        THTTPPLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        THTTPPLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        THTTPPLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        THTTPPLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        THTTPPLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        THTTPPLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        THTTPPLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        THTTPPLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        THTTPPLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        THTTPPLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        THTTPPLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        THTTPPLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        THTTPPLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        THTTPPLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetHTTPProxyListWarningCode where
    parseJSON = parseJSONText "TargetHTTPProxyListWarningCode"

instance ToJSON TargetHTTPProxyListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data MachineTypeListWarningCode
    = MTLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | MTLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | MTLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | MTLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | MTLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | MTLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | MTLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | MTLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | MTLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | MTLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | MTLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | MTLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | MTLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | MTLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | MTLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | MTLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | MTLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | MTLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | MTLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | MTLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | MTLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | MTLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | MTLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MachineTypeListWarningCode

instance FromHttpApiData MachineTypeListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right MTLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right MTLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right MTLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right MTLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right MTLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right MTLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right MTLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right MTLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right MTLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right MTLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right MTLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right MTLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right MTLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right MTLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right MTLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right MTLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right MTLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right MTLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right MTLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right MTLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right MTLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right MTLWCUndeclaredProperties
        "UNREACHABLE" -> Right MTLWCUnreachable
        x -> Left ("Unable to parse MachineTypeListWarningCode from: " <> x)

instance ToHttpApiData MachineTypeListWarningCode where
    toQueryParam = \case
        MTLWCCleanupFailed -> "CLEANUP_FAILED"
        MTLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        MTLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        MTLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        MTLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        MTLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        MTLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        MTLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        MTLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        MTLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        MTLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        MTLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        MTLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        MTLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        MTLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        MTLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        MTLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        MTLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        MTLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        MTLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        MTLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        MTLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        MTLWCUnreachable -> "UNREACHABLE"

instance FromJSON MachineTypeListWarningCode where
    parseJSON = parseJSONText "MachineTypeListWarningCode"

instance ToJSON MachineTypeListWarningCode where
    toJSON = toJSONText

-- | The ID of a supported feature. Read Enabling guest operating system
-- features to see a list of available options.
data GuestOSFeatureType
    = FeatureTypeUnspecified
      -- ^ @FEATURE_TYPE_UNSPECIFIED@
    | MultiIPSubnet
      -- ^ @MULTI_IP_SUBNET@
    | SecureBoot
      -- ^ @SECURE_BOOT@
    | UefiCompatible
      -- ^ @UEFI_COMPATIBLE@
    | VirtioScsiMultiQueue
      -- ^ @VIRTIO_SCSI_MULTIQUEUE@
    | Windows
      -- ^ @WINDOWS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GuestOSFeatureType

instance FromHttpApiData GuestOSFeatureType where
    parseQueryParam = \case
        "FEATURE_TYPE_UNSPECIFIED" -> Right FeatureTypeUnspecified
        "MULTI_IP_SUBNET" -> Right MultiIPSubnet
        "SECURE_BOOT" -> Right SecureBoot
        "UEFI_COMPATIBLE" -> Right UefiCompatible
        "VIRTIO_SCSI_MULTIQUEUE" -> Right VirtioScsiMultiQueue
        "WINDOWS" -> Right Windows
        x -> Left ("Unable to parse GuestOSFeatureType from: " <> x)

instance ToHttpApiData GuestOSFeatureType where
    toQueryParam = \case
        FeatureTypeUnspecified -> "FEATURE_TYPE_UNSPECIFIED"
        MultiIPSubnet -> "MULTI_IP_SUBNET"
        SecureBoot -> "SECURE_BOOT"
        UefiCompatible -> "UEFI_COMPATIBLE"
        VirtioScsiMultiQueue -> "VIRTIO_SCSI_MULTIQUEUE"
        Windows -> "WINDOWS"

instance FromJSON GuestOSFeatureType where
    parseJSON = parseJSONText "GuestOSFeatureType"

instance ToJSON GuestOSFeatureType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RouteWarningsItemCode
    = RWICCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RWICDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RWICDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RWICDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RWICExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RWICExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RWICFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RWICInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RWICMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | RWICResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RWICResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RWICSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RWICSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RWICUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RWICUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouteWarningsItemCode

instance FromHttpApiData RouteWarningsItemCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RWICCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RWICDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RWICDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RWICDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RWICExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RWICExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RWICFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RWICInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RWICMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RWICNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RWICNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RWICNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RWICNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RWICNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RWICNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RWICNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RWICRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RWICResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RWICResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RWICSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RWICSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RWICUndeclaredProperties
        "UNREACHABLE" -> Right RWICUnreachable
        x -> Left ("Unable to parse RouteWarningsItemCode from: " <> x)

instance ToHttpApiData RouteWarningsItemCode where
    toQueryParam = \case
        RWICCleanupFailed -> "CLEANUP_FAILED"
        RWICDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RWICDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RWICDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RWICExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RWICExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RWICFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RWICInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RWICMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RWICNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RWICNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RWICNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RWICNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RWICNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RWICNotCriticalError -> "NOT_CRITICAL_ERROR"
        RWICNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RWICRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RWICResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RWICResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RWICSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RWICSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RWICUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RWICUnreachable -> "UNREACHABLE"

instance FromJSON RouteWarningsItemCode where
    parseJSON = parseJSONText "RouteWarningsItemCode"

instance ToJSON RouteWarningsItemCode where
    toJSON = toJSONText

-- | User-specified flag to indicate which mode to use for advertisement.
data RouterBGPPeerAdvertiseMode
    = RBPAMCustom
      -- ^ @CUSTOM@
    | RBPAMDefault
      -- ^ @DEFAULT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterBGPPeerAdvertiseMode

instance FromHttpApiData RouterBGPPeerAdvertiseMode where
    parseQueryParam = \case
        "CUSTOM" -> Right RBPAMCustom
        "DEFAULT" -> Right RBPAMDefault
        x -> Left ("Unable to parse RouterBGPPeerAdvertiseMode from: " <> x)

instance ToHttpApiData RouterBGPPeerAdvertiseMode where
    toQueryParam = \case
        RBPAMCustom -> "CUSTOM"
        RBPAMDefault -> "DEFAULT"

instance FromJSON RouterBGPPeerAdvertiseMode where
    parseJSON = parseJSONText "RouterBGPPeerAdvertiseMode"

instance ToJSON RouterBGPPeerAdvertiseMode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RegionInstanceGroupManagerListWarningCode
    = RIGMLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RIGMLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RIGMLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RIGMLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RIGMLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RIGMLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RIGMLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RIGMLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RIGMLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | RIGMLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RIGMLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RIGMLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RIGMLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RIGMLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RIGMLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RIGMLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RIGMLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RIGMLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RIGMLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RIGMLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RIGMLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RIGMLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RIGMLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RegionInstanceGroupManagerListWarningCode

instance FromHttpApiData RegionInstanceGroupManagerListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RIGMLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RIGMLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RIGMLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RIGMLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RIGMLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RIGMLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RIGMLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RIGMLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RIGMLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RIGMLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RIGMLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RIGMLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RIGMLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RIGMLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RIGMLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RIGMLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RIGMLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RIGMLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RIGMLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RIGMLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RIGMLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RIGMLWCUndeclaredProperties
        "UNREACHABLE" -> Right RIGMLWCUnreachable
        x -> Left ("Unable to parse RegionInstanceGroupManagerListWarningCode from: " <> x)

instance ToHttpApiData RegionInstanceGroupManagerListWarningCode where
    toQueryParam = \case
        RIGMLWCCleanupFailed -> "CLEANUP_FAILED"
        RIGMLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RIGMLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RIGMLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RIGMLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RIGMLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RIGMLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RIGMLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RIGMLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RIGMLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RIGMLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RIGMLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RIGMLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RIGMLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RIGMLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        RIGMLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RIGMLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RIGMLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RIGMLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RIGMLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RIGMLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RIGMLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RIGMLWCUnreachable -> "UNREACHABLE"

instance FromJSON RegionInstanceGroupManagerListWarningCode where
    parseJSON = parseJSONText "RegionInstanceGroupManagerListWarningCode"

instance ToJSON RegionInstanceGroupManagerListWarningCode where
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
data NodeTemplateAggregatedListWarningCode
    = NCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeTemplateAggregatedListWarningCode

instance FromHttpApiData NodeTemplateAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NUndeclaredProperties
        "UNREACHABLE" -> Right NUnreachable
        x -> Left ("Unable to parse NodeTemplateAggregatedListWarningCode from: " <> x)

instance ToHttpApiData NodeTemplateAggregatedListWarningCode where
    toQueryParam = \case
        NCleanupFailed -> "CLEANUP_FAILED"
        NDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NNotCriticalError -> "NOT_CRITICAL_ERROR"
        NNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NUnreachable -> "UNREACHABLE"

instance FromJSON NodeTemplateAggregatedListWarningCode where
    parseJSON = parseJSONText "NodeTemplateAggregatedListWarningCode"

instance ToJSON NodeTemplateAggregatedListWarningCode where
    toJSON = toJSONText

-- | Required
data RuleAction
    = Allow
      -- ^ @ALLOW@
    | AllowWithLog
      -- ^ @ALLOW_WITH_LOG@
    | Deny
      -- ^ @DENY@
    | DenyWithLog
      -- ^ @DENY_WITH_LOG@
    | Log
      -- ^ @LOG@
    | NoAction
      -- ^ @NO_ACTION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RuleAction

instance FromHttpApiData RuleAction where
    parseQueryParam = \case
        "ALLOW" -> Right Allow
        "ALLOW_WITH_LOG" -> Right AllowWithLog
        "DENY" -> Right Deny
        "DENY_WITH_LOG" -> Right DenyWithLog
        "LOG" -> Right Log
        "NO_ACTION" -> Right NoAction
        x -> Left ("Unable to parse RuleAction from: " <> x)

instance ToHttpApiData RuleAction where
    toQueryParam = \case
        Allow -> "ALLOW"
        AllowWithLog -> "ALLOW_WITH_LOG"
        Deny -> "DENY"
        DenyWithLog -> "DENY_WITH_LOG"
        Log -> "LOG"
        NoAction -> "NO_ACTION"

instance FromJSON RuleAction where
    parseJSON = parseJSONText "RuleAction"

instance ToJSON RuleAction where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AddressesScopedListWarningCode
    = ASLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ASLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ASLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ASLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ASLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ASLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ASLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ASLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ASLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | ASLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ASLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ASLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ASLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ASLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ASLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressesScopedListWarningCode

instance FromHttpApiData AddressesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ASLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ASLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ASLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ASLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ASLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ASLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ASLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ASLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ASLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ASLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ASLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ASLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ASLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ASLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ASLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ASLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ASLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ASLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ASLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ASLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ASLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ASLWCUndeclaredProperties
        "UNREACHABLE" -> Right ASLWCUnreachable
        x -> Left ("Unable to parse AddressesScopedListWarningCode from: " <> x)

instance ToHttpApiData AddressesScopedListWarningCode where
    toQueryParam = \case
        ASLWCCleanupFailed -> "CLEANUP_FAILED"
        ASLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ASLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ASLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ASLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ASLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ASLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ASLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ASLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ASLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ASLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ASLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ASLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ASLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ASLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ASLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ASLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ASLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ASLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ASLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ASLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ASLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
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
    = ISDeleting
      -- ^ @DELETING@
    | ISFailed
      -- ^ @FAILED@
    | ISPending
      -- ^ @PENDING@
    | ISReady
      -- ^ @READY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageStatus

instance FromHttpApiData ImageStatus where
    parseQueryParam = \case
        "DELETING" -> Right ISDeleting
        "FAILED" -> Right ISFailed
        "PENDING" -> Right ISPending
        "READY" -> Right ISReady
        x -> Left ("Unable to parse ImageStatus from: " <> x)

instance ToHttpApiData ImageStatus where
    toQueryParam = \case
        ISDeleting -> "DELETING"
        ISFailed -> "FAILED"
        ISPending -> "PENDING"
        ISReady -> "READY"

instance FromJSON ImageStatus where
    parseJSON = parseJSONText "ImageStatus"

instance ToJSON ImageStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceGroupListWarningCode
    = IGLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IGLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IGLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IGLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IGLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IGLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IGLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IGLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IGLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IGLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupListWarningCode

instance FromHttpApiData InstanceGroupListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IGLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IGLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IGLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IGLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IGLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IGLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IGLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IGLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IGLWCUndeclaredProperties
        "UNREACHABLE" -> Right IGLWCUnreachable
        x -> Left ("Unable to parse InstanceGroupListWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupListWarningCode where
    toQueryParam = \case
        IGLWCCleanupFailed -> "CLEANUP_FAILED"
        IGLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IGLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IGLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IGLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IGLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IGLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IGLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IGLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IGLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupListWarningCode where
    parseJSON = parseJSONText "InstanceGroupListWarningCode"

instance ToJSON InstanceGroupListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data FirewallListWarningCode
    = FLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | FLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | FLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | FLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | FLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | FLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | FLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | FLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | FLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | FLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | FLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | FLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | FLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | FLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | FLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | FLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | FLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | FLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | FLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | FLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | FLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | FLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | FLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FirewallListWarningCode

instance FromHttpApiData FirewallListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right FLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right FLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right FLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right FLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right FLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right FLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right FLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right FLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right FLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right FLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right FLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right FLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right FLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right FLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right FLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right FLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right FLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right FLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right FLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right FLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right FLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right FLWCUndeclaredProperties
        "UNREACHABLE" -> Right FLWCUnreachable
        x -> Left ("Unable to parse FirewallListWarningCode from: " <> x)

instance ToHttpApiData FirewallListWarningCode where
    toQueryParam = \case
        FLWCCleanupFailed -> "CLEANUP_FAILED"
        FLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        FLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        FLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        FLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        FLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        FLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        FLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        FLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        FLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        FLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        FLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        FLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        FLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        FLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        FLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        FLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        FLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        FLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        FLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        FLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        FLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        FLWCUnreachable -> "UNREACHABLE"

instance FromJSON FirewallListWarningCode where
    parseJSON = parseJSONText "FirewallListWarningCode"

instance ToJSON FirewallListWarningCode where
    toJSON = toJSONText

data InterconnectAttachmentType
    = Dedicated
      -- ^ @DEDICATED@
    | Partner
      -- ^ @PARTNER@
    | PartnerProvider
      -- ^ @PARTNER_PROVIDER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectAttachmentType

instance FromHttpApiData InterconnectAttachmentType where
    parseQueryParam = \case
        "DEDICATED" -> Right Dedicated
        "PARTNER" -> Right Partner
        "PARTNER_PROVIDER" -> Right PartnerProvider
        x -> Left ("Unable to parse InterconnectAttachmentType from: " <> x)

instance ToHttpApiData InterconnectAttachmentType where
    toQueryParam = \case
        Dedicated -> "DEDICATED"
        Partner -> "PARTNER"
        PartnerProvider -> "PARTNER_PROVIDER"

instance FromJSON InterconnectAttachmentType where
    parseJSON = parseJSONText "InterconnectAttachmentType"

instance ToJSON InterconnectAttachmentType where
    toJSON = toJSONText

-- | The type of error returned.
data AutoscalerStatusDetailsType
    = ASDTAllInstancesUnhealthy
      -- ^ @ALL_INSTANCES_UNHEALTHY@
    | ASDTBackendServiceDoesNotExist
      -- ^ @BACKEND_SERVICE_DOES_NOT_EXIST@
    | ASDTCAppedAtMaxNumReplicas
      -- ^ @CAPPED_AT_MAX_NUM_REPLICAS@
    | ASDTCustomMetricDataPointsTooSparse
      -- ^ @CUSTOM_METRIC_DATA_POINTS_TOO_SPARSE@
    | ASDTCustomMetricInvalid
      -- ^ @CUSTOM_METRIC_INVALID@
    | ASDTMinEqualsMax
      -- ^ @MIN_EQUALS_MAX@
    | ASDTMissingCustomMetricDataPoints
      -- ^ @MISSING_CUSTOM_METRIC_DATA_POINTS@
    | ASDTMissingLoadBalancingDataPoints
      -- ^ @MISSING_LOAD_BALANCING_DATA_POINTS@
    | ASDTMoreThanOneBackendService
      -- ^ @MORE_THAN_ONE_BACKEND_SERVICE@
    | ASDTNotEnoughQuotaAvailable
      -- ^ @NOT_ENOUGH_QUOTA_AVAILABLE@
    | ASDTRegionResourceStockout
      -- ^ @REGION_RESOURCE_STOCKOUT@
    | ASDTScalingTargetDoesNotExist
      -- ^ @SCALING_TARGET_DOES_NOT_EXIST@
    | ASDTUnknown
      -- ^ @UNKNOWN@
    | ASDTUnsupportedMaxRateLoadBalancingConfiguration
      -- ^ @UNSUPPORTED_MAX_RATE_LOAD_BALANCING_CONFIGURATION@
    | ASDTZoneResourceStockout
      -- ^ @ZONE_RESOURCE_STOCKOUT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalerStatusDetailsType

instance FromHttpApiData AutoscalerStatusDetailsType where
    parseQueryParam = \case
        "ALL_INSTANCES_UNHEALTHY" -> Right ASDTAllInstancesUnhealthy
        "BACKEND_SERVICE_DOES_NOT_EXIST" -> Right ASDTBackendServiceDoesNotExist
        "CAPPED_AT_MAX_NUM_REPLICAS" -> Right ASDTCAppedAtMaxNumReplicas
        "CUSTOM_METRIC_DATA_POINTS_TOO_SPARSE" -> Right ASDTCustomMetricDataPointsTooSparse
        "CUSTOM_METRIC_INVALID" -> Right ASDTCustomMetricInvalid
        "MIN_EQUALS_MAX" -> Right ASDTMinEqualsMax
        "MISSING_CUSTOM_METRIC_DATA_POINTS" -> Right ASDTMissingCustomMetricDataPoints
        "MISSING_LOAD_BALANCING_DATA_POINTS" -> Right ASDTMissingLoadBalancingDataPoints
        "MORE_THAN_ONE_BACKEND_SERVICE" -> Right ASDTMoreThanOneBackendService
        "NOT_ENOUGH_QUOTA_AVAILABLE" -> Right ASDTNotEnoughQuotaAvailable
        "REGION_RESOURCE_STOCKOUT" -> Right ASDTRegionResourceStockout
        "SCALING_TARGET_DOES_NOT_EXIST" -> Right ASDTScalingTargetDoesNotExist
        "UNKNOWN" -> Right ASDTUnknown
        "UNSUPPORTED_MAX_RATE_LOAD_BALANCING_CONFIGURATION" -> Right ASDTUnsupportedMaxRateLoadBalancingConfiguration
        "ZONE_RESOURCE_STOCKOUT" -> Right ASDTZoneResourceStockout
        x -> Left ("Unable to parse AutoscalerStatusDetailsType from: " <> x)

instance ToHttpApiData AutoscalerStatusDetailsType where
    toQueryParam = \case
        ASDTAllInstancesUnhealthy -> "ALL_INSTANCES_UNHEALTHY"
        ASDTBackendServiceDoesNotExist -> "BACKEND_SERVICE_DOES_NOT_EXIST"
        ASDTCAppedAtMaxNumReplicas -> "CAPPED_AT_MAX_NUM_REPLICAS"
        ASDTCustomMetricDataPointsTooSparse -> "CUSTOM_METRIC_DATA_POINTS_TOO_SPARSE"
        ASDTCustomMetricInvalid -> "CUSTOM_METRIC_INVALID"
        ASDTMinEqualsMax -> "MIN_EQUALS_MAX"
        ASDTMissingCustomMetricDataPoints -> "MISSING_CUSTOM_METRIC_DATA_POINTS"
        ASDTMissingLoadBalancingDataPoints -> "MISSING_LOAD_BALANCING_DATA_POINTS"
        ASDTMoreThanOneBackendService -> "MORE_THAN_ONE_BACKEND_SERVICE"
        ASDTNotEnoughQuotaAvailable -> "NOT_ENOUGH_QUOTA_AVAILABLE"
        ASDTRegionResourceStockout -> "REGION_RESOURCE_STOCKOUT"
        ASDTScalingTargetDoesNotExist -> "SCALING_TARGET_DOES_NOT_EXIST"
        ASDTUnknown -> "UNKNOWN"
        ASDTUnsupportedMaxRateLoadBalancingConfiguration -> "UNSUPPORTED_MAX_RATE_LOAD_BALANCING_CONFIGURATION"
        ASDTZoneResourceStockout -> "ZONE_RESOURCE_STOCKOUT"

instance FromJSON AutoscalerStatusDetailsType where
    parseJSON = parseJSONText "AutoscalerStatusDetailsType"

instance ToJSON AutoscalerStatusDetailsType where
    toJSON = toJSONText

-- | Direction of traffic to which this firewall applies; default is INGRESS.
-- Note: For INGRESS traffic, it is NOT supported to specify
-- destinationRanges; For EGRESS traffic, it is NOT supported to specify
-- sourceRanges OR sourceTags.
data FirewallDirection
    = Egress
      -- ^ @EGRESS@
    | Ingress
      -- ^ @INGRESS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FirewallDirection

instance FromHttpApiData FirewallDirection where
    parseQueryParam = \case
        "EGRESS" -> Right Egress
        "INGRESS" -> Right Ingress
        x -> Left ("Unable to parse FirewallDirection from: " <> x)

instance ToHttpApiData FirewallDirection where
    toQueryParam = \case
        Egress -> "EGRESS"
        Ingress -> "INGRESS"

instance FromJSON FirewallDirection where
    parseJSON = parseJSONText "FirewallDirection"

instance ToJSON FirewallDirection where
    toJSON = toJSONText

data NodeGroupNodeStatus
    = NGNSCreating
      -- ^ @CREATING@
    | NGNSDeleting
      -- ^ @DELETING@
    | NGNSInvalid
      -- ^ @INVALID@
    | NGNSReady
      -- ^ @READY@
    | NGNSRepairing
      -- ^ @REPAIRING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeGroupNodeStatus

instance FromHttpApiData NodeGroupNodeStatus where
    parseQueryParam = \case
        "CREATING" -> Right NGNSCreating
        "DELETING" -> Right NGNSDeleting
        "INVALID" -> Right NGNSInvalid
        "READY" -> Right NGNSReady
        "REPAIRING" -> Right NGNSRepairing
        x -> Left ("Unable to parse NodeGroupNodeStatus from: " <> x)

instance ToHttpApiData NodeGroupNodeStatus where
    toQueryParam = \case
        NGNSCreating -> "CREATING"
        NGNSDeleting -> "DELETING"
        NGNSInvalid -> "INVALID"
        NGNSReady -> "READY"
        NGNSRepairing -> "REPAIRING"

instance FromJSON NodeGroupNodeStatus where
    parseJSON = parseJSONText "NodeGroupNodeStatus"

instance ToJSON NodeGroupNodeStatus where
    toJSON = toJSONText

-- | QUIC policy for the TargetHttpsProxy resource.
data TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride
    = THPSQORQODisable
      -- ^ @DISABLE@
    | THPSQORQOEnable
      -- ^ @ENABLE@
    | THPSQORQONone
      -- ^ @NONE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride

instance FromHttpApiData TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride where
    parseQueryParam = \case
        "DISABLE" -> Right THPSQORQODisable
        "ENABLE" -> Right THPSQORQOEnable
        "NONE" -> Right THPSQORQONone
        x -> Left ("Unable to parse TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride from: " <> x)

instance ToHttpApiData TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride where
    toQueryParam = \case
        THPSQORQODisable -> "DISABLE"
        THPSQORQOEnable -> "ENABLE"
        THPSQORQONone -> "NONE"

instance FromJSON TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride where
    parseJSON = parseJSONText "TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride"

instance ToJSON TargetHTTPSProxiesSetQuicOverrideRequestQuicOverride where
    toJSON = toJSONText

-- | Health state of the instance.
data HealthStatusHealthState
    = HSHSHealthy
      -- ^ @HEALTHY@
    | HSHSUnhealthy
      -- ^ @UNHEALTHY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HealthStatusHealthState

instance FromHttpApiData HealthStatusHealthState where
    parseQueryParam = \case
        "HEALTHY" -> Right HSHSHealthy
        "UNHEALTHY" -> Right HSHSUnhealthy
        x -> Left ("Unable to parse HealthStatusHealthState from: " <> x)

instance ToHttpApiData HealthStatusHealthState where
    toQueryParam = \case
        HSHSHealthy -> "HEALTHY"
        HSHSUnhealthy -> "UNHEALTHY"

instance FromJSON HealthStatusHealthState where
    parseJSON = parseJSONText "HealthStatusHealthState"

instance ToJSON HealthStatusHealthState where
    toJSON = toJSONText

-- | The deprecation state of this resource. This can be ACTIVE, DEPRECATED,
-- OBSOLETE, or DELETED. Operations which communicate the end of life date
-- for an image, can use ACTIVE. Operations which create a new resource
-- using a DEPRECATED resource will return successfully, but with a warning
-- indicating the deprecated resource and recommending its replacement.
-- Operations which use OBSOLETE or DELETED resources will be rejected and
-- result in an error.
data DeprecationStatusState
    = DSSActive
      -- ^ @ACTIVE@
    | DSSDeleted
      -- ^ @DELETED@
    | DSSDeprecated
      -- ^ @DEPRECATED@
    | DSSObsolete
      -- ^ @OBSOLETE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeprecationStatusState

instance FromHttpApiData DeprecationStatusState where
    parseQueryParam = \case
        "ACTIVE" -> Right DSSActive
        "DELETED" -> Right DSSDeleted
        "DEPRECATED" -> Right DSSDeprecated
        "OBSOLETE" -> Right DSSObsolete
        x -> Left ("Unable to parse DeprecationStatusState from: " <> x)

instance ToHttpApiData DeprecationStatusState where
    toQueryParam = \case
        DSSActive -> "ACTIVE"
        DSSDeleted -> "DELETED"
        DSSDeprecated -> "DEPRECATED"
        DSSObsolete -> "OBSOLETE"

instance FromJSON DeprecationStatusState where
    parseJSON = parseJSONText "DeprecationStatusState"

instance ToJSON DeprecationStatusState where
    toJSON = toJSONText

data NodeGroupStatus
    = NGSCreating
      -- ^ @CREATING@
    | NGSDeleting
      -- ^ @DELETING@
    | NGSInvalid
      -- ^ @INVALID@
    | NGSReady
      -- ^ @READY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeGroupStatus

instance FromHttpApiData NodeGroupStatus where
    parseQueryParam = \case
        "CREATING" -> Right NGSCreating
        "DELETING" -> Right NGSDeleting
        "INVALID" -> Right NGSInvalid
        "READY" -> Right NGSReady
        x -> Left ("Unable to parse NodeGroupStatus from: " <> x)

instance ToHttpApiData NodeGroupStatus where
    toQueryParam = \case
        NGSCreating -> "CREATING"
        NGSDeleting -> "DELETING"
        NGSInvalid -> "INVALID"
        NGSReady -> "READY"

instance FromJSON NodeGroupStatus where
    parseJSON = parseJSONText "NodeGroupStatus"

instance ToJSON NodeGroupStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RouterAggregatedListWarningCode
    = RALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | RALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterAggregatedListWarningCode

instance FromHttpApiData RouterAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RALWCUndeclaredProperties
        "UNREACHABLE" -> Right RALWCUnreachable
        x -> Left ("Unable to parse RouterAggregatedListWarningCode from: " <> x)

instance ToHttpApiData RouterAggregatedListWarningCode where
    toQueryParam = \case
        RALWCCleanupFailed -> "CLEANUP_FAILED"
        RALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        RALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RALWCUnreachable -> "UNREACHABLE"

instance FromJSON RouterAggregatedListWarningCode where
    parseJSON = parseJSONText "RouterAggregatedListWarningCode"

instance ToJSON RouterAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RoutersScopedListWarningCode
    = RSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | RSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RoutersScopedListWarningCode

instance FromHttpApiData RoutersScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RSLWCUndeclaredProperties
        "UNREACHABLE" -> Right RSLWCUnreachable
        x -> Left ("Unable to parse RoutersScopedListWarningCode from: " <> x)

instance ToHttpApiData RoutersScopedListWarningCode where
    toQueryParam = \case
        RSLWCCleanupFailed -> "CLEANUP_FAILED"
        RSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        RSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RSLWCUnreachable -> "UNREACHABLE"

instance FromJSON RoutersScopedListWarningCode where
    parseJSON = parseJSONText "RoutersScopedListWarningCode"

instance ToJSON RoutersScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetHTTPSProxyListWarningCode
    = THPLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | THPLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | THPLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | THPLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | THPLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | THPLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | THPLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | THPLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | THPLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | THPLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | THPLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | THPLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | THPLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | THPLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | THPLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | THPLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | THPLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | THPLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | THPLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | THPLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | THPLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | THPLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | THPLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetHTTPSProxyListWarningCode

instance FromHttpApiData TargetHTTPSProxyListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right THPLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right THPLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right THPLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right THPLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right THPLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right THPLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right THPLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right THPLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right THPLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right THPLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right THPLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right THPLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right THPLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right THPLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right THPLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right THPLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right THPLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right THPLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right THPLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right THPLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right THPLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right THPLWCUndeclaredProperties
        "UNREACHABLE" -> Right THPLWCUnreachable
        x -> Left ("Unable to parse TargetHTTPSProxyListWarningCode from: " <> x)

instance ToHttpApiData TargetHTTPSProxyListWarningCode where
    toQueryParam = \case
        THPLWCCleanupFailed -> "CLEANUP_FAILED"
        THPLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        THPLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        THPLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        THPLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        THPLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        THPLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        THPLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        THPLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        THPLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        THPLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        THPLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        THPLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        THPLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        THPLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        THPLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        THPLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        THPLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        THPLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        THPLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        THPLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        THPLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        THPLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetHTTPSProxyListWarningCode where
    parseJSON = parseJSONText "TargetHTTPSProxyListWarningCode"

instance ToJSON TargetHTTPSProxyListWarningCode where
    toJSON = toJSONText

data InterconnectDiagnosticsLinkLACPStatusState
    = IDLLACPSSActive
      -- ^ @ACTIVE@
    | IDLLACPSSDetached
      -- ^ @DETACHED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectDiagnosticsLinkLACPStatusState

instance FromHttpApiData InterconnectDiagnosticsLinkLACPStatusState where
    parseQueryParam = \case
        "ACTIVE" -> Right IDLLACPSSActive
        "DETACHED" -> Right IDLLACPSSDetached
        x -> Left ("Unable to parse InterconnectDiagnosticsLinkLACPStatusState from: " <> x)

instance ToHttpApiData InterconnectDiagnosticsLinkLACPStatusState where
    toQueryParam = \case
        IDLLACPSSActive -> "ACTIVE"
        IDLLACPSSDetached -> "DETACHED"

instance FromJSON InterconnectDiagnosticsLinkLACPStatusState where
    parseJSON = parseJSONText "InterconnectDiagnosticsLinkLACPStatusState"

instance ToJSON InterconnectDiagnosticsLinkLACPStatusState where
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
-- an instance without stopping that instance. - VERIFYING The managed
-- instance group has created the instance and it is in the process of
-- being verified.
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
    | MICAVerifying
      -- ^ @VERIFYING@
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
        "VERIFYING" -> Right MICAVerifying
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
        MICAVerifying -> "VERIFYING"

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

data RouterBGPPeerAdvertisedGroupsItem
    = AllSubnets
      -- ^ @ALL_SUBNETS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterBGPPeerAdvertisedGroupsItem

instance FromHttpApiData RouterBGPPeerAdvertisedGroupsItem where
    parseQueryParam = \case
        "ALL_SUBNETS" -> Right AllSubnets
        x -> Left ("Unable to parse RouterBGPPeerAdvertisedGroupsItem from: " <> x)

instance ToHttpApiData RouterBGPPeerAdvertisedGroupsItem where
    toQueryParam = \case
        AllSubnets -> "ALL_SUBNETS"

instance FromJSON RouterBGPPeerAdvertisedGroupsItem where
    parseJSON = parseJSONText "RouterBGPPeerAdvertisedGroupsItem"

instance ToJSON RouterBGPPeerAdvertisedGroupsItem where
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

-- | The IP Version that will be used by this forwarding rule. Valid options
-- are IPV4 or IPV6. This can only be specified for an external global
-- forwarding rule.
data ForwardingRuleIPVersion
    = IPV4
      -- ^ @IPV4@
    | IPV6
      -- ^ @IPV6@
    | UnspecifiedVersion
      -- ^ @UNSPECIFIED_VERSION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingRuleIPVersion

instance FromHttpApiData ForwardingRuleIPVersion where
    parseQueryParam = \case
        "IPV4" -> Right IPV4
        "IPV6" -> Right IPV6
        "UNSPECIFIED_VERSION" -> Right UnspecifiedVersion
        x -> Left ("Unable to parse ForwardingRuleIPVersion from: " <> x)

instance ToHttpApiData ForwardingRuleIPVersion where
    toQueryParam = \case
        IPV4 -> "IPV4"
        IPV6 -> "IPV6"
        UnspecifiedVersion -> "UNSPECIFIED_VERSION"

instance FromJSON ForwardingRuleIPVersion where
    parseJSON = parseJSONText "ForwardingRuleIPVersion"

instance ToJSON ForwardingRuleIPVersion where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RouterListWarningCode
    = RLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | RLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterListWarningCode

instance FromHttpApiData RouterListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RLWCUndeclaredProperties
        "UNREACHABLE" -> Right RLWCUnreachable
        x -> Left ("Unable to parse RouterListWarningCode from: " <> x)

instance ToHttpApiData RouterListWarningCode where
    toQueryParam = \case
        RLWCCleanupFailed -> "CLEANUP_FAILED"
        RLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        RLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RLWCUnreachable -> "UNREACHABLE"

instance FromJSON RouterListWarningCode where
    parseJSON = parseJSONText "RouterListWarningCode"

instance ToJSON RouterListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceGroupAggregatedListWarningCode
    = IGALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IGALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IGALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IGALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IGALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IGALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IGALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IGALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IGALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IGALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupAggregatedListWarningCode

instance FromHttpApiData InstanceGroupAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IGALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IGALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IGALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IGALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IGALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IGALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IGALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IGALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IGALWCUndeclaredProperties
        "UNREACHABLE" -> Right IGALWCUnreachable
        x -> Left ("Unable to parse InstanceGroupAggregatedListWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupAggregatedListWarningCode where
    toQueryParam = \case
        IGALWCCleanupFailed -> "CLEANUP_FAILED"
        IGALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IGALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IGALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IGALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IGALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IGALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IGALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IGALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IGALWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupAggregatedListWarningCode where
    parseJSON = parseJSONText "InstanceGroupAggregatedListWarningCode"

instance ToJSON InstanceGroupAggregatedListWarningCode where
    toJSON = toJSONText

-- | Default network tier to be set.
data ProjectsSetDefaultNetworkTierRequestNetworkTier
    = PSDNTRNTPremium
      -- ^ @PREMIUM@
    | PSDNTRNTStandard
      -- ^ @STANDARD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsSetDefaultNetworkTierRequestNetworkTier

instance FromHttpApiData ProjectsSetDefaultNetworkTierRequestNetworkTier where
    parseQueryParam = \case
        "PREMIUM" -> Right PSDNTRNTPremium
        "STANDARD" -> Right PSDNTRNTStandard
        x -> Left ("Unable to parse ProjectsSetDefaultNetworkTierRequestNetworkTier from: " <> x)

instance ToHttpApiData ProjectsSetDefaultNetworkTierRequestNetworkTier where
    toQueryParam = \case
        PSDNTRNTPremium -> "PREMIUM"
        PSDNTRNTStandard -> "STANDARD"

instance FromJSON ProjectsSetDefaultNetworkTierRequestNetworkTier where
    parseJSON = parseJSONText "ProjectsSetDefaultNetworkTierRequestNetworkTier"

instance ToJSON ProjectsSetDefaultNetworkTierRequestNetworkTier where
    toJSON = toJSONText

-- | Indicates whether the backend service will be used with internal or
-- external load balancing. A backend service created for one type of load
-- balancing cannot be used with the other. Possible values are INTERNAL
-- and EXTERNAL.
data BackendServiceLoadBalancingScheme
    = External
      -- ^ @EXTERNAL@
    | Internal
      -- ^ @INTERNAL@
    | InvalidLoadBalancingScheme
      -- ^ @INVALID_LOAD_BALANCING_SCHEME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendServiceLoadBalancingScheme

instance FromHttpApiData BackendServiceLoadBalancingScheme where
    parseQueryParam = \case
        "EXTERNAL" -> Right External
        "INTERNAL" -> Right Internal
        "INVALID_LOAD_BALANCING_SCHEME" -> Right InvalidLoadBalancingScheme
        x -> Left ("Unable to parse BackendServiceLoadBalancingScheme from: " <> x)

instance ToHttpApiData BackendServiceLoadBalancingScheme where
    toQueryParam = \case
        External -> "EXTERNAL"
        Internal -> "INTERNAL"
        InvalidLoadBalancingScheme -> "INVALID_LOAD_BALANCING_SCHEME"

instance FromJSON BackendServiceLoadBalancingScheme where
    parseJSON = parseJSONText "BackendServiceLoadBalancingScheme"

instance ToJSON BackendServiceLoadBalancingScheme where
    toJSON = toJSONText

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data TargetTCPProxyProxyHeader
    = TTPPHNone
      -- ^ @NONE@
    | TTPPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetTCPProxyProxyHeader

instance FromHttpApiData TargetTCPProxyProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right TTPPHNone
        "PROXY_V1" -> Right TTPPHProxyV1
        x -> Left ("Unable to parse TargetTCPProxyProxyHeader from: " <> x)

instance ToHttpApiData TargetTCPProxyProxyHeader where
    toQueryParam = \case
        TTPPHNone -> "NONE"
        TTPPHProxyV1 -> "PROXY_V1"

instance FromJSON TargetTCPProxyProxyHeader where
    parseJSON = parseJSONText "TargetTCPProxyProxyHeader"

instance ToJSON TargetTCPProxyProxyHeader where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetVPNGatewayAggregatedListWarningCode
    = TVGALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TVGALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TVGALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TVGALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TVGALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TVGALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TVGALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TVGALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TVGALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | TVGALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TVGALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TVGALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TVGALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TVGALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TVGALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TVGALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TVGALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TVGALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TVGALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TVGALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TVGALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TVGALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TVGALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetVPNGatewayAggregatedListWarningCode

instance FromHttpApiData TargetVPNGatewayAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TVGALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TVGALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TVGALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TVGALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TVGALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TVGALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TVGALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TVGALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TVGALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TVGALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TVGALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TVGALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TVGALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TVGALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TVGALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TVGALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TVGALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TVGALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TVGALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TVGALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TVGALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TVGALWCUndeclaredProperties
        "UNREACHABLE" -> Right TVGALWCUnreachable
        x -> Left ("Unable to parse TargetVPNGatewayAggregatedListWarningCode from: " <> x)

instance ToHttpApiData TargetVPNGatewayAggregatedListWarningCode where
    toQueryParam = \case
        TVGALWCCleanupFailed -> "CLEANUP_FAILED"
        TVGALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TVGALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TVGALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TVGALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TVGALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TVGALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TVGALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TVGALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TVGALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TVGALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TVGALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TVGALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TVGALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TVGALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TVGALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TVGALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TVGALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TVGALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TVGALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TVGALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TVGALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TVGALWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetVPNGatewayAggregatedListWarningCode where
    parseJSON = parseJSONText "TargetVPNGatewayAggregatedListWarningCode"

instance ToJSON TargetVPNGatewayAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of the operation, which can be one of the
-- following: PENDING, RUNNING, or DONE.
data OperationStatus
    = OSDone
      -- ^ @DONE@
    | OSPending
      -- ^ @PENDING@
    | OSRunning
      -- ^ @RUNNING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationStatus

instance FromHttpApiData OperationStatus where
    parseQueryParam = \case
        "DONE" -> Right OSDone
        "PENDING" -> Right OSPending
        "RUNNING" -> Right OSRunning
        x -> Left ("Unable to parse OperationStatus from: " <> x)

instance ToHttpApiData OperationStatus where
    toQueryParam = \case
        OSDone -> "DONE"
        OSPending -> "PENDING"
        OSRunning -> "RUNNING"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText

-- | The log_name to populate in the Cloud Audit Record.
data LogConfigCloudAuditOptionsLogName
    = AdminActivity
      -- ^ @ADMIN_ACTIVITY@
    | DataAccess
      -- ^ @DATA_ACCESS@
    | UnspecifiedLogName
      -- ^ @UNSPECIFIED_LOG_NAME@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogConfigCloudAuditOptionsLogName

instance FromHttpApiData LogConfigCloudAuditOptionsLogName where
    parseQueryParam = \case
        "ADMIN_ACTIVITY" -> Right AdminActivity
        "DATA_ACCESS" -> Right DataAccess
        "UNSPECIFIED_LOG_NAME" -> Right UnspecifiedLogName
        x -> Left ("Unable to parse LogConfigCloudAuditOptionsLogName from: " <> x)

instance ToHttpApiData LogConfigCloudAuditOptionsLogName where
    toQueryParam = \case
        AdminActivity -> "ADMIN_ACTIVITY"
        DataAccess -> "DATA_ACCESS"
        UnspecifiedLogName -> "UNSPECIFIED_LOG_NAME"

instance FromJSON LogConfigCloudAuditOptionsLogName where
    parseJSON = parseJSONText "LogConfigCloudAuditOptionsLogName"

instance ToJSON LogConfigCloudAuditOptionsLogName where
    toJSON = toJSONText

-- | [Output Only] Current state of this License Code.
data LicenseCodeState
    = LCSDisabled
      -- ^ @DISABLED@
    | LCSEnabled
      -- ^ @ENABLED@
    | LCSRestricted
      -- ^ @RESTRICTED@
    | LCSStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
    | LCSTerminated
      -- ^ @TERMINATED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LicenseCodeState

instance FromHttpApiData LicenseCodeState where
    parseQueryParam = \case
        "DISABLED" -> Right LCSDisabled
        "ENABLED" -> Right LCSEnabled
        "RESTRICTED" -> Right LCSRestricted
        "STATE_UNSPECIFIED" -> Right LCSStateUnspecified
        "TERMINATED" -> Right LCSTerminated
        x -> Left ("Unable to parse LicenseCodeState from: " <> x)

instance ToHttpApiData LicenseCodeState where
    toQueryParam = \case
        LCSDisabled -> "DISABLED"
        LCSEnabled -> "ENABLED"
        LCSRestricted -> "RESTRICTED"
        LCSStateUnspecified -> "STATE_UNSPECIFIED"
        LCSTerminated -> "TERMINATED"

instance FromJSON LicenseCodeState where
    parseJSON = parseJSONText "LicenseCodeState"

instance ToJSON LicenseCodeState where
    toJSON = toJSONText

-- | Specifies how port is selected for health checking, can be one of
-- following values: USE_FIXED_PORT: The port number in port is used for
-- health checking. USE_NAMED_PORT: The portName is used for health
-- checking. USE_SERVING_PORT: For NetworkEndpointGroup, the port specified
-- for each network endpoint is used for health checking. For other
-- backends, the port or named port specified in the Backend Service is
-- used for health checking. If not specified, TCP health check follows
-- behavior specified in port and portName fields.
data TCPHealthCheckPortSpecification
    = THCPSUseFixedPort
      -- ^ @USE_FIXED_PORT@
    | THCPSUseNamedPort
      -- ^ @USE_NAMED_PORT@
    | THCPSUseServingPort
      -- ^ @USE_SERVING_PORT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TCPHealthCheckPortSpecification

instance FromHttpApiData TCPHealthCheckPortSpecification where
    parseQueryParam = \case
        "USE_FIXED_PORT" -> Right THCPSUseFixedPort
        "USE_NAMED_PORT" -> Right THCPSUseNamedPort
        "USE_SERVING_PORT" -> Right THCPSUseServingPort
        x -> Left ("Unable to parse TCPHealthCheckPortSpecification from: " <> x)

instance ToHttpApiData TCPHealthCheckPortSpecification where
    toQueryParam = \case
        THCPSUseFixedPort -> "USE_FIXED_PORT"
        THCPSUseNamedPort -> "USE_NAMED_PORT"
        THCPSUseServingPort -> "USE_SERVING_PORT"

instance FromJSON TCPHealthCheckPortSpecification where
    parseJSON = parseJSONText "TCPHealthCheckPortSpecification"

instance ToJSON TCPHealthCheckPortSpecification where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetVPNGatewaysScopedListWarningCode
    = TVGSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TVGSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TVGSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TVGSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TVGSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TVGSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TVGSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TVGSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TVGSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | TVGSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TVGSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TVGSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TVGSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TVGSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TVGSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetVPNGatewaysScopedListWarningCode

instance FromHttpApiData TargetVPNGatewaysScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TVGSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TVGSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TVGSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TVGSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TVGSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TVGSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TVGSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TVGSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TVGSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TVGSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TVGSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TVGSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TVGSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TVGSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TVGSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TVGSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TVGSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TVGSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TVGSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TVGSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TVGSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TVGSLWCUndeclaredProperties
        "UNREACHABLE" -> Right TVGSLWCUnreachable
        x -> Left ("Unable to parse TargetVPNGatewaysScopedListWarningCode from: " <> x)

instance ToHttpApiData TargetVPNGatewaysScopedListWarningCode where
    toQueryParam = \case
        TVGSLWCCleanupFailed -> "CLEANUP_FAILED"
        TVGSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TVGSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TVGSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TVGSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TVGSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TVGSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TVGSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TVGSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TVGSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TVGSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TVGSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TVGSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TVGSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TVGSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TVGSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TVGSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TVGSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TVGSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TVGSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TVGSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TVGSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TVGSLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetVPNGatewaysScopedListWarningCode where
    parseJSON = parseJSONText "TargetVPNGatewaysScopedListWarningCode"

instance ToJSON TargetVPNGatewaysScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of disk creation.
data DiskStatus
    = DSCreating
      -- ^ @CREATING@
    | DSDeleting
      -- ^ @DELETING@
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
        "DELETING" -> Right DSDeleting
        "FAILED" -> Right DSFailed
        "READY" -> Right DSReady
        "RESTORING" -> Right DSRestoring
        x -> Left ("Unable to parse DiskStatus from: " <> x)

instance ToHttpApiData DiskStatus where
    toQueryParam = \case
        DSCreating -> "CREATING"
        DSDeleting -> "DELETING"
        DSFailed -> "FAILED"
        DSReady -> "READY"
        DSRestoring -> "RESTORING"

instance FromJSON DiskStatus where
    parseJSON = parseJSONText "DiskStatus"

instance ToJSON DiskStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SnapshotListWarningCode
    = SLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | SLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | SLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | SLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | SLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | SLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | SLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | SLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | SLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | SLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | SLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | SLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | SLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | SLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | SLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | SLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SnapshotListWarningCode

instance FromHttpApiData SnapshotListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right SLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right SLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right SLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right SLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right SLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right SLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right SLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right SLWCUndeclaredProperties
        "UNREACHABLE" -> Right SLWCUnreachable
        x -> Left ("Unable to parse SnapshotListWarningCode from: " <> x)

instance ToHttpApiData SnapshotListWarningCode where
    toQueryParam = \case
        SLWCCleanupFailed -> "CLEANUP_FAILED"
        SLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        SLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        SLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        SLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        SLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        SLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        SLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        SLWCUnreachable -> "UNREACHABLE"

instance FromJSON SnapshotListWarningCode where
    parseJSON = parseJSONText "SnapshotListWarningCode"

instance ToJSON SnapshotListWarningCode where
    toJSON = toJSONText

-- | Desired availability domain for the attachment. Only available for type
-- PARTNER, at creation time. For improved reliability, customers should
-- configure a pair of attachments with one per availability domain. The
-- selected availability domain will be provided to the Partner via the
-- pairing key so that the provisioned circuit will lie in the specified
-- domain. If not specified, the value will default to
-- AVAILABILITY_DOMAIN_ANY.
data InterconnectAttachmentEdgeAvailabilityDomain
    = AvailabilityDomain1
      -- ^ @AVAILABILITY_DOMAIN_1@
    | AvailabilityDomain2
      -- ^ @AVAILABILITY_DOMAIN_2@
    | AvailabilityDomainAny
      -- ^ @AVAILABILITY_DOMAIN_ANY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectAttachmentEdgeAvailabilityDomain

instance FromHttpApiData InterconnectAttachmentEdgeAvailabilityDomain where
    parseQueryParam = \case
        "AVAILABILITY_DOMAIN_1" -> Right AvailabilityDomain1
        "AVAILABILITY_DOMAIN_2" -> Right AvailabilityDomain2
        "AVAILABILITY_DOMAIN_ANY" -> Right AvailabilityDomainAny
        x -> Left ("Unable to parse InterconnectAttachmentEdgeAvailabilityDomain from: " <> x)

instance ToHttpApiData InterconnectAttachmentEdgeAvailabilityDomain where
    toQueryParam = \case
        AvailabilityDomain1 -> "AVAILABILITY_DOMAIN_1"
        AvailabilityDomain2 -> "AVAILABILITY_DOMAIN_2"
        AvailabilityDomainAny -> "AVAILABILITY_DOMAIN_ANY"

instance FromJSON InterconnectAttachmentEdgeAvailabilityDomain where
    parseJSON = parseJSONText "InterconnectAttachmentEdgeAvailabilityDomain"

instance ToJSON InterconnectAttachmentEdgeAvailabilityDomain where
    toJSON = toJSONText

-- | [Output Only] The status of the instance. This field is empty when the
-- instance does not exist.
data ManagedInstanceInstanceStatus
    = MIISProvisioning
      -- ^ @PROVISIONING@
    | MIISRepairing
      -- ^ @REPAIRING@
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
        "REPAIRING" -> Right MIISRepairing
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
        MIISRepairing -> "REPAIRING"
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

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data HTTPHealthCheckProxyHeader
    = HTTPHCPHNone
      -- ^ @NONE@
    | HTTPHCPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPHealthCheckProxyHeader

instance FromHttpApiData HTTPHealthCheckProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right HTTPHCPHNone
        "PROXY_V1" -> Right HTTPHCPHProxyV1
        x -> Left ("Unable to parse HTTPHealthCheckProxyHeader from: " <> x)

instance ToHttpApiData HTTPHealthCheckProxyHeader where
    toQueryParam = \case
        HTTPHCPHNone -> "NONE"
        HTTPHCPHProxyV1 -> "PROXY_V1"

instance FromJSON HTTPHealthCheckProxyHeader where
    parseJSON = parseJSONText "HTTPHealthCheckProxyHeader"

instance ToJSON HTTPHealthCheckProxyHeader where
    toJSON = toJSONText

-- | [Output Only] Continent for this location.
data InterconnectLocationContinent
    = Africa
      -- ^ @AFRICA@
    | AsiaPac
      -- ^ @ASIA_PAC@
    | CAfrica
      -- ^ @C_AFRICA@
    | CAsiaPac
      -- ^ @C_ASIA_PAC@
    | CEurope
      -- ^ @C_EUROPE@
    | CNorthAmerica
      -- ^ @C_NORTH_AMERICA@
    | CSouthAmerica
      -- ^ @C_SOUTH_AMERICA@
    | Europe
      -- ^ @EUROPE@
    | NorthAmerica
      -- ^ @NORTH_AMERICA@
    | SouthAmerica
      -- ^ @SOUTH_AMERICA@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectLocationContinent

instance FromHttpApiData InterconnectLocationContinent where
    parseQueryParam = \case
        "AFRICA" -> Right Africa
        "ASIA_PAC" -> Right AsiaPac
        "C_AFRICA" -> Right CAfrica
        "C_ASIA_PAC" -> Right CAsiaPac
        "C_EUROPE" -> Right CEurope
        "C_NORTH_AMERICA" -> Right CNorthAmerica
        "C_SOUTH_AMERICA" -> Right CSouthAmerica
        "EUROPE" -> Right Europe
        "NORTH_AMERICA" -> Right NorthAmerica
        "SOUTH_AMERICA" -> Right SouthAmerica
        x -> Left ("Unable to parse InterconnectLocationContinent from: " <> x)

instance ToHttpApiData InterconnectLocationContinent where
    toQueryParam = \case
        Africa -> "AFRICA"
        AsiaPac -> "ASIA_PAC"
        CAfrica -> "C_AFRICA"
        CAsiaPac -> "C_ASIA_PAC"
        CEurope -> "C_EUROPE"
        CNorthAmerica -> "C_NORTH_AMERICA"
        CSouthAmerica -> "C_SOUTH_AMERICA"
        Europe -> "EUROPE"
        NorthAmerica -> "NORTH_AMERICA"
        SouthAmerica -> "SOUTH_AMERICA"

instance FromJSON InterconnectLocationContinent where
    parseJSON = parseJSONText "InterconnectLocationContinent"

instance ToJSON InterconnectLocationContinent where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data VMEndpointNATMAppingsListWarningCode
    = VMENATMALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | VMENATMALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | VMENATMALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | VMENATMALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | VMENATMALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | VMENATMALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | VMENATMALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | VMENATMALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | VMENATMALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | VMENATMALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | VMENATMALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | VMENATMALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | VMENATMALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | VMENATMALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | VMENATMALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | VMENATMALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | VMENATMALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | VMENATMALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | VMENATMALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | VMENATMALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | VMENATMALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | VMENATMALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | VMENATMALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VMEndpointNATMAppingsListWarningCode

instance FromHttpApiData VMEndpointNATMAppingsListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right VMENATMALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right VMENATMALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right VMENATMALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right VMENATMALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right VMENATMALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right VMENATMALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right VMENATMALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right VMENATMALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right VMENATMALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right VMENATMALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right VMENATMALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right VMENATMALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right VMENATMALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right VMENATMALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right VMENATMALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right VMENATMALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right VMENATMALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right VMENATMALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right VMENATMALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right VMENATMALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right VMENATMALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right VMENATMALWCUndeclaredProperties
        "UNREACHABLE" -> Right VMENATMALWCUnreachable
        x -> Left ("Unable to parse VMEndpointNATMAppingsListWarningCode from: " <> x)

instance ToHttpApiData VMEndpointNATMAppingsListWarningCode where
    toQueryParam = \case
        VMENATMALWCCleanupFailed -> "CLEANUP_FAILED"
        VMENATMALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        VMENATMALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        VMENATMALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        VMENATMALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        VMENATMALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        VMENATMALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        VMENATMALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        VMENATMALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        VMENATMALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        VMENATMALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        VMENATMALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        VMENATMALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        VMENATMALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        VMENATMALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        VMENATMALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        VMENATMALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        VMENATMALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        VMENATMALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        VMENATMALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        VMENATMALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        VMENATMALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        VMENATMALWCUnreachable -> "UNREACHABLE"

instance FromJSON VMEndpointNATMAppingsListWarningCode where
    parseJSON = parseJSONText "VMEndpointNATMAppingsListWarningCode"

instance ToJSON VMEndpointNATMAppingsListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of the node template. One of the following
-- values: CREATING, READY, and DELETING.
data NodeTemplateStatus
    = NTSCreating
      -- ^ @CREATING@
    | NTSDeleting
      -- ^ @DELETING@
    | NTSInvalid
      -- ^ @INVALID@
    | NTSReady
      -- ^ @READY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeTemplateStatus

instance FromHttpApiData NodeTemplateStatus where
    parseQueryParam = \case
        "CREATING" -> Right NTSCreating
        "DELETING" -> Right NTSDeleting
        "INVALID" -> Right NTSInvalid
        "READY" -> Right NTSReady
        x -> Left ("Unable to parse NodeTemplateStatus from: " <> x)

instance ToHttpApiData NodeTemplateStatus where
    toQueryParam = \case
        NTSCreating -> "CREATING"
        NTSDeleting -> "DELETING"
        NTSInvalid -> "INVALID"
        NTSReady -> "READY"

instance FromJSON NodeTemplateStatus where
    parseJSON = parseJSONText "NodeTemplateStatus"

instance ToJSON NodeTemplateStatus where
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

data InstanceGroupManagerUpdatePolicyType
    = Opportunistic
      -- ^ @OPPORTUNISTIC@
    | Proactive
      -- ^ @PROACTIVE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupManagerUpdatePolicyType

instance FromHttpApiData InstanceGroupManagerUpdatePolicyType where
    parseQueryParam = \case
        "OPPORTUNISTIC" -> Right Opportunistic
        "PROACTIVE" -> Right Proactive
        x -> Left ("Unable to parse InstanceGroupManagerUpdatePolicyType from: " <> x)

instance ToHttpApiData InstanceGroupManagerUpdatePolicyType where
    toQueryParam = \case
        Opportunistic -> "OPPORTUNISTIC"
        Proactive -> "PROACTIVE"

instance FromJSON InstanceGroupManagerUpdatePolicyType where
    parseJSON = parseJSONText "InstanceGroupManagerUpdatePolicyType"

instance ToJSON InstanceGroupManagerUpdatePolicyType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetVPNGatewayListWarningCode
    = TVGLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TVGLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TVGLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TVGLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TVGLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TVGLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TVGLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TVGLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TVGLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | TVGLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TVGLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TVGLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TVGLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TVGLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TVGLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TVGLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TVGLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TVGLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TVGLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TVGLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TVGLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TVGLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TVGLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetVPNGatewayListWarningCode

instance FromHttpApiData TargetVPNGatewayListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TVGLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TVGLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TVGLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TVGLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TVGLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TVGLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TVGLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TVGLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TVGLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TVGLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TVGLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TVGLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TVGLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TVGLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TVGLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TVGLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TVGLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TVGLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TVGLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TVGLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TVGLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TVGLWCUndeclaredProperties
        "UNREACHABLE" -> Right TVGLWCUnreachable
        x -> Left ("Unable to parse TargetVPNGatewayListWarningCode from: " <> x)

instance ToHttpApiData TargetVPNGatewayListWarningCode where
    toQueryParam = \case
        TVGLWCCleanupFailed -> "CLEANUP_FAILED"
        TVGLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TVGLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TVGLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TVGLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TVGLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TVGLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TVGLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TVGLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TVGLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TVGLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TVGLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TVGLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TVGLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TVGLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TVGLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TVGLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TVGLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TVGLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TVGLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TVGLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TVGLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TVGLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetVPNGatewayListWarningCode where
    parseJSON = parseJSONText "TargetVPNGatewayListWarningCode"

instance ToJSON TargetVPNGatewayListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceTemplateListWarningCode
    = ITLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ITLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ITLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ITLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ITLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ITLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ITLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ITLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ITLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ITLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ITLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ITLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ITLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ITLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ITLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ITLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ITLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ITLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ITLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ITLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ITLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ITLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ITLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceTemplateListWarningCode

instance FromHttpApiData InstanceTemplateListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ITLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ITLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ITLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ITLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ITLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ITLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ITLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ITLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ITLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ITLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ITLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ITLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ITLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ITLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ITLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ITLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ITLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ITLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ITLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ITLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ITLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ITLWCUndeclaredProperties
        "UNREACHABLE" -> Right ITLWCUnreachable
        x -> Left ("Unable to parse InstanceTemplateListWarningCode from: " <> x)

instance ToHttpApiData InstanceTemplateListWarningCode where
    toQueryParam = \case
        ITLWCCleanupFailed -> "CLEANUP_FAILED"
        ITLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ITLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ITLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ITLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ITLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ITLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ITLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ITLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ITLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ITLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ITLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ITLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ITLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ITLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ITLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ITLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ITLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ITLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ITLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ITLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ITLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ITLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceTemplateListWarningCode where
    parseJSON = parseJSONText "InstanceTemplateListWarningCode"

instance ToJSON InstanceTemplateListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetSSLProxyListWarningCode
    = TSPLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TSPLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TSPLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TSPLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TSPLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TSPLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TSPLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TSPLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TSPLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | TSPLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TSPLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TSPLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TSPLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TSPLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TSPLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TSPLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TSPLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TSPLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TSPLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TSPLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TSPLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TSPLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TSPLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetSSLProxyListWarningCode

instance FromHttpApiData TargetSSLProxyListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TSPLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TSPLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TSPLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TSPLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TSPLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TSPLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TSPLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TSPLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TSPLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TSPLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TSPLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TSPLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TSPLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TSPLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TSPLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TSPLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TSPLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TSPLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TSPLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TSPLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TSPLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TSPLWCUndeclaredProperties
        "UNREACHABLE" -> Right TSPLWCUnreachable
        x -> Left ("Unable to parse TargetSSLProxyListWarningCode from: " <> x)

instance ToHttpApiData TargetSSLProxyListWarningCode where
    toQueryParam = \case
        TSPLWCCleanupFailed -> "CLEANUP_FAILED"
        TSPLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TSPLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TSPLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TSPLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TSPLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TSPLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TSPLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TSPLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TSPLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TSPLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TSPLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TSPLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TSPLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TSPLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TSPLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TSPLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TSPLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TSPLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TSPLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TSPLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TSPLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TSPLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetSSLProxyListWarningCode where
    parseJSON = parseJSONText "TargetSSLProxyListWarningCode"

instance ToJSON TargetSSLProxyListWarningCode where
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

-- | Provisioned bandwidth capacity for the interconnectAttachment. Can be
-- set by the partner to update the customer\'s provisioned bandwidth.
-- Output only for PARTNER type, mutable for PARTNER_PROVIDER and
-- DEDICATED.
data InterconnectAttachmentBandwidth
    = Bps100M
      -- ^ @BPS_100M@
    | Bps10G
      -- ^ @BPS_10G@
    | Bps1G
      -- ^ @BPS_1G@
    | Bps200M
      -- ^ @BPS_200M@
    | Bps2G
      -- ^ @BPS_2G@
    | Bps300M
      -- ^ @BPS_300M@
    | Bps400M
      -- ^ @BPS_400M@
    | Bps500M
      -- ^ @BPS_500M@
    | Bps50M
      -- ^ @BPS_50M@
    | Bps5G
      -- ^ @BPS_5G@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectAttachmentBandwidth

instance FromHttpApiData InterconnectAttachmentBandwidth where
    parseQueryParam = \case
        "BPS_100M" -> Right Bps100M
        "BPS_10G" -> Right Bps10G
        "BPS_1G" -> Right Bps1G
        "BPS_200M" -> Right Bps200M
        "BPS_2G" -> Right Bps2G
        "BPS_300M" -> Right Bps300M
        "BPS_400M" -> Right Bps400M
        "BPS_500M" -> Right Bps500M
        "BPS_50M" -> Right Bps50M
        "BPS_5G" -> Right Bps5G
        x -> Left ("Unable to parse InterconnectAttachmentBandwidth from: " <> x)

instance ToHttpApiData InterconnectAttachmentBandwidth where
    toQueryParam = \case
        Bps100M -> "BPS_100M"
        Bps10G -> "BPS_10G"
        Bps1G -> "BPS_1G"
        Bps200M -> "BPS_200M"
        Bps2G -> "BPS_2G"
        Bps300M -> "BPS_300M"
        Bps400M -> "BPS_400M"
        Bps500M -> "BPS_500M"
        Bps50M -> "BPS_50M"
        Bps5G -> "BPS_5G"

instance FromJSON InterconnectAttachmentBandwidth where
    parseJSON = parseJSONText "InterconnectAttachmentBandwidth"

instance ToJSON InterconnectAttachmentBandwidth where
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

-- | Specifies how port is selected for health checking, can be one of
-- following values: USE_FIXED_PORT: The port number in port is used for
-- health checking. USE_NAMED_PORT: The portName is used for health
-- checking. USE_SERVING_PORT: For NetworkEndpointGroup, the port specified
-- for each network endpoint is used for health checking. For other
-- backends, the port or named port specified in the Backend Service is
-- used for health checking. If not specified, HTTP2 health check follows
-- behavior specified in port and portName fields.
data HTTP2HealthCheckPortSpecification
    = HTTPHCPSUseFixedPort
      -- ^ @USE_FIXED_PORT@
    | HTTPHCPSUseNamedPort
      -- ^ @USE_NAMED_PORT@
    | HTTPHCPSUseServingPort
      -- ^ @USE_SERVING_PORT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTP2HealthCheckPortSpecification

instance FromHttpApiData HTTP2HealthCheckPortSpecification where
    parseQueryParam = \case
        "USE_FIXED_PORT" -> Right HTTPHCPSUseFixedPort
        "USE_NAMED_PORT" -> Right HTTPHCPSUseNamedPort
        "USE_SERVING_PORT" -> Right HTTPHCPSUseServingPort
        x -> Left ("Unable to parse HTTP2HealthCheckPortSpecification from: " <> x)

instance ToHttpApiData HTTP2HealthCheckPortSpecification where
    toQueryParam = \case
        HTTPHCPSUseFixedPort -> "USE_FIXED_PORT"
        HTTPHCPSUseNamedPort -> "USE_NAMED_PORT"
        HTTPHCPSUseServingPort -> "USE_SERVING_PORT"

instance FromJSON HTTP2HealthCheckPortSpecification where
    parseJSON = parseJSONText "HTTP2HealthCheckPortSpecification"

instance ToJSON HTTP2HealthCheckPortSpecification where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceListReferrersWarningCode
    = ILRWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ILRWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ILRWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ILRWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ILRWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ILRWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ILRWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ILRWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ILRWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ILRWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ILRWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ILRWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ILRWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ILRWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ILRWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ILRWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ILRWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ILRWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ILRWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ILRWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ILRWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ILRWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ILRWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceListReferrersWarningCode

instance FromHttpApiData InstanceListReferrersWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ILRWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ILRWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ILRWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ILRWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ILRWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ILRWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ILRWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ILRWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ILRWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ILRWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ILRWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ILRWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ILRWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ILRWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ILRWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ILRWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ILRWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ILRWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ILRWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ILRWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ILRWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ILRWCUndeclaredProperties
        "UNREACHABLE" -> Right ILRWCUnreachable
        x -> Left ("Unable to parse InstanceListReferrersWarningCode from: " <> x)

instance ToHttpApiData InstanceListReferrersWarningCode where
    toQueryParam = \case
        ILRWCCleanupFailed -> "CLEANUP_FAILED"
        ILRWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ILRWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ILRWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ILRWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ILRWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ILRWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ILRWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ILRWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ILRWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ILRWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ILRWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ILRWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ILRWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ILRWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ILRWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ILRWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ILRWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ILRWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ILRWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ILRWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ILRWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ILRWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceListReferrersWarningCode where
    parseJSON = parseJSONText "InstanceListReferrersWarningCode"

instance ToJSON InstanceListReferrersWarningCode where
    toJSON = toJSONText

-- | An operator to apply the subject with.
data ConditionOp
    = Discharged
      -- ^ @DISCHARGED@
    | Equals
      -- ^ @EQUALS@
    | IN
      -- ^ @IN@
    | NotEquals
      -- ^ @NOT_EQUALS@
    | NotIn
      -- ^ @NOT_IN@
    | NoOp
      -- ^ @NO_OP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionOp

instance FromHttpApiData ConditionOp where
    parseQueryParam = \case
        "DISCHARGED" -> Right Discharged
        "EQUALS" -> Right Equals
        "IN" -> Right IN
        "NOT_EQUALS" -> Right NotEquals
        "NOT_IN" -> Right NotIn
        "NO_OP" -> Right NoOp
        x -> Left ("Unable to parse ConditionOp from: " <> x)

instance ToHttpApiData ConditionOp where
    toQueryParam = \case
        Discharged -> "DISCHARGED"
        Equals -> "EQUALS"
        IN -> "IN"
        NotEquals -> "NOT_EQUALS"
        NotIn -> "NOT_IN"
        NoOp -> "NO_OP"

instance FromJSON ConditionOp where
    parseJSON = parseJSONText "ConditionOp"

instance ToJSON ConditionOp where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RouteListWarningCode
    = RCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | RNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouteListWarningCode

instance FromHttpApiData RouteListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RUndeclaredProperties
        "UNREACHABLE" -> Right RUnreachable
        x -> Left ("Unable to parse RouteListWarningCode from: " <> x)

instance ToHttpApiData RouteListWarningCode where
    toQueryParam = \case
        RCleanupFailed -> "CLEANUP_FAILED"
        RDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RNotCriticalError -> "NOT_CRITICAL_ERROR"
        RNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RUnreachable -> "UNREACHABLE"

instance FromJSON RouteListWarningCode where
    parseJSON = parseJSONText "RouteListWarningCode"

instance ToJSON RouteListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of the VPN tunnel, which can be one of the
-- following: - PROVISIONING: Resource is being allocated for the VPN
-- tunnel. - WAITING_FOR_FULL_CONFIG: Waiting to receive all VPN-related
-- configs from the user. Network, TargetVpnGateway, VpnTunnel,
-- ForwardingRule, and Route resources are needed to setup the VPN tunnel.
-- - FIRST_HANDSHAKE: Successful first handshake with the peer VPN. -
-- ESTABLISHED: Secure session is successfully established with the peer
-- VPN. - NETWORK_ERROR: Deprecated, replaced by NO_INCOMING_PACKETS -
-- AUTHORIZATION_ERROR: Auth error (for example, bad shared secret). -
-- NEGOTIATION_FAILURE: Handshake failed. - DEPROVISIONING: Resources are
-- being deallocated for the VPN tunnel. - FAILED: Tunnel creation has
-- failed and the tunnel is not ready to be used.
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SSLCertificateListWarningCode
    = SCLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SCLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SCLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | SCLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SCLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | SCLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | SCLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | SCLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SCLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | SCLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | SCLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | SCLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | SCLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | SCLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | SCLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | SCLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | SCLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | SCLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | SCLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SCLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SCLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SCLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | SCLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SSLCertificateListWarningCode

instance FromHttpApiData SSLCertificateListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SCLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SCLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right SCLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SCLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right SCLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right SCLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right SCLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SCLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right SCLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SCLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SCLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SCLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SCLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SCLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SCLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SCLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SCLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right SCLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right SCLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SCLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SCLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right SCLWCUndeclaredProperties
        "UNREACHABLE" -> Right SCLWCUnreachable
        x -> Left ("Unable to parse SSLCertificateListWarningCode from: " <> x)

instance ToHttpApiData SSLCertificateListWarningCode where
    toQueryParam = \case
        SCLWCCleanupFailed -> "CLEANUP_FAILED"
        SCLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SCLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        SCLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SCLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        SCLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SCLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        SCLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SCLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        SCLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SCLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SCLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SCLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SCLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SCLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        SCLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SCLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SCLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        SCLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SCLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SCLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SCLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        SCLWCUnreachable -> "UNREACHABLE"

instance FromJSON SSLCertificateListWarningCode where
    parseJSON = parseJSONText "SSLCertificateListWarningCode"

instance ToJSON SSLCertificateListWarningCode where
    toJSON = toJSONText

-- | Specifies whether to include the disk and what image to use. Possible
-- values are: - source-image: to use the same image that was used to
-- create the source instance\'s corresponding disk. Applicable to the boot
-- disk and additional read-write disks. - source-image-family: to use the
-- same image family that was used to create the source instance\'s
-- corresponding disk. Applicable to the boot disk and additional
-- read-write disks. - custom-image: to use a user-provided image url for
-- disk creation. Applicable to the boot disk and additional read-write
-- disks. - attach-read-only: to attach a read-only disk. Applicable to
-- read-only disks. - do-not-include: to exclude a disk from the template.
-- Applicable to additional read-write disks, local SSDs, and read-only
-- disks.
data DiskInstantiationConfigInstantiateFrom
    = AttachReadOnly
      -- ^ @ATTACH_READ_ONLY@
    | Blank
      -- ^ @BLANK@
    | CustomImage
      -- ^ @CUSTOM_IMAGE@
    | Default
      -- ^ @DEFAULT@
    | DoNotInclude
      -- ^ @DO_NOT_INCLUDE@
    | SourceImage
      -- ^ @SOURCE_IMAGE@
    | SourceImageFamily
      -- ^ @SOURCE_IMAGE_FAMILY@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiskInstantiationConfigInstantiateFrom

instance FromHttpApiData DiskInstantiationConfigInstantiateFrom where
    parseQueryParam = \case
        "ATTACH_READ_ONLY" -> Right AttachReadOnly
        "BLANK" -> Right Blank
        "CUSTOM_IMAGE" -> Right CustomImage
        "DEFAULT" -> Right Default
        "DO_NOT_INCLUDE" -> Right DoNotInclude
        "SOURCE_IMAGE" -> Right SourceImage
        "SOURCE_IMAGE_FAMILY" -> Right SourceImageFamily
        x -> Left ("Unable to parse DiskInstantiationConfigInstantiateFrom from: " <> x)

instance ToHttpApiData DiskInstantiationConfigInstantiateFrom where
    toQueryParam = \case
        AttachReadOnly -> "ATTACH_READ_ONLY"
        Blank -> "BLANK"
        CustomImage -> "CUSTOM_IMAGE"
        Default -> "DEFAULT"
        DoNotInclude -> "DO_NOT_INCLUDE"
        SourceImage -> "SOURCE_IMAGE"
        SourceImageFamily -> "SOURCE_IMAGE_FAMILY"

instance FromJSON DiskInstantiationConfigInstantiateFrom where
    parseJSON = parseJSONText "DiskInstantiationConfigInstantiateFrom"

instance ToJSON DiskInstantiationConfigInstantiateFrom where
    toJSON = toJSONText

-- | Specifies the balancing mode for this backend. For global HTTP(S) or
-- TCP\/SSL load balancing, the default is UTILIZATION. Valid values are
-- UTILIZATION, RATE (for HTTP(S)) and CONNECTION (for TCP\/SSL). For
-- Internal Load Balancing, the default and only supported mode is
-- CONNECTION.
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

data RouterBGPAdvertisedGroupsItem
    = RBAGIAllSubnets
      -- ^ @ALL_SUBNETS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterBGPAdvertisedGroupsItem

instance FromHttpApiData RouterBGPAdvertisedGroupsItem where
    parseQueryParam = \case
        "ALL_SUBNETS" -> Right RBAGIAllSubnets
        x -> Left ("Unable to parse RouterBGPAdvertisedGroupsItem from: " <> x)

instance ToHttpApiData RouterBGPAdvertisedGroupsItem where
    toQueryParam = \case
        RBAGIAllSubnets -> "ALL_SUBNETS"

instance FromJSON RouterBGPAdvertisedGroupsItem where
    parseJSON = parseJSONText "RouterBGPAdvertisedGroupsItem"

instance ToJSON RouterBGPAdvertisedGroupsItem where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NetworkEndpointGroupListWarningCode
    = NEGLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NEGLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NEGLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NEGLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NEGLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NEGLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NEGLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NEGLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NEGLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NEGLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NEGLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NEGLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NEGLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NEGLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NEGLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NEGLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NEGLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NEGLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NEGLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NEGLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NEGLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NEGLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NEGLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkEndpointGroupListWarningCode

instance FromHttpApiData NetworkEndpointGroupListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NEGLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NEGLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NEGLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NEGLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NEGLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NEGLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NEGLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NEGLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NEGLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NEGLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NEGLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NEGLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NEGLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NEGLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NEGLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NEGLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NEGLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NEGLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NEGLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NEGLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NEGLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NEGLWCUndeclaredProperties
        "UNREACHABLE" -> Right NEGLWCUnreachable
        x -> Left ("Unable to parse NetworkEndpointGroupListWarningCode from: " <> x)

instance ToHttpApiData NetworkEndpointGroupListWarningCode where
    toQueryParam = \case
        NEGLWCCleanupFailed -> "CLEANUP_FAILED"
        NEGLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NEGLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NEGLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NEGLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NEGLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NEGLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NEGLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NEGLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NEGLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NEGLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NEGLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NEGLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NEGLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NEGLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NEGLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NEGLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NEGLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NEGLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NEGLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NEGLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NEGLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NEGLWCUnreachable -> "UNREACHABLE"

instance FromJSON NetworkEndpointGroupListWarningCode where
    parseJSON = parseJSONText "NetworkEndpointGroupListWarningCode"

instance ToJSON NetworkEndpointGroupListWarningCode where
    toJSON = toJSONText

-- | The network-wide routing mode to use. If set to REGIONAL, this
-- network\'s cloud routers will only advertise routes with subnets of this
-- network in the same region as the router. If set to GLOBAL, this
-- network\'s cloud routers will advertise routes with all subnets of this
-- network, across regions.
data NetworkRoutingConfigRoutingMode
    = NRCRMGlobal
      -- ^ @GLOBAL@
    | NRCRMRegional
      -- ^ @REGIONAL@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkRoutingConfigRoutingMode

instance FromHttpApiData NetworkRoutingConfigRoutingMode where
    parseQueryParam = \case
        "GLOBAL" -> Right NRCRMGlobal
        "REGIONAL" -> Right NRCRMRegional
        x -> Left ("Unable to parse NetworkRoutingConfigRoutingMode from: " <> x)

instance ToHttpApiData NetworkRoutingConfigRoutingMode where
    toQueryParam = \case
        NRCRMGlobal -> "GLOBAL"
        NRCRMRegional -> "REGIONAL"

instance FromJSON NetworkRoutingConfigRoutingMode where
    parseJSON = parseJSONText "NetworkRoutingConfigRoutingMode"

instance ToJSON NetworkRoutingConfigRoutingMode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SubnetworkListWarningCode
    = SCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | SDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | SExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | SFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | SInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | SNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | SNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | SNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | SNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | SNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | SNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | SNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | SRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | SResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | SResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | SUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubnetworkListWarningCode

instance FromHttpApiData SubnetworkListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right SDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right SExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right SExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right SFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right SMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right SResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right SResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right SUndeclaredProperties
        "UNREACHABLE" -> Right SUnreachable
        x -> Left ("Unable to parse SubnetworkListWarningCode from: " <> x)

instance ToHttpApiData SubnetworkListWarningCode where
    toQueryParam = \case
        SCleanupFailed -> "CLEANUP_FAILED"
        SDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        SDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        SExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        SInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        SNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SNotCriticalError -> "NOT_CRITICAL_ERROR"
        SNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        SResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        SUnreachable -> "UNREACHABLE"

instance FromJSON SubnetworkListWarningCode where
    parseJSON = parseJSONText "SubnetworkListWarningCode"

instance ToJSON SubnetworkListWarningCode where
    toJSON = toJSONText

-- | [Output Only] Status of the commitment with regards to eventual
-- expiration (each commitment has an end date defined). One of the
-- following values: NOT_YET_ACTIVE, ACTIVE, EXPIRED.
data CommitmentStatus
    = CSActive
      -- ^ @ACTIVE@
    | CSCreating
      -- ^ @CREATING@
    | CSExpired
      -- ^ @EXPIRED@
    | CSNotYetActive
      -- ^ @NOT_YET_ACTIVE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommitmentStatus

instance FromHttpApiData CommitmentStatus where
    parseQueryParam = \case
        "ACTIVE" -> Right CSActive
        "CREATING" -> Right CSCreating
        "EXPIRED" -> Right CSExpired
        "NOT_YET_ACTIVE" -> Right CSNotYetActive
        x -> Left ("Unable to parse CommitmentStatus from: " <> x)

instance ToHttpApiData CommitmentStatus where
    toQueryParam = \case
        CSActive -> "ACTIVE"
        CSCreating -> "CREATING"
        CSExpired -> "EXPIRED"
        CSNotYetActive -> "NOT_YET_ACTIVE"

instance FromJSON CommitmentStatus where
    parseJSON = parseJSONText "CommitmentStatus"

instance ToJSON CommitmentStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InterconnectListWarningCode
    = ICleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | INextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | INextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | INextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | INextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | INextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | INotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | INoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ISchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ISingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectListWarningCode

instance FromHttpApiData InterconnectListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ICleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right INextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right INextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right INextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right INextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right INextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right INotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right INoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ISchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ISingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IUndeclaredProperties
        "UNREACHABLE" -> Right IUnreachable
        x -> Left ("Unable to parse InterconnectListWarningCode from: " <> x)

instance ToHttpApiData InterconnectListWarningCode where
    toQueryParam = \case
        ICleanupFailed -> "CLEANUP_FAILED"
        IDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        INextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        INextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        INextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        INextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        INextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        INotCriticalError -> "NOT_CRITICAL_ERROR"
        INoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ISchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ISingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IUnreachable -> "UNREACHABLE"

instance FromJSON InterconnectListWarningCode where
    parseJSON = parseJSONText "InterconnectListWarningCode"

instance ToJSON InterconnectListWarningCode where
    toJSON = toJSONText

-- | The minimum version of SSL protocol that can be used by the clients to
-- establish a connection with the load balancer. This can be one of
-- TLS_1_0, TLS_1_1, TLS_1_2.
data SSLPolicyMinTLSVersion
    = TLS10
      -- ^ @TLS_1_0@
    | TLS11
      -- ^ @TLS_1_1@
    | TLS12
      -- ^ @TLS_1_2@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SSLPolicyMinTLSVersion

instance FromHttpApiData SSLPolicyMinTLSVersion where
    parseQueryParam = \case
        "TLS_1_0" -> Right TLS10
        "TLS_1_1" -> Right TLS11
        "TLS_1_2" -> Right TLS12
        x -> Left ("Unable to parse SSLPolicyMinTLSVersion from: " <> x)

instance ToHttpApiData SSLPolicyMinTLSVersion where
    toQueryParam = \case
        TLS10 -> "TLS_1_0"
        TLS11 -> "TLS_1_1"
        TLS12 -> "TLS_1_2"

instance FromJSON SSLPolicyMinTLSVersion where
    parseJSON = parseJSONText "SSLPolicyMinTLSVersion"

instance ToJSON SSLPolicyMinTLSVersion where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data HTTPHealthCheckListWarningCode
    = HTTPHCLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | HTTPHCLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | HTTPHCLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | HTTPHCLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | HTTPHCLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | HTTPHCLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | HTTPHCLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | HTTPHCLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | HTTPHCLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | HTTPHCLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | HTTPHCLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | HTTPHCLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | HTTPHCLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | HTTPHCLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | HTTPHCLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | HTTPHCLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | HTTPHCLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | HTTPHCLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | HTTPHCLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | HTTPHCLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | HTTPHCLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | HTTPHCLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | HTTPHCLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPHealthCheckListWarningCode

instance FromHttpApiData HTTPHealthCheckListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right HTTPHCLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right HTTPHCLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right HTTPHCLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right HTTPHCLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right HTTPHCLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right HTTPHCLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right HTTPHCLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right HTTPHCLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right HTTPHCLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right HTTPHCLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right HTTPHCLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right HTTPHCLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right HTTPHCLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right HTTPHCLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right HTTPHCLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right HTTPHCLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right HTTPHCLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right HTTPHCLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right HTTPHCLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right HTTPHCLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right HTTPHCLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right HTTPHCLWCUndeclaredProperties
        "UNREACHABLE" -> Right HTTPHCLWCUnreachable
        x -> Left ("Unable to parse HTTPHealthCheckListWarningCode from: " <> x)

instance ToHttpApiData HTTPHealthCheckListWarningCode where
    toQueryParam = \case
        HTTPHCLWCCleanupFailed -> "CLEANUP_FAILED"
        HTTPHCLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        HTTPHCLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        HTTPHCLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        HTTPHCLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        HTTPHCLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        HTTPHCLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        HTTPHCLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        HTTPHCLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        HTTPHCLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        HTTPHCLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        HTTPHCLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        HTTPHCLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        HTTPHCLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        HTTPHCLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        HTTPHCLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        HTTPHCLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        HTTPHCLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        HTTPHCLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        HTTPHCLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        HTTPHCLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        HTTPHCLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        HTTPHCLWCUnreachable -> "UNREACHABLE"

instance FromJSON HTTPHealthCheckListWarningCode where
    parseJSON = parseJSONText "HTTPHealthCheckListWarningCode"

instance ToJSON HTTPHealthCheckListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SSLPoliciesListWarningCode
    = SPLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SPLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SPLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | SPLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SPLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | SPLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | SPLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | SPLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SPLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | SPLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | SPLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | SPLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | SPLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | SPLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | SPLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | SPLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | SPLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | SPLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | SPLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SPLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SPLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SPLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | SPLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SSLPoliciesListWarningCode

instance FromHttpApiData SSLPoliciesListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SPLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SPLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right SPLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SPLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right SPLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right SPLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right SPLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SPLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right SPLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SPLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SPLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SPLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SPLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SPLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SPLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SPLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SPLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right SPLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right SPLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SPLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SPLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right SPLWCUndeclaredProperties
        "UNREACHABLE" -> Right SPLWCUnreachable
        x -> Left ("Unable to parse SSLPoliciesListWarningCode from: " <> x)

instance ToHttpApiData SSLPoliciesListWarningCode where
    toQueryParam = \case
        SPLWCCleanupFailed -> "CLEANUP_FAILED"
        SPLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SPLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        SPLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SPLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        SPLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SPLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        SPLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SPLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        SPLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SPLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SPLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SPLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SPLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SPLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        SPLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SPLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SPLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        SPLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SPLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SPLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SPLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        SPLWCUnreachable -> "UNREACHABLE"

instance FromJSON SSLPoliciesListWarningCode where
    parseJSON = parseJSONText "SSLPoliciesListWarningCode"

instance ToJSON SSLPoliciesListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The current status of whether or not this interconnect
-- attachment is functional.
data InterconnectAttachmentOperationalStatus
    = OSActive
      -- ^ @OS_ACTIVE@
    | OSUnprovisioned
      -- ^ @OS_UNPROVISIONED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectAttachmentOperationalStatus

instance FromHttpApiData InterconnectAttachmentOperationalStatus where
    parseQueryParam = \case
        "OS_ACTIVE" -> Right OSActive
        "OS_UNPROVISIONED" -> Right OSUnprovisioned
        x -> Left ("Unable to parse InterconnectAttachmentOperationalStatus from: " <> x)

instance ToHttpApiData InterconnectAttachmentOperationalStatus where
    toQueryParam = \case
        OSActive -> "OS_ACTIVE"
        OSUnprovisioned -> "OS_UNPROVISIONED"

instance FromJSON InterconnectAttachmentOperationalStatus where
    parseJSON = parseJSONText "InterconnectAttachmentOperationalStatus"

instance ToJSON InterconnectAttachmentOperationalStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetTCPProxyListWarningCode
    = TTPLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TTPLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TTPLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TTPLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TTPLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TTPLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TTPLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TTPLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TTPLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | TTPLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TTPLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TTPLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TTPLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TTPLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TTPLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TTPLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TTPLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TTPLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TTPLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TTPLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TTPLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TTPLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TTPLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetTCPProxyListWarningCode

instance FromHttpApiData TargetTCPProxyListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TTPLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TTPLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TTPLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TTPLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TTPLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TTPLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TTPLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TTPLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TTPLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TTPLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TTPLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TTPLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TTPLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TTPLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TTPLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TTPLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TTPLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TTPLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TTPLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TTPLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TTPLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TTPLWCUndeclaredProperties
        "UNREACHABLE" -> Right TTPLWCUnreachable
        x -> Left ("Unable to parse TargetTCPProxyListWarningCode from: " <> x)

instance ToHttpApiData TargetTCPProxyListWarningCode where
    toQueryParam = \case
        TTPLWCCleanupFailed -> "CLEANUP_FAILED"
        TTPLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TTPLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TTPLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TTPLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TTPLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TTPLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TTPLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TTPLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TTPLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TTPLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TTPLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TTPLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TTPLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TTPLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TTPLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TTPLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TTPLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TTPLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TTPLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TTPLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TTPLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TTPLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetTCPProxyListWarningCode where
    parseJSON = parseJSONText "TargetTCPProxyListWarningCode"

instance ToJSON TargetTCPProxyListWarningCode where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = AdminRead
      -- ^ @ADMIN_READ@
    | DataRead
      -- ^ @DATA_READ@
    | DataWrite
      -- ^ @DATA_WRITE@
    | LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "ADMIN_READ" -> Right AdminRead
        "DATA_READ" -> Right DataRead
        "DATA_WRITE" -> Right DataWrite
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        AdminRead -> "ADMIN_READ"
        DataRead -> "DATA_READ"
        DataWrite -> "DATA_WRITE"
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
    toJSON = toJSONText

-- | The IP protocol to which this rule applies. Valid options are TCP, UDP,
-- ESP, AH, SCTP or ICMP. When the load balancing scheme is INTERNAL, only
-- TCP and UDP are valid. When the load balancing scheme is
-- INTERNAL_SELF_MANAGED, only TCPis valid.
data ForwardingRuleIPProtocol
    = FRIPAH
      -- ^ @AH@
    | FRIPEsp
      -- ^ @ESP@
    | FRIPICMP
      -- ^ @ICMP@
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
        "ICMP" -> Right FRIPICMP
        "SCTP" -> Right FRIPSctp
        "TCP" -> Right FRIPTCP
        "UDP" -> Right FRIPUdp
        x -> Left ("Unable to parse ForwardingRuleIPProtocol from: " <> x)

instance ToHttpApiData ForwardingRuleIPProtocol where
    toQueryParam = \case
        FRIPAH -> "AH"
        FRIPEsp -> "ESP"
        FRIPICMP -> "ICMP"
        FRIPSctp -> "SCTP"
        FRIPTCP -> "TCP"
        FRIPUdp -> "UDP"

instance FromJSON ForwardingRuleIPProtocol where
    parseJSON = parseJSONText "ForwardingRuleIPProtocol"

instance ToJSON ForwardingRuleIPProtocol where
    toJSON = toJSONText

-- | Optional query parameter for showing the health status of each network
-- endpoint. Valid options are SKIP or SHOW. If you don\'t specifiy this
-- parameter, the health status of network endpoints will not be provided.
data NetworkEndpointGroupsListEndpointsRequestHealthStatus
    = Show
      -- ^ @SHOW@
    | Skip
      -- ^ @SKIP@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkEndpointGroupsListEndpointsRequestHealthStatus

instance FromHttpApiData NetworkEndpointGroupsListEndpointsRequestHealthStatus where
    parseQueryParam = \case
        "SHOW" -> Right Show
        "SKIP" -> Right Skip
        x -> Left ("Unable to parse NetworkEndpointGroupsListEndpointsRequestHealthStatus from: " <> x)

instance ToHttpApiData NetworkEndpointGroupsListEndpointsRequestHealthStatus where
    toQueryParam = \case
        Show -> "SHOW"
        Skip -> "SKIP"

instance FromJSON NetworkEndpointGroupsListEndpointsRequestHealthStatus where
    parseJSON = parseJSONText "NetworkEndpointGroupsListEndpointsRequestHealthStatus"

instance ToJSON NetworkEndpointGroupsListEndpointsRequestHealthStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data ImageListWarningCode
    = IMACleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IMADeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IMADeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IMADiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IMAExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IMAExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IMAFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IMAInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IMAMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IMANextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IMANextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IMANextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IMANextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IMANextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IMANotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IMANoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IMARequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IMAResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IMAResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IMASchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IMASingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IMAUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IMAUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageListWarningCode

instance FromHttpApiData ImageListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IMACleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IMADeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IMADeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IMADiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IMAExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IMAExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IMAFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IMAInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IMAMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IMANextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IMANextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IMANextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IMANextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IMANextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IMANotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IMANoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IMARequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IMAResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IMAResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IMASchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IMASingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IMAUndeclaredProperties
        "UNREACHABLE" -> Right IMAUnreachable
        x -> Left ("Unable to parse ImageListWarningCode from: " <> x)

instance ToHttpApiData ImageListWarningCode where
    toQueryParam = \case
        IMACleanupFailed -> "CLEANUP_FAILED"
        IMADeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IMADeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IMADiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IMAExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IMAExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IMAFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IMAInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IMAMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IMANextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IMANextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IMANextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IMANextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IMANextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IMANotCriticalError -> "NOT_CRITICAL_ERROR"
        IMANoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IMARequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IMAResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IMAResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IMASchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IMASingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IMAUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IMAUnreachable -> "UNREACHABLE"

instance FromJSON ImageListWarningCode where
    parseJSON = parseJSONText "ImageListWarningCode"

instance ToJSON ImageListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of the address, which can be one of RESERVING,
-- RESERVED, or IN_USE. An address that is RESERVING is currently in the
-- process of being reserved. A RESERVED address is currently reserved and
-- available to use. An IN_USE address is currently being used by another
-- resource and is not available.
data AddressStatus
    = InUse
      -- ^ @IN_USE@
    | Reserved
      -- ^ @RESERVED@
    | Reserving
      -- ^ @RESERVING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressStatus

instance FromHttpApiData AddressStatus where
    parseQueryParam = \case
        "IN_USE" -> Right InUse
        "RESERVED" -> Right Reserved
        "RESERVING" -> Right Reserving
        x -> Left ("Unable to parse AddressStatus from: " <> x)

instance ToHttpApiData AddressStatus where
    toQueryParam = \case
        InUse -> "IN_USE"
        Reserved -> "RESERVED"
        Reserving -> "RESERVING"

instance FromJSON AddressStatus where
    parseJSON = parseJSONText "AddressStatus"

instance ToJSON AddressStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AcceleratorTypeListWarningCode
    = ATLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ATLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ATLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ATLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ATLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ATLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ATLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ATLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ATLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ATLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ATLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ATLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ATLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ATLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ATLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ATLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ATLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ATLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ATLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ATLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ATLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ATLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ATLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AcceleratorTypeListWarningCode

instance FromHttpApiData AcceleratorTypeListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ATLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ATLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ATLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ATLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ATLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ATLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ATLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ATLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ATLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ATLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ATLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ATLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ATLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ATLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ATLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ATLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ATLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ATLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ATLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ATLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ATLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ATLWCUndeclaredProperties
        "UNREACHABLE" -> Right ATLWCUnreachable
        x -> Left ("Unable to parse AcceleratorTypeListWarningCode from: " <> x)

instance ToHttpApiData AcceleratorTypeListWarningCode where
    toQueryParam = \case
        ATLWCCleanupFailed -> "CLEANUP_FAILED"
        ATLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ATLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ATLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ATLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ATLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ATLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ATLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ATLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ATLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ATLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ATLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ATLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ATLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ATLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ATLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ATLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ATLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ATLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ATLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ATLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ATLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ATLWCUnreachable -> "UNREACHABLE"

instance FromJSON AcceleratorTypeListWarningCode where
    parseJSON = parseJSONText "AcceleratorTypeListWarningCode"

instance ToJSON AcceleratorTypeListWarningCode where
    toJSON = toJSONText

-- | This signifies the networking tier used for configuring this Address and
-- can only take the following values: PREMIUM, STANDARD. Global forwarding
-- rules can only be Premium Tier. Regional forwarding rules can be either
-- Premium or Standard Tier. Standard Tier addresses applied to regional
-- forwarding rules can be used with any external load balancer. Regional
-- forwarding rules in Premium Tier can only be used with a Network load
-- balancer. If this field is not specified, it is assumed to be PREMIUM.
data AddressNetworkTier
    = ANTPremium
      -- ^ @PREMIUM@
    | ANTStandard
      -- ^ @STANDARD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressNetworkTier

instance FromHttpApiData AddressNetworkTier where
    parseQueryParam = \case
        "PREMIUM" -> Right ANTPremium
        "STANDARD" -> Right ANTStandard
        x -> Left ("Unable to parse AddressNetworkTier from: " <> x)

instance ToHttpApiData AddressNetworkTier where
    toQueryParam = \case
        ANTPremium -> "PREMIUM"
        ANTStandard -> "STANDARD"

instance FromJSON AddressNetworkTier where
    parseJSON = parseJSONText "AddressNetworkTier"

instance ToJSON AddressNetworkTier where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data URLMapListWarningCode
    = UMLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | UMLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | UMLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | UMLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | UMLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | UMLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | UMLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | UMLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | UMLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | UMLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | UMLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | UMLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | UMLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | UMLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | UMLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | UMLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | UMLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | UMLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | UMLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | UMLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | UMLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | UMLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | UMLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable URLMapListWarningCode

instance FromHttpApiData URLMapListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right UMLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right UMLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right UMLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right UMLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right UMLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right UMLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right UMLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right UMLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right UMLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right UMLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right UMLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right UMLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right UMLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right UMLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right UMLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right UMLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right UMLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right UMLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right UMLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right UMLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right UMLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right UMLWCUndeclaredProperties
        "UNREACHABLE" -> Right UMLWCUnreachable
        x -> Left ("Unable to parse URLMapListWarningCode from: " <> x)

instance ToHttpApiData URLMapListWarningCode where
    toQueryParam = \case
        UMLWCCleanupFailed -> "CLEANUP_FAILED"
        UMLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        UMLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        UMLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        UMLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        UMLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        UMLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        UMLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        UMLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        UMLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        UMLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        UMLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        UMLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        UMLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        UMLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        UMLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        UMLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        UMLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        UMLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        UMLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        UMLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        UMLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        UMLWCUnreachable -> "UNREACHABLE"

instance FromJSON URLMapListWarningCode where
    parseJSON = parseJSONText "URLMapListWarningCode"

instance ToJSON URLMapListWarningCode where
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

-- | Defines the operation of node selection.
data SchedulingNodeAffinityOperator
    = SNAOIN
      -- ^ @IN@
    | SNAONotIn
      -- ^ @NOT_IN@
    | SNAOOperatorUnspecified
      -- ^ @OPERATOR_UNSPECIFIED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SchedulingNodeAffinityOperator

instance FromHttpApiData SchedulingNodeAffinityOperator where
    parseQueryParam = \case
        "IN" -> Right SNAOIN
        "NOT_IN" -> Right SNAONotIn
        "OPERATOR_UNSPECIFIED" -> Right SNAOOperatorUnspecified
        x -> Left ("Unable to parse SchedulingNodeAffinityOperator from: " <> x)

instance ToHttpApiData SchedulingNodeAffinityOperator where
    toQueryParam = \case
        SNAOIN -> "IN"
        SNAONotIn -> "NOT_IN"
        SNAOOperatorUnspecified -> "OPERATOR_UNSPECIFIED"

instance FromJSON SchedulingNodeAffinityOperator where
    parseJSON = parseJSONText "SchedulingNodeAffinityOperator"

instance ToJSON SchedulingNodeAffinityOperator where
    toJSON = toJSONText

-- | This signifies the default network tier used for configuring resources
-- of the project and can only take the following values: PREMIUM,
-- STANDARD. Initially the default network tier is PREMIUM.
data ProjectDefaultNetworkTier
    = PDNTPremium
      -- ^ @PREMIUM@
    | PDNTStandard
      -- ^ @STANDARD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectDefaultNetworkTier

instance FromHttpApiData ProjectDefaultNetworkTier where
    parseQueryParam = \case
        "PREMIUM" -> Right PDNTPremium
        "STANDARD" -> Right PDNTStandard
        x -> Left ("Unable to parse ProjectDefaultNetworkTier from: " <> x)

instance ToHttpApiData ProjectDefaultNetworkTier where
    toQueryParam = \case
        PDNTPremium -> "PREMIUM"
        PDNTStandard -> "STANDARD"

instance FromJSON ProjectDefaultNetworkTier where
    parseJSON = parseJSONText "ProjectDefaultNetworkTier"

instance ToJSON ProjectDefaultNetworkTier where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NodeGroupListWarningCode
    = NGLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NGLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NGLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NGLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NGLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NGLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NGLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NGLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NGLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NGLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NGLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NGLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NGLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NGLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NGLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NGLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NGLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NGLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NGLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NGLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NGLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NGLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NGLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeGroupListWarningCode

instance FromHttpApiData NodeGroupListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NGLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NGLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NGLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NGLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NGLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NGLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NGLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NGLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NGLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NGLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NGLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NGLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NGLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NGLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NGLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NGLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NGLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NGLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NGLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NGLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NGLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NGLWCUndeclaredProperties
        "UNREACHABLE" -> Right NGLWCUnreachable
        x -> Left ("Unable to parse NodeGroupListWarningCode from: " <> x)

instance ToHttpApiData NodeGroupListWarningCode where
    toQueryParam = \case
        NGLWCCleanupFailed -> "CLEANUP_FAILED"
        NGLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NGLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NGLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NGLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NGLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NGLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NGLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NGLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NGLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NGLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NGLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NGLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NGLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NGLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NGLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NGLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NGLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NGLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NGLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NGLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NGLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NGLWCUnreachable -> "UNREACHABLE"

instance FromJSON NodeGroupListWarningCode where
    parseJSON = parseJSONText "NodeGroupListWarningCode"

instance ToJSON NodeGroupListWarningCode where
    toJSON = toJSONText

-- | Specify the Nat option. If this field contains
-- ALL_SUBNETWORKS_ALL_IP_RANGES or ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES,
-- then there should not be any other Router.Nat section in any Router for
-- this network in this region.
data RouterNATSourceSubnetworkIPRangesToNAT
    = AllSubnetworksAllIPRanges
      -- ^ @ALL_SUBNETWORKS_ALL_IP_RANGES@
    | AllSubnetworksAllPrimaryIPRanges
      -- ^ @ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES@
    | ListOfSubnetworks
      -- ^ @LIST_OF_SUBNETWORKS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterNATSourceSubnetworkIPRangesToNAT

instance FromHttpApiData RouterNATSourceSubnetworkIPRangesToNAT where
    parseQueryParam = \case
        "ALL_SUBNETWORKS_ALL_IP_RANGES" -> Right AllSubnetworksAllIPRanges
        "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES" -> Right AllSubnetworksAllPrimaryIPRanges
        "LIST_OF_SUBNETWORKS" -> Right ListOfSubnetworks
        x -> Left ("Unable to parse RouterNATSourceSubnetworkIPRangesToNAT from: " <> x)

instance ToHttpApiData RouterNATSourceSubnetworkIPRangesToNAT where
    toQueryParam = \case
        AllSubnetworksAllIPRanges -> "ALL_SUBNETWORKS_ALL_IP_RANGES"
        AllSubnetworksAllPrimaryIPRanges -> "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES"
        ListOfSubnetworks -> "LIST_OF_SUBNETWORKS"

instance FromJSON RouterNATSourceSubnetworkIPRangesToNAT where
    parseJSON = parseJSONText "RouterNATSourceSubnetworkIPRangesToNAT"

instance ToJSON RouterNATSourceSubnetworkIPRangesToNAT where
    toJSON = toJSONText

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data HTTPSHealthCheckProxyHeader
    = HHCPHNone
      -- ^ @NONE@
    | HHCPHProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPSHealthCheckProxyHeader

instance FromHttpApiData HTTPSHealthCheckProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right HHCPHNone
        "PROXY_V1" -> Right HHCPHProxyV1
        x -> Left ("Unable to parse HTTPSHealthCheckProxyHeader from: " <> x)

instance ToHttpApiData HTTPSHealthCheckProxyHeader where
    toQueryParam = \case
        HHCPHNone -> "NONE"
        HHCPHProxyV1 -> "PROXY_V1"

instance FromJSON HTTPSHealthCheckProxyHeader where
    parseJSON = parseJSONText "HTTPSHealthCheckProxyHeader"

instance ToJSON HTTPSHealthCheckProxyHeader where
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

-- | Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS or
-- HTTP2. If not specified, the default is TCP. Exactly one of the
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RegionInstanceGroupsListInstancesWarningCode
    = RIGLIWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RIGLIWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RIGLIWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RIGLIWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RIGLIWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RIGLIWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RIGLIWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RIGLIWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RIGLIWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | RIGLIWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RIGLIWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RIGLIWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RIGLIWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RIGLIWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RIGLIWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RIGLIWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RIGLIWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RIGLIWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RIGLIWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RIGLIWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RIGLIWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RIGLIWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RIGLIWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RegionInstanceGroupsListInstancesWarningCode

instance FromHttpApiData RegionInstanceGroupsListInstancesWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RIGLIWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RIGLIWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RIGLIWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RIGLIWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RIGLIWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RIGLIWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RIGLIWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RIGLIWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RIGLIWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RIGLIWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RIGLIWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RIGLIWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RIGLIWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RIGLIWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RIGLIWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RIGLIWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RIGLIWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RIGLIWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RIGLIWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RIGLIWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RIGLIWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RIGLIWCUndeclaredProperties
        "UNREACHABLE" -> Right RIGLIWCUnreachable
        x -> Left ("Unable to parse RegionInstanceGroupsListInstancesWarningCode from: " <> x)

instance ToHttpApiData RegionInstanceGroupsListInstancesWarningCode where
    toQueryParam = \case
        RIGLIWCCleanupFailed -> "CLEANUP_FAILED"
        RIGLIWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RIGLIWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RIGLIWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RIGLIWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RIGLIWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RIGLIWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RIGLIWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RIGLIWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RIGLIWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RIGLIWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RIGLIWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RIGLIWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RIGLIWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RIGLIWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        RIGLIWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RIGLIWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RIGLIWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RIGLIWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RIGLIWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RIGLIWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RIGLIWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RIGLIWCUnreachable -> "UNREACHABLE"

instance FromJSON RegionInstanceGroupsListInstancesWarningCode where
    parseJSON = parseJSONText "RegionInstanceGroupsListInstancesWarningCode"

instance ToJSON RegionInstanceGroupsListInstancesWarningCode where
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
data NetworkEndpointGroupsScopedListWarningCode
    = NEGSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NEGSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NEGSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NEGSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NEGSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NEGSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NEGSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NEGSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NEGSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NEGSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NEGSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NEGSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NEGSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NEGSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NEGSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NEGSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NEGSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NEGSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NEGSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NEGSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NEGSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NEGSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NEGSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkEndpointGroupsScopedListWarningCode

instance FromHttpApiData NetworkEndpointGroupsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NEGSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NEGSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NEGSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NEGSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NEGSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NEGSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NEGSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NEGSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NEGSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NEGSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NEGSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NEGSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NEGSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NEGSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NEGSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NEGSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NEGSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NEGSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NEGSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NEGSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NEGSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NEGSLWCUndeclaredProperties
        "UNREACHABLE" -> Right NEGSLWCUnreachable
        x -> Left ("Unable to parse NetworkEndpointGroupsScopedListWarningCode from: " <> x)

instance ToHttpApiData NetworkEndpointGroupsScopedListWarningCode where
    toQueryParam = \case
        NEGSLWCCleanupFailed -> "CLEANUP_FAILED"
        NEGSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NEGSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NEGSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NEGSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NEGSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NEGSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NEGSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NEGSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NEGSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NEGSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NEGSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NEGSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NEGSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NEGSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NEGSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NEGSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NEGSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NEGSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NEGSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NEGSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NEGSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NEGSLWCUnreachable -> "UNREACHABLE"

instance FromJSON NetworkEndpointGroupsScopedListWarningCode where
    parseJSON = parseJSONText "NetworkEndpointGroupsScopedListWarningCode"

instance ToJSON NetworkEndpointGroupsScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SubnetworksScopedListWarningCode
    = SSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | SSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | SSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | SSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | SSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | SSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | SSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | SSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SubnetworksScopedListWarningCode

instance FromHttpApiData SubnetworksScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right SSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right SSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right SSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right SSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right SSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right SSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right SSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right SSLWCUndeclaredProperties
        "UNREACHABLE" -> Right SSLWCUnreachable
        x -> Left ("Unable to parse SubnetworksScopedListWarningCode from: " <> x)

instance ToHttpApiData SubnetworksScopedListWarningCode where
    toQueryParam = \case
        SSLWCCleanupFailed -> "CLEANUP_FAILED"
        SSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        SSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        SSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        SSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        SSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        SSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        SSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        SSLWCUnreachable -> "UNREACHABLE"

instance FromJSON SubnetworksScopedListWarningCode where
    parseJSON = parseJSONText "SubnetworksScopedListWarningCode"

instance ToJSON SubnetworksScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NetworkEndpointGroupsListNetworkEndpointsWarningCode
    = NEGLNEWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NEGLNEWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NEGLNEWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NEGLNEWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NEGLNEWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NEGLNEWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NEGLNEWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NEGLNEWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NEGLNEWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NEGLNEWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NEGLNEWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NEGLNEWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NEGLNEWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NEGLNEWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NEGLNEWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NEGLNEWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NEGLNEWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NEGLNEWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NEGLNEWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NEGLNEWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NEGLNEWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NEGLNEWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NEGLNEWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkEndpointGroupsListNetworkEndpointsWarningCode

instance FromHttpApiData NetworkEndpointGroupsListNetworkEndpointsWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NEGLNEWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NEGLNEWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NEGLNEWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NEGLNEWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NEGLNEWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NEGLNEWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NEGLNEWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NEGLNEWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NEGLNEWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NEGLNEWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NEGLNEWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NEGLNEWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NEGLNEWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NEGLNEWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NEGLNEWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NEGLNEWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NEGLNEWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NEGLNEWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NEGLNEWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NEGLNEWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NEGLNEWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NEGLNEWCUndeclaredProperties
        "UNREACHABLE" -> Right NEGLNEWCUnreachable
        x -> Left ("Unable to parse NetworkEndpointGroupsListNetworkEndpointsWarningCode from: " <> x)

instance ToHttpApiData NetworkEndpointGroupsListNetworkEndpointsWarningCode where
    toQueryParam = \case
        NEGLNEWCCleanupFailed -> "CLEANUP_FAILED"
        NEGLNEWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NEGLNEWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NEGLNEWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NEGLNEWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NEGLNEWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NEGLNEWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NEGLNEWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NEGLNEWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NEGLNEWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NEGLNEWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NEGLNEWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NEGLNEWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NEGLNEWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NEGLNEWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NEGLNEWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NEGLNEWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NEGLNEWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NEGLNEWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NEGLNEWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NEGLNEWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NEGLNEWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NEGLNEWCUnreachable -> "UNREACHABLE"

instance FromJSON NetworkEndpointGroupsListNetworkEndpointsWarningCode where
    parseJSON = parseJSONText "NetworkEndpointGroupsListNetworkEndpointsWarningCode"

instance ToJSON NetworkEndpointGroupsListNetworkEndpointsWarningCode where
    toJSON = toJSONText

-- | [Output Only] Name of the quota metric.
data QuotaMetric
    = Autoscalers
      -- ^ @AUTOSCALERS@
    | BackendBuckets
      -- ^ @BACKEND_BUCKETS@
    | BackendServices
      -- ^ @BACKEND_SERVICES@
    | Commitments
      -- ^ @COMMITMENTS@
    | CPUs
      -- ^ @CPUS@
    | CPUsAllRegions
      -- ^ @CPUS_ALL_REGIONS@
    | DisksTotalGb
      -- ^ @DISKS_TOTAL_GB@
    | ExternalVPNGateways
      -- ^ @EXTERNAL_VPN_GATEWAYS@
    | Firewalls
      -- ^ @FIREWALLS@
    | ForwardingRules
      -- ^ @FORWARDING_RULES@
    | GlobalInternalAddresses
      -- ^ @GLOBAL_INTERNAL_ADDRESSES@
    | GpusAllRegions
      -- ^ @GPUS_ALL_REGIONS@
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
    | Interconnects
      -- ^ @INTERCONNECTS@
    | InterconnectAttachmentsPerRegion
      -- ^ @INTERCONNECT_ATTACHMENTS_PER_REGION@
    | InterconnectAttachmentsTotalMbps
      -- ^ @INTERCONNECT_ATTACHMENTS_TOTAL_MBPS@
    | InternalAddresses
      -- ^ @INTERNAL_ADDRESSES@
    | InUseAddresses
      -- ^ @IN_USE_ADDRESSES@
    | InUseBackupSchedules
      -- ^ @IN_USE_BACKUP_SCHEDULES@
    | InUseSnapshotSchedules
      -- ^ @IN_USE_SNAPSHOT_SCHEDULES@
    | LocalSsdTotalGb
      -- ^ @LOCAL_SSD_TOTAL_GB@
    | Networks
      -- ^ @NETWORKS@
    | NetworkEndpointGroups
      -- ^ @NETWORK_ENDPOINT_GROUPS@
    | NvidiaK80Gpus
      -- ^ @NVIDIA_K80_GPUS@
    | NvidiaP100Gpus
      -- ^ @NVIDIA_P100_GPUS@
    | NvidiaP100VwsGpus
      -- ^ @NVIDIA_P100_VWS_GPUS@
    | NvidiaP4Gpus
      -- ^ @NVIDIA_P4_GPUS@
    | NvidiaP4VwsGpus
      -- ^ @NVIDIA_P4_VWS_GPUS@
    | NvidiaT4Gpus
      -- ^ @NVIDIA_T4_GPUS@
    | NvidiaT4VwsGpus
      -- ^ @NVIDIA_T4_VWS_GPUS@
    | NvidiaV100Gpus
      -- ^ @NVIDIA_V100_GPUS@
    | PreemptibleCPUs
      -- ^ @PREEMPTIBLE_CPUS@
    | PreemptibleLocalSsdGb
      -- ^ @PREEMPTIBLE_LOCAL_SSD_GB@
    | PreemptibleNvidiaK80Gpus
      -- ^ @PREEMPTIBLE_NVIDIA_K80_GPUS@
    | PreemptibleNvidiaP100Gpus
      -- ^ @PREEMPTIBLE_NVIDIA_P100_GPUS@
    | PreemptibleNvidiaP100VwsGpus
      -- ^ @PREEMPTIBLE_NVIDIA_P100_VWS_GPUS@
    | PreemptibleNvidiaP4Gpus
      -- ^ @PREEMPTIBLE_NVIDIA_P4_GPUS@
    | PreemptibleNvidiaP4VwsGpus
      -- ^ @PREEMPTIBLE_NVIDIA_P4_VWS_GPUS@
    | PreemptibleNvidiaT4Gpus
      -- ^ @PREEMPTIBLE_NVIDIA_T4_GPUS@
    | PreemptibleNvidiaT4VwsGpus
      -- ^ @PREEMPTIBLE_NVIDIA_T4_VWS_GPUS@
    | PreemptibleNvidiaV100Gpus
      -- ^ @PREEMPTIBLE_NVIDIA_V100_GPUS@
    | RegionalAutoscalers
      -- ^ @REGIONAL_AUTOSCALERS@
    | RegionalInstanceGroupManagers
      -- ^ @REGIONAL_INSTANCE_GROUP_MANAGERS@
    | ResourcePolicies
      -- ^ @RESOURCE_POLICIES@
    | Routers
      -- ^ @ROUTERS@
    | Routes
      -- ^ @ROUTES@
    | SecurityPolicies
      -- ^ @SECURITY_POLICIES@
    | SecurityPolicyRules
      -- ^ @SECURITY_POLICY_RULES@
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
    | TargetTCPProxies
      -- ^ @TARGET_TCP_PROXIES@
    | TargetVPNGateways
      -- ^ @TARGET_VPN_GATEWAYS@
    | URLMaps
      -- ^ @URL_MAPS@
    | VPNGateways
      -- ^ @VPN_GATEWAYS@
    | VPNTunnels
      -- ^ @VPN_TUNNELS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QuotaMetric

instance FromHttpApiData QuotaMetric where
    parseQueryParam = \case
        "AUTOSCALERS" -> Right Autoscalers
        "BACKEND_BUCKETS" -> Right BackendBuckets
        "BACKEND_SERVICES" -> Right BackendServices
        "COMMITMENTS" -> Right Commitments
        "CPUS" -> Right CPUs
        "CPUS_ALL_REGIONS" -> Right CPUsAllRegions
        "DISKS_TOTAL_GB" -> Right DisksTotalGb
        "EXTERNAL_VPN_GATEWAYS" -> Right ExternalVPNGateways
        "FIREWALLS" -> Right Firewalls
        "FORWARDING_RULES" -> Right ForwardingRules
        "GLOBAL_INTERNAL_ADDRESSES" -> Right GlobalInternalAddresses
        "GPUS_ALL_REGIONS" -> Right GpusAllRegions
        "HEALTH_CHECKS" -> Right HealthChecks
        "IMAGES" -> Right Images
        "INSTANCES" -> Right Instances
        "INSTANCE_GROUPS" -> Right InstanceGroups
        "INSTANCE_GROUP_MANAGERS" -> Right InstanceGroupManagers
        "INSTANCE_TEMPLATES" -> Right InstanceTemplates
        "INTERCONNECTS" -> Right Interconnects
        "INTERCONNECT_ATTACHMENTS_PER_REGION" -> Right InterconnectAttachmentsPerRegion
        "INTERCONNECT_ATTACHMENTS_TOTAL_MBPS" -> Right InterconnectAttachmentsTotalMbps
        "INTERNAL_ADDRESSES" -> Right InternalAddresses
        "IN_USE_ADDRESSES" -> Right InUseAddresses
        "IN_USE_BACKUP_SCHEDULES" -> Right InUseBackupSchedules
        "IN_USE_SNAPSHOT_SCHEDULES" -> Right InUseSnapshotSchedules
        "LOCAL_SSD_TOTAL_GB" -> Right LocalSsdTotalGb
        "NETWORKS" -> Right Networks
        "NETWORK_ENDPOINT_GROUPS" -> Right NetworkEndpointGroups
        "NVIDIA_K80_GPUS" -> Right NvidiaK80Gpus
        "NVIDIA_P100_GPUS" -> Right NvidiaP100Gpus
        "NVIDIA_P100_VWS_GPUS" -> Right NvidiaP100VwsGpus
        "NVIDIA_P4_GPUS" -> Right NvidiaP4Gpus
        "NVIDIA_P4_VWS_GPUS" -> Right NvidiaP4VwsGpus
        "NVIDIA_T4_GPUS" -> Right NvidiaT4Gpus
        "NVIDIA_T4_VWS_GPUS" -> Right NvidiaT4VwsGpus
        "NVIDIA_V100_GPUS" -> Right NvidiaV100Gpus
        "PREEMPTIBLE_CPUS" -> Right PreemptibleCPUs
        "PREEMPTIBLE_LOCAL_SSD_GB" -> Right PreemptibleLocalSsdGb
        "PREEMPTIBLE_NVIDIA_K80_GPUS" -> Right PreemptibleNvidiaK80Gpus
        "PREEMPTIBLE_NVIDIA_P100_GPUS" -> Right PreemptibleNvidiaP100Gpus
        "PREEMPTIBLE_NVIDIA_P100_VWS_GPUS" -> Right PreemptibleNvidiaP100VwsGpus
        "PREEMPTIBLE_NVIDIA_P4_GPUS" -> Right PreemptibleNvidiaP4Gpus
        "PREEMPTIBLE_NVIDIA_P4_VWS_GPUS" -> Right PreemptibleNvidiaP4VwsGpus
        "PREEMPTIBLE_NVIDIA_T4_GPUS" -> Right PreemptibleNvidiaT4Gpus
        "PREEMPTIBLE_NVIDIA_T4_VWS_GPUS" -> Right PreemptibleNvidiaT4VwsGpus
        "PREEMPTIBLE_NVIDIA_V100_GPUS" -> Right PreemptibleNvidiaV100Gpus
        "REGIONAL_AUTOSCALERS" -> Right RegionalAutoscalers
        "REGIONAL_INSTANCE_GROUP_MANAGERS" -> Right RegionalInstanceGroupManagers
        "RESOURCE_POLICIES" -> Right ResourcePolicies
        "ROUTERS" -> Right Routers
        "ROUTES" -> Right Routes
        "SECURITY_POLICIES" -> Right SecurityPolicies
        "SECURITY_POLICY_RULES" -> Right SecurityPolicyRules
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
        "TARGET_TCP_PROXIES" -> Right TargetTCPProxies
        "TARGET_VPN_GATEWAYS" -> Right TargetVPNGateways
        "URL_MAPS" -> Right URLMaps
        "VPN_GATEWAYS" -> Right VPNGateways
        "VPN_TUNNELS" -> Right VPNTunnels
        x -> Left ("Unable to parse QuotaMetric from: " <> x)

instance ToHttpApiData QuotaMetric where
    toQueryParam = \case
        Autoscalers -> "AUTOSCALERS"
        BackendBuckets -> "BACKEND_BUCKETS"
        BackendServices -> "BACKEND_SERVICES"
        Commitments -> "COMMITMENTS"
        CPUs -> "CPUS"
        CPUsAllRegions -> "CPUS_ALL_REGIONS"
        DisksTotalGb -> "DISKS_TOTAL_GB"
        ExternalVPNGateways -> "EXTERNAL_VPN_GATEWAYS"
        Firewalls -> "FIREWALLS"
        ForwardingRules -> "FORWARDING_RULES"
        GlobalInternalAddresses -> "GLOBAL_INTERNAL_ADDRESSES"
        GpusAllRegions -> "GPUS_ALL_REGIONS"
        HealthChecks -> "HEALTH_CHECKS"
        Images -> "IMAGES"
        Instances -> "INSTANCES"
        InstanceGroups -> "INSTANCE_GROUPS"
        InstanceGroupManagers -> "INSTANCE_GROUP_MANAGERS"
        InstanceTemplates -> "INSTANCE_TEMPLATES"
        Interconnects -> "INTERCONNECTS"
        InterconnectAttachmentsPerRegion -> "INTERCONNECT_ATTACHMENTS_PER_REGION"
        InterconnectAttachmentsTotalMbps -> "INTERCONNECT_ATTACHMENTS_TOTAL_MBPS"
        InternalAddresses -> "INTERNAL_ADDRESSES"
        InUseAddresses -> "IN_USE_ADDRESSES"
        InUseBackupSchedules -> "IN_USE_BACKUP_SCHEDULES"
        InUseSnapshotSchedules -> "IN_USE_SNAPSHOT_SCHEDULES"
        LocalSsdTotalGb -> "LOCAL_SSD_TOTAL_GB"
        Networks -> "NETWORKS"
        NetworkEndpointGroups -> "NETWORK_ENDPOINT_GROUPS"
        NvidiaK80Gpus -> "NVIDIA_K80_GPUS"
        NvidiaP100Gpus -> "NVIDIA_P100_GPUS"
        NvidiaP100VwsGpus -> "NVIDIA_P100_VWS_GPUS"
        NvidiaP4Gpus -> "NVIDIA_P4_GPUS"
        NvidiaP4VwsGpus -> "NVIDIA_P4_VWS_GPUS"
        NvidiaT4Gpus -> "NVIDIA_T4_GPUS"
        NvidiaT4VwsGpus -> "NVIDIA_T4_VWS_GPUS"
        NvidiaV100Gpus -> "NVIDIA_V100_GPUS"
        PreemptibleCPUs -> "PREEMPTIBLE_CPUS"
        PreemptibleLocalSsdGb -> "PREEMPTIBLE_LOCAL_SSD_GB"
        PreemptibleNvidiaK80Gpus -> "PREEMPTIBLE_NVIDIA_K80_GPUS"
        PreemptibleNvidiaP100Gpus -> "PREEMPTIBLE_NVIDIA_P100_GPUS"
        PreemptibleNvidiaP100VwsGpus -> "PREEMPTIBLE_NVIDIA_P100_VWS_GPUS"
        PreemptibleNvidiaP4Gpus -> "PREEMPTIBLE_NVIDIA_P4_GPUS"
        PreemptibleNvidiaP4VwsGpus -> "PREEMPTIBLE_NVIDIA_P4_VWS_GPUS"
        PreemptibleNvidiaT4Gpus -> "PREEMPTIBLE_NVIDIA_T4_GPUS"
        PreemptibleNvidiaT4VwsGpus -> "PREEMPTIBLE_NVIDIA_T4_VWS_GPUS"
        PreemptibleNvidiaV100Gpus -> "PREEMPTIBLE_NVIDIA_V100_GPUS"
        RegionalAutoscalers -> "REGIONAL_AUTOSCALERS"
        RegionalInstanceGroupManagers -> "REGIONAL_INSTANCE_GROUP_MANAGERS"
        ResourcePolicies -> "RESOURCE_POLICIES"
        Routers -> "ROUTERS"
        Routes -> "ROUTES"
        SecurityPolicies -> "SECURITY_POLICIES"
        SecurityPolicyRules -> "SECURITY_POLICY_RULES"
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
        TargetTCPProxies -> "TARGET_TCP_PROXIES"
        TargetVPNGateways -> "TARGET_VPN_GATEWAYS"
        URLMaps -> "URL_MAPS"
        VPNGateways -> "VPN_GATEWAYS"
        VPNTunnels -> "VPN_TUNNELS"

instance FromJSON QuotaMetric where
    parseJSON = parseJSONText "QuotaMetric"

instance ToJSON QuotaMetric where
    toJSON = toJSONText

-- | [Output Only] The current state of whether or not this Interconnect is
-- functional.
data InterconnectState
    = ISActive
      -- ^ @ACTIVE@
    | ISUnprovisioned
      -- ^ @UNPROVISIONED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectState

instance FromHttpApiData InterconnectState where
    parseQueryParam = \case
        "ACTIVE" -> Right ISActive
        "UNPROVISIONED" -> Right ISUnprovisioned
        x -> Left ("Unable to parse InterconnectState from: " <> x)

instance ToHttpApiData InterconnectState where
    toQueryParam = \case
        ISActive -> "ACTIVE"
        ISUnprovisioned -> "UNPROVISIONED"

instance FromJSON InterconnectState where
    parseJSON = parseJSONText "InterconnectState"

instance ToJSON InterconnectState where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AutoscalerAggregatedListWarningCode
    = AALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | AALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | AALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | AALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | AALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | AALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | AALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | AALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | AALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | AALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | AALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | AALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | AALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | AALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | AALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | AALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | AALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | AALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | AALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | AALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | AALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | AALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | AALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalerAggregatedListWarningCode

instance FromHttpApiData AutoscalerAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right AALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right AALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right AALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right AALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right AALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right AALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right AALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right AALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right AALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right AALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right AALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right AALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right AALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right AALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right AALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right AALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right AALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right AALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right AALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right AALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right AALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right AALWCUndeclaredProperties
        "UNREACHABLE" -> Right AALWCUnreachable
        x -> Left ("Unable to parse AutoscalerAggregatedListWarningCode from: " <> x)

instance ToHttpApiData AutoscalerAggregatedListWarningCode where
    toQueryParam = \case
        AALWCCleanupFailed -> "CLEANUP_FAILED"
        AALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        AALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        AALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        AALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        AALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        AALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        AALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        AALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        AALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        AALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        AALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        AALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        AALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        AALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        AALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        AALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        AALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        AALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        AALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        AALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        AALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        AALWCUnreachable -> "UNREACHABLE"

instance FromJSON AutoscalerAggregatedListWarningCode where
    parseJSON = parseJSONText "AutoscalerAggregatedListWarningCode"

instance ToJSON AutoscalerAggregatedListWarningCode where
    toJSON = toJSONText

-- | The IP Version that will be used by this address. Valid options are IPV4
-- or IPV6. This can only be specified for a global address.
data AddressIPVersion
    = AIVIPV4
      -- ^ @IPV4@
    | AIVIPV6
      -- ^ @IPV6@
    | AIVUnspecifiedVersion
      -- ^ @UNSPECIFIED_VERSION@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressIPVersion

instance FromHttpApiData AddressIPVersion where
    parseQueryParam = \case
        "IPV4" -> Right AIVIPV4
        "IPV6" -> Right AIVIPV6
        "UNSPECIFIED_VERSION" -> Right AIVUnspecifiedVersion
        x -> Left ("Unable to parse AddressIPVersion from: " <> x)

instance ToHttpApiData AddressIPVersion where
    toQueryParam = \case
        AIVIPV4 -> "IPV4"
        AIVIPV6 -> "IPV6"
        AIVUnspecifiedVersion -> "UNSPECIFIED_VERSION"

instance FromJSON AddressIPVersion where
    parseJSON = parseJSONText "AddressIPVersion"

instance ToJSON AddressIPVersion where
    toJSON = toJSONText

-- | [Output Only] The status of the instance. One of the following values:
-- PROVISIONING, STAGING, RUNNING, STOPPING, STOPPED, SUSPENDING,
-- SUSPENDED, and TERMINATED.
data InstanceStatus
    = ISProvisioning
      -- ^ @PROVISIONING@
    | ISRepairing
      -- ^ @REPAIRING@
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
        "REPAIRING" -> Right ISRepairing
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
        ISRepairing -> "REPAIRING"
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
data NodeTypeListWarningCode
    = NTLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NTLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NTLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NTLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NTLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NTLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NTLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NTLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NTLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NTLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NTLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NTLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NTLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NTLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NTLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NTLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NTLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NTLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NTLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NTLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NTLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NTLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NTLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeTypeListWarningCode

instance FromHttpApiData NodeTypeListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NTLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NTLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NTLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NTLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NTLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NTLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NTLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NTLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NTLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NTLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NTLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NTLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NTLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NTLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NTLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NTLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NTLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NTLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NTLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NTLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NTLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NTLWCUndeclaredProperties
        "UNREACHABLE" -> Right NTLWCUnreachable
        x -> Left ("Unable to parse NodeTypeListWarningCode from: " <> x)

instance ToHttpApiData NodeTypeListWarningCode where
    toQueryParam = \case
        NTLWCCleanupFailed -> "CLEANUP_FAILED"
        NTLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NTLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NTLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NTLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NTLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NTLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NTLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NTLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NTLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NTLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NTLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NTLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NTLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NTLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NTLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NTLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NTLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NTLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NTLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NTLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NTLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NTLWCUnreachable -> "UNREACHABLE"

instance FromJSON NodeTypeListWarningCode where
    parseJSON = parseJSONText "NodeTypeListWarningCode"

instance ToJSON NodeTypeListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data MachineTypesScopedListWarningCode
    = MTSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | MTSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | MTSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | MTSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | MTSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | MTSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | MTSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | MTSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | MTSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | MTSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | MTSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | MTSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | MTSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | MTSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | MTSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MachineTypesScopedListWarningCode

instance FromHttpApiData MachineTypesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right MTSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right MTSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right MTSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right MTSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right MTSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right MTSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right MTSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right MTSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right MTSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right MTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right MTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right MTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right MTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right MTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right MTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right MTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right MTSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right MTSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right MTSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right MTSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right MTSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right MTSLWCUndeclaredProperties
        "UNREACHABLE" -> Right MTSLWCUnreachable
        x -> Left ("Unable to parse MachineTypesScopedListWarningCode from: " <> x)

instance ToHttpApiData MachineTypesScopedListWarningCode where
    toQueryParam = \case
        MTSLWCCleanupFailed -> "CLEANUP_FAILED"
        MTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        MTSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        MTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        MTSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        MTSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        MTSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        MTSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        MTSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        MTSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        MTSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        MTSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        MTSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        MTSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        MTSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        MTSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        MTSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        MTSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        MTSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        MTSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        MTSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        MTSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        MTSLWCUnreachable -> "UNREACHABLE"

instance FromJSON MachineTypesScopedListWarningCode where
    parseJSON = parseJSONText "MachineTypesScopedListWarningCode"

instance ToJSON MachineTypesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NodeTemplateListWarningCode
    = NODCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NODDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NODDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NODDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NODExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NODExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NODFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NODInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NODMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NODNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NODNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NODNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NODNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NODNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NODNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NODNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NODRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NODResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NODResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NODSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NODSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NODUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NODUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeTemplateListWarningCode

instance FromHttpApiData NodeTemplateListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NODCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NODDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NODDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NODDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NODExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NODExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NODFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NODInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NODMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NODNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NODNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NODNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NODNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NODNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NODNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NODNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NODRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NODResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NODResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NODSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NODSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NODUndeclaredProperties
        "UNREACHABLE" -> Right NODUnreachable
        x -> Left ("Unable to parse NodeTemplateListWarningCode from: " <> x)

instance ToHttpApiData NodeTemplateListWarningCode where
    toQueryParam = \case
        NODCleanupFailed -> "CLEANUP_FAILED"
        NODDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NODDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NODDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NODExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NODExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NODFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NODInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NODMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NODNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NODNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NODNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NODNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NODNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NODNotCriticalError -> "NOT_CRITICAL_ERROR"
        NODNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NODRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NODResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NODResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NODSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NODSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NODUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NODUnreachable -> "UNREACHABLE"

instance FromJSON NodeTemplateListWarningCode where
    parseJSON = parseJSONText "NodeTemplateListWarningCode"

instance ToJSON NodeTemplateListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RegionListWarningCode
    = REGCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | REGDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | REGDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | REGDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | REGExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | REGExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | REGFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | REGInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | REGMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | REGNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | REGNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | REGNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | REGNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | REGNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | REGNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | REGNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | REGRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | REGResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | REGResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | REGSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | REGSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | REGUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | REGUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RegionListWarningCode

instance FromHttpApiData RegionListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right REGCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right REGDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right REGDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right REGDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right REGExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right REGExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right REGFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right REGInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right REGMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right REGNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right REGNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right REGNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right REGNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right REGNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right REGNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right REGNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right REGRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right REGResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right REGResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right REGSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right REGSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right REGUndeclaredProperties
        "UNREACHABLE" -> Right REGUnreachable
        x -> Left ("Unable to parse RegionListWarningCode from: " <> x)

instance ToHttpApiData RegionListWarningCode where
    toQueryParam = \case
        REGCleanupFailed -> "CLEANUP_FAILED"
        REGDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        REGDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        REGDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        REGExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        REGExternalAPIWarning -> "EXTERNAL_API_WARNING"
        REGFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        REGInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        REGMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        REGNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        REGNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        REGNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        REGNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        REGNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        REGNotCriticalError -> "NOT_CRITICAL_ERROR"
        REGNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        REGRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        REGResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        REGResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        REGSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        REGSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        REGUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        REGUnreachable -> "UNREACHABLE"

instance FromJSON RegionListWarningCode where
    parseJSON = parseJSONText "RegionListWarningCode"

instance ToJSON RegionListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The resource that configures and manages this interface.
-- MANAGED_BY_USER is the default value and can be managed by you or other
-- users; MANAGED_BY_ATTACHMENT is an interface that is configured and
-- managed by Cloud Interconnect, specifically by an InterconnectAttachment
-- of type PARTNER. Google will automatically create, update, and delete
-- this type of interface when the PARTNER InterconnectAttachment is
-- created, updated, or deleted.
data RouterInterfaceManagementType
    = RIMTManagedByAttachment
      -- ^ @MANAGED_BY_ATTACHMENT@
    | RIMTManagedByUser
      -- ^ @MANAGED_BY_USER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RouterInterfaceManagementType

instance FromHttpApiData RouterInterfaceManagementType where
    parseQueryParam = \case
        "MANAGED_BY_ATTACHMENT" -> Right RIMTManagedByAttachment
        "MANAGED_BY_USER" -> Right RIMTManagedByUser
        x -> Left ("Unable to parse RouterInterfaceManagementType from: " <> x)

instance ToHttpApiData RouterInterfaceManagementType where
    toQueryParam = \case
        RIMTManagedByAttachment -> "MANAGED_BY_ATTACHMENT"
        RIMTManagedByUser -> "MANAGED_BY_USER"

instance FromJSON RouterInterfaceManagementType where
    parseJSON = parseJSONText "RouterInterfaceManagementType"

instance ToJSON RouterInterfaceManagementType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data DiskTypesScopedListWarningCode
    = DTSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DTSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DTSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | DTSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DTSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | DTSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | DTSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | DTSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DTSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | DTSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | DTSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DTSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | DTSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DTSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | DTSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiskTypesScopedListWarningCode

instance FromHttpApiData DiskTypesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right DTSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DTSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right DTSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DTSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right DTSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right DTSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right DTSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right DTSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right DTSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right DTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right DTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right DTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right DTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right DTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right DTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right DTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right DTSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right DTSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right DTSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right DTSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right DTSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right DTSLWCUndeclaredProperties
        "UNREACHABLE" -> Right DTSLWCUnreachable
        x -> Left ("Unable to parse DiskTypesScopedListWarningCode from: " <> x)

instance ToHttpApiData DiskTypesScopedListWarningCode where
    toQueryParam = \case
        DTSLWCCleanupFailed -> "CLEANUP_FAILED"
        DTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DTSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        DTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DTSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        DTSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        DTSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        DTSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DTSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        DTSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DTSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DTSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DTSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DTSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DTSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        DTSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DTSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DTSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        DTSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DTSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        DTSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DTSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        DTSLWCUnreachable -> "UNREACHABLE"

instance FromJSON DiskTypesScopedListWarningCode where
    parseJSON = parseJSONText "DiskTypesScopedListWarningCode"

instance ToJSON DiskTypesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data MachineTypeAggregatedListWarningCode
    = MTALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | MTALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | MTALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | MTALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | MTALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | MTALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | MTALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | MTALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | MTALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | MTALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | MTALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | MTALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | MTALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | MTALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | MTALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | MTALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | MTALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | MTALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | MTALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | MTALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | MTALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | MTALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | MTALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MachineTypeAggregatedListWarningCode

instance FromHttpApiData MachineTypeAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right MTALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right MTALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right MTALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right MTALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right MTALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right MTALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right MTALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right MTALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right MTALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right MTALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right MTALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right MTALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right MTALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right MTALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right MTALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right MTALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right MTALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right MTALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right MTALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right MTALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right MTALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right MTALWCUndeclaredProperties
        "UNREACHABLE" -> Right MTALWCUnreachable
        x -> Left ("Unable to parse MachineTypeAggregatedListWarningCode from: " <> x)

instance ToHttpApiData MachineTypeAggregatedListWarningCode where
    toQueryParam = \case
        MTALWCCleanupFailed -> "CLEANUP_FAILED"
        MTALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        MTALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        MTALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        MTALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        MTALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        MTALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        MTALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        MTALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        MTALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        MTALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        MTALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        MTALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        MTALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        MTALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        MTALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        MTALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        MTALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        MTALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        MTALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        MTALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        MTALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        MTALWCUnreachable -> "UNREACHABLE"

instance FromJSON MachineTypeAggregatedListWarningCode where
    parseJSON = parseJSONText "MachineTypeAggregatedListWarningCode"

instance ToJSON MachineTypeAggregatedListWarningCode where
    toJSON = toJSONText

-- | Whether Gin logging should happen in a fail-closed manner at the caller.
-- This is relevant only in the LocalIAM implementation, for now. NOTE:
-- Logging to Gin in a fail-closed manner is currently unsupported while
-- work is being done to satisfy the requirements of go\/345. Currently,
-- setting LOG_FAIL_CLOSED mode will have no effect, but still exists
-- because there is active work being done to support it (b\/115874152).
data LogConfigDataAccessOptionsLogMode
    = LogFailClosed
      -- ^ @LOG_FAIL_CLOSED@
    | LogModeUnspecified
      -- ^ @LOG_MODE_UNSPECIFIED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogConfigDataAccessOptionsLogMode

instance FromHttpApiData LogConfigDataAccessOptionsLogMode where
    parseQueryParam = \case
        "LOG_FAIL_CLOSED" -> Right LogFailClosed
        "LOG_MODE_UNSPECIFIED" -> Right LogModeUnspecified
        x -> Left ("Unable to parse LogConfigDataAccessOptionsLogMode from: " <> x)

instance ToHttpApiData LogConfigDataAccessOptionsLogMode where
    toQueryParam = \case
        LogFailClosed -> "LOG_FAIL_CLOSED"
        LogModeUnspecified -> "LOG_MODE_UNSPECIFIED"

instance FromJSON LogConfigDataAccessOptionsLogMode where
    parseJSON = parseJSONText "LogConfigDataAccessOptionsLogMode"

instance ToJSON LogConfigDataAccessOptionsLogMode where
    toJSON = toJSONText

-- | State of this notification. Note that the \"NS_\" versions of this enum
-- have been deprecated in favor of the unprefixed values.
data InterconnectOutageNotificationState
    = IONSActive
      -- ^ @ACTIVE@
    | IONSCancelled
      -- ^ @CANCELLED@
    | IONSNsActive
      -- ^ @NS_ACTIVE@
    | IONSNsCanceled
      -- ^ @NS_CANCELED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectOutageNotificationState

instance FromHttpApiData InterconnectOutageNotificationState where
    parseQueryParam = \case
        "ACTIVE" -> Right IONSActive
        "CANCELLED" -> Right IONSCancelled
        "NS_ACTIVE" -> Right IONSNsActive
        "NS_CANCELED" -> Right IONSNsCanceled
        x -> Left ("Unable to parse InterconnectOutageNotificationState from: " <> x)

instance ToHttpApiData InterconnectOutageNotificationState where
    toQueryParam = \case
        IONSActive -> "ACTIVE"
        IONSCancelled -> "CANCELLED"
        IONSNsActive -> "NS_ACTIVE"
        IONSNsCanceled -> "NS_CANCELED"

instance FromJSON InterconnectOutageNotificationState where
    parseJSON = parseJSONText "InterconnectOutageNotificationState"

instance ToJSON InterconnectOutageNotificationState where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data VPNTunnelListWarningCode
    = VTLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | VTLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | VTLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | VTLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | VTLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | VTLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | VTLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | VTLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | VTLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | VTLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | VTLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | VTLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | VTLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | VTLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | VTLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | VTLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | VTLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | VTLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | VTLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | VTLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | VTLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | VTLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | VTLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VPNTunnelListWarningCode

instance FromHttpApiData VPNTunnelListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right VTLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right VTLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right VTLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right VTLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right VTLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right VTLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right VTLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right VTLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right VTLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right VTLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right VTLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right VTLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right VTLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right VTLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right VTLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right VTLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right VTLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right VTLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right VTLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right VTLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right VTLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right VTLWCUndeclaredProperties
        "UNREACHABLE" -> Right VTLWCUnreachable
        x -> Left ("Unable to parse VPNTunnelListWarningCode from: " <> x)

instance ToHttpApiData VPNTunnelListWarningCode where
    toQueryParam = \case
        VTLWCCleanupFailed -> "CLEANUP_FAILED"
        VTLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        VTLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        VTLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        VTLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        VTLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        VTLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        VTLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        VTLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        VTLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        VTLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        VTLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        VTLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        VTLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        VTLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        VTLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        VTLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        VTLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        VTLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        VTLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        VTLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        VTLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        VTLWCUnreachable -> "UNREACHABLE"

instance FromJSON VPNTunnelListWarningCode where
    parseJSON = parseJSONText "VPNTunnelListWarningCode"

instance ToJSON VPNTunnelListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AutoscalersScopedListWarningCode
    = ACleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ADeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ADeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ADiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | AExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | AExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | AFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | AInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | AMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | AResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | AResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ASchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ASingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | AUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | AUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalersScopedListWarningCode

instance FromHttpApiData AutoscalersScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ACleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ADeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ADeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ADiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right AExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right AExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right AFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right AInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right AMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ANextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ANextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ANextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ANextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ANextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ANotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ANoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ARequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right AResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right AResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ASchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ASingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right AUndeclaredProperties
        "UNREACHABLE" -> Right AUnreachable
        x -> Left ("Unable to parse AutoscalersScopedListWarningCode from: " <> x)

instance ToHttpApiData AutoscalersScopedListWarningCode where
    toQueryParam = \case
        ACleanupFailed -> "CLEANUP_FAILED"
        ADeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ADeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ADiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        AExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        AExternalAPIWarning -> "EXTERNAL_API_WARNING"
        AFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        AInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        AMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ANextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ANextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ANextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ANextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ANextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ANotCriticalError -> "NOT_CRITICAL_ERROR"
        ANoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ARequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        AResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        AResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ASchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ASingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        AUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        AUnreachable -> "UNREACHABLE"

instance FromJSON AutoscalersScopedListWarningCode where
    parseJSON = parseJSONText "AutoscalersScopedListWarningCode"

instance ToJSON AutoscalersScopedListWarningCode where
    toJSON = toJSONText

-- | Specifies how port is selected for health checking, can be one of
-- following values: USE_FIXED_PORT: The port number in port is used for
-- health checking. USE_NAMED_PORT: The portName is used for health
-- checking. USE_SERVING_PORT: For NetworkEndpointGroup, the port specified
-- for each network endpoint is used for health checking. For other
-- backends, the port or named port specified in the Backend Service is
-- used for health checking. If not specified, HTTPS health check follows
-- behavior specified in port and portName fields.
data HTTPSHealthCheckPortSpecification
    = HHCPSUseFixedPort
      -- ^ @USE_FIXED_PORT@
    | HHCPSUseNamedPort
      -- ^ @USE_NAMED_PORT@
    | HHCPSUseServingPort
      -- ^ @USE_SERVING_PORT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPSHealthCheckPortSpecification

instance FromHttpApiData HTTPSHealthCheckPortSpecification where
    parseQueryParam = \case
        "USE_FIXED_PORT" -> Right HHCPSUseFixedPort
        "USE_NAMED_PORT" -> Right HHCPSUseNamedPort
        "USE_SERVING_PORT" -> Right HHCPSUseServingPort
        x -> Left ("Unable to parse HTTPSHealthCheckPortSpecification from: " <> x)

instance ToHttpApiData HTTPSHealthCheckPortSpecification where
    toQueryParam = \case
        HHCPSUseFixedPort -> "USE_FIXED_PORT"
        HHCPSUseNamedPort -> "USE_NAMED_PORT"
        HHCPSUseServingPort -> "USE_SERVING_PORT"

instance FromJSON HTTPSHealthCheckPortSpecification where
    parseJSON = parseJSONText "HTTPSHealthCheckPortSpecification"

instance ToJSON HTTPSHealthCheckPortSpecification where
    toJSON = toJSONText

-- | This signifies what the ForwardingRule will be used for and can only
-- take the following values: INTERNAL, INTERNAL_SELF_MANAGED, EXTERNAL.
-- The value of INTERNAL means that this will be used for Internal Network
-- Load Balancing (TCP, UDP). The value of INTERNAL_SELF_MANAGED means that
-- this will be used for Internal Global HTTP(S) LB. The value of EXTERNAL
-- means that this will be used for External Load Balancing (HTTP(S) LB,
-- External TCP\/UDP LB, SSL Proxy)
data ForwardingRuleLoadBalancingScheme
    = FRLBSExternal
      -- ^ @EXTERNAL@
    | FRLBSInternal
      -- ^ @INTERNAL@
    | FRLBSInvalid
      -- ^ @INVALID@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingRuleLoadBalancingScheme

instance FromHttpApiData ForwardingRuleLoadBalancingScheme where
    parseQueryParam = \case
        "EXTERNAL" -> Right FRLBSExternal
        "INTERNAL" -> Right FRLBSInternal
        "INVALID" -> Right FRLBSInvalid
        x -> Left ("Unable to parse ForwardingRuleLoadBalancingScheme from: " <> x)

instance ToHttpApiData ForwardingRuleLoadBalancingScheme where
    toQueryParam = \case
        FRLBSExternal -> "EXTERNAL"
        FRLBSInternal -> "INTERNAL"
        FRLBSInvalid -> "INVALID"

instance FromJSON ForwardingRuleLoadBalancingScheme where
    parseJSON = parseJSONText "ForwardingRuleLoadBalancingScheme"

instance ToJSON ForwardingRuleLoadBalancingScheme where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data DiskTypeAggregatedListWarningCode
    = DTALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DTALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DTALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | DTALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DTALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | DTALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | DTALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | DTALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DTALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | DTALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DTALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DTALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DTALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DTALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DTALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DTALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DTALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DTALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | DTALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DTALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | DTALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DTALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | DTALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiskTypeAggregatedListWarningCode

instance FromHttpApiData DiskTypeAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right DTALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DTALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right DTALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DTALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right DTALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right DTALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right DTALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right DTALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right DTALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right DTALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right DTALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right DTALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right DTALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right DTALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right DTALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right DTALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right DTALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right DTALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right DTALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right DTALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right DTALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right DTALWCUndeclaredProperties
        "UNREACHABLE" -> Right DTALWCUnreachable
        x -> Left ("Unable to parse DiskTypeAggregatedListWarningCode from: " <> x)

instance ToHttpApiData DiskTypeAggregatedListWarningCode where
    toQueryParam = \case
        DTALWCCleanupFailed -> "CLEANUP_FAILED"
        DTALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DTALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        DTALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DTALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        DTALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        DTALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        DTALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DTALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        DTALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DTALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DTALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DTALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DTALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DTALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        DTALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DTALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DTALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        DTALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DTALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        DTALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DTALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        DTALWCUnreachable -> "UNREACHABLE"

instance FromJSON DiskTypeAggregatedListWarningCode where
    parseJSON = parseJSONText "DiskTypeAggregatedListWarningCode"

instance ToJSON DiskTypeAggregatedListWarningCode where
    toJSON = toJSONText

-- | Type of interconnect. Note that \"IT_PRIVATE\" has been deprecated in
-- favor of \"DEDICATED\"
data InterconnectInterconnectType
    = IITDedicated
      -- ^ @DEDICATED@
    | IITItPrivate
      -- ^ @IT_PRIVATE@
    | IITPartner
      -- ^ @PARTNER@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectInterconnectType

instance FromHttpApiData InterconnectInterconnectType where
    parseQueryParam = \case
        "DEDICATED" -> Right IITDedicated
        "IT_PRIVATE" -> Right IITItPrivate
        "PARTNER" -> Right IITPartner
        x -> Left ("Unable to parse InterconnectInterconnectType from: " <> x)

instance ToHttpApiData InterconnectInterconnectType where
    toQueryParam = \case
        IITDedicated -> "DEDICATED"
        IITItPrivate -> "IT_PRIVATE"
        IITPartner -> "PARTNER"

instance FromJSON InterconnectInterconnectType where
    parseJSON = parseJSONText "InterconnectInterconnectType"

instance ToJSON InterconnectInterconnectType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceGroupManagerListWarningCode
    = IGMLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IGMLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGMLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IGMLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGMLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IGMLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IGMLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IGMLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGMLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IGMLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IGMLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IGMLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IGMLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IGMLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IGMLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IGMLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IGMLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IGMLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IGMLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGMLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IGMLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGMLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IGMLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupManagerListWarningCode

instance FromHttpApiData InstanceGroupManagerListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGMLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGMLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IGMLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGMLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IGMLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IGMLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IGMLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGMLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IGMLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGMLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGMLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGMLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGMLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGMLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGMLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGMLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGMLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IGMLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IGMLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IGMLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGMLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IGMLWCUndeclaredProperties
        "UNREACHABLE" -> Right IGMLWCUnreachable
        x -> Left ("Unable to parse InstanceGroupManagerListWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupManagerListWarningCode where
    toQueryParam = \case
        IGMLWCCleanupFailed -> "CLEANUP_FAILED"
        IGMLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGMLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IGMLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGMLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IGMLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IGMLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IGMLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGMLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IGMLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGMLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGMLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGMLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGMLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGMLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGMLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGMLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGMLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IGMLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGMLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IGMLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGMLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IGMLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupManagerListWarningCode where
    parseJSON = parseJSONText "InstanceGroupManagerListWarningCode"

instance ToJSON InstanceGroupManagerListWarningCode where
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
data DiskListWarningCode
    = DLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | DLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | DLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | DLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | DLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | DLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | DLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | DLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | DLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | DLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | DLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | DLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | DLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | DLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | DLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | DLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | DLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | DLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | DLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | DLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | DLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | DLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | DLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DiskListWarningCode

instance FromHttpApiData DiskListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right DLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right DLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right DLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right DLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right DLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right DLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right DLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right DLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right DLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right DLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right DLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right DLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right DLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right DLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right DLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right DLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right DLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right DLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right DLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right DLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right DLWCUndeclaredProperties
        "UNREACHABLE" -> Right DLWCUnreachable
        x -> Left ("Unable to parse DiskListWarningCode from: " <> x)

instance ToHttpApiData DiskListWarningCode where
    toQueryParam = \case
        DLWCCleanupFailed -> "CLEANUP_FAILED"
        DLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        DLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        DLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        DLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        DLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        DLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        DLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        DLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        DLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        DLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        DLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        DLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        DLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        DLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        DLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        DLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        DLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        DLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        DLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        DLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        DLWCUnreachable -> "UNREACHABLE"

instance FromJSON DiskListWarningCode where
    parseJSON = parseJSONText "DiskListWarningCode"

instance ToJSON DiskListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RegionAutoscalerListWarningCode
    = RALWCACleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RALWCADeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RALWCADeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RALWCADiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RALWCAExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RALWCAExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RALWCAFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RALWCAInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RALWCAMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | RALWCANextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RALWCANextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RALWCANextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RALWCANextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RALWCANextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RALWCANotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RALWCANoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RALWCARequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RALWCAResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RALWCAResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RALWCASchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RALWCASingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RALWCAUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RALWCAUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RegionAutoscalerListWarningCode

instance FromHttpApiData RegionAutoscalerListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RALWCACleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RALWCADeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RALWCADeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RALWCADiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RALWCAExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RALWCAExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RALWCAFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RALWCAInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RALWCAMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RALWCANextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RALWCANextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RALWCANextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RALWCANextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RALWCANextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RALWCANotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RALWCANoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RALWCARequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RALWCAResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RALWCAResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RALWCASchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RALWCASingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RALWCAUndeclaredProperties
        "UNREACHABLE" -> Right RALWCAUnreachable
        x -> Left ("Unable to parse RegionAutoscalerListWarningCode from: " <> x)

instance ToHttpApiData RegionAutoscalerListWarningCode where
    toQueryParam = \case
        RALWCACleanupFailed -> "CLEANUP_FAILED"
        RALWCADeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RALWCADeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RALWCADiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RALWCAExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RALWCAExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RALWCAFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RALWCAInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RALWCAMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RALWCANextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RALWCANextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RALWCANextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RALWCANextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RALWCANextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RALWCANotCriticalError -> "NOT_CRITICAL_ERROR"
        RALWCANoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RALWCARequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RALWCAResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RALWCAResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RALWCASchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RALWCASingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RALWCAUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RALWCAUnreachable -> "UNREACHABLE"

instance FromJSON RegionAutoscalerListWarningCode where
    parseJSON = parseJSONText "RegionAutoscalerListWarningCode"

instance ToJSON RegionAutoscalerListWarningCode where
    toJSON = toJSONText

-- | The plan for this commitment, which determines duration and discount
-- rate. The currently supported plans are TWELVE_MONTH (1 year), and
-- THIRTY_SIX_MONTH (3 years).
data CommitmentPlan
    = Invalid
      -- ^ @INVALID@
    | ThirtySixMonth
      -- ^ @THIRTY_SIX_MONTH@
    | TwelveMonth
      -- ^ @TWELVE_MONTH@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommitmentPlan

instance FromHttpApiData CommitmentPlan where
    parseQueryParam = \case
        "INVALID" -> Right Invalid
        "THIRTY_SIX_MONTH" -> Right ThirtySixMonth
        "TWELVE_MONTH" -> Right TwelveMonth
        x -> Left ("Unable to parse CommitmentPlan from: " <> x)

instance ToHttpApiData CommitmentPlan where
    toQueryParam = \case
        Invalid -> "INVALID"
        ThirtySixMonth -> "THIRTY_SIX_MONTH"
        TwelveMonth -> "TWELVE_MONTH"

instance FromJSON CommitmentPlan where
    parseJSON = parseJSONText "CommitmentPlan"

instance ToJSON CommitmentPlan where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data OperationListWarningCode
    = OLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | OLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | OLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | OLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | OLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | OLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | OLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | OLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | OLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | OLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | OLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | OLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | OLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | OLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | OLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | OLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | OLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | OLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | OLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | OLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | OLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | OLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | OLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationListWarningCode

instance FromHttpApiData OperationListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right OLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right OLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right OLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right OLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right OLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right OLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right OLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right OLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right OLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right OLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right OLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right OLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right OLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right OLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right OLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right OLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right OLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right OLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right OLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right OLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right OLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right OLWCUndeclaredProperties
        "UNREACHABLE" -> Right OLWCUnreachable
        x -> Left ("Unable to parse OperationListWarningCode from: " <> x)

instance ToHttpApiData OperationListWarningCode where
    toQueryParam = \case
        OLWCCleanupFailed -> "CLEANUP_FAILED"
        OLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        OLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        OLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        OLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        OLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        OLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        OLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        OLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        OLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        OLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        OLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        OLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        OLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        OLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        OLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        OLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        OLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        OLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        OLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        OLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        OLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        OLWCUnreachable -> "UNREACHABLE"

instance FromJSON OperationListWarningCode where
    parseJSON = parseJSONText "OperationListWarningCode"

instance ToJSON OperationListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data ForwardingRuleListWarningCode
    = FRLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | FRLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | FRLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | FRLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | FRLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | FRLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | FRLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | FRLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | FRLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | FRLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | FRLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | FRLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | FRLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | FRLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | FRLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | FRLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | FRLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | FRLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | FRLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | FRLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | FRLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | FRLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | FRLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingRuleListWarningCode

instance FromHttpApiData ForwardingRuleListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right FRLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right FRLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right FRLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right FRLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right FRLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right FRLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right FRLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right FRLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right FRLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right FRLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right FRLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right FRLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right FRLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right FRLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right FRLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right FRLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right FRLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right FRLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right FRLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right FRLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right FRLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right FRLWCUndeclaredProperties
        "UNREACHABLE" -> Right FRLWCUnreachable
        x -> Left ("Unable to parse ForwardingRuleListWarningCode from: " <> x)

instance ToHttpApiData ForwardingRuleListWarningCode where
    toQueryParam = \case
        FRLWCCleanupFailed -> "CLEANUP_FAILED"
        FRLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        FRLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        FRLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        FRLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        FRLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        FRLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        FRLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        FRLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        FRLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        FRLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        FRLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        FRLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        FRLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        FRLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        FRLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        FRLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        FRLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        FRLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        FRLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        FRLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        FRLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        FRLWCUnreachable -> "UNREACHABLE"

instance FromJSON ForwardingRuleListWarningCode where
    parseJSON = parseJSONText "ForwardingRuleListWarningCode"

instance ToJSON ForwardingRuleListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data VPNTunnelsScopedListWarningCode
    = VTSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | VTSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | VTSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | VTSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | VTSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | VTSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | VTSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | VTSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | VTSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | VTSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | VTSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | VTSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | VTSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | VTSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | VTSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VPNTunnelsScopedListWarningCode

instance FromHttpApiData VPNTunnelsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right VTSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right VTSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right VTSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right VTSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right VTSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right VTSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right VTSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right VTSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right VTSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right VTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right VTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right VTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right VTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right VTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right VTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right VTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right VTSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right VTSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right VTSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right VTSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right VTSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right VTSLWCUndeclaredProperties
        "UNREACHABLE" -> Right VTSLWCUnreachable
        x -> Left ("Unable to parse VPNTunnelsScopedListWarningCode from: " <> x)

instance ToHttpApiData VPNTunnelsScopedListWarningCode where
    toQueryParam = \case
        VTSLWCCleanupFailed -> "CLEANUP_FAILED"
        VTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        VTSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        VTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        VTSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        VTSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        VTSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        VTSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        VTSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        VTSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        VTSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        VTSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        VTSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        VTSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        VTSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        VTSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        VTSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        VTSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        VTSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        VTSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        VTSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        VTSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        VTSLWCUnreachable -> "UNREACHABLE"

instance FromJSON VPNTunnelsScopedListWarningCode where
    parseJSON = parseJSONText "VPNTunnelsScopedListWarningCode"

instance ToJSON VPNTunnelsScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NodeTypesScopedListWarningCode
    = NTSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NTSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NTSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NTSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NTSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NTSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NTSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NTSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NTSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NTSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NTSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NTSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NTSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NTSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NTSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NTSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NTSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NTSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NTSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NTSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NTSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NTSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NTSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeTypesScopedListWarningCode

instance FromHttpApiData NodeTypesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NTSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NTSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NTSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NTSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NTSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NTSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NTSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NTSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NTSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NTSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NTSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NTSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NTSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NTSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NTSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NTSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NTSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NTSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NTSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NTSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NTSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NTSLWCUndeclaredProperties
        "UNREACHABLE" -> Right NTSLWCUnreachable
        x -> Left ("Unable to parse NodeTypesScopedListWarningCode from: " <> x)

instance ToHttpApiData NodeTypesScopedListWarningCode where
    toQueryParam = \case
        NTSLWCCleanupFailed -> "CLEANUP_FAILED"
        NTSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NTSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NTSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NTSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NTSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NTSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NTSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NTSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NTSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NTSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NTSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NTSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NTSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NTSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NTSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NTSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NTSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NTSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NTSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NTSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NTSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NTSLWCUnreachable -> "UNREACHABLE"

instance FromJSON NodeTypesScopedListWarningCode where
    parseJSON = parseJSONText "NodeTypesScopedListWarningCode"

instance ToJSON NodeTypesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetInstanceAggregatedListWarningCode
    = TIALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TIALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TIALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TIALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TIALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TIALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TIALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TIALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TIALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | TIALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TIALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TIALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TIALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TIALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TIALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TIALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TIALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TIALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TIALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TIALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TIALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TIALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TIALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetInstanceAggregatedListWarningCode

instance FromHttpApiData TargetInstanceAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TIALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TIALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TIALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TIALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TIALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TIALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TIALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TIALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TIALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TIALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TIALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TIALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TIALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TIALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TIALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TIALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TIALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TIALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TIALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TIALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TIALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TIALWCUndeclaredProperties
        "UNREACHABLE" -> Right TIALWCUnreachable
        x -> Left ("Unable to parse TargetInstanceAggregatedListWarningCode from: " <> x)

instance ToHttpApiData TargetInstanceAggregatedListWarningCode where
    toQueryParam = \case
        TIALWCCleanupFailed -> "CLEANUP_FAILED"
        TIALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TIALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TIALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TIALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TIALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TIALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TIALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TIALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TIALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TIALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TIALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TIALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TIALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TIALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TIALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TIALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TIALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TIALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TIALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TIALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TIALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TIALWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetInstanceAggregatedListWarningCode where
    parseJSON = parseJSONText "TargetInstanceAggregatedListWarningCode"

instance ToJSON TargetInstanceAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RegionDiskTypeListWarningCode
    = RDTLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RDTLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RDTLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RDTLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RDTLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RDTLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RDTLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RDTLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RDTLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | RDTLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RDTLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RDTLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RDTLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RDTLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RDTLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RDTLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RDTLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RDTLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RDTLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RDTLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RDTLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RDTLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RDTLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RegionDiskTypeListWarningCode

instance FromHttpApiData RegionDiskTypeListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RDTLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RDTLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RDTLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RDTLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RDTLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RDTLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RDTLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RDTLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RDTLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RDTLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RDTLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RDTLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RDTLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RDTLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RDTLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RDTLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RDTLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RDTLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RDTLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RDTLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RDTLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RDTLWCUndeclaredProperties
        "UNREACHABLE" -> Right RDTLWCUnreachable
        x -> Left ("Unable to parse RegionDiskTypeListWarningCode from: " <> x)

instance ToHttpApiData RegionDiskTypeListWarningCode where
    toQueryParam = \case
        RDTLWCCleanupFailed -> "CLEANUP_FAILED"
        RDTLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RDTLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RDTLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RDTLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RDTLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RDTLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RDTLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RDTLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RDTLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RDTLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RDTLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RDTLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RDTLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RDTLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        RDTLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RDTLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RDTLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RDTLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RDTLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RDTLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RDTLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RDTLWCUnreachable -> "UNREACHABLE"

instance FromJSON RegionDiskTypeListWarningCode where
    parseJSON = parseJSONText "RegionDiskTypeListWarningCode"

instance ToJSON RegionDiskTypeListWarningCode where
    toJSON = toJSONText

-- | The type of address to reserve, either INTERNAL or EXTERNAL. If
-- unspecified, defaults to EXTERNAL.
data AddressAddressType
    = AATExternal
      -- ^ @EXTERNAL@
    | AATInternal
      -- ^ @INTERNAL@
    | AATUnspecifiedType
      -- ^ @UNSPECIFIED_TYPE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressAddressType

instance FromHttpApiData AddressAddressType where
    parseQueryParam = \case
        "EXTERNAL" -> Right AATExternal
        "INTERNAL" -> Right AATInternal
        "UNSPECIFIED_TYPE" -> Right AATUnspecifiedType
        x -> Left ("Unable to parse AddressAddressType from: " <> x)

instance ToHttpApiData AddressAddressType where
    toQueryParam = \case
        AATExternal -> "EXTERNAL"
        AATInternal -> "INTERNAL"
        AATUnspecifiedType -> "UNSPECIFIED_TYPE"

instance FromJSON AddressAddressType where
    parseJSON = parseJSONText "AddressAddressType"

instance ToJSON AddressAddressType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data TargetPoolListWarningCode
    = TPLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | TPLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | TPLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | TPLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | TPLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | TPLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | TPLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | TPLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | TPLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | TPLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | TPLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | TPLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | TPLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | TPLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | TPLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | TPLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | TPLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | TPLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | TPLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | TPLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | TPLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | TPLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | TPLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TargetPoolListWarningCode

instance FromHttpApiData TargetPoolListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right TPLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right TPLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right TPLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right TPLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right TPLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right TPLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right TPLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right TPLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right TPLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right TPLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right TPLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right TPLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right TPLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right TPLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right TPLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right TPLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right TPLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right TPLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right TPLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right TPLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right TPLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right TPLWCUndeclaredProperties
        "UNREACHABLE" -> Right TPLWCUnreachable
        x -> Left ("Unable to parse TargetPoolListWarningCode from: " <> x)

instance ToHttpApiData TargetPoolListWarningCode where
    toQueryParam = \case
        TPLWCCleanupFailed -> "CLEANUP_FAILED"
        TPLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        TPLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        TPLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        TPLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        TPLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        TPLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        TPLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        TPLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        TPLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        TPLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        TPLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        TPLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        TPLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        TPLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        TPLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        TPLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        TPLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        TPLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        TPLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        TPLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        TPLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        TPLWCUnreachable -> "UNREACHABLE"

instance FromJSON TargetPoolListWarningCode where
    parseJSON = parseJSONText "TargetPoolListWarningCode"

instance ToJSON TargetPoolListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NodeTemplatesScopedListWarningCode
    = NTSLWCTCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NTSLWCTDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NTSLWCTDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NTSLWCTDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NTSLWCTExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NTSLWCTExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NTSLWCTFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NTSLWCTInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NTSLWCTMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NTSLWCTNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NTSLWCTNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NTSLWCTNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NTSLWCTNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NTSLWCTNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NTSLWCTNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NTSLWCTNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NTSLWCTRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NTSLWCTResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NTSLWCTResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NTSLWCTSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NTSLWCTSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NTSLWCTUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NTSLWCTUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NodeTemplatesScopedListWarningCode

instance FromHttpApiData NodeTemplatesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NTSLWCTCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NTSLWCTDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NTSLWCTDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NTSLWCTDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NTSLWCTExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NTSLWCTExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NTSLWCTFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NTSLWCTInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NTSLWCTMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NTSLWCTNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NTSLWCTNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NTSLWCTNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NTSLWCTNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NTSLWCTNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NTSLWCTNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NTSLWCTNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NTSLWCTRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NTSLWCTResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NTSLWCTResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NTSLWCTSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NTSLWCTSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NTSLWCTUndeclaredProperties
        "UNREACHABLE" -> Right NTSLWCTUnreachable
        x -> Left ("Unable to parse NodeTemplatesScopedListWarningCode from: " <> x)

instance ToHttpApiData NodeTemplatesScopedListWarningCode where
    toQueryParam = \case
        NTSLWCTCleanupFailed -> "CLEANUP_FAILED"
        NTSLWCTDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NTSLWCTDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NTSLWCTDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NTSLWCTExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NTSLWCTExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NTSLWCTFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NTSLWCTInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NTSLWCTMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NTSLWCTNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NTSLWCTNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NTSLWCTNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NTSLWCTNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NTSLWCTNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NTSLWCTNotCriticalError -> "NOT_CRITICAL_ERROR"
        NTSLWCTNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NTSLWCTRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NTSLWCTResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NTSLWCTResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NTSLWCTSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NTSLWCTSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NTSLWCTUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NTSLWCTUnreachable -> "UNREACHABLE"

instance FromJSON NodeTemplatesScopedListWarningCode where
    parseJSON = parseJSONText "NodeTemplatesScopedListWarningCode"

instance ToJSON NodeTemplatesScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data NetworkListWarningCode
    = NLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | NLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | NLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | NLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | NLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | NLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | NLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | NLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | NLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | NLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | NLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | NLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | NLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | NLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | NLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | NLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | NLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | NLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | NLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | NLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | NLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | NLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | NLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkListWarningCode

instance FromHttpApiData NetworkListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right NLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right NLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right NLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right NLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right NLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right NLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right NLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right NLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right NLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right NLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right NLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right NLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right NLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right NLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right NLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right NLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right NLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right NLWCUndeclaredProperties
        "UNREACHABLE" -> Right NLWCUnreachable
        x -> Left ("Unable to parse NetworkListWarningCode from: " <> x)

instance ToHttpApiData NetworkListWarningCode where
    toQueryParam = \case
        NLWCCleanupFailed -> "CLEANUP_FAILED"
        NLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        NLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        NLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        NLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        NLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        NLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        NLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        NLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        NLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        NLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        NLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        NLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        NLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        NLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        NLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        NLWCUnreachable -> "UNREACHABLE"

instance FromJSON NetworkListWarningCode where
    parseJSON = parseJSONText "NetworkListWarningCode"

instance ToJSON NetworkListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data XpnHostListWarningCode
    = XHLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | XHLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | XHLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | XHLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | XHLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | XHLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | XHLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | XHLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | XHLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | XHLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | XHLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | XHLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | XHLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | XHLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | XHLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | XHLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | XHLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | XHLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | XHLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | XHLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | XHLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | XHLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | XHLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable XpnHostListWarningCode

instance FromHttpApiData XpnHostListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right XHLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right XHLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right XHLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right XHLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right XHLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right XHLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right XHLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right XHLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right XHLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right XHLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right XHLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right XHLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right XHLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right XHLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right XHLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right XHLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right XHLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right XHLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right XHLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right XHLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right XHLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right XHLWCUndeclaredProperties
        "UNREACHABLE" -> Right XHLWCUnreachable
        x -> Left ("Unable to parse XpnHostListWarningCode from: " <> x)

instance ToHttpApiData XpnHostListWarningCode where
    toQueryParam = \case
        XHLWCCleanupFailed -> "CLEANUP_FAILED"
        XHLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        XHLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        XHLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        XHLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        XHLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        XHLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        XHLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        XHLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        XHLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        XHLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        XHLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        XHLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        XHLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        XHLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        XHLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        XHLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        XHLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        XHLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        XHLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        XHLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        XHLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        XHLWCUnreachable -> "UNREACHABLE"

instance FromJSON XpnHostListWarningCode where
    parseJSON = parseJSONText "XpnHostListWarningCode"

instance ToJSON XpnHostListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InterconnectAttachmentAggregatedListWarningCode
    = IAALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IAALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IAALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IAALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IAALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IAALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IAALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IAALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IAALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IAALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IAALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IAALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IAALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IAALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IAALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IAALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IAALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IAALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IAALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IAALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IAALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IAALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IAALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectAttachmentAggregatedListWarningCode

instance FromHttpApiData InterconnectAttachmentAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IAALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IAALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IAALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IAALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IAALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IAALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IAALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IAALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IAALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IAALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IAALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IAALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IAALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IAALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IAALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IAALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IAALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IAALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IAALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IAALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IAALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IAALWCUndeclaredProperties
        "UNREACHABLE" -> Right IAALWCUnreachable
        x -> Left ("Unable to parse InterconnectAttachmentAggregatedListWarningCode from: " <> x)

instance ToHttpApiData InterconnectAttachmentAggregatedListWarningCode where
    toQueryParam = \case
        IAALWCCleanupFailed -> "CLEANUP_FAILED"
        IAALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IAALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IAALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IAALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IAALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IAALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IAALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IAALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IAALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IAALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IAALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IAALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IAALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IAALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IAALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IAALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IAALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IAALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IAALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IAALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IAALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IAALWCUnreachable -> "UNREACHABLE"

instance FromJSON InterconnectAttachmentAggregatedListWarningCode where
    parseJSON = parseJSONText "InterconnectAttachmentAggregatedListWarningCode"

instance ToJSON InterconnectAttachmentAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AddressListWarningCode
    = ADDCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ADDDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ADDDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ADDDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ADDExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ADDExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ADDFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ADDInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ADDMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ADDNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ADDNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ADDNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ADDNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ADDNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ADDNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ADDNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ADDRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ADDResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ADDResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ADDSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ADDSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ADDUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ADDUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressListWarningCode

instance FromHttpApiData AddressListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ADDCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ADDDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ADDDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ADDDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ADDExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ADDExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ADDFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ADDInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ADDMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ADDNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ADDNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ADDNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ADDNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ADDNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ADDNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ADDNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ADDRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ADDResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ADDResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ADDSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ADDSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ADDUndeclaredProperties
        "UNREACHABLE" -> Right ADDUnreachable
        x -> Left ("Unable to parse AddressListWarningCode from: " <> x)

instance ToHttpApiData AddressListWarningCode where
    toQueryParam = \case
        ADDCleanupFailed -> "CLEANUP_FAILED"
        ADDDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ADDDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ADDDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ADDExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ADDExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ADDFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ADDInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ADDMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ADDNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ADDNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ADDNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ADDNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ADDNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ADDNotCriticalError -> "NOT_CRITICAL_ERROR"
        ADDNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ADDRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ADDResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ADDResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ADDSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ADDSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ADDUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ADDUnreachable -> "UNREACHABLE"

instance FromJSON AddressListWarningCode where
    parseJSON = parseJSONText "AddressListWarningCode"

instance ToJSON AddressListWarningCode where
    toJSON = toJSONText

-- | [Output Only] State for the peering.
data NetworkPeeringState
    = NPSActive
      -- ^ @ACTIVE@
    | NPSInactive
      -- ^ @INACTIVE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NetworkPeeringState

instance FromHttpApiData NetworkPeeringState where
    parseQueryParam = \case
        "ACTIVE" -> Right NPSActive
        "INACTIVE" -> Right NPSInactive
        x -> Left ("Unable to parse NetworkPeeringState from: " <> x)

instance ToHttpApiData NetworkPeeringState where
    toQueryParam = \case
        NPSActive -> "ACTIVE"
        NPSInactive -> "INACTIVE"

instance FromJSON NetworkPeeringState where
    parseJSON = parseJSONText "NetworkPeeringState"

instance ToJSON NetworkPeeringState where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data ZoneListWarningCode
    = ZLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ZLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ZLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ZLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ZLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ZLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ZLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ZLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ZLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | ZLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | ZLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | ZLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | ZLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | ZLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | ZLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | ZLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | ZLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | ZLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ZLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ZLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ZLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ZLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ZLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ZoneListWarningCode

instance FromHttpApiData ZoneListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ZLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ZLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ZLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ZLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ZLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ZLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ZLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ZLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ZLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ZLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ZLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ZLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ZLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ZLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ZLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ZLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ZLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ZLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ZLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ZLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ZLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ZLWCUndeclaredProperties
        "UNREACHABLE" -> Right ZLWCUnreachable
        x -> Left ("Unable to parse ZoneListWarningCode from: " <> x)

instance ToHttpApiData ZoneListWarningCode where
    toQueryParam = \case
        ZLWCCleanupFailed -> "CLEANUP_FAILED"
        ZLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ZLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ZLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ZLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ZLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ZLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ZLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ZLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ZLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ZLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ZLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ZLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ZLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ZLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ZLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ZLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ZLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ZLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ZLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ZLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ZLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ZLWCUnreachable -> "UNREACHABLE"

instance FromJSON ZoneListWarningCode where
    parseJSON = parseJSONText "ZoneListWarningCode"

instance ToJSON ZoneListWarningCode where
    toJSON = toJSONText

-- | The type of the permission that was checked.
data AuthorizationLoggingOptionsPermissionType
    = ALOPTAdminRead
      -- ^ @ADMIN_READ@
    | ALOPTAdminWrite
      -- ^ @ADMIN_WRITE@
    | ALOPTDataRead
      -- ^ @DATA_READ@
    | ALOPTDataWrite
      -- ^ @DATA_WRITE@
    | ALOPTPermissionTypeUnspecified
      -- ^ @PERMISSION_TYPE_UNSPECIFIED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuthorizationLoggingOptionsPermissionType

instance FromHttpApiData AuthorizationLoggingOptionsPermissionType where
    parseQueryParam = \case
        "ADMIN_READ" -> Right ALOPTAdminRead
        "ADMIN_WRITE" -> Right ALOPTAdminWrite
        "DATA_READ" -> Right ALOPTDataRead
        "DATA_WRITE" -> Right ALOPTDataWrite
        "PERMISSION_TYPE_UNSPECIFIED" -> Right ALOPTPermissionTypeUnspecified
        x -> Left ("Unable to parse AuthorizationLoggingOptionsPermissionType from: " <> x)

instance ToHttpApiData AuthorizationLoggingOptionsPermissionType where
    toQueryParam = \case
        ALOPTAdminRead -> "ADMIN_READ"
        ALOPTAdminWrite -> "ADMIN_WRITE"
        ALOPTDataRead -> "DATA_READ"
        ALOPTDataWrite -> "DATA_WRITE"
        ALOPTPermissionTypeUnspecified -> "PERMISSION_TYPE_UNSPECIFIED"

instance FromJSON AuthorizationLoggingOptionsPermissionType where
    parseJSON = parseJSONText "AuthorizationLoggingOptionsPermissionType"

instance ToJSON AuthorizationLoggingOptionsPermissionType where
    toJSON = toJSONText

-- | Form this outage is expected to take. Note that the \"IT_\" versions of
-- this enum have been deprecated in favor of the unprefixed values.
data InterconnectOutageNotificationIssueType
    = ItOutage
      -- ^ @IT_OUTAGE@
    | ItPartialOutage
      -- ^ @IT_PARTIAL_OUTAGE@
    | Outage
      -- ^ @OUTAGE@
    | PartialOutage
      -- ^ @PARTIAL_OUTAGE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectOutageNotificationIssueType

instance FromHttpApiData InterconnectOutageNotificationIssueType where
    parseQueryParam = \case
        "IT_OUTAGE" -> Right ItOutage
        "IT_PARTIAL_OUTAGE" -> Right ItPartialOutage
        "OUTAGE" -> Right Outage
        "PARTIAL_OUTAGE" -> Right PartialOutage
        x -> Left ("Unable to parse InterconnectOutageNotificationIssueType from: " <> x)

instance ToHttpApiData InterconnectOutageNotificationIssueType where
    toQueryParam = \case
        ItOutage -> "IT_OUTAGE"
        ItPartialOutage -> "IT_PARTIAL_OUTAGE"
        Outage -> "OUTAGE"
        PartialOutage -> "PARTIAL_OUTAGE"

instance FromJSON InterconnectOutageNotificationIssueType where
    parseJSON = parseJSONText "InterconnectOutageNotificationIssueType"

instance ToJSON InterconnectOutageNotificationIssueType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data CommitmentsScopedListWarningCode
    = CSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | CSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | CSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | CSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | CSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | CSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | CSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | CSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | CSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | CSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | CSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | CSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | CSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | CSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | CSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | CSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | CSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | CSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | CSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | CSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | CSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | CSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | CSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommitmentsScopedListWarningCode

instance FromHttpApiData CommitmentsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right CSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right CSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right CSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right CSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right CSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right CSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right CSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right CSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right CSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right CSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right CSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right CSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right CSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right CSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right CSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right CSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right CSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right CSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right CSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right CSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right CSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right CSLWCUndeclaredProperties
        "UNREACHABLE" -> Right CSLWCUnreachable
        x -> Left ("Unable to parse CommitmentsScopedListWarningCode from: " <> x)

instance ToHttpApiData CommitmentsScopedListWarningCode where
    toQueryParam = \case
        CSLWCCleanupFailed -> "CLEANUP_FAILED"
        CSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        CSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        CSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        CSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        CSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        CSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        CSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        CSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        CSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        CSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        CSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        CSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        CSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        CSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        CSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        CSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        CSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        CSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        CSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        CSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        CSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        CSLWCUnreachable -> "UNREACHABLE"

instance FromJSON CommitmentsScopedListWarningCode where
    parseJSON = parseJSONText "CommitmentsScopedListWarningCode"

instance ToJSON CommitmentsScopedListWarningCode where
    toJSON = toJSONText

-- | Specifies the type of proxy header to append before sending data to the
-- backend, either NONE or PROXY_V1. The default is NONE.
data HTTP2HealthCheckProxyHeader
    = HNone
      -- ^ @NONE@
    | HProxyV1
      -- ^ @PROXY_V1@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTP2HealthCheckProxyHeader

instance FromHttpApiData HTTP2HealthCheckProxyHeader where
    parseQueryParam = \case
        "NONE" -> Right HNone
        "PROXY_V1" -> Right HProxyV1
        x -> Left ("Unable to parse HTTP2HealthCheckProxyHeader from: " <> x)

instance ToHttpApiData HTTP2HealthCheckProxyHeader where
    toQueryParam = \case
        HNone -> "NONE"
        HProxyV1 -> "PROXY_V1"

instance FromJSON HTTP2HealthCheckProxyHeader where
    parseJSON = parseJSONText "HTTP2HealthCheckProxyHeader"

instance ToJSON HTTP2HealthCheckProxyHeader where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InterconnectAttachmentsScopedListWarningCode
    = IASLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IASLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IASLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IASLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IASLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IASLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IASLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IASLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IASLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IASLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IASLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IASLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IASLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IASLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IASLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IASLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IASLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IASLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IASLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IASLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IASLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IASLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IASLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectAttachmentsScopedListWarningCode

instance FromHttpApiData InterconnectAttachmentsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IASLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IASLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IASLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IASLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IASLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IASLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IASLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IASLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IASLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IASLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IASLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IASLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IASLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IASLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IASLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IASLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IASLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IASLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IASLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IASLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IASLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IASLWCUndeclaredProperties
        "UNREACHABLE" -> Right IASLWCUnreachable
        x -> Left ("Unable to parse InterconnectAttachmentsScopedListWarningCode from: " <> x)

instance ToHttpApiData InterconnectAttachmentsScopedListWarningCode where
    toQueryParam = \case
        IASLWCCleanupFailed -> "CLEANUP_FAILED"
        IASLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IASLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IASLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IASLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IASLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IASLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IASLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IASLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IASLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IASLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IASLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IASLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IASLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IASLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IASLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IASLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IASLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IASLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IASLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IASLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IASLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IASLWCUnreachable -> "UNREACHABLE"

instance FromJSON InterconnectAttachmentsScopedListWarningCode where
    parseJSON = parseJSONText "InterconnectAttachmentsScopedListWarningCode"

instance ToJSON InterconnectAttachmentsScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data SecurityPolicyListWarningCode
    = SECCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | SECDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | SECDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | SECDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | SECExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | SECExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | SECFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | SECInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | SECMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | SECNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | SECNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | SECNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | SECNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | SECNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | SECNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | SECNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | SECRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | SECResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | SECResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | SECSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | SECSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | SECUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | SECUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SecurityPolicyListWarningCode

instance FromHttpApiData SecurityPolicyListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right SECCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right SECDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right SECDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right SECDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right SECExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right SECExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right SECFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right SECInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right SECMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right SECNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right SECNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right SECNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right SECNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right SECNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right SECNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right SECNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right SECRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right SECResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right SECResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right SECSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SECSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right SECUndeclaredProperties
        "UNREACHABLE" -> Right SECUnreachable
        x -> Left ("Unable to parse SecurityPolicyListWarningCode from: " <> x)

instance ToHttpApiData SecurityPolicyListWarningCode where
    toQueryParam = \case
        SECCleanupFailed -> "CLEANUP_FAILED"
        SECDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        SECDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        SECDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        SECExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        SECExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SECFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        SECInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        SECMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        SECNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        SECNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        SECNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        SECNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        SECNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        SECNotCriticalError -> "NOT_CRITICAL_ERROR"
        SECNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        SECRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        SECResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        SECResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SECSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        SECSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        SECUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        SECUnreachable -> "UNREACHABLE"

instance FromJSON SecurityPolicyListWarningCode where
    parseJSON = parseJSONText "SecurityPolicyListWarningCode"

instance ToJSON SecurityPolicyListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data CommitmentAggregatedListWarningCode
    = CALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | CALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | CALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | CALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | CALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | CALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | CALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | CALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | CALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | CALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | CALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | CALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | CALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | CALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | CALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | CALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | CALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | CALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | CALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | CALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | CALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | CALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | CALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommitmentAggregatedListWarningCode

instance FromHttpApiData CommitmentAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right CALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right CALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right CALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right CALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right CALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right CALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right CALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right CALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right CALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right CALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right CALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right CALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right CALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right CALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right CALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right CALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right CALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right CALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right CALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right CALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right CALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right CALWCUndeclaredProperties
        "UNREACHABLE" -> Right CALWCUnreachable
        x -> Left ("Unable to parse CommitmentAggregatedListWarningCode from: " <> x)

instance ToHttpApiData CommitmentAggregatedListWarningCode where
    toQueryParam = \case
        CALWCCleanupFailed -> "CLEANUP_FAILED"
        CALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        CALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        CALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        CALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        CALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        CALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        CALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        CALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        CALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        CALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        CALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        CALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        CALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        CALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        CALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        CALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        CALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        CALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        CALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        CALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        CALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        CALWCUnreachable -> "UNREACHABLE"

instance FromJSON CommitmentAggregatedListWarningCode where
    parseJSON = parseJSONText "CommitmentAggregatedListWarningCode"

instance ToJSON CommitmentAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data RegionInstanceGroupListWarningCode
    = RIGLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | RIGLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | RIGLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | RIGLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | RIGLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | RIGLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | RIGLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | RIGLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | RIGLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | RIGLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | RIGLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | RIGLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | RIGLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | RIGLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | RIGLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | RIGLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | RIGLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | RIGLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | RIGLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | RIGLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | RIGLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | RIGLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | RIGLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RegionInstanceGroupListWarningCode

instance FromHttpApiData RegionInstanceGroupListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right RIGLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right RIGLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right RIGLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RIGLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right RIGLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right RIGLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right RIGLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right RIGLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right RIGLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RIGLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RIGLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RIGLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RIGLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right RIGLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right RIGLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right RIGLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right RIGLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RIGLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right RIGLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right RIGLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RIGLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right RIGLWCUndeclaredProperties
        "UNREACHABLE" -> Right RIGLWCUnreachable
        x -> Left ("Unable to parse RegionInstanceGroupListWarningCode from: " <> x)

instance ToHttpApiData RegionInstanceGroupListWarningCode where
    toQueryParam = \case
        RIGLWCCleanupFailed -> "CLEANUP_FAILED"
        RIGLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RIGLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RIGLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RIGLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RIGLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RIGLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RIGLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RIGLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RIGLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RIGLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RIGLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RIGLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RIGLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RIGLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        RIGLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RIGLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RIGLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RIGLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RIGLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RIGLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RIGLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RIGLWCUnreachable -> "UNREACHABLE"

instance FromJSON RegionInstanceGroupListWarningCode where
    parseJSON = parseJSONText "RegionInstanceGroupListWarningCode"

instance ToJSON RegionInstanceGroupListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of this InterconnectLocation. If the status is
-- AVAILABLE, new Interconnects may be provisioned in this
-- InterconnectLocation. Otherwise, no new Interconnects may be
-- provisioned.
data InterconnectLocationStatus
    = Available
      -- ^ @AVAILABLE@
    | Closed
      -- ^ @CLOSED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectLocationStatus

instance FromHttpApiData InterconnectLocationStatus where
    parseQueryParam = \case
        "AVAILABLE" -> Right Available
        "CLOSED" -> Right Closed
        x -> Left ("Unable to parse InterconnectLocationStatus from: " <> x)

instance ToHttpApiData InterconnectLocationStatus where
    toQueryParam = \case
        Available -> "AVAILABLE"
        Closed -> "CLOSED"

instance FromJSON InterconnectLocationStatus where
    parseJSON = parseJSONText "InterconnectLocationStatus"

instance ToJSON InterconnectLocationStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceGroupsScopedListWarningCode
    = IGSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IGSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IGSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IGSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IGSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IGSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IGSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IGSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IGSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | IGSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IGSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IGSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IGSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IGSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IGSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupsScopedListWarningCode

instance FromHttpApiData InstanceGroupsScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IGSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IGSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IGSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IGSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IGSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IGSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IGSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IGSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IGSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IGSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IGSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IGSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IGSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IGSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IGSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IGSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IGSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IGSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IGSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IGSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IGSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IGSLWCUndeclaredProperties
        "UNREACHABLE" -> Right IGSLWCUnreachable
        x -> Left ("Unable to parse InstanceGroupsScopedListWarningCode from: " <> x)

instance ToHttpApiData InstanceGroupsScopedListWarningCode where
    toQueryParam = \case
        IGSLWCCleanupFailed -> "CLEANUP_FAILED"
        IGSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IGSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IGSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IGSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IGSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IGSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IGSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IGSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IGSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IGSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IGSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IGSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IGSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IGSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IGSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IGSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IGSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IGSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IGSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IGSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IGSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IGSLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstanceGroupsScopedListWarningCode where
    parseJSON = parseJSONText "InstanceGroupsScopedListWarningCode"

instance ToJSON InstanceGroupsScopedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] The current status of whether or not this Interconnect is
-- functional.
data InterconnectOperationalStatus
    = IOSOSActive
      -- ^ @OS_ACTIVE@
    | IOSOSUnprovisioned
      -- ^ @OS_UNPROVISIONED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectOperationalStatus

instance FromHttpApiData InterconnectOperationalStatus where
    parseQueryParam = \case
        "OS_ACTIVE" -> Right IOSOSActive
        "OS_UNPROVISIONED" -> Right IOSOSUnprovisioned
        x -> Left ("Unable to parse InterconnectOperationalStatus from: " <> x)

instance ToHttpApiData InterconnectOperationalStatus where
    toQueryParam = \case
        IOSOSActive -> "OS_ACTIVE"
        IOSOSUnprovisioned -> "OS_UNPROVISIONED"

instance FromJSON InterconnectOperationalStatus where
    parseJSON = parseJSONText "InterconnectOperationalStatus"

instance ToJSON InterconnectOperationalStatus where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data LicensesListResponseWarningCode
    = LLRWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | LLRWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | LLRWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | LLRWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | LLRWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | LLRWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | LLRWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | LLRWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | LLRWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | LLRWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | LLRWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | LLRWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | LLRWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | LLRWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | LLRWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | LLRWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | LLRWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | LLRWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | LLRWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | LLRWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | LLRWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | LLRWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | LLRWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LicensesListResponseWarningCode

instance FromHttpApiData LicensesListResponseWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right LLRWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right LLRWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right LLRWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right LLRWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right LLRWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right LLRWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right LLRWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right LLRWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right LLRWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right LLRWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right LLRWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right LLRWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right LLRWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right LLRWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right LLRWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right LLRWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right LLRWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right LLRWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right LLRWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right LLRWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right LLRWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right LLRWCUndeclaredProperties
        "UNREACHABLE" -> Right LLRWCUnreachable
        x -> Left ("Unable to parse LicensesListResponseWarningCode from: " <> x)

instance ToHttpApiData LicensesListResponseWarningCode where
    toQueryParam = \case
        LLRWCCleanupFailed -> "CLEANUP_FAILED"
        LLRWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        LLRWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        LLRWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        LLRWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        LLRWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        LLRWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        LLRWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        LLRWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        LLRWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        LLRWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        LLRWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        LLRWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        LLRWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        LLRWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        LLRWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        LLRWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        LLRWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        LLRWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        LLRWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        LLRWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        LLRWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        LLRWCUnreachable -> "UNREACHABLE"

instance FromJSON LicensesListResponseWarningCode where
    parseJSON = parseJSONText "LicensesListResponseWarningCode"

instance ToJSON LicensesListResponseWarningCode where
    toJSON = toJSONText

-- | [Output Only] The status of the instance.
data InstanceWithNamedPortsStatus
    = IWNPSProvisioning
      -- ^ @PROVISIONING@
    | IWNPSRepairing
      -- ^ @REPAIRING@
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
        "REPAIRING" -> Right IWNPSRepairing
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
        IWNPSRepairing -> "REPAIRING"
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
data CommitmentListWarningCode
    = CLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | CLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | CLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | CLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | CLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | CLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | CLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | CLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | CLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | CLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | CLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | CLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | CLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | CLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | CLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | CLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | CLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | CLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | CLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | CLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | CLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | CLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | CLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommitmentListWarningCode

instance FromHttpApiData CommitmentListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right CLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right CLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right CLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right CLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right CLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right CLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right CLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right CLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right CLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right CLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right CLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right CLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right CLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right CLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right CLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right CLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right CLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right CLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right CLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right CLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right CLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right CLWCUndeclaredProperties
        "UNREACHABLE" -> Right CLWCUnreachable
        x -> Left ("Unable to parse CommitmentListWarningCode from: " <> x)

instance ToHttpApiData CommitmentListWarningCode where
    toQueryParam = \case
        CLWCCleanupFailed -> "CLEANUP_FAILED"
        CLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        CLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        CLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        CLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        CLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        CLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        CLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        CLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        CLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        CLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        CLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        CLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        CLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        CLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        CLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        CLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        CLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        CLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        CLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        CLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        CLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        CLWCUnreachable -> "UNREACHABLE"

instance FromJSON CommitmentListWarningCode where
    parseJSON = parseJSONText "CommitmentListWarningCode"

instance ToJSON CommitmentListWarningCode where
    toJSON = toJSONText

-- | Specifies how port is selected for health checking, can be one of
-- following values: USE_FIXED_PORT: The port number in port is used for
-- health checking. USE_NAMED_PORT: The portName is used for health
-- checking. USE_SERVING_PORT: For NetworkEndpointGroup, the port specified
-- for each network endpoint is used for health checking. For other
-- backends, the port or named port specified in the Backend Service is
-- used for health checking. If not specified, HTTP health check follows
-- behavior specified in port and portName fields.
data HTTPHealthCheckPortSpecification
    = HUseFixedPort
      -- ^ @USE_FIXED_PORT@
    | HUseNamedPort
      -- ^ @USE_NAMED_PORT@
    | HUseServingPort
      -- ^ @USE_SERVING_PORT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HTTPHealthCheckPortSpecification

instance FromHttpApiData HTTPHealthCheckPortSpecification where
    parseQueryParam = \case
        "USE_FIXED_PORT" -> Right HUseFixedPort
        "USE_NAMED_PORT" -> Right HUseNamedPort
        "USE_SERVING_PORT" -> Right HUseServingPort
        x -> Left ("Unable to parse HTTPHealthCheckPortSpecification from: " <> x)

instance ToHttpApiData HTTPHealthCheckPortSpecification where
    toQueryParam = \case
        HUseFixedPort -> "USE_FIXED_PORT"
        HUseNamedPort -> "USE_NAMED_PORT"
        HUseServingPort -> "USE_SERVING_PORT"

instance FromJSON HTTPHealthCheckPortSpecification where
    parseJSON = parseJSONText "HTTPHealthCheckPortSpecification"

instance ToJSON HTTPHealthCheckPortSpecification where
    toJSON = toJSONText

-- | Trusted attributes supplied by the IAM system.
data ConditionIAM
    = Approver
      -- ^ @APPROVER@
    | Attribution
      -- ^ @ATTRIBUTION@
    | Authority
      -- ^ @AUTHORITY@
    | CredentialsType
      -- ^ @CREDENTIALS_TYPE@
    | JustificationType
      -- ^ @JUSTIFICATION_TYPE@
    | NoAttr
      -- ^ @NO_ATTR@
    | SecurityRealm
      -- ^ @SECURITY_REALM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionIAM

instance FromHttpApiData ConditionIAM where
    parseQueryParam = \case
        "APPROVER" -> Right Approver
        "ATTRIBUTION" -> Right Attribution
        "AUTHORITY" -> Right Authority
        "CREDENTIALS_TYPE" -> Right CredentialsType
        "JUSTIFICATION_TYPE" -> Right JustificationType
        "NO_ATTR" -> Right NoAttr
        "SECURITY_REALM" -> Right SecurityRealm
        x -> Left ("Unable to parse ConditionIAM from: " <> x)

instance ToHttpApiData ConditionIAM where
    toQueryParam = \case
        Approver -> "APPROVER"
        Attribution -> "ATTRIBUTION"
        Authority -> "AUTHORITY"
        CredentialsType -> "CREDENTIALS_TYPE"
        JustificationType -> "JUSTIFICATION_TYPE"
        NoAttr -> "NO_ATTR"
        SecurityRealm -> "SECURITY_REALM"

instance FromJSON ConditionIAM where
    parseJSON = parseJSONText "ConditionIAM"

instance ToJSON ConditionIAM where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data AddressAggregatedListWarningCode
    = AALWCACleanupFailed
      -- ^ @CLEANUP_FAILED@
    | AALWCADeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | AALWCADeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | AALWCADiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | AALWCAExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | AALWCAExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | AALWCAFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | AALWCAInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | AALWCAMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | AALWCANextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | AALWCANextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | AALWCANextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | AALWCANextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | AALWCANextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | AALWCANotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | AALWCANoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | AALWCARequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | AALWCAResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | AALWCAResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | AALWCASchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | AALWCASingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | AALWCAUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | AALWCAUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AddressAggregatedListWarningCode

instance FromHttpApiData AddressAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right AALWCACleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right AALWCADeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right AALWCADeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right AALWCADiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right AALWCAExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right AALWCAExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right AALWCAFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right AALWCAInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right AALWCAMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right AALWCANextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right AALWCANextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right AALWCANextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right AALWCANextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right AALWCANextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right AALWCANotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right AALWCANoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right AALWCARequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right AALWCAResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right AALWCAResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right AALWCASchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right AALWCASingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right AALWCAUndeclaredProperties
        "UNREACHABLE" -> Right AALWCAUnreachable
        x -> Left ("Unable to parse AddressAggregatedListWarningCode from: " <> x)

instance ToHttpApiData AddressAggregatedListWarningCode where
    toQueryParam = \case
        AALWCACleanupFailed -> "CLEANUP_FAILED"
        AALWCADeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        AALWCADeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        AALWCADiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        AALWCAExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        AALWCAExternalAPIWarning -> "EXTERNAL_API_WARNING"
        AALWCAFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        AALWCAInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        AALWCAMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        AALWCANextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        AALWCANextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        AALWCANextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        AALWCANextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        AALWCANextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        AALWCANotCriticalError -> "NOT_CRITICAL_ERROR"
        AALWCANoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        AALWCARequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        AALWCAResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        AALWCAResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        AALWCASchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        AALWCASingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        AALWCAUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        AALWCAUnreachable -> "UNREACHABLE"

instance FromJSON AddressAggregatedListWarningCode where
    parseJSON = parseJSONText "AddressAggregatedListWarningCode"

instance ToJSON AddressAggregatedListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InterconnectAttachmentListWarningCode
    = IALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | IALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | IALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | IALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | IALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | IALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | IALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | IALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | IALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | IALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | IALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | IALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | IALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | IALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | IALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | IALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | IALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | IALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | IALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | IALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | IALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | IALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | IALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterconnectAttachmentListWarningCode

instance FromHttpApiData InterconnectAttachmentListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right IALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right IALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right IALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right IALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right IALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right IALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right IALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right IALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right IALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right IALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right IALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right IALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right IALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right IALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right IALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right IALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right IALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right IALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right IALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right IALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right IALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right IALWCUndeclaredProperties
        "UNREACHABLE" -> Right IALWCUnreachable
        x -> Left ("Unable to parse InterconnectAttachmentListWarningCode from: " <> x)

instance ToHttpApiData InterconnectAttachmentListWarningCode where
    toQueryParam = \case
        IALWCCleanupFailed -> "CLEANUP_FAILED"
        IALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        IALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        IALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        IALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        IALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        IALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        IALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        IALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        IALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        IALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        IALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        IALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        IALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        IALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        IALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        IALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        IALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        IALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        IALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        IALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        IALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        IALWCUnreachable -> "UNREACHABLE"

instance FromJSON InterconnectAttachmentListWarningCode where
    parseJSON = parseJSONText "InterconnectAttachmentListWarningCode"

instance ToJSON InterconnectAttachmentListWarningCode where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstancesScopedListWarningCode
    = ISLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | ISLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | ISLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | ISLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | ISLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | ISLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | ISLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | ISLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | ISLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
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
    | ISLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | ISLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | ISLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | ISLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | ISLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | ISLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstancesScopedListWarningCode

instance FromHttpApiData InstancesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right ISLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right ISLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right ISLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right ISLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right ISLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right ISLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right ISLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right ISLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right ISLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right ISLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right ISLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right ISLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right ISLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right ISLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right ISLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right ISLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right ISLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ISLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right ISLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right ISLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right ISLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right ISLWCUndeclaredProperties
        "UNREACHABLE" -> Right ISLWCUnreachable
        x -> Left ("Unable to parse InstancesScopedListWarningCode from: " <> x)

instance ToHttpApiData InstancesScopedListWarningCode where
    toQueryParam = \case
        ISLWCCleanupFailed -> "CLEANUP_FAILED"
        ISLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        ISLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        ISLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ISLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        ISLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        ISLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ISLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        ISLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ISLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        ISLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        ISLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        ISLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        ISLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        ISLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        ISLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        ISLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        ISLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        ISLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        ISLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        ISLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        ISLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ISLWCUnreachable -> "UNREACHABLE"

instance FromJSON InstancesScopedListWarningCode where
    parseJSON = parseJSONText "InstancesScopedListWarningCode"

instance ToJSON InstancesScopedListWarningCode where
    toJSON = toJSONText

-- | The type of the service resource.
data XpnResourceIdType
    = XRITProject
      -- ^ @PROJECT@
    | XRITXpnResourceTypeUnspecified
      -- ^ @XPN_RESOURCE_TYPE_UNSPECIFIED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable XpnResourceIdType

instance FromHttpApiData XpnResourceIdType where
    parseQueryParam = \case
        "PROJECT" -> Right XRITProject
        "XPN_RESOURCE_TYPE_UNSPECIFIED" -> Right XRITXpnResourceTypeUnspecified
        x -> Left ("Unable to parse XpnResourceIdType from: " <> x)

instance ToHttpApiData XpnResourceIdType where
    toQueryParam = \case
        XRITProject -> "PROJECT"
        XRITXpnResourceTypeUnspecified -> "XPN_RESOURCE_TYPE_UNSPECIFIED"

instance FromJSON XpnResourceIdType where
    parseJSON = parseJSONText "XpnResourceIdType"

instance ToJSON XpnResourceIdType where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data BackendServicesScopedListWarningCode
    = BSSLWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | BSSLWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | BSSLWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | BSSLWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | BSSLWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | BSSLWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | BSSLWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | BSSLWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | BSSLWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | BSSLWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | BSSLWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | BSSLWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | BSSLWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | BSSLWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | BSSLWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | BSSLWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | BSSLWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | BSSLWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | BSSLWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | BSSLWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | BSSLWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | BSSLWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | BSSLWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendServicesScopedListWarningCode

instance FromHttpApiData BackendServicesScopedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right BSSLWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right BSSLWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right BSSLWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right BSSLWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right BSSLWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right BSSLWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right BSSLWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right BSSLWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right BSSLWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right BSSLWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right BSSLWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right BSSLWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right BSSLWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right BSSLWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right BSSLWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right BSSLWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right BSSLWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right BSSLWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right BSSLWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right BSSLWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right BSSLWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right BSSLWCUndeclaredProperties
        "UNREACHABLE" -> Right BSSLWCUnreachable
        x -> Left ("Unable to parse BackendServicesScopedListWarningCode from: " <> x)

instance ToHttpApiData BackendServicesScopedListWarningCode where
    toQueryParam = \case
        BSSLWCCleanupFailed -> "CLEANUP_FAILED"
        BSSLWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        BSSLWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        BSSLWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        BSSLWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        BSSLWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        BSSLWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        BSSLWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        BSSLWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        BSSLWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        BSSLWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        BSSLWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        BSSLWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        BSSLWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        BSSLWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        BSSLWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        BSSLWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        BSSLWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        BSSLWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        BSSLWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        BSSLWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        BSSLWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        BSSLWCUnreachable -> "UNREACHABLE"

instance FromJSON BackendServicesScopedListWarningCode where
    parseJSON = parseJSONText "BackendServicesScopedListWarningCode"

instance ToJSON BackendServicesScopedListWarningCode where
    toJSON = toJSONText

-- | Session affinity option, must be one of the following values: NONE:
-- Connections from the same client IP may go to any instance in the pool.
-- CLIENT_IP: Connections from the same client IP will go to the same
-- instance in the pool while that instance remains healthy.
-- CLIENT_IP_PROTO: Connections from the same client IP with the same IP
-- protocol will go to the same instance in the pool while that instance
-- remains healthy.
data TargetPoolSessionAffinity
    = TPSAClientIP
      -- ^ @CLIENT_IP@
    | TPSAClientIPPortProto
      -- ^ @CLIENT_IP_PORT_PROTO@
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
        "CLIENT_IP_PORT_PROTO" -> Right TPSAClientIPPortProto
        "CLIENT_IP_PROTO" -> Right TPSAClientIPProto
        "GENERATED_COOKIE" -> Right TPSAGeneratedCookie
        "NONE" -> Right TPSANone
        x -> Left ("Unable to parse TargetPoolSessionAffinity from: " <> x)

instance ToHttpApiData TargetPoolSessionAffinity where
    toQueryParam = \case
        TPSAClientIP -> "CLIENT_IP"
        TPSAClientIPPortProto -> "CLIENT_IP_PORT_PROTO"
        TPSAClientIPProto -> "CLIENT_IP_PROTO"
        TPSAGeneratedCookie -> "GENERATED_COOKIE"
        TPSANone -> "NONE"

instance FromJSON TargetPoolSessionAffinity where
    parseJSON = parseJSONText "TargetPoolSessionAffinity"

instance ToJSON TargetPoolSessionAffinity where
    toJSON = toJSONText

-- | [Output Only] The status of the autoscaler configuration.
data AutoscalerStatus
    = ASActive
      -- ^ @ACTIVE@
    | ASDeleting
      -- ^ @DELETING@
    | ASError'
      -- ^ @ERROR@
    | ASPending
      -- ^ @PENDING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoscalerStatus

instance FromHttpApiData AutoscalerStatus where
    parseQueryParam = \case
        "ACTIVE" -> Right ASActive
        "DELETING" -> Right ASDeleting
        "ERROR" -> Right ASError'
        "PENDING" -> Right ASPending
        x -> Left ("Unable to parse AutoscalerStatus from: " <> x)

instance ToHttpApiData AutoscalerStatus where
    toQueryParam = \case
        ASActive -> "ACTIVE"
        ASDeleting -> "DELETING"
        ASError' -> "ERROR"
        ASPending -> "PENDING"

instance FromJSON AutoscalerStatus where
    parseJSON = parseJSONText "AutoscalerStatus"

instance ToJSON AutoscalerStatus where
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

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data InstanceAggregatedListWarningCode
    = INSCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | INSDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | INSDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | INSDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | INSExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | INSExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | INSFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | INSInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | INSMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | INSNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | INSNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | INSNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | INSNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | INSNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | INSNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | INSNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | INSRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | INSResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | INSResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | INSSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | INSSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | INSUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | INSUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceAggregatedListWarningCode

instance FromHttpApiData InstanceAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right INSCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right INSDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right INSDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right INSDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right INSExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right INSExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right INSFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right INSInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right INSMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right INSNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right INSNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right INSNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right INSNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right INSNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right INSNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right INSNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right INSRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right INSResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right INSResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right INSSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right INSSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right INSUndeclaredProperties
        "UNREACHABLE" -> Right INSUnreachable
        x -> Left ("Unable to parse InstanceAggregatedListWarningCode from: " <> x)

instance ToHttpApiData InstanceAggregatedListWarningCode where
    toQueryParam = \case
        INSCleanupFailed -> "CLEANUP_FAILED"
        INSDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        INSDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        INSDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        INSExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        INSExternalAPIWarning -> "EXTERNAL_API_WARNING"
        INSFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        INSInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        INSMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        INSNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        INSNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        INSNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        INSNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        INSNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        INSNotCriticalError -> "NOT_CRITICAL_ERROR"
        INSNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        INSRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        INSResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        INSResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        INSSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        INSSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        INSUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        INSUnreachable -> "UNREACHABLE"

instance FromJSON InstanceAggregatedListWarningCode where
    parseJSON = parseJSONText "InstanceAggregatedListWarningCode"

instance ToJSON InstanceAggregatedListWarningCode where
    toJSON = toJSONText

-- | Type of resource for which this commitment applies. Possible values are
-- VCPU and MEMORY
data ResourceCommitmentType
    = Memory
      -- ^ @MEMORY@
    | Unspecified
      -- ^ @UNSPECIFIED@
    | Vcpu
      -- ^ @VCPU@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourceCommitmentType

instance FromHttpApiData ResourceCommitmentType where
    parseQueryParam = \case
        "MEMORY" -> Right Memory
        "UNSPECIFIED" -> Right Unspecified
        "VCPU" -> Right Vcpu
        x -> Left ("Unable to parse ResourceCommitmentType from: " <> x)

instance ToHttpApiData ResourceCommitmentType where
    toQueryParam = \case
        Memory -> "MEMORY"
        Unspecified -> "UNSPECIFIED"
        Vcpu -> "VCPU"

instance FromJSON ResourceCommitmentType where
    parseJSON = parseJSONText "ResourceCommitmentType"

instance ToJSON ResourceCommitmentType where
    toJSON = toJSONText

-- | This signifies the networking tier used for configuring this load
-- balancer and can only take the following values: PREMIUM , STANDARD. For
-- regional ForwardingRule, the valid values are PREMIUM and STANDARD. For
-- GlobalForwardingRule, the valid value is PREMIUM. If this field is not
-- specified, it is assumed to be PREMIUM. If IPAddress is specified, this
-- value must be equal to the networkTier of the Address.
data ForwardingRuleNetworkTier
    = FRNTPremium
      -- ^ @PREMIUM@
    | FRNTStandard
      -- ^ @STANDARD@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingRuleNetworkTier

instance FromHttpApiData ForwardingRuleNetworkTier where
    parseQueryParam = \case
        "PREMIUM" -> Right FRNTPremium
        "STANDARD" -> Right FRNTStandard
        x -> Left ("Unable to parse ForwardingRuleNetworkTier from: " <> x)

instance ToHttpApiData ForwardingRuleNetworkTier where
    toQueryParam = \case
        FRNTPremium -> "PREMIUM"
        FRNTStandard -> "STANDARD"

instance FromJSON ForwardingRuleNetworkTier where
    parseJSON = parseJSONText "ForwardingRuleNetworkTier"

instance ToJSON ForwardingRuleNetworkTier where
    toJSON = toJSONText

-- | Minimal action to be taken on an instance. You can specify either
-- RESTART to restart existing instances or REPLACE to delete and create
-- new instances from the target template. If you specify a RESTART, the
-- Updater will attempt to perform that action only. However, if the
-- Updater determines that the minimal action you specify is not enough to
-- perform the update, it might perform a more disruptive action.
data InstanceGroupManagerUpdatePolicyMinimalAction
    = Replace
      -- ^ @REPLACE@
    | Restart
      -- ^ @RESTART@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupManagerUpdatePolicyMinimalAction

instance FromHttpApiData InstanceGroupManagerUpdatePolicyMinimalAction where
    parseQueryParam = \case
        "REPLACE" -> Right Replace
        "RESTART" -> Right Restart
        x -> Left ("Unable to parse InstanceGroupManagerUpdatePolicyMinimalAction from: " <> x)

instance ToHttpApiData InstanceGroupManagerUpdatePolicyMinimalAction where
    toQueryParam = \case
        Replace -> "REPLACE"
        Restart -> "RESTART"

instance FromJSON InstanceGroupManagerUpdatePolicyMinimalAction where
    parseJSON = parseJSONText "InstanceGroupManagerUpdatePolicyMinimalAction"

instance ToJSON InstanceGroupManagerUpdatePolicyMinimalAction where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data BackendServiceAggregatedListWarningCode
    = BSALWCCleanupFailed
      -- ^ @CLEANUP_FAILED@
    | BSALWCDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
    | BSALWCDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
    | BSALWCDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
    | BSALWCExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
    | BSALWCExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
    | BSALWCFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
    | BSALWCInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
    | BSALWCMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
    | BSALWCNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
    | BSALWCNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
    | BSALWCNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
    | BSALWCNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
    | BSALWCNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
    | BSALWCNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
    | BSALWCNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
    | BSALWCRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
    | BSALWCResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
    | BSALWCResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
    | BSALWCSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
    | BSALWCSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
    | BSALWCUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
    | BSALWCUnreachable
      -- ^ @UNREACHABLE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BackendServiceAggregatedListWarningCode

instance FromHttpApiData BackendServiceAggregatedListWarningCode where
    parseQueryParam = \case
        "CLEANUP_FAILED" -> Right BSALWCCleanupFailed
        "DEPRECATED_RESOURCE_USED" -> Right BSALWCDeprecatedResourceUsed
        "DEPRECATED_TYPE_USED" -> Right BSALWCDeprecatedTypeUsed
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right BSALWCDiskSizeLargerThanImageSize
        "EXPERIMENTAL_TYPE_USED" -> Right BSALWCExperimentalTypeUsed
        "EXTERNAL_API_WARNING" -> Right BSALWCExternalAPIWarning
        "FIELD_VALUE_OVERRIDEN" -> Right BSALWCFieldValueOverriden
        "INJECTED_KERNELS_DEPRECATED" -> Right BSALWCInjectedKernelsDeprecated
        "MISSING_TYPE_DEPENDENCY" -> Right BSALWCMissingTypeDependency
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right BSALWCNextHopAddressNotAssigned
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right BSALWCNextHopCannotIPForward
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right BSALWCNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right BSALWCNextHopInstanceNotOnNetwork
        "NEXT_HOP_NOT_RUNNING" -> Right BSALWCNextHopNotRunning
        "NOT_CRITICAL_ERROR" -> Right BSALWCNotCriticalError
        "NO_RESULTS_ON_PAGE" -> Right BSALWCNoResultsOnPage
        "REQUIRED_TOS_AGREEMENT" -> Right BSALWCRequiredTosAgreement
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right BSALWCResourceInUseByOtherResourceWarning
        "RESOURCE_NOT_DELETED" -> Right BSALWCResourceNotDeleted
        "SCHEMA_VALIDATION_IGNORED" -> Right BSALWCSchemaValidationIgnored
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right BSALWCSingleInstancePropertyTemplate
        "UNDECLARED_PROPERTIES" -> Right BSALWCUndeclaredProperties
        "UNREACHABLE" -> Right BSALWCUnreachable
        x -> Left ("Unable to parse BackendServiceAggregatedListWarningCode from: " <> x)

instance ToHttpApiData BackendServiceAggregatedListWarningCode where
    toQueryParam = \case
        BSALWCCleanupFailed -> "CLEANUP_FAILED"
        BSALWCDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        BSALWCDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        BSALWCDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        BSALWCExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        BSALWCExternalAPIWarning -> "EXTERNAL_API_WARNING"
        BSALWCFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        BSALWCInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        BSALWCMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        BSALWCNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        BSALWCNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        BSALWCNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        BSALWCNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        BSALWCNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        BSALWCNotCriticalError -> "NOT_CRITICAL_ERROR"
        BSALWCNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        BSALWCRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        BSALWCResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        BSALWCResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        BSALWCSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        BSALWCSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        BSALWCUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        BSALWCUnreachable -> "UNREACHABLE"

instance FromJSON BackendServiceAggregatedListWarningCode where
    parseJSON = parseJSONText "BackendServiceAggregatedListWarningCode"

instance ToJSON BackendServiceAggregatedListWarningCode where
    toJSON = toJSONText
