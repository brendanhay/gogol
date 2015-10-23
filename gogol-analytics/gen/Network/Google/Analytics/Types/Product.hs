{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Analytics.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Analytics.Types.Product where

import           Network.Google.Analytics.Types.Sum
import           Network.Google.Prelude

-- | An unsampled report collection lists Analytics unsampled reports to
-- which the user has access. Each view (profile) can have a set of
-- unsampled reports. Each resource in the unsampled report collection
-- corresponds to a single Analytics unsampled report.
--
-- /See:/ 'unSampledReports' smart constructor.
data UnSampledReports = UnSampledReports
    { _usrNextLink     :: !(Maybe Text)
    , _usrItemsPerPage :: !(Maybe (JSONText Int32))
    , _usrKind         :: !Text
    , _usrUsername     :: !(Maybe Text)
    , _usrItems        :: !(Maybe [UnSampledReport])
    , _usrTotalResults :: !(Maybe (JSONText Int32))
    , _usrStartIndex   :: !(Maybe (JSONText Int32))
    , _usrPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnSampledReports' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrNextLink'
--
-- * 'usrItemsPerPage'
--
-- * 'usrKind'
--
-- * 'usrUsername'
--
-- * 'usrItems'
--
-- * 'usrTotalResults'
--
-- * 'usrStartIndex'
--
-- * 'usrPreviousLink'
unSampledReports
    :: UnSampledReports
unSampledReports =
    UnSampledReports
    { _usrNextLink = Nothing
    , _usrItemsPerPage = Nothing
    , _usrKind = "analytics#unsampledReports"
    , _usrUsername = Nothing
    , _usrItems = Nothing
    , _usrTotalResults = Nothing
    , _usrStartIndex = Nothing
    , _usrPreviousLink = Nothing
    }

-- | Link to next page for this unsampled report collection.
usrNextLink :: Lens' UnSampledReports (Maybe Text)
usrNextLink
  = lens _usrNextLink (\ s a -> s{_usrNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
usrItemsPerPage :: Lens' UnSampledReports (Maybe Int32)
usrItemsPerPage
  = lens _usrItemsPerPage
      (\ s a -> s{_usrItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
usrKind :: Lens' UnSampledReports Text
usrKind = lens _usrKind (\ s a -> s{_usrKind = a})

-- | Email ID of the authenticated user
usrUsername :: Lens' UnSampledReports (Maybe Text)
usrUsername
  = lens _usrUsername (\ s a -> s{_usrUsername = a})

-- | A list of unsampled reports.
usrItems :: Lens' UnSampledReports [UnSampledReport]
usrItems
  = lens _usrItems (\ s a -> s{_usrItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- resources in the result.
usrTotalResults :: Lens' UnSampledReports (Maybe Int32)
usrTotalResults
  = lens _usrTotalResults
      (\ s a -> s{_usrTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
usrStartIndex :: Lens' UnSampledReports (Maybe Int32)
usrStartIndex
  = lens _usrStartIndex
      (\ s a -> s{_usrStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this unsampled report collection.
usrPreviousLink :: Lens' UnSampledReports (Maybe Text)
usrPreviousLink
  = lens _usrPreviousLink
      (\ s a -> s{_usrPreviousLink = a})

instance FromJSON UnSampledReports where
        parseJSON
          = withObject "UnSampledReports"
              (\ o ->
                 UnSampledReports <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#unsampledReports")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON UnSampledReports where
        toJSON UnSampledReports{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _usrNextLink,
                  ("itemsPerPage" .=) <$> _usrItemsPerPage,
                  Just ("kind" .= _usrKind),
                  ("username" .=) <$> _usrUsername,
                  ("items" .=) <$> _usrItems,
                  ("totalResults" .=) <$> _usrTotalResults,
                  ("startIndex" .=) <$> _usrStartIndex,
                  ("previousLink" .=) <$> _usrPreviousLink])

--
-- /See:/ 'goalURLDestinationDetailsStepsItem' smart constructor.
data GoalURLDestinationDetailsStepsItem = GoalURLDestinationDetailsStepsItem
    { _guddsiURL    :: !(Maybe Text)
    , _guddsiName   :: !(Maybe Text)
    , _guddsiNumber :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalURLDestinationDetailsStepsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guddsiURL'
--
-- * 'guddsiName'
--
-- * 'guddsiNumber'
goalURLDestinationDetailsStepsItem
    :: GoalURLDestinationDetailsStepsItem
goalURLDestinationDetailsStepsItem =
    GoalURLDestinationDetailsStepsItem
    { _guddsiURL = Nothing
    , _guddsiName = Nothing
    , _guddsiNumber = Nothing
    }

-- | URL for this step.
guddsiURL :: Lens' GoalURLDestinationDetailsStepsItem (Maybe Text)
guddsiURL
  = lens _guddsiURL (\ s a -> s{_guddsiURL = a})

-- | Step name.
guddsiName :: Lens' GoalURLDestinationDetailsStepsItem (Maybe Text)
guddsiName
  = lens _guddsiName (\ s a -> s{_guddsiName = a})

-- | Step number.
guddsiNumber :: Lens' GoalURLDestinationDetailsStepsItem (Maybe Int32)
guddsiNumber
  = lens _guddsiNumber (\ s a -> s{_guddsiNumber = a})
      . mapping _Coerce

instance FromJSON GoalURLDestinationDetailsStepsItem
         where
        parseJSON
          = withObject "GoalURLDestinationDetailsStepsItem"
              (\ o ->
                 GoalURLDestinationDetailsStepsItem <$>
                   (o .:? "url") <*> (o .:? "name") <*>
                     (o .:? "number"))

instance ToJSON GoalURLDestinationDetailsStepsItem
         where
        toJSON GoalURLDestinationDetailsStepsItem{..}
          = object
              (catMaybes
                 [("url" .=) <$> _guddsiURL,
                  ("name" .=) <$> _guddsiName,
                  ("number" .=) <$> _guddsiNumber])

-- | Analytics data request query parameters.
--
-- /See:/ 'gaDataQuery' smart constructor.
data GaDataQuery = GaDataQuery
    { _gdqMetrics       :: !(Maybe [Text])
    , _gdqSamplingLevel :: !(Maybe Text)
    , _gdqFilters       :: !(Maybe Text)
    , _gdqIds           :: !(Maybe Text)
    , _gdqEndDate       :: !(Maybe Text)
    , _gdqSort          :: !(Maybe [Text])
    , _gdqDimensions    :: !(Maybe Text)
    , _gdqStartIndex    :: !(Maybe (JSONText Int32))
    , _gdqMaxResults    :: !(Maybe (JSONText Int32))
    , _gdqSegment       :: !(Maybe Text)
    , _gdqStartDate     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdqMetrics'
--
-- * 'gdqSamplingLevel'
--
-- * 'gdqFilters'
--
-- * 'gdqIds'
--
-- * 'gdqEndDate'
--
-- * 'gdqSort'
--
-- * 'gdqDimensions'
--
-- * 'gdqStartIndex'
--
-- * 'gdqMaxResults'
--
-- * 'gdqSegment'
--
-- * 'gdqStartDate'
gaDataQuery
    :: GaDataQuery
gaDataQuery =
    GaDataQuery
    { _gdqMetrics = Nothing
    , _gdqSamplingLevel = Nothing
    , _gdqFilters = Nothing
    , _gdqIds = Nothing
    , _gdqEndDate = Nothing
    , _gdqSort = Nothing
    , _gdqDimensions = Nothing
    , _gdqStartIndex = Nothing
    , _gdqMaxResults = Nothing
    , _gdqSegment = Nothing
    , _gdqStartDate = Nothing
    }

-- | List of analytics metrics.
gdqMetrics :: Lens' GaDataQuery [Text]
gdqMetrics
  = lens _gdqMetrics (\ s a -> s{_gdqMetrics = a}) .
      _Default
      . _Coerce

-- | Desired sampling level
gdqSamplingLevel :: Lens' GaDataQuery (Maybe Text)
gdqSamplingLevel
  = lens _gdqSamplingLevel
      (\ s a -> s{_gdqSamplingLevel = a})

-- | Comma-separated list of dimension or metric filters.
gdqFilters :: Lens' GaDataQuery (Maybe Text)
gdqFilters
  = lens _gdqFilters (\ s a -> s{_gdqFilters = a})

-- | Unique table ID.
gdqIds :: Lens' GaDataQuery (Maybe Text)
gdqIds = lens _gdqIds (\ s a -> s{_gdqIds = a})

-- | End date.
gdqEndDate :: Lens' GaDataQuery (Maybe Text)
gdqEndDate
  = lens _gdqEndDate (\ s a -> s{_gdqEndDate = a})

-- | List of dimensions or metrics based on which Analytics data is sorted.
gdqSort :: Lens' GaDataQuery [Text]
gdqSort
  = lens _gdqSort (\ s a -> s{_gdqSort = a}) . _Default
      . _Coerce

-- | List of analytics dimensions.
gdqDimensions :: Lens' GaDataQuery (Maybe Text)
gdqDimensions
  = lens _gdqDimensions
      (\ s a -> s{_gdqDimensions = a})

-- | Start index.
gdqStartIndex :: Lens' GaDataQuery (Maybe Int32)
gdqStartIndex
  = lens _gdqStartIndex
      (\ s a -> s{_gdqStartIndex = a})
      . mapping _Coerce

-- | Maximum results per page.
gdqMaxResults :: Lens' GaDataQuery (Maybe Int32)
gdqMaxResults
  = lens _gdqMaxResults
      (\ s a -> s{_gdqMaxResults = a})
      . mapping _Coerce

-- | Analytics advanced segment.
gdqSegment :: Lens' GaDataQuery (Maybe Text)
gdqSegment
  = lens _gdqSegment (\ s a -> s{_gdqSegment = a})

-- | Start date.
gdqStartDate :: Lens' GaDataQuery (Maybe Text)
gdqStartDate
  = lens _gdqStartDate (\ s a -> s{_gdqStartDate = a})

instance FromJSON GaDataQuery where
        parseJSON
          = withObject "GaDataQuery"
              (\ o ->
                 GaDataQuery <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "samplingLevel")
                     <*> (o .:? "filters")
                     <*> (o .:? "ids")
                     <*> (o .:? "end-date")
                     <*> (o .:? "sort" .!= mempty)
                     <*> (o .:? "dimensions")
                     <*> (o .:? "start-index")
                     <*> (o .:? "max-results")
                     <*> (o .:? "segment")
                     <*> (o .:? "start-date"))

instance ToJSON GaDataQuery where
        toJSON GaDataQuery{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _gdqMetrics,
                  ("samplingLevel" .=) <$> _gdqSamplingLevel,
                  ("filters" .=) <$> _gdqFilters,
                  ("ids" .=) <$> _gdqIds,
                  ("end-date" .=) <$> _gdqEndDate,
                  ("sort" .=) <$> _gdqSort,
                  ("dimensions" .=) <$> _gdqDimensions,
                  ("start-index" .=) <$> _gdqStartIndex,
                  ("max-results" .=) <$> _gdqMaxResults,
                  ("segment" .=) <$> _gdqSegment,
                  ("start-date" .=) <$> _gdqStartDate])

--
-- /See:/ 'gaDataDataTableRowsItem' smart constructor.
newtype GaDataDataTableRowsItem = GaDataDataTableRowsItem
    { _gddtriC :: Maybe [GaDataDataTableRowsItemCItem]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataDataTableRowsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddtriC'
gaDataDataTableRowsItem
    :: GaDataDataTableRowsItem
gaDataDataTableRowsItem =
    GaDataDataTableRowsItem
    { _gddtriC = Nothing
    }

gddtriC :: Lens' GaDataDataTableRowsItem [GaDataDataTableRowsItemCItem]
gddtriC
  = lens _gddtriC (\ s a -> s{_gddtriC = a}) . _Default
      . _Coerce

instance FromJSON GaDataDataTableRowsItem where
        parseJSON
          = withObject "GaDataDataTableRowsItem"
              (\ o ->
                 GaDataDataTableRowsItem <$> (o .:? "c" .!= mempty))

instance ToJSON GaDataDataTableRowsItem where
        toJSON GaDataDataTableRowsItem{..}
          = object (catMaybes [("c" .=) <$> _gddtriC])

-- | JSON template for Analytics unsampled report resource.
--
-- /See:/ 'unSampledReport' smart constructor.
data UnSampledReport = UnSampledReport
    { _uDownloadType                :: !(Maybe Text)
    , _uStatus                      :: !(Maybe Text)
    , _uMetrics                     :: !(Maybe Text)
    , _uDriveDownloadDetails        :: !(Maybe UnSampledReportDriveDownloadDetails)
    , _uWebPropertyId               :: !(Maybe Text)
    , _uKind                        :: !Text
    , _uCreated                     :: !(Maybe DateTime')
    , _uFilters                     :: !(Maybe Text)
    , _uProFileId                   :: !(Maybe Text)
    , _uEndDate                     :: !(Maybe Text)
    , _uSelfLink                    :: !(Maybe Text)
    , _uAccountId                   :: !(Maybe Text)
    , _uId                          :: !(Maybe Text)
    , _uUpdated                     :: !(Maybe DateTime')
    , _uTitle                       :: !(Maybe Text)
    , _uDimensions                  :: !(Maybe Text)
    , _uSegment                     :: !(Maybe Text)
    , _uCloudStorageDownloadDetails :: !(Maybe UnSampledReportCloudStorageDownloadDetails)
    , _uStartDate                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnSampledReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uDownloadType'
--
-- * 'uStatus'
--
-- * 'uMetrics'
--
-- * 'uDriveDownloadDetails'
--
-- * 'uWebPropertyId'
--
-- * 'uKind'
--
-- * 'uCreated'
--
-- * 'uFilters'
--
-- * 'uProFileId'
--
-- * 'uEndDate'
--
-- * 'uSelfLink'
--
-- * 'uAccountId'
--
-- * 'uId'
--
-- * 'uUpdated'
--
-- * 'uTitle'
--
-- * 'uDimensions'
--
-- * 'uSegment'
--
-- * 'uCloudStorageDownloadDetails'
--
-- * 'uStartDate'
unSampledReport
    :: UnSampledReport
unSampledReport =
    UnSampledReport
    { _uDownloadType = Nothing
    , _uStatus = Nothing
    , _uMetrics = Nothing
    , _uDriveDownloadDetails = Nothing
    , _uWebPropertyId = Nothing
    , _uKind = "analytics#unsampledReport"
    , _uCreated = Nothing
    , _uFilters = Nothing
    , _uProFileId = Nothing
    , _uEndDate = Nothing
    , _uSelfLink = Nothing
    , _uAccountId = Nothing
    , _uId = Nothing
    , _uUpdated = Nothing
    , _uTitle = Nothing
    , _uDimensions = Nothing
    , _uSegment = Nothing
    , _uCloudStorageDownloadDetails = Nothing
    , _uStartDate = Nothing
    }

-- | The type of download you need to use for the report data file.
uDownloadType :: Lens' UnSampledReport (Maybe Text)
uDownloadType
  = lens _uDownloadType
      (\ s a -> s{_uDownloadType = a})

-- | Status of this unsampled report. Possible values are PENDING, COMPLETED,
-- or FAILED.
uStatus :: Lens' UnSampledReport (Maybe Text)
uStatus = lens _uStatus (\ s a -> s{_uStatus = a})

-- | The metrics for the unsampled report.
uMetrics :: Lens' UnSampledReport (Maybe Text)
uMetrics = lens _uMetrics (\ s a -> s{_uMetrics = a})

-- | Download details for a file stored in Google Drive.
uDriveDownloadDetails :: Lens' UnSampledReport (Maybe UnSampledReportDriveDownloadDetails)
uDriveDownloadDetails
  = lens _uDriveDownloadDetails
      (\ s a -> s{_uDriveDownloadDetails = a})

-- | Web property ID to which this unsampled report belongs. The web property
-- ID is of the form UA-XXXXX-YY.
uWebPropertyId :: Lens' UnSampledReport (Maybe Text)
uWebPropertyId
  = lens _uWebPropertyId
      (\ s a -> s{_uWebPropertyId = a})

-- | Resource type for an Analytics unsampled report.
uKind :: Lens' UnSampledReport Text
uKind = lens _uKind (\ s a -> s{_uKind = a})

-- | Time this unsampled report was created.
uCreated :: Lens' UnSampledReport (Maybe UTCTime)
uCreated
  = lens _uCreated (\ s a -> s{_uCreated = a}) .
      mapping _DateTime

-- | The filters for the unsampled report.
uFilters :: Lens' UnSampledReport (Maybe Text)
uFilters = lens _uFilters (\ s a -> s{_uFilters = a})

-- | View (Profile) ID to which this unsampled report belongs.
uProFileId :: Lens' UnSampledReport (Maybe Text)
uProFileId
  = lens _uProFileId (\ s a -> s{_uProFileId = a})

-- | The end date for the unsampled report.
uEndDate :: Lens' UnSampledReport (Maybe Text)
uEndDate = lens _uEndDate (\ s a -> s{_uEndDate = a})

-- | Link for this unsampled report.
uSelfLink :: Lens' UnSampledReport (Maybe Text)
uSelfLink
  = lens _uSelfLink (\ s a -> s{_uSelfLink = a})

-- | Account ID to which this unsampled report belongs.
uAccountId :: Lens' UnSampledReport (Maybe Text)
uAccountId
  = lens _uAccountId (\ s a -> s{_uAccountId = a})

-- | Unsampled report ID.
uId :: Lens' UnSampledReport (Maybe Text)
uId = lens _uId (\ s a -> s{_uId = a})

-- | Time this unsampled report was last modified.
uUpdated :: Lens' UnSampledReport (Maybe UTCTime)
uUpdated
  = lens _uUpdated (\ s a -> s{_uUpdated = a}) .
      mapping _DateTime

-- | Title of the unsampled report.
uTitle :: Lens' UnSampledReport (Maybe Text)
uTitle = lens _uTitle (\ s a -> s{_uTitle = a})

-- | The dimensions for the unsampled report.
uDimensions :: Lens' UnSampledReport (Maybe Text)
uDimensions
  = lens _uDimensions (\ s a -> s{_uDimensions = a})

-- | The segment for the unsampled report.
uSegment :: Lens' UnSampledReport (Maybe Text)
uSegment = lens _uSegment (\ s a -> s{_uSegment = a})

-- | Download details for a file stored in Google Cloud Storage.
uCloudStorageDownloadDetails :: Lens' UnSampledReport (Maybe UnSampledReportCloudStorageDownloadDetails)
uCloudStorageDownloadDetails
  = lens _uCloudStorageDownloadDetails
      (\ s a -> s{_uCloudStorageDownloadDetails = a})

-- | The start date for the unsampled report.
uStartDate :: Lens' UnSampledReport (Maybe Text)
uStartDate
  = lens _uStartDate (\ s a -> s{_uStartDate = a})

instance FromJSON UnSampledReport where
        parseJSON
          = withObject "UnSampledReport"
              (\ o ->
                 UnSampledReport <$>
                   (o .:? "downloadType") <*> (o .:? "status") <*>
                     (o .:? "metrics")
                     <*> (o .:? "driveDownloadDetails")
                     <*> (o .:? "webPropertyId")
                     <*> (o .:? "kind" .!= "analytics#unsampledReport")
                     <*> (o .:? "created")
                     <*> (o .:? "filters")
                     <*> (o .:? "profileId")
                     <*> (o .:? "end-date")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "accountId")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "title")
                     <*> (o .:? "dimensions")
                     <*> (o .:? "segment")
                     <*> (o .:? "cloudStorageDownloadDetails")
                     <*> (o .:? "start-date"))

instance ToJSON UnSampledReport where
        toJSON UnSampledReport{..}
          = object
              (catMaybes
                 [("downloadType" .=) <$> _uDownloadType,
                  ("status" .=) <$> _uStatus,
                  ("metrics" .=) <$> _uMetrics,
                  ("driveDownloadDetails" .=) <$>
                    _uDriveDownloadDetails,
                  ("webPropertyId" .=) <$> _uWebPropertyId,
                  Just ("kind" .= _uKind),
                  ("created" .=) <$> _uCreated,
                  ("filters" .=) <$> _uFilters,
                  ("profileId" .=) <$> _uProFileId,
                  ("end-date" .=) <$> _uEndDate,
                  ("selfLink" .=) <$> _uSelfLink,
                  ("accountId" .=) <$> _uAccountId, ("id" .=) <$> _uId,
                  ("updated" .=) <$> _uUpdated,
                  ("title" .=) <$> _uTitle,
                  ("dimensions" .=) <$> _uDimensions,
                  ("segment" .=) <$> _uSegment,
                  ("cloudStorageDownloadDetails" .=) <$>
                    _uCloudStorageDownloadDetails,
                  ("start-date" .=) <$> _uStartDate])

--
-- /See:/ 'mcfDataColumnHeadersItem' smart constructor.
data McfDataColumnHeadersItem = McfDataColumnHeadersItem
    { _mdchiColumnType :: !(Maybe Text)
    , _mdchiName       :: !(Maybe Text)
    , _mdchiDataType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataColumnHeadersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdchiColumnType'
--
-- * 'mdchiName'
--
-- * 'mdchiDataType'
mcfDataColumnHeadersItem
    :: McfDataColumnHeadersItem
mcfDataColumnHeadersItem =
    McfDataColumnHeadersItem
    { _mdchiColumnType = Nothing
    , _mdchiName = Nothing
    , _mdchiDataType = Nothing
    }

-- | Column Type. Either DIMENSION or METRIC.
mdchiColumnType :: Lens' McfDataColumnHeadersItem (Maybe Text)
mdchiColumnType
  = lens _mdchiColumnType
      (\ s a -> s{_mdchiColumnType = a})

-- | Column name.
mdchiName :: Lens' McfDataColumnHeadersItem (Maybe Text)
mdchiName
  = lens _mdchiName (\ s a -> s{_mdchiName = a})

-- | Data type. Dimension and metric values data types such as INTEGER,
-- DOUBLE, CURRENCY, MCF_SEQUENCE etc.
mdchiDataType :: Lens' McfDataColumnHeadersItem (Maybe Text)
mdchiDataType
  = lens _mdchiDataType
      (\ s a -> s{_mdchiDataType = a})

instance FromJSON McfDataColumnHeadersItem where
        parseJSON
          = withObject "McfDataColumnHeadersItem"
              (\ o ->
                 McfDataColumnHeadersItem <$>
                   (o .:? "columnType") <*> (o .:? "name") <*>
                     (o .:? "dataType"))

instance ToJSON McfDataColumnHeadersItem where
        toJSON McfDataColumnHeadersItem{..}
          = object
              (catMaybes
                 [("columnType" .=) <$> _mdchiColumnType,
                  ("name" .=) <$> _mdchiName,
                  ("dataType" .=) <$> _mdchiDataType])

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
--
-- /See:/ 'gaDataTotalsForAllResults' smart constructor.
newtype GaDataTotalsForAllResults = GaDataTotalsForAllResults
    { _gdtfarAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataTotalsForAllResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdtfarAddtional'
gaDataTotalsForAllResults
    :: HashMap Text Text -- ^ 'gdtfarAddtional'
    -> GaDataTotalsForAllResults
gaDataTotalsForAllResults pGdtfarAddtional_ =
    GaDataTotalsForAllResults
    { _gdtfarAddtional = pGdtfarAddtional_
    }

-- | Key-value pair for the total value of a metric. Key is the metric name
-- and the value is the total value for that metric.
gdtfarAddtional :: Lens' GaDataTotalsForAllResults (HashMap Text Text)
gdtfarAddtional
  = lens _gdtfarAddtional
      (\ s a -> s{_gdtfarAddtional = a})

instance FromJSON GaDataTotalsForAllResults where
        parseJSON
          = withObject "GaDataTotalsForAllResults"
              (\ o ->
                 GaDataTotalsForAllResults <$> (parseJSONObject o))

instance ToJSON GaDataTotalsForAllResults where
        toJSON = toJSON . _gdtfarAddtional

-- | Parent link for this view (profile). Points to the web property to which
-- this view (profile) belongs.
--
-- /See:/ 'proFileParentLink' smart constructor.
data ProFileParentLink = ProFileParentLink
    { _pfplHref :: !(Maybe Text)
    , _pfplType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFileParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfplHref'
--
-- * 'pfplType'
proFileParentLink
    :: ProFileParentLink
proFileParentLink =
    ProFileParentLink
    { _pfplHref = Nothing
    , _pfplType = "analytics#webproperty"
    }

-- | Link to the web property to which this view (profile) belongs.
pfplHref :: Lens' ProFileParentLink (Maybe Text)
pfplHref = lens _pfplHref (\ s a -> s{_pfplHref = a})

-- | Value is \"analytics#webproperty\".
pfplType :: Lens' ProFileParentLink Text
pfplType = lens _pfplType (\ s a -> s{_pfplType = a})

instance FromJSON ProFileParentLink where
        parseJSON
          = withObject "ProFileParentLink"
              (\ o ->
                 ProFileParentLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#webproperty"))

instance ToJSON ProFileParentLink where
        toJSON ProFileParentLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _pfplHref,
                  Just ("type" .= _pfplType)])

--
-- /See:/ 'gaDataDataTableRowsItemCItem' smart constructor.
newtype GaDataDataTableRowsItemCItem = GaDataDataTableRowsItemCItem
    { _gddtriciV :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataDataTableRowsItemCItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddtriciV'
gaDataDataTableRowsItemCItem
    :: GaDataDataTableRowsItemCItem
gaDataDataTableRowsItemCItem =
    GaDataDataTableRowsItemCItem
    { _gddtriciV = Nothing
    }

gddtriciV :: Lens' GaDataDataTableRowsItemCItem (Maybe Text)
gddtriciV
  = lens _gddtriciV (\ s a -> s{_gddtriciV = a})

instance FromJSON GaDataDataTableRowsItemCItem where
        parseJSON
          = withObject "GaDataDataTableRowsItemCItem"
              (\ o -> GaDataDataTableRowsItemCItem <$> (o .:? "v"))

instance ToJSON GaDataDataTableRowsItemCItem where
        toJSON GaDataDataTableRowsItemCItem{..}
          = object (catMaybes [("v" .=) <$> _gddtriciV])

-- | Permissions the user has for this entity.
--
-- /See:/ 'entityUserLinkPermissions' smart constructor.
data EntityUserLinkPermissions = EntityUserLinkPermissions
    { _eulpLocal     :: !(Maybe [Text])
    , _eulpEffective :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityUserLinkPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eulpLocal'
--
-- * 'eulpEffective'
entityUserLinkPermissions
    :: EntityUserLinkPermissions
entityUserLinkPermissions =
    EntityUserLinkPermissions
    { _eulpLocal = Nothing
    , _eulpEffective = Nothing
    }

-- | Permissions that a user has been assigned at this very level. Does not
-- include any implied or inherited permissions. Local permissions are
-- modifiable.
eulpLocal :: Lens' EntityUserLinkPermissions [Text]
eulpLocal
  = lens _eulpLocal (\ s a -> s{_eulpLocal = a}) .
      _Default
      . _Coerce

-- | Effective permissions represent all the permissions that a user has for
-- this entity. These include any implied permissions (e.g., EDIT implies
-- VIEW) or inherited permissions from the parent entity. Effective
-- permissions are read-only.
eulpEffective :: Lens' EntityUserLinkPermissions [Text]
eulpEffective
  = lens _eulpEffective
      (\ s a -> s{_eulpEffective = a})
      . _Default
      . _Coerce

instance FromJSON EntityUserLinkPermissions where
        parseJSON
          = withObject "EntityUserLinkPermissions"
              (\ o ->
                 EntityUserLinkPermissions <$>
                   (o .:? "local" .!= mempty) <*>
                     (o .:? "effective" .!= mempty))

instance ToJSON EntityUserLinkPermissions where
        toJSON EntityUserLinkPermissions{..}
          = object
              (catMaybes
                 [("local" .=) <$> _eulpLocal,
                  ("effective" .=) <$> _eulpEffective])

-- | Information for the view (profile), for which the real time data was
-- requested.
--
-- /See:/ 'realtimeDataProFileInfo' smart constructor.
data RealtimeDataProFileInfo = RealtimeDataProFileInfo
    { _rdpfiWebPropertyId         :: !(Maybe Text)
    , _rdpfiProFileId             :: !(Maybe Text)
    , _rdpfiProFileName           :: !(Maybe Text)
    , _rdpfiAccountId             :: !(Maybe Text)
    , _rdpfiInternalWebPropertyId :: !(Maybe Text)
    , _rdpfiTableId               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeDataProFileInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdpfiWebPropertyId'
--
-- * 'rdpfiProFileId'
--
-- * 'rdpfiProFileName'
--
-- * 'rdpfiAccountId'
--
-- * 'rdpfiInternalWebPropertyId'
--
-- * 'rdpfiTableId'
realtimeDataProFileInfo
    :: RealtimeDataProFileInfo
realtimeDataProFileInfo =
    RealtimeDataProFileInfo
    { _rdpfiWebPropertyId = Nothing
    , _rdpfiProFileId = Nothing
    , _rdpfiProFileName = Nothing
    , _rdpfiAccountId = Nothing
    , _rdpfiInternalWebPropertyId = Nothing
    , _rdpfiTableId = Nothing
    }

-- | Web Property ID to which this view (profile) belongs.
rdpfiWebPropertyId :: Lens' RealtimeDataProFileInfo (Maybe Text)
rdpfiWebPropertyId
  = lens _rdpfiWebPropertyId
      (\ s a -> s{_rdpfiWebPropertyId = a})

-- | View (Profile) ID.
rdpfiProFileId :: Lens' RealtimeDataProFileInfo (Maybe Text)
rdpfiProFileId
  = lens _rdpfiProFileId
      (\ s a -> s{_rdpfiProFileId = a})

-- | View (Profile) name.
rdpfiProFileName :: Lens' RealtimeDataProFileInfo (Maybe Text)
rdpfiProFileName
  = lens _rdpfiProFileName
      (\ s a -> s{_rdpfiProFileName = a})

-- | Account ID to which this view (profile) belongs.
rdpfiAccountId :: Lens' RealtimeDataProFileInfo (Maybe Text)
rdpfiAccountId
  = lens _rdpfiAccountId
      (\ s a -> s{_rdpfiAccountId = a})

-- | Internal ID for the web property to which this view (profile) belongs.
rdpfiInternalWebPropertyId :: Lens' RealtimeDataProFileInfo (Maybe Text)
rdpfiInternalWebPropertyId
  = lens _rdpfiInternalWebPropertyId
      (\ s a -> s{_rdpfiInternalWebPropertyId = a})

-- | Table ID for view (profile).
rdpfiTableId :: Lens' RealtimeDataProFileInfo (Maybe Text)
rdpfiTableId
  = lens _rdpfiTableId (\ s a -> s{_rdpfiTableId = a})

instance FromJSON RealtimeDataProFileInfo where
        parseJSON
          = withObject "RealtimeDataProFileInfo"
              (\ o ->
                 RealtimeDataProFileInfo <$>
                   (o .:? "webPropertyId") <*> (o .:? "profileId") <*>
                     (o .:? "profileName")
                     <*> (o .:? "accountId")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "tableId"))

instance ToJSON RealtimeDataProFileInfo where
        toJSON RealtimeDataProFileInfo{..}
          = object
              (catMaybes
                 [("webPropertyId" .=) <$> _rdpfiWebPropertyId,
                  ("profileId" .=) <$> _rdpfiProFileId,
                  ("profileName" .=) <$> _rdpfiProFileName,
                  ("accountId" .=) <$> _rdpfiAccountId,
                  ("internalWebPropertyId" .=) <$>
                    _rdpfiInternalWebPropertyId,
                  ("tableId" .=) <$> _rdpfiTableId])

--
-- /See:/ 'mcfDataRowsItemItemConversionPathValueItem' smart constructor.
data McfDataRowsItemItemConversionPathValueItem = McfDataRowsItemItemConversionPathValueItem
    { _mdriicpviInteractionType :: !(Maybe Text)
    , _mdriicpviNodeValue       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataRowsItemItemConversionPathValueItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdriicpviInteractionType'
--
-- * 'mdriicpviNodeValue'
mcfDataRowsItemItemConversionPathValueItem
    :: McfDataRowsItemItemConversionPathValueItem
mcfDataRowsItemItemConversionPathValueItem =
    McfDataRowsItemItemConversionPathValueItem
    { _mdriicpviInteractionType = Nothing
    , _mdriicpviNodeValue = Nothing
    }

-- | Type of an interaction on conversion path. Such as CLICK, IMPRESSION
-- etc.
mdriicpviInteractionType :: Lens' McfDataRowsItemItemConversionPathValueItem (Maybe Text)
mdriicpviInteractionType
  = lens _mdriicpviInteractionType
      (\ s a -> s{_mdriicpviInteractionType = a})

-- | Node value of an interaction on conversion path. Such as source, medium
-- etc.
mdriicpviNodeValue :: Lens' McfDataRowsItemItemConversionPathValueItem (Maybe Text)
mdriicpviNodeValue
  = lens _mdriicpviNodeValue
      (\ s a -> s{_mdriicpviNodeValue = a})

instance FromJSON
         McfDataRowsItemItemConversionPathValueItem where
        parseJSON
          = withObject
              "McfDataRowsItemItemConversionPathValueItem"
              (\ o ->
                 McfDataRowsItemItemConversionPathValueItem <$>
                   (o .:? "interactionType") <*> (o .:? "nodeValue"))

instance ToJSON
         McfDataRowsItemItemConversionPathValueItem where
        toJSON McfDataRowsItemItemConversionPathValueItem{..}
          = object
              (catMaybes
                 [("interactionType" .=) <$>
                    _mdriicpviInteractionType,
                  ("nodeValue" .=) <$> _mdriicpviNodeValue])

-- | JSON template for an Analytics filter expression.
--
-- /See:/ 'filterExpression' smart constructor.
data FilterExpression = FilterExpression
    { _feFieldIndex      :: !(Maybe (JSONText Int32))
    , _feField           :: !(Maybe Text)
    , _feKind            :: !Text
    , _feMatchType       :: !(Maybe Text)
    , _feCaseSensitive   :: !(Maybe Bool)
    , _feExpressionValue :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterExpression' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'feFieldIndex'
--
-- * 'feField'
--
-- * 'feKind'
--
-- * 'feMatchType'
--
-- * 'feCaseSensitive'
--
-- * 'feExpressionValue'
filterExpression
    :: FilterExpression
filterExpression =
    FilterExpression
    { _feFieldIndex = Nothing
    , _feField = Nothing
    , _feKind = "analytics#filterExpression"
    , _feMatchType = Nothing
    , _feCaseSensitive = Nothing
    , _feExpressionValue = Nothing
    }

-- | The Index of the custom dimension. Set only if the field is a is
-- CUSTOM_DIMENSION.
feFieldIndex :: Lens' FilterExpression (Maybe Int32)
feFieldIndex
  = lens _feFieldIndex (\ s a -> s{_feFieldIndex = a})
      . mapping _Coerce

-- | Field to filter. Possible values: - Content and Traffic -
-- PAGE_REQUEST_URI, - PAGE_HOSTNAME, - PAGE_TITLE, - REFERRAL, -
-- COST_DATA_URI (Campaign target URL), - HIT_TYPE, - INTERNAL_SEARCH_TERM,
-- - INTERNAL_SEARCH_TYPE, - SOURCE_PROPERTY_TRACKING_ID, - Campaign or
-- AdGroup - CAMPAIGN_SOURCE, - CAMPAIGN_MEDIUM, - CAMPAIGN_NAME, -
-- CAMPAIGN_AD_GROUP, - CAMPAIGN_TERM, - CAMPAIGN_CONTENT, - CAMPAIGN_CODE,
-- - CAMPAIGN_REFERRAL_PATH, - E-Commerce - TRANSACTION_COUNTRY, -
-- TRANSACTION_REGION, - TRANSACTION_CITY, - TRANSACTION_AFFILIATION (Store
-- or order location), - ITEM_NAME, - ITEM_CODE, - ITEM_VARIATION, -
-- TRANSACTION_ID, - TRANSACTION_CURRENCY_CODE, - PRODUCT_ACTION_TYPE, -
-- Audience\/Users - BROWSER, - BROWSER_VERSION, - BROWSER_SIZE, -
-- PLATFORM, - PLATFORM_VERSION, - LANGUAGE, - SCREEN_RESOLUTION, -
-- SCREEN_COLORS, - JAVA_ENABLED (Boolean Field), - FLASH_VERSION, -
-- GEO_SPEED (Connection speed), - VISITOR_TYPE, - GEO_ORGANIZATION (ISP
-- organization), - GEO_DOMAIN, - GEO_IP_ADDRESS, - GEO_IP_VERSION, -
-- Location - GEO_COUNTRY, - GEO_REGION, - GEO_CITY, - Event -
-- EVENT_CATEGORY, - EVENT_ACTION, - EVENT_LABEL, - Other - CUSTOM_FIELD_1,
-- - CUSTOM_FIELD_2, - USER_DEFINED_VALUE, - Application - APP_ID, -
-- APP_INSTALLER_ID, - APP_NAME, - APP_VERSION, - SCREEN, - IS_APP (Boolean
-- Field), - IS_FATAL_EXCEPTION (Boolean Field), - EXCEPTION_DESCRIPTION, -
-- Mobile device - IS_MOBILE (Boolean Field, Deprecated. Use
-- DEVICE_CATEGORY=mobile), - IS_TABLET (Boolean Field, Deprecated. Use
-- DEVICE_CATEGORY=tablet), - DEVICE_CATEGORY, - MOBILE_HAS_QWERTY_KEYBOARD
-- (Boolean Field), - MOBILE_HAS_NFC_SUPPORT (Boolean Field), -
-- MOBILE_HAS_CELLULAR_RADIO (Boolean Field), - MOBILE_HAS_WIFI_SUPPORT
-- (Boolean Field), - MOBILE_BRAND_NAME, - MOBILE_MODEL_NAME, -
-- MOBILE_MARKETING_NAME, - MOBILE_POINTING_METHOD, - Social -
-- SOCIAL_NETWORK, - SOCIAL_ACTION, - SOCIAL_ACTION_TARGET, - Custom
-- dimension - CUSTOM_DIMENSION (See accompanying field index),
feField :: Lens' FilterExpression (Maybe Text)
feField = lens _feField (\ s a -> s{_feField = a})

-- | Kind value for filter expression
feKind :: Lens' FilterExpression Text
feKind = lens _feKind (\ s a -> s{_feKind = a})

-- | Match type for this filter. Possible values are BEGINS_WITH, EQUAL,
-- ENDS_WITH, CONTAINS, or MATCHES. GEO_DOMAIN, GEO_IP_ADDRESS,
-- PAGE_REQUEST_URI, or PAGE_HOSTNAME filters can use any match type; all
-- other filters must use MATCHES.
feMatchType :: Lens' FilterExpression (Maybe Text)
feMatchType
  = lens _feMatchType (\ s a -> s{_feMatchType = a})

-- | Determines if the filter is case sensitive.
feCaseSensitive :: Lens' FilterExpression (Maybe Bool)
feCaseSensitive
  = lens _feCaseSensitive
      (\ s a -> s{_feCaseSensitive = a})

-- | Filter expression value
feExpressionValue :: Lens' FilterExpression (Maybe Text)
feExpressionValue
  = lens _feExpressionValue
      (\ s a -> s{_feExpressionValue = a})

instance FromJSON FilterExpression where
        parseJSON
          = withObject "FilterExpression"
              (\ o ->
                 FilterExpression <$>
                   (o .:? "fieldIndex") <*> (o .:? "field") <*>
                     (o .:? "kind" .!= "analytics#filterExpression")
                     <*> (o .:? "matchType")
                     <*> (o .:? "caseSensitive")
                     <*> (o .:? "expressionValue"))

instance ToJSON FilterExpression where
        toJSON FilterExpression{..}
          = object
              (catMaybes
                 [("fieldIndex" .=) <$> _feFieldIndex,
                  ("field" .=) <$> _feField, Just ("kind" .= _feKind),
                  ("matchType" .=) <$> _feMatchType,
                  ("caseSensitive" .=) <$> _feCaseSensitive,
                  ("expressionValue" .=) <$> _feExpressionValue])

-- | JSON template for a linked view (profile).
--
-- /See:/ 'proFileRef' smart constructor.
data ProFileRef = ProFileRef
    { _pfrWebPropertyId         :: !(Maybe Text)
    , _pfrKind                  :: !Text
    , _pfrHref                  :: !(Maybe Text)
    , _pfrAccountId             :: !(Maybe Text)
    , _pfrName                  :: !(Maybe Text)
    , _pfrInternalWebPropertyId :: !(Maybe Text)
    , _pfrId                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFileRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfrWebPropertyId'
--
-- * 'pfrKind'
--
-- * 'pfrHref'
--
-- * 'pfrAccountId'
--
-- * 'pfrName'
--
-- * 'pfrInternalWebPropertyId'
--
-- * 'pfrId'
proFileRef
    :: ProFileRef
proFileRef =
    ProFileRef
    { _pfrWebPropertyId = Nothing
    , _pfrKind = "analytics#profileRef"
    , _pfrHref = Nothing
    , _pfrAccountId = Nothing
    , _pfrName = Nothing
    , _pfrInternalWebPropertyId = Nothing
    , _pfrId = Nothing
    }

-- | Web property ID of the form UA-XXXXX-YY to which this view (profile)
-- belongs.
pfrWebPropertyId :: Lens' ProFileRef (Maybe Text)
pfrWebPropertyId
  = lens _pfrWebPropertyId
      (\ s a -> s{_pfrWebPropertyId = a})

-- | Analytics view (profile) reference.
pfrKind :: Lens' ProFileRef Text
pfrKind = lens _pfrKind (\ s a -> s{_pfrKind = a})

-- | Link for this view (profile).
pfrHref :: Lens' ProFileRef (Maybe Text)
pfrHref = lens _pfrHref (\ s a -> s{_pfrHref = a})

-- | Account ID to which this view (profile) belongs.
pfrAccountId :: Lens' ProFileRef (Maybe Text)
pfrAccountId
  = lens _pfrAccountId (\ s a -> s{_pfrAccountId = a})

-- | Name of this view (profile).
pfrName :: Lens' ProFileRef (Maybe Text)
pfrName = lens _pfrName (\ s a -> s{_pfrName = a})

-- | Internal ID for the web property to which this view (profile) belongs.
pfrInternalWebPropertyId :: Lens' ProFileRef (Maybe Text)
pfrInternalWebPropertyId
  = lens _pfrInternalWebPropertyId
      (\ s a -> s{_pfrInternalWebPropertyId = a})

-- | View (Profile) ID.
pfrId :: Lens' ProFileRef (Maybe Text)
pfrId = lens _pfrId (\ s a -> s{_pfrId = a})

instance FromJSON ProFileRef where
        parseJSON
          = withObject "ProFileRef"
              (\ o ->
                 ProFileRef <$>
                   (o .:? "webPropertyId") <*>
                     (o .:? "kind" .!= "analytics#profileRef")
                     <*> (o .:? "href")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "id"))

instance ToJSON ProFileRef where
        toJSON ProFileRef{..}
          = object
              (catMaybes
                 [("webPropertyId" .=) <$> _pfrWebPropertyId,
                  Just ("kind" .= _pfrKind), ("href" .=) <$> _pfrHref,
                  ("accountId" .=) <$> _pfrAccountId,
                  ("name" .=) <$> _pfrName,
                  ("internalWebPropertyId" .=) <$>
                    _pfrInternalWebPropertyId,
                  ("id" .=) <$> _pfrId])

-- | An account collection provides a list of Analytics accounts to which a
-- user has access. The account collection is the entry point to all
-- management information. Each resource in the collection corresponds to a
-- single Analytics account.
--
-- /See:/ 'accounts' smart constructor.
data Accounts = Accounts
    { _aNextLink     :: !(Maybe Text)
    , _aItemsPerPage :: !(Maybe (JSONText Int32))
    , _aKind         :: !Text
    , _aUsername     :: !(Maybe Text)
    , _aItems        :: !(Maybe [Account])
    , _aTotalResults :: !(Maybe (JSONText Int32))
    , _aStartIndex   :: !(Maybe (JSONText Int32))
    , _aPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Accounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aNextLink'
--
-- * 'aItemsPerPage'
--
-- * 'aKind'
--
-- * 'aUsername'
--
-- * 'aItems'
--
-- * 'aTotalResults'
--
-- * 'aStartIndex'
--
-- * 'aPreviousLink'
accounts
    :: Accounts
accounts =
    Accounts
    { _aNextLink = Nothing
    , _aItemsPerPage = Nothing
    , _aKind = "analytics#accounts"
    , _aUsername = Nothing
    , _aItems = Nothing
    , _aTotalResults = Nothing
    , _aStartIndex = Nothing
    , _aPreviousLink = Nothing
    }

-- | Next link for this account collection.
aNextLink :: Lens' Accounts (Maybe Text)
aNextLink
  = lens _aNextLink (\ s a -> s{_aNextLink = a})

-- | The maximum number of entries the response can contain, regardless of
-- the actual number of entries returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
aItemsPerPage :: Lens' Accounts (Maybe Int32)
aItemsPerPage
  = lens _aItemsPerPage
      (\ s a -> s{_aItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
aKind :: Lens' Accounts Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | Email ID of the authenticated user
aUsername :: Lens' Accounts (Maybe Text)
aUsername
  = lens _aUsername (\ s a -> s{_aUsername = a})

-- | A list of accounts.
aItems :: Lens' Accounts [Account]
aItems
  = lens _aItems (\ s a -> s{_aItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
aTotalResults :: Lens' Accounts (Maybe Int32)
aTotalResults
  = lens _aTotalResults
      (\ s a -> s{_aTotalResults = a})
      . mapping _Coerce

-- | The starting index of the entries, which is 1 by default or otherwise
-- specified by the start-index query parameter.
aStartIndex :: Lens' Accounts (Maybe Int32)
aStartIndex
  = lens _aStartIndex (\ s a -> s{_aStartIndex = a}) .
      mapping _Coerce

-- | Previous link for this account collection.
aPreviousLink :: Lens' Accounts (Maybe Text)
aPreviousLink
  = lens _aPreviousLink
      (\ s a -> s{_aPreviousLink = a})

instance FromJSON Accounts where
        parseJSON
          = withObject "Accounts"
              (\ o ->
                 Accounts <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#accounts")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON Accounts where
        toJSON Accounts{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _aNextLink,
                  ("itemsPerPage" .=) <$> _aItemsPerPage,
                  Just ("kind" .= _aKind),
                  ("username" .=) <$> _aUsername,
                  ("items" .=) <$> _aItems,
                  ("totalResults" .=) <$> _aTotalResults,
                  ("startIndex" .=) <$> _aStartIndex,
                  ("previousLink" .=) <$> _aPreviousLink])

-- | An experiment collection lists Analytics experiments to which the user
-- has access. Each view (profile) can have a set of experiments. Each
-- resource in the Experiment collection corresponds to a single Analytics
-- experiment.
--
-- /See:/ 'experiments' smart constructor.
data Experiments = Experiments
    { _eNextLink     :: !(Maybe Text)
    , _eItemsPerPage :: !(Maybe (JSONText Int32))
    , _eKind         :: !Text
    , _eUsername     :: !(Maybe Text)
    , _eItems        :: !(Maybe [Experiment])
    , _eTotalResults :: !(Maybe (JSONText Int32))
    , _eStartIndex   :: !(Maybe (JSONText Int32))
    , _ePreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Experiments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eNextLink'
--
-- * 'eItemsPerPage'
--
-- * 'eKind'
--
-- * 'eUsername'
--
-- * 'eItems'
--
-- * 'eTotalResults'
--
-- * 'eStartIndex'
--
-- * 'ePreviousLink'
experiments
    :: Experiments
experiments =
    Experiments
    { _eNextLink = Nothing
    , _eItemsPerPage = Nothing
    , _eKind = "analytics#experiments"
    , _eUsername = Nothing
    , _eItems = Nothing
    , _eTotalResults = Nothing
    , _eStartIndex = Nothing
    , _ePreviousLink = Nothing
    }

-- | Link to next page for this experiment collection.
eNextLink :: Lens' Experiments (Maybe Text)
eNextLink
  = lens _eNextLink (\ s a -> s{_eNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
eItemsPerPage :: Lens' Experiments (Maybe Int32)
eItemsPerPage
  = lens _eItemsPerPage
      (\ s a -> s{_eItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
eKind :: Lens' Experiments Text
eKind = lens _eKind (\ s a -> s{_eKind = a})

-- | Email ID of the authenticated user
eUsername :: Lens' Experiments (Maybe Text)
eUsername
  = lens _eUsername (\ s a -> s{_eUsername = a})

-- | A list of experiments.
eItems :: Lens' Experiments [Experiment]
eItems
  = lens _eItems (\ s a -> s{_eItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- resources in the result.
eTotalResults :: Lens' Experiments (Maybe Int32)
eTotalResults
  = lens _eTotalResults
      (\ s a -> s{_eTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
eStartIndex :: Lens' Experiments (Maybe Int32)
eStartIndex
  = lens _eStartIndex (\ s a -> s{_eStartIndex = a}) .
      mapping _Coerce

-- | Link to previous page for this experiment collection.
ePreviousLink :: Lens' Experiments (Maybe Text)
ePreviousLink
  = lens _ePreviousLink
      (\ s a -> s{_ePreviousLink = a})

instance FromJSON Experiments where
        parseJSON
          = withObject "Experiments"
              (\ o ->
                 Experiments <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#experiments")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON Experiments where
        toJSON Experiments{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _eNextLink,
                  ("itemsPerPage" .=) <$> _eItemsPerPage,
                  Just ("kind" .= _eKind),
                  ("username" .=) <$> _eUsername,
                  ("items" .=) <$> _eItems,
                  ("totalResults" .=) <$> _eTotalResults,
                  ("startIndex" .=) <$> _eStartIndex,
                  ("previousLink" .=) <$> _ePreviousLink])

-- | Parent link for an experiment. Points to the view (profile) to which
-- this experiment belongs.
--
-- /See:/ 'experimentParentLink' smart constructor.
data ExperimentParentLink = ExperimentParentLink
    { _eplHref :: !(Maybe Text)
    , _eplType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eplHref'
--
-- * 'eplType'
experimentParentLink
    :: ExperimentParentLink
experimentParentLink =
    ExperimentParentLink
    { _eplHref = Nothing
    , _eplType = "analytics#profile"
    }

-- | Link to the view (profile) to which this experiment belongs. This field
-- is read-only.
eplHref :: Lens' ExperimentParentLink (Maybe Text)
eplHref = lens _eplHref (\ s a -> s{_eplHref = a})

-- | Value is \"analytics#profile\". This field is read-only.
eplType :: Lens' ExperimentParentLink Text
eplType = lens _eplType (\ s a -> s{_eplType = a})

instance FromJSON ExperimentParentLink where
        parseJSON
          = withObject "ExperimentParentLink"
              (\ o ->
                 ExperimentParentLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#profile"))

instance ToJSON ExperimentParentLink where
        toJSON ExperimentParentLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _eplHref,
                  Just ("type" .= _eplType)])

-- | Download details for a file stored in Google Drive.
--
-- /See:/ 'unSampledReportDriveDownloadDetails' smart constructor.
newtype UnSampledReportDriveDownloadDetails = UnSampledReportDriveDownloadDetails
    { _usrdddDocumentId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnSampledReportDriveDownloadDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrdddDocumentId'
unSampledReportDriveDownloadDetails
    :: UnSampledReportDriveDownloadDetails
unSampledReportDriveDownloadDetails =
    UnSampledReportDriveDownloadDetails
    { _usrdddDocumentId = Nothing
    }

-- | Id of the document\/file containing the report data.
usrdddDocumentId :: Lens' UnSampledReportDriveDownloadDetails (Maybe Text)
usrdddDocumentId
  = lens _usrdddDocumentId
      (\ s a -> s{_usrdddDocumentId = a})

instance FromJSON UnSampledReportDriveDownloadDetails
         where
        parseJSON
          = withObject "UnSampledReportDriveDownloadDetails"
              (\ o ->
                 UnSampledReportDriveDownloadDetails <$>
                   (o .:? "documentId"))

instance ToJSON UnSampledReportDriveDownloadDetails
         where
        toJSON UnSampledReportDriveDownloadDetails{..}
          = object
              (catMaybes [("documentId" .=) <$> _usrdddDocumentId])

-- | Information for the view (profile), for which the Analytics data was
-- requested.
--
-- /See:/ 'mcfDataProFileInfo' smart constructor.
data McfDataProFileInfo = McfDataProFileInfo
    { _mdpfiWebPropertyId         :: !(Maybe Text)
    , _mdpfiProFileId             :: !(Maybe Text)
    , _mdpfiProFileName           :: !(Maybe Text)
    , _mdpfiAccountId             :: !(Maybe Text)
    , _mdpfiInternalWebPropertyId :: !(Maybe Text)
    , _mdpfiTableId               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataProFileInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdpfiWebPropertyId'
--
-- * 'mdpfiProFileId'
--
-- * 'mdpfiProFileName'
--
-- * 'mdpfiAccountId'
--
-- * 'mdpfiInternalWebPropertyId'
--
-- * 'mdpfiTableId'
mcfDataProFileInfo
    :: McfDataProFileInfo
mcfDataProFileInfo =
    McfDataProFileInfo
    { _mdpfiWebPropertyId = Nothing
    , _mdpfiProFileId = Nothing
    , _mdpfiProFileName = Nothing
    , _mdpfiAccountId = Nothing
    , _mdpfiInternalWebPropertyId = Nothing
    , _mdpfiTableId = Nothing
    }

-- | Web Property ID to which this view (profile) belongs.
mdpfiWebPropertyId :: Lens' McfDataProFileInfo (Maybe Text)
mdpfiWebPropertyId
  = lens _mdpfiWebPropertyId
      (\ s a -> s{_mdpfiWebPropertyId = a})

-- | View (Profile) ID.
mdpfiProFileId :: Lens' McfDataProFileInfo (Maybe Text)
mdpfiProFileId
  = lens _mdpfiProFileId
      (\ s a -> s{_mdpfiProFileId = a})

-- | View (Profile) name.
mdpfiProFileName :: Lens' McfDataProFileInfo (Maybe Text)
mdpfiProFileName
  = lens _mdpfiProFileName
      (\ s a -> s{_mdpfiProFileName = a})

-- | Account ID to which this view (profile) belongs.
mdpfiAccountId :: Lens' McfDataProFileInfo (Maybe Text)
mdpfiAccountId
  = lens _mdpfiAccountId
      (\ s a -> s{_mdpfiAccountId = a})

-- | Internal ID for the web property to which this view (profile) belongs.
mdpfiInternalWebPropertyId :: Lens' McfDataProFileInfo (Maybe Text)
mdpfiInternalWebPropertyId
  = lens _mdpfiInternalWebPropertyId
      (\ s a -> s{_mdpfiInternalWebPropertyId = a})

-- | Table ID for view (profile).
mdpfiTableId :: Lens' McfDataProFileInfo (Maybe Text)
mdpfiTableId
  = lens _mdpfiTableId (\ s a -> s{_mdpfiTableId = a})

instance FromJSON McfDataProFileInfo where
        parseJSON
          = withObject "McfDataProFileInfo"
              (\ o ->
                 McfDataProFileInfo <$>
                   (o .:? "webPropertyId") <*> (o .:? "profileId") <*>
                     (o .:? "profileName")
                     <*> (o .:? "accountId")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "tableId"))

instance ToJSON McfDataProFileInfo where
        toJSON McfDataProFileInfo{..}
          = object
              (catMaybes
                 [("webPropertyId" .=) <$> _mdpfiWebPropertyId,
                  ("profileId" .=) <$> _mdpfiProFileId,
                  ("profileName" .=) <$> _mdpfiProFileName,
                  ("accountId" .=) <$> _mdpfiAccountId,
                  ("internalWebPropertyId" .=) <$>
                    _mdpfiInternalWebPropertyId,
                  ("tableId" .=) <$> _mdpfiTableId])

-- | Lists Analytics custom data sources to which the user has access. Each
-- resource in the collection corresponds to a single Analytics custom data
-- source.
--
-- /See:/ 'customDataSources' smart constructor.
data CustomDataSources = CustomDataSources
    { _cdsNextLink     :: !(Maybe Text)
    , _cdsItemsPerPage :: !(Maybe (JSONText Int32))
    , _cdsKind         :: !Text
    , _cdsUsername     :: !(Maybe Text)
    , _cdsItems        :: !(Maybe [CustomDataSource])
    , _cdsTotalResults :: !(Maybe (JSONText Int32))
    , _cdsStartIndex   :: !(Maybe (JSONText Int32))
    , _cdsPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDataSources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsNextLink'
--
-- * 'cdsItemsPerPage'
--
-- * 'cdsKind'
--
-- * 'cdsUsername'
--
-- * 'cdsItems'
--
-- * 'cdsTotalResults'
--
-- * 'cdsStartIndex'
--
-- * 'cdsPreviousLink'
customDataSources
    :: CustomDataSources
customDataSources =
    CustomDataSources
    { _cdsNextLink = Nothing
    , _cdsItemsPerPage = Nothing
    , _cdsKind = "analytics#customDataSources"
    , _cdsUsername = Nothing
    , _cdsItems = Nothing
    , _cdsTotalResults = Nothing
    , _cdsStartIndex = Nothing
    , _cdsPreviousLink = Nothing
    }

-- | Link to next page for this custom data source collection.
cdsNextLink :: Lens' CustomDataSources (Maybe Text)
cdsNextLink
  = lens _cdsNextLink (\ s a -> s{_cdsNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
cdsItemsPerPage :: Lens' CustomDataSources (Maybe Int32)
cdsItemsPerPage
  = lens _cdsItemsPerPage
      (\ s a -> s{_cdsItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
cdsKind :: Lens' CustomDataSources Text
cdsKind = lens _cdsKind (\ s a -> s{_cdsKind = a})

-- | Email ID of the authenticated user
cdsUsername :: Lens' CustomDataSources (Maybe Text)
cdsUsername
  = lens _cdsUsername (\ s a -> s{_cdsUsername = a})

-- | Collection of custom data sources.
cdsItems :: Lens' CustomDataSources [CustomDataSource]
cdsItems
  = lens _cdsItems (\ s a -> s{_cdsItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
cdsTotalResults :: Lens' CustomDataSources (Maybe Int32)
cdsTotalResults
  = lens _cdsTotalResults
      (\ s a -> s{_cdsTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
cdsStartIndex :: Lens' CustomDataSources (Maybe Int32)
cdsStartIndex
  = lens _cdsStartIndex
      (\ s a -> s{_cdsStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this custom data source collection.
cdsPreviousLink :: Lens' CustomDataSources (Maybe Text)
cdsPreviousLink
  = lens _cdsPreviousLink
      (\ s a -> s{_cdsPreviousLink = a})

instance FromJSON CustomDataSources where
        parseJSON
          = withObject "CustomDataSources"
              (\ o ->
                 CustomDataSources <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#customDataSources")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON CustomDataSources where
        toJSON CustomDataSources{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _cdsNextLink,
                  ("itemsPerPage" .=) <$> _cdsItemsPerPage,
                  Just ("kind" .= _cdsKind),
                  ("username" .=) <$> _cdsUsername,
                  ("items" .=) <$> _cdsItems,
                  ("totalResults" .=) <$> _cdsTotalResults,
                  ("startIndex" .=) <$> _cdsStartIndex,
                  ("previousLink" .=) <$> _cdsPreviousLink])

-- | Child link for this web property. Points to the list of views (profiles)
-- for this web property.
--
-- /See:/ 'webPropertyChildLink' smart constructor.
data WebPropertyChildLink = WebPropertyChildLink
    { _wpclHref :: !(Maybe Text)
    , _wpclType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertyChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpclHref'
--
-- * 'wpclType'
webPropertyChildLink
    :: WebPropertyChildLink
webPropertyChildLink =
    WebPropertyChildLink
    { _wpclHref = Nothing
    , _wpclType = "analytics#profiles"
    }

-- | Link to the list of views (profiles) for this web property.
wpclHref :: Lens' WebPropertyChildLink (Maybe Text)
wpclHref = lens _wpclHref (\ s a -> s{_wpclHref = a})

-- | Type of the parent link. Its value is \"analytics#profiles\".
wpclType :: Lens' WebPropertyChildLink Text
wpclType = lens _wpclType (\ s a -> s{_wpclType = a})

instance FromJSON WebPropertyChildLink where
        parseJSON
          = withObject "WebPropertyChildLink"
              (\ o ->
                 WebPropertyChildLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#profiles"))

instance ToJSON WebPropertyChildLink where
        toJSON WebPropertyChildLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _wpclHref,
                  Just ("type" .= _wpclType)])

-- | Multi-Channel Funnels data for a given view (profile).
--
-- /See:/ 'mcfData' smart constructor.
data McfData = McfData
    { _mdNextLink            :: !(Maybe Text)
    , _mdSampleSpace         :: !(Maybe (JSONText Int64))
    , _mdItemsPerPage        :: !(Maybe (JSONText Int32))
    , _mdProFileInfo         :: !(Maybe McfDataProFileInfo)
    , _mdKind                :: !Text
    , _mdSampleSize          :: !(Maybe (JSONText Int64))
    , _mdRows                :: !(Maybe [[McfDataRowsItemItem]])
    , _mdSelfLink            :: !(Maybe Text)
    , _mdQuery               :: !(Maybe McfDataQuery)
    , _mdColumnHeaders       :: !(Maybe [McfDataColumnHeadersItem])
    , _mdId                  :: !(Maybe Text)
    , _mdTotalResults        :: !(Maybe (JSONText Int32))
    , _mdContainsSampledData :: !(Maybe Bool)
    , _mdTotalsForAllResults :: !(Maybe McfDataTotalsForAllResults)
    , _mdPreviousLink        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdNextLink'
--
-- * 'mdSampleSpace'
--
-- * 'mdItemsPerPage'
--
-- * 'mdProFileInfo'
--
-- * 'mdKind'
--
-- * 'mdSampleSize'
--
-- * 'mdRows'
--
-- * 'mdSelfLink'
--
-- * 'mdQuery'
--
-- * 'mdColumnHeaders'
--
-- * 'mdId'
--
-- * 'mdTotalResults'
--
-- * 'mdContainsSampledData'
--
-- * 'mdTotalsForAllResults'
--
-- * 'mdPreviousLink'
mcfData
    :: McfData
mcfData =
    McfData
    { _mdNextLink = Nothing
    , _mdSampleSpace = Nothing
    , _mdItemsPerPage = Nothing
    , _mdProFileInfo = Nothing
    , _mdKind = "analytics#mcfData"
    , _mdSampleSize = Nothing
    , _mdRows = Nothing
    , _mdSelfLink = Nothing
    , _mdQuery = Nothing
    , _mdColumnHeaders = Nothing
    , _mdId = Nothing
    , _mdTotalResults = Nothing
    , _mdContainsSampledData = Nothing
    , _mdTotalsForAllResults = Nothing
    , _mdPreviousLink = Nothing
    }

-- | Link to next page for this Analytics data query.
mdNextLink :: Lens' McfData (Maybe Text)
mdNextLink
  = lens _mdNextLink (\ s a -> s{_mdNextLink = a})

-- | Total size of the sample space from which the samples were selected.
mdSampleSpace :: Lens' McfData (Maybe Int64)
mdSampleSpace
  = lens _mdSampleSpace
      (\ s a -> s{_mdSampleSpace = a})
      . mapping _Coerce

-- | The maximum number of rows the response can contain, regardless of the
-- actual number of rows returned. Its value ranges from 1 to 10,000 with a
-- value of 1000 by default, or otherwise specified by the max-results
-- query parameter.
mdItemsPerPage :: Lens' McfData (Maybe Int32)
mdItemsPerPage
  = lens _mdItemsPerPage
      (\ s a -> s{_mdItemsPerPage = a})
      . mapping _Coerce

-- | Information for the view (profile), for which the Analytics data was
-- requested.
mdProFileInfo :: Lens' McfData (Maybe McfDataProFileInfo)
mdProFileInfo
  = lens _mdProFileInfo
      (\ s a -> s{_mdProFileInfo = a})

-- | Resource type.
mdKind :: Lens' McfData Text
mdKind = lens _mdKind (\ s a -> s{_mdKind = a})

-- | The number of samples used to calculate the result.
mdSampleSize :: Lens' McfData (Maybe Int64)
mdSampleSize
  = lens _mdSampleSize (\ s a -> s{_mdSampleSize = a})
      . mapping _Coerce

-- | Analytics data rows, where each row contains a list of dimension values
-- followed by the metric values. The order of dimensions and metrics is
-- same as specified in the request.
mdRows :: Lens' McfData [[McfDataRowsItemItem]]
mdRows
  = lens _mdRows (\ s a -> s{_mdRows = a}) . _Default .
      _Coerce

-- | Link to this page.
mdSelfLink :: Lens' McfData (Maybe Text)
mdSelfLink
  = lens _mdSelfLink (\ s a -> s{_mdSelfLink = a})

-- | Analytics data request query parameters.
mdQuery :: Lens' McfData (Maybe McfDataQuery)
mdQuery = lens _mdQuery (\ s a -> s{_mdQuery = a})

-- | Column headers that list dimension names followed by the metric names.
-- The order of dimensions and metrics is same as specified in the request.
mdColumnHeaders :: Lens' McfData [McfDataColumnHeadersItem]
mdColumnHeaders
  = lens _mdColumnHeaders
      (\ s a -> s{_mdColumnHeaders = a})
      . _Default
      . _Coerce

-- | Unique ID for this data response.
mdId :: Lens' McfData (Maybe Text)
mdId = lens _mdId (\ s a -> s{_mdId = a})

-- | The total number of rows for the query, regardless of the number of rows
-- in the response.
mdTotalResults :: Lens' McfData (Maybe Int32)
mdTotalResults
  = lens _mdTotalResults
      (\ s a -> s{_mdTotalResults = a})
      . mapping _Coerce

-- | Determines if the Analytics data contains sampled data.
mdContainsSampledData :: Lens' McfData (Maybe Bool)
mdContainsSampledData
  = lens _mdContainsSampledData
      (\ s a -> s{_mdContainsSampledData = a})

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
mdTotalsForAllResults :: Lens' McfData (Maybe McfDataTotalsForAllResults)
mdTotalsForAllResults
  = lens _mdTotalsForAllResults
      (\ s a -> s{_mdTotalsForAllResults = a})

-- | Link to previous page for this Analytics data query.
mdPreviousLink :: Lens' McfData (Maybe Text)
mdPreviousLink
  = lens _mdPreviousLink
      (\ s a -> s{_mdPreviousLink = a})

instance FromJSON McfData where
        parseJSON
          = withObject "McfData"
              (\ o ->
                 McfData <$>
                   (o .:? "nextLink") <*> (o .:? "sampleSpace") <*>
                     (o .:? "itemsPerPage")
                     <*> (o .:? "profileInfo")
                     <*> (o .:? "kind" .!= "analytics#mcfData")
                     <*> (o .:? "sampleSize")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "query")
                     <*> (o .:? "columnHeaders" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "containsSampledData")
                     <*> (o .:? "totalsForAllResults")
                     <*> (o .:? "previousLink"))

instance ToJSON McfData where
        toJSON McfData{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _mdNextLink,
                  ("sampleSpace" .=) <$> _mdSampleSpace,
                  ("itemsPerPage" .=) <$> _mdItemsPerPage,
                  ("profileInfo" .=) <$> _mdProFileInfo,
                  Just ("kind" .= _mdKind),
                  ("sampleSize" .=) <$> _mdSampleSize,
                  ("rows" .=) <$> _mdRows,
                  ("selfLink" .=) <$> _mdSelfLink,
                  ("query" .=) <$> _mdQuery,
                  ("columnHeaders" .=) <$> _mdColumnHeaders,
                  ("id" .=) <$> _mdId,
                  ("totalResults" .=) <$> _mdTotalResults,
                  ("containsSampledData" .=) <$>
                    _mdContainsSampledData,
                  ("totalsForAllResults" .=) <$>
                    _mdTotalsForAllResults,
                  ("previousLink" .=) <$> _mdPreviousLink])

-- | JSON template for a user reference.
--
-- /See:/ 'userRef' smart constructor.
data UserRef = UserRef
    { _urEmail :: !(Maybe Text)
    , _urKind  :: !Text
    , _urId    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urEmail'
--
-- * 'urKind'
--
-- * 'urId'
userRef
    :: UserRef
userRef =
    UserRef
    { _urEmail = Nothing
    , _urKind = "analytics#userRef"
    , _urId = Nothing
    }

-- | Email ID of this user.
urEmail :: Lens' UserRef (Maybe Text)
urEmail = lens _urEmail (\ s a -> s{_urEmail = a})

urKind :: Lens' UserRef Text
urKind = lens _urKind (\ s a -> s{_urKind = a})

-- | User ID.
urId :: Lens' UserRef (Maybe Text)
urId = lens _urId (\ s a -> s{_urId = a})

instance FromJSON UserRef where
        parseJSON
          = withObject "UserRef"
              (\ o ->
                 UserRef <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!= "analytics#userRef")
                     <*> (o .:? "id"))

instance ToJSON UserRef where
        toJSON UserRef{..}
          = object
              (catMaybes
                 [("email" .=) <$> _urEmail, Just ("kind" .= _urKind),
                  ("id" .=) <$> _urId])

-- | Details for the goal of the type VISIT_NUM_PAGES.
--
-- /See:/ 'goalVisitNumPagesDetails' smart constructor.
data GoalVisitNumPagesDetails = GoalVisitNumPagesDetails
    { _gvnpdComparisonValue :: !(Maybe (JSONText Int64))
    , _gvnpdComparisonType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalVisitNumPagesDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvnpdComparisonValue'
--
-- * 'gvnpdComparisonType'
goalVisitNumPagesDetails
    :: GoalVisitNumPagesDetails
goalVisitNumPagesDetails =
    GoalVisitNumPagesDetails
    { _gvnpdComparisonValue = Nothing
    , _gvnpdComparisonType = Nothing
    }

-- | Value used for this comparison.
gvnpdComparisonValue :: Lens' GoalVisitNumPagesDetails (Maybe Int64)
gvnpdComparisonValue
  = lens _gvnpdComparisonValue
      (\ s a -> s{_gvnpdComparisonValue = a})
      . mapping _Coerce

-- | Type of comparison. Possible values are LESS_THAN, GREATER_THAN, or
-- EQUAL.
gvnpdComparisonType :: Lens' GoalVisitNumPagesDetails (Maybe Text)
gvnpdComparisonType
  = lens _gvnpdComparisonType
      (\ s a -> s{_gvnpdComparisonType = a})

instance FromJSON GoalVisitNumPagesDetails where
        parseJSON
          = withObject "GoalVisitNumPagesDetails"
              (\ o ->
                 GoalVisitNumPagesDetails <$>
                   (o .:? "comparisonValue") <*>
                     (o .:? "comparisonType"))

instance ToJSON GoalVisitNumPagesDetails where
        toJSON GoalVisitNumPagesDetails{..}
          = object
              (catMaybes
                 [("comparisonValue" .=) <$> _gvnpdComparisonValue,
                  ("comparisonType" .=) <$> _gvnpdComparisonType])

--
-- /See:/ 'realtimeDataColumnHeadersItem' smart constructor.
data RealtimeDataColumnHeadersItem = RealtimeDataColumnHeadersItem
    { _rdchiColumnType :: !(Maybe Text)
    , _rdchiName       :: !(Maybe Text)
    , _rdchiDataType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeDataColumnHeadersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdchiColumnType'
--
-- * 'rdchiName'
--
-- * 'rdchiDataType'
realtimeDataColumnHeadersItem
    :: RealtimeDataColumnHeadersItem
realtimeDataColumnHeadersItem =
    RealtimeDataColumnHeadersItem
    { _rdchiColumnType = Nothing
    , _rdchiName = Nothing
    , _rdchiDataType = Nothing
    }

-- | Column Type. Either DIMENSION or METRIC.
rdchiColumnType :: Lens' RealtimeDataColumnHeadersItem (Maybe Text)
rdchiColumnType
  = lens _rdchiColumnType
      (\ s a -> s{_rdchiColumnType = a})

-- | Column name.
rdchiName :: Lens' RealtimeDataColumnHeadersItem (Maybe Text)
rdchiName
  = lens _rdchiName (\ s a -> s{_rdchiName = a})

-- | Data type. Dimension column headers have only STRING as the data type.
-- Metric column headers have data types for metric values such as INTEGER,
-- DOUBLE, CURRENCY etc.
rdchiDataType :: Lens' RealtimeDataColumnHeadersItem (Maybe Text)
rdchiDataType
  = lens _rdchiDataType
      (\ s a -> s{_rdchiDataType = a})

instance FromJSON RealtimeDataColumnHeadersItem where
        parseJSON
          = withObject "RealtimeDataColumnHeadersItem"
              (\ o ->
                 RealtimeDataColumnHeadersItem <$>
                   (o .:? "columnType") <*> (o .:? "name") <*>
                     (o .:? "dataType"))

instance ToJSON RealtimeDataColumnHeadersItem where
        toJSON RealtimeDataColumnHeadersItem{..}
          = object
              (catMaybes
                 [("columnType" .=) <$> _rdchiColumnType,
                  ("name" .=) <$> _rdchiName,
                  ("dataType" .=) <$> _rdchiDataType])

-- | JSON template for a linked account.
--
-- /See:/ 'accountRef' smart constructor.
data AccountRef = AccountRef
    { _arKind :: !Text
    , _arHref :: !(Maybe Text)
    , _arName :: !(Maybe Text)
    , _arId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arKind'
--
-- * 'arHref'
--
-- * 'arName'
--
-- * 'arId'
accountRef
    :: AccountRef
accountRef =
    AccountRef
    { _arKind = "analytics#accountRef"
    , _arHref = Nothing
    , _arName = Nothing
    , _arId = Nothing
    }

-- | Analytics account reference.
arKind :: Lens' AccountRef Text
arKind = lens _arKind (\ s a -> s{_arKind = a})

-- | Link for this account.
arHref :: Lens' AccountRef (Maybe Text)
arHref = lens _arHref (\ s a -> s{_arHref = a})

-- | Account name.
arName :: Lens' AccountRef (Maybe Text)
arName = lens _arName (\ s a -> s{_arName = a})

-- | Account ID.
arId :: Lens' AccountRef (Maybe Text)
arId = lens _arId (\ s a -> s{_arId = a})

instance FromJSON AccountRef where
        parseJSON
          = withObject "AccountRef"
              (\ o ->
                 AccountRef <$>
                   (o .:? "kind" .!= "analytics#accountRef") <*>
                     (o .:? "href")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON AccountRef where
        toJSON AccountRef{..}
          = object
              (catMaybes
                 [Just ("kind" .= _arKind), ("href" .=) <$> _arHref,
                  ("name" .=) <$> _arName, ("id" .=) <$> _arId])

-- | An entity AdWords link collection provides a list of GA-AdWords links
-- Each resource in this collection corresponds to a single link.
--
-- /See:/ 'entityAdWordsLinks' smart constructor.
data EntityAdWordsLinks = EntityAdWordsLinks
    { _eawlNextLink     :: !(Maybe Text)
    , _eawlItemsPerPage :: !(Maybe (JSONText Int32))
    , _eawlKind         :: !Text
    , _eawlItems        :: !(Maybe [EntityAdWordsLink])
    , _eawlTotalResults :: !(Maybe (JSONText Int32))
    , _eawlStartIndex   :: !(Maybe (JSONText Int32))
    , _eawlPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityAdWordsLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eawlNextLink'
--
-- * 'eawlItemsPerPage'
--
-- * 'eawlKind'
--
-- * 'eawlItems'
--
-- * 'eawlTotalResults'
--
-- * 'eawlStartIndex'
--
-- * 'eawlPreviousLink'
entityAdWordsLinks
    :: EntityAdWordsLinks
entityAdWordsLinks =
    EntityAdWordsLinks
    { _eawlNextLink = Nothing
    , _eawlItemsPerPage = Nothing
    , _eawlKind = "analytics#entityAdWordsLinks"
    , _eawlItems = Nothing
    , _eawlTotalResults = Nothing
    , _eawlStartIndex = Nothing
    , _eawlPreviousLink = Nothing
    }

-- | Next link for this AdWords link collection.
eawlNextLink :: Lens' EntityAdWordsLinks (Maybe Text)
eawlNextLink
  = lens _eawlNextLink (\ s a -> s{_eawlNextLink = a})

-- | The maximum number of entries the response can contain, regardless of
-- the actual number of entries returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
eawlItemsPerPage :: Lens' EntityAdWordsLinks (Maybe Int32)
eawlItemsPerPage
  = lens _eawlItemsPerPage
      (\ s a -> s{_eawlItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
eawlKind :: Lens' EntityAdWordsLinks Text
eawlKind = lens _eawlKind (\ s a -> s{_eawlKind = a})

-- | A list of entity AdWords links.
eawlItems :: Lens' EntityAdWordsLinks [EntityAdWordsLink]
eawlItems
  = lens _eawlItems (\ s a -> s{_eawlItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
eawlTotalResults :: Lens' EntityAdWordsLinks (Maybe Int32)
eawlTotalResults
  = lens _eawlTotalResults
      (\ s a -> s{_eawlTotalResults = a})
      . mapping _Coerce

-- | The starting index of the entries, which is 1 by default or otherwise
-- specified by the start-index query parameter.
eawlStartIndex :: Lens' EntityAdWordsLinks (Maybe Int32)
eawlStartIndex
  = lens _eawlStartIndex
      (\ s a -> s{_eawlStartIndex = a})
      . mapping _Coerce

-- | Previous link for this AdWords link collection.
eawlPreviousLink :: Lens' EntityAdWordsLinks (Maybe Text)
eawlPreviousLink
  = lens _eawlPreviousLink
      (\ s a -> s{_eawlPreviousLink = a})

instance FromJSON EntityAdWordsLinks where
        parseJSON
          = withObject "EntityAdWordsLinks"
              (\ o ->
                 EntityAdWordsLinks <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#entityAdWordsLinks")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON EntityAdWordsLinks where
        toJSON EntityAdWordsLinks{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _eawlNextLink,
                  ("itemsPerPage" .=) <$> _eawlItemsPerPage,
                  Just ("kind" .= _eawlKind),
                  ("items" .=) <$> _eawlItems,
                  ("totalResults" .=) <$> _eawlTotalResults,
                  ("startIndex" .=) <$> _eawlStartIndex,
                  ("previousLink" .=) <$> _eawlPreviousLink])

-- | A view (profile) collection lists Analytics views (profiles) to which
-- the user has access. Each resource in the collection corresponds to a
-- single Analytics view (profile).
--
-- /See:/ 'proFiles' smart constructor.
data ProFiles = ProFiles
    { _pfNextLink     :: !(Maybe Text)
    , _pfItemsPerPage :: !(Maybe (JSONText Int32))
    , _pfKind         :: !Text
    , _pfUsername     :: !(Maybe Text)
    , _pfItems        :: !(Maybe [ProFile])
    , _pfTotalResults :: !(Maybe (JSONText Int32))
    , _pfStartIndex   :: !(Maybe (JSONText Int32))
    , _pfPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfNextLink'
--
-- * 'pfItemsPerPage'
--
-- * 'pfKind'
--
-- * 'pfUsername'
--
-- * 'pfItems'
--
-- * 'pfTotalResults'
--
-- * 'pfStartIndex'
--
-- * 'pfPreviousLink'
proFiles
    :: ProFiles
proFiles =
    ProFiles
    { _pfNextLink = Nothing
    , _pfItemsPerPage = Nothing
    , _pfKind = "analytics#profiles"
    , _pfUsername = Nothing
    , _pfItems = Nothing
    , _pfTotalResults = Nothing
    , _pfStartIndex = Nothing
    , _pfPreviousLink = Nothing
    }

-- | Link to next page for this view (profile) collection.
pfNextLink :: Lens' ProFiles (Maybe Text)
pfNextLink
  = lens _pfNextLink (\ s a -> s{_pfNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
pfItemsPerPage :: Lens' ProFiles (Maybe Int32)
pfItemsPerPage
  = lens _pfItemsPerPage
      (\ s a -> s{_pfItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
pfKind :: Lens' ProFiles Text
pfKind = lens _pfKind (\ s a -> s{_pfKind = a})

-- | Email ID of the authenticated user
pfUsername :: Lens' ProFiles (Maybe Text)
pfUsername
  = lens _pfUsername (\ s a -> s{_pfUsername = a})

-- | A list of views (profiles).
pfItems :: Lens' ProFiles [ProFile]
pfItems
  = lens _pfItems (\ s a -> s{_pfItems = a}) . _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
pfTotalResults :: Lens' ProFiles (Maybe Int32)
pfTotalResults
  = lens _pfTotalResults
      (\ s a -> s{_pfTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
pfStartIndex :: Lens' ProFiles (Maybe Int32)
pfStartIndex
  = lens _pfStartIndex (\ s a -> s{_pfStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this view (profile) collection.
pfPreviousLink :: Lens' ProFiles (Maybe Text)
pfPreviousLink
  = lens _pfPreviousLink
      (\ s a -> s{_pfPreviousLink = a})

instance FromJSON ProFiles where
        parseJSON
          = withObject "ProFiles"
              (\ o ->
                 ProFiles <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#profiles")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON ProFiles where
        toJSON ProFiles{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _pfNextLink,
                  ("itemsPerPage" .=) <$> _pfItemsPerPage,
                  Just ("kind" .= _pfKind),
                  ("username" .=) <$> _pfUsername,
                  ("items" .=) <$> _pfItems,
                  ("totalResults" .=) <$> _pfTotalResults,
                  ("startIndex" .=) <$> _pfStartIndex,
                  ("previousLink" .=) <$> _pfPreviousLink])

-- | Request template for the delete upload data request.
--
-- /See:/ 'analyticsDataimportDeleteUploadDataRequest' smart constructor.
newtype AnalyticsDataimportDeleteUploadDataRequest = AnalyticsDataimportDeleteUploadDataRequest
    { _addudrCustomDataImportUids :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AnalyticsDataimportDeleteUploadDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'addudrCustomDataImportUids'
analyticsDataimportDeleteUploadDataRequest
    :: AnalyticsDataimportDeleteUploadDataRequest
analyticsDataimportDeleteUploadDataRequest =
    AnalyticsDataimportDeleteUploadDataRequest
    { _addudrCustomDataImportUids = Nothing
    }

-- | A list of upload UIDs.
addudrCustomDataImportUids :: Lens' AnalyticsDataimportDeleteUploadDataRequest [Text]
addudrCustomDataImportUids
  = lens _addudrCustomDataImportUids
      (\ s a -> s{_addudrCustomDataImportUids = a})
      . _Default
      . _Coerce

instance FromJSON
         AnalyticsDataimportDeleteUploadDataRequest where
        parseJSON
          = withObject
              "AnalyticsDataimportDeleteUploadDataRequest"
              (\ o ->
                 AnalyticsDataimportDeleteUploadDataRequest <$>
                   (o .:? "customDataImportUids" .!= mempty))

instance ToJSON
         AnalyticsDataimportDeleteUploadDataRequest where
        toJSON AnalyticsDataimportDeleteUploadDataRequest{..}
          = object
              (catMaybes
                 [("customDataImportUids" .=) <$>
                    _addudrCustomDataImportUids])

-- | JSON template for Analytics Entity AdWords Link.
--
-- /See:/ 'entityAdWordsLink' smart constructor.
data EntityAdWordsLink = EntityAdWordsLink
    { _entAdWordsAccounts :: !(Maybe [AdWordsAccount])
    , _entProFileIds      :: !(Maybe [Text])
    , _entKind            :: !Text
    , _entSelfLink        :: !(Maybe Text)
    , _entName            :: !(Maybe Text)
    , _entId              :: !(Maybe Text)
    , _entEntity          :: !(Maybe EntityAdWordsLinkEntity)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityAdWordsLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entAdWordsAccounts'
--
-- * 'entProFileIds'
--
-- * 'entKind'
--
-- * 'entSelfLink'
--
-- * 'entName'
--
-- * 'entId'
--
-- * 'entEntity'
entityAdWordsLink
    :: EntityAdWordsLink
entityAdWordsLink =
    EntityAdWordsLink
    { _entAdWordsAccounts = Nothing
    , _entProFileIds = Nothing
    , _entKind = "analytics#entityAdWordsLink"
    , _entSelfLink = Nothing
    , _entName = Nothing
    , _entId = Nothing
    , _entEntity = Nothing
    }

-- | A list of AdWords client accounts. These cannot be MCC accounts. This
-- field is required when creating an AdWords link. It cannot be empty.
entAdWordsAccounts :: Lens' EntityAdWordsLink [AdWordsAccount]
entAdWordsAccounts
  = lens _entAdWordsAccounts
      (\ s a -> s{_entAdWordsAccounts = a})
      . _Default
      . _Coerce

-- | IDs of linked Views (Profiles) represented as strings.
entProFileIds :: Lens' EntityAdWordsLink [Text]
entProFileIds
  = lens _entProFileIds
      (\ s a -> s{_entProFileIds = a})
      . _Default
      . _Coerce

-- | Resource type for entity AdWords link.
entKind :: Lens' EntityAdWordsLink Text
entKind = lens _entKind (\ s a -> s{_entKind = a})

-- | URL link for this Google Analytics - Google AdWords link.
entSelfLink :: Lens' EntityAdWordsLink (Maybe Text)
entSelfLink
  = lens _entSelfLink (\ s a -> s{_entSelfLink = a})

-- | Name of the link. This field is required when creating an AdWords link.
entName :: Lens' EntityAdWordsLink (Maybe Text)
entName = lens _entName (\ s a -> s{_entName = a})

-- | Entity AdWords link ID
entId :: Lens' EntityAdWordsLink (Maybe Text)
entId = lens _entId (\ s a -> s{_entId = a})

-- | Web property being linked.
entEntity :: Lens' EntityAdWordsLink (Maybe EntityAdWordsLinkEntity)
entEntity
  = lens _entEntity (\ s a -> s{_entEntity = a})

instance FromJSON EntityAdWordsLink where
        parseJSON
          = withObject "EntityAdWordsLink"
              (\ o ->
                 EntityAdWordsLink <$>
                   (o .:? "adWordsAccounts" .!= mempty) <*>
                     (o .:? "profileIds" .!= mempty)
                     <*> (o .:? "kind" .!= "analytics#entityAdWordsLink")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "entity"))

instance ToJSON EntityAdWordsLink where
        toJSON EntityAdWordsLink{..}
          = object
              (catMaybes
                 [("adWordsAccounts" .=) <$> _entAdWordsAccounts,
                  ("profileIds" .=) <$> _entProFileIds,
                  Just ("kind" .= _entKind),
                  ("selfLink" .=) <$> _entSelfLink,
                  ("name" .=) <$> _entName, ("id" .=) <$> _entId,
                  ("entity" .=) <$> _entEntity])

-- | Details for the filter of the type SEARCH_AND_REPLACE.
--
-- /See:/ 'filterSearchAndReplaceDetails' smart constructor.
data FilterSearchAndReplaceDetails = FilterSearchAndReplaceDetails
    { _fsardFieldIndex    :: !(Maybe (JSONText Int32))
    , _fsardField         :: !(Maybe Text)
    , _fsardSearchString  :: !(Maybe Text)
    , _fsardReplaceString :: !(Maybe Text)
    , _fsardCaseSensitive :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterSearchAndReplaceDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsardFieldIndex'
--
-- * 'fsardField'
--
-- * 'fsardSearchString'
--
-- * 'fsardReplaceString'
--
-- * 'fsardCaseSensitive'
filterSearchAndReplaceDetails
    :: FilterSearchAndReplaceDetails
filterSearchAndReplaceDetails =
    FilterSearchAndReplaceDetails
    { _fsardFieldIndex = Nothing
    , _fsardField = Nothing
    , _fsardSearchString = Nothing
    , _fsardReplaceString = Nothing
    , _fsardCaseSensitive = Nothing
    }

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fsardFieldIndex :: Lens' FilterSearchAndReplaceDetails (Maybe Int32)
fsardFieldIndex
  = lens _fsardFieldIndex
      (\ s a -> s{_fsardFieldIndex = a})
      . mapping _Coerce

-- | Field to use in the filter.
fsardField :: Lens' FilterSearchAndReplaceDetails (Maybe Text)
fsardField
  = lens _fsardField (\ s a -> s{_fsardField = a})

-- | Term to search.
fsardSearchString :: Lens' FilterSearchAndReplaceDetails (Maybe Text)
fsardSearchString
  = lens _fsardSearchString
      (\ s a -> s{_fsardSearchString = a})

-- | Term to replace the search term with.
fsardReplaceString :: Lens' FilterSearchAndReplaceDetails (Maybe Text)
fsardReplaceString
  = lens _fsardReplaceString
      (\ s a -> s{_fsardReplaceString = a})

-- | Determines if the filter is case sensitive.
fsardCaseSensitive :: Lens' FilterSearchAndReplaceDetails (Maybe Bool)
fsardCaseSensitive
  = lens _fsardCaseSensitive
      (\ s a -> s{_fsardCaseSensitive = a})

instance FromJSON FilterSearchAndReplaceDetails where
        parseJSON
          = withObject "FilterSearchAndReplaceDetails"
              (\ o ->
                 FilterSearchAndReplaceDetails <$>
                   (o .:? "fieldIndex") <*> (o .:? "field") <*>
                     (o .:? "searchString")
                     <*> (o .:? "replaceString")
                     <*> (o .:? "caseSensitive"))

instance ToJSON FilterSearchAndReplaceDetails where
        toJSON FilterSearchAndReplaceDetails{..}
          = object
              (catMaybes
                 [("fieldIndex" .=) <$> _fsardFieldIndex,
                  ("field" .=) <$> _fsardField,
                  ("searchString" .=) <$> _fsardSearchString,
                  ("replaceString" .=) <$> _fsardReplaceString,
                  ("caseSensitive" .=) <$> _fsardCaseSensitive])

-- | Permissions the user has for this view (profile).
--
-- /See:/ 'proFilePermissions' smart constructor.
newtype ProFilePermissions = ProFilePermissions
    { _pfpEffective :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFilePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfpEffective'
proFilePermissions
    :: ProFilePermissions
proFilePermissions =
    ProFilePermissions
    { _pfpEffective = Nothing
    }

-- | All the permissions that the user has for this view (profile). These
-- include any implied permissions (e.g., EDIT implies VIEW) or inherited
-- permissions from the parent web property.
pfpEffective :: Lens' ProFilePermissions [Text]
pfpEffective
  = lens _pfpEffective (\ s a -> s{_pfpEffective = a})
      . _Default
      . _Coerce

instance FromJSON ProFilePermissions where
        parseJSON
          = withObject "ProFilePermissions"
              (\ o ->
                 ProFilePermissions <$>
                   (o .:? "effective" .!= mempty))

instance ToJSON ProFilePermissions where
        toJSON ProFilePermissions{..}
          = object
              (catMaybes [("effective" .=) <$> _pfpEffective])

-- | JSON template for an Analytics view (profile).
--
-- /See:/ 'proFile' smart constructor.
data ProFile = ProFile
    { _pParentLink                        :: !(Maybe ProFileParentLink)
    , _pECommerceTracking                 :: !(Maybe Bool)
    , _pSiteSearchCategoryParameters      :: !(Maybe Text)
    , _pWebPropertyId                     :: !(Maybe Text)
    , _pChildLink                         :: !(Maybe ProFileChildLink)
    , _pSiteSearchQueryParameters         :: !(Maybe Text)
    , _pKind                              :: !Text
    , _pDefaultPage                       :: !(Maybe Text)
    , _pCreated                           :: !(Maybe DateTime')
    , _pSelfLink                          :: !(Maybe Text)
    , _pAccountId                         :: !(Maybe Text)
    , _pName                              :: !(Maybe Text)
    , _pCurrency                          :: !(Maybe Text)
    , _pInternalWebPropertyId             :: !(Maybe Text)
    , _pId                                :: !(Maybe Text)
    , _pUpdated                           :: !(Maybe DateTime')
    , _pPermissions                       :: !(Maybe ProFilePermissions)
    , _pWebsiteURL                        :: !(Maybe Text)
    , _pType                              :: !(Maybe Text)
    , _pStripSiteSearchCategoryParameters :: !(Maybe Bool)
    , _pTimezone                          :: !(Maybe Text)
    , _pExcludeQueryParameters            :: !(Maybe Text)
    , _pEnhancedECommerceTracking         :: !(Maybe Bool)
    , _pStripSiteSearchQueryParameters    :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParentLink'
--
-- * 'pECommerceTracking'
--
-- * 'pSiteSearchCategoryParameters'
--
-- * 'pWebPropertyId'
--
-- * 'pChildLink'
--
-- * 'pSiteSearchQueryParameters'
--
-- * 'pKind'
--
-- * 'pDefaultPage'
--
-- * 'pCreated'
--
-- * 'pSelfLink'
--
-- * 'pAccountId'
--
-- * 'pName'
--
-- * 'pCurrency'
--
-- * 'pInternalWebPropertyId'
--
-- * 'pId'
--
-- * 'pUpdated'
--
-- * 'pPermissions'
--
-- * 'pWebsiteURL'
--
-- * 'pType'
--
-- * 'pStripSiteSearchCategoryParameters'
--
-- * 'pTimezone'
--
-- * 'pExcludeQueryParameters'
--
-- * 'pEnhancedECommerceTracking'
--
-- * 'pStripSiteSearchQueryParameters'
proFile
    :: ProFile
proFile =
    ProFile
    { _pParentLink = Nothing
    , _pECommerceTracking = Nothing
    , _pSiteSearchCategoryParameters = Nothing
    , _pWebPropertyId = Nothing
    , _pChildLink = Nothing
    , _pSiteSearchQueryParameters = Nothing
    , _pKind = "analytics#profile"
    , _pDefaultPage = Nothing
    , _pCreated = Nothing
    , _pSelfLink = Nothing
    , _pAccountId = Nothing
    , _pName = Nothing
    , _pCurrency = Nothing
    , _pInternalWebPropertyId = Nothing
    , _pId = Nothing
    , _pUpdated = Nothing
    , _pPermissions = Nothing
    , _pWebsiteURL = Nothing
    , _pType = Nothing
    , _pStripSiteSearchCategoryParameters = Nothing
    , _pTimezone = Nothing
    , _pExcludeQueryParameters = Nothing
    , _pEnhancedECommerceTracking = Nothing
    , _pStripSiteSearchQueryParameters = Nothing
    }

-- | Parent link for this view (profile). Points to the web property to which
-- this view (profile) belongs.
pParentLink :: Lens' ProFile (Maybe ProFileParentLink)
pParentLink
  = lens _pParentLink (\ s a -> s{_pParentLink = a})

-- | Indicates whether ecommerce tracking is enabled for this view (profile).
pECommerceTracking :: Lens' ProFile (Maybe Bool)
pECommerceTracking
  = lens _pECommerceTracking
      (\ s a -> s{_pECommerceTracking = a})

-- | Site search category parameters for this view (profile).
pSiteSearchCategoryParameters :: Lens' ProFile (Maybe Text)
pSiteSearchCategoryParameters
  = lens _pSiteSearchCategoryParameters
      (\ s a -> s{_pSiteSearchCategoryParameters = a})

-- | Web property ID of the form UA-XXXXX-YY to which this view (profile)
-- belongs.
pWebPropertyId :: Lens' ProFile (Maybe Text)
pWebPropertyId
  = lens _pWebPropertyId
      (\ s a -> s{_pWebPropertyId = a})

-- | Child link for this view (profile). Points to the list of goals for this
-- view (profile).
pChildLink :: Lens' ProFile (Maybe ProFileChildLink)
pChildLink
  = lens _pChildLink (\ s a -> s{_pChildLink = a})

-- | The site search query parameters for this view (profile).
pSiteSearchQueryParameters :: Lens' ProFile (Maybe Text)
pSiteSearchQueryParameters
  = lens _pSiteSearchQueryParameters
      (\ s a -> s{_pSiteSearchQueryParameters = a})

-- | Resource type for Analytics view (profile).
pKind :: Lens' ProFile Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | Default page for this view (profile).
pDefaultPage :: Lens' ProFile (Maybe Text)
pDefaultPage
  = lens _pDefaultPage (\ s a -> s{_pDefaultPage = a})

-- | Time this view (profile) was created.
pCreated :: Lens' ProFile (Maybe UTCTime)
pCreated
  = lens _pCreated (\ s a -> s{_pCreated = a}) .
      mapping _DateTime

-- | Link for this view (profile).
pSelfLink :: Lens' ProFile (Maybe Text)
pSelfLink
  = lens _pSelfLink (\ s a -> s{_pSelfLink = a})

-- | Account ID to which this view (profile) belongs.
pAccountId :: Lens' ProFile (Maybe Text)
pAccountId
  = lens _pAccountId (\ s a -> s{_pAccountId = a})

-- | Name of this view (profile).
pName :: Lens' ProFile (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | The currency type associated with this view (profile), defaults to USD.
-- The supported values are: ARS, AUD, BGN, BRL, CAD, CHF, CNY, CZK, DKK,
-- EUR, GBP, HKD, HUF, IDR, INR, JPY, KRW, LTL, MXN, NOK, NZD, PHP, PLN,
-- RUB, SEK, THB, TRY, TWD, USD, VND, ZAR
pCurrency :: Lens' ProFile (Maybe Text)
pCurrency
  = lens _pCurrency (\ s a -> s{_pCurrency = a})

-- | Internal ID for the web property to which this view (profile) belongs.
pInternalWebPropertyId :: Lens' ProFile (Maybe Text)
pInternalWebPropertyId
  = lens _pInternalWebPropertyId
      (\ s a -> s{_pInternalWebPropertyId = a})

-- | View (Profile) ID.
pId :: Lens' ProFile (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | Time this view (profile) was last modified.
pUpdated :: Lens' ProFile (Maybe UTCTime)
pUpdated
  = lens _pUpdated (\ s a -> s{_pUpdated = a}) .
      mapping _DateTime

-- | Permissions the user has for this view (profile).
pPermissions :: Lens' ProFile (Maybe ProFilePermissions)
pPermissions
  = lens _pPermissions (\ s a -> s{_pPermissions = a})

-- | Website URL for this view (profile).
pWebsiteURL :: Lens' ProFile (Maybe Text)
pWebsiteURL
  = lens _pWebsiteURL (\ s a -> s{_pWebsiteURL = a})

-- | View (Profile) type. Supported types: WEB or APP.
pType :: Lens' ProFile (Maybe Text)
pType = lens _pType (\ s a -> s{_pType = a})

-- | Whether or not Analytics will strip search category parameters from the
-- URLs in your reports.
pStripSiteSearchCategoryParameters :: Lens' ProFile (Maybe Bool)
pStripSiteSearchCategoryParameters
  = lens _pStripSiteSearchCategoryParameters
      (\ s a -> s{_pStripSiteSearchCategoryParameters = a})

-- | Time zone for which this view (profile) has been configured. Time zones
-- are identified by strings from the TZ database.
pTimezone :: Lens' ProFile (Maybe Text)
pTimezone
  = lens _pTimezone (\ s a -> s{_pTimezone = a})

-- | The query parameters that are excluded from this view (profile).
pExcludeQueryParameters :: Lens' ProFile (Maybe Text)
pExcludeQueryParameters
  = lens _pExcludeQueryParameters
      (\ s a -> s{_pExcludeQueryParameters = a})

-- | Indicates whether enhanced ecommerce tracking is enabled for this view
-- (profile). This property can only be enabled if ecommerce tracking is
-- enabled.
pEnhancedECommerceTracking :: Lens' ProFile (Maybe Bool)
pEnhancedECommerceTracking
  = lens _pEnhancedECommerceTracking
      (\ s a -> s{_pEnhancedECommerceTracking = a})

-- | Whether or not Analytics will strip search query parameters from the
-- URLs in your reports.
pStripSiteSearchQueryParameters :: Lens' ProFile (Maybe Bool)
pStripSiteSearchQueryParameters
  = lens _pStripSiteSearchQueryParameters
      (\ s a -> s{_pStripSiteSearchQueryParameters = a})

instance FromJSON ProFile where
        parseJSON
          = withObject "ProFile"
              (\ o ->
                 ProFile <$>
                   (o .:? "parentLink") <*> (o .:? "eCommerceTracking")
                     <*> (o .:? "siteSearchCategoryParameters")
                     <*> (o .:? "webPropertyId")
                     <*> (o .:? "childLink")
                     <*> (o .:? "siteSearchQueryParameters")
                     <*> (o .:? "kind" .!= "analytics#profile")
                     <*> (o .:? "defaultPage")
                     <*> (o .:? "created")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "currency")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "permissions")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "type")
                     <*> (o .:? "stripSiteSearchCategoryParameters")
                     <*> (o .:? "timezone")
                     <*> (o .:? "excludeQueryParameters")
                     <*> (o .:? "enhancedECommerceTracking")
                     <*> (o .:? "stripSiteSearchQueryParameters"))

instance ToJSON ProFile where
        toJSON ProFile{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _pParentLink,
                  ("eCommerceTracking" .=) <$> _pECommerceTracking,
                  ("siteSearchCategoryParameters" .=) <$>
                    _pSiteSearchCategoryParameters,
                  ("webPropertyId" .=) <$> _pWebPropertyId,
                  ("childLink" .=) <$> _pChildLink,
                  ("siteSearchQueryParameters" .=) <$>
                    _pSiteSearchQueryParameters,
                  Just ("kind" .= _pKind),
                  ("defaultPage" .=) <$> _pDefaultPage,
                  ("created" .=) <$> _pCreated,
                  ("selfLink" .=) <$> _pSelfLink,
                  ("accountId" .=) <$> _pAccountId,
                  ("name" .=) <$> _pName,
                  ("currency" .=) <$> _pCurrency,
                  ("internalWebPropertyId" .=) <$>
                    _pInternalWebPropertyId,
                  ("id" .=) <$> _pId, ("updated" .=) <$> _pUpdated,
                  ("permissions" .=) <$> _pPermissions,
                  ("websiteUrl" .=) <$> _pWebsiteURL,
                  ("type" .=) <$> _pType,
                  ("stripSiteSearchCategoryParameters" .=) <$>
                    _pStripSiteSearchCategoryParameters,
                  ("timezone" .=) <$> _pTimezone,
                  ("excludeQueryParameters" .=) <$>
                    _pExcludeQueryParameters,
                  ("enhancedECommerceTracking" .=) <$>
                    _pEnhancedECommerceTracking,
                  ("stripSiteSearchQueryParameters" .=) <$>
                    _pStripSiteSearchQueryParameters])

-- | An AccountSummary collection lists a summary of accounts, properties and
-- views (profiles) to which the user has access. Each resource in the
-- collection corresponds to a single AccountSummary.
--
-- /See:/ 'accountSummaries' smart constructor.
data AccountSummaries = AccountSummaries
    { _asNextLink     :: !(Maybe Text)
    , _asItemsPerPage :: !(Maybe (JSONText Int32))
    , _asKind         :: !Text
    , _asUsername     :: !(Maybe Text)
    , _asItems        :: !(Maybe [AccountSummary])
    , _asTotalResults :: !(Maybe (JSONText Int32))
    , _asStartIndex   :: !(Maybe (JSONText Int32))
    , _asPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountSummaries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asNextLink'
--
-- * 'asItemsPerPage'
--
-- * 'asKind'
--
-- * 'asUsername'
--
-- * 'asItems'
--
-- * 'asTotalResults'
--
-- * 'asStartIndex'
--
-- * 'asPreviousLink'
accountSummaries
    :: AccountSummaries
accountSummaries =
    AccountSummaries
    { _asNextLink = Nothing
    , _asItemsPerPage = Nothing
    , _asKind = "analytics#accountSummaries"
    , _asUsername = Nothing
    , _asItems = Nothing
    , _asTotalResults = Nothing
    , _asStartIndex = Nothing
    , _asPreviousLink = Nothing
    }

-- | Link to next page for this AccountSummary collection.
asNextLink :: Lens' AccountSummaries (Maybe Text)
asNextLink
  = lens _asNextLink (\ s a -> s{_asNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
asItemsPerPage :: Lens' AccountSummaries (Maybe Int32)
asItemsPerPage
  = lens _asItemsPerPage
      (\ s a -> s{_asItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
asKind :: Lens' AccountSummaries Text
asKind = lens _asKind (\ s a -> s{_asKind = a})

-- | Email ID of the authenticated user
asUsername :: Lens' AccountSummaries (Maybe Text)
asUsername
  = lens _asUsername (\ s a -> s{_asUsername = a})

-- | A list of AccountSummaries.
asItems :: Lens' AccountSummaries [AccountSummary]
asItems
  = lens _asItems (\ s a -> s{_asItems = a}) . _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
asTotalResults :: Lens' AccountSummaries (Maybe Int32)
asTotalResults
  = lens _asTotalResults
      (\ s a -> s{_asTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
asStartIndex :: Lens' AccountSummaries (Maybe Int32)
asStartIndex
  = lens _asStartIndex (\ s a -> s{_asStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this AccountSummary collection.
asPreviousLink :: Lens' AccountSummaries (Maybe Text)
asPreviousLink
  = lens _asPreviousLink
      (\ s a -> s{_asPreviousLink = a})

instance FromJSON AccountSummaries where
        parseJSON
          = withObject "AccountSummaries"
              (\ o ->
                 AccountSummaries <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#accountSummaries")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON AccountSummaries where
        toJSON AccountSummaries{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _asNextLink,
                  ("itemsPerPage" .=) <$> _asItemsPerPage,
                  Just ("kind" .= _asKind),
                  ("username" .=) <$> _asUsername,
                  ("items" .=) <$> _asItems,
                  ("totalResults" .=) <$> _asTotalResults,
                  ("startIndex" .=) <$> _asStartIndex,
                  ("previousLink" .=) <$> _asPreviousLink])

-- | Details for the goal of the type EVENT.
--
-- /See:/ 'goalEventDetails' smart constructor.
data GoalEventDetails = GoalEventDetails
    { _gedUseEventValue   :: !(Maybe Bool)
    , _gedEventConditions :: !(Maybe [GoalEventDetailsEventConditionsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gedUseEventValue'
--
-- * 'gedEventConditions'
goalEventDetails
    :: GoalEventDetails
goalEventDetails =
    GoalEventDetails
    { _gedUseEventValue = Nothing
    , _gedEventConditions = Nothing
    }

-- | Determines if the event value should be used as the value for this goal.
gedUseEventValue :: Lens' GoalEventDetails (Maybe Bool)
gedUseEventValue
  = lens _gedUseEventValue
      (\ s a -> s{_gedUseEventValue = a})

-- | List of event conditions.
gedEventConditions :: Lens' GoalEventDetails [GoalEventDetailsEventConditionsItem]
gedEventConditions
  = lens _gedEventConditions
      (\ s a -> s{_gedEventConditions = a})
      . _Default
      . _Coerce

instance FromJSON GoalEventDetails where
        parseJSON
          = withObject "GoalEventDetails"
              (\ o ->
                 GoalEventDetails <$>
                   (o .:? "useEventValue") <*>
                     (o .:? "eventConditions" .!= mempty))

instance ToJSON GoalEventDetails where
        toJSON GoalEventDetails{..}
          = object
              (catMaybes
                 [("useEventValue" .=) <$> _gedUseEventValue,
                  ("eventConditions" .=) <$> _gedEventConditions])

-- | JSON template for an Analytics WebPropertySummary. WebPropertySummary
-- returns basic information (i.e., summary) for a web property.
--
-- /See:/ 'webPropertySummary' smart constructor.
data WebPropertySummary = WebPropertySummary
    { _wpsKind                  :: !Text
    , _wpsProFiles              :: !(Maybe [ProFileSummary])
    , _wpsName                  :: !(Maybe Text)
    , _wpsInternalWebPropertyId :: !(Maybe Text)
    , _wpsId                    :: !(Maybe Text)
    , _wpsWebsiteURL            :: !(Maybe Text)
    , _wpsLevel                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertySummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpsKind'
--
-- * 'wpsProFiles'
--
-- * 'wpsName'
--
-- * 'wpsInternalWebPropertyId'
--
-- * 'wpsId'
--
-- * 'wpsWebsiteURL'
--
-- * 'wpsLevel'
webPropertySummary
    :: WebPropertySummary
webPropertySummary =
    WebPropertySummary
    { _wpsKind = "analytics#webPropertySummary"
    , _wpsProFiles = Nothing
    , _wpsName = Nothing
    , _wpsInternalWebPropertyId = Nothing
    , _wpsId = Nothing
    , _wpsWebsiteURL = Nothing
    , _wpsLevel = Nothing
    }

-- | Resource type for Analytics WebPropertySummary.
wpsKind :: Lens' WebPropertySummary Text
wpsKind = lens _wpsKind (\ s a -> s{_wpsKind = a})

-- | List of profiles under this web property.
wpsProFiles :: Lens' WebPropertySummary [ProFileSummary]
wpsProFiles
  = lens _wpsProFiles (\ s a -> s{_wpsProFiles = a}) .
      _Default
      . _Coerce

-- | Web property name.
wpsName :: Lens' WebPropertySummary (Maybe Text)
wpsName = lens _wpsName (\ s a -> s{_wpsName = a})

-- | Internal ID for this web property.
wpsInternalWebPropertyId :: Lens' WebPropertySummary (Maybe Text)
wpsInternalWebPropertyId
  = lens _wpsInternalWebPropertyId
      (\ s a -> s{_wpsInternalWebPropertyId = a})

-- | Web property ID of the form UA-XXXXX-YY.
wpsId :: Lens' WebPropertySummary (Maybe Text)
wpsId = lens _wpsId (\ s a -> s{_wpsId = a})

-- | Website url for this web property.
wpsWebsiteURL :: Lens' WebPropertySummary (Maybe Text)
wpsWebsiteURL
  = lens _wpsWebsiteURL
      (\ s a -> s{_wpsWebsiteURL = a})

-- | Level for this web property. Possible values are STANDARD or PREMIUM.
wpsLevel :: Lens' WebPropertySummary (Maybe Text)
wpsLevel = lens _wpsLevel (\ s a -> s{_wpsLevel = a})

instance FromJSON WebPropertySummary where
        parseJSON
          = withObject "WebPropertySummary"
              (\ o ->
                 WebPropertySummary <$>
                   (o .:? "kind" .!= "analytics#webPropertySummary") <*>
                     (o .:? "profiles" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "id")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "level"))

instance ToJSON WebPropertySummary where
        toJSON WebPropertySummary{..}
          = object
              (catMaybes
                 [Just ("kind" .= _wpsKind),
                  ("profiles" .=) <$> _wpsProFiles,
                  ("name" .=) <$> _wpsName,
                  ("internalWebPropertyId" .=) <$>
                    _wpsInternalWebPropertyId,
                  ("id" .=) <$> _wpsId,
                  ("websiteUrl" .=) <$> _wpsWebsiteURL,
                  ("level" .=) <$> _wpsLevel])

-- | A filter collection lists filters created by users in an Analytics
-- account. Each resource in the collection corresponds to a filter.
--
-- /See:/ 'filters' smart constructor.
data Filters = Filters
    { _fNextLink     :: !(Maybe Text)
    , _fItemsPerPage :: !(Maybe (JSONText Int32))
    , _fKind         :: !Text
    , _fUsername     :: !(Maybe Text)
    , _fItems        :: !(Maybe [Filter])
    , _fTotalResults :: !(Maybe (JSONText Int32))
    , _fStartIndex   :: !(Maybe (JSONText Int32))
    , _fPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Filters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fNextLink'
--
-- * 'fItemsPerPage'
--
-- * 'fKind'
--
-- * 'fUsername'
--
-- * 'fItems'
--
-- * 'fTotalResults'
--
-- * 'fStartIndex'
--
-- * 'fPreviousLink'
filters
    :: Filters
filters =
    Filters
    { _fNextLink = Nothing
    , _fItemsPerPage = Nothing
    , _fKind = "analytics#filters"
    , _fUsername = Nothing
    , _fItems = Nothing
    , _fTotalResults = Nothing
    , _fStartIndex = Nothing
    , _fPreviousLink = Nothing
    }

-- | Link to next page for this filter collection.
fNextLink :: Lens' Filters (Maybe Text)
fNextLink
  = lens _fNextLink (\ s a -> s{_fNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to
-- 1,000 with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
fItemsPerPage :: Lens' Filters (Maybe Int32)
fItemsPerPage
  = lens _fItemsPerPage
      (\ s a -> s{_fItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
fKind :: Lens' Filters Text
fKind = lens _fKind (\ s a -> s{_fKind = a})

-- | Email ID of the authenticated user
fUsername :: Lens' Filters (Maybe Text)
fUsername
  = lens _fUsername (\ s a -> s{_fUsername = a})

-- | A list of filters.
fItems :: Lens' Filters [Filter]
fItems
  = lens _fItems (\ s a -> s{_fItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
fTotalResults :: Lens' Filters (Maybe Int32)
fTotalResults
  = lens _fTotalResults
      (\ s a -> s{_fTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
fStartIndex :: Lens' Filters (Maybe Int32)
fStartIndex
  = lens _fStartIndex (\ s a -> s{_fStartIndex = a}) .
      mapping _Coerce

-- | Link to previous page for this filter collection.
fPreviousLink :: Lens' Filters (Maybe Text)
fPreviousLink
  = lens _fPreviousLink
      (\ s a -> s{_fPreviousLink = a})

instance FromJSON Filters where
        parseJSON
          = withObject "Filters"
              (\ o ->
                 Filters <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#filters")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON Filters where
        toJSON Filters{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _fNextLink,
                  ("itemsPerPage" .=) <$> _fItemsPerPage,
                  Just ("kind" .= _fKind),
                  ("username" .=) <$> _fUsername,
                  ("items" .=) <$> _fItems,
                  ("totalResults" .=) <$> _fTotalResults,
                  ("startIndex" .=) <$> _fStartIndex,
                  ("previousLink" .=) <$> _fPreviousLink])

-- | Analytics data for a given view (profile).
--
-- /See:/ 'gaData' smart constructor.
data GaData = GaData
    { _gdNextLink            :: !(Maybe Text)
    , _gdSampleSpace         :: !(Maybe (JSONText Int64))
    , _gdItemsPerPage        :: !(Maybe (JSONText Int32))
    , _gdProFileInfo         :: !(Maybe GaDataProFileInfo)
    , _gdKind                :: !Text
    , _gdSampleSize          :: !(Maybe (JSONText Int64))
    , _gdRows                :: !(Maybe [[Text]])
    , _gdSelfLink            :: !(Maybe Text)
    , _gdQuery               :: !(Maybe GaDataQuery)
    , _gdColumnHeaders       :: !(Maybe [GaDataColumnHeadersItem])
    , _gdId                  :: !(Maybe Text)
    , _gdTotalResults        :: !(Maybe (JSONText Int32))
    , _gdDataTable           :: !(Maybe GaDataDataTable)
    , _gdContainsSampledData :: !(Maybe Bool)
    , _gdTotalsForAllResults :: !(Maybe GaDataTotalsForAllResults)
    , _gdPreviousLink        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdNextLink'
--
-- * 'gdSampleSpace'
--
-- * 'gdItemsPerPage'
--
-- * 'gdProFileInfo'
--
-- * 'gdKind'
--
-- * 'gdSampleSize'
--
-- * 'gdRows'
--
-- * 'gdSelfLink'
--
-- * 'gdQuery'
--
-- * 'gdColumnHeaders'
--
-- * 'gdId'
--
-- * 'gdTotalResults'
--
-- * 'gdDataTable'
--
-- * 'gdContainsSampledData'
--
-- * 'gdTotalsForAllResults'
--
-- * 'gdPreviousLink'
gaData
    :: GaData
gaData =
    GaData
    { _gdNextLink = Nothing
    , _gdSampleSpace = Nothing
    , _gdItemsPerPage = Nothing
    , _gdProFileInfo = Nothing
    , _gdKind = "analytics#gaData"
    , _gdSampleSize = Nothing
    , _gdRows = Nothing
    , _gdSelfLink = Nothing
    , _gdQuery = Nothing
    , _gdColumnHeaders = Nothing
    , _gdId = Nothing
    , _gdTotalResults = Nothing
    , _gdDataTable = Nothing
    , _gdContainsSampledData = Nothing
    , _gdTotalsForAllResults = Nothing
    , _gdPreviousLink = Nothing
    }

-- | Link to next page for this Analytics data query.
gdNextLink :: Lens' GaData (Maybe Text)
gdNextLink
  = lens _gdNextLink (\ s a -> s{_gdNextLink = a})

-- | Total size of the sample space from which the samples were selected.
gdSampleSpace :: Lens' GaData (Maybe Int64)
gdSampleSpace
  = lens _gdSampleSpace
      (\ s a -> s{_gdSampleSpace = a})
      . mapping _Coerce

-- | The maximum number of rows the response can contain, regardless of the
-- actual number of rows returned. Its value ranges from 1 to 10,000 with a
-- value of 1000 by default, or otherwise specified by the max-results
-- query parameter.
gdItemsPerPage :: Lens' GaData (Maybe Int32)
gdItemsPerPage
  = lens _gdItemsPerPage
      (\ s a -> s{_gdItemsPerPage = a})
      . mapping _Coerce

-- | Information for the view (profile), for which the Analytics data was
-- requested.
gdProFileInfo :: Lens' GaData (Maybe GaDataProFileInfo)
gdProFileInfo
  = lens _gdProFileInfo
      (\ s a -> s{_gdProFileInfo = a})

-- | Resource type.
gdKind :: Lens' GaData Text
gdKind = lens _gdKind (\ s a -> s{_gdKind = a})

-- | The number of samples used to calculate the result.
gdSampleSize :: Lens' GaData (Maybe Int64)
gdSampleSize
  = lens _gdSampleSize (\ s a -> s{_gdSampleSize = a})
      . mapping _Coerce

-- | Analytics data rows, where each row contains a list of dimension values
-- followed by the metric values. The order of dimensions and metrics is
-- same as specified in the request.
gdRows :: Lens' GaData [[Text]]
gdRows
  = lens _gdRows (\ s a -> s{_gdRows = a}) . _Default .
      _Coerce

-- | Link to this page.
gdSelfLink :: Lens' GaData (Maybe Text)
gdSelfLink
  = lens _gdSelfLink (\ s a -> s{_gdSelfLink = a})

-- | Analytics data request query parameters.
gdQuery :: Lens' GaData (Maybe GaDataQuery)
gdQuery = lens _gdQuery (\ s a -> s{_gdQuery = a})

-- | Column headers that list dimension names followed by the metric names.
-- The order of dimensions and metrics is same as specified in the request.
gdColumnHeaders :: Lens' GaData [GaDataColumnHeadersItem]
gdColumnHeaders
  = lens _gdColumnHeaders
      (\ s a -> s{_gdColumnHeaders = a})
      . _Default
      . _Coerce

-- | Unique ID for this data response.
gdId :: Lens' GaData (Maybe Text)
gdId = lens _gdId (\ s a -> s{_gdId = a})

-- | The total number of rows for the query, regardless of the number of rows
-- in the response.
gdTotalResults :: Lens' GaData (Maybe Int32)
gdTotalResults
  = lens _gdTotalResults
      (\ s a -> s{_gdTotalResults = a})
      . mapping _Coerce

gdDataTable :: Lens' GaData (Maybe GaDataDataTable)
gdDataTable
  = lens _gdDataTable (\ s a -> s{_gdDataTable = a})

-- | Determines if Analytics data contains samples.
gdContainsSampledData :: Lens' GaData (Maybe Bool)
gdContainsSampledData
  = lens _gdContainsSampledData
      (\ s a -> s{_gdContainsSampledData = a})

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
gdTotalsForAllResults :: Lens' GaData (Maybe GaDataTotalsForAllResults)
gdTotalsForAllResults
  = lens _gdTotalsForAllResults
      (\ s a -> s{_gdTotalsForAllResults = a})

-- | Link to previous page for this Analytics data query.
gdPreviousLink :: Lens' GaData (Maybe Text)
gdPreviousLink
  = lens _gdPreviousLink
      (\ s a -> s{_gdPreviousLink = a})

instance FromJSON GaData where
        parseJSON
          = withObject "GaData"
              (\ o ->
                 GaData <$>
                   (o .:? "nextLink") <*> (o .:? "sampleSpace") <*>
                     (o .:? "itemsPerPage")
                     <*> (o .:? "profileInfo")
                     <*> (o .:? "kind" .!= "analytics#gaData")
                     <*> (o .:? "sampleSize")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "query")
                     <*> (o .:? "columnHeaders" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "dataTable")
                     <*> (o .:? "containsSampledData")
                     <*> (o .:? "totalsForAllResults")
                     <*> (o .:? "previousLink"))

instance ToJSON GaData where
        toJSON GaData{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _gdNextLink,
                  ("sampleSpace" .=) <$> _gdSampleSpace,
                  ("itemsPerPage" .=) <$> _gdItemsPerPage,
                  ("profileInfo" .=) <$> _gdProFileInfo,
                  Just ("kind" .= _gdKind),
                  ("sampleSize" .=) <$> _gdSampleSize,
                  ("rows" .=) <$> _gdRows,
                  ("selfLink" .=) <$> _gdSelfLink,
                  ("query" .=) <$> _gdQuery,
                  ("columnHeaders" .=) <$> _gdColumnHeaders,
                  ("id" .=) <$> _gdId,
                  ("totalResults" .=) <$> _gdTotalResults,
                  ("dataTable" .=) <$> _gdDataTable,
                  ("containsSampledData" .=) <$>
                    _gdContainsSampledData,
                  ("totalsForAllResults" .=) <$>
                    _gdTotalsForAllResults,
                  ("previousLink" .=) <$> _gdPreviousLink])

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
--
-- /See:/ 'realtimeDataTotalsForAllResults' smart constructor.
newtype RealtimeDataTotalsForAllResults = RealtimeDataTotalsForAllResults
    { _rdtfarAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeDataTotalsForAllResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdtfarAddtional'
realtimeDataTotalsForAllResults
    :: HashMap Text Text -- ^ 'rdtfarAddtional'
    -> RealtimeDataTotalsForAllResults
realtimeDataTotalsForAllResults pRdtfarAddtional_ =
    RealtimeDataTotalsForAllResults
    { _rdtfarAddtional = pRdtfarAddtional_
    }

-- | Key-value pair for the total value of a metric. Key is the metric name
-- and the value is the total value for that metric.
rdtfarAddtional :: Lens' RealtimeDataTotalsForAllResults (HashMap Text Text)
rdtfarAddtional
  = lens _rdtfarAddtional
      (\ s a -> s{_rdtfarAddtional = a})

instance FromJSON RealtimeDataTotalsForAllResults
         where
        parseJSON
          = withObject "RealtimeDataTotalsForAllResults"
              (\ o ->
                 RealtimeDataTotalsForAllResults <$>
                   (parseJSONObject o))

instance ToJSON RealtimeDataTotalsForAllResults where
        toJSON = toJSON . _rdtfarAddtional

-- | JSON template for an Analytics custom data source.
--
-- /See:/ 'customDataSource' smart constructor.
data CustomDataSource = CustomDataSource
    { _cParentLink     :: !(Maybe CustomDataSourceParentLink)
    , _cWebPropertyId  :: !(Maybe Text)
    , _cChildLink      :: !(Maybe CustomDataSourceChildLink)
    , _cKind           :: !Text
    , _cCreated        :: !(Maybe DateTime')
    , _cUploadType     :: !(Maybe Text)
    , _cImportBehavior :: !(Maybe Text)
    , _cSelfLink       :: !(Maybe Text)
    , _cAccountId      :: !(Maybe Text)
    , _cName           :: !(Maybe Text)
    , _cId             :: !(Maybe Text)
    , _cUpdated        :: !(Maybe DateTime')
    , _cType           :: !(Maybe Text)
    , _cDescription    :: !(Maybe Text)
    , _cProFilesLinked :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cParentLink'
--
-- * 'cWebPropertyId'
--
-- * 'cChildLink'
--
-- * 'cKind'
--
-- * 'cCreated'
--
-- * 'cUploadType'
--
-- * 'cImportBehavior'
--
-- * 'cSelfLink'
--
-- * 'cAccountId'
--
-- * 'cName'
--
-- * 'cId'
--
-- * 'cUpdated'
--
-- * 'cType'
--
-- * 'cDescription'
--
-- * 'cProFilesLinked'
customDataSource
    :: CustomDataSource
customDataSource =
    CustomDataSource
    { _cParentLink = Nothing
    , _cWebPropertyId = Nothing
    , _cChildLink = Nothing
    , _cKind = "analytics#customDataSource"
    , _cCreated = Nothing
    , _cUploadType = Nothing
    , _cImportBehavior = Nothing
    , _cSelfLink = Nothing
    , _cAccountId = Nothing
    , _cName = Nothing
    , _cId = Nothing
    , _cUpdated = Nothing
    , _cType = Nothing
    , _cDescription = Nothing
    , _cProFilesLinked = Nothing
    }

-- | Parent link for this custom data source. Points to the web property to
-- which this custom data source belongs.
cParentLink :: Lens' CustomDataSource (Maybe CustomDataSourceParentLink)
cParentLink
  = lens _cParentLink (\ s a -> s{_cParentLink = a})

-- | Web property ID of the form UA-XXXXX-YY to which this custom data source
-- belongs.
cWebPropertyId :: Lens' CustomDataSource (Maybe Text)
cWebPropertyId
  = lens _cWebPropertyId
      (\ s a -> s{_cWebPropertyId = a})

cChildLink :: Lens' CustomDataSource (Maybe CustomDataSourceChildLink)
cChildLink
  = lens _cChildLink (\ s a -> s{_cChildLink = a})

-- | Resource type for Analytics custom data source.
cKind :: Lens' CustomDataSource Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Time this custom data source was created.
cCreated :: Lens' CustomDataSource (Maybe UTCTime)
cCreated
  = lens _cCreated (\ s a -> s{_cCreated = a}) .
      mapping _DateTime

cUploadType :: Lens' CustomDataSource (Maybe Text)
cUploadType
  = lens _cUploadType (\ s a -> s{_cUploadType = a})

cImportBehavior :: Lens' CustomDataSource (Maybe Text)
cImportBehavior
  = lens _cImportBehavior
      (\ s a -> s{_cImportBehavior = a})

-- | Link for this Analytics custom data source.
cSelfLink :: Lens' CustomDataSource (Maybe Text)
cSelfLink
  = lens _cSelfLink (\ s a -> s{_cSelfLink = a})

-- | Account ID to which this custom data source belongs.
cAccountId :: Lens' CustomDataSource (Maybe Text)
cAccountId
  = lens _cAccountId (\ s a -> s{_cAccountId = a})

-- | Name of this custom data source.
cName :: Lens' CustomDataSource (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Custom data source ID.
cId :: Lens' CustomDataSource (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | Time this custom data source was last modified.
cUpdated :: Lens' CustomDataSource (Maybe UTCTime)
cUpdated
  = lens _cUpdated (\ s a -> s{_cUpdated = a}) .
      mapping _DateTime

-- | Type of the custom data source.
cType :: Lens' CustomDataSource (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

-- | Description of custom data source.
cDescription :: Lens' CustomDataSource (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

-- | IDs of views (profiles) linked to the custom data source.
cProFilesLinked :: Lens' CustomDataSource [Text]
cProFilesLinked
  = lens _cProFilesLinked
      (\ s a -> s{_cProFilesLinked = a})
      . _Default
      . _Coerce

instance FromJSON CustomDataSource where
        parseJSON
          = withObject "CustomDataSource"
              (\ o ->
                 CustomDataSource <$>
                   (o .:? "parentLink") <*> (o .:? "webPropertyId") <*>
                     (o .:? "childLink")
                     <*> (o .:? "kind" .!= "analytics#customDataSource")
                     <*> (o .:? "created")
                     <*> (o .:? "uploadType")
                     <*> (o .:? "importBehavior")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "profilesLinked" .!= mempty))

instance ToJSON CustomDataSource where
        toJSON CustomDataSource{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _cParentLink,
                  ("webPropertyId" .=) <$> _cWebPropertyId,
                  ("childLink" .=) <$> _cChildLink,
                  Just ("kind" .= _cKind),
                  ("created" .=) <$> _cCreated,
                  ("uploadType" .=) <$> _cUploadType,
                  ("importBehavior" .=) <$> _cImportBehavior,
                  ("selfLink" .=) <$> _cSelfLink,
                  ("accountId" .=) <$> _cAccountId,
                  ("name" .=) <$> _cName, ("id" .=) <$> _cId,
                  ("updated" .=) <$> _cUpdated, ("type" .=) <$> _cType,
                  ("description" .=) <$> _cDescription,
                  ("profilesLinked" .=) <$> _cProFilesLinked])

-- | JSON template for a web property reference.
--
-- /See:/ 'webPropertyRef' smart constructor.
data WebPropertyRef = WebPropertyRef
    { _wprKind                  :: !Text
    , _wprHref                  :: !(Maybe Text)
    , _wprAccountId             :: !(Maybe Text)
    , _wprName                  :: !(Maybe Text)
    , _wprInternalWebPropertyId :: !(Maybe Text)
    , _wprId                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertyRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wprKind'
--
-- * 'wprHref'
--
-- * 'wprAccountId'
--
-- * 'wprName'
--
-- * 'wprInternalWebPropertyId'
--
-- * 'wprId'
webPropertyRef
    :: WebPropertyRef
webPropertyRef =
    WebPropertyRef
    { _wprKind = "analytics#webPropertyRef"
    , _wprHref = Nothing
    , _wprAccountId = Nothing
    , _wprName = Nothing
    , _wprInternalWebPropertyId = Nothing
    , _wprId = Nothing
    }

-- | Analytics web property reference.
wprKind :: Lens' WebPropertyRef Text
wprKind = lens _wprKind (\ s a -> s{_wprKind = a})

-- | Link for this web property.
wprHref :: Lens' WebPropertyRef (Maybe Text)
wprHref = lens _wprHref (\ s a -> s{_wprHref = a})

-- | Account ID to which this web property belongs.
wprAccountId :: Lens' WebPropertyRef (Maybe Text)
wprAccountId
  = lens _wprAccountId (\ s a -> s{_wprAccountId = a})

-- | Name of this web property.
wprName :: Lens' WebPropertyRef (Maybe Text)
wprName = lens _wprName (\ s a -> s{_wprName = a})

-- | Internal ID for this web property.
wprInternalWebPropertyId :: Lens' WebPropertyRef (Maybe Text)
wprInternalWebPropertyId
  = lens _wprInternalWebPropertyId
      (\ s a -> s{_wprInternalWebPropertyId = a})

-- | Web property ID of the form UA-XXXXX-YY.
wprId :: Lens' WebPropertyRef (Maybe Text)
wprId = lens _wprId (\ s a -> s{_wprId = a})

instance FromJSON WebPropertyRef where
        parseJSON
          = withObject "WebPropertyRef"
              (\ o ->
                 WebPropertyRef <$>
                   (o .:? "kind" .!= "analytics#webPropertyRef") <*>
                     (o .:? "href")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "id"))

instance ToJSON WebPropertyRef where
        toJSON WebPropertyRef{..}
          = object
              (catMaybes
                 [Just ("kind" .= _wprKind), ("href" .=) <$> _wprHref,
                  ("accountId" .=) <$> _wprAccountId,
                  ("name" .=) <$> _wprName,
                  ("internalWebPropertyId" .=) <$>
                    _wprInternalWebPropertyId,
                  ("id" .=) <$> _wprId])

-- | A goal collection lists Analytics goals to which the user has access.
-- Each view (profile) can have a set of goals. Each resource in the Goal
-- collection corresponds to a single Analytics goal.
--
-- /See:/ 'goals' smart constructor.
data Goals = Goals
    { _gNextLink     :: !(Maybe Text)
    , _gItemsPerPage :: !(Maybe (JSONText Int32))
    , _gKind         :: !Text
    , _gUsername     :: !(Maybe Text)
    , _gItems        :: !(Maybe [Goal])
    , _gTotalResults :: !(Maybe (JSONText Int32))
    , _gStartIndex   :: !(Maybe (JSONText Int32))
    , _gPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Goals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gNextLink'
--
-- * 'gItemsPerPage'
--
-- * 'gKind'
--
-- * 'gUsername'
--
-- * 'gItems'
--
-- * 'gTotalResults'
--
-- * 'gStartIndex'
--
-- * 'gPreviousLink'
goals
    :: Goals
goals =
    Goals
    { _gNextLink = Nothing
    , _gItemsPerPage = Nothing
    , _gKind = "analytics#goals"
    , _gUsername = Nothing
    , _gItems = Nothing
    , _gTotalResults = Nothing
    , _gStartIndex = Nothing
    , _gPreviousLink = Nothing
    }

-- | Link to next page for this goal collection.
gNextLink :: Lens' Goals (Maybe Text)
gNextLink
  = lens _gNextLink (\ s a -> s{_gNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
gItemsPerPage :: Lens' Goals (Maybe Int32)
gItemsPerPage
  = lens _gItemsPerPage
      (\ s a -> s{_gItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
gKind :: Lens' Goals Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

-- | Email ID of the authenticated user
gUsername :: Lens' Goals (Maybe Text)
gUsername
  = lens _gUsername (\ s a -> s{_gUsername = a})

-- | A list of goals.
gItems :: Lens' Goals [Goal]
gItems
  = lens _gItems (\ s a -> s{_gItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- resources in the result.
gTotalResults :: Lens' Goals (Maybe Int32)
gTotalResults
  = lens _gTotalResults
      (\ s a -> s{_gTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
gStartIndex :: Lens' Goals (Maybe Int32)
gStartIndex
  = lens _gStartIndex (\ s a -> s{_gStartIndex = a}) .
      mapping _Coerce

-- | Link to previous page for this goal collection.
gPreviousLink :: Lens' Goals (Maybe Text)
gPreviousLink
  = lens _gPreviousLink
      (\ s a -> s{_gPreviousLink = a})

instance FromJSON Goals where
        parseJSON
          = withObject "Goals"
              (\ o ->
                 Goals <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#goals")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON Goals where
        toJSON Goals{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _gNextLink,
                  ("itemsPerPage" .=) <$> _gItemsPerPage,
                  Just ("kind" .= _gKind),
                  ("username" .=) <$> _gUsername,
                  ("items" .=) <$> _gItems,
                  ("totalResults" .=) <$> _gTotalResults,
                  ("startIndex" .=) <$> _gStartIndex,
                  ("previousLink" .=) <$> _gPreviousLink])

-- | A union object representing a dimension or metric value. Only one of
-- \"primitiveValue\" or \"conversionPathValue\" attribute will be
-- populated.
--
-- /See:/ 'mcfDataRowsItemItem' smart constructor.
data McfDataRowsItemItem = McfDataRowsItemItem
    { _mdriiPrimitiveValue      :: !(Maybe Text)
    , _mdriiConversionPathValue :: !(Maybe [McfDataRowsItemItemConversionPathValueItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataRowsItemItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdriiPrimitiveValue'
--
-- * 'mdriiConversionPathValue'
mcfDataRowsItemItem
    :: McfDataRowsItemItem
mcfDataRowsItemItem =
    McfDataRowsItemItem
    { _mdriiPrimitiveValue = Nothing
    , _mdriiConversionPathValue = Nothing
    }

-- | A primitive dimension value. A primitive metric value.
mdriiPrimitiveValue :: Lens' McfDataRowsItemItem (Maybe Text)
mdriiPrimitiveValue
  = lens _mdriiPrimitiveValue
      (\ s a -> s{_mdriiPrimitiveValue = a})

-- | A conversion path dimension value, containing a list of interactions
-- with their attributes.
mdriiConversionPathValue :: Lens' McfDataRowsItemItem [McfDataRowsItemItemConversionPathValueItem]
mdriiConversionPathValue
  = lens _mdriiConversionPathValue
      (\ s a -> s{_mdriiConversionPathValue = a})
      . _Default
      . _Coerce

instance FromJSON McfDataRowsItemItem where
        parseJSON
          = withObject "McfDataRowsItemItem"
              (\ o ->
                 McfDataRowsItemItem <$>
                   (o .:? "primitiveValue") <*>
                     (o .:? "conversionPathValue" .!= mempty))

instance ToJSON McfDataRowsItemItem where
        toJSON McfDataRowsItemItem{..}
          = object
              (catMaybes
                 [("primitiveValue" .=) <$> _mdriiPrimitiveValue,
                  ("conversionPathValue" .=) <$>
                    _mdriiConversionPathValue])

-- | Permissions the user has for this account.
--
-- /See:/ 'accountPermissions' smart constructor.
newtype AccountPermissions = AccountPermissions
    { _apEffective :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apEffective'
accountPermissions
    :: AccountPermissions
accountPermissions =
    AccountPermissions
    { _apEffective = Nothing
    }

-- | All the permissions that the user has for this account. These include
-- any implied permissions (e.g., EDIT implies VIEW).
apEffective :: Lens' AccountPermissions [Text]
apEffective
  = lens _apEffective (\ s a -> s{_apEffective = a}) .
      _Default
      . _Coerce

instance FromJSON AccountPermissions where
        parseJSON
          = withObject "AccountPermissions"
              (\ o ->
                 AccountPermissions <$>
                   (o .:? "effective" .!= mempty))

instance ToJSON AccountPermissions where
        toJSON AccountPermissions{..}
          = object
              (catMaybes [("effective" .=) <$> _apEffective])

-- | Entity for this link. It can be an account, a web property, or a view
-- (profile).
--
-- /See:/ 'entityUserLinkEntity' smart constructor.
data EntityUserLinkEntity = EntityUserLinkEntity
    { _euleProFileRef     :: !(Maybe ProFileRef)
    , _euleAccountRef     :: !(Maybe AccountRef)
    , _euleWebPropertyRef :: !(Maybe WebPropertyRef)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityUserLinkEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euleProFileRef'
--
-- * 'euleAccountRef'
--
-- * 'euleWebPropertyRef'
entityUserLinkEntity
    :: EntityUserLinkEntity
entityUserLinkEntity =
    EntityUserLinkEntity
    { _euleProFileRef = Nothing
    , _euleAccountRef = Nothing
    , _euleWebPropertyRef = Nothing
    }

-- | View (Profile) for this link.
euleProFileRef :: Lens' EntityUserLinkEntity (Maybe ProFileRef)
euleProFileRef
  = lens _euleProFileRef
      (\ s a -> s{_euleProFileRef = a})

-- | Account for this link.
euleAccountRef :: Lens' EntityUserLinkEntity (Maybe AccountRef)
euleAccountRef
  = lens _euleAccountRef
      (\ s a -> s{_euleAccountRef = a})

-- | Web property for this link.
euleWebPropertyRef :: Lens' EntityUserLinkEntity (Maybe WebPropertyRef)
euleWebPropertyRef
  = lens _euleWebPropertyRef
      (\ s a -> s{_euleWebPropertyRef = a})

instance FromJSON EntityUserLinkEntity where
        parseJSON
          = withObject "EntityUserLinkEntity"
              (\ o ->
                 EntityUserLinkEntity <$>
                   (o .:? "profileRef") <*> (o .:? "accountRef") <*>
                     (o .:? "webPropertyRef"))

instance ToJSON EntityUserLinkEntity where
        toJSON EntityUserLinkEntity{..}
          = object
              (catMaybes
                 [("profileRef" .=) <$> _euleProFileRef,
                  ("accountRef" .=) <$> _euleAccountRef,
                  ("webPropertyRef" .=) <$> _euleWebPropertyRef])

-- | JSON template for Analytics account entry.
--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _accChildLink   :: !(Maybe AccountChildLink)
    , _accKind        :: !Text
    , _accCreated     :: !(Maybe DateTime')
    , _accSelfLink    :: !(Maybe Text)
    , _accName        :: !(Maybe Text)
    , _accId          :: !(Maybe Text)
    , _accUpdated     :: !(Maybe DateTime')
    , _accPermissions :: !(Maybe AccountPermissions)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accChildLink'
--
-- * 'accKind'
--
-- * 'accCreated'
--
-- * 'accSelfLink'
--
-- * 'accName'
--
-- * 'accId'
--
-- * 'accUpdated'
--
-- * 'accPermissions'
account
    :: Account
account =
    Account
    { _accChildLink = Nothing
    , _accKind = "analytics#account"
    , _accCreated = Nothing
    , _accSelfLink = Nothing
    , _accName = Nothing
    , _accId = Nothing
    , _accUpdated = Nothing
    , _accPermissions = Nothing
    }

-- | Child link for an account entry. Points to the list of web properties
-- for this account.
accChildLink :: Lens' Account (Maybe AccountChildLink)
accChildLink
  = lens _accChildLink (\ s a -> s{_accChildLink = a})

-- | Resource type for Analytics account.
accKind :: Lens' Account Text
accKind = lens _accKind (\ s a -> s{_accKind = a})

-- | Time the account was created.
accCreated :: Lens' Account (Maybe UTCTime)
accCreated
  = lens _accCreated (\ s a -> s{_accCreated = a}) .
      mapping _DateTime

-- | Link for this account.
accSelfLink :: Lens' Account (Maybe Text)
accSelfLink
  = lens _accSelfLink (\ s a -> s{_accSelfLink = a})

-- | Account name.
accName :: Lens' Account (Maybe Text)
accName = lens _accName (\ s a -> s{_accName = a})

-- | Account ID.
accId :: Lens' Account (Maybe Text)
accId = lens _accId (\ s a -> s{_accId = a})

-- | Time the account was last modified.
accUpdated :: Lens' Account (Maybe UTCTime)
accUpdated
  = lens _accUpdated (\ s a -> s{_accUpdated = a}) .
      mapping _DateTime

-- | Permissions the user has for this account.
accPermissions :: Lens' Account (Maybe AccountPermissions)
accPermissions
  = lens _accPermissions
      (\ s a -> s{_accPermissions = a})

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account <$>
                   (o .:? "childLink") <*>
                     (o .:? "kind" .!= "analytics#account")
                     <*> (o .:? "created")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "permissions"))

instance ToJSON Account where
        toJSON Account{..}
          = object
              (catMaybes
                 [("childLink" .=) <$> _accChildLink,
                  Just ("kind" .= _accKind),
                  ("created" .=) <$> _accCreated,
                  ("selfLink" .=) <$> _accSelfLink,
                  ("name" .=) <$> _accName, ("id" .=) <$> _accId,
                  ("updated" .=) <$> _accUpdated,
                  ("permissions" .=) <$> _accPermissions])

-- | JSON template for Analytics experiment resource.
--
-- /See:/ 'experiment' smart constructor.
data Experiment = Experiment
    { _expParentLink                     :: !(Maybe ExperimentParentLink)
    , _expEqualWeighting                 :: !(Maybe Bool)
    , _expStatus                         :: !(Maybe Text)
    , _expWebPropertyId                  :: !(Maybe Text)
    , _expStartTime                      :: !(Maybe DateTime')
    , _expSnippet                        :: !(Maybe Text)
    , _expKind                           :: !Text
    , _expCreated                        :: !(Maybe DateTime')
    , _expReasonExperimentEnded          :: !(Maybe Text)
    , _expTrafficCoverage                :: !(Maybe (JSONText Double))
    , _expEditableInGaUi                 :: !(Maybe Bool)
    , _expMinimumExperimentLengthInDays  :: !(Maybe (JSONText Int32))
    , _expProFileId                      :: !(Maybe Text)
    , _expOptimizationType               :: !(Maybe Text)
    , _expSelfLink                       :: !(Maybe Text)
    , _expAccountId                      :: !(Maybe Text)
    , _expName                           :: !(Maybe Text)
    , _expWinnerFound                    :: !(Maybe Bool)
    , _expEndTime                        :: !(Maybe DateTime')
    , _expVariations                     :: !(Maybe [ExperimentVariationsItem])
    , _expInternalWebPropertyId          :: !(Maybe Text)
    , _expId                             :: !(Maybe Text)
    , _expUpdated                        :: !(Maybe DateTime')
    , _expRewriteVariationURLsAsOriginal :: !(Maybe Bool)
    , _expObjectiveMetric                :: !(Maybe Text)
    , _expWinnerConfidenceLevel          :: !(Maybe (JSONText Double))
    , _expServingFramework               :: !(Maybe Text)
    , _expDescription                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Experiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'expParentLink'
--
-- * 'expEqualWeighting'
--
-- * 'expStatus'
--
-- * 'expWebPropertyId'
--
-- * 'expStartTime'
--
-- * 'expSnippet'
--
-- * 'expKind'
--
-- * 'expCreated'
--
-- * 'expReasonExperimentEnded'
--
-- * 'expTrafficCoverage'
--
-- * 'expEditableInGaUi'
--
-- * 'expMinimumExperimentLengthInDays'
--
-- * 'expProFileId'
--
-- * 'expOptimizationType'
--
-- * 'expSelfLink'
--
-- * 'expAccountId'
--
-- * 'expName'
--
-- * 'expWinnerFound'
--
-- * 'expEndTime'
--
-- * 'expVariations'
--
-- * 'expInternalWebPropertyId'
--
-- * 'expId'
--
-- * 'expUpdated'
--
-- * 'expRewriteVariationURLsAsOriginal'
--
-- * 'expObjectiveMetric'
--
-- * 'expWinnerConfidenceLevel'
--
-- * 'expServingFramework'
--
-- * 'expDescription'
experiment
    :: Experiment
experiment =
    Experiment
    { _expParentLink = Nothing
    , _expEqualWeighting = Nothing
    , _expStatus = Nothing
    , _expWebPropertyId = Nothing
    , _expStartTime = Nothing
    , _expSnippet = Nothing
    , _expKind = "analytics#experiment"
    , _expCreated = Nothing
    , _expReasonExperimentEnded = Nothing
    , _expTrafficCoverage = Nothing
    , _expEditableInGaUi = Nothing
    , _expMinimumExperimentLengthInDays = Nothing
    , _expProFileId = Nothing
    , _expOptimizationType = Nothing
    , _expSelfLink = Nothing
    , _expAccountId = Nothing
    , _expName = Nothing
    , _expWinnerFound = Nothing
    , _expEndTime = Nothing
    , _expVariations = Nothing
    , _expInternalWebPropertyId = Nothing
    , _expId = Nothing
    , _expUpdated = Nothing
    , _expRewriteVariationURLsAsOriginal = Nothing
    , _expObjectiveMetric = Nothing
    , _expWinnerConfidenceLevel = Nothing
    , _expServingFramework = Nothing
    , _expDescription = Nothing
    }

-- | Parent link for an experiment. Points to the view (profile) to which
-- this experiment belongs.
expParentLink :: Lens' Experiment (Maybe ExperimentParentLink)
expParentLink
  = lens _expParentLink
      (\ s a -> s{_expParentLink = a})

-- | Boolean specifying whether to distribute traffic evenly across all
-- variations. If the value is False, content experiments follows the
-- default behavior of adjusting traffic dynamically based on variation
-- performance. Optional -- defaults to False. This field may not be
-- changed for an experiment whose status is ENDED.
expEqualWeighting :: Lens' Experiment (Maybe Bool)
expEqualWeighting
  = lens _expEqualWeighting
      (\ s a -> s{_expEqualWeighting = a})

-- | Experiment status. Possible values: \"DRAFT\", \"READY_TO_RUN\",
-- \"RUNNING\", \"ENDED\". Experiments can be created in the \"DRAFT\",
-- \"READY_TO_RUN\" or \"RUNNING\" state. This field is required when
-- creating an experiment.
expStatus :: Lens' Experiment (Maybe Text)
expStatus
  = lens _expStatus (\ s a -> s{_expStatus = a})

-- | Web property ID to which this experiment belongs. The web property ID is
-- of the form UA-XXXXX-YY. This field is read-only.
expWebPropertyId :: Lens' Experiment (Maybe Text)
expWebPropertyId
  = lens _expWebPropertyId
      (\ s a -> s{_expWebPropertyId = a})

-- | The starting time of the experiment (the time the status changed from
-- READY_TO_RUN to RUNNING). This field is present only if the experiment
-- has started. This field is read-only.
expStartTime :: Lens' Experiment (Maybe UTCTime)
expStartTime
  = lens _expStartTime (\ s a -> s{_expStartTime = a})
      . mapping _DateTime

-- | The snippet of code to include on the control page(s). This field is
-- read-only.
expSnippet :: Lens' Experiment (Maybe Text)
expSnippet
  = lens _expSnippet (\ s a -> s{_expSnippet = a})

-- | Resource type for an Analytics experiment. This field is read-only.
expKind :: Lens' Experiment Text
expKind = lens _expKind (\ s a -> s{_expKind = a})

-- | Time the experiment was created. This field is read-only.
expCreated :: Lens' Experiment (Maybe UTCTime)
expCreated
  = lens _expCreated (\ s a -> s{_expCreated = a}) .
      mapping _DateTime

-- | Why the experiment ended. Possible values: \"STOPPED_BY_USER\",
-- \"WINNER_FOUND\", \"EXPERIMENT_EXPIRED\", \"ENDED_WITH_NO_WINNER\",
-- \"GOAL_OBJECTIVE_CHANGED\". \"ENDED_WITH_NO_WINNER\" means that the
-- experiment didn\'t expire but no winner was projected to be found. If
-- the experiment status is changed via the API to ENDED this field is set
-- to STOPPED_BY_USER. This field is read-only.
expReasonExperimentEnded :: Lens' Experiment (Maybe Text)
expReasonExperimentEnded
  = lens _expReasonExperimentEnded
      (\ s a -> s{_expReasonExperimentEnded = a})

-- | A floating-point number in (0, 1]. Specifies the fraction of the traffic
-- that participates in the experiment. Can be changed for a running
-- experiment. This field may not be changed for an experiments whose
-- status is ENDED.
expTrafficCoverage :: Lens' Experiment (Maybe Double)
expTrafficCoverage
  = lens _expTrafficCoverage
      (\ s a -> s{_expTrafficCoverage = a})
      . mapping _Coerce

-- | If true, the end user will be able to edit the experiment via the Google
-- Analytics user interface.
expEditableInGaUi :: Lens' Experiment (Maybe Bool)
expEditableInGaUi
  = lens _expEditableInGaUi
      (\ s a -> s{_expEditableInGaUi = a})

-- | An integer number in [3, 90]. Specifies the minimum length of the
-- experiment. Can be changed for a running experiment. This field may not
-- be changed for an experiments whose status is ENDED.
expMinimumExperimentLengthInDays :: Lens' Experiment (Maybe Int32)
expMinimumExperimentLengthInDays
  = lens _expMinimumExperimentLengthInDays
      (\ s a -> s{_expMinimumExperimentLengthInDays = a})
      . mapping _Coerce

-- | View (Profile) ID to which this experiment belongs. This field is
-- read-only.
expProFileId :: Lens' Experiment (Maybe Text)
expProFileId
  = lens _expProFileId (\ s a -> s{_expProFileId = a})

-- | Whether the objectiveMetric should be minimized or maximized. Possible
-- values: \"MAXIMUM\", \"MINIMUM\". Optional--defaults to \"MAXIMUM\".
-- Cannot be specified without objectiveMetric. Cannot be modified when
-- status is \"RUNNING\" or \"ENDED\".
expOptimizationType :: Lens' Experiment (Maybe Text)
expOptimizationType
  = lens _expOptimizationType
      (\ s a -> s{_expOptimizationType = a})

-- | Link for this experiment. This field is read-only.
expSelfLink :: Lens' Experiment (Maybe Text)
expSelfLink
  = lens _expSelfLink (\ s a -> s{_expSelfLink = a})

-- | Account ID to which this experiment belongs. This field is read-only.
expAccountId :: Lens' Experiment (Maybe Text)
expAccountId
  = lens _expAccountId (\ s a -> s{_expAccountId = a})

-- | Experiment name. This field may not be changed for an experiment whose
-- status is ENDED. This field is required when creating an experiment.
expName :: Lens' Experiment (Maybe Text)
expName = lens _expName (\ s a -> s{_expName = a})

-- | Boolean specifying whether a winner has been found for this experiment.
-- This field is read-only.
expWinnerFound :: Lens' Experiment (Maybe Bool)
expWinnerFound
  = lens _expWinnerFound
      (\ s a -> s{_expWinnerFound = a})

-- | The ending time of the experiment (the time the status changed from
-- RUNNING to ENDED). This field is present only if the experiment has
-- ended. This field is read-only.
expEndTime :: Lens' Experiment (Maybe UTCTime)
expEndTime
  = lens _expEndTime (\ s a -> s{_expEndTime = a}) .
      mapping _DateTime

-- | Array of variations. The first variation in the array is the original.
-- The number of variations may not change once an experiment is in the
-- RUNNING state. At least two variations are required before status can be
-- set to RUNNING.
expVariations :: Lens' Experiment [ExperimentVariationsItem]
expVariations
  = lens _expVariations
      (\ s a -> s{_expVariations = a})
      . _Default
      . _Coerce

-- | Internal ID for the web property to which this experiment belongs. This
-- field is read-only.
expInternalWebPropertyId :: Lens' Experiment (Maybe Text)
expInternalWebPropertyId
  = lens _expInternalWebPropertyId
      (\ s a -> s{_expInternalWebPropertyId = a})

-- | Experiment ID. Required for patch and update. Disallowed for create.
expId :: Lens' Experiment (Maybe Text)
expId = lens _expId (\ s a -> s{_expId = a})

-- | Time the experiment was last modified. This field is read-only.
expUpdated :: Lens' Experiment (Maybe UTCTime)
expUpdated
  = lens _expUpdated (\ s a -> s{_expUpdated = a}) .
      mapping _DateTime

-- | Boolean specifying whether variations URLS are rewritten to match those
-- of the original. This field may not be changed for an experiments whose
-- status is ENDED.
expRewriteVariationURLsAsOriginal :: Lens' Experiment (Maybe Bool)
expRewriteVariationURLsAsOriginal
  = lens _expRewriteVariationURLsAsOriginal
      (\ s a -> s{_expRewriteVariationURLsAsOriginal = a})

-- | The metric that the experiment is optimizing. Valid values:
-- \"ga:goal(n)Completions\", \"ga:adsenseAdsClicks\",
-- \"ga:adsenseAdsViewed\", \"ga:adsenseRevenue\", \"ga:bounces\",
-- \"ga:pageviews\", \"ga:sessionDuration\", \"ga:transactions\",
-- \"ga:transactionRevenue\". This field is required if status is
-- \"RUNNING\" and servingFramework is one of \"REDIRECT\" or \"API\".
expObjectiveMetric :: Lens' Experiment (Maybe Text)
expObjectiveMetric
  = lens _expObjectiveMetric
      (\ s a -> s{_expObjectiveMetric = a})

-- | A floating-point number in (0, 1). Specifies the necessary confidence
-- level to choose a winner. This field may not be changed for an
-- experiments whose status is ENDED.
expWinnerConfidenceLevel :: Lens' Experiment (Maybe Double)
expWinnerConfidenceLevel
  = lens _expWinnerConfidenceLevel
      (\ s a -> s{_expWinnerConfidenceLevel = a})
      . mapping _Coerce

-- | The framework used to serve the experiment variations and evaluate the
-- results. One of: - REDIRECT: Google Analytics redirects traffic to
-- different variation pages, reports the chosen variation and evaluates
-- the results. - API: Google Analytics chooses and reports the variation
-- to serve and evaluates the results; the caller is responsible for
-- serving the selected variation. - EXTERNAL: The variations will be
-- served externally and the chosen variation reported to Google Analytics.
-- The caller is responsible for serving the selected variation and
-- evaluating the results.
expServingFramework :: Lens' Experiment (Maybe Text)
expServingFramework
  = lens _expServingFramework
      (\ s a -> s{_expServingFramework = a})

-- | Notes about this experiment.
expDescription :: Lens' Experiment (Maybe Text)
expDescription
  = lens _expDescription
      (\ s a -> s{_expDescription = a})

instance FromJSON Experiment where
        parseJSON
          = withObject "Experiment"
              (\ o ->
                 Experiment <$>
                   (o .:? "parentLink") <*> (o .:? "equalWeighting") <*>
                     (o .:? "status")
                     <*> (o .:? "webPropertyId")
                     <*> (o .:? "startTime")
                     <*> (o .:? "snippet")
                     <*> (o .:? "kind" .!= "analytics#experiment")
                     <*> (o .:? "created")
                     <*> (o .:? "reasonExperimentEnded")
                     <*> (o .:? "trafficCoverage")
                     <*> (o .:? "editableInGaUi")
                     <*> (o .:? "minimumExperimentLengthInDays")
                     <*> (o .:? "profileId")
                     <*> (o .:? "optimizationType")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "winnerFound")
                     <*> (o .:? "endTime")
                     <*> (o .:? "variations" .!= mempty)
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "rewriteVariationUrlsAsOriginal")
                     <*> (o .:? "objectiveMetric")
                     <*> (o .:? "winnerConfidenceLevel")
                     <*> (o .:? "servingFramework")
                     <*> (o .:? "description"))

instance ToJSON Experiment where
        toJSON Experiment{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _expParentLink,
                  ("equalWeighting" .=) <$> _expEqualWeighting,
                  ("status" .=) <$> _expStatus,
                  ("webPropertyId" .=) <$> _expWebPropertyId,
                  ("startTime" .=) <$> _expStartTime,
                  ("snippet" .=) <$> _expSnippet,
                  Just ("kind" .= _expKind),
                  ("created" .=) <$> _expCreated,
                  ("reasonExperimentEnded" .=) <$>
                    _expReasonExperimentEnded,
                  ("trafficCoverage" .=) <$> _expTrafficCoverage,
                  ("editableInGaUi" .=) <$> _expEditableInGaUi,
                  ("minimumExperimentLengthInDays" .=) <$>
                    _expMinimumExperimentLengthInDays,
                  ("profileId" .=) <$> _expProFileId,
                  ("optimizationType" .=) <$> _expOptimizationType,
                  ("selfLink" .=) <$> _expSelfLink,
                  ("accountId" .=) <$> _expAccountId,
                  ("name" .=) <$> _expName,
                  ("winnerFound" .=) <$> _expWinnerFound,
                  ("endTime" .=) <$> _expEndTime,
                  ("variations" .=) <$> _expVariations,
                  ("internalWebPropertyId" .=) <$>
                    _expInternalWebPropertyId,
                  ("id" .=) <$> _expId, ("updated" .=) <$> _expUpdated,
                  ("rewriteVariationUrlsAsOriginal" .=) <$>
                    _expRewriteVariationURLsAsOriginal,
                  ("objectiveMetric" .=) <$> _expObjectiveMetric,
                  ("winnerConfidenceLevel" .=) <$>
                    _expWinnerConfidenceLevel,
                  ("servingFramework" .=) <$> _expServingFramework,
                  ("description" .=) <$> _expDescription])

-- | An entity user link collection provides a list of Analytics ACL links
-- Each resource in this collection corresponds to a single link.
--
-- /See:/ 'entityUserLinks' smart constructor.
data EntityUserLinks = EntityUserLinks
    { _eulNextLink     :: !(Maybe Text)
    , _eulItemsPerPage :: !(Maybe (JSONText Int32))
    , _eulKind         :: !Text
    , _eulItems        :: !(Maybe [EntityUserLink])
    , _eulTotalResults :: !(Maybe (JSONText Int32))
    , _eulStartIndex   :: !(Maybe (JSONText Int32))
    , _eulPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityUserLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eulNextLink'
--
-- * 'eulItemsPerPage'
--
-- * 'eulKind'
--
-- * 'eulItems'
--
-- * 'eulTotalResults'
--
-- * 'eulStartIndex'
--
-- * 'eulPreviousLink'
entityUserLinks
    :: EntityUserLinks
entityUserLinks =
    EntityUserLinks
    { _eulNextLink = Nothing
    , _eulItemsPerPage = Nothing
    , _eulKind = "analytics#entityUserLinks"
    , _eulItems = Nothing
    , _eulTotalResults = Nothing
    , _eulStartIndex = Nothing
    , _eulPreviousLink = Nothing
    }

-- | Next link for this account collection.
eulNextLink :: Lens' EntityUserLinks (Maybe Text)
eulNextLink
  = lens _eulNextLink (\ s a -> s{_eulNextLink = a})

-- | The maximum number of entries the response can contain, regardless of
-- the actual number of entries returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
eulItemsPerPage :: Lens' EntityUserLinks (Maybe Int32)
eulItemsPerPage
  = lens _eulItemsPerPage
      (\ s a -> s{_eulItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
eulKind :: Lens' EntityUserLinks Text
eulKind = lens _eulKind (\ s a -> s{_eulKind = a})

-- | A list of entity user links.
eulItems :: Lens' EntityUserLinks [EntityUserLink]
eulItems
  = lens _eulItems (\ s a -> s{_eulItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
eulTotalResults :: Lens' EntityUserLinks (Maybe Int32)
eulTotalResults
  = lens _eulTotalResults
      (\ s a -> s{_eulTotalResults = a})
      . mapping _Coerce

-- | The starting index of the entries, which is 1 by default or otherwise
-- specified by the start-index query parameter.
eulStartIndex :: Lens' EntityUserLinks (Maybe Int32)
eulStartIndex
  = lens _eulStartIndex
      (\ s a -> s{_eulStartIndex = a})
      . mapping _Coerce

-- | Previous link for this account collection.
eulPreviousLink :: Lens' EntityUserLinks (Maybe Text)
eulPreviousLink
  = lens _eulPreviousLink
      (\ s a -> s{_eulPreviousLink = a})

instance FromJSON EntityUserLinks where
        parseJSON
          = withObject "EntityUserLinks"
              (\ o ->
                 EntityUserLinks <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#entityUserLinks")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON EntityUserLinks where
        toJSON EntityUserLinks{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _eulNextLink,
                  ("itemsPerPage" .=) <$> _eulItemsPerPage,
                  Just ("kind" .= _eulKind),
                  ("items" .=) <$> _eulItems,
                  ("totalResults" .=) <$> _eulTotalResults,
                  ("startIndex" .=) <$> _eulStartIndex,
                  ("previousLink" .=) <$> _eulPreviousLink])

-- | JSON template for an AdWords account.
--
-- /See:/ 'adWordsAccount' smart constructor.
data AdWordsAccount = AdWordsAccount
    { _awaAutoTaggingEnabled :: !(Maybe Bool)
    , _awaKind               :: !Text
    , _awaCustomerId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdWordsAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awaAutoTaggingEnabled'
--
-- * 'awaKind'
--
-- * 'awaCustomerId'
adWordsAccount
    :: AdWordsAccount
adWordsAccount =
    AdWordsAccount
    { _awaAutoTaggingEnabled = Nothing
    , _awaKind = "analytics#adWordsAccount"
    , _awaCustomerId = Nothing
    }

-- | True if auto-tagging is enabled on the AdWords account. Read-only after
-- the insert operation.
awaAutoTaggingEnabled :: Lens' AdWordsAccount (Maybe Bool)
awaAutoTaggingEnabled
  = lens _awaAutoTaggingEnabled
      (\ s a -> s{_awaAutoTaggingEnabled = a})

-- | Resource type for AdWords account.
awaKind :: Lens' AdWordsAccount Text
awaKind = lens _awaKind (\ s a -> s{_awaKind = a})

-- | Customer ID. This field is required when creating an AdWords link.
awaCustomerId :: Lens' AdWordsAccount (Maybe Text)
awaCustomerId
  = lens _awaCustomerId
      (\ s a -> s{_awaCustomerId = a})

instance FromJSON AdWordsAccount where
        parseJSON
          = withObject "AdWordsAccount"
              (\ o ->
                 AdWordsAccount <$>
                   (o .:? "autoTaggingEnabled") <*>
                     (o .:? "kind" .!= "analytics#adWordsAccount")
                     <*> (o .:? "customerId"))

instance ToJSON AdWordsAccount where
        toJSON AdWordsAccount{..}
          = object
              (catMaybes
                 [("autoTaggingEnabled" .=) <$>
                    _awaAutoTaggingEnabled,
                  Just ("kind" .= _awaKind),
                  ("customerId" .=) <$> _awaCustomerId])

-- | JSON template for a profile filter link.
--
-- /See:/ 'filterRef' smart constructor.
data FilterRef = FilterRef
    { _frKind      :: !Text
    , _frHref      :: !(Maybe Text)
    , _frAccountId :: !(Maybe Text)
    , _frName      :: !(Maybe Text)
    , _frId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frKind'
--
-- * 'frHref'
--
-- * 'frAccountId'
--
-- * 'frName'
--
-- * 'frId'
filterRef
    :: FilterRef
filterRef =
    FilterRef
    { _frKind = "analytics#filterRef"
    , _frHref = Nothing
    , _frAccountId = Nothing
    , _frName = Nothing
    , _frId = Nothing
    }

-- | Kind value for filter reference.
frKind :: Lens' FilterRef Text
frKind = lens _frKind (\ s a -> s{_frKind = a})

-- | Link for this filter.
frHref :: Lens' FilterRef (Maybe Text)
frHref = lens _frHref (\ s a -> s{_frHref = a})

-- | Account ID to which this filter belongs.
frAccountId :: Lens' FilterRef (Maybe Text)
frAccountId
  = lens _frAccountId (\ s a -> s{_frAccountId = a})

-- | Name of this filter.
frName :: Lens' FilterRef (Maybe Text)
frName = lens _frName (\ s a -> s{_frName = a})

-- | Filter ID.
frId :: Lens' FilterRef (Maybe Text)
frId = lens _frId (\ s a -> s{_frId = a})

instance FromJSON FilterRef where
        parseJSON
          = withObject "FilterRef"
              (\ o ->
                 FilterRef <$>
                   (o .:? "kind" .!= "analytics#filterRef") <*>
                     (o .:? "href")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON FilterRef where
        toJSON FilterRef{..}
          = object
              (catMaybes
                 [Just ("kind" .= _frKind), ("href" .=) <$> _frHref,
                  ("accountId" .=) <$> _frAccountId,
                  ("name" .=) <$> _frName, ("id" .=) <$> _frId])

-- | Details for the goal of the type VISIT_TIME_ON_SITE.
--
-- /See:/ 'goalVisitTimeOnSiteDetails' smart constructor.
data GoalVisitTimeOnSiteDetails = GoalVisitTimeOnSiteDetails
    { _gvtosdComparisonValue :: !(Maybe (JSONText Int64))
    , _gvtosdComparisonType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalVisitTimeOnSiteDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gvtosdComparisonValue'
--
-- * 'gvtosdComparisonType'
goalVisitTimeOnSiteDetails
    :: GoalVisitTimeOnSiteDetails
goalVisitTimeOnSiteDetails =
    GoalVisitTimeOnSiteDetails
    { _gvtosdComparisonValue = Nothing
    , _gvtosdComparisonType = Nothing
    }

-- | Value used for this comparison.
gvtosdComparisonValue :: Lens' GoalVisitTimeOnSiteDetails (Maybe Int64)
gvtosdComparisonValue
  = lens _gvtosdComparisonValue
      (\ s a -> s{_gvtosdComparisonValue = a})
      . mapping _Coerce

-- | Type of comparison. Possible values are LESS_THAN or GREATER_THAN.
gvtosdComparisonType :: Lens' GoalVisitTimeOnSiteDetails (Maybe Text)
gvtosdComparisonType
  = lens _gvtosdComparisonType
      (\ s a -> s{_gvtosdComparisonType = a})

instance FromJSON GoalVisitTimeOnSiteDetails where
        parseJSON
          = withObject "GoalVisitTimeOnSiteDetails"
              (\ o ->
                 GoalVisitTimeOnSiteDetails <$>
                   (o .:? "comparisonValue") <*>
                     (o .:? "comparisonType"))

instance ToJSON GoalVisitTimeOnSiteDetails where
        toJSON GoalVisitTimeOnSiteDetails{..}
          = object
              (catMaybes
                 [("comparisonValue" .=) <$> _gvtosdComparisonValue,
                  ("comparisonType" .=) <$> _gvtosdComparisonType])

-- | A web property collection lists Analytics web properties to which the
-- user has access. Each resource in the collection corresponds to a single
-- Analytics web property.
--
-- /See:/ 'webProperties' smart constructor.
data WebProperties = WebProperties
    { _wpNextLink     :: !(Maybe Text)
    , _wpItemsPerPage :: !(Maybe (JSONText Int32))
    , _wpKind         :: !Text
    , _wpUsername     :: !(Maybe Text)
    , _wpItems        :: !(Maybe [WebProperty])
    , _wpTotalResults :: !(Maybe (JSONText Int32))
    , _wpStartIndex   :: !(Maybe (JSONText Int32))
    , _wpPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpNextLink'
--
-- * 'wpItemsPerPage'
--
-- * 'wpKind'
--
-- * 'wpUsername'
--
-- * 'wpItems'
--
-- * 'wpTotalResults'
--
-- * 'wpStartIndex'
--
-- * 'wpPreviousLink'
webProperties
    :: WebProperties
webProperties =
    WebProperties
    { _wpNextLink = Nothing
    , _wpItemsPerPage = Nothing
    , _wpKind = "analytics#webproperties"
    , _wpUsername = Nothing
    , _wpItems = Nothing
    , _wpTotalResults = Nothing
    , _wpStartIndex = Nothing
    , _wpPreviousLink = Nothing
    }

-- | Link to next page for this web property collection.
wpNextLink :: Lens' WebProperties (Maybe Text)
wpNextLink
  = lens _wpNextLink (\ s a -> s{_wpNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
wpItemsPerPage :: Lens' WebProperties (Maybe Int32)
wpItemsPerPage
  = lens _wpItemsPerPage
      (\ s a -> s{_wpItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
wpKind :: Lens' WebProperties Text
wpKind = lens _wpKind (\ s a -> s{_wpKind = a})

-- | Email ID of the authenticated user
wpUsername :: Lens' WebProperties (Maybe Text)
wpUsername
  = lens _wpUsername (\ s a -> s{_wpUsername = a})

-- | A list of web properties.
wpItems :: Lens' WebProperties [WebProperty]
wpItems
  = lens _wpItems (\ s a -> s{_wpItems = a}) . _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
wpTotalResults :: Lens' WebProperties (Maybe Int32)
wpTotalResults
  = lens _wpTotalResults
      (\ s a -> s{_wpTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
wpStartIndex :: Lens' WebProperties (Maybe Int32)
wpStartIndex
  = lens _wpStartIndex (\ s a -> s{_wpStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this web property collection.
wpPreviousLink :: Lens' WebProperties (Maybe Text)
wpPreviousLink
  = lens _wpPreviousLink
      (\ s a -> s{_wpPreviousLink = a})

instance FromJSON WebProperties where
        parseJSON
          = withObject "WebProperties"
              (\ o ->
                 WebProperties <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#webproperties")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON WebProperties where
        toJSON WebProperties{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _wpNextLink,
                  ("itemsPerPage" .=) <$> _wpItemsPerPage,
                  Just ("kind" .= _wpKind),
                  ("username" .=) <$> _wpUsername,
                  ("items" .=) <$> _wpItems,
                  ("totalResults" .=) <$> _wpTotalResults,
                  ("startIndex" .=) <$> _wpStartIndex,
                  ("previousLink" .=) <$> _wpPreviousLink])

-- | A custom metric collection lists Analytics custom metrics to which the
-- user has access. Each resource in the collection corresponds to a single
-- Analytics custom metric.
--
-- /See:/ 'customMetrics' smart constructor.
data CustomMetrics = CustomMetrics
    { _cmNextLink     :: !(Maybe Text)
    , _cmItemsPerPage :: !(Maybe (JSONText Int32))
    , _cmKind         :: !Text
    , _cmUsername     :: !(Maybe Text)
    , _cmItems        :: !(Maybe [CustomMetric])
    , _cmTotalResults :: !(Maybe (JSONText Int32))
    , _cmStartIndex   :: !(Maybe (JSONText Int32))
    , _cmPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmNextLink'
--
-- * 'cmItemsPerPage'
--
-- * 'cmKind'
--
-- * 'cmUsername'
--
-- * 'cmItems'
--
-- * 'cmTotalResults'
--
-- * 'cmStartIndex'
--
-- * 'cmPreviousLink'
customMetrics
    :: CustomMetrics
customMetrics =
    CustomMetrics
    { _cmNextLink = Nothing
    , _cmItemsPerPage = Nothing
    , _cmKind = "analytics#customMetrics"
    , _cmUsername = Nothing
    , _cmItems = Nothing
    , _cmTotalResults = Nothing
    , _cmStartIndex = Nothing
    , _cmPreviousLink = Nothing
    }

-- | Link to next page for this custom metric collection.
cmNextLink :: Lens' CustomMetrics (Maybe Text)
cmNextLink
  = lens _cmNextLink (\ s a -> s{_cmNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
cmItemsPerPage :: Lens' CustomMetrics (Maybe Int32)
cmItemsPerPage
  = lens _cmItemsPerPage
      (\ s a -> s{_cmItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
cmKind :: Lens' CustomMetrics Text
cmKind = lens _cmKind (\ s a -> s{_cmKind = a})

-- | Email ID of the authenticated user
cmUsername :: Lens' CustomMetrics (Maybe Text)
cmUsername
  = lens _cmUsername (\ s a -> s{_cmUsername = a})

-- | Collection of custom metrics.
cmItems :: Lens' CustomMetrics [CustomMetric]
cmItems
  = lens _cmItems (\ s a -> s{_cmItems = a}) . _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
cmTotalResults :: Lens' CustomMetrics (Maybe Int32)
cmTotalResults
  = lens _cmTotalResults
      (\ s a -> s{_cmTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
cmStartIndex :: Lens' CustomMetrics (Maybe Int32)
cmStartIndex
  = lens _cmStartIndex (\ s a -> s{_cmStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this custom metric collection.
cmPreviousLink :: Lens' CustomMetrics (Maybe Text)
cmPreviousLink
  = lens _cmPreviousLink
      (\ s a -> s{_cmPreviousLink = a})

instance FromJSON CustomMetrics where
        parseJSON
          = withObject "CustomMetrics"
              (\ o ->
                 CustomMetrics <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#customMetrics")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON CustomMetrics where
        toJSON CustomMetrics{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _cmNextLink,
                  ("itemsPerPage" .=) <$> _cmItemsPerPage,
                  Just ("kind" .= _cmKind),
                  ("username" .=) <$> _cmUsername,
                  ("items" .=) <$> _cmItems,
                  ("totalResults" .=) <$> _cmTotalResults,
                  ("startIndex" .=) <$> _cmStartIndex,
                  ("previousLink" .=) <$> _cmPreviousLink])

-- | Details for the filter of the type ADVANCED.
--
-- /See:/ 'filterAdvancedDetails' smart constructor.
data FilterAdvancedDetails = FilterAdvancedDetails
    { _fadExtractA            :: !(Maybe Text)
    , _fadFieldARequired      :: !(Maybe Bool)
    , _fadFieldA              :: !(Maybe Text)
    , _fadFieldBIndex         :: !(Maybe (JSONText Int32))
    , _fadOutputToField       :: !(Maybe Text)
    , _fadOutputConstructor   :: !(Maybe Text)
    , _fadExtractB            :: !(Maybe Text)
    , _fadFieldAIndex         :: !(Maybe (JSONText Int32))
    , _fadCaseSensitive       :: !(Maybe Bool)
    , _fadOutputToFieldIndex  :: !(Maybe (JSONText Int32))
    , _fadFieldB              :: !(Maybe Text)
    , _fadFieldBRequired      :: !(Maybe Bool)
    , _fadOverrideOutputField :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterAdvancedDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fadExtractA'
--
-- * 'fadFieldARequired'
--
-- * 'fadFieldA'
--
-- * 'fadFieldBIndex'
--
-- * 'fadOutputToField'
--
-- * 'fadOutputConstructor'
--
-- * 'fadExtractB'
--
-- * 'fadFieldAIndex'
--
-- * 'fadCaseSensitive'
--
-- * 'fadOutputToFieldIndex'
--
-- * 'fadFieldB'
--
-- * 'fadFieldBRequired'
--
-- * 'fadOverrideOutputField'
filterAdvancedDetails
    :: FilterAdvancedDetails
filterAdvancedDetails =
    FilterAdvancedDetails
    { _fadExtractA = Nothing
    , _fadFieldARequired = Nothing
    , _fadFieldA = Nothing
    , _fadFieldBIndex = Nothing
    , _fadOutputToField = Nothing
    , _fadOutputConstructor = Nothing
    , _fadExtractB = Nothing
    , _fadFieldAIndex = Nothing
    , _fadCaseSensitive = Nothing
    , _fadOutputToFieldIndex = Nothing
    , _fadFieldB = Nothing
    , _fadFieldBRequired = Nothing
    , _fadOverrideOutputField = Nothing
    }

-- | Expression to extract from field A.
fadExtractA :: Lens' FilterAdvancedDetails (Maybe Text)
fadExtractA
  = lens _fadExtractA (\ s a -> s{_fadExtractA = a})

-- | Indicates if field A is required to match.
fadFieldARequired :: Lens' FilterAdvancedDetails (Maybe Bool)
fadFieldARequired
  = lens _fadFieldARequired
      (\ s a -> s{_fadFieldARequired = a})

-- | Field A.
fadFieldA :: Lens' FilterAdvancedDetails (Maybe Text)
fadFieldA
  = lens _fadFieldA (\ s a -> s{_fadFieldA = a})

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fadFieldBIndex :: Lens' FilterAdvancedDetails (Maybe Int32)
fadFieldBIndex
  = lens _fadFieldBIndex
      (\ s a -> s{_fadFieldBIndex = a})
      . mapping _Coerce

-- | Output field.
fadOutputToField :: Lens' FilterAdvancedDetails (Maybe Text)
fadOutputToField
  = lens _fadOutputToField
      (\ s a -> s{_fadOutputToField = a})

-- | Expression used to construct the output value.
fadOutputConstructor :: Lens' FilterAdvancedDetails (Maybe Text)
fadOutputConstructor
  = lens _fadOutputConstructor
      (\ s a -> s{_fadOutputConstructor = a})

-- | Expression to extract from field B.
fadExtractB :: Lens' FilterAdvancedDetails (Maybe Text)
fadExtractB
  = lens _fadExtractB (\ s a -> s{_fadExtractB = a})

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fadFieldAIndex :: Lens' FilterAdvancedDetails (Maybe Int32)
fadFieldAIndex
  = lens _fadFieldAIndex
      (\ s a -> s{_fadFieldAIndex = a})
      . mapping _Coerce

-- | Indicates if the filter expressions are case sensitive.
fadCaseSensitive :: Lens' FilterAdvancedDetails (Maybe Bool)
fadCaseSensitive
  = lens _fadCaseSensitive
      (\ s a -> s{_fadCaseSensitive = a})

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fadOutputToFieldIndex :: Lens' FilterAdvancedDetails (Maybe Int32)
fadOutputToFieldIndex
  = lens _fadOutputToFieldIndex
      (\ s a -> s{_fadOutputToFieldIndex = a})
      . mapping _Coerce

-- | Field B.
fadFieldB :: Lens' FilterAdvancedDetails (Maybe Text)
fadFieldB
  = lens _fadFieldB (\ s a -> s{_fadFieldB = a})

-- | Indicates if field B is required to match.
fadFieldBRequired :: Lens' FilterAdvancedDetails (Maybe Bool)
fadFieldBRequired
  = lens _fadFieldBRequired
      (\ s a -> s{_fadFieldBRequired = a})

-- | Indicates if the existing value of the output field, if any, should be
-- overridden by the output expression.
fadOverrideOutputField :: Lens' FilterAdvancedDetails (Maybe Bool)
fadOverrideOutputField
  = lens _fadOverrideOutputField
      (\ s a -> s{_fadOverrideOutputField = a})

instance FromJSON FilterAdvancedDetails where
        parseJSON
          = withObject "FilterAdvancedDetails"
              (\ o ->
                 FilterAdvancedDetails <$>
                   (o .:? "extractA") <*> (o .:? "fieldARequired") <*>
                     (o .:? "fieldA")
                     <*> (o .:? "fieldBIndex")
                     <*> (o .:? "outputToField")
                     <*> (o .:? "outputConstructor")
                     <*> (o .:? "extractB")
                     <*> (o .:? "fieldAIndex")
                     <*> (o .:? "caseSensitive")
                     <*> (o .:? "outputToFieldIndex")
                     <*> (o .:? "fieldB")
                     <*> (o .:? "fieldBRequired")
                     <*> (o .:? "overrideOutputField"))

instance ToJSON FilterAdvancedDetails where
        toJSON FilterAdvancedDetails{..}
          = object
              (catMaybes
                 [("extractA" .=) <$> _fadExtractA,
                  ("fieldARequired" .=) <$> _fadFieldARequired,
                  ("fieldA" .=) <$> _fadFieldA,
                  ("fieldBIndex" .=) <$> _fadFieldBIndex,
                  ("outputToField" .=) <$> _fadOutputToField,
                  ("outputConstructor" .=) <$> _fadOutputConstructor,
                  ("extractB" .=) <$> _fadExtractB,
                  ("fieldAIndex" .=) <$> _fadFieldAIndex,
                  ("caseSensitive" .=) <$> _fadCaseSensitive,
                  ("outputToFieldIndex" .=) <$> _fadOutputToFieldIndex,
                  ("fieldB" .=) <$> _fadFieldB,
                  ("fieldBRequired" .=) <$> _fadFieldBRequired,
                  ("overrideOutputField" .=) <$>
                    _fadOverrideOutputField])

-- | Details for the filter of the type UPPER.
--
-- /See:/ 'filterUppercaseDetails' smart constructor.
data FilterUppercaseDetails = FilterUppercaseDetails
    { _fudFieldIndex :: !(Maybe (JSONText Int32))
    , _fudField      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterUppercaseDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fudFieldIndex'
--
-- * 'fudField'
filterUppercaseDetails
    :: FilterUppercaseDetails
filterUppercaseDetails =
    FilterUppercaseDetails
    { _fudFieldIndex = Nothing
    , _fudField = Nothing
    }

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fudFieldIndex :: Lens' FilterUppercaseDetails (Maybe Int32)
fudFieldIndex
  = lens _fudFieldIndex
      (\ s a -> s{_fudFieldIndex = a})
      . mapping _Coerce

-- | Field to use in the filter.
fudField :: Lens' FilterUppercaseDetails (Maybe Text)
fudField = lens _fudField (\ s a -> s{_fudField = a})

instance FromJSON FilterUppercaseDetails where
        parseJSON
          = withObject "FilterUppercaseDetails"
              (\ o ->
                 FilterUppercaseDetails <$>
                   (o .:? "fieldIndex") <*> (o .:? "field"))

instance ToJSON FilterUppercaseDetails where
        toJSON FilterUppercaseDetails{..}
          = object
              (catMaybes
                 [("fieldIndex" .=) <$> _fudFieldIndex,
                  ("field" .=) <$> _fudField])

--
-- /See:/ 'customDataSourceChildLink' smart constructor.
data CustomDataSourceChildLink = CustomDataSourceChildLink
    { _cdsclHref :: !(Maybe Text)
    , _cdsclType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDataSourceChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsclHref'
--
-- * 'cdsclType'
customDataSourceChildLink
    :: CustomDataSourceChildLink
customDataSourceChildLink =
    CustomDataSourceChildLink
    { _cdsclHref = Nothing
    , _cdsclType = Nothing
    }

-- | Link to the list of daily uploads for this custom data source. Link to
-- the list of uploads for this custom data source.
cdsclHref :: Lens' CustomDataSourceChildLink (Maybe Text)
cdsclHref
  = lens _cdsclHref (\ s a -> s{_cdsclHref = a})

-- | Value is \"analytics#dailyUploads\". Value is \"analytics#uploads\".
cdsclType :: Lens' CustomDataSourceChildLink (Maybe Text)
cdsclType
  = lens _cdsclType (\ s a -> s{_cdsclType = a})

instance FromJSON CustomDataSourceChildLink where
        parseJSON
          = withObject "CustomDataSourceChildLink"
              (\ o ->
                 CustomDataSourceChildLink <$>
                   (o .:? "href") <*> (o .:? "type"))

instance ToJSON CustomDataSourceChildLink where
        toJSON CustomDataSourceChildLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _cdsclHref,
                  ("type" .=) <$> _cdsclType])

-- | Parent link for this filter. Points to the account to which this filter
-- belongs.
--
-- /See:/ 'filterParentLink' smart constructor.
data FilterParentLink = FilterParentLink
    { _fplHref :: !(Maybe Text)
    , _fplType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fplHref'
--
-- * 'fplType'
filterParentLink
    :: FilterParentLink
filterParentLink =
    FilterParentLink
    { _fplHref = Nothing
    , _fplType = "analytics#account"
    }

-- | Link to the account to which this filter belongs.
fplHref :: Lens' FilterParentLink (Maybe Text)
fplHref = lens _fplHref (\ s a -> s{_fplHref = a})

-- | Value is \"analytics#account\".
fplType :: Lens' FilterParentLink Text
fplType = lens _fplType (\ s a -> s{_fplType = a})

instance FromJSON FilterParentLink where
        parseJSON
          = withObject "FilterParentLink"
              (\ o ->
                 FilterParentLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#account"))

instance ToJSON FilterParentLink where
        toJSON FilterParentLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _fplHref,
                  Just ("type" .= _fplType)])

-- | Real time data for a given view (profile).
--
-- /See:/ 'realtimeData' smart constructor.
data RealtimeData = RealtimeData
    { _rdProFileInfo         :: !(Maybe RealtimeDataProFileInfo)
    , _rdKind                :: !Text
    , _rdRows                :: !(Maybe [[Text]])
    , _rdSelfLink            :: !(Maybe Text)
    , _rdQuery               :: !(Maybe RealtimeDataQuery)
    , _rdColumnHeaders       :: !(Maybe [RealtimeDataColumnHeadersItem])
    , _rdId                  :: !(Maybe Text)
    , _rdTotalResults        :: !(Maybe (JSONText Int32))
    , _rdTotalsForAllResults :: !(Maybe RealtimeDataTotalsForAllResults)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdProFileInfo'
--
-- * 'rdKind'
--
-- * 'rdRows'
--
-- * 'rdSelfLink'
--
-- * 'rdQuery'
--
-- * 'rdColumnHeaders'
--
-- * 'rdId'
--
-- * 'rdTotalResults'
--
-- * 'rdTotalsForAllResults'
realtimeData
    :: RealtimeData
realtimeData =
    RealtimeData
    { _rdProFileInfo = Nothing
    , _rdKind = "analytics#realtimeData"
    , _rdRows = Nothing
    , _rdSelfLink = Nothing
    , _rdQuery = Nothing
    , _rdColumnHeaders = Nothing
    , _rdId = Nothing
    , _rdTotalResults = Nothing
    , _rdTotalsForAllResults = Nothing
    }

-- | Information for the view (profile), for which the real time data was
-- requested.
rdProFileInfo :: Lens' RealtimeData (Maybe RealtimeDataProFileInfo)
rdProFileInfo
  = lens _rdProFileInfo
      (\ s a -> s{_rdProFileInfo = a})

-- | Resource type.
rdKind :: Lens' RealtimeData Text
rdKind = lens _rdKind (\ s a -> s{_rdKind = a})

-- | Real time data rows, where each row contains a list of dimension values
-- followed by the metric values. The order of dimensions and metrics is
-- same as specified in the request.
rdRows :: Lens' RealtimeData [[Text]]
rdRows
  = lens _rdRows (\ s a -> s{_rdRows = a}) . _Default .
      _Coerce

-- | Link to this page.
rdSelfLink :: Lens' RealtimeData (Maybe Text)
rdSelfLink
  = lens _rdSelfLink (\ s a -> s{_rdSelfLink = a})

-- | Real time data request query parameters.
rdQuery :: Lens' RealtimeData (Maybe RealtimeDataQuery)
rdQuery = lens _rdQuery (\ s a -> s{_rdQuery = a})

-- | Column headers that list dimension names followed by the metric names.
-- The order of dimensions and metrics is same as specified in the request.
rdColumnHeaders :: Lens' RealtimeData [RealtimeDataColumnHeadersItem]
rdColumnHeaders
  = lens _rdColumnHeaders
      (\ s a -> s{_rdColumnHeaders = a})
      . _Default
      . _Coerce

-- | Unique ID for this data response.
rdId :: Lens' RealtimeData (Maybe Text)
rdId = lens _rdId (\ s a -> s{_rdId = a})

-- | The total number of rows for the query, regardless of the number of rows
-- in the response.
rdTotalResults :: Lens' RealtimeData (Maybe Int32)
rdTotalResults
  = lens _rdTotalResults
      (\ s a -> s{_rdTotalResults = a})
      . mapping _Coerce

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
rdTotalsForAllResults :: Lens' RealtimeData (Maybe RealtimeDataTotalsForAllResults)
rdTotalsForAllResults
  = lens _rdTotalsForAllResults
      (\ s a -> s{_rdTotalsForAllResults = a})

instance FromJSON RealtimeData where
        parseJSON
          = withObject "RealtimeData"
              (\ o ->
                 RealtimeData <$>
                   (o .:? "profileInfo") <*>
                     (o .:? "kind" .!= "analytics#realtimeData")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "selfLink")
                     <*> (o .:? "query")
                     <*> (o .:? "columnHeaders" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "totalResults")
                     <*> (o .:? "totalsForAllResults"))

instance ToJSON RealtimeData where
        toJSON RealtimeData{..}
          = object
              (catMaybes
                 [("profileInfo" .=) <$> _rdProFileInfo,
                  Just ("kind" .= _rdKind), ("rows" .=) <$> _rdRows,
                  ("selfLink" .=) <$> _rdSelfLink,
                  ("query" .=) <$> _rdQuery,
                  ("columnHeaders" .=) <$> _rdColumnHeaders,
                  ("id" .=) <$> _rdId,
                  ("totalResults" .=) <$> _rdTotalResults,
                  ("totalsForAllResults" .=) <$>
                    _rdTotalsForAllResults])

-- | JSON template for Analytics Custom Metric.
--
-- /See:/ 'customMetric' smart constructor.
data CustomMetric = CustomMetric
    { _cusParentLink    :: !(Maybe CustomMetricParentLink)
    , _cusWebPropertyId :: !(Maybe Text)
    , _cusKind          :: !Text
    , _cusMaxValue      :: !(Maybe Text)
    , _cusCreated       :: !(Maybe DateTime')
    , _cusMinValue      :: !(Maybe Text)
    , _cusActive        :: !(Maybe Bool)
    , _cusSelfLink      :: !(Maybe Text)
    , _cusAccountId     :: !(Maybe Text)
    , _cusName          :: !(Maybe Text)
    , _cusScope         :: !(Maybe Text)
    , _cusId            :: !(Maybe Text)
    , _cusUpdated       :: !(Maybe DateTime')
    , _cusType          :: !(Maybe Text)
    , _cusIndex         :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cusParentLink'
--
-- * 'cusWebPropertyId'
--
-- * 'cusKind'
--
-- * 'cusMaxValue'
--
-- * 'cusCreated'
--
-- * 'cusMinValue'
--
-- * 'cusActive'
--
-- * 'cusSelfLink'
--
-- * 'cusAccountId'
--
-- * 'cusName'
--
-- * 'cusScope'
--
-- * 'cusId'
--
-- * 'cusUpdated'
--
-- * 'cusType'
--
-- * 'cusIndex'
customMetric
    :: CustomMetric
customMetric =
    CustomMetric
    { _cusParentLink = Nothing
    , _cusWebPropertyId = Nothing
    , _cusKind = "analytics#customMetric"
    , _cusMaxValue = Nothing
    , _cusCreated = Nothing
    , _cusMinValue = Nothing
    , _cusActive = Nothing
    , _cusSelfLink = Nothing
    , _cusAccountId = Nothing
    , _cusName = Nothing
    , _cusScope = Nothing
    , _cusId = Nothing
    , _cusUpdated = Nothing
    , _cusType = Nothing
    , _cusIndex = Nothing
    }

-- | Parent link for the custom metric. Points to the property to which the
-- custom metric belongs.
cusParentLink :: Lens' CustomMetric (Maybe CustomMetricParentLink)
cusParentLink
  = lens _cusParentLink
      (\ s a -> s{_cusParentLink = a})

-- | Property ID.
cusWebPropertyId :: Lens' CustomMetric (Maybe Text)
cusWebPropertyId
  = lens _cusWebPropertyId
      (\ s a -> s{_cusWebPropertyId = a})

-- | Kind value for a custom metric. Set to \"analytics#customMetric\". It is
-- a read-only field.
cusKind :: Lens' CustomMetric Text
cusKind = lens _cusKind (\ s a -> s{_cusKind = a})

-- | Max value of custom metric.
cusMaxValue :: Lens' CustomMetric (Maybe Text)
cusMaxValue
  = lens _cusMaxValue (\ s a -> s{_cusMaxValue = a})

-- | Time the custom metric was created.
cusCreated :: Lens' CustomMetric (Maybe UTCTime)
cusCreated
  = lens _cusCreated (\ s a -> s{_cusCreated = a}) .
      mapping _DateTime

-- | Min value of custom metric.
cusMinValue :: Lens' CustomMetric (Maybe Text)
cusMinValue
  = lens _cusMinValue (\ s a -> s{_cusMinValue = a})

-- | Boolean indicating whether the custom metric is active.
cusActive :: Lens' CustomMetric (Maybe Bool)
cusActive
  = lens _cusActive (\ s a -> s{_cusActive = a})

-- | Link for the custom metric
cusSelfLink :: Lens' CustomMetric (Maybe Text)
cusSelfLink
  = lens _cusSelfLink (\ s a -> s{_cusSelfLink = a})

-- | Account ID.
cusAccountId :: Lens' CustomMetric (Maybe Text)
cusAccountId
  = lens _cusAccountId (\ s a -> s{_cusAccountId = a})

-- | Name of the custom metric.
cusName :: Lens' CustomMetric (Maybe Text)
cusName = lens _cusName (\ s a -> s{_cusName = a})

-- | Scope of the custom metric: HIT or PRODUCT.
cusScope :: Lens' CustomMetric (Maybe Text)
cusScope = lens _cusScope (\ s a -> s{_cusScope = a})

-- | Custom metric ID.
cusId :: Lens' CustomMetric (Maybe Text)
cusId = lens _cusId (\ s a -> s{_cusId = a})

-- | Time the custom metric was last modified.
cusUpdated :: Lens' CustomMetric (Maybe UTCTime)
cusUpdated
  = lens _cusUpdated (\ s a -> s{_cusUpdated = a}) .
      mapping _DateTime

-- | Data type of custom metric.
cusType :: Lens' CustomMetric (Maybe Text)
cusType = lens _cusType (\ s a -> s{_cusType = a})

-- | Index of the custom metric.
cusIndex :: Lens' CustomMetric (Maybe Int32)
cusIndex
  = lens _cusIndex (\ s a -> s{_cusIndex = a}) .
      mapping _Coerce

instance FromJSON CustomMetric where
        parseJSON
          = withObject "CustomMetric"
              (\ o ->
                 CustomMetric <$>
                   (o .:? "parentLink") <*> (o .:? "webPropertyId") <*>
                     (o .:? "kind" .!= "analytics#customMetric")
                     <*> (o .:? "max_value")
                     <*> (o .:? "created")
                     <*> (o .:? "min_value")
                     <*> (o .:? "active")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "scope")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "type")
                     <*> (o .:? "index"))

instance ToJSON CustomMetric where
        toJSON CustomMetric{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _cusParentLink,
                  ("webPropertyId" .=) <$> _cusWebPropertyId,
                  Just ("kind" .= _cusKind),
                  ("max_value" .=) <$> _cusMaxValue,
                  ("created" .=) <$> _cusCreated,
                  ("min_value" .=) <$> _cusMinValue,
                  ("active" .=) <$> _cusActive,
                  ("selfLink" .=) <$> _cusSelfLink,
                  ("accountId" .=) <$> _cusAccountId,
                  ("name" .=) <$> _cusName, ("scope" .=) <$> _cusScope,
                  ("id" .=) <$> _cusId, ("updated" .=) <$> _cusUpdated,
                  ("type" .=) <$> _cusType,
                  ("index" .=) <$> _cusIndex])

-- | JSON template for an Analytics ProfileSummary. ProfileSummary returns
-- basic information (i.e., summary) for a profile.
--
-- /See:/ 'proFileSummary' smart constructor.
data ProFileSummary = ProFileSummary
    { _pfsKind :: !Text
    , _pfsName :: !(Maybe Text)
    , _pfsId   :: !(Maybe Text)
    , _pfsType :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFileSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfsKind'
--
-- * 'pfsName'
--
-- * 'pfsId'
--
-- * 'pfsType'
proFileSummary
    :: ProFileSummary
proFileSummary =
    ProFileSummary
    { _pfsKind = "analytics#profileSummary"
    , _pfsName = Nothing
    , _pfsId = Nothing
    , _pfsType = Nothing
    }

-- | Resource type for Analytics ProfileSummary.
pfsKind :: Lens' ProFileSummary Text
pfsKind = lens _pfsKind (\ s a -> s{_pfsKind = a})

-- | View (profile) name.
pfsName :: Lens' ProFileSummary (Maybe Text)
pfsName = lens _pfsName (\ s a -> s{_pfsName = a})

-- | View (profile) ID.
pfsId :: Lens' ProFileSummary (Maybe Text)
pfsId = lens _pfsId (\ s a -> s{_pfsId = a})

-- | View (Profile) type. Supported types: WEB or APP.
pfsType :: Lens' ProFileSummary (Maybe Text)
pfsType = lens _pfsType (\ s a -> s{_pfsType = a})

instance FromJSON ProFileSummary where
        parseJSON
          = withObject "ProFileSummary"
              (\ o ->
                 ProFileSummary <$>
                   (o .:? "kind" .!= "analytics#profileSummary") <*>
                     (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON ProFileSummary where
        toJSON ProFileSummary{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pfsKind), ("name" .=) <$> _pfsName,
                  ("id" .=) <$> _pfsId, ("type" .=) <$> _pfsType])

-- | Parent link for the custom dimension. Points to the property to which
-- the custom dimension belongs.
--
-- /See:/ 'customDimensionParentLink' smart constructor.
data CustomDimensionParentLink = CustomDimensionParentLink
    { _cdplHref :: !(Maybe Text)
    , _cdplType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDimensionParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdplHref'
--
-- * 'cdplType'
customDimensionParentLink
    :: CustomDimensionParentLink
customDimensionParentLink =
    CustomDimensionParentLink
    { _cdplHref = Nothing
    , _cdplType = "analytics#webproperty"
    }

-- | Link to the property to which the custom dimension belongs.
cdplHref :: Lens' CustomDimensionParentLink (Maybe Text)
cdplHref = lens _cdplHref (\ s a -> s{_cdplHref = a})

-- | Type of the parent link. Set to \"analytics#webproperty\".
cdplType :: Lens' CustomDimensionParentLink Text
cdplType = lens _cdplType (\ s a -> s{_cdplType = a})

instance FromJSON CustomDimensionParentLink where
        parseJSON
          = withObject "CustomDimensionParentLink"
              (\ o ->
                 CustomDimensionParentLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#webproperty"))

instance ToJSON CustomDimensionParentLink where
        toJSON CustomDimensionParentLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _cdplHref,
                  Just ("type" .= _cdplType)])

-- | JSON template for an Analytics web property.
--
-- /See:/ 'webProperty' smart constructor.
data WebProperty = WebProperty
    { _wParentLink            :: !(Maybe WebPropertyParentLink)
    , _wChildLink             :: !(Maybe WebPropertyChildLink)
    , _wDefaultProFileId      :: !(Maybe (JSONText Int64))
    , _wKind                  :: !Text
    , _wCreated               :: !(Maybe DateTime')
    , _wSelfLink              :: !(Maybe Text)
    , _wAccountId             :: !(Maybe Text)
    , _wName                  :: !(Maybe Text)
    , _wInternalWebPropertyId :: !(Maybe Text)
    , _wId                    :: !(Maybe Text)
    , _wUpdated               :: !(Maybe DateTime')
    , _wProFileCount          :: !(Maybe (JSONText Int32))
    , _wPermissions           :: !(Maybe WebPropertyPermissions)
    , _wWebsiteURL            :: !(Maybe Text)
    , _wIndustryVertical      :: !(Maybe Text)
    , _wLevel                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wParentLink'
--
-- * 'wChildLink'
--
-- * 'wDefaultProFileId'
--
-- * 'wKind'
--
-- * 'wCreated'
--
-- * 'wSelfLink'
--
-- * 'wAccountId'
--
-- * 'wName'
--
-- * 'wInternalWebPropertyId'
--
-- * 'wId'
--
-- * 'wUpdated'
--
-- * 'wProFileCount'
--
-- * 'wPermissions'
--
-- * 'wWebsiteURL'
--
-- * 'wIndustryVertical'
--
-- * 'wLevel'
webProperty
    :: WebProperty
webProperty =
    WebProperty
    { _wParentLink = Nothing
    , _wChildLink = Nothing
    , _wDefaultProFileId = Nothing
    , _wKind = "analytics#webproperty"
    , _wCreated = Nothing
    , _wSelfLink = Nothing
    , _wAccountId = Nothing
    , _wName = Nothing
    , _wInternalWebPropertyId = Nothing
    , _wId = Nothing
    , _wUpdated = Nothing
    , _wProFileCount = Nothing
    , _wPermissions = Nothing
    , _wWebsiteURL = Nothing
    , _wIndustryVertical = Nothing
    , _wLevel = Nothing
    }

-- | Parent link for this web property. Points to the account to which this
-- web property belongs.
wParentLink :: Lens' WebProperty (Maybe WebPropertyParentLink)
wParentLink
  = lens _wParentLink (\ s a -> s{_wParentLink = a})

-- | Child link for this web property. Points to the list of views (profiles)
-- for this web property.
wChildLink :: Lens' WebProperty (Maybe WebPropertyChildLink)
wChildLink
  = lens _wChildLink (\ s a -> s{_wChildLink = a})

-- | Default view (profile) ID.
wDefaultProFileId :: Lens' WebProperty (Maybe Int64)
wDefaultProFileId
  = lens _wDefaultProFileId
      (\ s a -> s{_wDefaultProFileId = a})
      . mapping _Coerce

-- | Resource type for Analytics WebProperty.
wKind :: Lens' WebProperty Text
wKind = lens _wKind (\ s a -> s{_wKind = a})

-- | Time this web property was created.
wCreated :: Lens' WebProperty (Maybe UTCTime)
wCreated
  = lens _wCreated (\ s a -> s{_wCreated = a}) .
      mapping _DateTime

-- | Link for this web property.
wSelfLink :: Lens' WebProperty (Maybe Text)
wSelfLink
  = lens _wSelfLink (\ s a -> s{_wSelfLink = a})

-- | Account ID to which this web property belongs.
wAccountId :: Lens' WebProperty (Maybe Text)
wAccountId
  = lens _wAccountId (\ s a -> s{_wAccountId = a})

-- | Name of this web property.
wName :: Lens' WebProperty (Maybe Text)
wName = lens _wName (\ s a -> s{_wName = a})

-- | Internal ID for this web property.
wInternalWebPropertyId :: Lens' WebProperty (Maybe Text)
wInternalWebPropertyId
  = lens _wInternalWebPropertyId
      (\ s a -> s{_wInternalWebPropertyId = a})

-- | Web property ID of the form UA-XXXXX-YY.
wId :: Lens' WebProperty (Maybe Text)
wId = lens _wId (\ s a -> s{_wId = a})

-- | Time this web property was last modified.
wUpdated :: Lens' WebProperty (Maybe UTCTime)
wUpdated
  = lens _wUpdated (\ s a -> s{_wUpdated = a}) .
      mapping _DateTime

-- | View (Profile) count for this web property.
wProFileCount :: Lens' WebProperty (Maybe Int32)
wProFileCount
  = lens _wProFileCount
      (\ s a -> s{_wProFileCount = a})
      . mapping _Coerce

-- | Permissions the user has for this web property.
wPermissions :: Lens' WebProperty (Maybe WebPropertyPermissions)
wPermissions
  = lens _wPermissions (\ s a -> s{_wPermissions = a})

-- | Website url for this web property.
wWebsiteURL :: Lens' WebProperty (Maybe Text)
wWebsiteURL
  = lens _wWebsiteURL (\ s a -> s{_wWebsiteURL = a})

-- | The industry vertical\/category selected for this web property.
wIndustryVertical :: Lens' WebProperty (Maybe Text)
wIndustryVertical
  = lens _wIndustryVertical
      (\ s a -> s{_wIndustryVertical = a})

-- | Level for this web property. Possible values are STANDARD or PREMIUM.
wLevel :: Lens' WebProperty (Maybe Text)
wLevel = lens _wLevel (\ s a -> s{_wLevel = a})

instance FromJSON WebProperty where
        parseJSON
          = withObject "WebProperty"
              (\ o ->
                 WebProperty <$>
                   (o .:? "parentLink") <*> (o .:? "childLink") <*>
                     (o .:? "defaultProfileId")
                     <*> (o .:? "kind" .!= "analytics#webproperty")
                     <*> (o .:? "created")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "profileCount")
                     <*> (o .:? "permissions")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "industryVertical")
                     <*> (o .:? "level"))

instance ToJSON WebProperty where
        toJSON WebProperty{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _wParentLink,
                  ("childLink" .=) <$> _wChildLink,
                  ("defaultProfileId" .=) <$> _wDefaultProFileId,
                  Just ("kind" .= _wKind),
                  ("created" .=) <$> _wCreated,
                  ("selfLink" .=) <$> _wSelfLink,
                  ("accountId" .=) <$> _wAccountId,
                  ("name" .=) <$> _wName,
                  ("internalWebPropertyId" .=) <$>
                    _wInternalWebPropertyId,
                  ("id" .=) <$> _wId, ("updated" .=) <$> _wUpdated,
                  ("profileCount" .=) <$> _wProFileCount,
                  ("permissions" .=) <$> _wPermissions,
                  ("websiteUrl" .=) <$> _wWebsiteURL,
                  ("industryVertical" .=) <$> _wIndustryVertical,
                  ("level" .=) <$> _wLevel])

-- | Permissions the user has for this web property.
--
-- /See:/ 'webPropertyPermissions' smart constructor.
newtype WebPropertyPermissions = WebPropertyPermissions
    { _wppEffective :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertyPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wppEffective'
webPropertyPermissions
    :: WebPropertyPermissions
webPropertyPermissions =
    WebPropertyPermissions
    { _wppEffective = Nothing
    }

-- | All the permissions that the user has for this web property. These
-- include any implied permissions (e.g., EDIT implies VIEW) or inherited
-- permissions from the parent account.
wppEffective :: Lens' WebPropertyPermissions [Text]
wppEffective
  = lens _wppEffective (\ s a -> s{_wppEffective = a})
      . _Default
      . _Coerce

instance FromJSON WebPropertyPermissions where
        parseJSON
          = withObject "WebPropertyPermissions"
              (\ o ->
                 WebPropertyPermissions <$>
                   (o .:? "effective" .!= mempty))

instance ToJSON WebPropertyPermissions where
        toJSON WebPropertyPermissions{..}
          = object
              (catMaybes [("effective" .=) <$> _wppEffective])

-- | JSON template for an Analytics Entity-User Link. Returns permissions
-- that a user has for an entity.
--
-- /See:/ 'entityUserLink' smart constructor.
data EntityUserLink = EntityUserLink
    { _euluKind        :: !Text
    , _euluUserRef     :: !(Maybe UserRef)
    , _euluSelfLink    :: !(Maybe Text)
    , _euluId          :: !(Maybe Text)
    , _euluPermissions :: !(Maybe EntityUserLinkPermissions)
    , _euluEntity      :: !(Maybe EntityUserLinkEntity)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityUserLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euluKind'
--
-- * 'euluUserRef'
--
-- * 'euluSelfLink'
--
-- * 'euluId'
--
-- * 'euluPermissions'
--
-- * 'euluEntity'
entityUserLink
    :: EntityUserLink
entityUserLink =
    EntityUserLink
    { _euluKind = "analytics#entityUserLink"
    , _euluUserRef = Nothing
    , _euluSelfLink = Nothing
    , _euluId = Nothing
    , _euluPermissions = Nothing
    , _euluEntity = Nothing
    }

-- | Resource type for entity user link.
euluKind :: Lens' EntityUserLink Text
euluKind = lens _euluKind (\ s a -> s{_euluKind = a})

-- | User reference.
euluUserRef :: Lens' EntityUserLink (Maybe UserRef)
euluUserRef
  = lens _euluUserRef (\ s a -> s{_euluUserRef = a})

-- | Self link for this resource.
euluSelfLink :: Lens' EntityUserLink (Maybe Text)
euluSelfLink
  = lens _euluSelfLink (\ s a -> s{_euluSelfLink = a})

-- | Entity user link ID
euluId :: Lens' EntityUserLink (Maybe Text)
euluId = lens _euluId (\ s a -> s{_euluId = a})

-- | Permissions the user has for this entity.
euluPermissions :: Lens' EntityUserLink (Maybe EntityUserLinkPermissions)
euluPermissions
  = lens _euluPermissions
      (\ s a -> s{_euluPermissions = a})

-- | Entity for this link. It can be an account, a web property, or a view
-- (profile).
euluEntity :: Lens' EntityUserLink (Maybe EntityUserLinkEntity)
euluEntity
  = lens _euluEntity (\ s a -> s{_euluEntity = a})

instance FromJSON EntityUserLink where
        parseJSON
          = withObject "EntityUserLink"
              (\ o ->
                 EntityUserLink <$>
                   (o .:? "kind" .!= "analytics#entityUserLink") <*>
                     (o .:? "userRef")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "permissions")
                     <*> (o .:? "entity"))

instance ToJSON EntityUserLink where
        toJSON EntityUserLink{..}
          = object
              (catMaybes
                 [Just ("kind" .= _euluKind),
                  ("userRef" .=) <$> _euluUserRef,
                  ("selfLink" .=) <$> _euluSelfLink,
                  ("id" .=) <$> _euluId,
                  ("permissions" .=) <$> _euluPermissions,
                  ("entity" .=) <$> _euluEntity])

-- | Parent link for this custom data source. Points to the web property to
-- which this custom data source belongs.
--
-- /See:/ 'customDataSourceParentLink' smart constructor.
data CustomDataSourceParentLink = CustomDataSourceParentLink
    { _cdsplHref :: !(Maybe Text)
    , _cdsplType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDataSourceParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsplHref'
--
-- * 'cdsplType'
customDataSourceParentLink
    :: CustomDataSourceParentLink
customDataSourceParentLink =
    CustomDataSourceParentLink
    { _cdsplHref = Nothing
    , _cdsplType = "analytics#webproperty"
    }

-- | Link to the web property to which this custom data source belongs.
cdsplHref :: Lens' CustomDataSourceParentLink (Maybe Text)
cdsplHref
  = lens _cdsplHref (\ s a -> s{_cdsplHref = a})

-- | Value is \"analytics#webproperty\".
cdsplType :: Lens' CustomDataSourceParentLink Text
cdsplType
  = lens _cdsplType (\ s a -> s{_cdsplType = a})

instance FromJSON CustomDataSourceParentLink where
        parseJSON
          = withObject "CustomDataSourceParentLink"
              (\ o ->
                 CustomDataSourceParentLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#webproperty"))

instance ToJSON CustomDataSourceParentLink where
        toJSON CustomDataSourceParentLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _cdsplHref,
                  Just ("type" .= _cdsplType)])

--
-- /See:/ 'goalEventDetailsEventConditionsItem' smart constructor.
data GoalEventDetailsEventConditionsItem = GoalEventDetailsEventConditionsItem
    { _gedeciMatchType       :: !(Maybe Text)
    , _gedeciExpression      :: !(Maybe Text)
    , _gedeciComparisonValue :: !(Maybe (JSONText Int64))
    , _gedeciType            :: !(Maybe Text)
    , _gedeciComparisonType  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalEventDetailsEventConditionsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gedeciMatchType'
--
-- * 'gedeciExpression'
--
-- * 'gedeciComparisonValue'
--
-- * 'gedeciType'
--
-- * 'gedeciComparisonType'
goalEventDetailsEventConditionsItem
    :: GoalEventDetailsEventConditionsItem
goalEventDetailsEventConditionsItem =
    GoalEventDetailsEventConditionsItem
    { _gedeciMatchType = Nothing
    , _gedeciExpression = Nothing
    , _gedeciComparisonValue = Nothing
    , _gedeciType = Nothing
    , _gedeciComparisonType = Nothing
    }

-- | Type of the match to be performed. Possible values are REGEXP,
-- BEGINS_WITH, or EXACT.
gedeciMatchType :: Lens' GoalEventDetailsEventConditionsItem (Maybe Text)
gedeciMatchType
  = lens _gedeciMatchType
      (\ s a -> s{_gedeciMatchType = a})

-- | Expression used for this match.
gedeciExpression :: Lens' GoalEventDetailsEventConditionsItem (Maybe Text)
gedeciExpression
  = lens _gedeciExpression
      (\ s a -> s{_gedeciExpression = a})

-- | Value used for this comparison.
gedeciComparisonValue :: Lens' GoalEventDetailsEventConditionsItem (Maybe Int64)
gedeciComparisonValue
  = lens _gedeciComparisonValue
      (\ s a -> s{_gedeciComparisonValue = a})
      . mapping _Coerce

-- | Type of this event condition. Possible values are CATEGORY, ACTION,
-- LABEL, or VALUE.
gedeciType :: Lens' GoalEventDetailsEventConditionsItem (Maybe Text)
gedeciType
  = lens _gedeciType (\ s a -> s{_gedeciType = a})

-- | Type of comparison. Possible values are LESS_THAN, GREATER_THAN or
-- EQUAL.
gedeciComparisonType :: Lens' GoalEventDetailsEventConditionsItem (Maybe Text)
gedeciComparisonType
  = lens _gedeciComparisonType
      (\ s a -> s{_gedeciComparisonType = a})

instance FromJSON GoalEventDetailsEventConditionsItem
         where
        parseJSON
          = withObject "GoalEventDetailsEventConditionsItem"
              (\ o ->
                 GoalEventDetailsEventConditionsItem <$>
                   (o .:? "matchType") <*> (o .:? "expression") <*>
                     (o .:? "comparisonValue")
                     <*> (o .:? "type")
                     <*> (o .:? "comparisonType"))

instance ToJSON GoalEventDetailsEventConditionsItem
         where
        toJSON GoalEventDetailsEventConditionsItem{..}
          = object
              (catMaybes
                 [("matchType" .=) <$> _gedeciMatchType,
                  ("expression" .=) <$> _gedeciExpression,
                  ("comparisonValue" .=) <$> _gedeciComparisonValue,
                  ("type" .=) <$> _gedeciType,
                  ("comparisonType" .=) <$> _gedeciComparisonType])

-- | Analytics data request query parameters.
--
-- /See:/ 'mcfDataQuery' smart constructor.
data McfDataQuery = McfDataQuery
    { _mdqMetrics       :: !(Maybe [Text])
    , _mdqSamplingLevel :: !(Maybe Text)
    , _mdqFilters       :: !(Maybe Text)
    , _mdqIds           :: !(Maybe Text)
    , _mdqEndDate       :: !(Maybe Text)
    , _mdqSort          :: !(Maybe [Text])
    , _mdqDimensions    :: !(Maybe Text)
    , _mdqStartIndex    :: !(Maybe (JSONText Int32))
    , _mdqMaxResults    :: !(Maybe (JSONText Int32))
    , _mdqSegment       :: !(Maybe Text)
    , _mdqStartDate     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdqMetrics'
--
-- * 'mdqSamplingLevel'
--
-- * 'mdqFilters'
--
-- * 'mdqIds'
--
-- * 'mdqEndDate'
--
-- * 'mdqSort'
--
-- * 'mdqDimensions'
--
-- * 'mdqStartIndex'
--
-- * 'mdqMaxResults'
--
-- * 'mdqSegment'
--
-- * 'mdqStartDate'
mcfDataQuery
    :: McfDataQuery
mcfDataQuery =
    McfDataQuery
    { _mdqMetrics = Nothing
    , _mdqSamplingLevel = Nothing
    , _mdqFilters = Nothing
    , _mdqIds = Nothing
    , _mdqEndDate = Nothing
    , _mdqSort = Nothing
    , _mdqDimensions = Nothing
    , _mdqStartIndex = Nothing
    , _mdqMaxResults = Nothing
    , _mdqSegment = Nothing
    , _mdqStartDate = Nothing
    }

-- | List of analytics metrics.
mdqMetrics :: Lens' McfDataQuery [Text]
mdqMetrics
  = lens _mdqMetrics (\ s a -> s{_mdqMetrics = a}) .
      _Default
      . _Coerce

-- | Desired sampling level
mdqSamplingLevel :: Lens' McfDataQuery (Maybe Text)
mdqSamplingLevel
  = lens _mdqSamplingLevel
      (\ s a -> s{_mdqSamplingLevel = a})

-- | Comma-separated list of dimension or metric filters.
mdqFilters :: Lens' McfDataQuery (Maybe Text)
mdqFilters
  = lens _mdqFilters (\ s a -> s{_mdqFilters = a})

-- | Unique table ID.
mdqIds :: Lens' McfDataQuery (Maybe Text)
mdqIds = lens _mdqIds (\ s a -> s{_mdqIds = a})

-- | End date.
mdqEndDate :: Lens' McfDataQuery (Maybe Text)
mdqEndDate
  = lens _mdqEndDate (\ s a -> s{_mdqEndDate = a})

-- | List of dimensions or metrics based on which Analytics data is sorted.
mdqSort :: Lens' McfDataQuery [Text]
mdqSort
  = lens _mdqSort (\ s a -> s{_mdqSort = a}) . _Default
      . _Coerce

-- | List of analytics dimensions.
mdqDimensions :: Lens' McfDataQuery (Maybe Text)
mdqDimensions
  = lens _mdqDimensions
      (\ s a -> s{_mdqDimensions = a})

-- | Start index.
mdqStartIndex :: Lens' McfDataQuery (Maybe Int32)
mdqStartIndex
  = lens _mdqStartIndex
      (\ s a -> s{_mdqStartIndex = a})
      . mapping _Coerce

-- | Maximum results per page.
mdqMaxResults :: Lens' McfDataQuery (Maybe Int32)
mdqMaxResults
  = lens _mdqMaxResults
      (\ s a -> s{_mdqMaxResults = a})
      . mapping _Coerce

-- | Analytics advanced segment.
mdqSegment :: Lens' McfDataQuery (Maybe Text)
mdqSegment
  = lens _mdqSegment (\ s a -> s{_mdqSegment = a})

-- | Start date.
mdqStartDate :: Lens' McfDataQuery (Maybe Text)
mdqStartDate
  = lens _mdqStartDate (\ s a -> s{_mdqStartDate = a})

instance FromJSON McfDataQuery where
        parseJSON
          = withObject "McfDataQuery"
              (\ o ->
                 McfDataQuery <$>
                   (o .:? "metrics" .!= mempty) <*>
                     (o .:? "samplingLevel")
                     <*> (o .:? "filters")
                     <*> (o .:? "ids")
                     <*> (o .:? "end-date")
                     <*> (o .:? "sort" .!= mempty)
                     <*> (o .:? "dimensions")
                     <*> (o .:? "start-index")
                     <*> (o .:? "max-results")
                     <*> (o .:? "segment")
                     <*> (o .:? "start-date"))

instance ToJSON McfDataQuery where
        toJSON McfDataQuery{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _mdqMetrics,
                  ("samplingLevel" .=) <$> _mdqSamplingLevel,
                  ("filters" .=) <$> _mdqFilters,
                  ("ids" .=) <$> _mdqIds,
                  ("end-date" .=) <$> _mdqEndDate,
                  ("sort" .=) <$> _mdqSort,
                  ("dimensions" .=) <$> _mdqDimensions,
                  ("start-index" .=) <$> _mdqStartIndex,
                  ("max-results" .=) <$> _mdqMaxResults,
                  ("segment" .=) <$> _mdqSegment,
                  ("start-date" .=) <$> _mdqStartDate])

-- | JSON template for Analytics goal resource.
--
-- /See:/ 'goal' smart constructor.
data Goal = Goal
    { _goaParentLink             :: !(Maybe GoalParentLink)
    , _goaWebPropertyId          :: !(Maybe Text)
    , _goaKind                   :: !Text
    , _goaCreated                :: !(Maybe DateTime')
    , _goaValue                  :: !(Maybe (JSONText Float))
    , _goaProFileId              :: !(Maybe Text)
    , _goaEventDetails           :: !(Maybe GoalEventDetails)
    , _goaActive                 :: !(Maybe Bool)
    , _goaSelfLink               :: !(Maybe Text)
    , _goaVisitTimeOnSiteDetails :: !(Maybe GoalVisitTimeOnSiteDetails)
    , _goaAccountId              :: !(Maybe Text)
    , _goaName                   :: !(Maybe Text)
    , _goaInternalWebPropertyId  :: !(Maybe Text)
    , _goaId                     :: !(Maybe Text)
    , _goaURLDestinationDetails  :: !(Maybe GoalURLDestinationDetails)
    , _goaVisitNumPagesDetails   :: !(Maybe GoalVisitNumPagesDetails)
    , _goaUpdated                :: !(Maybe DateTime')
    , _goaType                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Goal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goaParentLink'
--
-- * 'goaWebPropertyId'
--
-- * 'goaKind'
--
-- * 'goaCreated'
--
-- * 'goaValue'
--
-- * 'goaProFileId'
--
-- * 'goaEventDetails'
--
-- * 'goaActive'
--
-- * 'goaSelfLink'
--
-- * 'goaVisitTimeOnSiteDetails'
--
-- * 'goaAccountId'
--
-- * 'goaName'
--
-- * 'goaInternalWebPropertyId'
--
-- * 'goaId'
--
-- * 'goaURLDestinationDetails'
--
-- * 'goaVisitNumPagesDetails'
--
-- * 'goaUpdated'
--
-- * 'goaType'
goal
    :: Goal
goal =
    Goal
    { _goaParentLink = Nothing
    , _goaWebPropertyId = Nothing
    , _goaKind = "analytics#goal"
    , _goaCreated = Nothing
    , _goaValue = Nothing
    , _goaProFileId = Nothing
    , _goaEventDetails = Nothing
    , _goaActive = Nothing
    , _goaSelfLink = Nothing
    , _goaVisitTimeOnSiteDetails = Nothing
    , _goaAccountId = Nothing
    , _goaName = Nothing
    , _goaInternalWebPropertyId = Nothing
    , _goaId = Nothing
    , _goaURLDestinationDetails = Nothing
    , _goaVisitNumPagesDetails = Nothing
    , _goaUpdated = Nothing
    , _goaType = Nothing
    }

-- | Parent link for a goal. Points to the view (profile) to which this goal
-- belongs.
goaParentLink :: Lens' Goal (Maybe GoalParentLink)
goaParentLink
  = lens _goaParentLink
      (\ s a -> s{_goaParentLink = a})

-- | Web property ID to which this goal belongs. The web property ID is of
-- the form UA-XXXXX-YY.
goaWebPropertyId :: Lens' Goal (Maybe Text)
goaWebPropertyId
  = lens _goaWebPropertyId
      (\ s a -> s{_goaWebPropertyId = a})

-- | Resource type for an Analytics goal.
goaKind :: Lens' Goal Text
goaKind = lens _goaKind (\ s a -> s{_goaKind = a})

-- | Time this goal was created.
goaCreated :: Lens' Goal (Maybe UTCTime)
goaCreated
  = lens _goaCreated (\ s a -> s{_goaCreated = a}) .
      mapping _DateTime

-- | Goal value.
goaValue :: Lens' Goal (Maybe Float)
goaValue
  = lens _goaValue (\ s a -> s{_goaValue = a}) .
      mapping _Coerce

-- | View (Profile) ID to which this goal belongs.
goaProFileId :: Lens' Goal (Maybe Text)
goaProFileId
  = lens _goaProFileId (\ s a -> s{_goaProFileId = a})

-- | Details for the goal of the type EVENT.
goaEventDetails :: Lens' Goal (Maybe GoalEventDetails)
goaEventDetails
  = lens _goaEventDetails
      (\ s a -> s{_goaEventDetails = a})

-- | Determines whether this goal is active.
goaActive :: Lens' Goal (Maybe Bool)
goaActive
  = lens _goaActive (\ s a -> s{_goaActive = a})

-- | Link for this goal.
goaSelfLink :: Lens' Goal (Maybe Text)
goaSelfLink
  = lens _goaSelfLink (\ s a -> s{_goaSelfLink = a})

-- | Details for the goal of the type VISIT_TIME_ON_SITE.
goaVisitTimeOnSiteDetails :: Lens' Goal (Maybe GoalVisitTimeOnSiteDetails)
goaVisitTimeOnSiteDetails
  = lens _goaVisitTimeOnSiteDetails
      (\ s a -> s{_goaVisitTimeOnSiteDetails = a})

-- | Account ID to which this goal belongs.
goaAccountId :: Lens' Goal (Maybe Text)
goaAccountId
  = lens _goaAccountId (\ s a -> s{_goaAccountId = a})

-- | Goal name.
goaName :: Lens' Goal (Maybe Text)
goaName = lens _goaName (\ s a -> s{_goaName = a})

-- | Internal ID for the web property to which this goal belongs.
goaInternalWebPropertyId :: Lens' Goal (Maybe Text)
goaInternalWebPropertyId
  = lens _goaInternalWebPropertyId
      (\ s a -> s{_goaInternalWebPropertyId = a})

-- | Goal ID.
goaId :: Lens' Goal (Maybe Text)
goaId = lens _goaId (\ s a -> s{_goaId = a})

-- | Details for the goal of the type URL_DESTINATION.
goaURLDestinationDetails :: Lens' Goal (Maybe GoalURLDestinationDetails)
goaURLDestinationDetails
  = lens _goaURLDestinationDetails
      (\ s a -> s{_goaURLDestinationDetails = a})

-- | Details for the goal of the type VISIT_NUM_PAGES.
goaVisitNumPagesDetails :: Lens' Goal (Maybe GoalVisitNumPagesDetails)
goaVisitNumPagesDetails
  = lens _goaVisitNumPagesDetails
      (\ s a -> s{_goaVisitNumPagesDetails = a})

-- | Time this goal was last modified.
goaUpdated :: Lens' Goal (Maybe UTCTime)
goaUpdated
  = lens _goaUpdated (\ s a -> s{_goaUpdated = a}) .
      mapping _DateTime

-- | Goal type. Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE,
-- VISIT_NUM_PAGES, AND EVENT.
goaType :: Lens' Goal (Maybe Text)
goaType = lens _goaType (\ s a -> s{_goaType = a})

instance FromJSON Goal where
        parseJSON
          = withObject "Goal"
              (\ o ->
                 Goal <$>
                   (o .:? "parentLink") <*> (o .:? "webPropertyId") <*>
                     (o .:? "kind" .!= "analytics#goal")
                     <*> (o .:? "created")
                     <*> (o .:? "value")
                     <*> (o .:? "profileId")
                     <*> (o .:? "eventDetails")
                     <*> (o .:? "active")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "visitTimeOnSiteDetails")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "id")
                     <*> (o .:? "urlDestinationDetails")
                     <*> (o .:? "visitNumPagesDetails")
                     <*> (o .:? "updated")
                     <*> (o .:? "type"))

instance ToJSON Goal where
        toJSON Goal{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _goaParentLink,
                  ("webPropertyId" .=) <$> _goaWebPropertyId,
                  Just ("kind" .= _goaKind),
                  ("created" .=) <$> _goaCreated,
                  ("value" .=) <$> _goaValue,
                  ("profileId" .=) <$> _goaProFileId,
                  ("eventDetails" .=) <$> _goaEventDetails,
                  ("active" .=) <$> _goaActive,
                  ("selfLink" .=) <$> _goaSelfLink,
                  ("visitTimeOnSiteDetails" .=) <$>
                    _goaVisitTimeOnSiteDetails,
                  ("accountId" .=) <$> _goaAccountId,
                  ("name" .=) <$> _goaName,
                  ("internalWebPropertyId" .=) <$>
                    _goaInternalWebPropertyId,
                  ("id" .=) <$> _goaId,
                  ("urlDestinationDetails" .=) <$>
                    _goaURLDestinationDetails,
                  ("visitNumPagesDetails" .=) <$>
                    _goaVisitNumPagesDetails,
                  ("updated" .=) <$> _goaUpdated,
                  ("type" .=) <$> _goaType])

-- | JSON template for an Analytics account ticket. The account ticket
-- consists of the ticket ID and the basic information for the account,
-- property and profile.
--
-- /See:/ 'accountTicket' smart constructor.
data AccountTicket = AccountTicket
    { _atRedirectURI :: !(Maybe Text)
    , _atKind        :: !Text
    , _atProFile     :: !(Maybe ProFile)
    , _atAccount     :: !(Maybe Account)
    , _atWebProperty :: !(Maybe WebProperty)
    , _atId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountTicket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atRedirectURI'
--
-- * 'atKind'
--
-- * 'atProFile'
--
-- * 'atAccount'
--
-- * 'atWebProperty'
--
-- * 'atId'
accountTicket
    :: AccountTicket
accountTicket =
    AccountTicket
    { _atRedirectURI = Nothing
    , _atKind = "analytics#accountTicket"
    , _atProFile = Nothing
    , _atAccount = Nothing
    , _atWebProperty = Nothing
    , _atId = Nothing
    }

-- | Redirect URI where the user will be sent after accepting Terms of
-- Service. Must be configured in APIs console as a callback URL.
atRedirectURI :: Lens' AccountTicket (Maybe Text)
atRedirectURI
  = lens _atRedirectURI
      (\ s a -> s{_atRedirectURI = a})

-- | Resource type for account ticket.
atKind :: Lens' AccountTicket Text
atKind = lens _atKind (\ s a -> s{_atKind = a})

-- | View (Profile) for the account.
atProFile :: Lens' AccountTicket (Maybe ProFile)
atProFile
  = lens _atProFile (\ s a -> s{_atProFile = a})

-- | Account for this ticket.
atAccount :: Lens' AccountTicket (Maybe Account)
atAccount
  = lens _atAccount (\ s a -> s{_atAccount = a})

-- | Web property for the account.
atWebProperty :: Lens' AccountTicket (Maybe WebProperty)
atWebProperty
  = lens _atWebProperty
      (\ s a -> s{_atWebProperty = a})

-- | Account ticket ID used to access the account ticket.
atId :: Lens' AccountTicket (Maybe Text)
atId = lens _atId (\ s a -> s{_atId = a})

instance FromJSON AccountTicket where
        parseJSON
          = withObject "AccountTicket"
              (\ o ->
                 AccountTicket <$>
                   (o .:? "redirectUri") <*>
                     (o .:? "kind" .!= "analytics#accountTicket")
                     <*> (o .:? "profile")
                     <*> (o .:? "account")
                     <*> (o .:? "webproperty")
                     <*> (o .:? "id"))

instance ToJSON AccountTicket where
        toJSON AccountTicket{..}
          = object
              (catMaybes
                 [("redirectUri" .=) <$> _atRedirectURI,
                  Just ("kind" .= _atKind),
                  ("profile" .=) <$> _atProFile,
                  ("account" .=) <$> _atAccount,
                  ("webproperty" .=) <$> _atWebProperty,
                  ("id" .=) <$> _atId])

-- | JSON template for an Analytics AccountSummary. An AccountSummary is a
-- lightweight tree comprised of properties\/profiles.
--
-- /See:/ 'accountSummary' smart constructor.
data AccountSummary = AccountSummary
    { _assKind          :: !Text
    , _assWebProperties :: !(Maybe [WebPropertySummary])
    , _assName          :: !(Maybe Text)
    , _assId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assKind'
--
-- * 'assWebProperties'
--
-- * 'assName'
--
-- * 'assId'
accountSummary
    :: AccountSummary
accountSummary =
    AccountSummary
    { _assKind = "analytics#accountSummary"
    , _assWebProperties = Nothing
    , _assName = Nothing
    , _assId = Nothing
    }

-- | Resource type for Analytics AccountSummary.
assKind :: Lens' AccountSummary Text
assKind = lens _assKind (\ s a -> s{_assKind = a})

-- | List of web properties under this account.
assWebProperties :: Lens' AccountSummary [WebPropertySummary]
assWebProperties
  = lens _assWebProperties
      (\ s a -> s{_assWebProperties = a})
      . _Default
      . _Coerce

-- | Account name.
assName :: Lens' AccountSummary (Maybe Text)
assName = lens _assName (\ s a -> s{_assName = a})

-- | Account ID.
assId :: Lens' AccountSummary (Maybe Text)
assId = lens _assId (\ s a -> s{_assId = a})

instance FromJSON AccountSummary where
        parseJSON
          = withObject "AccountSummary"
              (\ o ->
                 AccountSummary <$>
                   (o .:? "kind" .!= "analytics#accountSummary") <*>
                     (o .:? "webProperties" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON AccountSummary where
        toJSON AccountSummary{..}
          = object
              (catMaybes
                 [Just ("kind" .= _assKind),
                  ("webProperties" .=) <$> _assWebProperties,
                  ("name" .=) <$> _assName, ("id" .=) <$> _assId])

-- | Real time data request query parameters.
--
-- /See:/ 'realtimeDataQuery' smart constructor.
data RealtimeDataQuery = RealtimeDataQuery
    { _rdqMetrics    :: !(Maybe [Text])
    , _rdqFilters    :: !(Maybe Text)
    , _rdqIds        :: !(Maybe Text)
    , _rdqSort       :: !(Maybe [Text])
    , _rdqDimensions :: !(Maybe Text)
    , _rdqMaxResults :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RealtimeDataQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdqMetrics'
--
-- * 'rdqFilters'
--
-- * 'rdqIds'
--
-- * 'rdqSort'
--
-- * 'rdqDimensions'
--
-- * 'rdqMaxResults'
realtimeDataQuery
    :: RealtimeDataQuery
realtimeDataQuery =
    RealtimeDataQuery
    { _rdqMetrics = Nothing
    , _rdqFilters = Nothing
    , _rdqIds = Nothing
    , _rdqSort = Nothing
    , _rdqDimensions = Nothing
    , _rdqMaxResults = Nothing
    }

-- | List of real time metrics.
rdqMetrics :: Lens' RealtimeDataQuery [Text]
rdqMetrics
  = lens _rdqMetrics (\ s a -> s{_rdqMetrics = a}) .
      _Default
      . _Coerce

-- | Comma-separated list of dimension or metric filters.
rdqFilters :: Lens' RealtimeDataQuery (Maybe Text)
rdqFilters
  = lens _rdqFilters (\ s a -> s{_rdqFilters = a})

-- | Unique table ID.
rdqIds :: Lens' RealtimeDataQuery (Maybe Text)
rdqIds = lens _rdqIds (\ s a -> s{_rdqIds = a})

-- | List of dimensions or metrics based on which real time data is sorted.
rdqSort :: Lens' RealtimeDataQuery [Text]
rdqSort
  = lens _rdqSort (\ s a -> s{_rdqSort = a}) . _Default
      . _Coerce

-- | List of real time dimensions.
rdqDimensions :: Lens' RealtimeDataQuery (Maybe Text)
rdqDimensions
  = lens _rdqDimensions
      (\ s a -> s{_rdqDimensions = a})

-- | Maximum results per page.
rdqMaxResults :: Lens' RealtimeDataQuery (Maybe Int32)
rdqMaxResults
  = lens _rdqMaxResults
      (\ s a -> s{_rdqMaxResults = a})
      . mapping _Coerce

instance FromJSON RealtimeDataQuery where
        parseJSON
          = withObject "RealtimeDataQuery"
              (\ o ->
                 RealtimeDataQuery <$>
                   (o .:? "metrics" .!= mempty) <*> (o .:? "filters")
                     <*> (o .:? "ids")
                     <*> (o .:? "sort" .!= mempty)
                     <*> (o .:? "dimensions")
                     <*> (o .:? "max-results"))

instance ToJSON RealtimeDataQuery where
        toJSON RealtimeDataQuery{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _rdqMetrics,
                  ("filters" .=) <$> _rdqFilters,
                  ("ids" .=) <$> _rdqIds, ("sort" .=) <$> _rdqSort,
                  ("dimensions" .=) <$> _rdqDimensions,
                  ("max-results" .=) <$> _rdqMaxResults])

-- | Lists columns (dimensions and metrics) for a particular report type.
--
-- /See:/ 'columns' smart constructor.
data Columns = Columns
    { _colEtag           :: !(Maybe Text)
    , _colKind           :: !Text
    , _colItems          :: !(Maybe [Column])
    , _colTotalResults   :: !(Maybe (JSONText Int32))
    , _colAttributeNames :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Columns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colEtag'
--
-- * 'colKind'
--
-- * 'colItems'
--
-- * 'colTotalResults'
--
-- * 'colAttributeNames'
columns
    :: Columns
columns =
    Columns
    { _colEtag = Nothing
    , _colKind = "analytics#columns"
    , _colItems = Nothing
    , _colTotalResults = Nothing
    , _colAttributeNames = Nothing
    }

-- | Etag of collection. This etag can be compared with the last response
-- etag to check if response has changed.
colEtag :: Lens' Columns (Maybe Text)
colEtag = lens _colEtag (\ s a -> s{_colEtag = a})

-- | Collection type.
colKind :: Lens' Columns Text
colKind = lens _colKind (\ s a -> s{_colKind = a})

-- | List of columns for a report type.
colItems :: Lens' Columns [Column]
colItems
  = lens _colItems (\ s a -> s{_colItems = a}) .
      _Default
      . _Coerce

-- | Total number of columns returned in the response.
colTotalResults :: Lens' Columns (Maybe Int32)
colTotalResults
  = lens _colTotalResults
      (\ s a -> s{_colTotalResults = a})
      . mapping _Coerce

-- | List of attributes names returned by columns.
colAttributeNames :: Lens' Columns [Text]
colAttributeNames
  = lens _colAttributeNames
      (\ s a -> s{_colAttributeNames = a})
      . _Default
      . _Coerce

instance FromJSON Columns where
        parseJSON
          = withObject "Columns"
              (\ o ->
                 Columns <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "analytics#columns")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "attributeNames" .!= mempty))

instance ToJSON Columns where
        toJSON Columns{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _colEtag, Just ("kind" .= _colKind),
                  ("items" .=) <$> _colItems,
                  ("totalResults" .=) <$> _colTotalResults,
                  ("attributeNames" .=) <$> _colAttributeNames])

-- | Details for the filter of the type LOWER.
--
-- /See:/ 'filterLowercaseDetails' smart constructor.
data FilterLowercaseDetails = FilterLowercaseDetails
    { _fldFieldIndex :: !(Maybe (JSONText Int32))
    , _fldField      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilterLowercaseDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fldFieldIndex'
--
-- * 'fldField'
filterLowercaseDetails
    :: FilterLowercaseDetails
filterLowercaseDetails =
    FilterLowercaseDetails
    { _fldFieldIndex = Nothing
    , _fldField = Nothing
    }

-- | The Index of the custom dimension. Required if field is a
-- CUSTOM_DIMENSION.
fldFieldIndex :: Lens' FilterLowercaseDetails (Maybe Int32)
fldFieldIndex
  = lens _fldFieldIndex
      (\ s a -> s{_fldFieldIndex = a})
      . mapping _Coerce

-- | Field to use in the filter.
fldField :: Lens' FilterLowercaseDetails (Maybe Text)
fldField = lens _fldField (\ s a -> s{_fldField = a})

instance FromJSON FilterLowercaseDetails where
        parseJSON
          = withObject "FilterLowercaseDetails"
              (\ o ->
                 FilterLowercaseDetails <$>
                   (o .:? "fieldIndex") <*> (o .:? "field"))

instance ToJSON FilterLowercaseDetails where
        toJSON FilterLowercaseDetails{..}
          = object
              (catMaybes
                 [("fieldIndex" .=) <$> _fldFieldIndex,
                  ("field" .=) <$> _fldField])

-- | JSON template for an Analytics account filter.
--
-- /See:/ 'filter'' smart constructor.
data Filter = Filter
    { _filParentLink              :: !(Maybe FilterParentLink)
    , _filAdvancedDetails         :: !(Maybe FilterAdvancedDetails)
    , _filUppercaseDetails        :: !(Maybe FilterUppercaseDetails)
    , _filLowercaseDetails        :: !(Maybe FilterLowercaseDetails)
    , _filKind                    :: !Text
    , _filCreated                 :: !(Maybe DateTime')
    , _filIncludeDetails          :: !(Maybe FilterExpression)
    , _filExcludeDetails          :: !(Maybe FilterExpression)
    , _filSelfLink                :: !(Maybe Text)
    , _filAccountId               :: !(Maybe Text)
    , _filName                    :: !(Maybe Text)
    , _filId                      :: !(Maybe Text)
    , _filUpdated                 :: !(Maybe DateTime')
    , _filType                    :: !(Maybe Text)
    , _filSearchAndReplaceDetails :: !(Maybe FilterSearchAndReplaceDetails)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'filParentLink'
--
-- * 'filAdvancedDetails'
--
-- * 'filUppercaseDetails'
--
-- * 'filLowercaseDetails'
--
-- * 'filKind'
--
-- * 'filCreated'
--
-- * 'filIncludeDetails'
--
-- * 'filExcludeDetails'
--
-- * 'filSelfLink'
--
-- * 'filAccountId'
--
-- * 'filName'
--
-- * 'filId'
--
-- * 'filUpdated'
--
-- * 'filType'
--
-- * 'filSearchAndReplaceDetails'
filter'
    :: Filter
filter' =
    Filter
    { _filParentLink = Nothing
    , _filAdvancedDetails = Nothing
    , _filUppercaseDetails = Nothing
    , _filLowercaseDetails = Nothing
    , _filKind = "analytics#filter"
    , _filCreated = Nothing
    , _filIncludeDetails = Nothing
    , _filExcludeDetails = Nothing
    , _filSelfLink = Nothing
    , _filAccountId = Nothing
    , _filName = Nothing
    , _filId = Nothing
    , _filUpdated = Nothing
    , _filType = Nothing
    , _filSearchAndReplaceDetails = Nothing
    }

-- | Parent link for this filter. Points to the account to which this filter
-- belongs.
filParentLink :: Lens' Filter (Maybe FilterParentLink)
filParentLink
  = lens _filParentLink
      (\ s a -> s{_filParentLink = a})

-- | Details for the filter of the type ADVANCED.
filAdvancedDetails :: Lens' Filter (Maybe FilterAdvancedDetails)
filAdvancedDetails
  = lens _filAdvancedDetails
      (\ s a -> s{_filAdvancedDetails = a})

-- | Details for the filter of the type UPPER.
filUppercaseDetails :: Lens' Filter (Maybe FilterUppercaseDetails)
filUppercaseDetails
  = lens _filUppercaseDetails
      (\ s a -> s{_filUppercaseDetails = a})

-- | Details for the filter of the type LOWER.
filLowercaseDetails :: Lens' Filter (Maybe FilterLowercaseDetails)
filLowercaseDetails
  = lens _filLowercaseDetails
      (\ s a -> s{_filLowercaseDetails = a})

-- | Resource type for Analytics filter.
filKind :: Lens' Filter Text
filKind = lens _filKind (\ s a -> s{_filKind = a})

-- | Time this filter was created.
filCreated :: Lens' Filter (Maybe UTCTime)
filCreated
  = lens _filCreated (\ s a -> s{_filCreated = a}) .
      mapping _DateTime

-- | Details for the filter of the type INCLUDE.
filIncludeDetails :: Lens' Filter (Maybe FilterExpression)
filIncludeDetails
  = lens _filIncludeDetails
      (\ s a -> s{_filIncludeDetails = a})

-- | Details for the filter of the type EXCLUDE.
filExcludeDetails :: Lens' Filter (Maybe FilterExpression)
filExcludeDetails
  = lens _filExcludeDetails
      (\ s a -> s{_filExcludeDetails = a})

-- | Link for this filter.
filSelfLink :: Lens' Filter (Maybe Text)
filSelfLink
  = lens _filSelfLink (\ s a -> s{_filSelfLink = a})

-- | Account ID to which this filter belongs.
filAccountId :: Lens' Filter (Maybe Text)
filAccountId
  = lens _filAccountId (\ s a -> s{_filAccountId = a})

-- | Name of this filter.
filName :: Lens' Filter (Maybe Text)
filName = lens _filName (\ s a -> s{_filName = a})

-- | Filter ID.
filId :: Lens' Filter (Maybe Text)
filId = lens _filId (\ s a -> s{_filId = a})

-- | Time this filter was last modified.
filUpdated :: Lens' Filter (Maybe UTCTime)
filUpdated
  = lens _filUpdated (\ s a -> s{_filUpdated = a}) .
      mapping _DateTime

-- | Type of this filter. Possible values are INCLUDE, EXCLUDE, LOWERCASE,
-- UPPERCASE, SEARCH_AND_REPLACE and ADVANCED.
filType :: Lens' Filter (Maybe Text)
filType = lens _filType (\ s a -> s{_filType = a})

-- | Details for the filter of the type SEARCH_AND_REPLACE.
filSearchAndReplaceDetails :: Lens' Filter (Maybe FilterSearchAndReplaceDetails)
filSearchAndReplaceDetails
  = lens _filSearchAndReplaceDetails
      (\ s a -> s{_filSearchAndReplaceDetails = a})

instance FromJSON Filter where
        parseJSON
          = withObject "Filter"
              (\ o ->
                 Filter <$>
                   (o .:? "parentLink") <*> (o .:? "advancedDetails")
                     <*> (o .:? "uppercaseDetails")
                     <*> (o .:? "lowercaseDetails")
                     <*> (o .:? "kind" .!= "analytics#filter")
                     <*> (o .:? "created")
                     <*> (o .:? "includeDetails")
                     <*> (o .:? "excludeDetails")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "type")
                     <*> (o .:? "searchAndReplaceDetails"))

instance ToJSON Filter where
        toJSON Filter{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _filParentLink,
                  ("advancedDetails" .=) <$> _filAdvancedDetails,
                  ("uppercaseDetails" .=) <$> _filUppercaseDetails,
                  ("lowercaseDetails" .=) <$> _filLowercaseDetails,
                  Just ("kind" .= _filKind),
                  ("created" .=) <$> _filCreated,
                  ("includeDetails" .=) <$> _filIncludeDetails,
                  ("excludeDetails" .=) <$> _filExcludeDetails,
                  ("selfLink" .=) <$> _filSelfLink,
                  ("accountId" .=) <$> _filAccountId,
                  ("name" .=) <$> _filName, ("id" .=) <$> _filId,
                  ("updated" .=) <$> _filUpdated,
                  ("type" .=) <$> _filType,
                  ("searchAndReplaceDetails" .=) <$>
                    _filSearchAndReplaceDetails])

-- | Upload collection lists Analytics uploads to which the user has access.
-- Each custom data source can have a set of uploads. Each resource in the
-- upload collection corresponds to a single Analytics data upload.
--
-- /See:/ 'uploads' smart constructor.
data Uploads = Uploads
    { _uplNextLink     :: !(Maybe Text)
    , _uplItemsPerPage :: !(Maybe (JSONText Int32))
    , _uplKind         :: !Text
    , _uplItems        :: !(Maybe [Upload])
    , _uplTotalResults :: !(Maybe (JSONText Int32))
    , _uplStartIndex   :: !(Maybe (JSONText Int32))
    , _uplPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Uploads' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uplNextLink'
--
-- * 'uplItemsPerPage'
--
-- * 'uplKind'
--
-- * 'uplItems'
--
-- * 'uplTotalResults'
--
-- * 'uplStartIndex'
--
-- * 'uplPreviousLink'
uploads
    :: Uploads
uploads =
    Uploads
    { _uplNextLink = Nothing
    , _uplItemsPerPage = Nothing
    , _uplKind = "analytics#uploads"
    , _uplItems = Nothing
    , _uplTotalResults = Nothing
    , _uplStartIndex = Nothing
    , _uplPreviousLink = Nothing
    }

-- | Link to next page for this upload collection.
uplNextLink :: Lens' Uploads (Maybe Text)
uplNextLink
  = lens _uplNextLink (\ s a -> s{_uplNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
uplItemsPerPage :: Lens' Uploads (Maybe Int32)
uplItemsPerPage
  = lens _uplItemsPerPage
      (\ s a -> s{_uplItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
uplKind :: Lens' Uploads Text
uplKind = lens _uplKind (\ s a -> s{_uplKind = a})

-- | A list of uploads.
uplItems :: Lens' Uploads [Upload]
uplItems
  = lens _uplItems (\ s a -> s{_uplItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- resources in the result.
uplTotalResults :: Lens' Uploads (Maybe Int32)
uplTotalResults
  = lens _uplTotalResults
      (\ s a -> s{_uplTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
uplStartIndex :: Lens' Uploads (Maybe Int32)
uplStartIndex
  = lens _uplStartIndex
      (\ s a -> s{_uplStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this upload collection.
uplPreviousLink :: Lens' Uploads (Maybe Text)
uplPreviousLink
  = lens _uplPreviousLink
      (\ s a -> s{_uplPreviousLink = a})

instance FromJSON Uploads where
        parseJSON
          = withObject "Uploads"
              (\ o ->
                 Uploads <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#uploads")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON Uploads where
        toJSON Uploads{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _uplNextLink,
                  ("itemsPerPage" .=) <$> _uplItemsPerPage,
                  Just ("kind" .= _uplKind),
                  ("items" .=) <$> _uplItems,
                  ("totalResults" .=) <$> _uplTotalResults,
                  ("startIndex" .=) <$> _uplStartIndex,
                  ("previousLink" .=) <$> _uplPreviousLink])

-- | A custom dimension collection lists Analytics custom dimensions to which
-- the user has access. Each resource in the collection corresponds to a
-- single Analytics custom dimension.
--
-- /See:/ 'customDimensions' smart constructor.
data CustomDimensions = CustomDimensions
    { _cdNextLink     :: !(Maybe Text)
    , _cdItemsPerPage :: !(Maybe (JSONText Int32))
    , _cdKind         :: !Text
    , _cdUsername     :: !(Maybe Text)
    , _cdItems        :: !(Maybe [CustomDimension])
    , _cdTotalResults :: !(Maybe (JSONText Int32))
    , _cdStartIndex   :: !(Maybe (JSONText Int32))
    , _cdPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDimensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdNextLink'
--
-- * 'cdItemsPerPage'
--
-- * 'cdKind'
--
-- * 'cdUsername'
--
-- * 'cdItems'
--
-- * 'cdTotalResults'
--
-- * 'cdStartIndex'
--
-- * 'cdPreviousLink'
customDimensions
    :: CustomDimensions
customDimensions =
    CustomDimensions
    { _cdNextLink = Nothing
    , _cdItemsPerPage = Nothing
    , _cdKind = "analytics#customDimensions"
    , _cdUsername = Nothing
    , _cdItems = Nothing
    , _cdTotalResults = Nothing
    , _cdStartIndex = Nothing
    , _cdPreviousLink = Nothing
    }

-- | Link to next page for this custom dimension collection.
cdNextLink :: Lens' CustomDimensions (Maybe Text)
cdNextLink
  = lens _cdNextLink (\ s a -> s{_cdNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
cdItemsPerPage :: Lens' CustomDimensions (Maybe Int32)
cdItemsPerPage
  = lens _cdItemsPerPage
      (\ s a -> s{_cdItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
cdKind :: Lens' CustomDimensions Text
cdKind = lens _cdKind (\ s a -> s{_cdKind = a})

-- | Email ID of the authenticated user
cdUsername :: Lens' CustomDimensions (Maybe Text)
cdUsername
  = lens _cdUsername (\ s a -> s{_cdUsername = a})

-- | Collection of custom dimensions.
cdItems :: Lens' CustomDimensions [CustomDimension]
cdItems
  = lens _cdItems (\ s a -> s{_cdItems = a}) . _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
cdTotalResults :: Lens' CustomDimensions (Maybe Int32)
cdTotalResults
  = lens _cdTotalResults
      (\ s a -> s{_cdTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
cdStartIndex :: Lens' CustomDimensions (Maybe Int32)
cdStartIndex
  = lens _cdStartIndex (\ s a -> s{_cdStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this custom dimension collection.
cdPreviousLink :: Lens' CustomDimensions (Maybe Text)
cdPreviousLink
  = lens _cdPreviousLink
      (\ s a -> s{_cdPreviousLink = a})

instance FromJSON CustomDimensions where
        parseJSON
          = withObject "CustomDimensions"
              (\ o ->
                 CustomDimensions <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#customDimensions")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON CustomDimensions where
        toJSON CustomDimensions{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _cdNextLink,
                  ("itemsPerPage" .=) <$> _cdItemsPerPage,
                  Just ("kind" .= _cdKind),
                  ("username" .=) <$> _cdUsername,
                  ("items" .=) <$> _cdItems,
                  ("totalResults" .=) <$> _cdTotalResults,
                  ("startIndex" .=) <$> _cdStartIndex,
                  ("previousLink" .=) <$> _cdPreviousLink])

-- | An segment collection lists Analytics segments that the user has access
-- to. Each resource in the collection corresponds to a single Analytics
-- segment.
--
-- /See:/ 'segments' smart constructor.
data Segments = Segments
    { _sNextLink     :: !(Maybe Text)
    , _sItemsPerPage :: !(Maybe (JSONText Int32))
    , _sKind         :: !Text
    , _sUsername     :: !(Maybe Text)
    , _sItems        :: !(Maybe [Segment])
    , _sTotalResults :: !(Maybe (JSONText Int32))
    , _sStartIndex   :: !(Maybe (JSONText Int32))
    , _sPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Segments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNextLink'
--
-- * 'sItemsPerPage'
--
-- * 'sKind'
--
-- * 'sUsername'
--
-- * 'sItems'
--
-- * 'sTotalResults'
--
-- * 'sStartIndex'
--
-- * 'sPreviousLink'
segments
    :: Segments
segments =
    Segments
    { _sNextLink = Nothing
    , _sItemsPerPage = Nothing
    , _sKind = "analytics#segments"
    , _sUsername = Nothing
    , _sItems = Nothing
    , _sTotalResults = Nothing
    , _sStartIndex = Nothing
    , _sPreviousLink = Nothing
    }

-- | Link to next page for this segment collection.
sNextLink :: Lens' Segments (Maybe Text)
sNextLink
  = lens _sNextLink (\ s a -> s{_sNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to 1000
-- with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
sItemsPerPage :: Lens' Segments (Maybe Int32)
sItemsPerPage
  = lens _sItemsPerPage
      (\ s a -> s{_sItemsPerPage = a})
      . mapping _Coerce

-- | Collection type for segments.
sKind :: Lens' Segments Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | Email ID of the authenticated user
sUsername :: Lens' Segments (Maybe Text)
sUsername
  = lens _sUsername (\ s a -> s{_sUsername = a})

-- | A list of segments.
sItems :: Lens' Segments [Segment]
sItems
  = lens _sItems (\ s a -> s{_sItems = a}) . _Default .
      _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
sTotalResults :: Lens' Segments (Maybe Int32)
sTotalResults
  = lens _sTotalResults
      (\ s a -> s{_sTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
sStartIndex :: Lens' Segments (Maybe Int32)
sStartIndex
  = lens _sStartIndex (\ s a -> s{_sStartIndex = a}) .
      mapping _Coerce

-- | Link to previous page for this segment collection.
sPreviousLink :: Lens' Segments (Maybe Text)
sPreviousLink
  = lens _sPreviousLink
      (\ s a -> s{_sPreviousLink = a})

instance FromJSON Segments where
        parseJSON
          = withObject "Segments"
              (\ o ->
                 Segments <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#segments")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON Segments where
        toJSON Segments{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _sNextLink,
                  ("itemsPerPage" .=) <$> _sItemsPerPage,
                  Just ("kind" .= _sKind),
                  ("username" .=) <$> _sUsername,
                  ("items" .=) <$> _sItems,
                  ("totalResults" .=) <$> _sTotalResults,
                  ("startIndex" .=) <$> _sStartIndex,
                  ("previousLink" .=) <$> _sPreviousLink])

--
-- /See:/ 'gaDataDataTable' smart constructor.
data GaDataDataTable = GaDataDataTable
    { _gddtCols :: !(Maybe [GaDataDataTableColsItem])
    , _gddtRows :: !(Maybe [GaDataDataTableRowsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataDataTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddtCols'
--
-- * 'gddtRows'
gaDataDataTable
    :: GaDataDataTable
gaDataDataTable =
    GaDataDataTable
    { _gddtCols = Nothing
    , _gddtRows = Nothing
    }

gddtCols :: Lens' GaDataDataTable [GaDataDataTableColsItem]
gddtCols
  = lens _gddtCols (\ s a -> s{_gddtCols = a}) .
      _Default
      . _Coerce

gddtRows :: Lens' GaDataDataTable [GaDataDataTableRowsItem]
gddtRows
  = lens _gddtRows (\ s a -> s{_gddtRows = a}) .
      _Default
      . _Coerce

instance FromJSON GaDataDataTable where
        parseJSON
          = withObject "GaDataDataTable"
              (\ o ->
                 GaDataDataTable <$>
                   (o .:? "cols" .!= mempty) <*>
                     (o .:? "rows" .!= mempty))

instance ToJSON GaDataDataTable where
        toJSON GaDataDataTable{..}
          = object
              (catMaybes
                 [("cols" .=) <$> _gddtCols,
                  ("rows" .=) <$> _gddtRows])

-- | Web property being linked.
--
-- /See:/ 'entityAdWordsLinkEntity' smart constructor.
newtype EntityAdWordsLinkEntity = EntityAdWordsLinkEntity
    { _eawleWebPropertyRef :: Maybe WebPropertyRef
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntityAdWordsLinkEntity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eawleWebPropertyRef'
entityAdWordsLinkEntity
    :: EntityAdWordsLinkEntity
entityAdWordsLinkEntity =
    EntityAdWordsLinkEntity
    { _eawleWebPropertyRef = Nothing
    }

eawleWebPropertyRef :: Lens' EntityAdWordsLinkEntity (Maybe WebPropertyRef)
eawleWebPropertyRef
  = lens _eawleWebPropertyRef
      (\ s a -> s{_eawleWebPropertyRef = a})

instance FromJSON EntityAdWordsLinkEntity where
        parseJSON
          = withObject "EntityAdWordsLinkEntity"
              (\ o ->
                 EntityAdWordsLinkEntity <$> (o .:? "webPropertyRef"))

instance ToJSON EntityAdWordsLinkEntity where
        toJSON EntityAdWordsLinkEntity{..}
          = object
              (catMaybes
                 [("webPropertyRef" .=) <$> _eawleWebPropertyRef])

-- | Details for the goal of the type URL_DESTINATION.
--
-- /See:/ 'goalURLDestinationDetails' smart constructor.
data GoalURLDestinationDetails = GoalURLDestinationDetails
    { _guddURL               :: !(Maybe Text)
    , _guddMatchType         :: !(Maybe Text)
    , _guddSteps             :: !(Maybe [GoalURLDestinationDetailsStepsItem])
    , _guddCaseSensitive     :: !(Maybe Bool)
    , _guddFirstStepRequired :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalURLDestinationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guddURL'
--
-- * 'guddMatchType'
--
-- * 'guddSteps'
--
-- * 'guddCaseSensitive'
--
-- * 'guddFirstStepRequired'
goalURLDestinationDetails
    :: GoalURLDestinationDetails
goalURLDestinationDetails =
    GoalURLDestinationDetails
    { _guddURL = Nothing
    , _guddMatchType = Nothing
    , _guddSteps = Nothing
    , _guddCaseSensitive = Nothing
    , _guddFirstStepRequired = Nothing
    }

-- | URL for this goal.
guddURL :: Lens' GoalURLDestinationDetails (Maybe Text)
guddURL = lens _guddURL (\ s a -> s{_guddURL = a})

-- | Match type for the goal URL. Possible values are HEAD, EXACT, or REGEX.
guddMatchType :: Lens' GoalURLDestinationDetails (Maybe Text)
guddMatchType
  = lens _guddMatchType
      (\ s a -> s{_guddMatchType = a})

-- | List of steps configured for this goal funnel.
guddSteps :: Lens' GoalURLDestinationDetails [GoalURLDestinationDetailsStepsItem]
guddSteps
  = lens _guddSteps (\ s a -> s{_guddSteps = a}) .
      _Default
      . _Coerce

-- | Determines if the goal URL must exactly match the capitalization of
-- visited URLs.
guddCaseSensitive :: Lens' GoalURLDestinationDetails (Maybe Bool)
guddCaseSensitive
  = lens _guddCaseSensitive
      (\ s a -> s{_guddCaseSensitive = a})

-- | Determines if the first step in this goal is required.
guddFirstStepRequired :: Lens' GoalURLDestinationDetails (Maybe Bool)
guddFirstStepRequired
  = lens _guddFirstStepRequired
      (\ s a -> s{_guddFirstStepRequired = a})

instance FromJSON GoalURLDestinationDetails where
        parseJSON
          = withObject "GoalURLDestinationDetails"
              (\ o ->
                 GoalURLDestinationDetails <$>
                   (o .:? "url") <*> (o .:? "matchType") <*>
                     (o .:? "steps" .!= mempty)
                     <*> (o .:? "caseSensitive")
                     <*> (o .:? "firstStepRequired"))

instance ToJSON GoalURLDestinationDetails where
        toJSON GoalURLDestinationDetails{..}
          = object
              (catMaybes
                 [("url" .=) <$> _guddURL,
                  ("matchType" .=) <$> _guddMatchType,
                  ("steps" .=) <$> _guddSteps,
                  ("caseSensitive" .=) <$> _guddCaseSensitive,
                  ("firstStepRequired" .=) <$> _guddFirstStepRequired])

-- | A profile filter link collection lists profile filter links between
-- profiles and filters. Each resource in the collection corresponds to a
-- profile filter link.
--
-- /See:/ 'proFileFilterLinks' smart constructor.
data ProFileFilterLinks = ProFileFilterLinks
    { _pfflNextLink     :: !(Maybe Text)
    , _pfflItemsPerPage :: !(Maybe (JSONText Int32))
    , _pfflKind         :: !Text
    , _pfflUsername     :: !(Maybe Text)
    , _pfflItems        :: !(Maybe [ProFileFilterLink])
    , _pfflTotalResults :: !(Maybe (JSONText Int32))
    , _pfflStartIndex   :: !(Maybe (JSONText Int32))
    , _pfflPreviousLink :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFileFilterLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfflNextLink'
--
-- * 'pfflItemsPerPage'
--
-- * 'pfflKind'
--
-- * 'pfflUsername'
--
-- * 'pfflItems'
--
-- * 'pfflTotalResults'
--
-- * 'pfflStartIndex'
--
-- * 'pfflPreviousLink'
proFileFilterLinks
    :: ProFileFilterLinks
proFileFilterLinks =
    ProFileFilterLinks
    { _pfflNextLink = Nothing
    , _pfflItemsPerPage = Nothing
    , _pfflKind = "analytics#profileFilterLinks"
    , _pfflUsername = Nothing
    , _pfflItems = Nothing
    , _pfflTotalResults = Nothing
    , _pfflStartIndex = Nothing
    , _pfflPreviousLink = Nothing
    }

-- | Link to next page for this profile filter link collection.
pfflNextLink :: Lens' ProFileFilterLinks (Maybe Text)
pfflNextLink
  = lens _pfflNextLink (\ s a -> s{_pfflNextLink = a})

-- | The maximum number of resources the response can contain, regardless of
-- the actual number of resources returned. Its value ranges from 1 to
-- 1,000 with a value of 1000 by default, or otherwise specified by the
-- max-results query parameter.
pfflItemsPerPage :: Lens' ProFileFilterLinks (Maybe Int32)
pfflItemsPerPage
  = lens _pfflItemsPerPage
      (\ s a -> s{_pfflItemsPerPage = a})
      . mapping _Coerce

-- | Collection type.
pfflKind :: Lens' ProFileFilterLinks Text
pfflKind = lens _pfflKind (\ s a -> s{_pfflKind = a})

-- | Email ID of the authenticated user
pfflUsername :: Lens' ProFileFilterLinks (Maybe Text)
pfflUsername
  = lens _pfflUsername (\ s a -> s{_pfflUsername = a})

-- | A list of profile filter links.
pfflItems :: Lens' ProFileFilterLinks [ProFileFilterLink]
pfflItems
  = lens _pfflItems (\ s a -> s{_pfflItems = a}) .
      _Default
      . _Coerce

-- | The total number of results for the query, regardless of the number of
-- results in the response.
pfflTotalResults :: Lens' ProFileFilterLinks (Maybe Int32)
pfflTotalResults
  = lens _pfflTotalResults
      (\ s a -> s{_pfflTotalResults = a})
      . mapping _Coerce

-- | The starting index of the resources, which is 1 by default or otherwise
-- specified by the start-index query parameter.
pfflStartIndex :: Lens' ProFileFilterLinks (Maybe Int32)
pfflStartIndex
  = lens _pfflStartIndex
      (\ s a -> s{_pfflStartIndex = a})
      . mapping _Coerce

-- | Link to previous page for this profile filter link collection.
pfflPreviousLink :: Lens' ProFileFilterLinks (Maybe Text)
pfflPreviousLink
  = lens _pfflPreviousLink
      (\ s a -> s{_pfflPreviousLink = a})

instance FromJSON ProFileFilterLinks where
        parseJSON
          = withObject "ProFileFilterLinks"
              (\ o ->
                 ProFileFilterLinks <$>
                   (o .:? "nextLink") <*> (o .:? "itemsPerPage") <*>
                     (o .:? "kind" .!= "analytics#profileFilterLinks")
                     <*> (o .:? "username")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "totalResults")
                     <*> (o .:? "startIndex")
                     <*> (o .:? "previousLink"))

instance ToJSON ProFileFilterLinks where
        toJSON ProFileFilterLinks{..}
          = object
              (catMaybes
                 [("nextLink" .=) <$> _pfflNextLink,
                  ("itemsPerPage" .=) <$> _pfflItemsPerPage,
                  Just ("kind" .= _pfflKind),
                  ("username" .=) <$> _pfflUsername,
                  ("items" .=) <$> _pfflItems,
                  ("totalResults" .=) <$> _pfflTotalResults,
                  ("startIndex" .=) <$> _pfflStartIndex,
                  ("previousLink" .=) <$> _pfflPreviousLink])

-- | Parent link for this web property. Points to the account to which this
-- web property belongs.
--
-- /See:/ 'webPropertyParentLink' smart constructor.
data WebPropertyParentLink = WebPropertyParentLink
    { _wpplHref :: !(Maybe Text)
    , _wpplType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebPropertyParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wpplHref'
--
-- * 'wpplType'
webPropertyParentLink
    :: WebPropertyParentLink
webPropertyParentLink =
    WebPropertyParentLink
    { _wpplHref = Nothing
    , _wpplType = "analytics#account"
    }

-- | Link to the account for this web property.
wpplHref :: Lens' WebPropertyParentLink (Maybe Text)
wpplHref = lens _wpplHref (\ s a -> s{_wpplHref = a})

-- | Type of the parent link. Its value is \"analytics#account\".
wpplType :: Lens' WebPropertyParentLink Text
wpplType = lens _wpplType (\ s a -> s{_wpplType = a})

instance FromJSON WebPropertyParentLink where
        parseJSON
          = withObject "WebPropertyParentLink"
              (\ o ->
                 WebPropertyParentLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#account"))

instance ToJSON WebPropertyParentLink where
        toJSON WebPropertyParentLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _wpplHref,
                  Just ("type" .= _wpplType)])

-- | Information for the view (profile), for which the Analytics data was
-- requested.
--
-- /See:/ 'gaDataProFileInfo' smart constructor.
data GaDataProFileInfo = GaDataProFileInfo
    { _gdpfiWebPropertyId         :: !(Maybe Text)
    , _gdpfiProFileId             :: !(Maybe Text)
    , _gdpfiProFileName           :: !(Maybe Text)
    , _gdpfiAccountId             :: !(Maybe Text)
    , _gdpfiInternalWebPropertyId :: !(Maybe Text)
    , _gdpfiTableId               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataProFileInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpfiWebPropertyId'
--
-- * 'gdpfiProFileId'
--
-- * 'gdpfiProFileName'
--
-- * 'gdpfiAccountId'
--
-- * 'gdpfiInternalWebPropertyId'
--
-- * 'gdpfiTableId'
gaDataProFileInfo
    :: GaDataProFileInfo
gaDataProFileInfo =
    GaDataProFileInfo
    { _gdpfiWebPropertyId = Nothing
    , _gdpfiProFileId = Nothing
    , _gdpfiProFileName = Nothing
    , _gdpfiAccountId = Nothing
    , _gdpfiInternalWebPropertyId = Nothing
    , _gdpfiTableId = Nothing
    }

-- | Web Property ID to which this view (profile) belongs.
gdpfiWebPropertyId :: Lens' GaDataProFileInfo (Maybe Text)
gdpfiWebPropertyId
  = lens _gdpfiWebPropertyId
      (\ s a -> s{_gdpfiWebPropertyId = a})

-- | View (Profile) ID.
gdpfiProFileId :: Lens' GaDataProFileInfo (Maybe Text)
gdpfiProFileId
  = lens _gdpfiProFileId
      (\ s a -> s{_gdpfiProFileId = a})

-- | View (Profile) name.
gdpfiProFileName :: Lens' GaDataProFileInfo (Maybe Text)
gdpfiProFileName
  = lens _gdpfiProFileName
      (\ s a -> s{_gdpfiProFileName = a})

-- | Account ID to which this view (profile) belongs.
gdpfiAccountId :: Lens' GaDataProFileInfo (Maybe Text)
gdpfiAccountId
  = lens _gdpfiAccountId
      (\ s a -> s{_gdpfiAccountId = a})

-- | Internal ID for the web property to which this view (profile) belongs.
gdpfiInternalWebPropertyId :: Lens' GaDataProFileInfo (Maybe Text)
gdpfiInternalWebPropertyId
  = lens _gdpfiInternalWebPropertyId
      (\ s a -> s{_gdpfiInternalWebPropertyId = a})

-- | Table ID for view (profile).
gdpfiTableId :: Lens' GaDataProFileInfo (Maybe Text)
gdpfiTableId
  = lens _gdpfiTableId (\ s a -> s{_gdpfiTableId = a})

instance FromJSON GaDataProFileInfo where
        parseJSON
          = withObject "GaDataProFileInfo"
              (\ o ->
                 GaDataProFileInfo <$>
                   (o .:? "webPropertyId") <*> (o .:? "profileId") <*>
                     (o .:? "profileName")
                     <*> (o .:? "accountId")
                     <*> (o .:? "internalWebPropertyId")
                     <*> (o .:? "tableId"))

instance ToJSON GaDataProFileInfo where
        toJSON GaDataProFileInfo{..}
          = object
              (catMaybes
                 [("webPropertyId" .=) <$> _gdpfiWebPropertyId,
                  ("profileId" .=) <$> _gdpfiProFileId,
                  ("profileName" .=) <$> _gdpfiProFileName,
                  ("accountId" .=) <$> _gdpfiAccountId,
                  ("internalWebPropertyId" .=) <$>
                    _gdpfiInternalWebPropertyId,
                  ("tableId" .=) <$> _gdpfiTableId])

-- | Metadata returned for an upload operation.
--
-- /See:/ 'upload' smart constructor.
data Upload = Upload
    { _uuStatus             :: !(Maybe Text)
    , _uuKind               :: !Text
    , _uuCustomDataSourceId :: !(Maybe Text)
    , _uuAccountId          :: !(Maybe (JSONText Int64))
    , _uuId                 :: !(Maybe Text)
    , _uuErrors             :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Upload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuStatus'
--
-- * 'uuKind'
--
-- * 'uuCustomDataSourceId'
--
-- * 'uuAccountId'
--
-- * 'uuId'
--
-- * 'uuErrors'
upload
    :: Upload
upload =
    Upload
    { _uuStatus = Nothing
    , _uuKind = "analytics#upload"
    , _uuCustomDataSourceId = Nothing
    , _uuAccountId = Nothing
    , _uuId = Nothing
    , _uuErrors = Nothing
    }

-- | Upload status. Possible values: PENDING, COMPLETED, FAILED, DELETING,
-- DELETED.
uuStatus :: Lens' Upload (Maybe Text)
uuStatus = lens _uuStatus (\ s a -> s{_uuStatus = a})

-- | Resource type for Analytics upload.
uuKind :: Lens' Upload Text
uuKind = lens _uuKind (\ s a -> s{_uuKind = a})

-- | Custom data source Id to which this data import belongs.
uuCustomDataSourceId :: Lens' Upload (Maybe Text)
uuCustomDataSourceId
  = lens _uuCustomDataSourceId
      (\ s a -> s{_uuCustomDataSourceId = a})

-- | Account Id to which this upload belongs.
uuAccountId :: Lens' Upload (Maybe Int64)
uuAccountId
  = lens _uuAccountId (\ s a -> s{_uuAccountId = a}) .
      mapping _Coerce

-- | A unique ID for this upload.
uuId :: Lens' Upload (Maybe Text)
uuId = lens _uuId (\ s a -> s{_uuId = a})

-- | Data import errors collection.
uuErrors :: Lens' Upload [Text]
uuErrors
  = lens _uuErrors (\ s a -> s{_uuErrors = a}) .
      _Default
      . _Coerce

instance FromJSON Upload where
        parseJSON
          = withObject "Upload"
              (\ o ->
                 Upload <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!= "analytics#upload")
                     <*> (o .:? "customDataSourceId")
                     <*> (o .:? "accountId")
                     <*> (o .:? "id")
                     <*> (o .:? "errors" .!= mempty))

instance ToJSON Upload where
        toJSON Upload{..}
          = object
              (catMaybes
                 [("status" .=) <$> _uuStatus,
                  Just ("kind" .= _uuKind),
                  ("customDataSourceId" .=) <$> _uuCustomDataSourceId,
                  ("accountId" .=) <$> _uuAccountId,
                  ("id" .=) <$> _uuId, ("errors" .=) <$> _uuErrors])

-- | JSON template for Analytics Custom Dimension.
--
-- /See:/ 'customDimension' smart constructor.
data CustomDimension = CustomDimension
    { _cddParentLink    :: !(Maybe CustomDimensionParentLink)
    , _cddWebPropertyId :: !(Maybe Text)
    , _cddKind          :: !Text
    , _cddCreated       :: !(Maybe DateTime')
    , _cddActive        :: !(Maybe Bool)
    , _cddSelfLink      :: !(Maybe Text)
    , _cddAccountId     :: !(Maybe Text)
    , _cddName          :: !(Maybe Text)
    , _cddScope         :: !(Maybe Text)
    , _cddId            :: !(Maybe Text)
    , _cddUpdated       :: !(Maybe DateTime')
    , _cddIndex         :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddParentLink'
--
-- * 'cddWebPropertyId'
--
-- * 'cddKind'
--
-- * 'cddCreated'
--
-- * 'cddActive'
--
-- * 'cddSelfLink'
--
-- * 'cddAccountId'
--
-- * 'cddName'
--
-- * 'cddScope'
--
-- * 'cddId'
--
-- * 'cddUpdated'
--
-- * 'cddIndex'
customDimension
    :: CustomDimension
customDimension =
    CustomDimension
    { _cddParentLink = Nothing
    , _cddWebPropertyId = Nothing
    , _cddKind = "analytics#customDimension"
    , _cddCreated = Nothing
    , _cddActive = Nothing
    , _cddSelfLink = Nothing
    , _cddAccountId = Nothing
    , _cddName = Nothing
    , _cddScope = Nothing
    , _cddId = Nothing
    , _cddUpdated = Nothing
    , _cddIndex = Nothing
    }

-- | Parent link for the custom dimension. Points to the property to which
-- the custom dimension belongs.
cddParentLink :: Lens' CustomDimension (Maybe CustomDimensionParentLink)
cddParentLink
  = lens _cddParentLink
      (\ s a -> s{_cddParentLink = a})

-- | Property ID.
cddWebPropertyId :: Lens' CustomDimension (Maybe Text)
cddWebPropertyId
  = lens _cddWebPropertyId
      (\ s a -> s{_cddWebPropertyId = a})

-- | Kind value for a custom dimension. Set to \"analytics#customDimension\".
-- It is a read-only field.
cddKind :: Lens' CustomDimension Text
cddKind = lens _cddKind (\ s a -> s{_cddKind = a})

-- | Time the custom dimension was created.
cddCreated :: Lens' CustomDimension (Maybe UTCTime)
cddCreated
  = lens _cddCreated (\ s a -> s{_cddCreated = a}) .
      mapping _DateTime

-- | Boolean indicating whether the custom dimension is active.
cddActive :: Lens' CustomDimension (Maybe Bool)
cddActive
  = lens _cddActive (\ s a -> s{_cddActive = a})

-- | Link for the custom dimension
cddSelfLink :: Lens' CustomDimension (Maybe Text)
cddSelfLink
  = lens _cddSelfLink (\ s a -> s{_cddSelfLink = a})

-- | Account ID.
cddAccountId :: Lens' CustomDimension (Maybe Text)
cddAccountId
  = lens _cddAccountId (\ s a -> s{_cddAccountId = a})

-- | Name of the custom dimension.
cddName :: Lens' CustomDimension (Maybe Text)
cddName = lens _cddName (\ s a -> s{_cddName = a})

-- | Scope of the custom dimension: HIT, SESSION, USER or PRODUCT.
cddScope :: Lens' CustomDimension (Maybe Text)
cddScope = lens _cddScope (\ s a -> s{_cddScope = a})

-- | Custom dimension ID.
cddId :: Lens' CustomDimension (Maybe Text)
cddId = lens _cddId (\ s a -> s{_cddId = a})

-- | Time the custom dimension was last modified.
cddUpdated :: Lens' CustomDimension (Maybe UTCTime)
cddUpdated
  = lens _cddUpdated (\ s a -> s{_cddUpdated = a}) .
      mapping _DateTime

-- | Index of the custom dimension.
cddIndex :: Lens' CustomDimension (Maybe Int32)
cddIndex
  = lens _cddIndex (\ s a -> s{_cddIndex = a}) .
      mapping _Coerce

instance FromJSON CustomDimension where
        parseJSON
          = withObject "CustomDimension"
              (\ o ->
                 CustomDimension <$>
                   (o .:? "parentLink") <*> (o .:? "webPropertyId") <*>
                     (o .:? "kind" .!= "analytics#customDimension")
                     <*> (o .:? "created")
                     <*> (o .:? "active")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "scope")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "index"))

instance ToJSON CustomDimension where
        toJSON CustomDimension{..}
          = object
              (catMaybes
                 [("parentLink" .=) <$> _cddParentLink,
                  ("webPropertyId" .=) <$> _cddWebPropertyId,
                  Just ("kind" .= _cddKind),
                  ("created" .=) <$> _cddCreated,
                  ("active" .=) <$> _cddActive,
                  ("selfLink" .=) <$> _cddSelfLink,
                  ("accountId" .=) <$> _cddAccountId,
                  ("name" .=) <$> _cddName, ("scope" .=) <$> _cddScope,
                  ("id" .=) <$> _cddId, ("updated" .=) <$> _cddUpdated,
                  ("index" .=) <$> _cddIndex])

-- | JSON template for an Analytics segment.
--
-- /See:/ 'segment' smart constructor.
data Segment = Segment
    { _segDefinition :: !(Maybe Text)
    , _segKind       :: !Text
    , _segCreated    :: !(Maybe DateTime')
    , _segSelfLink   :: !(Maybe Text)
    , _segName       :: !(Maybe Text)
    , _segId         :: !(Maybe Text)
    , _segUpdated    :: !(Maybe DateTime')
    , _segType       :: !(Maybe Text)
    , _segSegmentId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Segment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'segDefinition'
--
-- * 'segKind'
--
-- * 'segCreated'
--
-- * 'segSelfLink'
--
-- * 'segName'
--
-- * 'segId'
--
-- * 'segUpdated'
--
-- * 'segType'
--
-- * 'segSegmentId'
segment
    :: Segment
segment =
    Segment
    { _segDefinition = Nothing
    , _segKind = "analytics#segment"
    , _segCreated = Nothing
    , _segSelfLink = Nothing
    , _segName = Nothing
    , _segId = Nothing
    , _segUpdated = Nothing
    , _segType = Nothing
    , _segSegmentId = Nothing
    }

-- | Segment definition.
segDefinition :: Lens' Segment (Maybe Text)
segDefinition
  = lens _segDefinition
      (\ s a -> s{_segDefinition = a})

-- | Resource type for Analytics segment.
segKind :: Lens' Segment Text
segKind = lens _segKind (\ s a -> s{_segKind = a})

-- | Time the segment was created.
segCreated :: Lens' Segment (Maybe UTCTime)
segCreated
  = lens _segCreated (\ s a -> s{_segCreated = a}) .
      mapping _DateTime

-- | Link for this segment.
segSelfLink :: Lens' Segment (Maybe Text)
segSelfLink
  = lens _segSelfLink (\ s a -> s{_segSelfLink = a})

-- | Segment name.
segName :: Lens' Segment (Maybe Text)
segName = lens _segName (\ s a -> s{_segName = a})

-- | Segment ID.
segId :: Lens' Segment (Maybe Text)
segId = lens _segId (\ s a -> s{_segId = a})

-- | Time the segment was last modified.
segUpdated :: Lens' Segment (Maybe UTCTime)
segUpdated
  = lens _segUpdated (\ s a -> s{_segUpdated = a}) .
      mapping _DateTime

-- | Type for a segment. Possible values are \"BUILT_IN\" or \"CUSTOM\".
segType :: Lens' Segment (Maybe Text)
segType = lens _segType (\ s a -> s{_segType = a})

-- | Segment ID. Can be used with the \'segment\' parameter in Core Reporting
-- API.
segSegmentId :: Lens' Segment (Maybe Text)
segSegmentId
  = lens _segSegmentId (\ s a -> s{_segSegmentId = a})

instance FromJSON Segment where
        parseJSON
          = withObject "Segment"
              (\ o ->
                 Segment <$>
                   (o .:? "definition") <*>
                     (o .:? "kind" .!= "analytics#segment")
                     <*> (o .:? "created")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "updated")
                     <*> (o .:? "type")
                     <*> (o .:? "segmentId"))

instance ToJSON Segment where
        toJSON Segment{..}
          = object
              (catMaybes
                 [("definition" .=) <$> _segDefinition,
                  Just ("kind" .= _segKind),
                  ("created" .=) <$> _segCreated,
                  ("selfLink" .=) <$> _segSelfLink,
                  ("name" .=) <$> _segName, ("id" .=) <$> _segId,
                  ("updated" .=) <$> _segUpdated,
                  ("type" .=) <$> _segType,
                  ("segmentId" .=) <$> _segSegmentId])

-- | Child link for an account entry. Points to the list of web properties
-- for this account.
--
-- /See:/ 'accountChildLink' smart constructor.
data AccountChildLink = AccountChildLink
    { _aclHref :: !(Maybe Text)
    , _aclType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aclHref'
--
-- * 'aclType'
accountChildLink
    :: AccountChildLink
accountChildLink =
    AccountChildLink
    { _aclHref = Nothing
    , _aclType = "analytics#webproperties"
    }

-- | Link to the list of web properties for this account.
aclHref :: Lens' AccountChildLink (Maybe Text)
aclHref = lens _aclHref (\ s a -> s{_aclHref = a})

-- | Type of the child link. Its value is \"analytics#webproperties\".
aclType :: Lens' AccountChildLink Text
aclType = lens _aclType (\ s a -> s{_aclType = a})

instance FromJSON AccountChildLink where
        parseJSON
          = withObject "AccountChildLink"
              (\ o ->
                 AccountChildLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#webproperties"))

instance ToJSON AccountChildLink where
        toJSON AccountChildLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _aclHref,
                  Just ("type" .= _aclType)])

-- | JSON template for an Analytics profile filter link.
--
-- /See:/ 'proFileFilterLink' smart constructor.
data ProFileFilterLink = ProFileFilterLink
    { _proProFileRef :: !(Maybe ProFileRef)
    , _proKind       :: !Text
    , _proFilterRef  :: !(Maybe FilterRef)
    , _proSelfLink   :: !(Maybe Text)
    , _proId         :: !(Maybe Text)
    , _proRank       :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFileFilterLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proProFileRef'
--
-- * 'proKind'
--
-- * 'proFilterRef'
--
-- * 'proSelfLink'
--
-- * 'proId'
--
-- * 'proRank'
proFileFilterLink
    :: ProFileFilterLink
proFileFilterLink =
    ProFileFilterLink
    { _proProFileRef = Nothing
    , _proKind = "analytics#profileFilterLink"
    , _proFilterRef = Nothing
    , _proSelfLink = Nothing
    , _proId = Nothing
    , _proRank = Nothing
    }

-- | View (Profile) for this link.
proProFileRef :: Lens' ProFileFilterLink (Maybe ProFileRef)
proProFileRef
  = lens _proProFileRef
      (\ s a -> s{_proProFileRef = a})

-- | Resource type for Analytics filter.
proKind :: Lens' ProFileFilterLink Text
proKind = lens _proKind (\ s a -> s{_proKind = a})

-- | Filter for this link.
proFilterRef :: Lens' ProFileFilterLink (Maybe FilterRef)
proFilterRef
  = lens _proFilterRef (\ s a -> s{_proFilterRef = a})

-- | Link for this profile filter link.
proSelfLink :: Lens' ProFileFilterLink (Maybe Text)
proSelfLink
  = lens _proSelfLink (\ s a -> s{_proSelfLink = a})

-- | Profile filter link ID.
proId :: Lens' ProFileFilterLink (Maybe Text)
proId = lens _proId (\ s a -> s{_proId = a})

-- | The rank of this profile filter link relative to the other filters
-- linked to the same profile. For readonly (i.e., list and get)
-- operations, the rank always starts at 1. For write (i.e., create,
-- update, or delete) operations, you may specify a value between 0 and 255
-- inclusively, [0, 255]. In order to insert a link at the end of the list,
-- either don\'t specify a rank or set a rank to a number greater than the
-- largest rank in the list. In order to insert a link to the beginning of
-- the list specify a rank that is less than or equal to 1. The new link
-- will move all existing filters with the same or lower rank down the
-- list. After the link is inserted\/updated\/deleted all profile filter
-- links will be renumbered starting at 1.
proRank :: Lens' ProFileFilterLink (Maybe Int32)
proRank
  = lens _proRank (\ s a -> s{_proRank = a}) .
      mapping _Coerce

instance FromJSON ProFileFilterLink where
        parseJSON
          = withObject "ProFileFilterLink"
              (\ o ->
                 ProFileFilterLink <$>
                   (o .:? "profileRef") <*>
                     (o .:? "kind" .!= "analytics#profileFilterLink")
                     <*> (o .:? "filterRef")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "rank"))

instance ToJSON ProFileFilterLink where
        toJSON ProFileFilterLink{..}
          = object
              (catMaybes
                 [("profileRef" .=) <$> _proProFileRef,
                  Just ("kind" .= _proKind),
                  ("filterRef" .=) <$> _proFilterRef,
                  ("selfLink" .=) <$> _proSelfLink,
                  ("id" .=) <$> _proId, ("rank" .=) <$> _proRank])

-- | Parent link for the custom metric. Points to the property to which the
-- custom metric belongs.
--
-- /See:/ 'customMetricParentLink' smart constructor.
data CustomMetricParentLink = CustomMetricParentLink
    { _cmplHref :: !(Maybe Text)
    , _cmplType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomMetricParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmplHref'
--
-- * 'cmplType'
customMetricParentLink
    :: CustomMetricParentLink
customMetricParentLink =
    CustomMetricParentLink
    { _cmplHref = Nothing
    , _cmplType = "analytics#webproperty"
    }

-- | Link to the property to which the custom metric belongs.
cmplHref :: Lens' CustomMetricParentLink (Maybe Text)
cmplHref = lens _cmplHref (\ s a -> s{_cmplHref = a})

-- | Type of the parent link. Set to \"analytics#webproperty\".
cmplType :: Lens' CustomMetricParentLink Text
cmplType = lens _cmplType (\ s a -> s{_cmplType = a})

instance FromJSON CustomMetricParentLink where
        parseJSON
          = withObject "CustomMetricParentLink"
              (\ o ->
                 CustomMetricParentLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#webproperty"))

instance ToJSON CustomMetricParentLink where
        toJSON CustomMetricParentLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _cmplHref,
                  Just ("type" .= _cmplType)])

-- | JSON template for a metadata column.
--
-- /See:/ 'column' smart constructor.
data Column = Column
    { _ccKind       :: !Text
    , _ccAttributes :: !(Maybe ColumnAttributes)
    , _ccId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Column' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccKind'
--
-- * 'ccAttributes'
--
-- * 'ccId'
column
    :: Column
column =
    Column
    { _ccKind = "analytics#column"
    , _ccAttributes = Nothing
    , _ccId = Nothing
    }

-- | Resource type for Analytics column.
ccKind :: Lens' Column Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | Map of attribute name and value for this column.
ccAttributes :: Lens' Column (Maybe ColumnAttributes)
ccAttributes
  = lens _ccAttributes (\ s a -> s{_ccAttributes = a})

-- | Column id.
ccId :: Lens' Column (Maybe Text)
ccId = lens _ccId (\ s a -> s{_ccId = a})

instance FromJSON Column where
        parseJSON
          = withObject "Column"
              (\ o ->
                 Column <$>
                   (o .:? "kind" .!= "analytics#column") <*>
                     (o .:? "attributes")
                     <*> (o .:? "id"))

instance ToJSON Column where
        toJSON Column{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ccKind),
                  ("attributes" .=) <$> _ccAttributes,
                  ("id" .=) <$> _ccId])

--
-- /See:/ 'gaDataDataTableColsItem' smart constructor.
data GaDataDataTableColsItem = GaDataDataTableColsItem
    { _gddtciId    :: !(Maybe Text)
    , _gddtciType  :: !(Maybe Text)
    , _gddtciLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataDataTableColsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddtciId'
--
-- * 'gddtciType'
--
-- * 'gddtciLabel'
gaDataDataTableColsItem
    :: GaDataDataTableColsItem
gaDataDataTableColsItem =
    GaDataDataTableColsItem
    { _gddtciId = Nothing
    , _gddtciType = Nothing
    , _gddtciLabel = Nothing
    }

gddtciId :: Lens' GaDataDataTableColsItem (Maybe Text)
gddtciId = lens _gddtciId (\ s a -> s{_gddtciId = a})

gddtciType :: Lens' GaDataDataTableColsItem (Maybe Text)
gddtciType
  = lens _gddtciType (\ s a -> s{_gddtciType = a})

gddtciLabel :: Lens' GaDataDataTableColsItem (Maybe Text)
gddtciLabel
  = lens _gddtciLabel (\ s a -> s{_gddtciLabel = a})

instance FromJSON GaDataDataTableColsItem where
        parseJSON
          = withObject "GaDataDataTableColsItem"
              (\ o ->
                 GaDataDataTableColsItem <$>
                   (o .:? "id") <*> (o .:? "type") <*> (o .:? "label"))

instance ToJSON GaDataDataTableColsItem where
        toJSON GaDataDataTableColsItem{..}
          = object
              (catMaybes
                 [("id" .=) <$> _gddtciId,
                  ("type" .=) <$> _gddtciType,
                  ("label" .=) <$> _gddtciLabel])

--
-- /See:/ 'experimentVariationsItem' smart constructor.
data ExperimentVariationsItem = ExperimentVariationsItem
    { _eviStatus :: !(Maybe Text)
    , _eviWeight :: !(Maybe (JSONText Double))
    , _eviURL    :: !(Maybe Text)
    , _eviWon    :: !(Maybe Bool)
    , _eviName   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperimentVariationsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eviStatus'
--
-- * 'eviWeight'
--
-- * 'eviURL'
--
-- * 'eviWon'
--
-- * 'eviName'
experimentVariationsItem
    :: ExperimentVariationsItem
experimentVariationsItem =
    ExperimentVariationsItem
    { _eviStatus = Nothing
    , _eviWeight = Nothing
    , _eviURL = Nothing
    , _eviWon = Nothing
    , _eviName = Nothing
    }

-- | Status of the variation. Possible values: \"ACTIVE\", \"INACTIVE\".
-- INACTIVE variations are not served. This field may not be changed for an
-- experiment whose status is ENDED.
eviStatus :: Lens' ExperimentVariationsItem (Maybe Text)
eviStatus
  = lens _eviStatus (\ s a -> s{_eviStatus = a})

-- | Weight that this variation should receive. Only present if the
-- experiment is running. This field is read-only.
eviWeight :: Lens' ExperimentVariationsItem (Maybe Double)
eviWeight
  = lens _eviWeight (\ s a -> s{_eviWeight = a}) .
      mapping _Coerce

-- | The URL of the variation. This field may not be changed for an
-- experiment whose status is RUNNING or ENDED.
eviURL :: Lens' ExperimentVariationsItem (Maybe Text)
eviURL = lens _eviURL (\ s a -> s{_eviURL = a})

-- | True if the experiment has ended and this variation performed
-- (statistically) significantly better than the original. This field is
-- read-only.
eviWon :: Lens' ExperimentVariationsItem (Maybe Bool)
eviWon = lens _eviWon (\ s a -> s{_eviWon = a})

-- | The name of the variation. This field is required when creating an
-- experiment. This field may not be changed for an experiment whose status
-- is ENDED.
eviName :: Lens' ExperimentVariationsItem (Maybe Text)
eviName = lens _eviName (\ s a -> s{_eviName = a})

instance FromJSON ExperimentVariationsItem where
        parseJSON
          = withObject "ExperimentVariationsItem"
              (\ o ->
                 ExperimentVariationsItem <$>
                   (o .:? "status") <*> (o .:? "weight") <*>
                     (o .:? "url")
                     <*> (o .:? "won")
                     <*> (o .:? "name"))

instance ToJSON ExperimentVariationsItem where
        toJSON ExperimentVariationsItem{..}
          = object
              (catMaybes
                 [("status" .=) <$> _eviStatus,
                  ("weight" .=) <$> _eviWeight, ("url" .=) <$> _eviURL,
                  ("won" .=) <$> _eviWon, ("name" .=) <$> _eviName])

-- | Total values for the requested metrics over all the results, not just
-- the results returned in this response. The order of the metric totals is
-- same as the metric order specified in the request.
--
-- /See:/ 'mcfDataTotalsForAllResults' smart constructor.
newtype McfDataTotalsForAllResults = McfDataTotalsForAllResults
    { _mdtfarAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'McfDataTotalsForAllResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdtfarAddtional'
mcfDataTotalsForAllResults
    :: HashMap Text Text -- ^ 'mdtfarAddtional'
    -> McfDataTotalsForAllResults
mcfDataTotalsForAllResults pMdtfarAddtional_ =
    McfDataTotalsForAllResults
    { _mdtfarAddtional = pMdtfarAddtional_
    }

-- | Key-value pair for the total value of a metric. Key is the metric name
-- and the value is the total value for that metric.
mdtfarAddtional :: Lens' McfDataTotalsForAllResults (HashMap Text Text)
mdtfarAddtional
  = lens _mdtfarAddtional
      (\ s a -> s{_mdtfarAddtional = a})

instance FromJSON McfDataTotalsForAllResults where
        parseJSON
          = withObject "McfDataTotalsForAllResults"
              (\ o ->
                 McfDataTotalsForAllResults <$> (parseJSONObject o))

instance ToJSON McfDataTotalsForAllResults where
        toJSON = toJSON . _mdtfarAddtional

-- | Download details for a file stored in Google Cloud Storage.
--
-- /See:/ 'unSampledReportCloudStorageDownloadDetails' smart constructor.
data UnSampledReportCloudStorageDownloadDetails = UnSampledReportCloudStorageDownloadDetails
    { _usrcsddObjectId :: !(Maybe Text)
    , _usrcsddBucketId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UnSampledReportCloudStorageDownloadDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrcsddObjectId'
--
-- * 'usrcsddBucketId'
unSampledReportCloudStorageDownloadDetails
    :: UnSampledReportCloudStorageDownloadDetails
unSampledReportCloudStorageDownloadDetails =
    UnSampledReportCloudStorageDownloadDetails
    { _usrcsddObjectId = Nothing
    , _usrcsddBucketId = Nothing
    }

-- | Id of the file object containing the report data.
usrcsddObjectId :: Lens' UnSampledReportCloudStorageDownloadDetails (Maybe Text)
usrcsddObjectId
  = lens _usrcsddObjectId
      (\ s a -> s{_usrcsddObjectId = a})

-- | Id of the bucket the file object is stored in.
usrcsddBucketId :: Lens' UnSampledReportCloudStorageDownloadDetails (Maybe Text)
usrcsddBucketId
  = lens _usrcsddBucketId
      (\ s a -> s{_usrcsddBucketId = a})

instance FromJSON
         UnSampledReportCloudStorageDownloadDetails where
        parseJSON
          = withObject
              "UnSampledReportCloudStorageDownloadDetails"
              (\ o ->
                 UnSampledReportCloudStorageDownloadDetails <$>
                   (o .:? "objectId") <*> (o .:? "bucketId"))

instance ToJSON
         UnSampledReportCloudStorageDownloadDetails where
        toJSON UnSampledReportCloudStorageDownloadDetails{..}
          = object
              (catMaybes
                 [("objectId" .=) <$> _usrcsddObjectId,
                  ("bucketId" .=) <$> _usrcsddBucketId])

-- | Child link for this view (profile). Points to the list of goals for this
-- view (profile).
--
-- /See:/ 'proFileChildLink' smart constructor.
data ProFileChildLink = ProFileChildLink
    { _pfclHref :: !(Maybe Text)
    , _pfclType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFileChildLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfclHref'
--
-- * 'pfclType'
proFileChildLink
    :: ProFileChildLink
proFileChildLink =
    ProFileChildLink
    { _pfclHref = Nothing
    , _pfclType = "analytics#goals"
    }

-- | Link to the list of goals for this view (profile).
pfclHref :: Lens' ProFileChildLink (Maybe Text)
pfclHref = lens _pfclHref (\ s a -> s{_pfclHref = a})

-- | Value is \"analytics#goals\".
pfclType :: Lens' ProFileChildLink Text
pfclType = lens _pfclType (\ s a -> s{_pfclType = a})

instance FromJSON ProFileChildLink where
        parseJSON
          = withObject "ProFileChildLink"
              (\ o ->
                 ProFileChildLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#goals"))

instance ToJSON ProFileChildLink where
        toJSON ProFileChildLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _pfclHref,
                  Just ("type" .= _pfclType)])

--
-- /See:/ 'gaDataColumnHeadersItem' smart constructor.
data GaDataColumnHeadersItem = GaDataColumnHeadersItem
    { _gdchiColumnType :: !(Maybe Text)
    , _gdchiName       :: !(Maybe Text)
    , _gdchiDataType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GaDataColumnHeadersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdchiColumnType'
--
-- * 'gdchiName'
--
-- * 'gdchiDataType'
gaDataColumnHeadersItem
    :: GaDataColumnHeadersItem
gaDataColumnHeadersItem =
    GaDataColumnHeadersItem
    { _gdchiColumnType = Nothing
    , _gdchiName = Nothing
    , _gdchiDataType = Nothing
    }

-- | Column Type. Either DIMENSION or METRIC.
gdchiColumnType :: Lens' GaDataColumnHeadersItem (Maybe Text)
gdchiColumnType
  = lens _gdchiColumnType
      (\ s a -> s{_gdchiColumnType = a})

-- | Column name.
gdchiName :: Lens' GaDataColumnHeadersItem (Maybe Text)
gdchiName
  = lens _gdchiName (\ s a -> s{_gdchiName = a})

-- | Data type. Dimension column headers have only STRING as the data type.
-- Metric column headers have data types for metric values such as INTEGER,
-- DOUBLE, CURRENCY etc.
gdchiDataType :: Lens' GaDataColumnHeadersItem (Maybe Text)
gdchiDataType
  = lens _gdchiDataType
      (\ s a -> s{_gdchiDataType = a})

instance FromJSON GaDataColumnHeadersItem where
        parseJSON
          = withObject "GaDataColumnHeadersItem"
              (\ o ->
                 GaDataColumnHeadersItem <$>
                   (o .:? "columnType") <*> (o .:? "name") <*>
                     (o .:? "dataType"))

instance ToJSON GaDataColumnHeadersItem where
        toJSON GaDataColumnHeadersItem{..}
          = object
              (catMaybes
                 [("columnType" .=) <$> _gdchiColumnType,
                  ("name" .=) <$> _gdchiName,
                  ("dataType" .=) <$> _gdchiDataType])

-- | Parent link for a goal. Points to the view (profile) to which this goal
-- belongs.
--
-- /See:/ 'goalParentLink' smart constructor.
data GoalParentLink = GoalParentLink
    { _gplHref :: !(Maybe Text)
    , _gplType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoalParentLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gplHref'
--
-- * 'gplType'
goalParentLink
    :: GoalParentLink
goalParentLink =
    GoalParentLink
    { _gplHref = Nothing
    , _gplType = "analytics#profile"
    }

-- | Link to the view (profile) to which this goal belongs.
gplHref :: Lens' GoalParentLink (Maybe Text)
gplHref = lens _gplHref (\ s a -> s{_gplHref = a})

-- | Value is \"analytics#profile\".
gplType :: Lens' GoalParentLink Text
gplType = lens _gplType (\ s a -> s{_gplType = a})

instance FromJSON GoalParentLink where
        parseJSON
          = withObject "GoalParentLink"
              (\ o ->
                 GoalParentLink <$>
                   (o .:? "href") <*>
                     (o .:? "type" .!= "analytics#profile"))

instance ToJSON GoalParentLink where
        toJSON GoalParentLink{..}
          = object
              (catMaybes
                 [("href" .=) <$> _gplHref,
                  Just ("type" .= _gplType)])

-- | Map of attribute name and value for this column.
--
-- /See:/ 'columnAttributes' smart constructor.
newtype ColumnAttributes = ColumnAttributes
    { _caAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caAddtional'
columnAttributes
    :: HashMap Text Text -- ^ 'caAddtional'
    -> ColumnAttributes
columnAttributes pCaAddtional_ =
    ColumnAttributes
    { _caAddtional = pCaAddtional_
    }

-- | The name of the attribute.
caAddtional :: Lens' ColumnAttributes (HashMap Text Text)
caAddtional
  = lens _caAddtional (\ s a -> s{_caAddtional = a})

instance FromJSON ColumnAttributes where
        parseJSON
          = withObject "ColumnAttributes"
              (\ o -> ColumnAttributes <$> (parseJSONObject o))

instance ToJSON ColumnAttributes where
        toJSON = toJSON . _caAddtional
