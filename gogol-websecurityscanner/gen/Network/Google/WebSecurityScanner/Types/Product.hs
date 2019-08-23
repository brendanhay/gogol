{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.WebSecurityScanner.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.WebSecurityScanner.Types.Product where

import           Network.Google.Prelude
import           Network.Google.WebSecurityScanner.Types.Sum

-- | A FindingTypeStats resource represents stats regarding a specific
-- FindingType of Findings under a given ScanRun.
--
-- /See:/ 'findingTypeStats' smart constructor.
data FindingTypeStats =
  FindingTypeStats'
    { _ftsFindingCount :: !(Maybe (Textual Int32))
    , _ftsFindingType  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FindingTypeStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftsFindingCount'
--
-- * 'ftsFindingType'
findingTypeStats
    :: FindingTypeStats
findingTypeStats =
  FindingTypeStats' {_ftsFindingCount = Nothing, _ftsFindingType = Nothing}


-- | Output only. The count of findings belonging to this finding type.
ftsFindingCount :: Lens' FindingTypeStats (Maybe Int32)
ftsFindingCount
  = lens _ftsFindingCount
      (\ s a -> s{_ftsFindingCount = a})
      . mapping _Coerce

-- | Output only. The finding type associated with the stats.
ftsFindingType :: Lens' FindingTypeStats (Maybe Text)
ftsFindingType
  = lens _ftsFindingType
      (\ s a -> s{_ftsFindingType = a})

instance FromJSON FindingTypeStats where
        parseJSON
          = withObject "FindingTypeStats"
              (\ o ->
                 FindingTypeStats' <$>
                   (o .:? "findingCount") <*> (o .:? "findingType"))

instance ToJSON FindingTypeStats where
        toJSON FindingTypeStats'{..}
          = object
              (catMaybes
                 [("findingCount" .=) <$> _ftsFindingCount,
                  ("findingType" .=) <$> _ftsFindingType])

-- | Response for the \`ListFindings\` method.
--
-- /See:/ 'listFindingsResponse' smart constructor.
data ListFindingsResponse =
  ListFindingsResponse'
    { _lfrNextPageToken :: !(Maybe Text)
    , _lfrFindings      :: !(Maybe [Finding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListFindingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrNextPageToken'
--
-- * 'lfrFindings'
listFindingsResponse
    :: ListFindingsResponse
listFindingsResponse =
  ListFindingsResponse' {_lfrNextPageToken = Nothing, _lfrFindings = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lfrNextPageToken :: Lens' ListFindingsResponse (Maybe Text)
lfrNextPageToken
  = lens _lfrNextPageToken
      (\ s a -> s{_lfrNextPageToken = a})

-- | The list of Findings returned.
lfrFindings :: Lens' ListFindingsResponse [Finding]
lfrFindings
  = lens _lfrFindings (\ s a -> s{_lfrFindings = a}) .
      _Default
      . _Coerce

instance FromJSON ListFindingsResponse where
        parseJSON
          = withObject "ListFindingsResponse"
              (\ o ->
                 ListFindingsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "findings" .!= mempty))

instance ToJSON ListFindingsResponse where
        toJSON ListFindingsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lfrNextPageToken,
                  ("findings" .=) <$> _lfrFindings])

-- | Request for the \`StopScanRun\` method.
--
-- /See:/ 'stopScanRunRequest' smart constructor.
data StopScanRunRequest =
  StopScanRunRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StopScanRunRequest' with the minimum fields required to make a request.
--
stopScanRunRequest
    :: StopScanRunRequest
stopScanRunRequest = StopScanRunRequest'


instance FromJSON StopScanRunRequest where
        parseJSON
          = withObject "StopScanRunRequest"
              (\ o -> pure StopScanRunRequest')

instance ToJSON StopScanRunRequest where
        toJSON = const emptyObject

-- | Defines a custom error message used by CreateScanConfig and
-- UpdateScanConfig APIs when scan configuration validation fails. It is
-- also reported as part of a ScanRunErrorTrace message if scan validation
-- fails due to a scan configuration error.
--
-- /See:/ 'scanConfigError' smart constructor.
data ScanConfigError =
  ScanConfigError'
    { _sceFieldName :: !(Maybe Text)
    , _sceCode      :: !(Maybe ScanConfigErrorCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScanConfigError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sceFieldName'
--
-- * 'sceCode'
scanConfigError
    :: ScanConfigError
scanConfigError = ScanConfigError' {_sceFieldName = Nothing, _sceCode = Nothing}


-- | Output only. Indicates the full name of the ScanConfig field that
-- triggers this error, for example \"scan_config.max_qps\". This field is
-- provided for troubleshooting purposes only and its actual value can
-- change in the future.
sceFieldName :: Lens' ScanConfigError (Maybe Text)
sceFieldName
  = lens _sceFieldName (\ s a -> s{_sceFieldName = a})

-- | Output only. Indicates the reason code for a configuration failure.
sceCode :: Lens' ScanConfigError (Maybe ScanConfigErrorCode)
sceCode = lens _sceCode (\ s a -> s{_sceCode = a})

instance FromJSON ScanConfigError where
        parseJSON
          = withObject "ScanConfigError"
              (\ o ->
                 ScanConfigError' <$>
                   (o .:? "fieldName") <*> (o .:? "code"))

instance ToJSON ScanConfigError where
        toJSON ScanConfigError'{..}
          = object
              (catMaybes
                 [("fieldName" .=) <$> _sceFieldName,
                  ("code" .=) <$> _sceCode])

-- | Scan schedule configuration.
--
-- /See:/ 'schedule' smart constructor.
data Schedule =
  Schedule'
    { _sScheduleTime         :: !(Maybe DateTime')
    , _sIntervalDurationDays :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Schedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sScheduleTime'
--
-- * 'sIntervalDurationDays'
schedule
    :: Schedule
schedule =
  Schedule' {_sScheduleTime = Nothing, _sIntervalDurationDays = Nothing}


-- | A timestamp indicates when the next run will be scheduled. The value is
-- refreshed by the server after each run. If unspecified, it will default
-- to current server time, which means the scan will be scheduled to start
-- immediately.
sScheduleTime :: Lens' Schedule (Maybe UTCTime)
sScheduleTime
  = lens _sScheduleTime
      (\ s a -> s{_sScheduleTime = a})
      . mapping _DateTime

-- | Required. The duration of time between executions in days.
sIntervalDurationDays :: Lens' Schedule (Maybe Int32)
sIntervalDurationDays
  = lens _sIntervalDurationDays
      (\ s a -> s{_sIntervalDurationDays = a})
      . mapping _Coerce

instance FromJSON Schedule where
        parseJSON
          = withObject "Schedule"
              (\ o ->
                 Schedule' <$>
                   (o .:? "scheduleTime") <*>
                     (o .:? "intervalDurationDays"))

instance ToJSON Schedule where
        toJSON Schedule'{..}
          = object
              (catMaybes
                 [("scheduleTime" .=) <$> _sScheduleTime,
                  ("intervalDurationDays" .=) <$>
                    _sIntervalDurationDays])

-- | A Finding resource represents a vulnerability instance identified during
-- a ScanRun.
--
-- /See:/ 'finding' smart constructor.
data Finding =
  Finding'
    { _fFinalURL             :: !(Maybe Text)
    , _fHTTPMethod           :: !(Maybe Text)
    , _fReProductionURL      :: !(Maybe Text)
    , _fTrackingId           :: !(Maybe Text)
    , _fBody                 :: !(Maybe Text)
    , _fXss                  :: !(Maybe Xss)
    , _fVulnerableParameters :: !(Maybe VulnerableParameters)
    , _fOutdatedLibrary      :: !(Maybe OutdatedLibrary)
    , _fFuzzedURL            :: !(Maybe Text)
    , _fName                 :: !(Maybe Text)
    , _fFindingType          :: !(Maybe Text)
    , _fVulnerableHeaders    :: !(Maybe VulnerableHeaders)
    , _fViolatingResource    :: !(Maybe ViolatingResource)
    , _fForm                 :: !(Maybe Form)
    , _fFrameURL             :: !(Maybe Text)
    , _fDescription          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Finding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fFinalURL'
--
-- * 'fHTTPMethod'
--
-- * 'fReProductionURL'
--
-- * 'fTrackingId'
--
-- * 'fBody'
--
-- * 'fXss'
--
-- * 'fVulnerableParameters'
--
-- * 'fOutdatedLibrary'
--
-- * 'fFuzzedURL'
--
-- * 'fName'
--
-- * 'fFindingType'
--
-- * 'fVulnerableHeaders'
--
-- * 'fViolatingResource'
--
-- * 'fForm'
--
-- * 'fFrameURL'
--
-- * 'fDescription'
finding
    :: Finding
finding =
  Finding'
    { _fFinalURL = Nothing
    , _fHTTPMethod = Nothing
    , _fReProductionURL = Nothing
    , _fTrackingId = Nothing
    , _fBody = Nothing
    , _fXss = Nothing
    , _fVulnerableParameters = Nothing
    , _fOutdatedLibrary = Nothing
    , _fFuzzedURL = Nothing
    , _fName = Nothing
    , _fFindingType = Nothing
    , _fVulnerableHeaders = Nothing
    , _fViolatingResource = Nothing
    , _fForm = Nothing
    , _fFrameURL = Nothing
    , _fDescription = Nothing
    }


-- | Output only. The URL where the browser lands when the vulnerability is
-- detected.
fFinalURL :: Lens' Finding (Maybe Text)
fFinalURL
  = lens _fFinalURL (\ s a -> s{_fFinalURL = a})

-- | Output only. The http method of the request that triggered the
-- vulnerability, in uppercase.
fHTTPMethod :: Lens' Finding (Maybe Text)
fHTTPMethod
  = lens _fHTTPMethod (\ s a -> s{_fHTTPMethod = a})

-- | Output only. The URL containing human-readable payload that user can
-- leverage to reproduce the vulnerability.
fReProductionURL :: Lens' Finding (Maybe Text)
fReProductionURL
  = lens _fReProductionURL
      (\ s a -> s{_fReProductionURL = a})

-- | Output only. The tracking ID uniquely identifies a vulnerability
-- instance across multiple ScanRuns.
fTrackingId :: Lens' Finding (Maybe Text)
fTrackingId
  = lens _fTrackingId (\ s a -> s{_fTrackingId = a})

-- | Output only. The body of the request that triggered the vulnerability.
fBody :: Lens' Finding (Maybe Text)
fBody = lens _fBody (\ s a -> s{_fBody = a})

-- | Output only. An addon containing information reported for an XSS, if
-- any.
fXss :: Lens' Finding (Maybe Xss)
fXss = lens _fXss (\ s a -> s{_fXss = a})

-- | Output only. An addon containing information about request parameters
-- which were found to be vulnerable.
fVulnerableParameters :: Lens' Finding (Maybe VulnerableParameters)
fVulnerableParameters
  = lens _fVulnerableParameters
      (\ s a -> s{_fVulnerableParameters = a})

-- | Output only. An addon containing information about outdated libraries.
fOutdatedLibrary :: Lens' Finding (Maybe OutdatedLibrary)
fOutdatedLibrary
  = lens _fOutdatedLibrary
      (\ s a -> s{_fOutdatedLibrary = a})

-- | Output only. The URL produced by the server-side fuzzer and used in the
-- request that triggered the vulnerability.
fFuzzedURL :: Lens' Finding (Maybe Text)
fFuzzedURL
  = lens _fFuzzedURL (\ s a -> s{_fFuzzedURL = a})

-- | Output only. The resource name of the Finding. The name follows the
-- format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanruns\/{scanRunId}\/findings\/{findingId}\'.
-- The finding IDs are generated by the system.
fName :: Lens' Finding (Maybe Text)
fName = lens _fName (\ s a -> s{_fName = a})

-- | Output only. The type of the Finding. Detailed and up-to-date
-- information on findings can be found here:
-- https:\/\/cloud.google.com\/security-scanner\/docs\/scan-result-details
fFindingType :: Lens' Finding (Maybe Text)
fFindingType
  = lens _fFindingType (\ s a -> s{_fFindingType = a})

-- | Output only. An addon containing information about vulnerable or missing
-- HTTP headers.
fVulnerableHeaders :: Lens' Finding (Maybe VulnerableHeaders)
fVulnerableHeaders
  = lens _fVulnerableHeaders
      (\ s a -> s{_fVulnerableHeaders = a})

-- | Output only. An addon containing detailed information regarding any
-- resource causing the vulnerability such as JavaScript sources, image,
-- audio files, etc.
fViolatingResource :: Lens' Finding (Maybe ViolatingResource)
fViolatingResource
  = lens _fViolatingResource
      (\ s a -> s{_fViolatingResource = a})

-- | Output only. An addon containing information reported for a
-- vulnerability with an HTML form, if any.
fForm :: Lens' Finding (Maybe Form)
fForm = lens _fForm (\ s a -> s{_fForm = a})

-- | Output only. If the vulnerability was originated from nested IFrame, the
-- immediate parent IFrame is reported.
fFrameURL :: Lens' Finding (Maybe Text)
fFrameURL
  = lens _fFrameURL (\ s a -> s{_fFrameURL = a})

-- | Output only. The description of the vulnerability.
fDescription :: Lens' Finding (Maybe Text)
fDescription
  = lens _fDescription (\ s a -> s{_fDescription = a})

instance FromJSON Finding where
        parseJSON
          = withObject "Finding"
              (\ o ->
                 Finding' <$>
                   (o .:? "finalUrl") <*> (o .:? "httpMethod") <*>
                     (o .:? "reproductionUrl")
                     <*> (o .:? "trackingId")
                     <*> (o .:? "body")
                     <*> (o .:? "xss")
                     <*> (o .:? "vulnerableParameters")
                     <*> (o .:? "outdatedLibrary")
                     <*> (o .:? "fuzzedUrl")
                     <*> (o .:? "name")
                     <*> (o .:? "findingType")
                     <*> (o .:? "vulnerableHeaders")
                     <*> (o .:? "violatingResource")
                     <*> (o .:? "form")
                     <*> (o .:? "frameUrl")
                     <*> (o .:? "description"))

instance ToJSON Finding where
        toJSON Finding'{..}
          = object
              (catMaybes
                 [("finalUrl" .=) <$> _fFinalURL,
                  ("httpMethod" .=) <$> _fHTTPMethod,
                  ("reproductionUrl" .=) <$> _fReProductionURL,
                  ("trackingId" .=) <$> _fTrackingId,
                  ("body" .=) <$> _fBody, ("xss" .=) <$> _fXss,
                  ("vulnerableParameters" .=) <$>
                    _fVulnerableParameters,
                  ("outdatedLibrary" .=) <$> _fOutdatedLibrary,
                  ("fuzzedUrl" .=) <$> _fFuzzedURL,
                  ("name" .=) <$> _fName,
                  ("findingType" .=) <$> _fFindingType,
                  ("vulnerableHeaders" .=) <$> _fVulnerableHeaders,
                  ("violatingResource" .=) <$> _fViolatingResource,
                  ("form" .=) <$> _fForm,
                  ("frameUrl" .=) <$> _fFrameURL,
                  ("description" .=) <$> _fDescription])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Output only. Defines a warning trace message for ScanRun. Warning traces
-- provide customers with useful information that helps make the scanning
-- process more effective.
--
-- /See:/ 'scanRunWarningTrace' smart constructor.
newtype ScanRunWarningTrace =
  ScanRunWarningTrace'
    { _srwtCode :: Maybe ScanRunWarningTraceCode
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScanRunWarningTrace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srwtCode'
scanRunWarningTrace
    :: ScanRunWarningTrace
scanRunWarningTrace = ScanRunWarningTrace' {_srwtCode = Nothing}


-- | Output only. Indicates the warning code.
srwtCode :: Lens' ScanRunWarningTrace (Maybe ScanRunWarningTraceCode)
srwtCode = lens _srwtCode (\ s a -> s{_srwtCode = a})

instance FromJSON ScanRunWarningTrace where
        parseJSON
          = withObject "ScanRunWarningTrace"
              (\ o -> ScanRunWarningTrace' <$> (o .:? "code"))

instance ToJSON ScanRunWarningTrace where
        toJSON ScanRunWarningTrace'{..}
          = object (catMaybes [("code" .=) <$> _srwtCode])

-- | Response for the \`ListFindingTypeStats\` method.
--
-- /See:/ 'listFindingTypeStatsResponse' smart constructor.
newtype ListFindingTypeStatsResponse =
  ListFindingTypeStatsResponse'
    { _lftsrFindingTypeStats :: Maybe [FindingTypeStats]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListFindingTypeStatsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lftsrFindingTypeStats'
listFindingTypeStatsResponse
    :: ListFindingTypeStatsResponse
listFindingTypeStatsResponse =
  ListFindingTypeStatsResponse' {_lftsrFindingTypeStats = Nothing}


-- | The list of FindingTypeStats returned.
lftsrFindingTypeStats :: Lens' ListFindingTypeStatsResponse [FindingTypeStats]
lftsrFindingTypeStats
  = lens _lftsrFindingTypeStats
      (\ s a -> s{_lftsrFindingTypeStats = a})
      . _Default
      . _Coerce

instance FromJSON ListFindingTypeStatsResponse where
        parseJSON
          = withObject "ListFindingTypeStatsResponse"
              (\ o ->
                 ListFindingTypeStatsResponse' <$>
                   (o .:? "findingTypeStats" .!= mempty))

instance ToJSON ListFindingTypeStatsResponse where
        toJSON ListFindingTypeStatsResponse'{..}
          = object
              (catMaybes
                 [("findingTypeStats" .=) <$> _lftsrFindingTypeStats])

-- | Describes authentication configuration that uses a Google account.
--
-- /See:/ 'googleAccount' smart constructor.
data GoogleAccount =
  GoogleAccount'
    { _gaUsername :: !(Maybe Text)
    , _gaPassword :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaUsername'
--
-- * 'gaPassword'
googleAccount
    :: GoogleAccount
googleAccount = GoogleAccount' {_gaUsername = Nothing, _gaPassword = Nothing}


-- | Required. The user name of the Google account.
gaUsername :: Lens' GoogleAccount (Maybe Text)
gaUsername
  = lens _gaUsername (\ s a -> s{_gaUsername = a})

-- | Input only. Required. The password of the Google account. The credential
-- is stored encrypted and not returned in any response nor included in
-- audit logs.
gaPassword :: Lens' GoogleAccount (Maybe Text)
gaPassword
  = lens _gaPassword (\ s a -> s{_gaPassword = a})

instance FromJSON GoogleAccount where
        parseJSON
          = withObject "GoogleAccount"
              (\ o ->
                 GoogleAccount' <$>
                   (o .:? "username") <*> (o .:? "password"))

instance ToJSON GoogleAccount where
        toJSON GoogleAccount'{..}
          = object
              (catMaybes
                 [("username" .=) <$> _gaUsername,
                  ("password" .=) <$> _gaPassword])

-- | Information reported for an XSS.
--
-- /See:/ 'xss' smart constructor.
data Xss =
  Xss'
    { _xStackTraces  :: !(Maybe [Text])
    , _xErrorMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Xss' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'xStackTraces'
--
-- * 'xErrorMessage'
xss
    :: Xss
xss = Xss' {_xStackTraces = Nothing, _xErrorMessage = Nothing}


-- | Stack traces leading to the point where the XSS occurred.
xStackTraces :: Lens' Xss [Text]
xStackTraces
  = lens _xStackTraces (\ s a -> s{_xStackTraces = a})
      . _Default
      . _Coerce

-- | An error message generated by a javascript breakage.
xErrorMessage :: Lens' Xss (Maybe Text)
xErrorMessage
  = lens _xErrorMessage
      (\ s a -> s{_xErrorMessage = a})

instance FromJSON Xss where
        parseJSON
          = withObject "Xss"
              (\ o ->
                 Xss' <$>
                   (o .:? "stackTraces" .!= mempty) <*>
                     (o .:? "errorMessage"))

instance ToJSON Xss where
        toJSON Xss'{..}
          = object
              (catMaybes
                 [("stackTraces" .=) <$> _xStackTraces,
                  ("errorMessage" .=) <$> _xErrorMessage])

-- | Scan authentication configuration.
--
-- /See:/ 'authentication' smart constructor.
data Authentication =
  Authentication'
    { _aGoogleAccount :: !(Maybe GoogleAccount)
    , _aCustomAccount :: !(Maybe CustomAccount)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Authentication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aGoogleAccount'
--
-- * 'aCustomAccount'
authentication
    :: Authentication
authentication =
  Authentication' {_aGoogleAccount = Nothing, _aCustomAccount = Nothing}


-- | Authentication using a Google account.
aGoogleAccount :: Lens' Authentication (Maybe GoogleAccount)
aGoogleAccount
  = lens _aGoogleAccount
      (\ s a -> s{_aGoogleAccount = a})

-- | Authentication using a custom account.
aCustomAccount :: Lens' Authentication (Maybe CustomAccount)
aCustomAccount
  = lens _aCustomAccount
      (\ s a -> s{_aCustomAccount = a})

instance FromJSON Authentication where
        parseJSON
          = withObject "Authentication"
              (\ o ->
                 Authentication' <$>
                   (o .:? "googleAccount") <*> (o .:? "customAccount"))

instance ToJSON Authentication where
        toJSON Authentication'{..}
          = object
              (catMaybes
                 [("googleAccount" .=) <$> _aGoogleAccount,
                  ("customAccount" .=) <$> _aCustomAccount])

-- | Response for the \`ListCrawledUrls\` method.
--
-- /See:/ 'listCrawledURLsResponse' smart constructor.
data ListCrawledURLsResponse =
  ListCrawledURLsResponse'
    { _lcurNextPageToken :: !(Maybe Text)
    , _lcurCrawledURLs   :: !(Maybe [CrawledURL])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCrawledURLsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcurNextPageToken'
--
-- * 'lcurCrawledURLs'
listCrawledURLsResponse
    :: ListCrawledURLsResponse
listCrawledURLsResponse =
  ListCrawledURLsResponse'
    {_lcurNextPageToken = Nothing, _lcurCrawledURLs = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lcurNextPageToken :: Lens' ListCrawledURLsResponse (Maybe Text)
lcurNextPageToken
  = lens _lcurNextPageToken
      (\ s a -> s{_lcurNextPageToken = a})

-- | The list of CrawledUrls returned.
lcurCrawledURLs :: Lens' ListCrawledURLsResponse [CrawledURL]
lcurCrawledURLs
  = lens _lcurCrawledURLs
      (\ s a -> s{_lcurCrawledURLs = a})
      . _Default
      . _Coerce

instance FromJSON ListCrawledURLsResponse where
        parseJSON
          = withObject "ListCrawledURLsResponse"
              (\ o ->
                 ListCrawledURLsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "crawledUrls" .!= mempty))

instance ToJSON ListCrawledURLsResponse where
        toJSON ListCrawledURLsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcurNextPageToken,
                  ("crawledUrls" .=) <$> _lcurCrawledURLs])

-- | Information about vulnerable request parameters.
--
-- /See:/ 'vulnerableParameters' smart constructor.
newtype VulnerableParameters =
  VulnerableParameters'
    { _vpParameterNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VulnerableParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpParameterNames'
vulnerableParameters
    :: VulnerableParameters
vulnerableParameters = VulnerableParameters' {_vpParameterNames = Nothing}


-- | The vulnerable parameter names.
vpParameterNames :: Lens' VulnerableParameters [Text]
vpParameterNames
  = lens _vpParameterNames
      (\ s a -> s{_vpParameterNames = a})
      . _Default
      . _Coerce

instance FromJSON VulnerableParameters where
        parseJSON
          = withObject "VulnerableParameters"
              (\ o ->
                 VulnerableParameters' <$>
                   (o .:? "parameterNames" .!= mempty))

instance ToJSON VulnerableParameters where
        toJSON VulnerableParameters'{..}
          = object
              (catMaybes
                 [("parameterNames" .=) <$> _vpParameterNames])

-- | A CrawledUrl resource represents a URL that was crawled during a
-- ScanRun. Web Security Scanner Service crawls the web applications,
-- following all links within the scope of sites, to find the URLs to test
-- against.
--
-- /See:/ 'crawledURL' smart constructor.
data CrawledURL =
  CrawledURL'
    { _cuHTTPMethod :: !(Maybe Text)
    , _cuBody       :: !(Maybe Text)
    , _cuURL        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CrawledURL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuHTTPMethod'
--
-- * 'cuBody'
--
-- * 'cuURL'
crawledURL
    :: CrawledURL
crawledURL =
  CrawledURL' {_cuHTTPMethod = Nothing, _cuBody = Nothing, _cuURL = Nothing}


-- | Output only. The http method of the request that was used to visit the
-- URL, in uppercase.
cuHTTPMethod :: Lens' CrawledURL (Maybe Text)
cuHTTPMethod
  = lens _cuHTTPMethod (\ s a -> s{_cuHTTPMethod = a})

-- | Output only. The body of the request that was used to visit the URL.
cuBody :: Lens' CrawledURL (Maybe Text)
cuBody = lens _cuBody (\ s a -> s{_cuBody = a})

-- | Output only. The URL that was crawled.
cuURL :: Lens' CrawledURL (Maybe Text)
cuURL = lens _cuURL (\ s a -> s{_cuURL = a})

instance FromJSON CrawledURL where
        parseJSON
          = withObject "CrawledURL"
              (\ o ->
                 CrawledURL' <$>
                   (o .:? "httpMethod") <*> (o .:? "body") <*>
                     (o .:? "url"))

instance ToJSON CrawledURL where
        toJSON CrawledURL'{..}
          = object
              (catMaybes
                 [("httpMethod" .=) <$> _cuHTTPMethod,
                  ("body" .=) <$> _cuBody, ("url" .=) <$> _cuURL])

-- | Information reported for an outdated library.
--
-- /See:/ 'outdatedLibrary' smart constructor.
data OutdatedLibrary =
  OutdatedLibrary'
    { _olLearnMoreURLs :: !(Maybe [Text])
    , _olVersion       :: !(Maybe Text)
    , _olLibraryName   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OutdatedLibrary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olLearnMoreURLs'
--
-- * 'olVersion'
--
-- * 'olLibraryName'
outdatedLibrary
    :: OutdatedLibrary
outdatedLibrary =
  OutdatedLibrary'
    {_olLearnMoreURLs = Nothing, _olVersion = Nothing, _olLibraryName = Nothing}


-- | URLs to learn more information about the vulnerabilities in the library.
olLearnMoreURLs :: Lens' OutdatedLibrary [Text]
olLearnMoreURLs
  = lens _olLearnMoreURLs
      (\ s a -> s{_olLearnMoreURLs = a})
      . _Default
      . _Coerce

-- | The version number.
olVersion :: Lens' OutdatedLibrary (Maybe Text)
olVersion
  = lens _olVersion (\ s a -> s{_olVersion = a})

-- | The name of the outdated library.
olLibraryName :: Lens' OutdatedLibrary (Maybe Text)
olLibraryName
  = lens _olLibraryName
      (\ s a -> s{_olLibraryName = a})

instance FromJSON OutdatedLibrary where
        parseJSON
          = withObject "OutdatedLibrary"
              (\ o ->
                 OutdatedLibrary' <$>
                   (o .:? "learnMoreUrls" .!= mempty) <*>
                     (o .:? "version")
                     <*> (o .:? "libraryName"))

instance ToJSON OutdatedLibrary where
        toJSON OutdatedLibrary'{..}
          = object
              (catMaybes
                 [("learnMoreUrls" .=) <$> _olLearnMoreURLs,
                  ("version" .=) <$> _olVersion,
                  ("libraryName" .=) <$> _olLibraryName])

-- | Response for the \`ListScanRuns\` method.
--
-- /See:/ 'listScanRunsResponse' smart constructor.
data ListScanRunsResponse =
  ListScanRunsResponse'
    { _lsrrNextPageToken :: !(Maybe Text)
    , _lsrrScanRuns      :: !(Maybe [ScanRun])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListScanRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrrNextPageToken'
--
-- * 'lsrrScanRuns'
listScanRunsResponse
    :: ListScanRunsResponse
listScanRunsResponse =
  ListScanRunsResponse' {_lsrrNextPageToken = Nothing, _lsrrScanRuns = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lsrrNextPageToken :: Lens' ListScanRunsResponse (Maybe Text)
lsrrNextPageToken
  = lens _lsrrNextPageToken
      (\ s a -> s{_lsrrNextPageToken = a})

-- | The list of ScanRuns returned.
lsrrScanRuns :: Lens' ListScanRunsResponse [ScanRun]
lsrrScanRuns
  = lens _lsrrScanRuns (\ s a -> s{_lsrrScanRuns = a})
      . _Default
      . _Coerce

instance FromJSON ListScanRunsResponse where
        parseJSON
          = withObject "ListScanRunsResponse"
              (\ o ->
                 ListScanRunsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "scanRuns" .!= mempty))

instance ToJSON ListScanRunsResponse where
        toJSON ListScanRunsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrrNextPageToken,
                  ("scanRuns" .=) <$> _lsrrScanRuns])

-- | Describes a HTTP Header.
--
-- /See:/ 'header' smart constructor.
data Header =
  Header'
    { _hValue :: !(Maybe Text)
    , _hName  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Header' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hValue'
--
-- * 'hName'
header
    :: Header
header = Header' {_hValue = Nothing, _hName = Nothing}


-- | Header value.
hValue :: Lens' Header (Maybe Text)
hValue = lens _hValue (\ s a -> s{_hValue = a})

-- | Header name.
hName :: Lens' Header (Maybe Text)
hName = lens _hName (\ s a -> s{_hName = a})

instance FromJSON Header where
        parseJSON
          = withObject "Header"
              (\ o ->
                 Header' <$> (o .:? "value") <*> (o .:? "name"))

instance ToJSON Header where
        toJSON Header'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _hValue, ("name" .=) <$> _hName])

-- | Output only. Defines an error trace message for a ScanRun.
--
-- /See:/ 'scanRunErrorTrace' smart constructor.
data ScanRunErrorTrace =
  ScanRunErrorTrace'
    { _sretMostCommonHTTPErrorCode :: !(Maybe (Textual Int32))
    , _sretScanConfigError         :: !(Maybe ScanConfigError)
    , _sretCode                    :: !(Maybe ScanRunErrorTraceCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScanRunErrorTrace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sretMostCommonHTTPErrorCode'
--
-- * 'sretScanConfigError'
--
-- * 'sretCode'
scanRunErrorTrace
    :: ScanRunErrorTrace
scanRunErrorTrace =
  ScanRunErrorTrace'
    { _sretMostCommonHTTPErrorCode = Nothing
    , _sretScanConfigError = Nothing
    , _sretCode = Nothing
    }


-- | Output only. If the scan encounters TOO_MANY_HTTP_ERRORS, this field
-- indicates the most common HTTP error code, if such is available. For
-- example, if this code is 404, the scan has encountered too many
-- NOT_FOUND responses.
sretMostCommonHTTPErrorCode :: Lens' ScanRunErrorTrace (Maybe Int32)
sretMostCommonHTTPErrorCode
  = lens _sretMostCommonHTTPErrorCode
      (\ s a -> s{_sretMostCommonHTTPErrorCode = a})
      . mapping _Coerce

-- | Output only. If the scan encounters SCAN_CONFIG_ISSUE error, this field
-- has the error message encountered during scan configuration validation
-- that is performed before each scan run.
sretScanConfigError :: Lens' ScanRunErrorTrace (Maybe ScanConfigError)
sretScanConfigError
  = lens _sretScanConfigError
      (\ s a -> s{_sretScanConfigError = a})

-- | Output only. Indicates the error reason code.
sretCode :: Lens' ScanRunErrorTrace (Maybe ScanRunErrorTraceCode)
sretCode = lens _sretCode (\ s a -> s{_sretCode = a})

instance FromJSON ScanRunErrorTrace where
        parseJSON
          = withObject "ScanRunErrorTrace"
              (\ o ->
                 ScanRunErrorTrace' <$>
                   (o .:? "mostCommonHttpErrorCode") <*>
                     (o .:? "scanConfigError")
                     <*> (o .:? "code"))

instance ToJSON ScanRunErrorTrace where
        toJSON ScanRunErrorTrace'{..}
          = object
              (catMaybes
                 [("mostCommonHttpErrorCode" .=) <$>
                    _sretMostCommonHTTPErrorCode,
                  ("scanConfigError" .=) <$> _sretScanConfigError,
                  ("code" .=) <$> _sretCode])

-- | Response for the \`ListScanConfigs\` method.
--
-- /See:/ 'listScanConfigsResponse' smart constructor.
data ListScanConfigsResponse =
  ListScanConfigsResponse'
    { _lscrNextPageToken :: !(Maybe Text)
    , _lscrScanConfigs   :: !(Maybe [ScanConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListScanConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscrNextPageToken'
--
-- * 'lscrScanConfigs'
listScanConfigsResponse
    :: ListScanConfigsResponse
listScanConfigsResponse =
  ListScanConfigsResponse'
    {_lscrNextPageToken = Nothing, _lscrScanConfigs = Nothing}


-- | Token to retrieve the next page of results, or empty if there are no
-- more results in the list.
lscrNextPageToken :: Lens' ListScanConfigsResponse (Maybe Text)
lscrNextPageToken
  = lens _lscrNextPageToken
      (\ s a -> s{_lscrNextPageToken = a})

-- | The list of ScanConfigs returned.
lscrScanConfigs :: Lens' ListScanConfigsResponse [ScanConfig]
lscrScanConfigs
  = lens _lscrScanConfigs
      (\ s a -> s{_lscrScanConfigs = a})
      . _Default
      . _Coerce

instance FromJSON ListScanConfigsResponse where
        parseJSON
          = withObject "ListScanConfigsResponse"
              (\ o ->
                 ListScanConfigsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "scanConfigs" .!= mempty))

instance ToJSON ListScanConfigsResponse where
        toJSON ListScanConfigsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lscrNextPageToken,
                  ("scanConfigs" .=) <$> _lscrScanConfigs])

-- | Request for the \`StartScanRun\` method.
--
-- /See:/ 'startScanRunRequest' smart constructor.
data StartScanRunRequest =
  StartScanRunRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartScanRunRequest' with the minimum fields required to make a request.
--
startScanRunRequest
    :: StartScanRunRequest
startScanRunRequest = StartScanRunRequest'


instance FromJSON StartScanRunRequest where
        parseJSON
          = withObject "StartScanRunRequest"
              (\ o -> pure StartScanRunRequest')

instance ToJSON StartScanRunRequest where
        toJSON = const emptyObject

-- | Describes authentication configuration that uses a custom account.
--
-- /See:/ 'customAccount' smart constructor.
data CustomAccount =
  CustomAccount'
    { _caLoginURL :: !(Maybe Text)
    , _caUsername :: !(Maybe Text)
    , _caPassword :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caLoginURL'
--
-- * 'caUsername'
--
-- * 'caPassword'
customAccount
    :: CustomAccount
customAccount =
  CustomAccount'
    {_caLoginURL = Nothing, _caUsername = Nothing, _caPassword = Nothing}


-- | Required. The login form URL of the website.
caLoginURL :: Lens' CustomAccount (Maybe Text)
caLoginURL
  = lens _caLoginURL (\ s a -> s{_caLoginURL = a})

-- | Required. The user name of the custom account.
caUsername :: Lens' CustomAccount (Maybe Text)
caUsername
  = lens _caUsername (\ s a -> s{_caUsername = a})

-- | Input only. Required. The password of the custom account. The credential
-- is stored encrypted and not returned in any response nor included in
-- audit logs.
caPassword :: Lens' CustomAccount (Maybe Text)
caPassword
  = lens _caPassword (\ s a -> s{_caPassword = a})

instance FromJSON CustomAccount where
        parseJSON
          = withObject "CustomAccount"
              (\ o ->
                 CustomAccount' <$>
                   (o .:? "loginUrl") <*> (o .:? "username") <*>
                     (o .:? "password"))

instance ToJSON CustomAccount where
        toJSON CustomAccount'{..}
          = object
              (catMaybes
                 [("loginUrl" .=) <$> _caLoginURL,
                  ("username" .=) <$> _caUsername,
                  ("password" .=) <$> _caPassword])

-- | A ScanConfig resource contains the configurations to launch a scan. next
-- id: 12
--
-- /See:/ 'scanConfig' smart constructor.
data ScanConfig =
  ScanConfig'
    { _scLatestRun                     :: !(Maybe ScanRun)
    , _scSchedule                      :: !(Maybe Schedule)
    , _scTargetPlatforms               :: !(Maybe [Text])
    , _scStartingURLs                  :: !(Maybe [Text])
    , _scAuthentication                :: !(Maybe Authentication)
    , _scMaxQps                        :: !(Maybe (Textual Int32))
    , _scName                          :: !(Maybe Text)
    , _scExportToSecurityCommandCenter :: !(Maybe ScanConfigExportToSecurityCommandCenter)
    , _scDisplayName                   :: !(Maybe Text)
    , _scUserAgent                     :: !(Maybe ScanConfigUserAgent)
    , _scBlackListPatterns             :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScanConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scLatestRun'
--
-- * 'scSchedule'
--
-- * 'scTargetPlatforms'
--
-- * 'scStartingURLs'
--
-- * 'scAuthentication'
--
-- * 'scMaxQps'
--
-- * 'scName'
--
-- * 'scExportToSecurityCommandCenter'
--
-- * 'scDisplayName'
--
-- * 'scUserAgent'
--
-- * 'scBlackListPatterns'
scanConfig
    :: ScanConfig
scanConfig =
  ScanConfig'
    { _scLatestRun = Nothing
    , _scSchedule = Nothing
    , _scTargetPlatforms = Nothing
    , _scStartingURLs = Nothing
    , _scAuthentication = Nothing
    , _scMaxQps = Nothing
    , _scName = Nothing
    , _scExportToSecurityCommandCenter = Nothing
    , _scDisplayName = Nothing
    , _scUserAgent = Nothing
    , _scBlackListPatterns = Nothing
    }


-- | Latest ScanRun if available.
scLatestRun :: Lens' ScanConfig (Maybe ScanRun)
scLatestRun
  = lens _scLatestRun (\ s a -> s{_scLatestRun = a})

-- | The schedule of the ScanConfig.
scSchedule :: Lens' ScanConfig (Maybe Schedule)
scSchedule
  = lens _scSchedule (\ s a -> s{_scSchedule = a})

-- | Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will
-- be used as a default.
scTargetPlatforms :: Lens' ScanConfig [Text]
scTargetPlatforms
  = lens _scTargetPlatforms
      (\ s a -> s{_scTargetPlatforms = a})
      . _Default
      . _Coerce

-- | Required. The starting URLs from which the scanner finds site pages.
scStartingURLs :: Lens' ScanConfig [Text]
scStartingURLs
  = lens _scStartingURLs
      (\ s a -> s{_scStartingURLs = a})
      . _Default
      . _Coerce

-- | The authentication configuration. If specified, service will use the
-- authentication configuration during scanning.
scAuthentication :: Lens' ScanConfig (Maybe Authentication)
scAuthentication
  = lens _scAuthentication
      (\ s a -> s{_scAuthentication = a})

-- | The maximum QPS during scanning. A valid value ranges from 5 to 20
-- inclusively. If the field is unspecified or its value is set 0, server
-- will default to 15. Other values outside of [5, 20] range will be
-- rejected with INVALID_ARGUMENT error.
scMaxQps :: Lens' ScanConfig (Maybe Int32)
scMaxQps
  = lens _scMaxQps (\ s a -> s{_scMaxQps = a}) .
      mapping _Coerce

-- | The resource name of the ScanConfig. The name follows the format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. The ScanConfig
-- IDs are generated by the system.
scName :: Lens' ScanConfig (Maybe Text)
scName = lens _scName (\ s a -> s{_scName = a})

-- | Controls export of scan configurations and results to Cloud Security
-- Command Center.
scExportToSecurityCommandCenter :: Lens' ScanConfig (Maybe ScanConfigExportToSecurityCommandCenter)
scExportToSecurityCommandCenter
  = lens _scExportToSecurityCommandCenter
      (\ s a -> s{_scExportToSecurityCommandCenter = a})

-- | Required. The user provided display name of the ScanConfig.
scDisplayName :: Lens' ScanConfig (Maybe Text)
scDisplayName
  = lens _scDisplayName
      (\ s a -> s{_scDisplayName = a})

-- | The user agent used during scanning.
scUserAgent :: Lens' ScanConfig (Maybe ScanConfigUserAgent)
scUserAgent
  = lens _scUserAgent (\ s a -> s{_scUserAgent = a})

-- | The blacklist URL patterns as described in
-- https:\/\/cloud.google.com\/security-scanner\/docs\/excluded-urls
scBlackListPatterns :: Lens' ScanConfig [Text]
scBlackListPatterns
  = lens _scBlackListPatterns
      (\ s a -> s{_scBlackListPatterns = a})
      . _Default
      . _Coerce

instance FromJSON ScanConfig where
        parseJSON
          = withObject "ScanConfig"
              (\ o ->
                 ScanConfig' <$>
                   (o .:? "latestRun") <*> (o .:? "schedule") <*>
                     (o .:? "targetPlatforms" .!= mempty)
                     <*> (o .:? "startingUrls" .!= mempty)
                     <*> (o .:? "authentication")
                     <*> (o .:? "maxQps")
                     <*> (o .:? "name")
                     <*> (o .:? "exportToSecurityCommandCenter")
                     <*> (o .:? "displayName")
                     <*> (o .:? "userAgent")
                     <*> (o .:? "blacklistPatterns" .!= mempty))

instance ToJSON ScanConfig where
        toJSON ScanConfig'{..}
          = object
              (catMaybes
                 [("latestRun" .=) <$> _scLatestRun,
                  ("schedule" .=) <$> _scSchedule,
                  ("targetPlatforms" .=) <$> _scTargetPlatforms,
                  ("startingUrls" .=) <$> _scStartingURLs,
                  ("authentication" .=) <$> _scAuthentication,
                  ("maxQps" .=) <$> _scMaxQps, ("name" .=) <$> _scName,
                  ("exportToSecurityCommandCenter" .=) <$>
                    _scExportToSecurityCommandCenter,
                  ("displayName" .=) <$> _scDisplayName,
                  ("userAgent" .=) <$> _scUserAgent,
                  ("blacklistPatterns" .=) <$> _scBlackListPatterns])

-- | Information about vulnerable or missing HTTP Headers.
--
-- /See:/ 'vulnerableHeaders' smart constructor.
data VulnerableHeaders =
  VulnerableHeaders'
    { _vhMissingHeaders :: !(Maybe [Header])
    , _vhHeaders        :: !(Maybe [Header])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VulnerableHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vhMissingHeaders'
--
-- * 'vhHeaders'
vulnerableHeaders
    :: VulnerableHeaders
vulnerableHeaders =
  VulnerableHeaders' {_vhMissingHeaders = Nothing, _vhHeaders = Nothing}


-- | List of missing headers.
vhMissingHeaders :: Lens' VulnerableHeaders [Header]
vhMissingHeaders
  = lens _vhMissingHeaders
      (\ s a -> s{_vhMissingHeaders = a})
      . _Default
      . _Coerce

-- | List of vulnerable headers.
vhHeaders :: Lens' VulnerableHeaders [Header]
vhHeaders
  = lens _vhHeaders (\ s a -> s{_vhHeaders = a}) .
      _Default
      . _Coerce

instance FromJSON VulnerableHeaders where
        parseJSON
          = withObject "VulnerableHeaders"
              (\ o ->
                 VulnerableHeaders' <$>
                   (o .:? "missingHeaders" .!= mempty) <*>
                     (o .:? "headers" .!= mempty))

instance ToJSON VulnerableHeaders where
        toJSON VulnerableHeaders'{..}
          = object
              (catMaybes
                 [("missingHeaders" .=) <$> _vhMissingHeaders,
                  ("headers" .=) <$> _vhHeaders])

-- | Information regarding any resource causing the vulnerability such as
-- JavaScript sources, image, audio files, etc.
--
-- /See:/ 'violatingResource' smart constructor.
data ViolatingResource =
  ViolatingResource'
    { _vrContentType :: !(Maybe Text)
    , _vrResourceURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ViolatingResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrContentType'
--
-- * 'vrResourceURL'
violatingResource
    :: ViolatingResource
violatingResource =
  ViolatingResource' {_vrContentType = Nothing, _vrResourceURL = Nothing}


-- | The MIME type of this resource.
vrContentType :: Lens' ViolatingResource (Maybe Text)
vrContentType
  = lens _vrContentType
      (\ s a -> s{_vrContentType = a})

-- | URL of this violating resource.
vrResourceURL :: Lens' ViolatingResource (Maybe Text)
vrResourceURL
  = lens _vrResourceURL
      (\ s a -> s{_vrResourceURL = a})

instance FromJSON ViolatingResource where
        parseJSON
          = withObject "ViolatingResource"
              (\ o ->
                 ViolatingResource' <$>
                   (o .:? "contentType") <*> (o .:? "resourceUrl"))

instance ToJSON ViolatingResource where
        toJSON ViolatingResource'{..}
          = object
              (catMaybes
                 [("contentType" .=) <$> _vrContentType,
                  ("resourceUrl" .=) <$> _vrResourceURL])

-- | ! Information about a vulnerability with an HTML.
--
-- /See:/ 'form' smart constructor.
data Form =
  Form'
    { _fActionURI :: !(Maybe Text)
    , _fFields    :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Form' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fActionURI'
--
-- * 'fFields'
form
    :: Form
form = Form' {_fActionURI = Nothing, _fFields = Nothing}


-- | ! The URI where to send the form when it\'s submitted.
fActionURI :: Lens' Form (Maybe Text)
fActionURI
  = lens _fActionURI (\ s a -> s{_fActionURI = a})

-- | ! The names of form fields related to the vulnerability.
fFields :: Lens' Form [Text]
fFields
  = lens _fFields (\ s a -> s{_fFields = a}) . _Default
      . _Coerce

instance FromJSON Form where
        parseJSON
          = withObject "Form"
              (\ o ->
                 Form' <$>
                   (o .:? "actionUri") <*> (o .:? "fields" .!= mempty))

instance ToJSON Form where
        toJSON Form'{..}
          = object
              (catMaybes
                 [("actionUri" .=) <$> _fActionURI,
                  ("fields" .=) <$> _fFields])

-- | A ScanRun is a output-only resource representing an actual run of the
-- scan. Next id: 12
--
-- /See:/ 'scanRun' smart constructor.
data ScanRun =
  ScanRun'
    { _srStartTime          :: !(Maybe DateTime')
    , _srHasVulnerabilities :: !(Maybe Bool)
    , _srWarningTraces      :: !(Maybe [ScanRunWarningTrace])
    , _srResultState        :: !(Maybe ScanRunResultState)
    , _srProgressPercent    :: !(Maybe (Textual Int32))
    , _srURLsCrawledCount   :: !(Maybe (Textual Int64))
    , _srURLsTestedCount    :: !(Maybe (Textual Int64))
    , _srName               :: !(Maybe Text)
    , _srEndTime            :: !(Maybe DateTime')
    , _srExecutionState     :: !(Maybe ScanRunExecutionState)
    , _srErrorTrace         :: !(Maybe ScanRunErrorTrace)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScanRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srStartTime'
--
-- * 'srHasVulnerabilities'
--
-- * 'srWarningTraces'
--
-- * 'srResultState'
--
-- * 'srProgressPercent'
--
-- * 'srURLsCrawledCount'
--
-- * 'srURLsTestedCount'
--
-- * 'srName'
--
-- * 'srEndTime'
--
-- * 'srExecutionState'
--
-- * 'srErrorTrace'
scanRun
    :: ScanRun
scanRun =
  ScanRun'
    { _srStartTime = Nothing
    , _srHasVulnerabilities = Nothing
    , _srWarningTraces = Nothing
    , _srResultState = Nothing
    , _srProgressPercent = Nothing
    , _srURLsCrawledCount = Nothing
    , _srURLsTestedCount = Nothing
    , _srName = Nothing
    , _srEndTime = Nothing
    , _srExecutionState = Nothing
    , _srErrorTrace = Nothing
    }


-- | Output only. The time at which the ScanRun started.
srStartTime :: Lens' ScanRun (Maybe UTCTime)
srStartTime
  = lens _srStartTime (\ s a -> s{_srStartTime = a}) .
      mapping _DateTime

-- | Output only. Whether the scan run has found any vulnerabilities.
srHasVulnerabilities :: Lens' ScanRun (Maybe Bool)
srHasVulnerabilities
  = lens _srHasVulnerabilities
      (\ s a -> s{_srHasVulnerabilities = a})

-- | Output only. A list of warnings, if such are encountered during this
-- scan run.
srWarningTraces :: Lens' ScanRun [ScanRunWarningTrace]
srWarningTraces
  = lens _srWarningTraces
      (\ s a -> s{_srWarningTraces = a})
      . _Default
      . _Coerce

-- | Output only. The result state of the ScanRun. This field is only
-- available after the execution state reaches \"FINISHED\".
srResultState :: Lens' ScanRun (Maybe ScanRunResultState)
srResultState
  = lens _srResultState
      (\ s a -> s{_srResultState = a})

-- | Output only. The percentage of total completion ranging from 0 to 100.
-- If the scan is in queue, the value is 0. If the scan is running, the
-- value ranges from 0 to 100. If the scan is finished, the value is 100.
srProgressPercent :: Lens' ScanRun (Maybe Int32)
srProgressPercent
  = lens _srProgressPercent
      (\ s a -> s{_srProgressPercent = a})
      . mapping _Coerce

-- | Output only. The number of URLs crawled during this ScanRun. If the scan
-- is in progress, the value represents the number of URLs crawled up to
-- now.
srURLsCrawledCount :: Lens' ScanRun (Maybe Int64)
srURLsCrawledCount
  = lens _srURLsCrawledCount
      (\ s a -> s{_srURLsCrawledCount = a})
      . mapping _Coerce

-- | Output only. The number of URLs tested during this ScanRun. If the scan
-- is in progress, the value represents the number of URLs tested up to
-- now. The number of URLs tested is usually larger than the number URLS
-- crawled because typically a crawled URL is tested with multiple test
-- payloads.
srURLsTestedCount :: Lens' ScanRun (Maybe Int64)
srURLsTestedCount
  = lens _srURLsTestedCount
      (\ s a -> s{_srURLsTestedCount = a})
      . mapping _Coerce

-- | Output only. The resource name of the ScanRun. The name follows the
-- format of
-- \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
-- The ScanRun IDs are generated by the system.
srName :: Lens' ScanRun (Maybe Text)
srName = lens _srName (\ s a -> s{_srName = a})

-- | Output only. The time at which the ScanRun reached termination state -
-- that the ScanRun is either finished or stopped by user.
srEndTime :: Lens' ScanRun (Maybe UTCTime)
srEndTime
  = lens _srEndTime (\ s a -> s{_srEndTime = a}) .
      mapping _DateTime

-- | Output only. The execution state of the ScanRun.
srExecutionState :: Lens' ScanRun (Maybe ScanRunExecutionState)
srExecutionState
  = lens _srExecutionState
      (\ s a -> s{_srExecutionState = a})

-- | Output only. If result_state is an ERROR, this field provides the
-- primary reason for scan\'s termination and more details, if such are
-- available.
srErrorTrace :: Lens' ScanRun (Maybe ScanRunErrorTrace)
srErrorTrace
  = lens _srErrorTrace (\ s a -> s{_srErrorTrace = a})

instance FromJSON ScanRun where
        parseJSON
          = withObject "ScanRun"
              (\ o ->
                 ScanRun' <$>
                   (o .:? "startTime") <*> (o .:? "hasVulnerabilities")
                     <*> (o .:? "warningTraces" .!= mempty)
                     <*> (o .:? "resultState")
                     <*> (o .:? "progressPercent")
                     <*> (o .:? "urlsCrawledCount")
                     <*> (o .:? "urlsTestedCount")
                     <*> (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "executionState")
                     <*> (o .:? "errorTrace"))

instance ToJSON ScanRun where
        toJSON ScanRun'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _srStartTime,
                  ("hasVulnerabilities" .=) <$> _srHasVulnerabilities,
                  ("warningTraces" .=) <$> _srWarningTraces,
                  ("resultState" .=) <$> _srResultState,
                  ("progressPercent" .=) <$> _srProgressPercent,
                  ("urlsCrawledCount" .=) <$> _srURLsCrawledCount,
                  ("urlsTestedCount" .=) <$> _srURLsTestedCount,
                  ("name" .=) <$> _srName,
                  ("endTime" .=) <$> _srEndTime,
                  ("executionState" .=) <$> _srExecutionState,
                  ("errorTrace" .=) <$> _srErrorTrace])
