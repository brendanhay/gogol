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

import           Network.Google.Prelude

-- | The error code.
data CheckErrorCode
    = ErrorCodeUnspecified
      -- ^ @ERROR_CODE_UNSPECIFIED@
      -- This is never used in \`CheckResponse\`.
    | NotFound
      -- ^ @NOT_FOUND@
      -- The consumer\'s project id was not found. Same as
      -- google.rpc.Code.NOT_FOUND.
    | PermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The consumer doesn\'t have access to the specified resource. Same as
      -- google.rpc.Code.PERMISSION_DENIED.
    | ResourceExhausted
      -- ^ @RESOURCE_EXHAUSTED@
      -- Quota check failed. Same as google.rpc.Code.RESOURCE_EXHAUSTED.
    | ServiceNotActivated
      -- ^ @SERVICE_NOT_ACTIVATED@
      -- The consumer hasn\'t activated the service.
    | BillingDisabled
      -- ^ @BILLING_DISABLED@
      -- The consumer cannot access the service because billing is disabled.
    | ProjectDeleted
      -- ^ @PROJECT_DELETED@
      -- The consumer\'s project has been marked as deleted (soft deletion).
    | ProjectInvalid
      -- ^ @PROJECT_INVALID@
      -- The consumer\'s project number or id does not represent a valid project.
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
    | NamespaceLookupUnavailable
      -- ^ @NAMESPACE_LOOKUP_UNAVAILABLE@
      -- The backend server for looking up project id\/number is unavailable.
    | ServiceStatusUnavailable
      -- ^ @SERVICE_STATUS_UNAVAILABLE@
      -- The backend server for checking service status is unavailable.
    | BillingStatusUnavailable
      -- ^ @BILLING_STATUS_UNAVAILABLE@
      -- The backend server for checking billing status is unavailable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CheckErrorCode

instance FromHttpApiData CheckErrorCode where
    parseQueryParam = \case
        "ERROR_CODE_UNSPECIFIED" -> Right ErrorCodeUnspecified
        "NOT_FOUND" -> Right NotFound
        "PERMISSION_DENIED" -> Right PermissionDenied
        "RESOURCE_EXHAUSTED" -> Right ResourceExhausted
        "SERVICE_NOT_ACTIVATED" -> Right ServiceNotActivated
        "BILLING_DISABLED" -> Right BillingDisabled
        "PROJECT_DELETED" -> Right ProjectDeleted
        "PROJECT_INVALID" -> Right ProjectInvalid
        "IP_ADDRESS_BLOCKED" -> Right IPAddressBlocked
        "REFERER_BLOCKED" -> Right RefererBlocked
        "CLIENT_APP_BLOCKED" -> Right ClientAppBlocked
        "API_TARGET_BLOCKED" -> Right APITargetBlocked
        "API_KEY_INVALID" -> Right APIKeyInvalid
        "API_KEY_EXPIRED" -> Right APIKeyExpired
        "API_KEY_NOT_FOUND" -> Right APIKeyNotFound
        "NAMESPACE_LOOKUP_UNAVAILABLE" -> Right NamespaceLookupUnavailable
        "SERVICE_STATUS_UNAVAILABLE" -> Right ServiceStatusUnavailable
        "BILLING_STATUS_UNAVAILABLE" -> Right BillingStatusUnavailable
        x -> Left ("Unable to parse CheckErrorCode from: " <> x)

instance ToHttpApiData CheckErrorCode where
    toQueryParam = \case
        ErrorCodeUnspecified -> "ERROR_CODE_UNSPECIFIED"
        NotFound -> "NOT_FOUND"
        PermissionDenied -> "PERMISSION_DENIED"
        ResourceExhausted -> "RESOURCE_EXHAUSTED"
        ServiceNotActivated -> "SERVICE_NOT_ACTIVATED"
        BillingDisabled -> "BILLING_DISABLED"
        ProjectDeleted -> "PROJECT_DELETED"
        ProjectInvalid -> "PROJECT_INVALID"
        IPAddressBlocked -> "IP_ADDRESS_BLOCKED"
        RefererBlocked -> "REFERER_BLOCKED"
        ClientAppBlocked -> "CLIENT_APP_BLOCKED"
        APITargetBlocked -> "API_TARGET_BLOCKED"
        APIKeyInvalid -> "API_KEY_INVALID"
        APIKeyExpired -> "API_KEY_EXPIRED"
        APIKeyNotFound -> "API_KEY_NOT_FOUND"
        NamespaceLookupUnavailable -> "NAMESPACE_LOOKUP_UNAVAILABLE"
        ServiceStatusUnavailable -> "SERVICE_STATUS_UNAVAILABLE"
        BillingStatusUnavailable -> "BILLING_STATUS_UNAVAILABLE"

instance FromJSON CheckErrorCode where
    parseJSON = parseJSONText "CheckErrorCode"

instance ToJSON CheckErrorCode where
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OperationImportance

instance FromHttpApiData OperationImportance where
    parseQueryParam = \case
        "LOW" -> Right Low
        "HIGH" -> Right High
        x -> Left ("Unable to parse OperationImportance from: " <> x)

instance ToHttpApiData OperationImportance where
    toQueryParam = \case
        Low -> "LOW"
        High -> "HIGH"

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

-- | The severity of the log entry. The default value is
-- \`LogSeverity.DEFAULT\`.
data LogEntrySeverity
    = Default
      -- ^ @DEFAULT@
      -- (0) The log entry has no assigned severity level.
    | Debug
      -- ^ @DEBUG@
      -- (100) Debug or trace information.
    | Info
      -- ^ @INFO@
      -- (200) Routine information, such as ongoing status or performance.
    | Notice
      -- ^ @NOTICE@
      -- (300) Normal but significant events, such as start up, shut down, or a
      -- configuration change.
    | Warning
      -- ^ @WARNING@
      -- (400) Warning events might cause problems.
    | Error'
      -- ^ @ERROR@
      -- (500) Error events are likely to cause problems.
    | Critical
      -- ^ @CRITICAL@
      -- (600) Critical events cause more severe problems or outages.
    | Alert
      -- ^ @ALERT@
      -- (700) A person must take an action immediately.
    | Emergency
      -- ^ @EMERGENCY@
      -- (800) One or more systems are unusable.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LogEntrySeverity

instance FromHttpApiData LogEntrySeverity where
    parseQueryParam = \case
        "DEFAULT" -> Right Default
        "DEBUG" -> Right Debug
        "INFO" -> Right Info
        "NOTICE" -> Right Notice
        "WARNING" -> Right Warning
        "ERROR" -> Right Error'
        "CRITICAL" -> Right Critical
        "ALERT" -> Right Alert
        "EMERGENCY" -> Right Emergency
        x -> Left ("Unable to parse LogEntrySeverity from: " <> x)

instance ToHttpApiData LogEntrySeverity where
    toQueryParam = \case
        Default -> "DEFAULT"
        Debug -> "DEBUG"
        Info -> "INFO"
        Notice -> "NOTICE"
        Warning -> "WARNING"
        Error' -> "ERROR"
        Critical -> "CRITICAL"
        Alert -> "ALERT"
        Emergency -> "EMERGENCY"

instance FromJSON LogEntrySeverity where
    parseJSON = parseJSONText "LogEntrySeverity"

instance ToJSON LogEntrySeverity where
    toJSON = toJSONText
