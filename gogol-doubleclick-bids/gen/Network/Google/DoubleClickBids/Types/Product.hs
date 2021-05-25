{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBids.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBids.Types.Product where

import Network.Google.DoubleClickBids.Types.Sum
import Network.Google.Prelude

-- | List reports response.
--
-- /See:/ 'listReportsResponse' smart constructor.
data ListReportsResponse =
  ListReportsResponse'
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrReports :: !(Maybe [Report])
    , _lrrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrReports'
--
-- * 'lrrKind'
listReportsResponse
    :: ListReportsResponse
listReportsResponse =
  ListReportsResponse'
    {_lrrNextPageToken = Nothing, _lrrReports = Nothing, _lrrKind = Nothing}


-- | Next page\'s pagination token if one exists.
lrrNextPageToken :: Lens' ListReportsResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | Retrieved reports.
lrrReports :: Lens' ListReportsResponse [Report]
lrrReports
  = lens _lrrReports (\ s a -> s{_lrrReports = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"doubleclickbidmanager#listReportsResponse\".
lrrKind :: Lens' ListReportsResponse (Maybe Text)
lrrKind = lens _lrrKind (\ s a -> s{_lrrKind = a})

instance FromJSON ListReportsResponse where
        parseJSON
          = withObject "ListReportsResponse"
              (\ o ->
                 ListReportsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "reports" .!= mempty)
                     <*> (o .:? "kind"))

instance ToJSON ListReportsResponse where
        toJSON ListReportsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("reports" .=) <$> _lrrReports,
                  ("kind" .=) <$> _lrrKind])

