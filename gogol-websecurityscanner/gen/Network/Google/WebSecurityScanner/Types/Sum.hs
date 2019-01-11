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

-- | Output only. The type of the Finding.
data FindingFindingType
    = FindingTypeUnspecified
      -- ^ @FINDING_TYPE_UNSPECIFIED@
      -- The invalid finding type.
    | MixedContent
      -- ^ @MIXED_CONTENT@
      -- A page that was served over HTTPS also resources over HTTP. A
      -- man-in-the-middle attacker could tamper with the HTTP resource and gain
      -- full access to the website that loads the resource or to monitor the
      -- actions taken by the user.
    | OutdatedLibrary
      -- ^ @OUTDATED_LIBRARY@
      -- The version of an included library is known to contain a security issue.
      -- The scanner checks the version of library in use against a known list of
      -- vulnerable libraries. False positives are possible if the version
      -- detection fails or if the library has been manually patched.
    | RoSettaFlash
      -- ^ @ROSETTA_FLASH@
      -- This type of vulnerability occurs when the value of a request parameter
      -- is reflected at the beginning of the response, for example, in requests
      -- using JSONP. Under certain circumstances, an attacker may be able to
      -- supply an alphanumeric-only Flash file in the vulnerable parameter
      -- causing the browser to execute the Flash file as if it originated on the
      -- vulnerable server.
    | XssCallback
      -- ^ @XSS_CALLBACK@
      -- A cross-site scripting (XSS) bug is found via JavaScript callback. For
      -- detailed explanations on XSS, see
      -- https:\/\/www.google.com\/about\/appsecurity\/learning\/xss\/.
    | XssError
      -- ^ @XSS_ERROR@
      -- A potential cross-site scripting (XSS) bug due to JavaScript breakage.
      -- In some circumstances, the application under test might modify the test
      -- string before it is parsed by the browser. When the browser attempts to
      -- runs this modified test string, it will likely break and throw a
      -- JavaScript execution error, thus an injection issue is occurring.
      -- However, it may not be exploitable. Manual verification is needed to see
      -- if the test string modifications can be evaded and confirm that the
      -- issue is in fact an XSS vulnerability. For detailed explanations on XSS,
      -- see https:\/\/www.google.com\/about\/appsecurity\/learning\/xss\/.
    | ClearTextPassword
      -- ^ @CLEAR_TEXT_PASSWORD@
      -- An application appears to be transmitting a password field in clear
      -- text. An attacker can eavesdrop network traffic and sniff the password
      -- field.
    | InvalidContentType
      -- ^ @INVALID_CONTENT_TYPE@
      -- An application returns sensitive content with an invalid content type,
      -- or without an \'X-Content-Type-Options: nosniff\' header.
    | XssAngularCallback
      -- ^ @XSS_ANGULAR_CALLBACK@
      -- A cross-site scripting (XSS) vulnerability in AngularJS module that
      -- occurs when a user-provided string is interpolated by Angular.
    | InvalidHeader
      -- ^ @INVALID_HEADER@
      -- A malformed or invalid valued header.
    | MisspelledSecurityHeaderName
      -- ^ @MISSPELLED_SECURITY_HEADER_NAME@
      -- Misspelled security header name.
    | MismatchingSecurityHeaderValues
      -- ^ @MISMATCHING_SECURITY_HEADER_VALUES@
      -- Mismatching values in a duplicate security header.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FindingFindingType

