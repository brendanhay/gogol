{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceControl.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceControl.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Quota mode for this operation.
data QuotaPropertiesQuotaMode
    = Acquire
      -- ^ @ACQUIRE@
      -- Decreases available quota by the cost specified for the operation. If
      -- cost is higher than available quota, operation fails and returns error.
    | AcquireBestEffort
      -- ^ @ACQUIRE_BEST_EFFORT@
      -- Decreases available quota by the cost specified for the operation. If
      -- cost is higher than available quota, operation does not fail and
      -- available quota goes down to zero but it returns error.
    | Check
      -- ^ @CHECK@
      -- Does not change any available quota. Only checks if there is enough
      -- quota. No lock is placed on the checked tokens neither.
    | Release
      -- ^ @RELEASE@
      -- Increases available quota by the operation cost specified for the
      -- operation.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QuotaPropertiesQuotaMode

instance FromHttpApiData QuotaPropertiesQuotaMode where
    parseQueryParam = \case
        "ACQUIRE" -> Right Acquire
        "ACQUIRE_BEST_EFFORT" -> Right AcquireBestEffort
        "CHECK" -> Right Check
        "RELEASE" -> Right Release
        x -> Left ("Unable to parse QuotaPropertiesQuotaMode from: " <> x)

instance ToHttpApiData QuotaPropertiesQuotaMode where
    toQueryParam = \case
        Acquire -> "ACQUIRE"
        AcquireBestEffort -> "ACQUIRE_BEST_EFFORT"
        Check -> "CHECK"
        Release -> "RELEASE"

instance FromJSON QuotaPropertiesQuotaMode where
    parseJSON = parseJSONText "QuotaPropertiesQuotaMode"

instance ToJSON QuotaPropertiesQuotaMode where
    toJSON = toJSONText

-- | The error code.
data CheckErrorCode
    = ErrorCodeUnspecified
      -- ^ @ERROR_CODE_UNSPECIFIED@
      -- This is never used in \`CheckResponse\`.
    | NotFound
      -- ^ @NOT_FOUND@
      -- The consumer\'s project id, network container, or resource container was
      -- not found. Same as google.rpc.Code.NOT_FOUND.
    | PermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The consumer doesn\'t have access to the specified resource. Same as
      -- google.rpc.Code.PERMISSION_DENIED.
    | ResourceExhausted
      -- ^ @RESOURCE_EXHAUSTED@
      -- Quota check failed. Same as google.rpc.Code.RESOURCE_EXHAUSTED.
    | BudgetExceeded
      -- ^ @BUDGET_EXCEEDED@
      -- Budget check failed.
    | DenialOfServiceDetected
      -- ^ @DENIAL_OF_SERVICE_DETECTED@
      -- The consumer\'s request has been flagged as a DoS attack.
    | LoadShedding
      -- ^ @LOAD_SHEDDING@
      -- The consumer\'s request should be rejected in order to protect the
      -- service from being overloaded.
    | AbUserDetected
      -- ^ @ABUSER_DETECTED@
      -- The consumer has been flagged as an abuser.
    | ServiceNotActivated
      -- ^ @SERVICE_NOT_ACTIVATED@
      -- The consumer hasn\'t activated the service.
    | VisibilityDenied
      -- ^ @VISIBILITY_DENIED@
      -- The consumer cannot access the service due to visibility configuration.
    | BillingDisabled
      -- ^ @BILLING_DISABLED@
      -- The consumer cannot access the service because billing is disabled.
    | ProjectDeleted
      -- ^ @PROJECT_DELETED@
      -- The consumer\'s project has been marked as deleted (soft deletion).
    | ProjectInvalid
      -- ^ @PROJECT_INVALID@
      -- The consumer\'s project number or id does not represent a valid project.
    | ConsumerInvalid
      -- ^ @CONSUMER_INVALID@
      -- The input consumer info does not represent a valid consumer folder or
      -- organization.
    | IPAddressBlocked
      -- ^ @IP_ADDRESS_BLOCKED@
      -- The IP address of the consumer is invalid for the specific consumer
      -- project.
    | RefererBlocked
      -- ^ @REFERER_BLOCKED@
      -- The referer address of the consumer request is invalid for the specific
      -- consumer project.
    | ClientAppBlocked
      -- ^ @CLIENT_APP_BLOCKED@
      -- The client application of the consumer request is invalid for the
      -- specific consumer project.
    | APITargetBlocked
      -- ^ @API_TARGET_BLOCKED@
      -- The API targeted by this request is invalid for the specified consumer
      -- project.
    | APIKeyInvalid
      -- ^ @API_KEY_INVALID@
      -- The consumer\'s API key is invalid.
    | APIKeyExpired
      -- ^ @API_KEY_EXPIRED@
      -- The consumer\'s API Key has expired.
    | APIKeyNotFound
      -- ^ @API_KEY_NOT_FOUND@
      -- The consumer\'s API Key was not found in config record.
    | SpatulaHeaderInvalid
      -- ^ @SPATULA_HEADER_INVALID@
      -- The consumer\'s spatula header is invalid.
    | LoasRoleInvalid
      -- ^ @LOAS_ROLE_INVALID@
      -- The consumer\'s LOAS role is invalid.
    | NoLoasProject
      -- ^ @NO_LOAS_PROJECT@
      -- The consumer\'s LOAS role has no associated project.
    | LoasProjectDisabled
      -- ^ @LOAS_PROJECT_DISABLED@
      -- The consumer\'s LOAS project is not \`ACTIVE\` in LoquatV2.
    | SecurityPolicyViolated
      -- ^ @SECURITY_POLICY_VIOLATED@
      -- Request is not allowed as per security policies defined in Org Policy.
    | InvalidCredential
      -- ^ @INVALID_CREDENTIAL@
      -- The credential in the request can not be verified.
    | LocationPolicyViolated
      -- ^ @LOCATION_POLICY_VIOLATED@
      -- Request is not allowed as per location policies defined in Org Policy.
    | NamespaceLookupUnavailable
      -- ^ @NAMESPACE_LOOKUP_UNAVAILABLE@
      -- The backend server for looking up project id\/number is unavailable.
    | ServiceStatusUnavailable
      -- ^ @SERVICE_STATUS_UNAVAILABLE@
      -- The backend server for checking service status is unavailable.
    | BillingStatusUnavailable
      -- ^ @BILLING_STATUS_UNAVAILABLE@
      -- The backend server for checking billing status is unavailable.
    | QuotaCheckUnavailable
      -- ^ @QUOTA_CHECK_UNAVAILABLE@
      -- The backend server for checking quota limits is unavailable.
    | LoasProjectLookupUnavailable
      -- ^ @LOAS_PROJECT_LOOKUP_UNAVAILABLE@
      -- The Spanner for looking up LOAS project is unavailable.
    | CloudResourceManagerBackendUnavailable
      -- ^ @CLOUD_RESOURCE_MANAGER_BACKEND_UNAVAILABLE@
      -- Cloud Resource Manager backend server is unavailable.
    | SecurityPolicyBackendUnavailable
      -- ^ @SECURITY_POLICY_BACKEND_UNAVAILABLE@
      -- NOTE: for customers in the scope of Beta\/GA of
      -- https:\/\/cloud.google.com\/vpc-service-controls, this error is no
      -- longer returned. If the security backend is unavailable, rpc UNAVAILABLE
      -- status will be returned instead. It should be ignored and should not be
      -- used to reject client requests.
    | LocationPolicyBackendUnavailable
      -- ^ @LOCATION_POLICY_BACKEND_UNAVAILABLE@
      -- Backend server for evaluating location policy is unavailable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CheckErrorCode

instance FromHttpApiData CheckErrorCode where
    parseQueryParam = \case
        "ERROR_CODE_UNSPECIFIED" -> Right ErrorCodeUnspecified
        "NOT_FOUND" -> Right NotFound
        "PERMISSION_DENIED" -> Right PermissionDenied
        "RESOURCE_EXHAUSTED" -> Right ResourceExhausted
        "BUDGET_EXCEEDED" -> Right BudgetExceeded
        "DENIAL_OF_SERVICE_DETECTED" -> Right DenialOfServiceDetected
        "LOAD_SHEDDING" -> Right LoadShedding
        "ABUSER_DETECTED" -> Right AbUserDetected
        "SERVICE_NOT_ACTIVATED" -> Right ServiceNotActivated
        "VISIBILITY_DENIED" -> Right VisibilityDenied
        "BILLING_DISABLED" -> Right BillingDisabled
        "PROJECT_DELETED" -> Right ProjectDeleted
        "PROJECT_INVALID" -> Right ProjectInvalid
        "CONSUMER_INVALID" -> Right ConsumerInvalid
        "IP_ADDRESS_BLOCKED" -> Right IPAddressBlocked
        "REFERER_BLOCKED" -> Right RefererBlocked
        "CLIENT_APP_BLOCKED" -> Right ClientAppBlocked
        "API_TARGET_BLOCKED" -> Right APITargetBlocked
        "API_KEY_INVALID" -> Right APIKeyInvalid
        "API_KEY_EXPIRED" -> Right APIKeyExpired
        "API_KEY_NOT_FOUND" -> Right APIKeyNotFound
        "SPATULA_HEADER_INVALID" -> Right SpatulaHeaderInvalid
        "LOAS_ROLE_INVALID" -> Right LoasRoleInvalid
        "NO_LOAS_PROJECT" -> Right NoLoasProject
        "LOAS_PROJECT_DISABLED" -> Right LoasProjectDisabled
        "SECURITY_POLICY_VIOLATED" -> Right SecurityPolicyViolated
        "INVALID_CREDENTIAL" -> Right InvalidCredential
        "LOCATION_POLICY_VIOLATED" -> Right LocationPolicyViolated
        "NAMESPACE_LOOKUP_UNAVAILABLE" -> Right NamespaceLookupUnavailable
        "SERVICE_STATUS_UNAVAILABLE" -> Right ServiceStatusUnavailable
        "BILLING_STATUS_UNAVAILABLE" -> Right BillingStatusUnavailable
        "QUOTA_CHECK_UNAVAILABLE" -> Right QuotaCheckUnavailable
        "LOAS_PROJECT_LOOKUP_UNAVAILABLE" -> Right LoasProjectLookupUnavailable
        "CLOUD_RESOURCE_MANAGER_BACKEND_UNAVAILABLE" -> Right CloudResourceManagerBackendUnavailable
        "SECURITY_POLICY_BACKEND_UNAVAILABLE" -> Right SecurityPolicyBackendUnavailable
        "LOCATION_POLICY_BACKEND_UNAVAILABLE" -> Right LocationPolicyBackendUnavailable
        x -> Left ("Unable to parse CheckErrorCode from: " <> x)

instance ToHttpApiData CheckErrorCode where
    toQueryParam = \case
        ErrorCodeUnspecified -> "ERROR_CODE_UNSPECIFIED"
        NotFound -> "NOT_FOUND"
        PermissionDenied -> "PERMISSION_DENIED"
        ResourceExhausted -> "RESOURCE_EXHAUSTED"
        BudgetExceeded -> "BUDGET_EXCEEDED"
        DenialOfServiceDetected -> "DENIAL_OF_SERVICE_DETECTED"
        LoadShedding -> "LOAD_SHEDDING"
        AbUserDetected -> "ABUSER_DETECTED"
        ServiceNotActivated -> "SERVICE_NOT_ACTIVATED"
        VisibilityDenied -> "VISIBILITY_DENIED"
        BillingDisabled -> "BILLING_DISABLED"
        ProjectDeleted -> "PROJECT_DELETED"
        ProjectInvalid -> "PROJECT_INVALID"
        ConsumerInvalid -> "CONSUMER_INVALID"
        IPAddressBlocked -> "IP_ADDRESS_BLOCKED"
        RefererBlocked -> "REFERER_BLOCKED"
        ClientAppBlocked -> "CLIENT_APP_BLOCKED"
        APITargetBlocked -> "API_TARGET_BLOCKED"
        APIKeyInvalid -> "API_KEY_INVALID"
        APIKeyExpired -> "API_KEY_EXPIRED"
        APIKeyNotFound -> "API_KEY_NOT_FOUND"
        SpatulaHeaderInvalid -> "SPATULA_HEADER_INVALID"
        LoasRoleInvalid -> "LOAS_ROLE_INVALID"
        NoLoasProject -> "NO_LOAS_PROJECT"
        LoasProjectDisabled -> "LOAS_PROJECT_DISABLED"
        SecurityPolicyViolated -> "SECURITY_POLICY_VIOLATED"
        InvalidCredential -> "INVALID_CREDENTIAL"
        LocationPolicyViolated -> "LOCATION_POLICY_VIOLATED"
        NamespaceLookupUnavailable -> "NAMESPACE_LOOKUP_UNAVAILABLE"
        ServiceStatusUnavailable -> "SERVICE_STATUS_UNAVAILABLE"
        BillingStatusUnavailable -> "BILLING_STATUS_UNAVAILABLE"
        QuotaCheckUnavailable -> "QUOTA_CHECK_UNAVAILABLE"
        LoasProjectLookupUnavailable -> "LOAS_PROJECT_LOOKUP_UNAVAILABLE"
        CloudResourceManagerBackendUnavailable -> "CLOUD_RESOURCE_MANAGER_BACKEND_UNAVAILABLE"
        SecurityPolicyBackendUnavailable -> "SECURITY_POLICY_BACKEND_UNAVAILABLE"
        LocationPolicyBackendUnavailable -> "LOCATION_POLICY_BACKEND_UNAVAILABLE"

instance FromJSON CheckErrorCode where
    parseJSON = parseJSONText "CheckErrorCode"

instance ToJSON CheckErrorCode where
    toJSON = toJSONText

-- | Quota mode for this operation.
data QuotaOperationQuotaMode
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- Guard against implicit default. Must not be used.
    | Normal
      -- ^ @NORMAL@
      -- For AllocateQuota request, allocates quota for the amount specified in
      -- the service configuration or specified using the quota metrics. If the
      -- amount is higher than the available quota, allocation error will be
      -- returned and no quota will be allocated. If multiple quotas are part of
      -- the request, and one fails, none of the quotas are allocated or
      -- released.
    | BestEffort
      -- ^ @BEST_EFFORT@
      -- The operation allocates quota for the amount specified in the service
      -- configuration or specified using the quota metrics. If the amount is
      -- higher than the available quota, request does not fail but all available
      -- quota will be allocated. For rate quota, BEST_EFFORT will continue to
      -- deduct from other groups even if one does not have enough quota. For
      -- allocation, it will find the minimum available amount across all groups
      -- and deduct that amount from all the affected groups.
    | CheckOnly
      -- ^ @CHECK_ONLY@
      -- For AllocateQuota request, only checks if there is enough quota
      -- available and does not change the available quota. No lock is placed on
      -- the available quota either.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QuotaOperationQuotaMode

instance FromHttpApiData QuotaOperationQuotaMode where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "NORMAL" -> Right Normal
        "BEST_EFFORT" -> Right BestEffort
        "CHECK_ONLY" -> Right CheckOnly
        x -> Left ("Unable to parse QuotaOperationQuotaMode from: " <> x)

instance ToHttpApiData QuotaOperationQuotaMode where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        Normal -> "NORMAL"
        BestEffort -> "BEST_EFFORT"
        CheckOnly -> "CHECK_ONLY"

instance FromJSON QuotaOperationQuotaMode where
    parseJSON = parseJSONText "QuotaOperationQuotaMode"

instance ToJSON QuotaOperationQuotaMode where
    toJSON = toJSONText

-- | DO NOT USE. This is an experimental field.
data OperationImportance
    = Low
      -- ^ @LOW@
      -- The API implementation may cache and aggregate the data. The data may be
      -- lost when rare and unexpected system failures occur.
    | High
      -- ^ @HIGH@
      -- The API implementation doesn\'t cache and aggregate the data. If the
      -- method returns successfully, it\'s guaranteed that the data has been
      -- persisted in durable storage.
    | Debug
      -- ^ @DEBUG@
      -- In addition to the behavior described in HIGH, DEBUG enables additional
      -- validation logic that is only useful during the onboarding process. This
      -- is only available to Google internal services and the service must be
      -- whitelisted by chemist-dev\@google.com in order to use this level.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationImportance

instance FromHttpApiData OperationImportance where
    parseQueryParam = \case
        "LOW" -> Right Low
        "HIGH" -> Right High
        "DEBUG" -> Right Debug
        x -> Left ("Unable to parse OperationImportance from: " <> x)

instance ToHttpApiData OperationImportance where
    toQueryParam = \case
        Low -> "LOW"
        High -> "HIGH"
        Debug -> "DEBUG"

instance FromJSON OperationImportance where
    parseJSON = parseJSONText "OperationImportance"

instance ToJSON OperationImportance where
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

-- | The type of the consumer which should have been defined in [Google
-- Resource Manager](https:\/\/cloud.google.com\/resource-manager\/).
data ConsumerInfoType
    = ConsumerTypeUnspecified
      -- ^ @CONSUMER_TYPE_UNSPECIFIED@
      -- This is never used.
    | Project
      -- ^ @PROJECT@
      -- The consumer is a Google Cloud Project.
    | Folder
      -- ^ @FOLDER@
      -- The consumer is a Google Cloud Folder.
    | Organization
      -- ^ @ORGANIZATION@
      -- The consumer is a Google Cloud Organization.
    | ServiceSpecific
      -- ^ @SERVICE_SPECIFIC@
      -- Service-specific resource container which is defined by the service
      -- producer to offer their users the ability to manage service control
      -- functionalities at a finer level of granularity than the PROJECT.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConsumerInfoType

instance FromHttpApiData ConsumerInfoType where
    parseQueryParam = \case
        "CONSUMER_TYPE_UNSPECIFIED" -> Right ConsumerTypeUnspecified
        "PROJECT" -> Right Project
        "FOLDER" -> Right Folder
        "ORGANIZATION" -> Right Organization
        "SERVICE_SPECIFIC" -> Right ServiceSpecific
        x -> Left ("Unable to parse ConsumerInfoType from: " <> x)

instance ToHttpApiData ConsumerInfoType where
    toQueryParam = \case
        ConsumerTypeUnspecified -> "CONSUMER_TYPE_UNSPECIFIED"
        Project -> "PROJECT"
        Folder -> "FOLDER"
        Organization -> "ORGANIZATION"
        ServiceSpecific -> "SERVICE_SPECIFIC"

instance FromJSON ConsumerInfoType where
    parseJSON = parseJSONText "ConsumerInfoType"

instance ToJSON ConsumerInfoType where
    toJSON = toJSONText

-- | The severity of the log entry. The default value is
-- \`LogSeverity.DEFAULT\`.
data LogEntrySeverity
    = LESDefault
      -- ^ @DEFAULT@
      -- (0) The log entry has no assigned severity level.
    | LESDebug
      -- ^ @DEBUG@
      -- (100) Debug or trace information.
    | LESInfo
      -- ^ @INFO@
      -- (200) Routine information, such as ongoing status or performance.
    | LESNotice
      -- ^ @NOTICE@
      -- (300) Normal but significant events, such as start up, shut down, or a
      -- configuration change.
    | LESWarning
      -- ^ @WARNING@
      -- (400) Warning events might cause problems.
    | LESError'
      -- ^ @ERROR@
      -- (500) Error events are likely to cause problems.
    | LESCritical
      -- ^ @CRITICAL@
      -- (600) Critical events cause more severe problems or outages.
    | LESAlert
      -- ^ @ALERT@
      -- (700) A person must take an action immediately.
    | LESEmergency
      -- ^ @EMERGENCY@
      -- (800) One or more systems are unusable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogEntrySeverity

instance FromHttpApiData LogEntrySeverity where
    parseQueryParam = \case
        "DEFAULT" -> Right LESDefault
        "DEBUG" -> Right LESDebug
        "INFO" -> Right LESInfo
        "NOTICE" -> Right LESNotice
        "WARNING" -> Right LESWarning
        "ERROR" -> Right LESError'
        "CRITICAL" -> Right LESCritical
        "ALERT" -> Right LESAlert
        "EMERGENCY" -> Right LESEmergency
        x -> Left ("Unable to parse LogEntrySeverity from: " <> x)

instance ToHttpApiData LogEntrySeverity where
    toQueryParam = \case
        LESDefault -> "DEFAULT"
        LESDebug -> "DEBUG"
        LESInfo -> "INFO"
        LESNotice -> "NOTICE"
        LESWarning -> "WARNING"
        LESError' -> "ERROR"
        LESCritical -> "CRITICAL"
        LESAlert -> "ALERT"
        LESEmergency -> "EMERGENCY"

instance FromJSON LogEntrySeverity where
    parseJSON = parseJSONText "LogEntrySeverity"

instance ToJSON LogEntrySeverity where
    toJSON = toJSONText

-- | Error code.
data QuotaErrorCode
    = QECUnspecified
      -- ^ @UNSPECIFIED@
      -- This is never used.
    | QECResourceExhausted
      -- ^ @RESOURCE_EXHAUSTED@
      -- Quota allocation failed. Same as google.rpc.Code.RESOURCE_EXHAUSTED.
    | QECOutOfRange
      -- ^ @OUT_OF_RANGE@
      -- Quota release failed. This error is ONLY returned on a NORMAL release.
      -- More formally: if a user requests a release of 10 tokens, but only 5
      -- tokens were previously allocated, in a BEST_EFFORT release, this will be
      -- considered a success, 5 tokens will be released, and the result will be
      -- \"Ok\". If this is done in NORMAL mode, no tokens will be released, and
      -- an OUT_OF_RANGE error will be returned. Same as
      -- google.rpc.Code.OUT_OF_RANGE.
    | QECBillingNotActive
      -- ^ @BILLING_NOT_ACTIVE@
      -- Consumer cannot access the service because the service requires active
      -- billing.
    | QECProjectDeleted
      -- ^ @PROJECT_DELETED@
      -- Consumer\'s project has been marked as deleted (soft deletion).
    | QECAPIKeyInvalid
      -- ^ @API_KEY_INVALID@
      -- Specified API key is invalid.
    | QECAPIKeyExpired
      -- ^ @API_KEY_EXPIRED@
      -- Specified API Key has expired.
    | QECSpatulaHeaderInvalid
      -- ^ @SPATULA_HEADER_INVALID@
      -- Consumer\'s spatula header is invalid.
    | QECLoasRoleInvalid
      -- ^ @LOAS_ROLE_INVALID@
      -- The consumer\'s LOAS role is invalid.
    | QECNoLoasProject
      -- ^ @NO_LOAS_PROJECT@
      -- The consumer\'s LOAS role has no associated project.
    | QECProjectStatusUnavailable
      -- ^ @PROJECT_STATUS_UNAVAILABLE@
      -- The backend server for looking up project id\/number is unavailable.
    | QECServiceStatusUnavailable
      -- ^ @SERVICE_STATUS_UNAVAILABLE@
      -- The backend server for checking service status is unavailable.
    | QECBillingStatusUnavailable
      -- ^ @BILLING_STATUS_UNAVAILABLE@
      -- The backend server for checking billing status is unavailable.
    | QECQuotaSystemUnavailable
      -- ^ @QUOTA_SYSTEM_UNAVAILABLE@
      -- The backend server for checking quota limits is unavailable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable QuotaErrorCode

instance FromHttpApiData QuotaErrorCode where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right QECUnspecified
        "RESOURCE_EXHAUSTED" -> Right QECResourceExhausted
        "OUT_OF_RANGE" -> Right QECOutOfRange
        "BILLING_NOT_ACTIVE" -> Right QECBillingNotActive
        "PROJECT_DELETED" -> Right QECProjectDeleted
        "API_KEY_INVALID" -> Right QECAPIKeyInvalid
        "API_KEY_EXPIRED" -> Right QECAPIKeyExpired
        "SPATULA_HEADER_INVALID" -> Right QECSpatulaHeaderInvalid
        "LOAS_ROLE_INVALID" -> Right QECLoasRoleInvalid
        "NO_LOAS_PROJECT" -> Right QECNoLoasProject
        "PROJECT_STATUS_UNAVAILABLE" -> Right QECProjectStatusUnavailable
        "SERVICE_STATUS_UNAVAILABLE" -> Right QECServiceStatusUnavailable
        "BILLING_STATUS_UNAVAILABLE" -> Right QECBillingStatusUnavailable
        "QUOTA_SYSTEM_UNAVAILABLE" -> Right QECQuotaSystemUnavailable
        x -> Left ("Unable to parse QuotaErrorCode from: " <> x)

instance ToHttpApiData QuotaErrorCode where
    toQueryParam = \case
        QECUnspecified -> "UNSPECIFIED"
        QECResourceExhausted -> "RESOURCE_EXHAUSTED"
        QECOutOfRange -> "OUT_OF_RANGE"
        QECBillingNotActive -> "BILLING_NOT_ACTIVE"
        QECProjectDeleted -> "PROJECT_DELETED"
        QECAPIKeyInvalid -> "API_KEY_INVALID"
        QECAPIKeyExpired -> "API_KEY_EXPIRED"
        QECSpatulaHeaderInvalid -> "SPATULA_HEADER_INVALID"
        QECLoasRoleInvalid -> "LOAS_ROLE_INVALID"
        QECNoLoasProject -> "NO_LOAS_PROJECT"
        QECProjectStatusUnavailable -> "PROJECT_STATUS_UNAVAILABLE"
        QECServiceStatusUnavailable -> "SERVICE_STATUS_UNAVAILABLE"
        QECBillingStatusUnavailable -> "BILLING_STATUS_UNAVAILABLE"
        QECQuotaSystemUnavailable -> "QUOTA_SYSTEM_UNAVAILABLE"

instance FromJSON QuotaErrorCode where
    parseJSON = parseJSONText "QuotaErrorCode"

instance ToJSON QuotaErrorCode where
    toJSON = toJSONText
