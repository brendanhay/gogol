{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppEngine.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppEngine.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Serving status of this application.
data ApplicationServingStatus
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- Serving status is unspecified.
    | Serving
      -- ^ @SERVING@
      -- Application is serving.
    | UserDisabled
      -- ^ @USER_DISABLED@
      -- Application has been disabled by the user.
    | SystemDisabled
      -- ^ @SYSTEM_DISABLED@
      -- Application has been disabled by the system.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ApplicationServingStatus

instance FromHttpApiData ApplicationServingStatus where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "SERVING" -> Right Serving
        "USER_DISABLED" -> Right UserDisabled
        "SYSTEM_DISABLED" -> Right SystemDisabled
        x -> Left ("Unable to parse ApplicationServingStatus from: " <> x)

instance ToHttpApiData ApplicationServingStatus where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        Serving -> "SERVING"
        UserDisabled -> "USER_DISABLED"
        SystemDisabled -> "SYSTEM_DISABLED"

instance FromJSON ApplicationServingStatus where
    parseJSON = parseJSONText "ApplicationServingStatus"

instance ToJSON ApplicationServingStatus where
    toJSON = toJSONText

-- | Level of login required to access this resource. Not supported for
-- Node.js in the App Engine standard environment.
data URLMapLogin
    = LoginUnspecified
      -- ^ @LOGIN_UNSPECIFIED@
      -- Not specified. LOGIN_OPTIONAL is assumed.
    | LoginOptional
      -- ^ @LOGIN_OPTIONAL@
      -- Does not require that the user is signed in.
    | LoginAdmin
      -- ^ @LOGIN_ADMIN@
      -- If the user is not signed in, the auth_fail_action is taken. In
      -- addition, if the user is not an administrator for the application, they
      -- are given an error message regardless of auth_fail_action. If the user
      -- is an administrator, the handler proceeds.
    | LoginRequired
      -- ^ @LOGIN_REQUIRED@
      -- If the user has signed in, the handler proceeds normally. Otherwise, the
      -- auth_fail_action is taken.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable URLMapLogin

instance FromHttpApiData URLMapLogin where
    parseQueryParam = \case
        "LOGIN_UNSPECIFIED" -> Right LoginUnspecified
        "LOGIN_OPTIONAL" -> Right LoginOptional
        "LOGIN_ADMIN" -> Right LoginAdmin
        "LOGIN_REQUIRED" -> Right LoginRequired
        x -> Left ("Unable to parse URLMapLogin from: " <> x)

instance ToHttpApiData URLMapLogin where
    toQueryParam = \case
        LoginUnspecified -> "LOGIN_UNSPECIFIED"
        LoginOptional -> "LOGIN_OPTIONAL"
        LoginAdmin -> "LOGIN_ADMIN"
        LoginRequired -> "LOGIN_REQUIRED"

instance FromJSON URLMapLogin where
    parseJSON = parseJSONText "URLMapLogin"

instance ToJSON URLMapLogin where
    toJSON = toJSONText

-- | Status of certificate management. Refers to the most recent certificate
-- acquisition or renewal attempt.\'OutputOnly
data ManagedCertificateStatus
    = ManagementStatusUnspecified
      -- ^ @MANAGEMENT_STATUS_UNSPECIFIED@
    | OK
      -- ^ @OK@
      -- Certificate was successfully obtained and inserted into the serving
      -- system.
    | Pending
      -- ^ @PENDING@
      -- Certificate is under active attempts to acquire or renew.
    | FailedRetryingNotVisible
      -- ^ @FAILED_RETRYING_NOT_VISIBLE@
      -- Most recent renewal failed due to an invalid DNS setup and will be
      -- retried. Renewal attempts will continue to fail until the certificate
      -- domain\'s DNS configuration is fixed. The last successfully provisioned
      -- certificate may still be serving.
    | FailedPermanent
      -- ^ @FAILED_PERMANENT@
      -- All renewal attempts have been exhausted, likely due to an invalid DNS
      -- setup.
    | FailedRetryingCaaForBidden
      -- ^ @FAILED_RETRYING_CAA_FORBIDDEN@
      -- Most recent renewal failed due to an explicit CAA record that does not
      -- include the in-use CA, Let\'s Encrypt. Renewals will continue to fail
      -- until the CAA is reconfigured. The last successfully provisioned
      -- certificate may still be serving.
    | FailedRetryingCaaChecking
      -- ^ @FAILED_RETRYING_CAA_CHECKING@
      -- Most recent renewal failed due to a CAA retrieval failure. This means
      -- that the domain\'s DNS provider does not properly handle CAA records,
      -- failing requests for CAA records when no CAA records are defined.
      -- Renewals will continue to fail until the DNS provider is changed or a
      -- CAA record is added for the given domain. The last successfully
      -- provisioned certificate may still be serving.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ManagedCertificateStatus

instance FromHttpApiData ManagedCertificateStatus where
    parseQueryParam = \case
        "MANAGEMENT_STATUS_UNSPECIFIED" -> Right ManagementStatusUnspecified
        "OK" -> Right OK
        "PENDING" -> Right Pending
        "FAILED_RETRYING_NOT_VISIBLE" -> Right FailedRetryingNotVisible
        "FAILED_PERMANENT" -> Right FailedPermanent
        "FAILED_RETRYING_CAA_FORBIDDEN" -> Right FailedRetryingCaaForBidden
        "FAILED_RETRYING_CAA_CHECKING" -> Right FailedRetryingCaaChecking
        x -> Left ("Unable to parse ManagedCertificateStatus from: " <> x)

instance ToHttpApiData ManagedCertificateStatus where
    toQueryParam = \case
        ManagementStatusUnspecified -> "MANAGEMENT_STATUS_UNSPECIFIED"
        OK -> "OK"
        Pending -> "PENDING"
        FailedRetryingNotVisible -> "FAILED_RETRYING_NOT_VISIBLE"
        FailedPermanent -> "FAILED_PERMANENT"
        FailedRetryingCaaForBidden -> "FAILED_RETRYING_CAA_FORBIDDEN"
        FailedRetryingCaaChecking -> "FAILED_RETRYING_CAA_CHECKING"

instance FromJSON ManagedCertificateStatus where
    parseJSON = parseJSONText "ManagedCertificateStatus"

instance ToJSON ManagedCertificateStatus where
    toJSON = toJSONText

-- | Security (HTTPS) enforcement for this URL.
data APIConfigHandlerSecurityLevel
    = SecureUnspecified
      -- ^ @SECURE_UNSPECIFIED@
      -- Not specified.
    | SecureDefault
      -- ^ @SECURE_DEFAULT@
      -- Both HTTP and HTTPS requests with URLs that match the handler succeed
      -- without redirects. The application can examine the request to determine
      -- which protocol was used, and respond accordingly.
    | SecureNever
      -- ^ @SECURE_NEVER@
      -- Requests for a URL that match this handler that use HTTPS are
      -- automatically redirected to the HTTP equivalent URL.
    | SecureOptional
      -- ^ @SECURE_OPTIONAL@
      -- Both HTTP and HTTPS requests with URLs that match the handler succeed
      -- without redirects. The application can examine the request to determine
      -- which protocol was used and respond accordingly.
    | SecureAlways
      -- ^ @SECURE_ALWAYS@
      -- Requests for a URL that match this handler that do not use HTTPS are
      -- automatically redirected to the HTTPS URL with the same path. Query
      -- parameters are reserved for the redirect.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable APIConfigHandlerSecurityLevel

instance FromHttpApiData APIConfigHandlerSecurityLevel where
    parseQueryParam = \case
        "SECURE_UNSPECIFIED" -> Right SecureUnspecified
        "SECURE_DEFAULT" -> Right SecureDefault
        "SECURE_NEVER" -> Right SecureNever
        "SECURE_OPTIONAL" -> Right SecureOptional
        "SECURE_ALWAYS" -> Right SecureAlways
        x -> Left ("Unable to parse APIConfigHandlerSecurityLevel from: " <> x)

instance ToHttpApiData APIConfigHandlerSecurityLevel where
    toQueryParam = \case
        SecureUnspecified -> "SECURE_UNSPECIFIED"
        SecureDefault -> "SECURE_DEFAULT"
        SecureNever -> "SECURE_NEVER"
        SecureOptional -> "SECURE_OPTIONAL"
        SecureAlways -> "SECURE_ALWAYS"

instance FromJSON APIConfigHandlerSecurityLevel where
    parseJSON = parseJSONText "APIConfigHandlerSecurityLevel"

instance ToJSON APIConfigHandlerSecurityLevel where
    toJSON = toJSONText

-- | Error condition this handler applies to.
data ErrorHandlerErrorCode
    = ErrorCodeUnspecified
      -- ^ @ERROR_CODE_UNSPECIFIED@
      -- Not specified. ERROR_CODE_DEFAULT is assumed.
    | ErrorCodeDefault
      -- ^ @ERROR_CODE_DEFAULT@
      -- All other error types.
    | ErrorCodeOverQuota
      -- ^ @ERROR_CODE_OVER_QUOTA@
      -- Application has exceeded a resource quota.
    | ErrorCodeDosAPIdenial
      -- ^ @ERROR_CODE_DOS_API_DENIAL@
      -- Client blocked by the application\'s Denial of Service protection
      -- configuration.
    | ErrorCodeTimeout
      -- ^ @ERROR_CODE_TIMEOUT@
      -- Deadline reached before the application responds.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ErrorHandlerErrorCode

instance FromHttpApiData ErrorHandlerErrorCode where
    parseQueryParam = \case
        "ERROR_CODE_UNSPECIFIED" -> Right ErrorCodeUnspecified
        "ERROR_CODE_DEFAULT" -> Right ErrorCodeDefault
        "ERROR_CODE_OVER_QUOTA" -> Right ErrorCodeOverQuota
        "ERROR_CODE_DOS_API_DENIAL" -> Right ErrorCodeDosAPIdenial
        "ERROR_CODE_TIMEOUT" -> Right ErrorCodeTimeout
        x -> Left ("Unable to parse ErrorHandlerErrorCode from: " <> x)

instance ToHttpApiData ErrorHandlerErrorCode where
    toQueryParam = \case
        ErrorCodeUnspecified -> "ERROR_CODE_UNSPECIFIED"
        ErrorCodeDefault -> "ERROR_CODE_DEFAULT"
        ErrorCodeOverQuota -> "ERROR_CODE_OVER_QUOTA"
        ErrorCodeDosAPIdenial -> "ERROR_CODE_DOS_API_DENIAL"
        ErrorCodeTimeout -> "ERROR_CODE_TIMEOUT"

instance FromJSON ErrorHandlerErrorCode where
    parseJSON = parseJSONText "ErrorHandlerErrorCode"

instance ToJSON ErrorHandlerErrorCode where
    toJSON = toJSONText

-- | Endpoints rollout strategy. If FIXED, config_id must be specified. If
-- MANAGED, config_id must be omitted.
data EndpointsAPIServiceRolloutStrategy
    = UnspecifiedRolloutStrategy
      -- ^ @UNSPECIFIED_ROLLOUT_STRATEGY@
      -- Not specified. Defaults to FIXED.
    | Fixed
      -- ^ @FIXED@
      -- Endpoints service configuration ID will be fixed to the configuration ID
      -- specified by config_id.
    | Managed
      -- ^ @MANAGED@
      -- Endpoints service configuration ID will be updated with each rollout.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable EndpointsAPIServiceRolloutStrategy

instance FromHttpApiData EndpointsAPIServiceRolloutStrategy where
    parseQueryParam = \case
        "UNSPECIFIED_ROLLOUT_STRATEGY" -> Right UnspecifiedRolloutStrategy
        "FIXED" -> Right Fixed
        "MANAGED" -> Right Managed
        x -> Left ("Unable to parse EndpointsAPIServiceRolloutStrategy from: " <> x)

instance ToHttpApiData EndpointsAPIServiceRolloutStrategy where
    toQueryParam = \case
        UnspecifiedRolloutStrategy -> "UNSPECIFIED_ROLLOUT_STRATEGY"
        Fixed -> "FIXED"
        Managed -> "MANAGED"

instance FromJSON EndpointsAPIServiceRolloutStrategy where
    parseJSON = parseJSONText "EndpointsAPIServiceRolloutStrategy"

instance ToJSON EndpointsAPIServiceRolloutStrategy where
    toJSON = toJSONText

-- | Action to take when users access resources that require authentication.
-- Defaults to redirect.
data APIConfigHandlerAuthFailAction
    = AuthFailActionUnspecified
      -- ^ @AUTH_FAIL_ACTION_UNSPECIFIED@
      -- Not specified. AUTH_FAIL_ACTION_REDIRECT is assumed.
    | AuthFailActionRedirect
      -- ^ @AUTH_FAIL_ACTION_REDIRECT@
      -- Redirects user to \"accounts.google.com\". The user is redirected back
      -- to the application URL after signing in or creating an account.
    | AuthFailActionUnauthorized
      -- ^ @AUTH_FAIL_ACTION_UNAUTHORIZED@
      -- Rejects request with a 401 HTTP status code and an error message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable APIConfigHandlerAuthFailAction

instance FromHttpApiData APIConfigHandlerAuthFailAction where
    parseQueryParam = \case
        "AUTH_FAIL_ACTION_UNSPECIFIED" -> Right AuthFailActionUnspecified
        "AUTH_FAIL_ACTION_REDIRECT" -> Right AuthFailActionRedirect
        "AUTH_FAIL_ACTION_UNAUTHORIZED" -> Right AuthFailActionUnauthorized
        x -> Left ("Unable to parse APIConfigHandlerAuthFailAction from: " <> x)

instance ToHttpApiData APIConfigHandlerAuthFailAction where
    toQueryParam = \case
        AuthFailActionUnspecified -> "AUTH_FAIL_ACTION_UNSPECIFIED"
        AuthFailActionRedirect -> "AUTH_FAIL_ACTION_REDIRECT"
        AuthFailActionUnauthorized -> "AUTH_FAIL_ACTION_UNAUTHORIZED"

instance FromJSON APIConfigHandlerAuthFailAction where
    parseJSON = parseJSONText "APIConfigHandlerAuthFailAction"

instance ToJSON APIConfigHandlerAuthFailAction where
    toJSON = toJSONText

-- | Current serving status of this version. Only the versions with a SERVING
-- status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is
-- an invalid value. Defaults to SERVING.
data VersionServingStatus
    = VSSServingStatusUnspecified
      -- ^ @SERVING_STATUS_UNSPECIFIED@
      -- Not specified.
    | VSSServing
      -- ^ @SERVING@
      -- Currently serving. Instances are created according to the scaling
      -- settings of the version.
    | VSSStopped
      -- ^ @STOPPED@
      -- Disabled. No instances will be created and the scaling settings are
      -- ignored until the state of the version changes to SERVING.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable VersionServingStatus

instance FromHttpApiData VersionServingStatus where
    parseQueryParam = \case
        "SERVING_STATUS_UNSPECIFIED" -> Right VSSServingStatusUnspecified
        "SERVING" -> Right VSSServing
        "STOPPED" -> Right VSSStopped
        x -> Left ("Unable to parse VersionServingStatus from: " <> x)

instance ToHttpApiData VersionServingStatus where
    toQueryParam = \case
        VSSServingStatusUnspecified -> "SERVING_STATUS_UNSPECIFIED"
        VSSServing -> "SERVING"
        VSSStopped -> "STOPPED"

instance FromJSON VersionServingStatus where
    parseJSON = parseJSONText "VersionServingStatus"

instance ToJSON VersionServingStatus where
    toJSON = toJSONText

-- | Security (HTTPS) enforcement for this URL.
data URLMapSecurityLevel
    = UMSLSecureUnspecified
      -- ^ @SECURE_UNSPECIFIED@
      -- Not specified.
    | UMSLSecureDefault
      -- ^ @SECURE_DEFAULT@
      -- Both HTTP and HTTPS requests with URLs that match the handler succeed
      -- without redirects. The application can examine the request to determine
      -- which protocol was used, and respond accordingly.
    | UMSLSecureNever
      -- ^ @SECURE_NEVER@
      -- Requests for a URL that match this handler that use HTTPS are
      -- automatically redirected to the HTTP equivalent URL.
    | UMSLSecureOptional
      -- ^ @SECURE_OPTIONAL@
      -- Both HTTP and HTTPS requests with URLs that match the handler succeed
      -- without redirects. The application can examine the request to determine
      -- which protocol was used and respond accordingly.
    | UMSLSecureAlways
      -- ^ @SECURE_ALWAYS@
      -- Requests for a URL that match this handler that do not use HTTPS are
      -- automatically redirected to the HTTPS URL with the same path. Query
      -- parameters are reserved for the redirect.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable URLMapSecurityLevel

instance FromHttpApiData URLMapSecurityLevel where
    parseQueryParam = \case
        "SECURE_UNSPECIFIED" -> Right UMSLSecureUnspecified
        "SECURE_DEFAULT" -> Right UMSLSecureDefault
        "SECURE_NEVER" -> Right UMSLSecureNever
        "SECURE_OPTIONAL" -> Right UMSLSecureOptional
        "SECURE_ALWAYS" -> Right UMSLSecureAlways
        x -> Left ("Unable to parse URLMapSecurityLevel from: " <> x)

instance ToHttpApiData URLMapSecurityLevel where
    toQueryParam = \case
        UMSLSecureUnspecified -> "SECURE_UNSPECIFIED"
        UMSLSecureDefault -> "SECURE_DEFAULT"
        UMSLSecureNever -> "SECURE_NEVER"
        UMSLSecureOptional -> "SECURE_OPTIONAL"
        UMSLSecureAlways -> "SECURE_ALWAYS"

instance FromJSON URLMapSecurityLevel where
    parseJSON = parseJSONText "URLMapSecurityLevel"

instance ToJSON URLMapSecurityLevel where
    toJSON = toJSONText

-- | Resource record type. Example: AAAA.
data ResourceRecordType
    = RecordTypeUnspecified
      -- ^ @RECORD_TYPE_UNSPECIFIED@
      -- An unknown resource record.
    | A
      -- ^ @A@
      -- An A resource record. Data is an IPv4 address.
    | Aaaa
      -- ^ @AAAA@
      -- An AAAA resource record. Data is an IPv6 address.
    | Cname
      -- ^ @CNAME@
      -- A CNAME resource record. Data is a domain name to be aliased.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ResourceRecordType

instance FromHttpApiData ResourceRecordType where
    parseQueryParam = \case
        "RECORD_TYPE_UNSPECIFIED" -> Right RecordTypeUnspecified
        "A" -> Right A
        "AAAA" -> Right Aaaa
        "CNAME" -> Right Cname
        x -> Left ("Unable to parse ResourceRecordType from: " <> x)

instance ToHttpApiData ResourceRecordType where
    toQueryParam = \case
        RecordTypeUnspecified -> "RECORD_TYPE_UNSPECIFIED"
        A -> "A"
        Aaaa -> "AAAA"
        Cname -> "CNAME"

instance FromJSON ResourceRecordType where
    parseJSON = parseJSONText "ResourceRecordType"

instance ToJSON ResourceRecordType where
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

-- | Mechanism used to determine which version a request is sent to. The
-- traffic selection algorithm will be stable for either type until
-- allocations are changed.
data TrafficSplitShardBy
    = TSSBUnspecified
      -- ^ @UNSPECIFIED@
      -- Diversion method unspecified.
    | TSSBCookie
      -- ^ @COOKIE@
      -- Diversion based on a specially named cookie, \"GOOGAPPUID.\" The cookie
      -- must be set by the application itself or no diversion will occur.
    | TSSBIP
      -- ^ @IP@
      -- Diversion based on applying the modulus operation to a fingerprint of
      -- the IP address.
    | TSSBRandom
      -- ^ @RANDOM@
      -- Diversion based on weighted random assignment. An incoming request is
      -- randomly routed to a version in the traffic split, with probability
      -- proportional to the version\'s traffic share.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TrafficSplitShardBy

instance FromHttpApiData TrafficSplitShardBy where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right TSSBUnspecified
        "COOKIE" -> Right TSSBCookie
        "IP" -> Right TSSBIP
        "RANDOM" -> Right TSSBRandom
        x -> Left ("Unable to parse TrafficSplitShardBy from: " <> x)

instance ToHttpApiData TrafficSplitShardBy where
    toQueryParam = \case
        TSSBUnspecified -> "UNSPECIFIED"
        TSSBCookie -> "COOKIE"
        TSSBIP -> "IP"
        TSSBRandom -> "RANDOM"

instance FromJSON TrafficSplitShardBy where
    parseJSON = parseJSONText "TrafficSplitShardBy"

instance ToJSON TrafficSplitShardBy where
    toJSON = toJSONText

-- | Availability of the instance.\'OutputOnly
data InstanceAvailability
    = IAUnspecified
      -- ^ @UNSPECIFIED@
    | IAResident
      -- ^ @RESIDENT@
    | IADynamic
      -- ^ @DYNAMIC@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceAvailability

instance FromHttpApiData InstanceAvailability where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right IAUnspecified
        "RESIDENT" -> Right IAResident
        "DYNAMIC" -> Right IADynamic
        x -> Left ("Unable to parse InstanceAvailability from: " <> x)

instance ToHttpApiData InstanceAvailability where
    toQueryParam = \case
        IAUnspecified -> "UNSPECIFIED"
        IAResident -> "RESIDENT"
        IADynamic -> "DYNAMIC"

instance FromJSON InstanceAvailability where
    parseJSON = parseJSONText "InstanceAvailability"

instance ToJSON InstanceAvailability where
    toJSON = toJSONText

-- | Action to take when users access resources that require authentication.
-- Defaults to redirect.
data URLMapAuthFailAction
    = UMAFAAuthFailActionUnspecified
      -- ^ @AUTH_FAIL_ACTION_UNSPECIFIED@
      -- Not specified. AUTH_FAIL_ACTION_REDIRECT is assumed.
    | UMAFAAuthFailActionRedirect
      -- ^ @AUTH_FAIL_ACTION_REDIRECT@
      -- Redirects user to \"accounts.google.com\". The user is redirected back
      -- to the application URL after signing in or creating an account.
    | UMAFAAuthFailActionUnauthorized
      -- ^ @AUTH_FAIL_ACTION_UNAUTHORIZED@
      -- Rejects request with a 401 HTTP status code and an error message.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable URLMapAuthFailAction

instance FromHttpApiData URLMapAuthFailAction where
    parseQueryParam = \case
        "AUTH_FAIL_ACTION_UNSPECIFIED" -> Right UMAFAAuthFailActionUnspecified
        "AUTH_FAIL_ACTION_REDIRECT" -> Right UMAFAAuthFailActionRedirect
        "AUTH_FAIL_ACTION_UNAUTHORIZED" -> Right UMAFAAuthFailActionUnauthorized
        x -> Left ("Unable to parse URLMapAuthFailAction from: " <> x)

instance ToHttpApiData URLMapAuthFailAction where
    toQueryParam = \case
        UMAFAAuthFailActionUnspecified -> "AUTH_FAIL_ACTION_UNSPECIFIED"
        UMAFAAuthFailActionRedirect -> "AUTH_FAIL_ACTION_REDIRECT"
        UMAFAAuthFailActionUnauthorized -> "AUTH_FAIL_ACTION_UNAUTHORIZED"

instance FromJSON URLMapAuthFailAction where
    parseJSON = parseJSONText "URLMapAuthFailAction"

instance ToJSON URLMapAuthFailAction where
    toJSON = toJSONText

-- | 30x code to use when performing redirects for the secure field. Defaults
-- to 302.
data URLMapRedirectHTTPResponseCode
    = RedirectHTTPResponseCodeUnspecified
      -- ^ @REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED@
      -- Not specified. 302 is assumed.
    | RedirectHTTPResponseCode301
      -- ^ @REDIRECT_HTTP_RESPONSE_CODE_301@
      -- 301 Moved Permanently code.
    | RedirectHTTPResponseCode302
      -- ^ @REDIRECT_HTTP_RESPONSE_CODE_302@
      -- 302 Moved Temporarily code.
    | RedirectHTTPResponseCode303
      -- ^ @REDIRECT_HTTP_RESPONSE_CODE_303@
      -- 303 See Other code.
    | RedirectHTTPResponseCode307
      -- ^ @REDIRECT_HTTP_RESPONSE_CODE_307@
      -- 307 Temporary Redirect code.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable URLMapRedirectHTTPResponseCode

instance FromHttpApiData URLMapRedirectHTTPResponseCode where
    parseQueryParam = \case
        "REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED" -> Right RedirectHTTPResponseCodeUnspecified
        "REDIRECT_HTTP_RESPONSE_CODE_301" -> Right RedirectHTTPResponseCode301
        "REDIRECT_HTTP_RESPONSE_CODE_302" -> Right RedirectHTTPResponseCode302
        "REDIRECT_HTTP_RESPONSE_CODE_303" -> Right RedirectHTTPResponseCode303
        "REDIRECT_HTTP_RESPONSE_CODE_307" -> Right RedirectHTTPResponseCode307
        x -> Left ("Unable to parse URLMapRedirectHTTPResponseCode from: " <> x)

instance ToHttpApiData URLMapRedirectHTTPResponseCode where
    toQueryParam = \case
        RedirectHTTPResponseCodeUnspecified -> "REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED"
        RedirectHTTPResponseCode301 -> "REDIRECT_HTTP_RESPONSE_CODE_301"
        RedirectHTTPResponseCode302 -> "REDIRECT_HTTP_RESPONSE_CODE_302"
        RedirectHTTPResponseCode303 -> "REDIRECT_HTTP_RESPONSE_CODE_303"
        RedirectHTTPResponseCode307 -> "REDIRECT_HTTP_RESPONSE_CODE_307"

instance FromJSON URLMapRedirectHTTPResponseCode where
    parseJSON = parseJSONText "URLMapRedirectHTTPResponseCode"

instance ToJSON URLMapRedirectHTTPResponseCode where
    toJSON = toJSONText

-- | The action to take on matched requests.
data FirewallRuleAction
    = UnspecifiedAction
      -- ^ @UNSPECIFIED_ACTION@
    | Allow
      -- ^ @ALLOW@
      -- Matching requests are allowed.
    | Deny
      -- ^ @DENY@
      -- Matching requests are denied.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FirewallRuleAction

instance FromHttpApiData FirewallRuleAction where
    parseQueryParam = \case
        "UNSPECIFIED_ACTION" -> Right UnspecifiedAction
        "ALLOW" -> Right Allow
        "DENY" -> Right Deny
        x -> Left ("Unable to parse FirewallRuleAction from: " <> x)

instance ToHttpApiData FirewallRuleAction where
    toQueryParam = \case
        UnspecifiedAction -> "UNSPECIFIED_ACTION"
        Allow -> "ALLOW"
        Deny -> "DENY"

instance FromJSON FirewallRuleAction where
    parseJSON = parseJSONText "FirewallRuleAction"

instance ToJSON FirewallRuleAction where
    toJSON = toJSONText

-- | SSL management type for this domain. If AUTOMATIC, a managed certificate
-- is automatically provisioned. If MANUAL, certificate_id must be manually
-- specified in order to configure SSL for this domain.
data SSLSettingsSSLManagementType
    = SSLManagementTypeUnspecified
      -- ^ @SSL_MANAGEMENT_TYPE_UNSPECIFIED@
      -- Defaults to AUTOMATIC.
    | Automatic
      -- ^ @AUTOMATIC@
      -- SSL support for this domain is configured automatically. The mapped SSL
      -- certificate will be automatically renewed.
    | Manual
      -- ^ @MANUAL@
      -- SSL support for this domain is configured manually by the user. Either
      -- the domain has no SSL support or a user-obtained SSL certificate has
      -- been explictly mapped to this domain.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SSLSettingsSSLManagementType

instance FromHttpApiData SSLSettingsSSLManagementType where
    parseQueryParam = \case
        "SSL_MANAGEMENT_TYPE_UNSPECIFIED" -> Right SSLManagementTypeUnspecified
        "AUTOMATIC" -> Right Automatic
        "MANUAL" -> Right Manual
        x -> Left ("Unable to parse SSLSettingsSSLManagementType from: " <> x)

instance ToHttpApiData SSLSettingsSSLManagementType where
    toQueryParam = \case
        SSLManagementTypeUnspecified -> "SSL_MANAGEMENT_TYPE_UNSPECIFIED"
        Automatic -> "AUTOMATIC"
        Manual -> "MANUAL"

instance FromJSON SSLSettingsSSLManagementType where
    parseJSON = parseJSONText "SSLSettingsSSLManagementType"

instance ToJSON SSLSettingsSSLManagementType where
    toJSON = toJSONText

-- | Level of login required to access this resource. Defaults to optional.
data APIConfigHandlerLogin
    = ACHLLoginUnspecified
      -- ^ @LOGIN_UNSPECIFIED@
      -- Not specified. LOGIN_OPTIONAL is assumed.
    | ACHLLoginOptional
      -- ^ @LOGIN_OPTIONAL@
      -- Does not require that the user is signed in.
    | ACHLLoginAdmin
      -- ^ @LOGIN_ADMIN@
      -- If the user is not signed in, the auth_fail_action is taken. In
      -- addition, if the user is not an administrator for the application, they
      -- are given an error message regardless of auth_fail_action. If the user
      -- is an administrator, the handler proceeds.
    | ACHLLoginRequired
      -- ^ @LOGIN_REQUIRED@
      -- If the user has signed in, the handler proceeds normally. Otherwise, the
      -- auth_fail_action is taken.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable APIConfigHandlerLogin

instance FromHttpApiData APIConfigHandlerLogin where
    parseQueryParam = \case
        "LOGIN_UNSPECIFIED" -> Right ACHLLoginUnspecified
        "LOGIN_OPTIONAL" -> Right ACHLLoginOptional
        "LOGIN_ADMIN" -> Right ACHLLoginAdmin
        "LOGIN_REQUIRED" -> Right ACHLLoginRequired
        x -> Left ("Unable to parse APIConfigHandlerLogin from: " <> x)

instance ToHttpApiData APIConfigHandlerLogin where
    toQueryParam = \case
        ACHLLoginUnspecified -> "LOGIN_UNSPECIFIED"
        ACHLLoginOptional -> "LOGIN_OPTIONAL"
        ACHLLoginAdmin -> "LOGIN_ADMIN"
        ACHLLoginRequired -> "LOGIN_REQUIRED"

instance FromJSON APIConfigHandlerLogin where
    parseJSON = parseJSONText "APIConfigHandlerLogin"

instance ToJSON APIConfigHandlerLogin where
    toJSON = toJSONText