instance FromHttpApiData FindingFindingType where
    parseQueryParam = \case
        "FINDING_TYPE_UNSPECIFIED" -> Right FindingTypeUnspecified
        "MIXED_CONTENT" -> Right MixedContent
        "OUTDATED_LIBRARY" -> Right OutdatedLibrary
        "ROSETTA_FLASH" -> Right RoSettaFlash
        "XSS_CALLBACK" -> Right XssCallback
        "XSS_ERROR" -> Right XssError
        "CLEAR_TEXT_PASSWORD" -> Right ClearTextPassword
        "INVALID_CONTENT_TYPE" -> Right InvalidContentType
        "XSS_ANGULAR_CALLBACK" -> Right XssAngularCallback
        "INVALID_HEADER" -> Right InvalidHeader
        "MISSPELLED_SECURITY_HEADER_NAME" -> Right MisspelledSecurityHeaderName
        "MISMATCHING_SECURITY_HEADER_VALUES" -> Right MismatchingSecurityHeaderValues
        x -> Left ("Unable to parse FindingFindingType from: " <> x)

instance ToHttpApiData FindingFindingType where
    toQueryParam = \case
        FindingTypeUnspecified -> "FINDING_TYPE_UNSPECIFIED"
        MixedContent -> "MIXED_CONTENT"
        OutdatedLibrary -> "OUTDATED_LIBRARY"
        RoSettaFlash -> "ROSETTA_FLASH"
        XssCallback -> "XSS_CALLBACK"
        XssError -> "XSS_ERROR"
        ClearTextPassword -> "CLEAR_TEXT_PASSWORD"
        InvalidContentType -> "INVALID_CONTENT_TYPE"
        XssAngularCallback -> "XSS_ANGULAR_CALLBACK"
        InvalidHeader -> "INVALID_HEADER"
        MisspelledSecurityHeaderName -> "MISSPELLED_SECURITY_HEADER_NAME"
        MismatchingSecurityHeaderValues -> "MISMATCHING_SECURITY_HEADER_VALUES"

instance FromJSON FindingFindingType where
    parseJSON = parseJSONText "FindingFindingType"

instance ToJSON FindingFindingType where
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

-- | Output only. The finding type associated with the stats.
data FindingTypeStatsFindingType
    = FTSFTFindingTypeUnspecified
      -- ^ @FINDING_TYPE_UNSPECIFIED@
      -- The invalid finding type.
    | FTSFTMixedContent
      -- ^ @MIXED_CONTENT@
      -- A page that was served over HTTPS also resources over HTTP. A
      -- man-in-the-middle attacker could tamper with the HTTP resource and gain
      -- full access to the website that loads the resource or to monitor the
      -- actions taken by the user.
    | FTSFTOutdatedLibrary
      -- ^ @OUTDATED_LIBRARY@
      -- The version of an included library is known to contain a security issue.
      -- The scanner checks the version of library in use against a known list of
      -- vulnerable libraries. False positives are possible if the version
      -- detection fails or if the library has been manually patched.
    | FTSFTRoSettaFlash
      -- ^ @ROSETTA_FLASH@
      -- This type of vulnerability occurs when the value of a request parameter
      -- is reflected at the beginning of the response, for example, in requests
      -- using JSONP. Under certain circumstances, an attacker may be able to
      -- supply an alphanumeric-only Flash file in the vulnerable parameter
      -- causing the browser to execute the Flash file as if it originated on the
      -- vulnerable server.
    | FTSFTXssCallback
      -- ^ @XSS_CALLBACK@
      -- A cross-site scripting (XSS) bug is found via JavaScript callback. For
      -- detailed explanations on XSS, see
      -- https:\/\/www.google.com\/about\/appsecurity\/learning\/xss\/.
    | FTSFTXssError
      -- ^ @XSS_ERROR@
      -- A potential cross-site scripting (XSS) bug due to JavaScript breakage.
      -- In some circumstances, the application under test might modify the test
      -- string before it is parsed by the browser. When the browser attempts to
      -- runs this modified test string, it will likely break and throw a
      -- JavaScript execution error, thus an injection issue is occurring.
      -- However, it may not be exploitable. Manual verification is needed to see
      -- if the test string modifications can be evaded and confirm that the
      -- issue is in fact an XSS vulnerability. For detailed explanations on XSS,
      -- see https:\/\/www.google.com\/about\/appsecurity\/learning\/xss\/.
    | FTSFTClearTextPassword
      -- ^ @CLEAR_TEXT_PASSWORD@
      -- An application appears to be transmitting a password field in clear
      -- text. An attacker can eavesdrop network traffic and sniff the password
      -- field.
    | FTSFTInvalidContentType
      -- ^ @INVALID_CONTENT_TYPE@
      -- An application returns sensitive content with an invalid content type,
      -- or without an \'X-Content-Type-Options: nosniff\' header.
    | FTSFTXssAngularCallback
      -- ^ @XSS_ANGULAR_CALLBACK@
      -- A cross-site scripting (XSS) vulnerability in AngularJS module that
      -- occurs when a user-provided string is interpolated by Angular.
    | FTSFTInvalidHeader
      -- ^ @INVALID_HEADER@
      -- A malformed or invalid valued header.
    | FTSFTMisspelledSecurityHeaderName
      -- ^ @MISSPELLED_SECURITY_HEADER_NAME@
      -- Misspelled security header name.
    | FTSFTMismatchingSecurityHeaderValues
      -- ^ @MISMATCHING_SECURITY_HEADER_VALUES@
      -- Mismatching values in a duplicate security header.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FindingTypeStatsFindingType

