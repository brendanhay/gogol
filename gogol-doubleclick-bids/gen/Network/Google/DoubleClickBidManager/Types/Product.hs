{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DoubleClickBidManager.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DoubleClickBidManager.Types.Product where

import           Network.Google.DoubleClickBidManager.Types.Sum
import           Network.Google.Prelude

-- | Request to fetch stored line items.
--
-- /See:/ 'downloadLineItemsRequest' smart constructor.
data DownloadLineItemsRequest = DownloadLineItemsRequest
    { _dlirFilterType :: !(Maybe DownloadLineItemsRequestFilterType)
    , _dlirFormat     :: !(Maybe DownloadLineItemsRequestFormat)
    , _dlirFilterIds  :: !(Maybe [Int64])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DownloadLineItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlirFilterType'
--
-- * 'dlirFormat'
--
-- * 'dlirFilterIds'
downloadLineItemsRequest
    :: DownloadLineItemsRequest
downloadLineItemsRequest =
    DownloadLineItemsRequest
    { _dlirFilterType = Nothing
    , _dlirFormat = Nothing
    , _dlirFilterIds = Nothing
    }

-- | Filter type used to filter line items to fetch.
dlirFilterType :: Lens' DownloadLineItemsRequest (Maybe DownloadLineItemsRequestFilterType)
dlirFilterType
  = lens _dlirFilterType
      (\ s a -> s{_dlirFilterType = a})

-- | Format in which the line items will be returned. Default to CSV.
dlirFormat :: Lens' DownloadLineItemsRequest (Maybe DownloadLineItemsRequestFormat)
dlirFormat
  = lens _dlirFormat (\ s a -> s{_dlirFormat = a})

-- | Ids of the specified filter type used to filter line items to fetch. If
-- omitted, all the line items will be returned.
dlirFilterIds :: Lens' DownloadLineItemsRequest [Int64]
dlirFilterIds
  = lens _dlirFilterIds
      (\ s a -> s{_dlirFilterIds = a})
      . _Default
      . _Coerce

-- | Download line items response.
--
-- /See:/ 'downloadLineItemsResponse' smart constructor.
newtype DownloadLineItemsResponse = DownloadLineItemsResponse
    { _dlirLineItems :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DownloadLineItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlirLineItems'
downloadLineItemsResponse
    :: DownloadLineItemsResponse
downloadLineItemsResponse =
    DownloadLineItemsResponse
    { _dlirLineItems = Nothing
    }

-- | Retrieved line items in CSV format. Refer to Entity Write File Format
-- for more information on file format.
dlirLineItems :: Lens' DownloadLineItemsResponse (Maybe Text)
dlirLineItems
  = lens _dlirLineItems
      (\ s a -> s{_dlirLineItems = a})

-- | Filter used to match traffic data in your report.
--
-- /See:/ 'filterPair' smart constructor.
data FilterPair = FilterPair
    { _fpValue :: !(Maybe Text)
    , _fpType  :: !(Maybe FilterPairType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterPair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fpValue'
--
-- * 'fpType'
filterPair
    :: FilterPair
filterPair =
    FilterPair
    { _fpValue = Nothing
    , _fpType = Nothing
    }

-- | Filter value.
fpValue :: Lens' FilterPair (Maybe Text)
fpValue = lens _fpValue (\ s a -> s{_fpValue = a})

-- | Filter type.
fpType :: Lens' FilterPair (Maybe FilterPairType)
fpType = lens _fpType (\ s a -> s{_fpType = a})

-- | List queries response.
--
-- /See:/ 'listQueriesResponse' smart constructor.
data ListQueriesResponse = ListQueriesResponse
    { _lqrQueries :: !(Maybe [Maybe Query])
    , _lqrKind    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListQueriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lqrQueries'
--
-- * 'lqrKind'
listQueriesResponse
    :: ListQueriesResponse
listQueriesResponse =
    ListQueriesResponse
    { _lqrQueries = Nothing
    , _lqrKind = "doubleclickbidmanager#listQueriesResponse"
    }

-- | Retrieved queries.
lqrQueries :: Lens' ListQueriesResponse [Maybe Query]
lqrQueries
  = lens _lqrQueries (\ s a -> s{_lqrQueries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"doubleclickbidmanager#listQueriesResponse\".
lqrKind :: Lens' ListQueriesResponse Text
lqrKind = lens _lqrKind (\ s a -> s{_lqrKind = a})

-- | List reports response.
--
-- /See:/ 'listReportsResponse' smart constructor.
data ListReportsResponse = ListReportsResponse
    { _lrrReports :: !(Maybe [Maybe Report])
    , _lrrKind    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrReports'
--
-- * 'lrrKind'
listReportsResponse
    :: ListReportsResponse
listReportsResponse =
    ListReportsResponse
    { _lrrReports = Nothing
    , _lrrKind = "doubleclickbidmanager#listReportsResponse"
    }

-- | Retrieved reports.
lrrReports :: Lens' ListReportsResponse [Maybe Report]
lrrReports
  = lens _lrrReports (\ s a -> s{_lrrReports = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"doubleclickbidmanager#listReportsResponse\".
lrrKind :: Lens' ListReportsResponse Text
lrrKind = lens _lrrKind (\ s a -> s{_lrrKind = a})

-- | Parameters of a query or report.
--
-- /See:/ 'parameters' smart constructor.
data Parameters = Parameters
    { _pMetrics           :: !(Maybe [ParametersItemMetrics])
    , _pIncludeInviteData :: !(Maybe Bool)
    , _pFilters           :: !(Maybe [Maybe FilterPair])
    , _pGroupBys          :: !(Maybe [ParametersItemGroupBys])
    , _pType              :: !(Maybe ParametersType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'pType'
parameters
    :: Parameters
parameters =
    Parameters
    { _pMetrics = Nothing
    , _pIncludeInviteData = Nothing
    , _pFilters = Nothing
    , _pGroupBys = Nothing
    , _pType = Nothing
    }

-- | Metrics to include as columns in your report.
pMetrics :: Lens' Parameters [ParametersItemMetrics]
pMetrics
  = lens _pMetrics (\ s a -> s{_pMetrics = a}) .
      _Default
      . _Coerce

-- | Whether to include data from Invite Media.
pIncludeInviteData :: Lens' Parameters (Maybe Bool)
pIncludeInviteData
  = lens _pIncludeInviteData
      (\ s a -> s{_pIncludeInviteData = a})

-- | Filters used to match traffic data in your report.
pFilters :: Lens' Parameters [Maybe FilterPair]
pFilters
  = lens _pFilters (\ s a -> s{_pFilters = a}) .
      _Default
      . _Coerce

-- | Data is grouped by the filters listed in this field.
pGroupBys :: Lens' Parameters [ParametersItemGroupBys]
pGroupBys
  = lens _pGroupBys (\ s a -> s{_pGroupBys = a}) .
      _Default
      . _Coerce

-- | Report type.
pType :: Lens' Parameters (Maybe ParametersType)
pType = lens _pType (\ s a -> s{_pType = a})

-- | Represents a query.
--
-- /See:/ 'query' smart constructor.
data Query = Query
    { _qQueryId               :: !(Maybe Int64)
    , _qReportDataEndTimeMs   :: !(Maybe Int64)
    , _qSchedule              :: !(Maybe (Maybe QuerySchedule))
    , _qKind                  :: !Text
    , _qParams                :: !(Maybe (Maybe Parameters))
    , _qMetadata              :: !(Maybe (Maybe QueryMetadata))
    , _qReportDataStartTimeMs :: !(Maybe Int64)
    , _qTimezoneCode          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Query
    { _qQueryId = Nothing
    , _qReportDataEndTimeMs = Nothing
    , _qSchedule = Nothing
    , _qKind = "doubleclickbidmanager#query"
    , _qParams = Nothing
    , _qMetadata = Nothing
    , _qReportDataStartTimeMs = Nothing
    , _qTimezoneCode = Nothing
    }

-- | Query ID.
qQueryId :: Lens' Query (Maybe Int64)
qQueryId = lens _qQueryId (\ s a -> s{_qQueryId = a})

-- | The ending time for the data that is shown in the report. Note,
-- reportDataEndTimeMs is required if metadata.dataRange is CUSTOM_DATES
-- and ignored otherwise.
qReportDataEndTimeMs :: Lens' Query (Maybe Int64)
qReportDataEndTimeMs
  = lens _qReportDataEndTimeMs
      (\ s a -> s{_qReportDataEndTimeMs = a})

-- | Information on how often and when to run a query.
qSchedule :: Lens' Query (Maybe (Maybe QuerySchedule))
qSchedule
  = lens _qSchedule (\ s a -> s{_qSchedule = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"doubleclickbidmanager#query\".
qKind :: Lens' Query Text
qKind = lens _qKind (\ s a -> s{_qKind = a})

-- | Query parameters.
qParams :: Lens' Query (Maybe (Maybe Parameters))
qParams = lens _qParams (\ s a -> s{_qParams = a})

-- | Query metadata.
qMetadata :: Lens' Query (Maybe (Maybe QueryMetadata))
qMetadata
  = lens _qMetadata (\ s a -> s{_qMetadata = a})

-- | The starting time for the data that is shown in the report. Note,
-- reportDataStartTimeMs is required if metadata.dataRange is CUSTOM_DATES
-- and ignored otherwise.
qReportDataStartTimeMs :: Lens' Query (Maybe Int64)
qReportDataStartTimeMs
  = lens _qReportDataStartTimeMs
      (\ s a -> s{_qReportDataStartTimeMs = a})

-- | Canonical timezone code for report data time. Defaults to
-- America\/New_York.
qTimezoneCode :: Lens' Query (Maybe Text)
qTimezoneCode
  = lens _qTimezoneCode
      (\ s a -> s{_qTimezoneCode = a})

-- | Query metadata.
--
-- /See:/ 'queryMetadata' smart constructor.
data QueryMetadata = QueryMetadata
    { _qmGoogleCloudStoragePathForLatestReport :: !(Maybe Text)
    , _qmLocale                                :: !(Maybe Text)
    , _qmFormat                                :: !(Maybe QueryMetadataFormat)
    , _qmGoogleDrivePathForLatestReport        :: !(Maybe Text)
    , _qmShareEmailAddress                     :: !(Maybe [Text])
    , _qmRunning                               :: !(Maybe Bool)
    , _qmDataRange                             :: !(Maybe QueryMetadataDataRange)
    , _qmLatestReportRunTimeMs                 :: !(Maybe Int64)
    , _qmReportCount                           :: !(Maybe Int32)
    , _qmTitle                                 :: !(Maybe Text)
    , _qmSendNotification                      :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    QueryMetadata
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

-- | Number of reports that have been generated for the query.
qmReportCount :: Lens' QueryMetadata (Maybe Int32)
qmReportCount
  = lens _qmReportCount
      (\ s a -> s{_qmReportCount = a})

-- | Query title. It is used to name the reports generated from this query.
qmTitle :: Lens' QueryMetadata (Maybe Text)
qmTitle = lens _qmTitle (\ s a -> s{_qmTitle = a})

-- | Whether to send an email notification when a report is ready. Default to
-- false.
qmSendNotification :: Lens' QueryMetadata (Maybe Bool)
qmSendNotification
  = lens _qmSendNotification
      (\ s a -> s{_qmSendNotification = a})

-- | Information on how frequently and when to run a query.
--
-- /See:/ 'querySchedule' smart constructor.
data QuerySchedule = QuerySchedule
    { _qsFrequency           :: !(Maybe QueryScheduleFrequency)
    , _qsEndTimeMs           :: !(Maybe Int64)
    , _qsNextRunMinuteOfDay  :: !(Maybe Int32)
    , _qsNextRunTimezoneCode :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuerySchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsFrequency'
--
-- * 'qsEndTimeMs'
--
-- * 'qsNextRunMinuteOfDay'
--
-- * 'qsNextRunTimezoneCode'
querySchedule
    :: QuerySchedule
querySchedule =
    QuerySchedule
    { _qsFrequency = Nothing
    , _qsEndTimeMs = Nothing
    , _qsNextRunMinuteOfDay = Nothing
    , _qsNextRunTimezoneCode = Nothing
    }

-- | How often the query is run.
qsFrequency :: Lens' QuerySchedule (Maybe QueryScheduleFrequency)
qsFrequency
  = lens _qsFrequency (\ s a -> s{_qsFrequency = a})

-- | Datetime to periodically run the query until.
qsEndTimeMs :: Lens' QuerySchedule (Maybe Int64)
qsEndTimeMs
  = lens _qsEndTimeMs (\ s a -> s{_qsEndTimeMs = a})

-- | Time of day at which a new report will be generated, represented as
-- minutes past midnight. Range is 0 to 1439. Only applies to scheduled
-- reports.
qsNextRunMinuteOfDay :: Lens' QuerySchedule (Maybe Int32)
qsNextRunMinuteOfDay
  = lens _qsNextRunMinuteOfDay
      (\ s a -> s{_qsNextRunMinuteOfDay = a})

-- | Canonical timezone code for report generation time. Defaults to
-- America\/New_York.
qsNextRunTimezoneCode :: Lens' QuerySchedule (Maybe Text)
qsNextRunTimezoneCode
  = lens _qsNextRunTimezoneCode
      (\ s a -> s{_qsNextRunTimezoneCode = a})

-- | Represents a report.
--
-- /See:/ 'report' smart constructor.
data Report = Report
    { _rParams   :: !(Maybe (Maybe Parameters))
    , _rKey      :: !(Maybe (Maybe ReportKey))
    , _rMetadata :: !(Maybe (Maybe ReportMetadata))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
report =
    Report
    { _rParams = Nothing
    , _rKey = Nothing
    , _rMetadata = Nothing
    }

-- | Report parameters.
rParams :: Lens' Report (Maybe (Maybe Parameters))
rParams = lens _rParams (\ s a -> s{_rParams = a})

-- | Key used to identify a report.
rKey :: Lens' Report (Maybe (Maybe ReportKey))
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | Report metadata.
rMetadata :: Lens' Report (Maybe (Maybe ReportMetadata))
rMetadata
  = lens _rMetadata (\ s a -> s{_rMetadata = a})

-- | An explanation of a report failure.
--
-- /See:/ 'reportFailure' smart constructor.
newtype ReportFailure = ReportFailure
    { _rfErrorCode :: Maybe ReportFailureErrorCode
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportFailure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfErrorCode'
reportFailure
    :: ReportFailure
reportFailure =
    ReportFailure
    { _rfErrorCode = Nothing
    }

-- | Error code that shows why the report was not created.
rfErrorCode :: Lens' ReportFailure (Maybe ReportFailureErrorCode)
rfErrorCode
  = lens _rfErrorCode (\ s a -> s{_rfErrorCode = a})

-- | Key used to identify a report.
--
-- /See:/ 'reportKey' smart constructor.
data ReportKey = ReportKey
    { _rkQueryId  :: !(Maybe Int64)
    , _rkReportId :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rkQueryId'
--
-- * 'rkReportId'
reportKey
    :: ReportKey
reportKey =
    ReportKey
    { _rkQueryId = Nothing
    , _rkReportId = Nothing
    }

-- | Query ID.
rkQueryId :: Lens' ReportKey (Maybe Int64)
rkQueryId
  = lens _rkQueryId (\ s a -> s{_rkQueryId = a})

-- | Report ID.
rkReportId :: Lens' ReportKey (Maybe Int64)
rkReportId
  = lens _rkReportId (\ s a -> s{_rkReportId = a})

-- | Report metadata.
--
-- /See:/ 'reportMetadata' smart constructor.
data ReportMetadata = ReportMetadata
    { _rmStatus                 :: !(Maybe (Maybe ReportStatus))
    , _rmReportDataEndTimeMs    :: !(Maybe Int64)
    , _rmGoogleCloudStoragePath :: !(Maybe Text)
    , _rmReportDataStartTimeMs  :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ReportMetadata
    { _rmStatus = Nothing
    , _rmReportDataEndTimeMs = Nothing
    , _rmGoogleCloudStoragePath = Nothing
    , _rmReportDataStartTimeMs = Nothing
    }

-- | Report status.
rmStatus :: Lens' ReportMetadata (Maybe (Maybe ReportStatus))
rmStatus = lens _rmStatus (\ s a -> s{_rmStatus = a})

-- | The ending time for the data that is shown in the report.
rmReportDataEndTimeMs :: Lens' ReportMetadata (Maybe Int64)
rmReportDataEndTimeMs
  = lens _rmReportDataEndTimeMs
      (\ s a -> s{_rmReportDataEndTimeMs = a})

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

-- | Report status.
--
-- /See:/ 'reportStatus' smart constructor.
data ReportStatus = ReportStatus
    { _rsState        :: !(Maybe ReportStatusState)
    , _rsFinishTimeMs :: !(Maybe Int64)
    , _rsFormat       :: !(Maybe ReportStatusFormat)
    , _rsFailure      :: !(Maybe (Maybe ReportFailure))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ReportStatus
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

-- | The file type of the report.
rsFormat :: Lens' ReportStatus (Maybe ReportStatusFormat)
rsFormat = lens _rsFormat (\ s a -> s{_rsFormat = a})

-- | If the report failed, this records the cause.
rsFailure :: Lens' ReportStatus (Maybe (Maybe ReportFailure))
rsFailure
  = lens _rsFailure (\ s a -> s{_rsFailure = a})

-- | Represents the upload status of a row in the request.
--
-- /See:/ 'rowStatus' smart constructor.
data RowStatus = RowStatus
    { _rsEntityName :: !(Maybe Text)
    , _rsChanged    :: !(Maybe Bool)
    , _rsPersisted  :: !(Maybe Bool)
    , _rsRowNumber  :: !(Maybe Int32)
    , _rsErrors     :: !(Maybe [Text])
    , _rsEntityId   :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RowStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsEntityName'
--
-- * 'rsChanged'
--
-- * 'rsPersisted'
--
-- * 'rsRowNumber'
--
-- * 'rsErrors'
--
-- * 'rsEntityId'
rowStatus
    :: RowStatus
rowStatus =
    RowStatus
    { _rsEntityName = Nothing
    , _rsChanged = Nothing
    , _rsPersisted = Nothing
    , _rsRowNumber = Nothing
    , _rsErrors = Nothing
    , _rsEntityId = Nothing
    }

-- | Entity name.
rsEntityName :: Lens' RowStatus (Maybe Text)
rsEntityName
  = lens _rsEntityName (\ s a -> s{_rsEntityName = a})

-- | Whether the stored entity is changed as a result of upload.
rsChanged :: Lens' RowStatus (Maybe Bool)
rsChanged
  = lens _rsChanged (\ s a -> s{_rsChanged = a})

-- | Whether the entity is persisted.
rsPersisted :: Lens' RowStatus (Maybe Bool)
rsPersisted
  = lens _rsPersisted (\ s a -> s{_rsPersisted = a})

-- | Row number.
rsRowNumber :: Lens' RowStatus (Maybe Int32)
rsRowNumber
  = lens _rsRowNumber (\ s a -> s{_rsRowNumber = a})

-- | Reasons why the entity can\'t be uploaded.
rsErrors :: Lens' RowStatus [Text]
rsErrors
  = lens _rsErrors (\ s a -> s{_rsErrors = a}) .
      _Default
      . _Coerce

-- | Entity Id.
rsEntityId :: Lens' RowStatus (Maybe Int64)
rsEntityId
  = lens _rsEntityId (\ s a -> s{_rsEntityId = a})

-- | Request to run a stored query to generate a report.
--
-- /See:/ 'runQueryRequest' smart constructor.
data RunQueryRequest = RunQueryRequest
    { _rqrReportDataEndTimeMs   :: !(Maybe Int64)
    , _rqrDataRange             :: !(Maybe RunQueryRequestDataRange)
    , _rqrReportDataStartTimeMs :: !(Maybe Int64)
    , _rqrTimezoneCode          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    RunQueryRequest
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

-- | Canonical timezone code for report data time. Defaults to
-- America\/New_York.
rqrTimezoneCode :: Lens' RunQueryRequest (Maybe Text)
rqrTimezoneCode
  = lens _rqrTimezoneCode
      (\ s a -> s{_rqrTimezoneCode = a})

-- | Request to upload line items.
--
-- /See:/ 'uploadLineItemsRequest' smart constructor.
data UploadLineItemsRequest = UploadLineItemsRequest
    { _ulirLineItems :: !(Maybe Text)
    , _ulirFormat    :: !(Maybe UploadLineItemsRequestFormat)
    , _ulirDryRun    :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UploadLineItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulirLineItems'
--
-- * 'ulirFormat'
--
-- * 'ulirDryRun'
uploadLineItemsRequest
    :: UploadLineItemsRequest
uploadLineItemsRequest =
    UploadLineItemsRequest
    { _ulirLineItems = Nothing
    , _ulirFormat = Nothing
    , _ulirDryRun = Nothing
    }

-- | Line items in CSV to upload. Refer to Entity Write File Format for more
-- information on file format.
ulirLineItems :: Lens' UploadLineItemsRequest (Maybe Text)
ulirLineItems
  = lens _ulirLineItems
      (\ s a -> s{_ulirLineItems = a})

-- | Format the line items are in. Default to CSV.
ulirFormat :: Lens' UploadLineItemsRequest (Maybe UploadLineItemsRequestFormat)
ulirFormat
  = lens _ulirFormat (\ s a -> s{_ulirFormat = a})

-- | Set to true to get upload status without actually persisting the line
-- items.
ulirDryRun :: Lens' UploadLineItemsRequest (Maybe Bool)
ulirDryRun
  = lens _ulirDryRun (\ s a -> s{_ulirDryRun = a})

-- | Upload line items response.
--
-- /See:/ 'uploadLineItemsResponse' smart constructor.
newtype UploadLineItemsResponse = UploadLineItemsResponse
    { _ulirUploadStatus :: Maybe (Maybe UploadStatus)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UploadLineItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulirUploadStatus'
uploadLineItemsResponse
    :: UploadLineItemsResponse
uploadLineItemsResponse =
    UploadLineItemsResponse
    { _ulirUploadStatus = Nothing
    }

-- | Status of upload.
ulirUploadStatus :: Lens' UploadLineItemsResponse (Maybe (Maybe UploadStatus))
ulirUploadStatus
  = lens _ulirUploadStatus
      (\ s a -> s{_ulirUploadStatus = a})

-- | Represents the status of upload.
--
-- /See:/ 'uploadStatus' smart constructor.
data UploadStatus = UploadStatus
    { _usRowStatus :: !(Maybe [Maybe RowStatus])
    , _usErrors    :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UploadStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usRowStatus'
--
-- * 'usErrors'
uploadStatus
    :: UploadStatus
uploadStatus =
    UploadStatus
    { _usRowStatus = Nothing
    , _usErrors = Nothing
    }

-- | Per-row upload status.
usRowStatus :: Lens' UploadStatus [Maybe RowStatus]
usRowStatus
  = lens _usRowStatus (\ s a -> s{_usRowStatus = a}) .
      _Default
      . _Coerce

-- | Reasons why upload can\'t be completed.
usErrors :: Lens' UploadStatus [Text]
usErrors
  = lens _usErrors (\ s a -> s{_usErrors = a}) .
      _Default
      . _Coerce