-- | DisjunctiveMatchStatement that OR\'s all contained filters.
--
-- /See:/ 'disjunctiveMatchStatement' smart constructor.
newtype DisjunctiveMatchStatement =
  DisjunctiveMatchStatement'
    { _dmsEventFilters :: Maybe [EventFilter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisjunctiveMatchStatement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmsEventFilters'
disjunctiveMatchStatement
    :: DisjunctiveMatchStatement
disjunctiveMatchStatement =
  DisjunctiveMatchStatement' {_dmsEventFilters = Nothing}


-- | Filters. There is a limit of 100 filters that can be set per disjunctive
-- match statement.
dmsEventFilters :: Lens' DisjunctiveMatchStatement [EventFilter]
dmsEventFilters
  = lens _dmsEventFilters
      (\ s a -> s{_dmsEventFilters = a})
      . _Default
      . _Coerce

instance FromJSON DisjunctiveMatchStatement where
        parseJSON
          = withObject "DisjunctiveMatchStatement"
              (\ o ->
                 DisjunctiveMatchStatement' <$>
                   (o .:? "eventFilters" .!= mempty))

instance ToJSON DisjunctiveMatchStatement where
        toJSON DisjunctiveMatchStatement'{..}
          = object
              (catMaybes
                 [("eventFilters" .=) <$> _dmsEventFilters])

-- | Query metadata.
--
-- /See:/ 'queryMetadata' smart constructor.
data QueryMetadata =
  QueryMetadata'
    { _qmGoogleCloudStoragePathForLatestReport :: !(Maybe Text)
    , _qmLocale :: !(Maybe Text)
    , _qmFormat :: !(Maybe QueryMetadataFormat)
    , _qmGoogleDrivePathForLatestReport :: !(Maybe Text)
    , _qmShareEmailAddress :: !(Maybe [Text])
    , _qmRunning :: !(Maybe Bool)
    , _qmDataRange :: !(Maybe QueryMetadataDataRange)
    , _qmLatestReportRunTimeMs :: !(Maybe (Textual Int64))
    , _qmReportCount :: !(Maybe (Textual Int32))
    , _qmTitle :: !(Maybe Text)
    , _qmSendNotification :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qmGoogleCloudStoragePathForLatestReport'
--
-- * 'qmLocale'
--
-- * 'qmFormat'
--
-- * 'qmGoogleDrivePathForLatestReport'
--
-- * 'qmShareEmailAddress'
--
-- * 'qmRunning'
--
-- * 'qmDataRange'
--
-- * 'qmLatestReportRunTimeMs'
--
-- * 'qmReportCount'
--
-- * 'qmTitle'
--
-- * 'qmSendNotification'
queryMetadata
    :: QueryMetadata
queryMetadata =
  QueryMetadata'
    { _qmGoogleCloudStoragePathForLatestReport = Nothing
    , _qmLocale = Nothing
    , _qmFormat = Nothing
    , _qmGoogleDrivePathForLatestReport = Nothing
    , _qmShareEmailAddress = Nothing
    , _qmRunning = Nothing
    , _qmDataRange = Nothing
    , _qmLatestReportRunTimeMs = Nothing
    , _qmReportCount = Nothing
    , _qmTitle = Nothing
    , _qmSendNotification = Nothing
    }


-- | The path to the location in Google Cloud Storage where the latest report
-- is stored.
qmGoogleCloudStoragePathForLatestReport :: Lens' QueryMetadata (Maybe Text)
qmGoogleCloudStoragePathForLatestReport
  = lens _qmGoogleCloudStoragePathForLatestReport
      (\ s a ->
         s{_qmGoogleCloudStoragePathForLatestReport = a})

-- | Locale of the generated reports. Valid values are cs CZECH de GERMAN en
-- ENGLISH es SPANISH fr FRENCH it ITALIAN ja JAPANESE ko KOREAN pl POLISH
-- pt-BR BRAZILIAN_PORTUGUESE ru RUSSIAN tr TURKISH uk UKRAINIAN zh-CN
-- CHINA_CHINESE zh-TW TAIWAN_CHINESE An locale string not in the list
-- above will generate reports in English.
qmLocale :: Lens' QueryMetadata (Maybe Text)
qmLocale = lens _qmLocale (\ s a -> s{_qmLocale = a})

-- | Format of the generated report.
qmFormat :: Lens' QueryMetadata (Maybe QueryMetadataFormat)
qmFormat = lens _qmFormat (\ s a -> s{_qmFormat = a})

-- | The path in Google Drive for the latest report.
qmGoogleDrivePathForLatestReport :: Lens' QueryMetadata (Maybe Text)
qmGoogleDrivePathForLatestReport
  = lens _qmGoogleDrivePathForLatestReport
      (\ s a -> s{_qmGoogleDrivePathForLatestReport = a})

-- | List of email addresses which are sent email notifications when the
-- report is finished. Separate from sendNotification.
qmShareEmailAddress :: Lens' QueryMetadata [Text]
qmShareEmailAddress
  = lens _qmShareEmailAddress
      (\ s a -> s{_qmShareEmailAddress = a})
      . _Default
      . _Coerce

-- | Whether the latest report is currently running.
qmRunning :: Lens' QueryMetadata (Maybe Bool)
qmRunning
  = lens _qmRunning (\ s a -> s{_qmRunning = a})

-- | Range of report data.
qmDataRange :: Lens' QueryMetadata (Maybe QueryMetadataDataRange)
qmDataRange
  = lens _qmDataRange (\ s a -> s{_qmDataRange = a})

-- | The time when the latest report started to run.
qmLatestReportRunTimeMs :: Lens' QueryMetadata (Maybe Int64)
qmLatestReportRunTimeMs
  = lens _qmLatestReportRunTimeMs
      (\ s a -> s{_qmLatestReportRunTimeMs = a})
      . mapping _Coerce

-- | Number of reports that have been generated for the query.
qmReportCount :: Lens' QueryMetadata (Maybe Int32)
qmReportCount
  = lens _qmReportCount
      (\ s a -> s{_qmReportCount = a})
      . mapping _Coerce

-- | Query title. It is used to name the reports generated from this query.
qmTitle :: Lens' QueryMetadata (Maybe Text)
qmTitle = lens _qmTitle (\ s a -> s{_qmTitle = a})

-- | Whether to send an email notification when a report is ready. Default to
-- false.
qmSendNotification :: Lens' QueryMetadata (Maybe Bool)
qmSendNotification
  = lens _qmSendNotification
      (\ s a -> s{_qmSendNotification = a})

instance FromJSON QueryMetadata where
        parseJSON
          = withObject "QueryMetadata"
              (\ o ->
                 QueryMetadata' <$>
                   (o .:? "googleCloudStoragePathForLatestReport") <*>
                     (o .:? "locale")
                     <*> (o .:? "format")
                     <*> (o .:? "googleDrivePathForLatestReport")
                     <*> (o .:? "shareEmailAddress" .!= mempty)
                     <*> (o .:? "running")
                     <*> (o .:? "dataRange")
                     <*> (o .:? "latestReportRunTimeMs")
                     <*> (o .:? "reportCount")
                     <*> (o .:? "title")
                     <*> (o .:? "sendNotification"))

instance ToJSON QueryMetadata where
        toJSON QueryMetadata'{..}
          = object
              (catMaybes
                 [("googleCloudStoragePathForLatestReport" .=) <$>
                    _qmGoogleCloudStoragePathForLatestReport,
                  ("locale" .=) <$> _qmLocale,
                  ("format" .=) <$> _qmFormat,
                  ("googleDrivePathForLatestReport" .=) <$>
                    _qmGoogleDrivePathForLatestReport,
                  ("shareEmailAddress" .=) <$> _qmShareEmailAddress,
                  ("running" .=) <$> _qmRunning,
                  ("dataRange" .=) <$> _qmDataRange,
                  ("latestReportRunTimeMs" .=) <$>
                    _qmLatestReportRunTimeMs,
                  ("reportCount" .=) <$> _qmReportCount,
                  ("title" .=) <$> _qmTitle,
                  ("sendNotification" .=) <$> _qmSendNotification])

-- | Path Query Options for Report Options.
--
-- /See:/ 'pathQueryOptions' smart constructor.
data PathQueryOptions =
  PathQueryOptions'
    { _pqoPathFilters :: !(Maybe [PathFilter])
    , _pqoChannelGrouping :: !(Maybe ChannelGrouping)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PathQueryOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pqoPathFilters'
--
-- * 'pqoChannelGrouping'
pathQueryOptions
    :: PathQueryOptions
pathQueryOptions =
  PathQueryOptions' {_pqoPathFilters = Nothing, _pqoChannelGrouping = Nothing}


-- | Path Filters. There is a limit of 100 path filters that can be set per
-- report.
pqoPathFilters :: Lens' PathQueryOptions [PathFilter]
pqoPathFilters
  = lens _pqoPathFilters
      (\ s a -> s{_pqoPathFilters = a})
      . _Default
      . _Coerce

-- | Custom Channel Groupings.
pqoChannelGrouping :: Lens' PathQueryOptions (Maybe ChannelGrouping)
pqoChannelGrouping
  = lens _pqoChannelGrouping
      (\ s a -> s{_pqoChannelGrouping = a})

instance FromJSON PathQueryOptions where
        parseJSON
          = withObject "PathQueryOptions"
              (\ o ->
                 PathQueryOptions' <$>
                   (o .:? "pathFilters" .!= mempty) <*>
                     (o .:? "channelGrouping"))

instance ToJSON PathQueryOptions where
        toJSON PathQueryOptions'{..}
          = object
              (catMaybes
                 [("pathFilters" .=) <$> _pqoPathFilters,
                  ("channelGrouping" .=) <$> _pqoChannelGrouping])

-- | Request to run a stored query to generate a report.
--
-- /See:/ 'runQueryRequest' smart constructor.
data RunQueryRequest =
  RunQueryRequest'
    { _rqrReportDataEndTimeMs :: !(Maybe (Textual Int64))
    , _rqrDataRange :: !(Maybe RunQueryRequestDataRange)
    , _rqrReportDataStartTimeMs :: !(Maybe (Textual Int64))
    , _rqrTimezoneCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RunQueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqrReportDataEndTimeMs'
--
-- * 'rqrDataRange'
--
-- * 'rqrReportDataStartTimeMs'
--
-- * 'rqrTimezoneCode'
runQueryRequest
    :: RunQueryRequest
runQueryRequest =
  RunQueryRequest'
    { _rqrReportDataEndTimeMs = Nothing
    , _rqrDataRange = Nothing
    , _rqrReportDataStartTimeMs = Nothing
    , _rqrTimezoneCode = Nothing
    }


-- | The ending time for the data that is shown in the report. Note,
-- reportDataEndTimeMs is required if dataRange is CUSTOM_DATES and ignored
-- otherwise.
rqrReportDataEndTimeMs :: Lens' RunQueryRequest (Maybe Int64)
rqrReportDataEndTimeMs
  = lens _rqrReportDataEndTimeMs
      (\ s a -> s{_rqrReportDataEndTimeMs = a})
      . mapping _Coerce

-- | Report data range used to generate the report.
rqrDataRange :: Lens' RunQueryRequest (Maybe RunQueryRequestDataRange)
rqrDataRange
  = lens _rqrDataRange (\ s a -> s{_rqrDataRange = a})

-- | The starting time for the data that is shown in the report. Note,
-- reportDataStartTimeMs is required if dataRange is CUSTOM_DATES and
-- ignored otherwise.
rqrReportDataStartTimeMs :: Lens' RunQueryRequest (Maybe Int64)
rqrReportDataStartTimeMs
  = lens _rqrReportDataStartTimeMs
      (\ s a -> s{_rqrReportDataStartTimeMs = a})
      . mapping _Coerce

-- | Canonical timezone code for report data time. Defaults to
-- America\/New_York.
rqrTimezoneCode :: Lens' RunQueryRequest (Maybe Text)
rqrTimezoneCode
  = lens _rqrTimezoneCode
      (\ s a -> s{_rqrTimezoneCode = a})

instance FromJSON RunQueryRequest where
        parseJSON
          = withObject "RunQueryRequest"
              (\ o ->
                 RunQueryRequest' <$>
                   (o .:? "reportDataEndTimeMs") <*> (o .:? "dataRange")
                     <*> (o .:? "reportDataStartTimeMs")
                     <*> (o .:? "timezoneCode"))

instance ToJSON RunQueryRequest where
        toJSON RunQueryRequest'{..}
          = object
              (catMaybes
                 [("reportDataEndTimeMs" .=) <$>
                    _rqrReportDataEndTimeMs,
                  ("dataRange" .=) <$> _rqrDataRange,
                  ("reportDataStartTimeMs" .=) <$>
                    _rqrReportDataStartTimeMs,
                  ("timezoneCode" .=) <$> _rqrTimezoneCode])

-- | Filter used to match traffic data in your report.
--
-- /See:/ 'filterPair' smart constructor.
data FilterPair =
  FilterPair'
    { _fpValue :: !(Maybe Text)
    , _fpType :: !(Maybe FilterPairType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilterPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpValue'
--
-- * 'fpType'
filterPair
    :: FilterPair
filterPair = FilterPair' {_fpValue = Nothing, _fpType = Nothing}


-- | Filter value.
fpValue :: Lens' FilterPair (Maybe Text)
fpValue = lens _fpValue (\ s a -> s{_fpValue = a})

-- | Filter type.
fpType :: Lens' FilterPair (Maybe FilterPairType)
fpType = lens _fpType (\ s a -> s{_fpType = a})

instance FromJSON FilterPair where
        parseJSON
          = withObject "FilterPair"
              (\ o ->
                 FilterPair' <$> (o .:? "value") <*> (o .:? "type"))

instance ToJSON FilterPair where
        toJSON FilterPair'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _fpValue, ("type" .=) <$> _fpType])

-- | List queries response.
--
-- /See:/ 'listQueriesResponse' smart constructor.
data ListQueriesResponse =
  ListQueriesResponse'
    { _lqrQueries :: !(Maybe [Query])
    , _lqrNextPageToken :: !(Maybe Text)
    , _lqrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListQueriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqrQueries'
--
-- * 'lqrNextPageToken'
--
-- * 'lqrKind'
listQueriesResponse
    :: ListQueriesResponse
listQueriesResponse =
  ListQueriesResponse'
    {_lqrQueries = Nothing, _lqrNextPageToken = Nothing, _lqrKind = Nothing}


-- | Retrieved queries.
lqrQueries :: Lens' ListQueriesResponse [Query]
lqrQueries
  = lens _lqrQueries (\ s a -> s{_lqrQueries = a}) .
      _Default
      . _Coerce

-- | Next page\'s pagination token if one exists.
lqrNextPageToken :: Lens' ListQueriesResponse (Maybe Text)
lqrNextPageToken
  = lens _lqrNextPageToken
      (\ s a -> s{_lqrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"doubleclickbidmanager#listQueriesResponse\".
lqrKind :: Lens' ListQueriesResponse (Maybe Text)
lqrKind = lens _lqrKind (\ s a -> s{_lqrKind = a})

instance FromJSON ListQueriesResponse where
        parseJSON
          = withObject "ListQueriesResponse"
              (\ o ->
                 ListQueriesResponse' <$>
                   (o .:? "queries" .!= mempty) <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind"))

instance ToJSON ListQueriesResponse where
        toJSON ListQueriesResponse'{..}
          = object
              (catMaybes
                 [("queries" .=) <$> _lqrQueries,
                  ("nextPageToken" .=) <$> _lqrNextPageToken,
                  ("kind" .=) <$> _lqrKind])

-- | Report metadata.
--
-- /See:/ 'reportMetadata' smart constructor.
data ReportMetadata =
  ReportMetadata'
    { _rmStatus :: !(Maybe ReportStatus)
    , _rmReportDataEndTimeMs :: !(Maybe (Textual Int64))
    , _rmGoogleCloudStoragePath :: !(Maybe Text)
    , _rmReportDataStartTimeMs :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmStatus'
--
-- * 'rmReportDataEndTimeMs'
--
-- * 'rmGoogleCloudStoragePath'
--
-- * 'rmReportDataStartTimeMs'
reportMetadata
    :: ReportMetadata
reportMetadata =
  ReportMetadata'
    { _rmStatus = Nothing
    , _rmReportDataEndTimeMs = Nothing
    , _rmGoogleCloudStoragePath = Nothing
    , _rmReportDataStartTimeMs = Nothing
    }


-- | Report status.
rmStatus :: Lens' ReportMetadata (Maybe ReportStatus)
rmStatus = lens _rmStatus (\ s a -> s{_rmStatus = a})

-- | The ending time for the data that is shown in the report.
rmReportDataEndTimeMs :: Lens' ReportMetadata (Maybe Int64)
rmReportDataEndTimeMs
  = lens _rmReportDataEndTimeMs
      (\ s a -> s{_rmReportDataEndTimeMs = a})
      . mapping _Coerce

-- | The path to the location in Google Cloud Storage where the report is
-- stored.
rmGoogleCloudStoragePath :: Lens' ReportMetadata (Maybe Text)
rmGoogleCloudStoragePath
  = lens _rmGoogleCloudStoragePath
      (\ s a -> s{_rmGoogleCloudStoragePath = a})

-- | The starting time for the data that is shown in the report.
rmReportDataStartTimeMs :: Lens' ReportMetadata (Maybe Int64)
rmReportDataStartTimeMs
  = lens _rmReportDataStartTimeMs
      (\ s a -> s{_rmReportDataStartTimeMs = a})
      . mapping _Coerce

instance FromJSON ReportMetadata where
        parseJSON
          = withObject "ReportMetadata"
              (\ o ->
                 ReportMetadata' <$>
                   (o .:? "status") <*> (o .:? "reportDataEndTimeMs")
                     <*> (o .:? "googleCloudStoragePath")
                     <*> (o .:? "reportDataStartTimeMs"))

instance ToJSON ReportMetadata where
        toJSON ReportMetadata'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _rmStatus,
                  ("reportDataEndTimeMs" .=) <$>
                    _rmReportDataEndTimeMs,
                  ("googleCloudStoragePath" .=) <$>
                    _rmGoogleCloudStoragePath,
                  ("reportDataStartTimeMs" .=) <$>
                    _rmReportDataStartTimeMs])

-- | Represents a report.
--
-- /See:/ 'report' smart constructor.
data Report =
  Report'
    { _rParams :: !(Maybe Parameters)
    , _rKey :: !(Maybe ReportKey)
    , _rMetadata :: !(Maybe ReportMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Report' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rParams'
--
-- * 'rKey'
--
-- * 'rMetadata'
report
    :: Report
report = Report' {_rParams = Nothing, _rKey = Nothing, _rMetadata = Nothing}


-- | Report parameters.
rParams :: Lens' Report (Maybe Parameters)
rParams = lens _rParams (\ s a -> s{_rParams = a})

-- | Key used to identify a report.
rKey :: Lens' Report (Maybe ReportKey)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | Report metadata.
rMetadata :: Lens' Report (Maybe ReportMetadata)
rMetadata
  = lens _rMetadata (\ s a -> s{_rMetadata = a})

instance FromJSON Report where
        parseJSON
          = withObject "Report"
              (\ o ->
                 Report' <$>
                   (o .:? "params") <*> (o .:? "key") <*>
                     (o .:? "metadata"))

instance ToJSON Report where
        toJSON Report'{..}
          = object
              (catMaybes
                 [("params" .=) <$> _rParams, ("key" .=) <$> _rKey,
                  ("metadata" .=) <$> _rMetadata])

-- | A Rule defines a name, and a boolean expression in [conjunctive normal
-- form](http:
-- \/\/mathworld.wolfram.com\/ConjunctiveNormalForm.html){.external} that
-- can be \/\/ applied to a path event to determine if that name should be
-- applied.
--
-- /See:/ 'rule' smart constructor.
data Rule =
  Rule'
    { _rName :: !(Maybe Text)
    , _rDisjunctiveMatchStatements :: !(Maybe [DisjunctiveMatchStatement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Rule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rName'
--
-- * 'rDisjunctiveMatchStatements'
rule
    :: Rule
rule = Rule' {_rName = Nothing, _rDisjunctiveMatchStatements = Nothing}


-- | Rule name.
rName :: Lens' Rule (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

rDisjunctiveMatchStatements :: Lens' Rule [DisjunctiveMatchStatement]
rDisjunctiveMatchStatements
  = lens _rDisjunctiveMatchStatements
      (\ s a -> s{_rDisjunctiveMatchStatements = a})
      . _Default
      . _Coerce

instance FromJSON Rule where
        parseJSON
          = withObject "Rule"
              (\ o ->
                 Rule' <$>
                   (o .:? "name") <*>
                     (o .:? "disjunctiveMatchStatements" .!= mempty))

instance ToJSON Rule where
        toJSON Rule'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rName,
                  ("disjunctiveMatchStatements" .=) <$>
                    _rDisjunctiveMatchStatements])

-- | Key used to identify a report.
--
-- /See:/ 'reportKey' smart constructor.
data ReportKey =
  ReportKey'
    { _rkQueryId :: !(Maybe (Textual Int64))
    , _rkReportId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rkQueryId'
--
-- * 'rkReportId'
reportKey
    :: ReportKey
reportKey = ReportKey' {_rkQueryId = Nothing, _rkReportId = Nothing}


-- | Query ID.
rkQueryId :: Lens' ReportKey (Maybe Int64)
rkQueryId
  = lens _rkQueryId (\ s a -> s{_rkQueryId = a}) .
      mapping _Coerce

-- | Report ID.
rkReportId :: Lens' ReportKey (Maybe Int64)
rkReportId
  = lens _rkReportId (\ s a -> s{_rkReportId = a}) .
      mapping _Coerce

instance FromJSON ReportKey where
        parseJSON
          = withObject "ReportKey"
              (\ o ->
                 ReportKey' <$>
                   (o .:? "queryId") <*> (o .:? "reportId"))

instance ToJSON ReportKey where
        toJSON ReportKey'{..}
          = object
              (catMaybes
                 [("queryId" .=) <$> _rkQueryId,
                  ("reportId" .=) <$> _rkReportId])

-- | Defines the type of filter to be applied to the path, a DV360 event
-- dimension filter.
--
-- /See:/ 'eventFilter' smart constructor.
newtype EventFilter =
  EventFilter'
    { _efDimensionFilter :: Maybe PathQueryOptionsFilter
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EventFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efDimensionFilter'
eventFilter
    :: EventFilter
eventFilter = EventFilter' {_efDimensionFilter = Nothing}


-- | Filter on a dimension.
efDimensionFilter :: Lens' EventFilter (Maybe PathQueryOptionsFilter)
efDimensionFilter
  = lens _efDimensionFilter
      (\ s a -> s{_efDimensionFilter = a})

instance FromJSON EventFilter where
        parseJSON
          = withObject "EventFilter"
              (\ o -> EventFilter' <$> (o .:? "dimensionFilter"))

instance ToJSON EventFilter where
        toJSON EventFilter'{..}
          = object
              (catMaybes
                 [("dimensionFilter" .=) <$> _efDimensionFilter])

-- | A channel grouping defines a set of rules that can be used to categorize
-- events in a path report.
--
-- /See:/ 'channelGrouping' smart constructor.
data ChannelGrouping =
  ChannelGrouping'
    { _cgRules :: !(Maybe [Rule])
    , _cgFallbackName :: !(Maybe Text)
    , _cgName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChannelGrouping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgRules'
--
-- * 'cgFallbackName'
--
-- * 'cgName'
channelGrouping
    :: ChannelGrouping
channelGrouping =
  ChannelGrouping'
    {_cgRules = Nothing, _cgFallbackName = Nothing, _cgName = Nothing}


-- | Rules within Channel Grouping. There is a limit of 100 rules that can be
-- set per channel grouping.
cgRules :: Lens' ChannelGrouping [Rule]
cgRules
  = lens _cgRules (\ s a -> s{_cgRules = a}) . _Default
      . _Coerce

-- | The name to apply to an event that does not match any of the rules in
-- the channel grouping.
cgFallbackName :: Lens' ChannelGrouping (Maybe Text)
cgFallbackName
  = lens _cgFallbackName
      (\ s a -> s{_cgFallbackName = a})

-- | Channel Grouping name.
cgName :: Lens' ChannelGrouping (Maybe Text)
cgName = lens _cgName (\ s a -> s{_cgName = a})

instance FromJSON ChannelGrouping where
        parseJSON
          = withObject "ChannelGrouping"
              (\ o ->
                 ChannelGrouping' <$>
                   (o .:? "rules" .!= mempty) <*> (o .:? "fallbackName")
                     <*> (o .:? "name"))

instance ToJSON ChannelGrouping where
        toJSON ChannelGrouping'{..}
          = object
              (catMaybes
                 [("rules" .=) <$> _cgRules,
                  ("fallbackName" .=) <$> _cgFallbackName,
                  ("name" .=) <$> _cgName])

-- | Dimension Filter on path events.
--
-- /See:/ 'pathQueryOptionsFilter' smart constructor.
data PathQueryOptionsFilter =
  PathQueryOptionsFilter'
    { _pqofValues :: !(Maybe [Text])
    , _pqofFilter :: !(Maybe PathQueryOptionsFilterFilter)
    , _pqofMatch :: !(Maybe PathQueryOptionsFilterMatch)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PathQueryOptionsFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pqofValues'
--
-- * 'pqofFilter'
--
-- * 'pqofMatch'
pathQueryOptionsFilter
    :: PathQueryOptionsFilter
pathQueryOptionsFilter =
  PathQueryOptionsFilter'
    {_pqofValues = Nothing, _pqofFilter = Nothing, _pqofMatch = Nothing}


-- | Value to filter on.
pqofValues :: Lens' PathQueryOptionsFilter [Text]
pqofValues
  = lens _pqofValues (\ s a -> s{_pqofValues = a}) .
      _Default
      . _Coerce

-- | Dimension the filter is applied to.
pqofFilter :: Lens' PathQueryOptionsFilter (Maybe PathQueryOptionsFilterFilter)
pqofFilter
  = lens _pqofFilter (\ s a -> s{_pqofFilter = a})

-- | Indicates how the filter should be matched to the value.
pqofMatch :: Lens' PathQueryOptionsFilter (Maybe PathQueryOptionsFilterMatch)
pqofMatch
  = lens _pqofMatch (\ s a -> s{_pqofMatch = a})

instance FromJSON PathQueryOptionsFilter where
        parseJSON
          = withObject "PathQueryOptionsFilter"
              (\ o ->
                 PathQueryOptionsFilter' <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "filter") <*>
                     (o .:? "match"))

instance ToJSON PathQueryOptionsFilter where
        toJSON PathQueryOptionsFilter'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _pqofValues,
                  ("filter" .=) <$> _pqofFilter,
                  ("match" .=) <$> _pqofMatch])

-- | Information on how frequently and when to run a query.
--
-- /See:/ 'querySchedule' smart constructor.
data QuerySchedule =
  QuerySchedule'
    { _qsFrequency :: !(Maybe QueryScheduleFrequency)
    , _qsStartTimeMs :: !(Maybe (Textual Int64))
    , _qsEndTimeMs :: !(Maybe (Textual Int64))
    , _qsNextRunMinuteOfDay :: !(Maybe (Textual Int32))
    , _qsNextRunTimezoneCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QuerySchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsFrequency'
--
-- * 'qsStartTimeMs'
--
-- * 'qsEndTimeMs'
--
-- * 'qsNextRunMinuteOfDay'
--
-- * 'qsNextRunTimezoneCode'
querySchedule
    :: QuerySchedule
querySchedule =
  QuerySchedule'
    { _qsFrequency = Nothing
    , _qsStartTimeMs = Nothing
    , _qsEndTimeMs = Nothing
    , _qsNextRunMinuteOfDay = Nothing
    , _qsNextRunTimezoneCode = Nothing
    }


-- | How often the query is run.
qsFrequency :: Lens' QuerySchedule (Maybe QueryScheduleFrequency)
qsFrequency
  = lens _qsFrequency (\ s a -> s{_qsFrequency = a})

-- | When to start running the query. Not applicable to \`ONE_TIME\`
-- frequency.
qsStartTimeMs :: Lens' QuerySchedule (Maybe Int64)
qsStartTimeMs
  = lens _qsStartTimeMs
      (\ s a -> s{_qsStartTimeMs = a})
      . mapping _Coerce

-- | Datetime to periodically run the query until.
qsEndTimeMs :: Lens' QuerySchedule (Maybe Int64)
qsEndTimeMs
  = lens _qsEndTimeMs (\ s a -> s{_qsEndTimeMs = a}) .
      mapping _Coerce

-- | Time of day at which a new report will be generated, represented as
-- minutes past midnight. Range is 0 to 1439. Only applies to scheduled
-- reports.
qsNextRunMinuteOfDay :: Lens' QuerySchedule (Maybe Int32)
qsNextRunMinuteOfDay
  = lens _qsNextRunMinuteOfDay
      (\ s a -> s{_qsNextRunMinuteOfDay = a})
      . mapping _Coerce

-- | Canonical timezone code for report generation time. Defaults to
-- America\/New_York.
qsNextRunTimezoneCode :: Lens' QuerySchedule (Maybe Text)
qsNextRunTimezoneCode
  = lens _qsNextRunTimezoneCode
      (\ s a -> s{_qsNextRunTimezoneCode = a})

instance FromJSON QuerySchedule where
        parseJSON
          = withObject "QuerySchedule"
              (\ o ->
                 QuerySchedule' <$>
                   (o .:? "frequency") <*> (o .:? "startTimeMs") <*>
                     (o .:? "endTimeMs")
                     <*> (o .:? "nextRunMinuteOfDay")
                     <*> (o .:? "nextRunTimezoneCode"))

instance ToJSON QuerySchedule where
        toJSON QuerySchedule'{..}
          = object
              (catMaybes
                 [("frequency" .=) <$> _qsFrequency,
                  ("startTimeMs" .=) <$> _qsStartTimeMs,
                  ("endTimeMs" .=) <$> _qsEndTimeMs,
                  ("nextRunMinuteOfDay" .=) <$> _qsNextRunMinuteOfDay,
                  ("nextRunTimezoneCode" .=) <$>
                    _qsNextRunTimezoneCode])

-- | Report status.
--
-- /See:/ 'reportStatus' smart constructor.
data ReportStatus =
  ReportStatus'
    { _rsState :: !(Maybe ReportStatusState)
    , _rsFinishTimeMs :: !(Maybe (Textual Int64))
    , _rsFormat :: !(Maybe ReportStatusFormat)
    , _rsFailure :: !(Maybe ReportFailure)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsState'
--
-- * 'rsFinishTimeMs'
--
-- * 'rsFormat'
--
-- * 'rsFailure'
reportStatus
    :: ReportStatus
reportStatus =
  ReportStatus'
    { _rsState = Nothing
    , _rsFinishTimeMs = Nothing
    , _rsFormat = Nothing
    , _rsFailure = Nothing
    }


-- | The state of the report.
rsState :: Lens' ReportStatus (Maybe ReportStatusState)
rsState = lens _rsState (\ s a -> s{_rsState = a})

-- | The time when this report either completed successfully or failed.
rsFinishTimeMs :: Lens' ReportStatus (Maybe Int64)
rsFinishTimeMs
  = lens _rsFinishTimeMs
      (\ s a -> s{_rsFinishTimeMs = a})
      . mapping _Coerce

-- | The file type of the report.
rsFormat :: Lens' ReportStatus (Maybe ReportStatusFormat)
rsFormat = lens _rsFormat (\ s a -> s{_rsFormat = a})

-- | If the report failed, this records the cause.
rsFailure :: Lens' ReportStatus (Maybe ReportFailure)
rsFailure
  = lens _rsFailure (\ s a -> s{_rsFailure = a})

instance FromJSON ReportStatus where
        parseJSON
          = withObject "ReportStatus"
              (\ o ->
                 ReportStatus' <$>
                   (o .:? "state") <*> (o .:? "finishTimeMs") <*>
                     (o .:? "format")
                     <*> (o .:? "failure"))

instance ToJSON ReportStatus where
        toJSON ReportStatus'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _rsState,
                  ("finishTimeMs" .=) <$> _rsFinishTimeMs,
                  ("format" .=) <$> _rsFormat,
                  ("failure" .=) <$> _rsFailure])

-- | Represents a query.
--
-- /See:/ 'query' smart constructor.
data Query =
  Query'
    { _qQueryId :: !(Maybe (Textual Int64))
    , _qReportDataEndTimeMs :: !(Maybe (Textual Int64))
    , _qSchedule :: !(Maybe QuerySchedule)
    , _qKind :: !(Maybe Text)
    , _qParams :: !(Maybe Parameters)
    , _qMetadata :: !(Maybe QueryMetadata)
    , _qReportDataStartTimeMs :: !(Maybe (Textual Int64))
    , _qTimezoneCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Query' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qQueryId'
--
-- * 'qReportDataEndTimeMs'
--
-- * 'qSchedule'
--
-- * 'qKind'
--
-- * 'qParams'
--
-- * 'qMetadata'
--
-- * 'qReportDataStartTimeMs'
--
-- * 'qTimezoneCode'
query
    :: Query
query =
  Query'
    { _qQueryId = Nothing
    , _qReportDataEndTimeMs = Nothing
    , _qSchedule = Nothing
    , _qKind = Nothing
    , _qParams = Nothing
    , _qMetadata = Nothing
    , _qReportDataStartTimeMs = Nothing
    , _qTimezoneCode = Nothing
    }


-- | Query ID.
qQueryId :: Lens' Query (Maybe Int64)
qQueryId
  = lens _qQueryId (\ s a -> s{_qQueryId = a}) .
      mapping _Coerce

-- | The ending time for the data that is shown in the report. Note,
-- reportDataEndTimeMs is required if metadata.dataRange is CUSTOM_DATES
-- and ignored otherwise.
qReportDataEndTimeMs :: Lens' Query (Maybe Int64)
qReportDataEndTimeMs
  = lens _qReportDataEndTimeMs
      (\ s a -> s{_qReportDataEndTimeMs = a})
      . mapping _Coerce

-- | Information on how often and when to run a query.
qSchedule :: Lens' Query (Maybe QuerySchedule)
qSchedule
  = lens _qSchedule (\ s a -> s{_qSchedule = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"doubleclickbidmanager#query\".
qKind :: Lens' Query (Maybe Text)
qKind = lens _qKind (\ s a -> s{_qKind = a})

-- | Query parameters.
qParams :: Lens' Query (Maybe Parameters)
qParams = lens _qParams (\ s a -> s{_qParams = a})

-- | Query metadata.
qMetadata :: Lens' Query (Maybe QueryMetadata)
qMetadata
  = lens _qMetadata (\ s a -> s{_qMetadata = a})

-- | The starting time for the data that is shown in the report. Note,
-- reportDataStartTimeMs is required if metadata.dataRange is CUSTOM_DATES
-- and ignored otherwise.
qReportDataStartTimeMs :: Lens' Query (Maybe Int64)
qReportDataStartTimeMs
  = lens _qReportDataStartTimeMs
      (\ s a -> s{_qReportDataStartTimeMs = a})
      . mapping _Coerce

-- | Canonical timezone code for report data time. Defaults to
-- America\/New_York.
qTimezoneCode :: Lens' Query (Maybe Text)
qTimezoneCode
  = lens _qTimezoneCode
      (\ s a -> s{_qTimezoneCode = a})

instance FromJSON Query where
        parseJSON
          = withObject "Query"
              (\ o ->
                 Query' <$>
                   (o .:? "queryId") <*> (o .:? "reportDataEndTimeMs")
                     <*> (o .:? "schedule")
                     <*> (o .:? "kind")
                     <*> (o .:? "params")
                     <*> (o .:? "metadata")
                     <*> (o .:? "reportDataStartTimeMs")
                     <*> (o .:? "timezoneCode"))

instance ToJSON Query where
        toJSON Query'{..}
          = object
              (catMaybes
                 [("queryId" .=) <$> _qQueryId,
                  ("reportDataEndTimeMs" .=) <$> _qReportDataEndTimeMs,
                  ("schedule" .=) <$> _qSchedule,
                  ("kind" .=) <$> _qKind, ("params" .=) <$> _qParams,
                  ("metadata" .=) <$> _qMetadata,
                  ("reportDataStartTimeMs" .=) <$>
                    _qReportDataStartTimeMs,
                  ("timezoneCode" .=) <$> _qTimezoneCode])

-- | Parameters of a query or report.
--
-- /See:/ 'parameters' smart constructor.
data Parameters =
  Parameters'
    { _pMetrics :: !(Maybe [ParametersMetricsItem])
    , _pIncludeInviteData :: !(Maybe Bool)
    , _pFilters :: !(Maybe [FilterPair])
    , _pGroupBys :: !(Maybe [ParametersGroupBysItem])
    , _pOptions :: !(Maybe Options)
    , _pType :: !(Maybe ParametersType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Parameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pMetrics'
--
-- * 'pIncludeInviteData'
--
-- * 'pFilters'
--
-- * 'pGroupBys'
--
-- * 'pOptions'
--
-- * 'pType'
parameters
    :: Parameters
parameters =
  Parameters'
    { _pMetrics = Nothing
    , _pIncludeInviteData = Nothing
    , _pFilters = Nothing
    , _pGroupBys = Nothing
    , _pOptions = Nothing
    , _pType = Nothing
    }


-- | Metrics to include as columns in your report.
pMetrics :: Lens' Parameters [ParametersMetricsItem]
pMetrics
  = lens _pMetrics (\ s a -> s{_pMetrics = a}) .
      _Default
      . _Coerce

-- | Deprecated. This field is no longer in use.
pIncludeInviteData :: Lens' Parameters (Maybe Bool)
pIncludeInviteData
  = lens _pIncludeInviteData
      (\ s a -> s{_pIncludeInviteData = a})

-- | Filters used to match traffic data in your report.
pFilters :: Lens' Parameters [FilterPair]
pFilters
  = lens _pFilters (\ s a -> s{_pFilters = a}) .
      _Default
      . _Coerce

-- | Data is grouped by the filters listed in this field.
pGroupBys :: Lens' Parameters [ParametersGroupBysItem]
pGroupBys
  = lens _pGroupBys (\ s a -> s{_pGroupBys = a}) .
      _Default
      . _Coerce

-- | Additional query options.
pOptions :: Lens' Parameters (Maybe Options)
pOptions = lens _pOptions (\ s a -> s{_pOptions = a})

-- | Report type.
pType :: Lens' Parameters (Maybe ParametersType)
pType = lens _pType (\ s a -> s{_pType = a})

instance FromJSON Parameters where
        parseJSON
          = withObject "Parameters"
              (\ o ->
                 Parameters' <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "includeInviteData")
                     <*> (o .:? "filters" .!= mempty)
                     <*> (o .:? "groupBys" .!= mempty)
                     <*> (o .:? "options")
                     <*> (o .:? "type"))

instance ToJSON Parameters where
        toJSON Parameters'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _pMetrics,
                  ("includeInviteData" .=) <$> _pIncludeInviteData,
                  ("filters" .=) <$> _pFilters,
                  ("groupBys" .=) <$> _pGroupBys,
                  ("options" .=) <$> _pOptions,
                  ("type" .=) <$> _pType])

-- | Path filters specify which paths to include in a report. A path is the
-- result of combining DV360 events based on User ID to create a workflow
-- of users\' actions. When a path filter is set, the resulting report will
-- only include paths that match the specified event at the specified
-- position. All other paths will be excluded.
--
-- /See:/ 'pathFilter' smart constructor.
data PathFilter =
  PathFilter'
    { _pfEventFilters :: !(Maybe [EventFilter])
    , _pfPathMatchPosition :: !(Maybe PathFilterPathMatchPosition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PathFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfEventFilters'
--
-- * 'pfPathMatchPosition'
pathFilter
    :: PathFilter
pathFilter =
  PathFilter' {_pfEventFilters = Nothing, _pfPathMatchPosition = Nothing}


-- | Filter on an event to be applied to some part of the path.
pfEventFilters :: Lens' PathFilter [EventFilter]
pfEventFilters
  = lens _pfEventFilters
      (\ s a -> s{_pfEventFilters = a})
      . _Default
      . _Coerce

-- | Indicates the position of the path the filter should match to (first,
-- last, or any event in path).
pfPathMatchPosition :: Lens' PathFilter (Maybe PathFilterPathMatchPosition)
pfPathMatchPosition
  = lens _pfPathMatchPosition
      (\ s a -> s{_pfPathMatchPosition = a})

instance FromJSON PathFilter where
        parseJSON
          = withObject "PathFilter"
              (\ o ->
                 PathFilter' <$>
                   (o .:? "eventFilters" .!= mempty) <*>
                     (o .:? "pathMatchPosition"))

instance ToJSON PathFilter where
        toJSON PathFilter'{..}
          = object
              (catMaybes
                 [("eventFilters" .=) <$> _pfEventFilters,
                  ("pathMatchPosition" .=) <$> _pfPathMatchPosition])

-- | Additional query options.
--
-- /See:/ 'options' smart constructor.
data Options =
  Options'
    { _oPathQueryOptions :: !(Maybe PathQueryOptions)
    , _oIncludeOnlyTargetedUserLists :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Options' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oPathQueryOptions'
--
-- * 'oIncludeOnlyTargetedUserLists'
options
    :: Options
options =
  Options'
    {_oPathQueryOptions = Nothing, _oIncludeOnlyTargetedUserLists = Nothing}


-- | Options that contain Path Filters and Custom Channel Groupings.
oPathQueryOptions :: Lens' Options (Maybe PathQueryOptions)
oPathQueryOptions
  = lens _oPathQueryOptions
      (\ s a -> s{_oPathQueryOptions = a})

-- | Set to true and filter your report by \`FILTER_INSERTION_ORDER\` or
-- \`FILTER_LINE_ITEM\` to include data for audience lists specifically
-- targeted by those items.
oIncludeOnlyTargetedUserLists :: Lens' Options (Maybe Bool)
oIncludeOnlyTargetedUserLists
  = lens _oIncludeOnlyTargetedUserLists
      (\ s a -> s{_oIncludeOnlyTargetedUserLists = a})

instance FromJSON Options where
        parseJSON
          = withObject "Options"
              (\ o ->
                 Options' <$>
                   (o .:? "pathQueryOptions") <*>
                     (o .:? "includeOnlyTargetedUserLists"))

instance ToJSON Options where
        toJSON Options'{..}
          = object
              (catMaybes
                 [("pathQueryOptions" .=) <$> _oPathQueryOptions,
                  ("includeOnlyTargetedUserLists" .=) <$>
                    _oIncludeOnlyTargetedUserLists])

-- | An explanation of a report failure.
--
-- /See:/ 'reportFailure' smart constructor.
newtype ReportFailure =
  ReportFailure'
    { _rfErrorCode :: Maybe ReportFailureErrorCode
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfErrorCode'
reportFailure
    :: ReportFailure
reportFailure = ReportFailure' {_rfErrorCode = Nothing}


-- | Error code that shows why the report was not created.
rfErrorCode :: Lens' ReportFailure (Maybe ReportFailureErrorCode)
rfErrorCode
  = lens _rfErrorCode (\ s a -> s{_rfErrorCode = a})

instance FromJSON ReportFailure where
        parseJSON
          = withObject "ReportFailure"
              (\ o -> ReportFailure' <$> (o .:? "errorCode"))

instance ToJSON ReportFailure where
        toJSON ReportFailure'{..}
          = object
              (catMaybes [("errorCode" .=) <$> _rfErrorCode])
