{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DeploymentManager.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DeploymentManager.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data OperationWarningsItemCode
    = DeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
      -- A link to a deprecated resource was created.
    | NoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
      -- No results are present on a particular list page.
    | Unreachable
      -- ^ @UNREACHABLE@
      -- A given scope cannot be reached.
    | NextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
      -- The route\'s nextHopIp address is not assigned to an instance on the
      -- network.
    | NextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
      -- The route\'s nextHopInstance URL refers to an instance that does not
      -- exist.
    | NextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
      -- The route\'s nextHopInstance URL refers to an instance that is not on
      -- the same network as the route.
    | NextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
      -- The route\'s next hop instance cannot ip forward.
    | NextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
      -- The route\'s next hop instance does not have a status of RUNNING.
    | InjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
      -- The operation involved use of an injected kernel, which is deprecated.
    | RequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
      -- The user attempted to use a resource that requires a TOS they have not
      -- accepted.
    | DiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
      -- The user created a boot disk that is larger than image size.
    | ResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
      -- One or more of the resources set to auto-delete could not be deleted
      -- because they were in use.
    | SingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
      -- Instance template used in instance group manager is valid as such, but
      -- its application does not make a lot of sense, because it allows only
      -- single instance in instance group.
    | NotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
      -- Error which is not critical. We decided to continue the process despite
      -- the mentioned error.
    | CleanupFailed
      -- ^ @CLEANUP_FAILED@
      -- Warning about failed cleanup of transient changes made by a failed
      -- operation.
    | FieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
      -- Warning that value of a field has been overridden. Deprecated unused
      -- field.
    | ResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
      -- Warning that a resource is in use.
    | MissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
      -- A resource depends on a missing type
    | ExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
      -- Warning that is present in an external api call
    | SchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
      -- When a resource schema validation is ignored.
    | UndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
      -- When undeclared properties in the schema are present
    | ExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
      -- When deploying and at least one of the resources has a type marked as
      -- experimental
    | DeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
      -- When deploying and at least one of the resources has a type marked as
      -- deprecated
    | PartialSuccess
      -- ^ @PARTIAL_SUCCESS@
      -- Success is reported, but some results may be missing due to errors
    | LargeDeploymentWarning
      -- ^ @LARGE_DEPLOYMENT_WARNING@
      -- When deploying a deployment with a exceedingly large number of resources
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationWarningsItemCode

instance FromHttpApiData OperationWarningsItemCode where
    parseQueryParam = \case
        "DEPRECATED_RESOURCE_USED" -> Right DeprecatedResourceUsed
        "NO_RESULTS_ON_PAGE" -> Right NoResultsOnPage
        "UNREACHABLE" -> Right Unreachable
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right NextHopAddressNotAssigned
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right NextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right NextHopInstanceNotOnNetwork
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right NextHopCannotIPForward
        "NEXT_HOP_NOT_RUNNING" -> Right NextHopNotRunning
        "INJECTED_KERNELS_DEPRECATED" -> Right InjectedKernelsDeprecated
        "REQUIRED_TOS_AGREEMENT" -> Right RequiredTosAgreement
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right DiskSizeLargerThanImageSize
        "RESOURCE_NOT_DELETED" -> Right ResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right SingleInstancePropertyTemplate
        "NOT_CRITICAL_ERROR" -> Right NotCriticalError
        "CLEANUP_FAILED" -> Right CleanupFailed
        "FIELD_VALUE_OVERRIDEN" -> Right FieldValueOverriden
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right ResourceInUseByOtherResourceWarning
        "MISSING_TYPE_DEPENDENCY" -> Right MissingTypeDependency
        "EXTERNAL_API_WARNING" -> Right ExternalAPIWarning
        "SCHEMA_VALIDATION_IGNORED" -> Right SchemaValidationIgnored
        "UNDECLARED_PROPERTIES" -> Right UndeclaredProperties
        "EXPERIMENTAL_TYPE_USED" -> Right ExperimentalTypeUsed
        "DEPRECATED_TYPE_USED" -> Right DeprecatedTypeUsed
        "PARTIAL_SUCCESS" -> Right PartialSuccess
        "LARGE_DEPLOYMENT_WARNING" -> Right LargeDeploymentWarning
        x -> Left ("Unable to parse OperationWarningsItemCode from: " <> x)

instance ToHttpApiData OperationWarningsItemCode where
    toQueryParam = \case
        DeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        NoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        Unreachable -> "UNREACHABLE"
        NextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        NextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        NextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        NextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        NextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        InjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        DiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        ResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        SingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        NotCriticalError -> "NOT_CRITICAL_ERROR"
        CleanupFailed -> "CLEANUP_FAILED"
        FieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        ResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        MissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        ExternalAPIWarning -> "EXTERNAL_API_WARNING"
        SchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        UndeclaredProperties -> "UNDECLARED_PROPERTIES"
        ExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        DeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        PartialSuccess -> "PARTIAL_SUCCESS"
        LargeDeploymentWarning -> "LARGE_DEPLOYMENT_WARNING"

instance FromJSON OperationWarningsItemCode where
    parseJSON = parseJSONText "OperationWarningsItemCode"

instance ToJSON OperationWarningsItemCode where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentsUpdateCreatePolicy
    = CreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
    | Acquire
      -- ^ @ACQUIRE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsUpdateCreatePolicy

instance FromHttpApiData DeploymentsUpdateCreatePolicy where
    parseQueryParam = \case
        "CREATE_OR_ACQUIRE" -> Right CreateOrAcquire
        "ACQUIRE" -> Right Acquire
        x -> Left ("Unable to parse DeploymentsUpdateCreatePolicy from: " <> x)

instance ToHttpApiData DeploymentsUpdateCreatePolicy where
    toQueryParam = \case
        CreateOrAcquire -> "CREATE_OR_ACQUIRE"
        Acquire -> "ACQUIRE"

instance FromJSON DeploymentsUpdateCreatePolicy where
    parseJSON = parseJSONText "DeploymentsUpdateCreatePolicy"

instance ToJSON DeploymentsUpdateCreatePolicy where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data ResourceUpdateWarningsItemCode
    = RUWICDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
      -- A link to a deprecated resource was created.
    | RUWICNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
      -- No results are present on a particular list page.
    | RUWICUnreachable
      -- ^ @UNREACHABLE@
      -- A given scope cannot be reached.
    | RUWICNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
      -- The route\'s nextHopIp address is not assigned to an instance on the
      -- network.
    | RUWICNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
      -- The route\'s nextHopInstance URL refers to an instance that does not
      -- exist.
    | RUWICNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
      -- The route\'s nextHopInstance URL refers to an instance that is not on
      -- the same network as the route.
    | RUWICNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
      -- The route\'s next hop instance cannot ip forward.
    | RUWICNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
      -- The route\'s next hop instance does not have a status of RUNNING.
    | RUWICInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
      -- The operation involved use of an injected kernel, which is deprecated.
    | RUWICRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
      -- The user attempted to use a resource that requires a TOS they have not
      -- accepted.
    | RUWICDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
      -- The user created a boot disk that is larger than image size.
    | RUWICResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
      -- One or more of the resources set to auto-delete could not be deleted
      -- because they were in use.
    | RUWICSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
      -- Instance template used in instance group manager is valid as such, but
      -- its application does not make a lot of sense, because it allows only
      -- single instance in instance group.
    | RUWICNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
      -- Error which is not critical. We decided to continue the process despite
      -- the mentioned error.
    | RUWICCleanupFailed
      -- ^ @CLEANUP_FAILED@
      -- Warning about failed cleanup of transient changes made by a failed
      -- operation.
    | RUWICFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
      -- Warning that value of a field has been overridden. Deprecated unused
      -- field.
    | RUWICResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
      -- Warning that a resource is in use.
    | RUWICMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
      -- A resource depends on a missing type
    | RUWICExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
      -- Warning that is present in an external api call
    | RUWICSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
      -- When a resource schema validation is ignored.
    | RUWICUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
      -- When undeclared properties in the schema are present
    | RUWICExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
      -- When deploying and at least one of the resources has a type marked as
      -- experimental
    | RUWICDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
      -- When deploying and at least one of the resources has a type marked as
      -- deprecated
    | RUWICPartialSuccess
      -- ^ @PARTIAL_SUCCESS@
      -- Success is reported, but some results may be missing due to errors
    | RUWICLargeDeploymentWarning
      -- ^ @LARGE_DEPLOYMENT_WARNING@
      -- When deploying a deployment with a exceedingly large number of resources
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourceUpdateWarningsItemCode

instance FromHttpApiData ResourceUpdateWarningsItemCode where
    parseQueryParam = \case
        "DEPRECATED_RESOURCE_USED" -> Right RUWICDeprecatedResourceUsed
        "NO_RESULTS_ON_PAGE" -> Right RUWICNoResultsOnPage
        "UNREACHABLE" -> Right RUWICUnreachable
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RUWICNextHopAddressNotAssigned
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RUWICNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RUWICNextHopInstanceNotOnNetwork
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RUWICNextHopCannotIPForward
        "NEXT_HOP_NOT_RUNNING" -> Right RUWICNextHopNotRunning
        "INJECTED_KERNELS_DEPRECATED" -> Right RUWICInjectedKernelsDeprecated
        "REQUIRED_TOS_AGREEMENT" -> Right RUWICRequiredTosAgreement
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RUWICDiskSizeLargerThanImageSize
        "RESOURCE_NOT_DELETED" -> Right RUWICResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RUWICSingleInstancePropertyTemplate
        "NOT_CRITICAL_ERROR" -> Right RUWICNotCriticalError
        "CLEANUP_FAILED" -> Right RUWICCleanupFailed
        "FIELD_VALUE_OVERRIDEN" -> Right RUWICFieldValueOverriden
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RUWICResourceInUseByOtherResourceWarning
        "MISSING_TYPE_DEPENDENCY" -> Right RUWICMissingTypeDependency
        "EXTERNAL_API_WARNING" -> Right RUWICExternalAPIWarning
        "SCHEMA_VALIDATION_IGNORED" -> Right RUWICSchemaValidationIgnored
        "UNDECLARED_PROPERTIES" -> Right RUWICUndeclaredProperties
        "EXPERIMENTAL_TYPE_USED" -> Right RUWICExperimentalTypeUsed
        "DEPRECATED_TYPE_USED" -> Right RUWICDeprecatedTypeUsed
        "PARTIAL_SUCCESS" -> Right RUWICPartialSuccess
        "LARGE_DEPLOYMENT_WARNING" -> Right RUWICLargeDeploymentWarning
        x -> Left ("Unable to parse ResourceUpdateWarningsItemCode from: " <> x)

instance ToHttpApiData ResourceUpdateWarningsItemCode where
    toQueryParam = \case
        RUWICDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RUWICNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RUWICUnreachable -> "UNREACHABLE"
        RUWICNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RUWICNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RUWICNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RUWICNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RUWICNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RUWICInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RUWICRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RUWICDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RUWICResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RUWICSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RUWICNotCriticalError -> "NOT_CRITICAL_ERROR"
        RUWICCleanupFailed -> "CLEANUP_FAILED"
        RUWICFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RUWICResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RUWICMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RUWICExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RUWICSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RUWICUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RUWICExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RUWICDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RUWICPartialSuccess -> "PARTIAL_SUCCESS"
        RUWICLargeDeploymentWarning -> "LARGE_DEPLOYMENT_WARNING"

instance FromJSON ResourceUpdateWarningsItemCode where
    parseJSON = parseJSONText "ResourceUpdateWarningsItemCode"

instance ToJSON ResourceUpdateWarningsItemCode where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsDeleteDeletePolicy
    = Delete'
      -- ^ @DELETE@
    | Abandon
      -- ^ @ABANDON@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsDeleteDeletePolicy

instance FromHttpApiData DeploymentsDeleteDeletePolicy where
    parseQueryParam = \case
        "DELETE" -> Right Delete'
        "ABANDON" -> Right Abandon
        x -> Left ("Unable to parse DeploymentsDeleteDeletePolicy from: " <> x)

instance ToHttpApiData DeploymentsDeleteDeletePolicy where
    toQueryParam = \case
        Delete' -> "DELETE"
        Abandon -> "ABANDON"

instance FromJSON DeploymentsDeleteDeletePolicy where
    parseJSON = parseJSONText "DeploymentsDeleteDeletePolicy"

instance ToJSON DeploymentsDeleteDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsUpdateDeletePolicy
    = DUDPDelete'
      -- ^ @DELETE@
    | DUDPAbandon
      -- ^ @ABANDON@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsUpdateDeletePolicy

instance FromHttpApiData DeploymentsUpdateDeletePolicy where
    parseQueryParam = \case
        "DELETE" -> Right DUDPDelete'
        "ABANDON" -> Right DUDPAbandon
        x -> Left ("Unable to parse DeploymentsUpdateDeletePolicy from: " <> x)

instance ToHttpApiData DeploymentsUpdateDeletePolicy where
    toQueryParam = \case
        DUDPDelete' -> "DELETE"
        DUDPAbandon -> "ABANDON"

instance FromJSON DeploymentsUpdateDeletePolicy where
    parseJSON = parseJSONText "DeploymentsUpdateDeletePolicy"

instance ToJSON DeploymentsUpdateDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for deleting resources.
data DeploymentsPatchDeletePolicy
    = DPDPDelete'
      -- ^ @DELETE@
    | DPDPAbandon
      -- ^ @ABANDON@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsPatchDeletePolicy

instance FromHttpApiData DeploymentsPatchDeletePolicy where
    parseQueryParam = \case
        "DELETE" -> Right DPDPDelete'
        "ABANDON" -> Right DPDPAbandon
        x -> Left ("Unable to parse DeploymentsPatchDeletePolicy from: " <> x)

instance ToHttpApiData DeploymentsPatchDeletePolicy where
    toQueryParam = \case
        DPDPDelete' -> "DELETE"
        DPDPAbandon -> "ABANDON"

instance FromJSON DeploymentsPatchDeletePolicy where
    parseJSON = parseJSONText "DeploymentsPatchDeletePolicy"

instance ToJSON DeploymentsPatchDeletePolicy where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentsPatchCreatePolicy
    = DPCPCreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
    | DPCPAcquire
      -- ^ @ACQUIRE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsPatchCreatePolicy

instance FromHttpApiData DeploymentsPatchCreatePolicy where
    parseQueryParam = \case
        "CREATE_OR_ACQUIRE" -> Right DPCPCreateOrAcquire
        "ACQUIRE" -> Right DPCPAcquire
        x -> Left ("Unable to parse DeploymentsPatchCreatePolicy from: " <> x)

instance ToHttpApiData DeploymentsPatchCreatePolicy where
    toQueryParam = \case
        DPCPCreateOrAcquire -> "CREATE_OR_ACQUIRE"
        DPCPAcquire -> "ACQUIRE"

instance FromJSON DeploymentsPatchCreatePolicy where
    parseJSON = parseJSONText "DeploymentsPatchCreatePolicy"

instance ToJSON DeploymentsPatchCreatePolicy where
    toJSON = toJSONText

-- | [Output Only] The status of the operation, which can be one of the
-- following: \`PENDING\`, \`RUNNING\`, or \`DONE\`.
data OperationStatus
    = Pending
      -- ^ @PENDING@
    | Running
      -- ^ @RUNNING@
    | Done
      -- ^ @DONE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationStatus

instance FromHttpApiData OperationStatus where
    parseQueryParam = \case
        "PENDING" -> Right Pending
        "RUNNING" -> Right Running
        "DONE" -> Right Done
        x -> Left ("Unable to parse OperationStatus from: " <> x)

instance ToHttpApiData OperationStatus where
    toQueryParam = \case
        Pending -> "PENDING"
        Running -> "RUNNING"
        Done -> "DONE"

instance FromJSON OperationStatus where
    parseJSON = parseJSONText "OperationStatus"

instance ToJSON OperationStatus where
    toJSON = toJSONText

-- | Output only. The state of the resource.
data ResourceUpdateState
    = RUSPending
      -- ^ @PENDING@
      -- There are changes pending for this resource.
    | RUSInProgress
      -- ^ @IN_PROGRESS@
      -- The service is executing changes on the resource.
    | RUSInPreview
      -- ^ @IN_PREVIEW@
      -- The service is previewing changes on the resource.
    | RUSFailed
      -- ^ @FAILED@
      -- The service has failed to change the resource.
    | RUSAborted
      -- ^ @ABORTED@
      -- The service has aborted trying to change the resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourceUpdateState

instance FromHttpApiData ResourceUpdateState where
    parseQueryParam = \case
        "PENDING" -> Right RUSPending
        "IN_PROGRESS" -> Right RUSInProgress
        "IN_PREVIEW" -> Right RUSInPreview
        "FAILED" -> Right RUSFailed
        "ABORTED" -> Right RUSAborted
        x -> Left ("Unable to parse ResourceUpdateState from: " <> x)

instance ToHttpApiData ResourceUpdateState where
    toQueryParam = \case
        RUSPending -> "PENDING"
        RUSInProgress -> "IN_PROGRESS"
        RUSInPreview -> "IN_PREVIEW"
        RUSFailed -> "FAILED"
        RUSAborted -> "ABORTED"

instance FromJSON ResourceUpdateState where
    parseJSON = parseJSONText "ResourceUpdateState"

instance ToJSON ResourceUpdateState where
    toJSON = toJSONText

-- | Output only. The intent of the resource: \`PREVIEW\`, \`UPDATE\`, or
-- \`CANCEL\`.
data ResourceUpdateIntent
    = RUICreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
      -- The resource is scheduled to be created, or if it already exists,
      -- acquired.
    | RUIDelete'
      -- ^ @DELETE@
      -- The resource is scheduled to be deleted.
    | RUIAcquire
      -- ^ @ACQUIRE@
      -- The resource is scheduled to be acquired.
    | RUIUpdate
      -- ^ @UPDATE@
      -- The resource is scheduled to be updated via the UPDATE method.
    | RUIAbandon
      -- ^ @ABANDON@
      -- The resource is scheduled to be abandoned.
    | RUICreate
      -- ^ @CREATE@
      -- The resource is scheduled to be created.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourceUpdateIntent

instance FromHttpApiData ResourceUpdateIntent where
    parseQueryParam = \case
        "CREATE_OR_ACQUIRE" -> Right RUICreateOrAcquire
        "DELETE" -> Right RUIDelete'
        "ACQUIRE" -> Right RUIAcquire
        "UPDATE" -> Right RUIUpdate
        "ABANDON" -> Right RUIAbandon
        "CREATE" -> Right RUICreate
        x -> Left ("Unable to parse ResourceUpdateIntent from: " <> x)

instance ToHttpApiData ResourceUpdateIntent where
    toQueryParam = \case
        RUICreateOrAcquire -> "CREATE_OR_ACQUIRE"
        RUIDelete' -> "DELETE"
        RUIAcquire -> "ACQUIRE"
        RUIUpdate -> "UPDATE"
        RUIAbandon -> "ABANDON"
        RUICreate -> "CREATE"

instance FromJSON ResourceUpdateIntent where
    parseJSON = parseJSONText "ResourceUpdateIntent"

instance ToJSON ResourceUpdateIntent where
    toJSON = toJSONText

-- | The log type that this config enables.
data AuditLogConfigLogType
    = LogTypeUnspecified
      -- ^ @LOG_TYPE_UNSPECIFIED@
      -- Default case. Should never be this.
    | AdminRead
      -- ^ @ADMIN_READ@
      -- Admin reads. Example: CloudIAM getIamPolicy
    | DataWrite
      -- ^ @DATA_WRITE@
      -- Data writes. Example: CloudSQL Users create
    | DataRead
      -- ^ @DATA_READ@
      -- Data reads. Example: CloudSQL Users list
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AuditLogConfigLogType

instance FromHttpApiData AuditLogConfigLogType where
    parseQueryParam = \case
        "LOG_TYPE_UNSPECIFIED" -> Right LogTypeUnspecified
        "ADMIN_READ" -> Right AdminRead
        "DATA_WRITE" -> Right DataWrite
        "DATA_READ" -> Right DataRead
        x -> Left ("Unable to parse AuditLogConfigLogType from: " <> x)

instance ToHttpApiData AuditLogConfigLogType where
    toQueryParam = \case
        LogTypeUnspecified -> "LOG_TYPE_UNSPECIFIED"
        AdminRead -> "ADMIN_READ"
        DataWrite -> "DATA_WRITE"
        DataRead -> "DATA_READ"

instance FromJSON AuditLogConfigLogType where
    parseJSON = parseJSONText "AuditLogConfigLogType"

instance ToJSON AuditLogConfigLogType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | [Output Only] A warning code, if applicable. For example, Compute Engine
-- returns NO_RESULTS_ON_PAGE if there are no results in the response.
data ResourceWarningsItemCode
    = RWICDeprecatedResourceUsed
      -- ^ @DEPRECATED_RESOURCE_USED@
      -- A link to a deprecated resource was created.
    | RWICNoResultsOnPage
      -- ^ @NO_RESULTS_ON_PAGE@
      -- No results are present on a particular list page.
    | RWICUnreachable
      -- ^ @UNREACHABLE@
      -- A given scope cannot be reached.
    | RWICNextHopAddressNotAssigned
      -- ^ @NEXT_HOP_ADDRESS_NOT_ASSIGNED@
      -- The route\'s nextHopIp address is not assigned to an instance on the
      -- network.
    | RWICNextHopInstanceNotFound
      -- ^ @NEXT_HOP_INSTANCE_NOT_FOUND@
      -- The route\'s nextHopInstance URL refers to an instance that does not
      -- exist.
    | RWICNextHopInstanceNotOnNetwork
      -- ^ @NEXT_HOP_INSTANCE_NOT_ON_NETWORK@
      -- The route\'s nextHopInstance URL refers to an instance that is not on
      -- the same network as the route.
    | RWICNextHopCannotIPForward
      -- ^ @NEXT_HOP_CANNOT_IP_FORWARD@
      -- The route\'s next hop instance cannot ip forward.
    | RWICNextHopNotRunning
      -- ^ @NEXT_HOP_NOT_RUNNING@
      -- The route\'s next hop instance does not have a status of RUNNING.
    | RWICInjectedKernelsDeprecated
      -- ^ @INJECTED_KERNELS_DEPRECATED@
      -- The operation involved use of an injected kernel, which is deprecated.
    | RWICRequiredTosAgreement
      -- ^ @REQUIRED_TOS_AGREEMENT@
      -- The user attempted to use a resource that requires a TOS they have not
      -- accepted.
    | RWICDiskSizeLargerThanImageSize
      -- ^ @DISK_SIZE_LARGER_THAN_IMAGE_SIZE@
      -- The user created a boot disk that is larger than image size.
    | RWICResourceNotDeleted
      -- ^ @RESOURCE_NOT_DELETED@
      -- One or more of the resources set to auto-delete could not be deleted
      -- because they were in use.
    | RWICSingleInstancePropertyTemplate
      -- ^ @SINGLE_INSTANCE_PROPERTY_TEMPLATE@
      -- Instance template used in instance group manager is valid as such, but
      -- its application does not make a lot of sense, because it allows only
      -- single instance in instance group.
    | RWICNotCriticalError
      -- ^ @NOT_CRITICAL_ERROR@
      -- Error which is not critical. We decided to continue the process despite
      -- the mentioned error.
    | RWICCleanupFailed
      -- ^ @CLEANUP_FAILED@
      -- Warning about failed cleanup of transient changes made by a failed
      -- operation.
    | RWICFieldValueOverriden
      -- ^ @FIELD_VALUE_OVERRIDEN@
      -- Warning that value of a field has been overridden. Deprecated unused
      -- field.
    | RWICResourceInUseByOtherResourceWarning
      -- ^ @RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING@
      -- Warning that a resource is in use.
    | RWICMissingTypeDependency
      -- ^ @MISSING_TYPE_DEPENDENCY@
      -- A resource depends on a missing type
    | RWICExternalAPIWarning
      -- ^ @EXTERNAL_API_WARNING@
      -- Warning that is present in an external api call
    | RWICSchemaValidationIgnored
      -- ^ @SCHEMA_VALIDATION_IGNORED@
      -- When a resource schema validation is ignored.
    | RWICUndeclaredProperties
      -- ^ @UNDECLARED_PROPERTIES@
      -- When undeclared properties in the schema are present
    | RWICExperimentalTypeUsed
      -- ^ @EXPERIMENTAL_TYPE_USED@
      -- When deploying and at least one of the resources has a type marked as
      -- experimental
    | RWICDeprecatedTypeUsed
      -- ^ @DEPRECATED_TYPE_USED@
      -- When deploying and at least one of the resources has a type marked as
      -- deprecated
    | RWICPartialSuccess
      -- ^ @PARTIAL_SUCCESS@
      -- Success is reported, but some results may be missing due to errors
    | RWICLargeDeploymentWarning
      -- ^ @LARGE_DEPLOYMENT_WARNING@
      -- When deploying a deployment with a exceedingly large number of resources
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourceWarningsItemCode

instance FromHttpApiData ResourceWarningsItemCode where
    parseQueryParam = \case
        "DEPRECATED_RESOURCE_USED" -> Right RWICDeprecatedResourceUsed
        "NO_RESULTS_ON_PAGE" -> Right RWICNoResultsOnPage
        "UNREACHABLE" -> Right RWICUnreachable
        "NEXT_HOP_ADDRESS_NOT_ASSIGNED" -> Right RWICNextHopAddressNotAssigned
        "NEXT_HOP_INSTANCE_NOT_FOUND" -> Right RWICNextHopInstanceNotFound
        "NEXT_HOP_INSTANCE_NOT_ON_NETWORK" -> Right RWICNextHopInstanceNotOnNetwork
        "NEXT_HOP_CANNOT_IP_FORWARD" -> Right RWICNextHopCannotIPForward
        "NEXT_HOP_NOT_RUNNING" -> Right RWICNextHopNotRunning
        "INJECTED_KERNELS_DEPRECATED" -> Right RWICInjectedKernelsDeprecated
        "REQUIRED_TOS_AGREEMENT" -> Right RWICRequiredTosAgreement
        "DISK_SIZE_LARGER_THAN_IMAGE_SIZE" -> Right RWICDiskSizeLargerThanImageSize
        "RESOURCE_NOT_DELETED" -> Right RWICResourceNotDeleted
        "SINGLE_INSTANCE_PROPERTY_TEMPLATE" -> Right RWICSingleInstancePropertyTemplate
        "NOT_CRITICAL_ERROR" -> Right RWICNotCriticalError
        "CLEANUP_FAILED" -> Right RWICCleanupFailed
        "FIELD_VALUE_OVERRIDEN" -> Right RWICFieldValueOverriden
        "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING" -> Right RWICResourceInUseByOtherResourceWarning
        "MISSING_TYPE_DEPENDENCY" -> Right RWICMissingTypeDependency
        "EXTERNAL_API_WARNING" -> Right RWICExternalAPIWarning
        "SCHEMA_VALIDATION_IGNORED" -> Right RWICSchemaValidationIgnored
        "UNDECLARED_PROPERTIES" -> Right RWICUndeclaredProperties
        "EXPERIMENTAL_TYPE_USED" -> Right RWICExperimentalTypeUsed
        "DEPRECATED_TYPE_USED" -> Right RWICDeprecatedTypeUsed
        "PARTIAL_SUCCESS" -> Right RWICPartialSuccess
        "LARGE_DEPLOYMENT_WARNING" -> Right RWICLargeDeploymentWarning
        x -> Left ("Unable to parse ResourceWarningsItemCode from: " <> x)

instance ToHttpApiData ResourceWarningsItemCode where
    toQueryParam = \case
        RWICDeprecatedResourceUsed -> "DEPRECATED_RESOURCE_USED"
        RWICNoResultsOnPage -> "NO_RESULTS_ON_PAGE"
        RWICUnreachable -> "UNREACHABLE"
        RWICNextHopAddressNotAssigned -> "NEXT_HOP_ADDRESS_NOT_ASSIGNED"
        RWICNextHopInstanceNotFound -> "NEXT_HOP_INSTANCE_NOT_FOUND"
        RWICNextHopInstanceNotOnNetwork -> "NEXT_HOP_INSTANCE_NOT_ON_NETWORK"
        RWICNextHopCannotIPForward -> "NEXT_HOP_CANNOT_IP_FORWARD"
        RWICNextHopNotRunning -> "NEXT_HOP_NOT_RUNNING"
        RWICInjectedKernelsDeprecated -> "INJECTED_KERNELS_DEPRECATED"
        RWICRequiredTosAgreement -> "REQUIRED_TOS_AGREEMENT"
        RWICDiskSizeLargerThanImageSize -> "DISK_SIZE_LARGER_THAN_IMAGE_SIZE"
        RWICResourceNotDeleted -> "RESOURCE_NOT_DELETED"
        RWICSingleInstancePropertyTemplate -> "SINGLE_INSTANCE_PROPERTY_TEMPLATE"
        RWICNotCriticalError -> "NOT_CRITICAL_ERROR"
        RWICCleanupFailed -> "CLEANUP_FAILED"
        RWICFieldValueOverriden -> "FIELD_VALUE_OVERRIDEN"
        RWICResourceInUseByOtherResourceWarning -> "RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING"
        RWICMissingTypeDependency -> "MISSING_TYPE_DEPENDENCY"
        RWICExternalAPIWarning -> "EXTERNAL_API_WARNING"
        RWICSchemaValidationIgnored -> "SCHEMA_VALIDATION_IGNORED"
        RWICUndeclaredProperties -> "UNDECLARED_PROPERTIES"
        RWICExperimentalTypeUsed -> "EXPERIMENTAL_TYPE_USED"
        RWICDeprecatedTypeUsed -> "DEPRECATED_TYPE_USED"
        RWICPartialSuccess -> "PARTIAL_SUCCESS"
        RWICLargeDeploymentWarning -> "LARGE_DEPLOYMENT_WARNING"

instance FromJSON ResourceWarningsItemCode where
    parseJSON = parseJSONText "ResourceWarningsItemCode"

instance ToJSON ResourceWarningsItemCode where
    toJSON = toJSONText

-- | Sets the policy to use for creating new resources.
data DeploymentsInsertCreatePolicy
    = DICPCreateOrAcquire
      -- ^ @CREATE_OR_ACQUIRE@
    | DICPAcquire
      -- ^ @ACQUIRE@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeploymentsInsertCreatePolicy

instance FromHttpApiData DeploymentsInsertCreatePolicy where
    parseQueryParam = \case
        "CREATE_OR_ACQUIRE" -> Right DICPCreateOrAcquire
        "ACQUIRE" -> Right DICPAcquire
        x -> Left ("Unable to parse DeploymentsInsertCreatePolicy from: " <> x)

instance ToHttpApiData DeploymentsInsertCreatePolicy where
    toQueryParam = \case
        DICPCreateOrAcquire -> "CREATE_OR_ACQUIRE"
        DICPAcquire -> "ACQUIRE"

instance FromJSON DeploymentsInsertCreatePolicy where
    parseJSON = parseJSONText "DeploymentsInsertCreatePolicy"

instance ToJSON DeploymentsInsertCreatePolicy where
    toJSON = toJSONText
