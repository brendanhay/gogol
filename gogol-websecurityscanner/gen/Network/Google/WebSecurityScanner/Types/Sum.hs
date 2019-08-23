{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.WebSecurityScanner.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.WebSecurityScanner.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Output only. Indicates the error reason code.
data ScanRunErrorTraceCode
    = CodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Default value is never used.
    | InternalError
      -- ^ @INTERNAL_ERROR@
      -- Indicates that the scan run failed due to an internal server error.
    | ScanConfigIssue
      -- ^ @SCAN_CONFIG_ISSUE@
      -- Indicates a scan configuration error, usually due to outdated ScanConfig
      -- settings, such as starting_urls or the DNS configuration.
    | AuthenticationConfigIssue
      -- ^ @AUTHENTICATION_CONFIG_ISSUE@
      -- Indicates an authentication error, usually due to outdated ScanConfig
      -- authentication settings.
    | TimedOutWhileScanning
      -- ^ @TIMED_OUT_WHILE_SCANNING@
      -- Indicates a scan operation timeout, usually caused by a very large site.
    | TooManyRedirects
      -- ^ @TOO_MANY_REDIRECTS@
      -- Indicates that a scan encountered excessive redirects, either to
      -- authentication or some other page outside of the scan scope.
    | TooManyHTTPErrors
      -- ^ @TOO_MANY_HTTP_ERRORS@
      -- Indicates that a scan encountered numerous errors from the web site
      -- pages. When available, most_common_http_error_code field indicates the
      -- the most common HTTP error code encountered during the scan.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScanRunErrorTraceCode

instance FromHttpApiData ScanRunErrorTraceCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right CodeUnspecified
        "INTERNAL_ERROR" -> Right InternalError
        "SCAN_CONFIG_ISSUE" -> Right ScanConfigIssue
        "AUTHENTICATION_CONFIG_ISSUE" -> Right AuthenticationConfigIssue
        "TIMED_OUT_WHILE_SCANNING" -> Right TimedOutWhileScanning
        "TOO_MANY_REDIRECTS" -> Right TooManyRedirects
        "TOO_MANY_HTTP_ERRORS" -> Right TooManyHTTPErrors
        x -> Left ("Unable to parse ScanRunErrorTraceCode from: " <> x)

instance ToHttpApiData ScanRunErrorTraceCode where
    toQueryParam = \case
        CodeUnspecified -> "CODE_UNSPECIFIED"
        InternalError -> "INTERNAL_ERROR"
        ScanConfigIssue -> "SCAN_CONFIG_ISSUE"
        AuthenticationConfigIssue -> "AUTHENTICATION_CONFIG_ISSUE"
        TimedOutWhileScanning -> "TIMED_OUT_WHILE_SCANNING"
        TooManyRedirects -> "TOO_MANY_REDIRECTS"
        TooManyHTTPErrors -> "TOO_MANY_HTTP_ERRORS"

instance FromJSON ScanRunErrorTraceCode where
    parseJSON = parseJSONText "ScanRunErrorTraceCode"

instance ToJSON ScanRunErrorTraceCode where
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

-- | The user agent used during scanning.
data ScanConfigUserAgent
    = UserAgentUnspecified
      -- ^ @USER_AGENT_UNSPECIFIED@
      -- The user agent is unknown. Service will default to CHROME_LINUX.
    | ChromeLinux
      -- ^ @CHROME_LINUX@
      -- Chrome on Linux. This is the service default if unspecified.
    | ChromeAndroid
      -- ^ @CHROME_ANDROID@
      -- Chrome on Android.
    | SafariIPhone
      -- ^ @SAFARI_IPHONE@
      -- Safari on IPhone.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScanConfigUserAgent

instance FromHttpApiData ScanConfigUserAgent where
    parseQueryParam = \case
        "USER_AGENT_UNSPECIFIED" -> Right UserAgentUnspecified
        "CHROME_LINUX" -> Right ChromeLinux
        "CHROME_ANDROID" -> Right ChromeAndroid
        "SAFARI_IPHONE" -> Right SafariIPhone
        x -> Left ("Unable to parse ScanConfigUserAgent from: " <> x)

instance ToHttpApiData ScanConfigUserAgent where
    toQueryParam = \case
        UserAgentUnspecified -> "USER_AGENT_UNSPECIFIED"
        ChromeLinux -> "CHROME_LINUX"
        ChromeAndroid -> "CHROME_ANDROID"
        SafariIPhone -> "SAFARI_IPHONE"

instance FromJSON ScanConfigUserAgent where
    parseJSON = parseJSONText "ScanConfigUserAgent"

instance ToJSON ScanConfigUserAgent where
    toJSON = toJSONText

-- | Output only. Indicates the warning code.
data ScanRunWarningTraceCode
    = SRWTCCodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- Default value is never used.
    | SRWTCInsufficientCrawlResults
      -- ^ @INSUFFICIENT_CRAWL_RESULTS@
      -- Indicates that a scan discovered an unexpectedly low number of URLs.
      -- This is sometimes caused by complex navigation features or by using a
      -- single URL for numerous pages.
    | SRWTCTooManyCrawlResults
      -- ^ @TOO_MANY_CRAWL_RESULTS@
      -- Indicates that a scan discovered too many URLs to test, or excessive
      -- redundant URLs.
    | SRWTCTooManyFuzzTasks
      -- ^ @TOO_MANY_FUZZ_TASKS@
      -- Indicates that too many tests have been generated for the scan. Customer
      -- should try reducing the number of starting URLs, increasing the QPS
      -- rate, or narrowing down the scope of the scan using the excluded
      -- patterns.
    | SRWTCBlockedByIap
      -- ^ @BLOCKED_BY_IAP@
      -- Indicates that a scan is blocked by IAP.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScanRunWarningTraceCode

instance FromHttpApiData ScanRunWarningTraceCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right SRWTCCodeUnspecified
        "INSUFFICIENT_CRAWL_RESULTS" -> Right SRWTCInsufficientCrawlResults
        "TOO_MANY_CRAWL_RESULTS" -> Right SRWTCTooManyCrawlResults
        "TOO_MANY_FUZZ_TASKS" -> Right SRWTCTooManyFuzzTasks
        "BLOCKED_BY_IAP" -> Right SRWTCBlockedByIap
        x -> Left ("Unable to parse ScanRunWarningTraceCode from: " <> x)

instance ToHttpApiData ScanRunWarningTraceCode where
    toQueryParam = \case
        SRWTCCodeUnspecified -> "CODE_UNSPECIFIED"
        SRWTCInsufficientCrawlResults -> "INSUFFICIENT_CRAWL_RESULTS"
        SRWTCTooManyCrawlResults -> "TOO_MANY_CRAWL_RESULTS"
        SRWTCTooManyFuzzTasks -> "TOO_MANY_FUZZ_TASKS"
        SRWTCBlockedByIap -> "BLOCKED_BY_IAP"

instance FromJSON ScanRunWarningTraceCode where
    parseJSON = parseJSONText "ScanRunWarningTraceCode"

instance ToJSON ScanRunWarningTraceCode where
    toJSON = toJSONText

-- | Controls export of scan configurations and results to Cloud Security
-- Command Center.
data ScanConfigExportToSecurityCommandCenter
    = ExportToSecurityCommandCenterUnspecified
      -- ^ @EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED@
      -- Use default, which is ENABLED.
    | Enabled
      -- ^ @ENABLED@
      -- Export results of this scan to Cloud Security Command Center.
    | Disabled
      -- ^ @DISABLED@
      -- Do not export results of this scan to Cloud Security Command Center.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScanConfigExportToSecurityCommandCenter

instance FromHttpApiData ScanConfigExportToSecurityCommandCenter where
    parseQueryParam = \case
        "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED" -> Right ExportToSecurityCommandCenterUnspecified
        "ENABLED" -> Right Enabled
        "DISABLED" -> Right Disabled
        x -> Left ("Unable to parse ScanConfigExportToSecurityCommandCenter from: " <> x)

instance ToHttpApiData ScanConfigExportToSecurityCommandCenter where
    toQueryParam = \case
        ExportToSecurityCommandCenterUnspecified -> "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED"
        Enabled -> "ENABLED"
        Disabled -> "DISABLED"

instance FromJSON ScanConfigExportToSecurityCommandCenter where
    parseJSON = parseJSONText "ScanConfigExportToSecurityCommandCenter"

instance ToJSON ScanConfigExportToSecurityCommandCenter where
    toJSON = toJSONText

-- | Output only. Indicates the reason code for a configuration failure.
data ScanConfigErrorCode
    = SCECCodeUnspecified
      -- ^ @CODE_UNSPECIFIED@
      -- There is no error.
    | SCECOK
      -- ^ @OK@
      -- There is no error.
    | SCECInternalError
      -- ^ @INTERNAL_ERROR@
      -- Indicates an internal server error. Please DO NOT USE THIS ERROR CODE
      -- unless the root cause is truly unknown.
    | SCECAppEngineAPIBackendError
      -- ^ @APPENGINE_API_BACKEND_ERROR@
      -- One of the seed URLs is an App Engine URL but we cannot validate the
      -- scan settings due to an App Engine API backend error.
    | SCECAppEngineAPINotAccessible
      -- ^ @APPENGINE_API_NOT_ACCESSIBLE@
      -- One of the seed URLs is an App Engine URL but we cannot access the App
      -- Engine API to validate scan settings.
    | SCECAppEngineDefaultHostMissing
      -- ^ @APPENGINE_DEFAULT_HOST_MISSING@
      -- One of the seed URLs is an App Engine URL but the Default Host of the
      -- App Engine is not set.
    | SCECAppEngineSeedURLNotAllowed
      -- ^ @APPENGINE_SEED_URL_NOT_ALLOWED@
      -- One of the seed URLs is an App Engine URL and the scan targets Compute
      -- Engine only.
    | SCECCannotUseGoogleComAccount
      -- ^ @CANNOT_USE_GOOGLE_COM_ACCOUNT@
      -- Google corporate accounts can not be used for scanning.
    | SCECCannotUseOwnerAccount
      -- ^ @CANNOT_USE_OWNER_ACCOUNT@
      -- The account of the scan creator can not be used for scanning.
    | SCECComputeAPIBackendError
      -- ^ @COMPUTE_API_BACKEND_ERROR@
      -- This scan targets Compute Engine, but we cannot validate scan settings
      -- due to a Compute Engine API backend error.
    | SCECComputeAPINotAccessible
      -- ^ @COMPUTE_API_NOT_ACCESSIBLE@
      -- This scan targets Compute Engine, but we cannot access the Compute
      -- Engine API to validate the scan settings.
    | SCECCustomLoginURLDoesNotBelongToCurrentProject
      -- ^ @CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT@
      -- The Custom Login URL does not belong to the current project.
    | SCECCustomLoginURLMalformed
      -- ^ @CUSTOM_LOGIN_URL_MALFORMED@
      -- The Custom Login URL is malformed (can not be parsed).
    | SCECCustomLoginURLMAppedToNonRoutableAddress
      -- ^ @CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS@
      -- The Custom Login URL is mapped to a non-routable IP address in DNS.
    | SCECCustomLoginURLMAppedToUnreservedAddress
      -- ^ @CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS@
      -- The Custom Login URL is mapped to an IP address which is not reserved
      -- for the current project.
    | SCECCustomLoginURLHasNonRoutableIPAddress
      -- ^ @CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS@
      -- The Custom Login URL has a non-routable IP address.
    | SCECCustomLoginURLHasUnreservedIPAddress
      -- ^ @CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS@
      -- The Custom Login URL has an IP address which is not reserved for the
      -- current project.
    | SCECDuplicateScanName
      -- ^ @DUPLICATE_SCAN_NAME@
      -- Another scan with the same name (case-sensitive) already exists.
    | SCECInvalidFieldValue
      -- ^ @INVALID_FIELD_VALUE@
      -- A field is set to an invalid value.
    | SCECFailedToAuthenticateToTarget
      -- ^ @FAILED_TO_AUTHENTICATE_TO_TARGET@
      -- There was an error trying to authenticate to the scan target.
    | SCECFindingTypeUnspecified
      -- ^ @FINDING_TYPE_UNSPECIFIED@
      -- Finding type value is not specified in the list findings request.
    | SCECForBiddenToScanCompute
      -- ^ @FORBIDDEN_TO_SCAN_COMPUTE@
      -- Scan targets Compute Engine, yet current project was not whitelisted for
      -- Google Compute Engine Scanning Alpha access.
    | SCECMalformedFilter
      -- ^ @MALFORMED_FILTER@
      -- The supplied filter is malformed. For example, it can not be parsed,
      -- does not have a filter type in expression, or the same filter type
      -- appears more than once.
    | SCECMalformedResourceName
      -- ^ @MALFORMED_RESOURCE_NAME@
      -- The supplied resource name is malformed (can not be parsed).
    | SCECProjectInactive
      -- ^ @PROJECT_INACTIVE@
      -- The current project is not in an active state.
    | SCECRequiredField
      -- ^ @REQUIRED_FIELD@
      -- A required field is not set.
    | SCECResourceNameInconsistent
      -- ^ @RESOURCE_NAME_INCONSISTENT@
      -- Project id, scanconfig id, scanrun id, or finding id are not consistent
      -- with each other in resource name.
    | SCECScanAlreadyRunning
      -- ^ @SCAN_ALREADY_RUNNING@
      -- The scan being requested to start is already running.
    | SCECScanNotRunning
      -- ^ @SCAN_NOT_RUNNING@
      -- The scan that was requested to be stopped is not running.
    | SCECSeedURLDoesNotBelongToCurrentProject
      -- ^ @SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT@
      -- One of the seed URLs does not belong to the current project.
    | SCECSeedURLMalformed
      -- ^ @SEED_URL_MALFORMED@
      -- One of the seed URLs is malformed (can not be parsed).
    | SCECSeedURLMAppedToNonRoutableAddress
      -- ^ @SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS@
      -- One of the seed URLs is mapped to a non-routable IP address in DNS.
    | SCECSeedURLMAppedToUnreservedAddress
      -- ^ @SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS@
      -- One of the seed URLs is mapped to an IP address which is not reserved
      -- for the current project.
    | SCECSeedURLHasNonRoutableIPAddress
      -- ^ @SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS@
      -- One of the seed URLs has on-routable IP address.
    | SCECSeedURLIPAddressNotSupportedForAppEngine
      -- ^ @SEED_URL_IP_ADDRESS_NOT_SUPPORTED_FOR_APPENGINE@
      -- One of the supplied seed URLs has an IP address, and this is not
      -- supported in App Engine-only targeted scan.
    | SCECSeedURLHasUnreservedIPAddress
      -- ^ @SEED_URL_HAS_UNRESERVED_IP_ADDRESS@
      -- One of the seed URLs has an IP address that is not reserved for the
      -- current project.
    | SCECServiceAccountNotConfigured
      -- ^ @SERVICE_ACCOUNT_NOT_CONFIGURED@
      -- The Cloud Security Scanner service account is not configured under the
      -- project.
    | SCECTooManyScans
      -- ^ @TOO_MANY_SCANS@
      -- A project has reached the maximum number of scans.
    | SCECUnableToResolveProjectInfo
      -- ^ @UNABLE_TO_RESOLVE_PROJECT_INFO@
      -- Resolving the details of the current project fails.
    | SCECUnsupportedBlackListPatternFormat
      -- ^ @UNSUPPORTED_BLACKLIST_PATTERN_FORMAT@
      -- One or more blacklist patterns were in the wrong format.
    | SCECUnsupportedFilter
      -- ^ @UNSUPPORTED_FILTER@
      -- The supplied filter is not supported.
    | SCECUnsupportedFindingType
      -- ^ @UNSUPPORTED_FINDING_TYPE@
      -- The supplied finding type is not supported. For example, we do not
      -- provide findings of the given finding type.
    | SCECUnsupportedURLScheme
      -- ^ @UNSUPPORTED_URL_SCHEME@
      -- The URL scheme of one or more of the supplied URLs is not supported.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScanConfigErrorCode

instance FromHttpApiData ScanConfigErrorCode where
    parseQueryParam = \case
        "CODE_UNSPECIFIED" -> Right SCECCodeUnspecified
        "OK" -> Right SCECOK
        "INTERNAL_ERROR" -> Right SCECInternalError
        "APPENGINE_API_BACKEND_ERROR" -> Right SCECAppEngineAPIBackendError
        "APPENGINE_API_NOT_ACCESSIBLE" -> Right SCECAppEngineAPINotAccessible
        "APPENGINE_DEFAULT_HOST_MISSING" -> Right SCECAppEngineDefaultHostMissing
        "APPENGINE_SEED_URL_NOT_ALLOWED" -> Right SCECAppEngineSeedURLNotAllowed
        "CANNOT_USE_GOOGLE_COM_ACCOUNT" -> Right SCECCannotUseGoogleComAccount
        "CANNOT_USE_OWNER_ACCOUNT" -> Right SCECCannotUseOwnerAccount
        "COMPUTE_API_BACKEND_ERROR" -> Right SCECComputeAPIBackendError
        "COMPUTE_API_NOT_ACCESSIBLE" -> Right SCECComputeAPINotAccessible
        "CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT" -> Right SCECCustomLoginURLDoesNotBelongToCurrentProject
        "CUSTOM_LOGIN_URL_MALFORMED" -> Right SCECCustomLoginURLMalformed
        "CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS" -> Right SCECCustomLoginURLMAppedToNonRoutableAddress
        "CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS" -> Right SCECCustomLoginURLMAppedToUnreservedAddress
        "CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS" -> Right SCECCustomLoginURLHasNonRoutableIPAddress
        "CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS" -> Right SCECCustomLoginURLHasUnreservedIPAddress
        "DUPLICATE_SCAN_NAME" -> Right SCECDuplicateScanName
        "INVALID_FIELD_VALUE" -> Right SCECInvalidFieldValue
        "FAILED_TO_AUTHENTICATE_TO_TARGET" -> Right SCECFailedToAuthenticateToTarget
        "FINDING_TYPE_UNSPECIFIED" -> Right SCECFindingTypeUnspecified
        "FORBIDDEN_TO_SCAN_COMPUTE" -> Right SCECForBiddenToScanCompute
        "MALFORMED_FILTER" -> Right SCECMalformedFilter
        "MALFORMED_RESOURCE_NAME" -> Right SCECMalformedResourceName
        "PROJECT_INACTIVE" -> Right SCECProjectInactive
        "REQUIRED_FIELD" -> Right SCECRequiredField
        "RESOURCE_NAME_INCONSISTENT" -> Right SCECResourceNameInconsistent
        "SCAN_ALREADY_RUNNING" -> Right SCECScanAlreadyRunning
        "SCAN_NOT_RUNNING" -> Right SCECScanNotRunning
        "SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT" -> Right SCECSeedURLDoesNotBelongToCurrentProject
        "SEED_URL_MALFORMED" -> Right SCECSeedURLMalformed
        "SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS" -> Right SCECSeedURLMAppedToNonRoutableAddress
        "SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS" -> Right SCECSeedURLMAppedToUnreservedAddress
        "SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS" -> Right SCECSeedURLHasNonRoutableIPAddress
        "SEED_URL_IP_ADDRESS_NOT_SUPPORTED_FOR_APPENGINE" -> Right SCECSeedURLIPAddressNotSupportedForAppEngine
        "SEED_URL_HAS_UNRESERVED_IP_ADDRESS" -> Right SCECSeedURLHasUnreservedIPAddress
        "SERVICE_ACCOUNT_NOT_CONFIGURED" -> Right SCECServiceAccountNotConfigured
        "TOO_MANY_SCANS" -> Right SCECTooManyScans
        "UNABLE_TO_RESOLVE_PROJECT_INFO" -> Right SCECUnableToResolveProjectInfo
        "UNSUPPORTED_BLACKLIST_PATTERN_FORMAT" -> Right SCECUnsupportedBlackListPatternFormat
        "UNSUPPORTED_FILTER" -> Right SCECUnsupportedFilter
        "UNSUPPORTED_FINDING_TYPE" -> Right SCECUnsupportedFindingType
        "UNSUPPORTED_URL_SCHEME" -> Right SCECUnsupportedURLScheme
        x -> Left ("Unable to parse ScanConfigErrorCode from: " <> x)

instance ToHttpApiData ScanConfigErrorCode where
    toQueryParam = \case
        SCECCodeUnspecified -> "CODE_UNSPECIFIED"
        SCECOK -> "OK"
        SCECInternalError -> "INTERNAL_ERROR"
        SCECAppEngineAPIBackendError -> "APPENGINE_API_BACKEND_ERROR"
        SCECAppEngineAPINotAccessible -> "APPENGINE_API_NOT_ACCESSIBLE"
        SCECAppEngineDefaultHostMissing -> "APPENGINE_DEFAULT_HOST_MISSING"
        SCECAppEngineSeedURLNotAllowed -> "APPENGINE_SEED_URL_NOT_ALLOWED"
        SCECCannotUseGoogleComAccount -> "CANNOT_USE_GOOGLE_COM_ACCOUNT"
        SCECCannotUseOwnerAccount -> "CANNOT_USE_OWNER_ACCOUNT"
        SCECComputeAPIBackendError -> "COMPUTE_API_BACKEND_ERROR"
        SCECComputeAPINotAccessible -> "COMPUTE_API_NOT_ACCESSIBLE"
        SCECCustomLoginURLDoesNotBelongToCurrentProject -> "CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT"
        SCECCustomLoginURLMalformed -> "CUSTOM_LOGIN_URL_MALFORMED"
        SCECCustomLoginURLMAppedToNonRoutableAddress -> "CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS"
        SCECCustomLoginURLMAppedToUnreservedAddress -> "CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS"
        SCECCustomLoginURLHasNonRoutableIPAddress -> "CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS"
        SCECCustomLoginURLHasUnreservedIPAddress -> "CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS"
        SCECDuplicateScanName -> "DUPLICATE_SCAN_NAME"
        SCECInvalidFieldValue -> "INVALID_FIELD_VALUE"
        SCECFailedToAuthenticateToTarget -> "FAILED_TO_AUTHENTICATE_TO_TARGET"
        SCECFindingTypeUnspecified -> "FINDING_TYPE_UNSPECIFIED"
        SCECForBiddenToScanCompute -> "FORBIDDEN_TO_SCAN_COMPUTE"
        SCECMalformedFilter -> "MALFORMED_FILTER"
        SCECMalformedResourceName -> "MALFORMED_RESOURCE_NAME"
        SCECProjectInactive -> "PROJECT_INACTIVE"
        SCECRequiredField -> "REQUIRED_FIELD"
        SCECResourceNameInconsistent -> "RESOURCE_NAME_INCONSISTENT"
        SCECScanAlreadyRunning -> "SCAN_ALREADY_RUNNING"
        SCECScanNotRunning -> "SCAN_NOT_RUNNING"
        SCECSeedURLDoesNotBelongToCurrentProject -> "SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT"
        SCECSeedURLMalformed -> "SEED_URL_MALFORMED"
        SCECSeedURLMAppedToNonRoutableAddress -> "SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS"
        SCECSeedURLMAppedToUnreservedAddress -> "SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS"
        SCECSeedURLHasNonRoutableIPAddress -> "SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS"
        SCECSeedURLIPAddressNotSupportedForAppEngine -> "SEED_URL_IP_ADDRESS_NOT_SUPPORTED_FOR_APPENGINE"
        SCECSeedURLHasUnreservedIPAddress -> "SEED_URL_HAS_UNRESERVED_IP_ADDRESS"
        SCECServiceAccountNotConfigured -> "SERVICE_ACCOUNT_NOT_CONFIGURED"
        SCECTooManyScans -> "TOO_MANY_SCANS"
        SCECUnableToResolveProjectInfo -> "UNABLE_TO_RESOLVE_PROJECT_INFO"
        SCECUnsupportedBlackListPatternFormat -> "UNSUPPORTED_BLACKLIST_PATTERN_FORMAT"
        SCECUnsupportedFilter -> "UNSUPPORTED_FILTER"
        SCECUnsupportedFindingType -> "UNSUPPORTED_FINDING_TYPE"
        SCECUnsupportedURLScheme -> "UNSUPPORTED_URL_SCHEME"

instance FromJSON ScanConfigErrorCode where
    parseJSON = parseJSONText "ScanConfigErrorCode"

instance ToJSON ScanConfigErrorCode where
    toJSON = toJSONText

-- | Output only. The result state of the ScanRun. This field is only
-- available after the execution state reaches \"FINISHED\".
data ScanRunResultState
    = ResultStateUnspecified
      -- ^ @RESULT_STATE_UNSPECIFIED@
      -- Default value. This value is returned when the ScanRun is not yet
      -- finished.
    | Success
      -- ^ @SUCCESS@
      -- The scan finished without errors.
    | Error'
      -- ^ @ERROR@
      -- The scan finished with errors.
    | Killed
      -- ^ @KILLED@
      -- The scan was terminated by user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScanRunResultState

instance FromHttpApiData ScanRunResultState where
    parseQueryParam = \case
        "RESULT_STATE_UNSPECIFIED" -> Right ResultStateUnspecified
        "SUCCESS" -> Right Success
        "ERROR" -> Right Error'
        "KILLED" -> Right Killed
        x -> Left ("Unable to parse ScanRunResultState from: " <> x)

instance ToHttpApiData ScanRunResultState where
    toQueryParam = \case
        ResultStateUnspecified -> "RESULT_STATE_UNSPECIFIED"
        Success -> "SUCCESS"
        Error' -> "ERROR"
        Killed -> "KILLED"

instance FromJSON ScanRunResultState where
    parseJSON = parseJSONText "ScanRunResultState"

instance ToJSON ScanRunResultState where
    toJSON = toJSONText

-- | Output only. The execution state of the ScanRun.
data ScanRunExecutionState
    = ExecutionStateUnspecified
      -- ^ @EXECUTION_STATE_UNSPECIFIED@
      -- Represents an invalid state caused by internal server error. This value
      -- should never be returned.
    | Queued
      -- ^ @QUEUED@
      -- The scan is waiting in the queue.
    | Scanning
      -- ^ @SCANNING@
      -- The scan is in progress.
    | Finished
      -- ^ @FINISHED@
      -- The scan is either finished or stopped by user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScanRunExecutionState

instance FromHttpApiData ScanRunExecutionState where
    parseQueryParam = \case
        "EXECUTION_STATE_UNSPECIFIED" -> Right ExecutionStateUnspecified
        "QUEUED" -> Right Queued
        "SCANNING" -> Right Scanning
        "FINISHED" -> Right Finished
        x -> Left ("Unable to parse ScanRunExecutionState from: " <> x)

instance ToHttpApiData ScanRunExecutionState where
    toQueryParam = \case
        ExecutionStateUnspecified -> "EXECUTION_STATE_UNSPECIFIED"
        Queued -> "QUEUED"
        Scanning -> "SCANNING"
        Finished -> "FINISHED"

instance FromJSON ScanRunExecutionState where
    parseJSON = parseJSONText "ScanRunExecutionState"

instance ToJSON ScanRunExecutionState where
    toJSON = toJSONText
