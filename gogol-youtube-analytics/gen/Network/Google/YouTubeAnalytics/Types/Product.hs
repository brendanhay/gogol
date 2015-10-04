{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeAnalytics.Types.Product where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types.Sum

--
-- /See:/ 'group'' smart constructor.
data Group = Group
    { _gEtag           :: !(Maybe Text)
    , _gSnippet        :: !(Maybe Snippet)
    , _gKind           :: !Text
    , _gContentDetails :: !(Maybe ContentDetails)
    , _gId             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gEtag'
--
-- * 'gSnippet'
--
-- * 'gKind'
--
-- * 'gContentDetails'
--
-- * 'gId'
group'
    :: Group
group' =
    Group
    { _gEtag = Nothing
    , _gSnippet = Nothing
    , _gKind = "youtube#group"
    , _gContentDetails = Nothing
    , _gId = Nothing
    }

gEtag :: Lens' Group (Maybe Text)
gEtag = lens _gEtag (\ s a -> s{_gEtag = a})

gSnippet :: Lens' Group (Maybe Snippet)
gSnippet = lens _gSnippet (\ s a -> s{_gSnippet = a})

gKind :: Lens' Group Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

gContentDetails :: Lens' Group (Maybe ContentDetails)
gContentDetails
  = lens _gContentDetails
      (\ s a -> s{_gContentDetails = a})

gId :: Lens' Group (Maybe Text)
gId = lens _gId (\ s a -> s{_gId = a})

instance FromJSON Group where
        parseJSON
          = withObject "Group"
              (\ o ->
                 Group <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#group")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id"))

instance ToJSON Group where
        toJSON Group{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gEtag,
                  ("snippet" .=) <$> _gSnippet,
                  Just ("kind" .= _gKind),
                  ("contentDetails" .=) <$> _gContentDetails,
                  ("id" .=) <$> _gId])

--
-- /See:/ 'columnHeadersItem' smart constructor.
data ColumnHeadersItem = ColumnHeadersItem
    { _chiColumnType :: !(Maybe Text)
    , _chiName       :: !(Maybe Text)
    , _chiDataType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnHeadersItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chiColumnType'
--
-- * 'chiName'
--
-- * 'chiDataType'
columnHeadersItem
    :: ColumnHeadersItem
columnHeadersItem =
    ColumnHeadersItem
    { _chiColumnType = Nothing
    , _chiName = Nothing
    , _chiDataType = Nothing
    }

-- | The type of the column (DIMENSION or METRIC).
chiColumnType :: Lens' ColumnHeadersItem (Maybe Text)
chiColumnType
  = lens _chiColumnType
      (\ s a -> s{_chiColumnType = a})

-- | The name of the dimension or metric.
chiName :: Lens' ColumnHeadersItem (Maybe Text)
chiName = lens _chiName (\ s a -> s{_chiName = a})

-- | The type of the data in the column (STRING, INTEGER, FLOAT, etc.).
chiDataType :: Lens' ColumnHeadersItem (Maybe Text)
chiDataType
  = lens _chiDataType (\ s a -> s{_chiDataType = a})

instance FromJSON ColumnHeadersItem where
        parseJSON
          = withObject "ColumnHeadersItem"
              (\ o ->
                 ColumnHeadersItem <$>
                   (o .:? "columnType") <*> (o .:? "name") <*>
                     (o .:? "dataType"))

instance ToJSON ColumnHeadersItem where
        toJSON ColumnHeadersItem{..}
          = object
              (catMaybes
                 [("columnType" .=) <$> _chiColumnType,
                  ("name" .=) <$> _chiName,
                  ("dataType" .=) <$> _chiDataType])

--
-- /See:/ 'snippet' smart constructor.
data Snippet = Snippet
    { _sPublishedAt :: !(Maybe DateTime')
    , _sTitle       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Snippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPublishedAt'
--
-- * 'sTitle'
snippet
    :: Snippet
snippet =
    Snippet
    { _sPublishedAt = Nothing
    , _sTitle = Nothing
    }

sPublishedAt :: Lens' Snippet (Maybe UTCTime)
sPublishedAt
  = lens _sPublishedAt (\ s a -> s{_sPublishedAt = a})
      . mapping _DateTime

sTitle :: Lens' Snippet (Maybe Text)
sTitle = lens _sTitle (\ s a -> s{_sTitle = a})

instance FromJSON Snippet where
        parseJSON
          = withObject "Snippet"
              (\ o ->
                 Snippet <$>
                   (o .:? "publishedAt") <*> (o .:? "title"))

instance ToJSON Snippet where
        toJSON Snippet{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _sPublishedAt,
                  ("title" .=) <$> _sTitle])

--
-- /See:/ 'contentDetails' smart constructor.
data ContentDetails = ContentDetails
    { _cdItemType  :: !(Maybe Text)
    , _cdItemCount :: !(Maybe Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdItemType'
--
-- * 'cdItemCount'
contentDetails
    :: ContentDetails
contentDetails =
    ContentDetails
    { _cdItemType = Nothing
    , _cdItemCount = Nothing
    }

cdItemType :: Lens' ContentDetails (Maybe Text)
cdItemType
  = lens _cdItemType (\ s a -> s{_cdItemType = a})

cdItemCount :: Lens' ContentDetails (Maybe Word64)
cdItemCount
  = lens _cdItemCount (\ s a -> s{_cdItemCount = a})

instance FromJSON ContentDetails where
        parseJSON
          = withObject "ContentDetails"
              (\ o ->
                 ContentDetails <$>
                   (o .:? "itemType") <*> (o .:? "itemCount"))

instance ToJSON ContentDetails where
        toJSON ContentDetails{..}
          = object
              (catMaybes
                 [("itemType" .=) <$> _cdItemType,
                  ("itemCount" .=) <$> _cdItemCount])

-- | Period included in the report. For reports containing all entities
-- endTime is not set. Both startTime and endTime are inclusive.
--
-- /See:/ 'timeSpan' smart constructor.
data TimeSpan = TimeSpan
    { _tsStartTime :: !(Maybe DateTime')
    , _tsEndTime   :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeSpan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsStartTime'
--
-- * 'tsEndTime'
timeSpan
    :: TimeSpan
timeSpan =
    TimeSpan
    { _tsStartTime = Nothing
    , _tsEndTime = Nothing
    }

-- | Start of the period included in the report. Inclusive.
tsStartTime :: Lens' TimeSpan (Maybe UTCTime)
tsStartTime
  = lens _tsStartTime (\ s a -> s{_tsStartTime = a}) .
      mapping _DateTime

-- | End of the period included in the report. Inclusive. For reports
-- containing all entities endTime is not set.
tsEndTime :: Lens' TimeSpan (Maybe UTCTime)
tsEndTime
  = lens _tsEndTime (\ s a -> s{_tsEndTime = a}) .
      mapping _DateTime

instance FromJSON TimeSpan where
        parseJSON
          = withObject "TimeSpan"
              (\ o ->
                 TimeSpan <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON TimeSpan where
        toJSON TimeSpan{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _tsStartTime,
                  ("endTime" .=) <$> _tsEndTime])

--
-- /See:/ 'outputsItem' smart constructor.
data OutputsItem = OutputsItem
    { _oiFormat      :: !(Maybe Text)
    , _oiDownloadURL :: !(Maybe Text)
    , _oiType        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OutputsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiFormat'
--
-- * 'oiDownloadURL'
--
-- * 'oiType'
outputsItem
    :: OutputsItem
outputsItem =
    OutputsItem
    { _oiFormat = Nothing
    , _oiDownloadURL = Nothing
    , _oiType = "cloudStorageOutput"
    }

-- | Format of the output.
oiFormat :: Lens' OutputsItem (Maybe Text)
oiFormat = lens _oiFormat (\ s a -> s{_oiFormat = a})

-- | Cloud storage URL to download this report. This URL is valid for 30
-- minutes.
oiDownloadURL :: Lens' OutputsItem (Maybe Text)
oiDownloadURL
  = lens _oiDownloadURL
      (\ s a -> s{_oiDownloadURL = a})

-- | Type of the output.
oiType :: Lens' OutputsItem Text
oiType = lens _oiType (\ s a -> s{_oiType = a})

instance FromJSON OutputsItem where
        parseJSON
          = withObject "OutputsItem"
              (\ o ->
                 OutputsItem <$>
                   (o .:? "format") <*> (o .:? "downloadUrl") <*>
                     (o .:? "type" .!= "cloudStorageOutput"))

instance ToJSON OutputsItem where
        toJSON OutputsItem{..}
          = object
              (catMaybes
                 [("format" .=) <$> _oiFormat,
                  ("downloadUrl" .=) <$> _oiDownloadURL,
                  Just ("type" .= _oiType)])

-- | Contains a single result table. The table is returned as an array of
-- rows that contain the values for the cells of the table. Depending on
-- the metric or dimension, the cell can contain a string (video ID,
-- country code) or a number (number of views or number of likes).
--
-- /See:/ 'resultTable' smart constructor.
data ResultTable = ResultTable
    { _rtKind          :: !Text
    , _rtRows          :: !(Maybe [[JSONValue]])
    , _rtColumnHeaders :: !(Maybe [ColumnHeadersItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtKind'
--
-- * 'rtRows'
--
-- * 'rtColumnHeaders'
resultTable
    :: ResultTable
resultTable =
    ResultTable
    { _rtKind = "youtubeAnalytics#resultTable"
    , _rtRows = Nothing
    , _rtColumnHeaders = Nothing
    }

-- | This value specifies the type of data included in the API response. For
-- the query method, the kind property value will be
-- youtubeAnalytics#resultTable.
rtKind :: Lens' ResultTable Text
rtKind = lens _rtKind (\ s a -> s{_rtKind = a})

-- | The list contains all rows of the result table. Each item in the list is
-- an array that contains comma-delimited data corresponding to a single
-- row of data. The order of the comma-delimited data fields will match the
-- order of the columns listed in the columnHeaders field. If no data is
-- available for the given query, the rows element will be omitted from the
-- response. The response for a query with the day dimension will not
-- contain rows for the most recent days.
rtRows :: Lens' ResultTable [[JSONValue]]
rtRows
  = lens _rtRows (\ s a -> s{_rtRows = a}) . _Default .
      _Coerce

-- | This value specifies information about the data returned in the rows
-- fields. Each item in the columnHeaders list identifies a field returned
-- in the rows value, which contains a list of comma-delimited data. The
-- columnHeaders list will begin with the dimensions specified in the API
-- request, which will be followed by the metrics specified in the API
-- request. The order of both dimensions and metrics will match the
-- ordering in the API request. For example, if the API request contains
-- the parameters dimensions=ageGroup,gender&metrics=viewerPercentage, the
-- API response will return columns in this order:
-- ageGroup,gender,viewerPercentage.
rtColumnHeaders :: Lens' ResultTable [ColumnHeadersItem]
rtColumnHeaders
  = lens _rtColumnHeaders
      (\ s a -> s{_rtColumnHeaders = a})
      . _Default
      . _Coerce

instance FromJSON ResultTable where
        parseJSON
          = withObject "ResultTable"
              (\ o ->
                 ResultTable <$>
                   (o .:? "kind" .!= "youtubeAnalytics#resultTable") <*>
                     (o .:? "rows" .!= mempty)
                     <*> (o .:? "columnHeaders" .!= mempty))

instance ToJSON ResultTable where
        toJSON ResultTable{..}
          = object
              (catMaybes
                 [Just ("kind" .= _rtKind), ("rows" .=) <$> _rtRows,
                  ("columnHeaders" .=) <$> _rtColumnHeaders])

-- | Contains single batchReportDefinition resource.
--
-- /See:/ 'batchReportDefinition' smart constructor.
data BatchReportDefinition = BatchReportDefinition
    { _brdStatus :: !(Maybe Text)
    , _brdKind   :: !Text
    , _brdName   :: !(Maybe Text)
    , _brdId     :: !(Maybe Text)
    , _brdType   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brdStatus'
--
-- * 'brdKind'
--
-- * 'brdName'
--
-- * 'brdId'
--
-- * 'brdType'
batchReportDefinition
    :: BatchReportDefinition
batchReportDefinition =
    BatchReportDefinition
    { _brdStatus = Nothing
    , _brdKind = "youtubeAnalytics#batchReportDefinition"
    , _brdName = Nothing
    , _brdId = Nothing
    , _brdType = Nothing
    }

-- | Status of the report definition.
brdStatus :: Lens' BatchReportDefinition (Maybe Text)
brdStatus
  = lens _brdStatus (\ s a -> s{_brdStatus = a})

-- | This value specifies the type of data of this item. For batch report
-- definition the kind property value is
-- youtubeAnalytics#batchReportDefinition.
brdKind :: Lens' BatchReportDefinition Text
brdKind = lens _brdKind (\ s a -> s{_brdKind = a})

-- | Name of the report definition.
brdName :: Lens' BatchReportDefinition (Maybe Text)
brdName = lens _brdName (\ s a -> s{_brdName = a})

-- | The ID that YouTube assigns and uses to uniquely identify the report
-- definition.
brdId :: Lens' BatchReportDefinition (Maybe Text)
brdId = lens _brdId (\ s a -> s{_brdId = a})

-- | Type of the report definition.
brdType :: Lens' BatchReportDefinition (Maybe Text)
brdType = lens _brdType (\ s a -> s{_brdType = a})

instance FromJSON BatchReportDefinition where
        parseJSON
          = withObject "BatchReportDefinition"
              (\ o ->
                 BatchReportDefinition <$>
                   (o .:? "status") <*>
                     (o .:? "kind" .!=
                        "youtubeAnalytics#batchReportDefinition")
                     <*> (o .:? "name")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON BatchReportDefinition where
        toJSON BatchReportDefinition{..}
          = object
              (catMaybes
                 [("status" .=) <$> _brdStatus,
                  Just ("kind" .= _brdKind), ("name" .=) <$> _brdName,
                  ("id" .=) <$> _brdId, ("type" .=) <$> _brdType])

--
-- /See:/ 'resource' smart constructor.
data Resource = Resource
    { _rKind :: !(Maybe Text)
    , _rId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rKind'
--
-- * 'rId'
resource
    :: Resource
resource =
    Resource
    { _rKind = Nothing
    , _rId = Nothing
    }

rKind :: Lens' Resource (Maybe Text)
rKind = lens _rKind (\ s a -> s{_rKind = a})

rId :: Lens' Resource (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

instance FromJSON Resource where
        parseJSON
          = withObject "Resource"
              (\ o -> Resource <$> (o .:? "kind") <*> (o .:? "id"))

instance ToJSON Resource where
        toJSON Resource{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _rKind, ("id" .=) <$> _rId])

-- | Contains single batchReport resource.
--
-- /See:/ 'batchReport' smart constructor.
data BatchReport = BatchReport
    { _brTimeUpdated :: !(Maybe DateTime')
    , _brKind        :: !Text
    , _brReportId    :: !(Maybe Text)
    , _brTimeSpan    :: !(Maybe TimeSpan)
    , _brOutputs     :: !(Maybe [OutputsItem])
    , _brId          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brTimeUpdated'
--
-- * 'brKind'
--
-- * 'brReportId'
--
-- * 'brTimeSpan'
--
-- * 'brOutputs'
--
-- * 'brId'
batchReport
    :: BatchReport
batchReport =
    BatchReport
    { _brTimeUpdated = Nothing
    , _brKind = "youtubeAnalytics#batchReport"
    , _brReportId = Nothing
    , _brTimeSpan = Nothing
    , _brOutputs = Nothing
    , _brId = Nothing
    }

-- | The time when the report was updated.
brTimeUpdated :: Lens' BatchReport (Maybe UTCTime)
brTimeUpdated
  = lens _brTimeUpdated
      (\ s a -> s{_brTimeUpdated = a})
      . mapping _DateTime

-- | This value specifies the type of data of this item. For batch report the
-- kind property value is youtubeAnalytics#batchReport.
brKind :: Lens' BatchReport Text
brKind = lens _brKind (\ s a -> s{_brKind = a})

-- | The ID of the the report definition.
brReportId :: Lens' BatchReport (Maybe Text)
brReportId
  = lens _brReportId (\ s a -> s{_brReportId = a})

-- | Period included in the report. For reports containing all entities
-- endTime is not set. Both startTime and endTime are inclusive.
brTimeSpan :: Lens' BatchReport (Maybe TimeSpan)
brTimeSpan
  = lens _brTimeSpan (\ s a -> s{_brTimeSpan = a})

-- | Report outputs.
brOutputs :: Lens' BatchReport [OutputsItem]
brOutputs
  = lens _brOutputs (\ s a -> s{_brOutputs = a}) .
      _Default
      . _Coerce

-- | The ID that YouTube assigns and uses to uniquely identify the report.
brId :: Lens' BatchReport (Maybe Text)
brId = lens _brId (\ s a -> s{_brId = a})

instance FromJSON BatchReport where
        parseJSON
          = withObject "BatchReport"
              (\ o ->
                 BatchReport <$>
                   (o .:? "timeUpdated") <*>
                     (o .:? "kind" .!= "youtubeAnalytics#batchReport")
                     <*> (o .:? "reportId")
                     <*> (o .:? "timeSpan")
                     <*> (o .:? "outputs" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON BatchReport where
        toJSON BatchReport{..}
          = object
              (catMaybes
                 [("timeUpdated" .=) <$> _brTimeUpdated,
                  Just ("kind" .= _brKind),
                  ("reportId" .=) <$> _brReportId,
                  ("timeSpan" .=) <$> _brTimeSpan,
                  ("outputs" .=) <$> _brOutputs, ("id" .=) <$> _brId])

--
-- /See:/ 'groupItem' smart constructor.
data GroupItem = GroupItem
    { _giEtag     :: !(Maybe Text)
    , _giKind     :: !Text
    , _giResource :: !(Maybe Resource)
    , _giGroupId  :: !(Maybe Text)
    , _giId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giEtag'
--
-- * 'giKind'
--
-- * 'giResource'
--
-- * 'giGroupId'
--
-- * 'giId'
groupItem
    :: GroupItem
groupItem =
    GroupItem
    { _giEtag = Nothing
    , _giKind = "youtube#groupItem"
    , _giResource = Nothing
    , _giGroupId = Nothing
    , _giId = Nothing
    }

giEtag :: Lens' GroupItem (Maybe Text)
giEtag = lens _giEtag (\ s a -> s{_giEtag = a})

giKind :: Lens' GroupItem Text
giKind = lens _giKind (\ s a -> s{_giKind = a})

giResource :: Lens' GroupItem (Maybe Resource)
giResource
  = lens _giResource (\ s a -> s{_giResource = a})

giGroupId :: Lens' GroupItem (Maybe Text)
giGroupId
  = lens _giGroupId (\ s a -> s{_giGroupId = a})

giId :: Lens' GroupItem (Maybe Text)
giId = lens _giId (\ s a -> s{_giId = a})

instance FromJSON GroupItem where
        parseJSON
          = withObject "GroupItem"
              (\ o ->
                 GroupItem <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#groupItem")
                     <*> (o .:? "resource")
                     <*> (o .:? "groupId")
                     <*> (o .:? "id"))

instance ToJSON GroupItem where
        toJSON GroupItem{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _giEtag, Just ("kind" .= _giKind),
                  ("resource" .=) <$> _giResource,
                  ("groupId" .=) <$> _giGroupId, ("id" .=) <$> _giId])

-- | A paginated list of batchReportDefinition resources returned in response
-- to a youtubeAnalytics.batchReportDefinitions.list request.
--
-- /See:/ 'batchReportDefinitionList' smart constructor.
data BatchReportDefinitionList = BatchReportDefinitionList
    { _brdlKind  :: !Text
    , _brdlItems :: !(Maybe [BatchReportDefinition])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportDefinitionList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brdlKind'
--
-- * 'brdlItems'
batchReportDefinitionList
    :: BatchReportDefinitionList
batchReportDefinitionList =
    BatchReportDefinitionList
    { _brdlKind = "youtubeAnalytics#batchReportDefinitionList"
    , _brdlItems = Nothing
    }

-- | This value specifies the type of data included in the API response. For
-- the list method, the kind property value is
-- youtubeAnalytics#batchReportDefinitionList.
brdlKind :: Lens' BatchReportDefinitionList Text
brdlKind = lens _brdlKind (\ s a -> s{_brdlKind = a})

-- | A list of batchReportDefinition resources that match the request
-- criteria.
brdlItems :: Lens' BatchReportDefinitionList [BatchReportDefinition]
brdlItems
  = lens _brdlItems (\ s a -> s{_brdlItems = a}) .
      _Default
      . _Coerce

instance FromJSON BatchReportDefinitionList where
        parseJSON
          = withObject "BatchReportDefinitionList"
              (\ o ->
                 BatchReportDefinitionList <$>
                   (o .:? "kind" .!=
                      "youtubeAnalytics#batchReportDefinitionList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON BatchReportDefinitionList where
        toJSON BatchReportDefinitionList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _brdlKind),
                  ("items" .=) <$> _brdlItems])

-- | A paginated list of batchReport resources returned in response to a
-- youtubeAnalytics.batchReport.list request.
--
-- /See:/ 'batchReportList' smart constructor.
data BatchReportList = BatchReportList
    { _brlKind  :: !Text
    , _brlItems :: !(Maybe [BatchReport])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brlKind'
--
-- * 'brlItems'
batchReportList
    :: BatchReportList
batchReportList =
    BatchReportList
    { _brlKind = "youtubeAnalytics#batchReportList"
    , _brlItems = Nothing
    }

-- | This value specifies the type of data included in the API response. For
-- the list method, the kind property value is
-- youtubeAnalytics#batchReportList.
brlKind :: Lens' BatchReportList Text
brlKind = lens _brlKind (\ s a -> s{_brlKind = a})

-- | A list of batchReport resources that match the request criteria.
brlItems :: Lens' BatchReportList [BatchReport]
brlItems
  = lens _brlItems (\ s a -> s{_brlItems = a}) .
      _Default
      . _Coerce

instance FromJSON BatchReportList where
        parseJSON
          = withObject "BatchReportList"
              (\ o ->
                 BatchReportList <$>
                   (o .:? "kind" .!= "youtubeAnalytics#batchReportList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON BatchReportList where
        toJSON BatchReportList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _brlKind),
                  ("items" .=) <$> _brlItems])

-- | A paginated list of grouList resources returned in response to a
-- youtubeAnalytics.groupApi.list request.
--
-- /See:/ 'groupItemListResponse' smart constructor.
data GroupItemListResponse = GroupItemListResponse
    { _gilrEtag  :: !(Maybe Text)
    , _gilrKind  :: !Text
    , _gilrItems :: !(Maybe [GroupItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gilrEtag'
--
-- * 'gilrKind'
--
-- * 'gilrItems'
groupItemListResponse
    :: GroupItemListResponse
groupItemListResponse =
    GroupItemListResponse
    { _gilrEtag = Nothing
    , _gilrKind = "youtube#groupItemListResponse"
    , _gilrItems = Nothing
    }

gilrEtag :: Lens' GroupItemListResponse (Maybe Text)
gilrEtag = lens _gilrEtag (\ s a -> s{_gilrEtag = a})

gilrKind :: Lens' GroupItemListResponse Text
gilrKind = lens _gilrKind (\ s a -> s{_gilrKind = a})

gilrItems :: Lens' GroupItemListResponse [GroupItem]
gilrItems
  = lens _gilrItems (\ s a -> s{_gilrItems = a}) .
      _Default
      . _Coerce

instance FromJSON GroupItemListResponse where
        parseJSON
          = withObject "GroupItemListResponse"
              (\ o ->
                 GroupItemListResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#groupItemListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON GroupItemListResponse where
        toJSON GroupItemListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gilrEtag,
                  Just ("kind" .= _gilrKind),
                  ("items" .=) <$> _gilrItems])

-- | A paginated list of grouList resources returned in response to a
-- youtubeAnalytics.groupApi.list request.
--
-- /See:/ 'groupListResponse' smart constructor.
data GroupListResponse = GroupListResponse
    { _glrEtag  :: !(Maybe Text)
    , _glrKind  :: !Text
    , _glrItems :: !(Maybe [Group])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glrEtag'
--
-- * 'glrKind'
--
-- * 'glrItems'
groupListResponse
    :: GroupListResponse
groupListResponse =
    GroupListResponse
    { _glrEtag = Nothing
    , _glrKind = "youtube#groupListResponse"
    , _glrItems = Nothing
    }

glrEtag :: Lens' GroupListResponse (Maybe Text)
glrEtag = lens _glrEtag (\ s a -> s{_glrEtag = a})

glrKind :: Lens' GroupListResponse Text
glrKind = lens _glrKind (\ s a -> s{_glrKind = a})

glrItems :: Lens' GroupListResponse [Group]
glrItems
  = lens _glrItems (\ s a -> s{_glrItems = a}) .
      _Default
      . _Coerce

instance FromJSON GroupListResponse where
        parseJSON
          = withObject "GroupListResponse"
              (\ o ->
                 GroupListResponse <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#groupListResponse")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON GroupListResponse where
        toJSON GroupListResponse{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _glrEtag, Just ("kind" .= _glrKind),
                  ("items" .=) <$> _glrItems])
