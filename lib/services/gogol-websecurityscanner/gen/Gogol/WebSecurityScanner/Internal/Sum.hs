{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.WebSecurityScanner.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.WebSecurityScanner.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Finding_Severity
    Finding_Severity
      ( Finding_Severity_SEVERITYUNSPECIFIED,
        Finding_Severity_Critical,
        Finding_Severity_High,
        Finding_Severity_Medium,
        Finding_Severity_Low,
        ..
      ),

    -- * ScanConfig_ExportToSecurityCommandCenter
    ScanConfig_ExportToSecurityCommandCenter
      ( ScanConfig_ExportToSecurityCommandCenter_EXPORTTOSECURITYCOMMANDCENTERUNSPECIFIED,
        ScanConfig_ExportToSecurityCommandCenter_Enabled,
        ScanConfig_ExportToSecurityCommandCenter_Disabled,
        ..
      ),

    -- * ScanConfig_RiskLevel
    ScanConfig_RiskLevel
      ( ScanConfig_RiskLevel_RISKLEVELUNSPECIFIED,
        ScanConfig_RiskLevel_Normal,
        ScanConfig_RiskLevel_Low,
        ..
      ),

    -- * ScanConfig_UserAgent
    ScanConfig_UserAgent
      ( ScanConfig_UserAgent_USERAGENTUNSPECIFIED,
        ScanConfig_UserAgent_CHROMELINUX,
        ScanConfig_UserAgent_CHROMEANDROID,
        ScanConfig_UserAgent_SAFARIIPHONE,
        ..
      ),

    -- * ScanConfigError_Code
    ScanConfigError_Code
      ( ScanConfigError_Code_CODEUNSPECIFIED,
        ScanConfigError_Code_OK,
        ScanConfigError_Code_INTERNALERROR,
        ScanConfigError_Code_APPENGINEAPIBACKENDERROR,
        ScanConfigError_Code_APPENGINEAPINOTACCESSIBLE,
        ScanConfigError_Code_APPENGINEDEFAULTHOSTMISSING,
        ScanConfigError_Code_CANNOTUSEGOOGLECOMACCOUNT,
        ScanConfigError_Code_CANNOTUSEOWNERACCOUNT,
        ScanConfigError_Code_COMPUTEAPIBACKENDERROR,
        ScanConfigError_Code_COMPUTEAPINOTACCESSIBLE,
        ScanConfigError_Code_CUSTOMLOGINURLDOESNOTBELONGTOCURRENTPROJECT,
        ScanConfigError_Code_CUSTOMLOGINURLMALFORMED,
        ScanConfigError_Code_CUSTOMLOGINURLMAPPEDTONONROUTABLEADDRESS,
        ScanConfigError_Code_CUSTOMLOGINURLMAPPEDTOUNRESERVEDADDRESS,
        ScanConfigError_Code_CUSTOMLOGINURLHASNONROUTABLEIPADDRESS,
        ScanConfigError_Code_CUSTOMLOGINURLHASUNRESERVEDIPADDRESS,
        ScanConfigError_Code_DUPLICATESCANNAME,
        ScanConfigError_Code_INVALIDFIELDVALUE,
        ScanConfigError_Code_FAILEDTOAUTHENTICATETOTARGET,
        ScanConfigError_Code_FINDINGTYPEUNSPECIFIED,
        ScanConfigError_Code_FORBIDDENTOSCANCOMPUTE,
        ScanConfigError_Code_FORBIDDENUPDATETOMANAGEDSCAN,
        ScanConfigError_Code_MALFORMEDFILTER,
        ScanConfigError_Code_MALFORMEDRESOURCENAME,
        ScanConfigError_Code_PROJECTINACTIVE,
        ScanConfigError_Code_REQUIREDFIELD,
        ScanConfigError_Code_RESOURCENAMEINCONSISTENT,
        ScanConfigError_Code_SCANALREADYRUNNING,
        ScanConfigError_Code_SCANNOTRUNNING,
        ScanConfigError_Code_SEEDURLDOESNOTBELONGTOCURRENTPROJECT,
        ScanConfigError_Code_SEEDURLMALFORMED,
        ScanConfigError_Code_SEEDURLMAPPEDTONONROUTABLEADDRESS,
        ScanConfigError_Code_SEEDURLMAPPEDTOUNRESERVEDADDRESS,
        ScanConfigError_Code_SEEDURLHASNONROUTABLEIPADDRESS,
        ScanConfigError_Code_SEEDURLHASUNRESERVEDIPADDRESS,
        ScanConfigError_Code_SERVICEACCOUNTNOTCONFIGURED,
        ScanConfigError_Code_TOOMANYSCANS,
        ScanConfigError_Code_UNABLETORESOLVEPROJECTINFO,
        ScanConfigError_Code_UNSUPPORTEDBLACKLISTPATTERNFORMAT,
        ScanConfigError_Code_UNSUPPORTEDFILTER,
        ScanConfigError_Code_UNSUPPORTEDFINDINGTYPE,
        ScanConfigError_Code_UNSUPPORTEDURLSCHEME,
        ..
      ),

    -- * ScanRun_ExecutionState
    ScanRun_ExecutionState
      ( ScanRun_ExecutionState_EXECUTIONSTATEUNSPECIFIED,
        ScanRun_ExecutionState_Queued,
        ScanRun_ExecutionState_Scanning,
        ScanRun_ExecutionState_Finished,
        ..
      ),

    -- * ScanRun_ResultState
    ScanRun_ResultState
      ( ScanRun_ResultState_RESULTSTATEUNSPECIFIED,
        ScanRun_ResultState_Success,
        ScanRun_ResultState_Error',
        ScanRun_ResultState_Killed,
        ..
      ),

    -- * ScanRunErrorTrace_Code
    ScanRunErrorTrace_Code
      ( ScanRunErrorTrace_Code_CODEUNSPECIFIED,
        ScanRunErrorTrace_Code_INTERNALERROR,
        ScanRunErrorTrace_Code_SCANCONFIGISSUE,
        ScanRunErrorTrace_Code_AUTHENTICATIONCONFIGISSUE,
        ScanRunErrorTrace_Code_TIMEDOUTWHILESCANNING,
        ScanRunErrorTrace_Code_TOOMANYREDIRECTS,
        ScanRunErrorTrace_Code_TOOMANYHTTPERRORS,
        ScanRunErrorTrace_Code_STARTINGURLSCRAWLHTTPERRORS,
        ..
      ),

    -- * ScanRunWarningTrace_Code
    ScanRunWarningTrace_Code
      ( ScanRunWarningTrace_Code_CODEUNSPECIFIED,
        ScanRunWarningTrace_Code_INSUFFICIENTCRAWLRESULTS,
        ScanRunWarningTrace_Code_TOOMANYCRAWLRESULTS,
        ScanRunWarningTrace_Code_TOOMANYFUZZTASKS,
        ScanRunWarningTrace_Code_BLOCKEDBYIAP,
        ScanRunWarningTrace_Code_NOSTARTINGURLFOUNDFORMANAGEDSCAN,
        ..
      ),

    -- * Xss_AttackVector
    Xss_AttackVector
      ( Xss_AttackVector_ATTACKVECTORUNSPECIFIED,
        Xss_AttackVector_LOCALSTORAGE,
        Xss_AttackVector_SESSIONSTORAGE,
        Xss_AttackVector_WINDOWNAME,
        Xss_AttackVector_Referrer,
        Xss_AttackVector_FORMINPUT,
        Xss_AttackVector_Cookie,
        Xss_AttackVector_POSTMESSAGE,
        Xss_AttackVector_GETPARAMETERS,
        Xss_AttackVector_URLFRAGMENT,
        Xss_AttackVector_HTMLCOMMENT,
        Xss_AttackVector_POSTPARAMETERS,
        Xss_AttackVector_Protocol,
        Xss_AttackVector_STOREDXSS,
        Xss_AttackVector_SAMEORIGIN,
        Xss_AttackVector_USERCONTROLLABLEURL,
        ..
      ),

    -- * Xxe_PayloadLocation
    Xxe_PayloadLocation
      ( Xxe_PayloadLocation_LOCATIONUNSPECIFIED,
        Xxe_PayloadLocation_COMPLETEREQUESTBODY,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Output only. The severity level of the reported vulnerability.
newtype Finding_Severity = Finding_Severity {fromFinding_Severity :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No severity specified. The default value.
pattern Finding_Severity_SEVERITYUNSPECIFIED :: Finding_Severity
pattern Finding_Severity_SEVERITYUNSPECIFIED = Finding_Severity "SEVERITY_UNSPECIFIED"

-- | Critical severity.
pattern Finding_Severity_Critical :: Finding_Severity
pattern Finding_Severity_Critical = Finding_Severity "CRITICAL"

-- | High severity.
pattern Finding_Severity_High :: Finding_Severity
pattern Finding_Severity_High = Finding_Severity "HIGH"

-- | Medium severity.
pattern Finding_Severity_Medium :: Finding_Severity
pattern Finding_Severity_Medium = Finding_Severity "MEDIUM"

-- | Low severity.
pattern Finding_Severity_Low :: Finding_Severity
pattern Finding_Severity_Low = Finding_Severity "LOW"

{-# COMPLETE
  Finding_Severity_SEVERITYUNSPECIFIED,
  Finding_Severity_Critical,
  Finding_Severity_High,
  Finding_Severity_Medium,
  Finding_Severity_Low,
  Finding_Severity
  #-}

-- | Controls export of scan configurations and results to Security Command Center.
newtype ScanConfig_ExportToSecurityCommandCenter = ScanConfig_ExportToSecurityCommandCenter {fromScanConfig_ExportToSecurityCommandCenter :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Use default, which is ENABLED.
pattern ScanConfig_ExportToSecurityCommandCenter_EXPORTTOSECURITYCOMMANDCENTERUNSPECIFIED :: ScanConfig_ExportToSecurityCommandCenter
pattern ScanConfig_ExportToSecurityCommandCenter_EXPORTTOSECURITYCOMMANDCENTERUNSPECIFIED = ScanConfig_ExportToSecurityCommandCenter "EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED"

-- | Export results of this scan to Security Command Center.
pattern ScanConfig_ExportToSecurityCommandCenter_Enabled :: ScanConfig_ExportToSecurityCommandCenter
pattern ScanConfig_ExportToSecurityCommandCenter_Enabled = ScanConfig_ExportToSecurityCommandCenter "ENABLED"

-- | Do not export results of this scan to Security Command Center.
pattern ScanConfig_ExportToSecurityCommandCenter_Disabled :: ScanConfig_ExportToSecurityCommandCenter
pattern ScanConfig_ExportToSecurityCommandCenter_Disabled = ScanConfig_ExportToSecurityCommandCenter "DISABLED"

{-# COMPLETE
  ScanConfig_ExportToSecurityCommandCenter_EXPORTTOSECURITYCOMMANDCENTERUNSPECIFIED,
  ScanConfig_ExportToSecurityCommandCenter_Enabled,
  ScanConfig_ExportToSecurityCommandCenter_Disabled,
  ScanConfig_ExportToSecurityCommandCenter
  #-}

-- | The risk level selected for the scan
newtype ScanConfig_RiskLevel = ScanConfig_RiskLevel {fromScanConfig_RiskLevel :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Use default, which is NORMAL.
pattern ScanConfig_RiskLevel_RISKLEVELUNSPECIFIED :: ScanConfig_RiskLevel
pattern ScanConfig_RiskLevel_RISKLEVELUNSPECIFIED = ScanConfig_RiskLevel "RISK_LEVEL_UNSPECIFIED"

-- | Normal scanning (Recommended)
pattern ScanConfig_RiskLevel_Normal :: ScanConfig_RiskLevel
pattern ScanConfig_RiskLevel_Normal = ScanConfig_RiskLevel "NORMAL"

-- | Lower impact scanning
pattern ScanConfig_RiskLevel_Low :: ScanConfig_RiskLevel
pattern ScanConfig_RiskLevel_Low = ScanConfig_RiskLevel "LOW"

{-# COMPLETE
  ScanConfig_RiskLevel_RISKLEVELUNSPECIFIED,
  ScanConfig_RiskLevel_Normal,
  ScanConfig_RiskLevel_Low,
  ScanConfig_RiskLevel
  #-}

-- | The user agent used during scanning.
newtype ScanConfig_UserAgent = ScanConfig_UserAgent {fromScanConfig_UserAgent :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The user agent is unknown. Service will default to CHROME_LINUX.
pattern ScanConfig_UserAgent_USERAGENTUNSPECIFIED :: ScanConfig_UserAgent
pattern ScanConfig_UserAgent_USERAGENTUNSPECIFIED = ScanConfig_UserAgent "USER_AGENT_UNSPECIFIED"

-- | Chrome on Linux. This is the service default if unspecified.
pattern ScanConfig_UserAgent_CHROMELINUX :: ScanConfig_UserAgent
pattern ScanConfig_UserAgent_CHROMELINUX = ScanConfig_UserAgent "CHROME_LINUX"

-- | Chrome on Android.
pattern ScanConfig_UserAgent_CHROMEANDROID :: ScanConfig_UserAgent
pattern ScanConfig_UserAgent_CHROMEANDROID = ScanConfig_UserAgent "CHROME_ANDROID"

-- | Safari on IPhone.
pattern ScanConfig_UserAgent_SAFARIIPHONE :: ScanConfig_UserAgent
pattern ScanConfig_UserAgent_SAFARIIPHONE = ScanConfig_UserAgent "SAFARI_IPHONE"

{-# COMPLETE
  ScanConfig_UserAgent_USERAGENTUNSPECIFIED,
  ScanConfig_UserAgent_CHROMELINUX,
  ScanConfig_UserAgent_CHROMEANDROID,
  ScanConfig_UserAgent_SAFARIIPHONE,
  ScanConfig_UserAgent
  #-}

-- | Output only. Indicates the reason code for a configuration failure.
newtype ScanConfigError_Code = ScanConfigError_Code {fromScanConfigError_Code :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | There is no error.
pattern ScanConfigError_Code_CODEUNSPECIFIED :: ScanConfigError_Code
pattern ScanConfigError_Code_CODEUNSPECIFIED = ScanConfigError_Code "CODE_UNSPECIFIED"

-- | There is no error.
pattern ScanConfigError_Code_OK :: ScanConfigError_Code
pattern ScanConfigError_Code_OK = ScanConfigError_Code "OK"

-- | Indicates an internal server error. Please DO NOT USE THIS ERROR CODE unless the root cause is truly unknown.
pattern ScanConfigError_Code_INTERNALERROR :: ScanConfigError_Code
pattern ScanConfigError_Code_INTERNALERROR = ScanConfigError_Code "INTERNAL_ERROR"

-- | One of the seed URLs is an App Engine URL but we cannot validate the scan settings due to an App Engine API backend error.
pattern ScanConfigError_Code_APPENGINEAPIBACKENDERROR :: ScanConfigError_Code
pattern ScanConfigError_Code_APPENGINEAPIBACKENDERROR = ScanConfigError_Code "APPENGINE_API_BACKEND_ERROR"

-- | One of the seed URLs is an App Engine URL but we cannot access the App Engine API to validate scan settings.
pattern ScanConfigError_Code_APPENGINEAPINOTACCESSIBLE :: ScanConfigError_Code
pattern ScanConfigError_Code_APPENGINEAPINOTACCESSIBLE = ScanConfigError_Code "APPENGINE_API_NOT_ACCESSIBLE"

-- | One of the seed URLs is an App Engine URL but the Default Host of the App Engine is not set.
pattern ScanConfigError_Code_APPENGINEDEFAULTHOSTMISSING :: ScanConfigError_Code
pattern ScanConfigError_Code_APPENGINEDEFAULTHOSTMISSING = ScanConfigError_Code "APPENGINE_DEFAULT_HOST_MISSING"

-- | Google corporate accounts can not be used for scanning.
pattern ScanConfigError_Code_CANNOTUSEGOOGLECOMACCOUNT :: ScanConfigError_Code
pattern ScanConfigError_Code_CANNOTUSEGOOGLECOMACCOUNT = ScanConfigError_Code "CANNOT_USE_GOOGLE_COM_ACCOUNT"

-- | The account of the scan creator can not be used for scanning.
pattern ScanConfigError_Code_CANNOTUSEOWNERACCOUNT :: ScanConfigError_Code
pattern ScanConfigError_Code_CANNOTUSEOWNERACCOUNT = ScanConfigError_Code "CANNOT_USE_OWNER_ACCOUNT"

-- | This scan targets Compute Engine, but we cannot validate scan settings due to a Compute Engine API backend error.
pattern ScanConfigError_Code_COMPUTEAPIBACKENDERROR :: ScanConfigError_Code
pattern ScanConfigError_Code_COMPUTEAPIBACKENDERROR = ScanConfigError_Code "COMPUTE_API_BACKEND_ERROR"

-- | This scan targets Compute Engine, but we cannot access the Compute Engine API to validate the scan settings.
pattern ScanConfigError_Code_COMPUTEAPINOTACCESSIBLE :: ScanConfigError_Code
pattern ScanConfigError_Code_COMPUTEAPINOTACCESSIBLE = ScanConfigError_Code "COMPUTE_API_NOT_ACCESSIBLE"

-- | The Custom Login URL does not belong to the current project.
pattern ScanConfigError_Code_CUSTOMLOGINURLDOESNOTBELONGTOCURRENTPROJECT :: ScanConfigError_Code
pattern ScanConfigError_Code_CUSTOMLOGINURLDOESNOTBELONGTOCURRENTPROJECT = ScanConfigError_Code "CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT"

-- | The Custom Login URL is malformed (can not be parsed).
pattern ScanConfigError_Code_CUSTOMLOGINURLMALFORMED :: ScanConfigError_Code
pattern ScanConfigError_Code_CUSTOMLOGINURLMALFORMED = ScanConfigError_Code "CUSTOM_LOGIN_URL_MALFORMED"

-- | The Custom Login URL is mapped to a non-routable IP address in DNS.
pattern ScanConfigError_Code_CUSTOMLOGINURLMAPPEDTONONROUTABLEADDRESS :: ScanConfigError_Code
pattern ScanConfigError_Code_CUSTOMLOGINURLMAPPEDTONONROUTABLEADDRESS = ScanConfigError_Code "CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS"

-- | The Custom Login URL is mapped to an IP address which is not reserved for the current project.
pattern ScanConfigError_Code_CUSTOMLOGINURLMAPPEDTOUNRESERVEDADDRESS :: ScanConfigError_Code
pattern ScanConfigError_Code_CUSTOMLOGINURLMAPPEDTOUNRESERVEDADDRESS = ScanConfigError_Code "CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS"

-- | The Custom Login URL has a non-routable IP address.
pattern ScanConfigError_Code_CUSTOMLOGINURLHASNONROUTABLEIPADDRESS :: ScanConfigError_Code
pattern ScanConfigError_Code_CUSTOMLOGINURLHASNONROUTABLEIPADDRESS = ScanConfigError_Code "CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS"

-- | The Custom Login URL has an IP address which is not reserved for the current project.
pattern ScanConfigError_Code_CUSTOMLOGINURLHASUNRESERVEDIPADDRESS :: ScanConfigError_Code
pattern ScanConfigError_Code_CUSTOMLOGINURLHASUNRESERVEDIPADDRESS = ScanConfigError_Code "CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS"

-- | Another scan with the same name (case-sensitive) already exists.
pattern ScanConfigError_Code_DUPLICATESCANNAME :: ScanConfigError_Code
pattern ScanConfigError_Code_DUPLICATESCANNAME = ScanConfigError_Code "DUPLICATE_SCAN_NAME"

-- | A field is set to an invalid value.
pattern ScanConfigError_Code_INVALIDFIELDVALUE :: ScanConfigError_Code
pattern ScanConfigError_Code_INVALIDFIELDVALUE = ScanConfigError_Code "INVALID_FIELD_VALUE"

-- | There was an error trying to authenticate to the scan target.
pattern ScanConfigError_Code_FAILEDTOAUTHENTICATETOTARGET :: ScanConfigError_Code
pattern ScanConfigError_Code_FAILEDTOAUTHENTICATETOTARGET = ScanConfigError_Code "FAILED_TO_AUTHENTICATE_TO_TARGET"

-- | Finding type value is not specified in the list findings request.
pattern ScanConfigError_Code_FINDINGTYPEUNSPECIFIED :: ScanConfigError_Code
pattern ScanConfigError_Code_FINDINGTYPEUNSPECIFIED = ScanConfigError_Code "FINDING_TYPE_UNSPECIFIED"

-- | Scan targets Compute Engine, yet current project was not whitelisted for Google Compute Engine Scanning Alpha access.
pattern ScanConfigError_Code_FORBIDDENTOSCANCOMPUTE :: ScanConfigError_Code
pattern ScanConfigError_Code_FORBIDDENTOSCANCOMPUTE = ScanConfigError_Code "FORBIDDEN_TO_SCAN_COMPUTE"

-- | User tries to update managed scan
pattern ScanConfigError_Code_FORBIDDENUPDATETOMANAGEDSCAN :: ScanConfigError_Code
pattern ScanConfigError_Code_FORBIDDENUPDATETOMANAGEDSCAN = ScanConfigError_Code "FORBIDDEN_UPDATE_TO_MANAGED_SCAN"

-- | The supplied filter is malformed. For example, it can not be parsed, does not have a filter type in expression, or the same filter type appears more than once.
pattern ScanConfigError_Code_MALFORMEDFILTER :: ScanConfigError_Code
pattern ScanConfigError_Code_MALFORMEDFILTER = ScanConfigError_Code "MALFORMED_FILTER"

-- | The supplied resource name is malformed (can not be parsed).
pattern ScanConfigError_Code_MALFORMEDRESOURCENAME :: ScanConfigError_Code
pattern ScanConfigError_Code_MALFORMEDRESOURCENAME = ScanConfigError_Code "MALFORMED_RESOURCE_NAME"

-- | The current project is not in an active state.
pattern ScanConfigError_Code_PROJECTINACTIVE :: ScanConfigError_Code
pattern ScanConfigError_Code_PROJECTINACTIVE = ScanConfigError_Code "PROJECT_INACTIVE"

-- | A required field is not set.
pattern ScanConfigError_Code_REQUIREDFIELD :: ScanConfigError_Code
pattern ScanConfigError_Code_REQUIREDFIELD = ScanConfigError_Code "REQUIRED_FIELD"

-- | Project id, scanconfig id, scanrun id, or finding id are not consistent with each other in resource name.
pattern ScanConfigError_Code_RESOURCENAMEINCONSISTENT :: ScanConfigError_Code
pattern ScanConfigError_Code_RESOURCENAMEINCONSISTENT = ScanConfigError_Code "RESOURCE_NAME_INCONSISTENT"

-- | The scan being requested to start is already running.
pattern ScanConfigError_Code_SCANALREADYRUNNING :: ScanConfigError_Code
pattern ScanConfigError_Code_SCANALREADYRUNNING = ScanConfigError_Code "SCAN_ALREADY_RUNNING"

-- | The scan that was requested to be stopped is not running.
pattern ScanConfigError_Code_SCANNOTRUNNING :: ScanConfigError_Code
pattern ScanConfigError_Code_SCANNOTRUNNING = ScanConfigError_Code "SCAN_NOT_RUNNING"

-- | One of the seed URLs does not belong to the current project.
pattern ScanConfigError_Code_SEEDURLDOESNOTBELONGTOCURRENTPROJECT :: ScanConfigError_Code
pattern ScanConfigError_Code_SEEDURLDOESNOTBELONGTOCURRENTPROJECT = ScanConfigError_Code "SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT"

-- | One of the seed URLs is malformed (can not be parsed).
pattern ScanConfigError_Code_SEEDURLMALFORMED :: ScanConfigError_Code
pattern ScanConfigError_Code_SEEDURLMALFORMED = ScanConfigError_Code "SEED_URL_MALFORMED"

-- | One of the seed URLs is mapped to a non-routable IP address in DNS.
pattern ScanConfigError_Code_SEEDURLMAPPEDTONONROUTABLEADDRESS :: ScanConfigError_Code
pattern ScanConfigError_Code_SEEDURLMAPPEDTONONROUTABLEADDRESS = ScanConfigError_Code "SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS"

-- | One of the seed URLs is mapped to an IP address which is not reserved for the current project.
pattern ScanConfigError_Code_SEEDURLMAPPEDTOUNRESERVEDADDRESS :: ScanConfigError_Code
pattern ScanConfigError_Code_SEEDURLMAPPEDTOUNRESERVEDADDRESS = ScanConfigError_Code "SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS"

-- | One of the seed URLs has on-routable IP address.
pattern ScanConfigError_Code_SEEDURLHASNONROUTABLEIPADDRESS :: ScanConfigError_Code
pattern ScanConfigError_Code_SEEDURLHASNONROUTABLEIPADDRESS = ScanConfigError_Code "SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS"

-- | One of the seed URLs has an IP address that is not reserved for the current project.
pattern ScanConfigError_Code_SEEDURLHASUNRESERVEDIPADDRESS :: ScanConfigError_Code
pattern ScanConfigError_Code_SEEDURLHASUNRESERVEDIPADDRESS = ScanConfigError_Code "SEED_URL_HAS_UNRESERVED_IP_ADDRESS"

-- | The Web Security Scanner service account is not configured under the project.
pattern ScanConfigError_Code_SERVICEACCOUNTNOTCONFIGURED :: ScanConfigError_Code
pattern ScanConfigError_Code_SERVICEACCOUNTNOTCONFIGURED = ScanConfigError_Code "SERVICE_ACCOUNT_NOT_CONFIGURED"

-- | A project has reached the maximum number of scans.
pattern ScanConfigError_Code_TOOMANYSCANS :: ScanConfigError_Code
pattern ScanConfigError_Code_TOOMANYSCANS = ScanConfigError_Code "TOO_MANY_SCANS"

-- | Resolving the details of the current project fails.
pattern ScanConfigError_Code_UNABLETORESOLVEPROJECTINFO :: ScanConfigError_Code
pattern ScanConfigError_Code_UNABLETORESOLVEPROJECTINFO = ScanConfigError_Code "UNABLE_TO_RESOLVE_PROJECT_INFO"

-- | One or more blacklist patterns were in the wrong format.
pattern ScanConfigError_Code_UNSUPPORTEDBLACKLISTPATTERNFORMAT :: ScanConfigError_Code
pattern ScanConfigError_Code_UNSUPPORTEDBLACKLISTPATTERNFORMAT = ScanConfigError_Code "UNSUPPORTED_BLACKLIST_PATTERN_FORMAT"

-- | The supplied filter is not supported.
pattern ScanConfigError_Code_UNSUPPORTEDFILTER :: ScanConfigError_Code
pattern ScanConfigError_Code_UNSUPPORTEDFILTER = ScanConfigError_Code "UNSUPPORTED_FILTER"

-- | The supplied finding type is not supported. For example, we do not provide findings of the given finding type.
pattern ScanConfigError_Code_UNSUPPORTEDFINDINGTYPE :: ScanConfigError_Code
pattern ScanConfigError_Code_UNSUPPORTEDFINDINGTYPE = ScanConfigError_Code "UNSUPPORTED_FINDING_TYPE"

-- | The URL scheme of one or more of the supplied URLs is not supported.
pattern ScanConfigError_Code_UNSUPPORTEDURLSCHEME :: ScanConfigError_Code
pattern ScanConfigError_Code_UNSUPPORTEDURLSCHEME = ScanConfigError_Code "UNSUPPORTED_URL_SCHEME"

{-# COMPLETE
  ScanConfigError_Code_CODEUNSPECIFIED,
  ScanConfigError_Code_OK,
  ScanConfigError_Code_INTERNALERROR,
  ScanConfigError_Code_APPENGINEAPIBACKENDERROR,
  ScanConfigError_Code_APPENGINEAPINOTACCESSIBLE,
  ScanConfigError_Code_APPENGINEDEFAULTHOSTMISSING,
  ScanConfigError_Code_CANNOTUSEGOOGLECOMACCOUNT,
  ScanConfigError_Code_CANNOTUSEOWNERACCOUNT,
  ScanConfigError_Code_COMPUTEAPIBACKENDERROR,
  ScanConfigError_Code_COMPUTEAPINOTACCESSIBLE,
  ScanConfigError_Code_CUSTOMLOGINURLDOESNOTBELONGTOCURRENTPROJECT,
  ScanConfigError_Code_CUSTOMLOGINURLMALFORMED,
  ScanConfigError_Code_CUSTOMLOGINURLMAPPEDTONONROUTABLEADDRESS,
  ScanConfigError_Code_CUSTOMLOGINURLMAPPEDTOUNRESERVEDADDRESS,
  ScanConfigError_Code_CUSTOMLOGINURLHASNONROUTABLEIPADDRESS,
  ScanConfigError_Code_CUSTOMLOGINURLHASUNRESERVEDIPADDRESS,
  ScanConfigError_Code_DUPLICATESCANNAME,
  ScanConfigError_Code_INVALIDFIELDVALUE,
  ScanConfigError_Code_FAILEDTOAUTHENTICATETOTARGET,
  ScanConfigError_Code_FINDINGTYPEUNSPECIFIED,
  ScanConfigError_Code_FORBIDDENTOSCANCOMPUTE,
  ScanConfigError_Code_FORBIDDENUPDATETOMANAGEDSCAN,
  ScanConfigError_Code_MALFORMEDFILTER,
  ScanConfigError_Code_MALFORMEDRESOURCENAME,
  ScanConfigError_Code_PROJECTINACTIVE,
  ScanConfigError_Code_REQUIREDFIELD,
  ScanConfigError_Code_RESOURCENAMEINCONSISTENT,
  ScanConfigError_Code_SCANALREADYRUNNING,
  ScanConfigError_Code_SCANNOTRUNNING,
  ScanConfigError_Code_SEEDURLDOESNOTBELONGTOCURRENTPROJECT,
  ScanConfigError_Code_SEEDURLMALFORMED,
  ScanConfigError_Code_SEEDURLMAPPEDTONONROUTABLEADDRESS,
  ScanConfigError_Code_SEEDURLMAPPEDTOUNRESERVEDADDRESS,
  ScanConfigError_Code_SEEDURLHASNONROUTABLEIPADDRESS,
  ScanConfigError_Code_SEEDURLHASUNRESERVEDIPADDRESS,
  ScanConfigError_Code_SERVICEACCOUNTNOTCONFIGURED,
  ScanConfigError_Code_TOOMANYSCANS,
  ScanConfigError_Code_UNABLETORESOLVEPROJECTINFO,
  ScanConfigError_Code_UNSUPPORTEDBLACKLISTPATTERNFORMAT,
  ScanConfigError_Code_UNSUPPORTEDFILTER,
  ScanConfigError_Code_UNSUPPORTEDFINDINGTYPE,
  ScanConfigError_Code_UNSUPPORTEDURLSCHEME,
  ScanConfigError_Code
  #-}

-- | Output only. The execution state of the ScanRun.
newtype ScanRun_ExecutionState = ScanRun_ExecutionState {fromScanRun_ExecutionState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Represents an invalid state caused by internal server error. This value should never be returned.
pattern ScanRun_ExecutionState_EXECUTIONSTATEUNSPECIFIED :: ScanRun_ExecutionState
pattern ScanRun_ExecutionState_EXECUTIONSTATEUNSPECIFIED = ScanRun_ExecutionState "EXECUTION_STATE_UNSPECIFIED"

-- | The scan is waiting in the queue.
pattern ScanRun_ExecutionState_Queued :: ScanRun_ExecutionState
pattern ScanRun_ExecutionState_Queued = ScanRun_ExecutionState "QUEUED"

-- | The scan is in progress.
pattern ScanRun_ExecutionState_Scanning :: ScanRun_ExecutionState
pattern ScanRun_ExecutionState_Scanning = ScanRun_ExecutionState "SCANNING"

-- | The scan is either finished or stopped by user.
pattern ScanRun_ExecutionState_Finished :: ScanRun_ExecutionState
pattern ScanRun_ExecutionState_Finished = ScanRun_ExecutionState "FINISHED"

{-# COMPLETE
  ScanRun_ExecutionState_EXECUTIONSTATEUNSPECIFIED,
  ScanRun_ExecutionState_Queued,
  ScanRun_ExecutionState_Scanning,
  ScanRun_ExecutionState_Finished,
  ScanRun_ExecutionState
  #-}

-- | Output only. The result state of the ScanRun. This field is only available after the execution state reaches \"FINISHED\".
newtype ScanRun_ResultState = ScanRun_ResultState {fromScanRun_ResultState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is returned when the ScanRun is not yet finished.
pattern ScanRun_ResultState_RESULTSTATEUNSPECIFIED :: ScanRun_ResultState
pattern ScanRun_ResultState_RESULTSTATEUNSPECIFIED = ScanRun_ResultState "RESULT_STATE_UNSPECIFIED"

-- | The scan finished without errors.
pattern ScanRun_ResultState_Success :: ScanRun_ResultState
pattern ScanRun_ResultState_Success = ScanRun_ResultState "SUCCESS"

-- | The scan finished with errors.
pattern ScanRun_ResultState_Error' :: ScanRun_ResultState
pattern ScanRun_ResultState_Error' = ScanRun_ResultState "ERROR"

-- | The scan was terminated by user.
pattern ScanRun_ResultState_Killed :: ScanRun_ResultState
pattern ScanRun_ResultState_Killed = ScanRun_ResultState "KILLED"

{-# COMPLETE
  ScanRun_ResultState_RESULTSTATEUNSPECIFIED,
  ScanRun_ResultState_Success,
  ScanRun_ResultState_Error',
  ScanRun_ResultState_Killed,
  ScanRun_ResultState
  #-}

-- | Output only. Indicates the error reason code.
newtype ScanRunErrorTrace_Code = ScanRunErrorTrace_Code {fromScanRunErrorTrace_Code :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value is never used.
pattern ScanRunErrorTrace_Code_CODEUNSPECIFIED :: ScanRunErrorTrace_Code
pattern ScanRunErrorTrace_Code_CODEUNSPECIFIED = ScanRunErrorTrace_Code "CODE_UNSPECIFIED"

-- | Indicates that the scan run failed due to an internal server error.
pattern ScanRunErrorTrace_Code_INTERNALERROR :: ScanRunErrorTrace_Code
pattern ScanRunErrorTrace_Code_INTERNALERROR = ScanRunErrorTrace_Code "INTERNAL_ERROR"

-- | Indicates a scan configuration error, usually due to outdated ScanConfig settings, such as starting_urls or the DNS configuration.
pattern ScanRunErrorTrace_Code_SCANCONFIGISSUE :: ScanRunErrorTrace_Code
pattern ScanRunErrorTrace_Code_SCANCONFIGISSUE = ScanRunErrorTrace_Code "SCAN_CONFIG_ISSUE"

-- | Indicates an authentication error, usually due to outdated ScanConfig authentication settings.
pattern ScanRunErrorTrace_Code_AUTHENTICATIONCONFIGISSUE :: ScanRunErrorTrace_Code
pattern ScanRunErrorTrace_Code_AUTHENTICATIONCONFIGISSUE = ScanRunErrorTrace_Code "AUTHENTICATION_CONFIG_ISSUE"

-- | Indicates a scan operation timeout, usually caused by a very large site.
pattern ScanRunErrorTrace_Code_TIMEDOUTWHILESCANNING :: ScanRunErrorTrace_Code
pattern ScanRunErrorTrace_Code_TIMEDOUTWHILESCANNING = ScanRunErrorTrace_Code "TIMED_OUT_WHILE_SCANNING"

-- | Indicates that a scan encountered excessive redirects, either to authentication or some other page outside of the scan scope.
pattern ScanRunErrorTrace_Code_TOOMANYREDIRECTS :: ScanRunErrorTrace_Code
pattern ScanRunErrorTrace_Code_TOOMANYREDIRECTS = ScanRunErrorTrace_Code "TOO_MANY_REDIRECTS"

-- | Indicates that a scan encountered numerous errors from the web site pages. When available, most/common/http/error/code field indicates the most common HTTP error code encountered during the scan.
pattern ScanRunErrorTrace_Code_TOOMANYHTTPERRORS :: ScanRunErrorTrace_Code
pattern ScanRunErrorTrace_Code_TOOMANYHTTPERRORS = ScanRunErrorTrace_Code "TOO_MANY_HTTP_ERRORS"

-- | Indicates that some of the starting web urls returned HTTP errors during the scan.
pattern ScanRunErrorTrace_Code_STARTINGURLSCRAWLHTTPERRORS :: ScanRunErrorTrace_Code
pattern ScanRunErrorTrace_Code_STARTINGURLSCRAWLHTTPERRORS = ScanRunErrorTrace_Code "STARTING_URLS_CRAWL_HTTP_ERRORS"

{-# COMPLETE
  ScanRunErrorTrace_Code_CODEUNSPECIFIED,
  ScanRunErrorTrace_Code_INTERNALERROR,
  ScanRunErrorTrace_Code_SCANCONFIGISSUE,
  ScanRunErrorTrace_Code_AUTHENTICATIONCONFIGISSUE,
  ScanRunErrorTrace_Code_TIMEDOUTWHILESCANNING,
  ScanRunErrorTrace_Code_TOOMANYREDIRECTS,
  ScanRunErrorTrace_Code_TOOMANYHTTPERRORS,
  ScanRunErrorTrace_Code_STARTINGURLSCRAWLHTTPERRORS,
  ScanRunErrorTrace_Code
  #-}

-- | Output only. Indicates the warning code.
newtype ScanRunWarningTrace_Code = ScanRunWarningTrace_Code {fromScanRunWarningTrace_Code :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value is never used.
pattern ScanRunWarningTrace_Code_CODEUNSPECIFIED :: ScanRunWarningTrace_Code
pattern ScanRunWarningTrace_Code_CODEUNSPECIFIED = ScanRunWarningTrace_Code "CODE_UNSPECIFIED"

-- | Indicates that a scan discovered an unexpectedly low number of URLs. This is sometimes caused by complex navigation features or by using a single URL for numerous pages.
pattern ScanRunWarningTrace_Code_INSUFFICIENTCRAWLRESULTS :: ScanRunWarningTrace_Code
pattern ScanRunWarningTrace_Code_INSUFFICIENTCRAWLRESULTS = ScanRunWarningTrace_Code "INSUFFICIENT_CRAWL_RESULTS"

-- | Indicates that a scan discovered too many URLs to test, or excessive redundant URLs.
pattern ScanRunWarningTrace_Code_TOOMANYCRAWLRESULTS :: ScanRunWarningTrace_Code
pattern ScanRunWarningTrace_Code_TOOMANYCRAWLRESULTS = ScanRunWarningTrace_Code "TOO_MANY_CRAWL_RESULTS"

-- | Indicates that too many tests have been generated for the scan. Customer should try reducing the number of starting URLs, increasing the QPS rate, or narrowing down the scope of the scan using the excluded patterns.
pattern ScanRunWarningTrace_Code_TOOMANYFUZZTASKS :: ScanRunWarningTrace_Code
pattern ScanRunWarningTrace_Code_TOOMANYFUZZTASKS = ScanRunWarningTrace_Code "TOO_MANY_FUZZ_TASKS"

-- | Indicates that a scan is blocked by IAP.
pattern ScanRunWarningTrace_Code_BLOCKEDBYIAP :: ScanRunWarningTrace_Code
pattern ScanRunWarningTrace_Code_BLOCKEDBYIAP = ScanRunWarningTrace_Code "BLOCKED_BY_IAP"

-- | Indicates that no seeds is found for a scan
pattern ScanRunWarningTrace_Code_NOSTARTINGURLFOUNDFORMANAGEDSCAN :: ScanRunWarningTrace_Code
pattern ScanRunWarningTrace_Code_NOSTARTINGURLFOUNDFORMANAGEDSCAN = ScanRunWarningTrace_Code "NO_STARTING_URL_FOUND_FOR_MANAGED_SCAN"

{-# COMPLETE
  ScanRunWarningTrace_Code_CODEUNSPECIFIED,
  ScanRunWarningTrace_Code_INSUFFICIENTCRAWLRESULTS,
  ScanRunWarningTrace_Code_TOOMANYCRAWLRESULTS,
  ScanRunWarningTrace_Code_TOOMANYFUZZTASKS,
  ScanRunWarningTrace_Code_BLOCKEDBYIAP,
  ScanRunWarningTrace_Code_NOSTARTINGURLFOUNDFORMANAGEDSCAN,
  ScanRunWarningTrace_Code
  #-}

-- | The attack vector of the payload triggering this XSS.
newtype Xss_AttackVector = Xss_AttackVector {fromXss_AttackVector :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown attack vector.
pattern Xss_AttackVector_ATTACKVECTORUNSPECIFIED :: Xss_AttackVector
pattern Xss_AttackVector_ATTACKVECTORUNSPECIFIED = Xss_AttackVector "ATTACK_VECTOR_UNSPECIFIED"

-- | The attack comes from fuzzing the browser\'s localStorage.
pattern Xss_AttackVector_LOCALSTORAGE :: Xss_AttackVector
pattern Xss_AttackVector_LOCALSTORAGE = Xss_AttackVector "LOCAL_STORAGE"

-- | The attack comes from fuzzing the browser\'s sessionStorage.
pattern Xss_AttackVector_SESSIONSTORAGE :: Xss_AttackVector
pattern Xss_AttackVector_SESSIONSTORAGE = Xss_AttackVector "SESSION_STORAGE"

-- | The attack comes from fuzzing the window\'s name property.
pattern Xss_AttackVector_WINDOWNAME :: Xss_AttackVector
pattern Xss_AttackVector_WINDOWNAME = Xss_AttackVector "WINDOW_NAME"

-- | The attack comes from fuzzing the referrer property.
pattern Xss_AttackVector_Referrer :: Xss_AttackVector
pattern Xss_AttackVector_Referrer = Xss_AttackVector "REFERRER"

-- | The attack comes from fuzzing an input element.
pattern Xss_AttackVector_FORMINPUT :: Xss_AttackVector
pattern Xss_AttackVector_FORMINPUT = Xss_AttackVector "FORM_INPUT"

-- | The attack comes from fuzzing the browser\'s cookies.
pattern Xss_AttackVector_Cookie :: Xss_AttackVector
pattern Xss_AttackVector_Cookie = Xss_AttackVector "COOKIE"

-- | The attack comes from hijacking the post messaging mechanism.
pattern Xss_AttackVector_POSTMESSAGE :: Xss_AttackVector
pattern Xss_AttackVector_POSTMESSAGE = Xss_AttackVector "POST_MESSAGE"

-- | The attack comes from fuzzing parameters in the url.
pattern Xss_AttackVector_GETPARAMETERS :: Xss_AttackVector
pattern Xss_AttackVector_GETPARAMETERS = Xss_AttackVector "GET_PARAMETERS"

-- | The attack comes from fuzzing the fragment in the url.
pattern Xss_AttackVector_URLFRAGMENT :: Xss_AttackVector
pattern Xss_AttackVector_URLFRAGMENT = Xss_AttackVector "URL_FRAGMENT"

-- | The attack comes from fuzzing the HTML comments.
pattern Xss_AttackVector_HTMLCOMMENT :: Xss_AttackVector
pattern Xss_AttackVector_HTMLCOMMENT = Xss_AttackVector "HTML_COMMENT"

-- | The attack comes from fuzzing the POST parameters.
pattern Xss_AttackVector_POSTPARAMETERS :: Xss_AttackVector
pattern Xss_AttackVector_POSTPARAMETERS = Xss_AttackVector "POST_PARAMETERS"

-- | The attack comes from fuzzing the protocol.
pattern Xss_AttackVector_Protocol :: Xss_AttackVector
pattern Xss_AttackVector_Protocol = Xss_AttackVector "PROTOCOL"

-- | The attack comes from the server side and is stored.
pattern Xss_AttackVector_STOREDXSS :: Xss_AttackVector
pattern Xss_AttackVector_STOREDXSS = Xss_AttackVector "STORED_XSS"

-- | The attack is a Same-Origin Method Execution attack via a GET parameter.
pattern Xss_AttackVector_SAMEORIGIN :: Xss_AttackVector
pattern Xss_AttackVector_SAMEORIGIN = Xss_AttackVector "SAME_ORIGIN"

-- | The attack payload is received from a third-party host via a URL that is user-controllable
pattern Xss_AttackVector_USERCONTROLLABLEURL :: Xss_AttackVector
pattern Xss_AttackVector_USERCONTROLLABLEURL = Xss_AttackVector "USER_CONTROLLABLE_URL"

{-# COMPLETE
  Xss_AttackVector_ATTACKVECTORUNSPECIFIED,
  Xss_AttackVector_LOCALSTORAGE,
  Xss_AttackVector_SESSIONSTORAGE,
  Xss_AttackVector_WINDOWNAME,
  Xss_AttackVector_Referrer,
  Xss_AttackVector_FORMINPUT,
  Xss_AttackVector_Cookie,
  Xss_AttackVector_POSTMESSAGE,
  Xss_AttackVector_GETPARAMETERS,
  Xss_AttackVector_URLFRAGMENT,
  Xss_AttackVector_HTMLCOMMENT,
  Xss_AttackVector_POSTPARAMETERS,
  Xss_AttackVector_Protocol,
  Xss_AttackVector_STOREDXSS,
  Xss_AttackVector_SAMEORIGIN,
  Xss_AttackVector_USERCONTROLLABLEURL,
  Xss_AttackVector
  #-}

-- | Location within the request where the payload was placed.
newtype Xxe_PayloadLocation = Xxe_PayloadLocation {fromXxe_PayloadLocation :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown Location.
pattern Xxe_PayloadLocation_LOCATIONUNSPECIFIED :: Xxe_PayloadLocation
pattern Xxe_PayloadLocation_LOCATIONUNSPECIFIED = Xxe_PayloadLocation "LOCATION_UNSPECIFIED"

-- | The XML payload replaced the complete request body.
pattern Xxe_PayloadLocation_COMPLETEREQUESTBODY :: Xxe_PayloadLocation
pattern Xxe_PayloadLocation_COMPLETEREQUESTBODY = Xxe_PayloadLocation "COMPLETE_REQUEST_BODY"

{-# COMPLETE
  Xxe_PayloadLocation_LOCATIONUNSPECIFIED,
  Xxe_PayloadLocation_COMPLETEREQUESTBODY,
  Xxe_PayloadLocation
  #-}