instance FromHttpApiData FindingTypeStatsFindingType where
    parseQueryParam = \case
        "FINDING_TYPE_UNSPECIFIED" -> Right FTSFTFindingTypeUnspecified
        "MIXED_CONTENT" -> Right FTSFTMixedContent
        "OUTDATED_LIBRARY" -> Right FTSFTOutdatedLibrary
        "ROSETTA_FLASH" -> Right FTSFTRoSettaFlash
        "XSS_CALLBACK" -> Right FTSFTXssCallback
        "XSS_ERROR" -> Right FTSFTXssError
        "CLEAR_TEXT_PASSWORD" -> Right FTSFTClearTextPassword
        "INVALID_CONTENT_TYPE" -> Right FTSFTInvalidContentType
        "XSS_ANGULAR_CALLBACK" -> Right FTSFTXssAngularCallback
        "INVALID_HEADER" -> Right FTSFTInvalidHeader
        "MISSPELLED_SECURITY_HEADER_NAME" -> Right FTSFTMisspelledSecurityHeaderName
        "MISMATCHING_SECURITY_HEADER_VALUES" -> Right FTSFTMismatchingSecurityHeaderValues
        x -> Left ("Unable to parse FindingTypeStatsFindingType from: " <> x)

instance ToHttpApiData FindingTypeStatsFindingType where
    toQueryParam = \case
        FTSFTFindingTypeUnspecified -> "FINDING_TYPE_UNSPECIFIED"
        FTSFTMixedContent -> "MIXED_CONTENT"
        FTSFTOutdatedLibrary -> "OUTDATED_LIBRARY"
        FTSFTRoSettaFlash -> "ROSETTA_FLASH"
        FTSFTXssCallback -> "XSS_CALLBACK"
        FTSFTXssError -> "XSS_ERROR"
        FTSFTClearTextPassword -> "CLEAR_TEXT_PASSWORD"
        FTSFTInvalidContentType -> "INVALID_CONTENT_TYPE"
        FTSFTXssAngularCallback -> "XSS_ANGULAR_CALLBACK"
        FTSFTInvalidHeader -> "INVALID_HEADER"
        FTSFTMisspelledSecurityHeaderName -> "MISSPELLED_SECURITY_HEADER_NAME"
        FTSFTMismatchingSecurityHeaderValues -> "MISMATCHING_SECURITY_HEADER_VALUES"

instance FromJSON FindingTypeStatsFindingType where
    parseJSON = parseJSONText "FindingTypeStatsFindingType"

instance ToJSON FindingTypeStatsFindingType where
    toJSON = toJSONText
