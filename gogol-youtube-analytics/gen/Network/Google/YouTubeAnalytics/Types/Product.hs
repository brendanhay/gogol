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
-- /See:/ 'groupContentDetails' smart constructor.
data GroupContentDetails = GroupContentDetails
    { _gcdItemType  :: !(Maybe Text)
    , _gcdItemCount :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcdItemType'
--
-- * 'gcdItemCount'
groupContentDetails
    :: GroupContentDetails
groupContentDetails =
    GroupContentDetails
    { _gcdItemType = Nothing
    , _gcdItemCount = Nothing
    }

gcdItemType :: Lens' GroupContentDetails (Maybe Text)
gcdItemType
  = lens _gcdItemType (\ s a -> s{_gcdItemType = a})

gcdItemCount :: Lens' GroupContentDetails (Maybe Word64)
gcdItemCount
  = lens _gcdItemCount (\ s a -> s{_gcdItemCount = a})

instance FromJSON GroupContentDetails where
        parseJSON
          = withObject "GroupContentDetails"
              (\ o ->
                 GroupContentDetails <$>
                   (o .:? "itemType") <*> (o .:? "itemCount"))

instance ToJSON GroupContentDetails where
        toJSON GroupContentDetails{..}
          = object
              (catMaybes
                 [("itemType" .=) <$> _gcdItemType,
                  ("itemCount" .=) <$> _gcdItemCount])

--
-- /See:/ 'group'' smart constructor.
data Group = Group
    { _gEtag           :: !(Maybe Text)
    , _gSnippet        :: !(Maybe GroupSnippet)
    , _gKind           :: !Text
    , _gContentDetails :: !(Maybe GroupContentDetails)
    , _gId             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

gSnippet :: Lens' Group (Maybe GroupSnippet)
gSnippet = lens _gSnippet (\ s a -> s{_gSnippet = a})

gKind :: Lens' Group Text
gKind = lens _gKind (\ s a -> s{_gKind = a})

gContentDetails :: Lens' Group (Maybe GroupContentDetails)
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
-- /See:/ 'groupItemResource' smart constructor.
data GroupItemResource = GroupItemResource
    { _girKind :: !(Maybe Text)
    , _girId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupItemResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'girKind'
--
-- * 'girId'
groupItemResource
    :: GroupItemResource
groupItemResource =
    GroupItemResource
    { _girKind = Nothing
    , _girId = Nothing
    }

girKind :: Lens' GroupItemResource (Maybe Text)
girKind = lens _girKind (\ s a -> s{_girKind = a})

girId :: Lens' GroupItemResource (Maybe Text)
girId = lens _girId (\ s a -> s{_girId = a})

instance FromJSON GroupItemResource where
        parseJSON
          = withObject "GroupItemResource"
              (\ o ->
                 GroupItemResource <$>
                   (o .:? "kind") <*> (o .:? "id"))

instance ToJSON GroupItemResource where
        toJSON GroupItemResource{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _girKind, ("id" .=) <$> _girId])

-- | Contains a single result table. The table is returned as an array of
-- rows that contain the values for the cells of the table. Depending on
-- the metric or dimension, the cell can contain a string (video ID,
-- country code) or a number (number of views or number of likes).
--
-- /See:/ 'resultTable' smart constructor.
data ResultTable = ResultTable
    { _rtKind          :: !Text
    , _rtRows          :: !(Maybe [[JSONValue]])
    , _rtColumnHeaders :: !(Maybe [ResultTableColumnHeaders])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
rtColumnHeaders :: Lens' ResultTable [ResultTableColumnHeaders]
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
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- /See:/ 'groupSnippet' smart constructor.
data GroupSnippet = GroupSnippet
    { _gsPublishedAt :: !(Maybe UTCTime)
    , _gsTitle       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsPublishedAt'
--
-- * 'gsTitle'
groupSnippet
    :: GroupSnippet
groupSnippet =
    GroupSnippet
    { _gsPublishedAt = Nothing
    , _gsTitle = Nothing
    }

gsPublishedAt :: Lens' GroupSnippet (Maybe UTCTime)
gsPublishedAt
  = lens _gsPublishedAt
      (\ s a -> s{_gsPublishedAt = a})

gsTitle :: Lens' GroupSnippet (Maybe Text)
gsTitle = lens _gsTitle (\ s a -> s{_gsTitle = a})

instance FromJSON GroupSnippet where
        parseJSON
          = withObject "GroupSnippet"
              (\ o ->
                 GroupSnippet <$>
                   (o .:? "publishedAt") <*> (o .:? "title"))

instance ToJSON GroupSnippet where
        toJSON GroupSnippet{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _gsPublishedAt,
                  ("title" .=) <$> _gsTitle])

-- | Contains single batchReport resource.
--
-- /See:/ 'batchReport' smart constructor.
data BatchReport = BatchReport
    { _brTimeUpdated :: !(Maybe UTCTime)
    , _brKind        :: !Text
    , _brReportId    :: !(Maybe Text)
    , _brTimeSpan    :: !(Maybe BatchReportTimeSpan)
    , _brOutputs     :: !(Maybe [BatchReportOutputs])
    , _brId          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
brTimeSpan :: Lens' BatchReport (Maybe BatchReportTimeSpan)
brTimeSpan
  = lens _brTimeSpan (\ s a -> s{_brTimeSpan = a})

-- | Report outputs.
brOutputs :: Lens' BatchReport [BatchReportOutputs]
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
    , _giResource :: !(Maybe GroupItemResource)
    , _giGroupId  :: !(Maybe Text)
    , _giId       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

giResource :: Lens' GroupItem (Maybe GroupItemResource)
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
    , _brdlItems :: !(Maybe [Maybe BatchReportDefinition])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
brdlItems :: Lens' BatchReportDefinitionList [Maybe BatchReportDefinition]
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

--
-- /See:/ 'resultTableColumnHeaders' smart constructor.
data ResultTableColumnHeaders = ResultTableColumnHeaders
    { _rtchColumnType :: !(Maybe Text)
    , _rtchName       :: !(Maybe Text)
    , _rtchDataType   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResultTableColumnHeaders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtchColumnType'
--
-- * 'rtchName'
--
-- * 'rtchDataType'
resultTableColumnHeaders
    :: ResultTableColumnHeaders
resultTableColumnHeaders =
    ResultTableColumnHeaders
    { _rtchColumnType = Nothing
    , _rtchName = Nothing
    , _rtchDataType = Nothing
    }

-- | The type of the column (DIMENSION or METRIC).
rtchColumnType :: Lens' ResultTableColumnHeaders (Maybe Text)
rtchColumnType
  = lens _rtchColumnType
      (\ s a -> s{_rtchColumnType = a})

-- | The name of the dimension or metric.
rtchName :: Lens' ResultTableColumnHeaders (Maybe Text)
rtchName = lens _rtchName (\ s a -> s{_rtchName = a})

-- | The type of the data in the column (STRING, INTEGER, FLOAT, etc.).
rtchDataType :: Lens' ResultTableColumnHeaders (Maybe Text)
rtchDataType
  = lens _rtchDataType (\ s a -> s{_rtchDataType = a})

instance FromJSON ResultTableColumnHeaders where
        parseJSON
          = withObject "ResultTableColumnHeaders"
              (\ o ->
                 ResultTableColumnHeaders <$>
                   (o .:? "columnType") <*> (o .:? "name") <*>
                     (o .:? "dataType"))

instance ToJSON ResultTableColumnHeaders where
        toJSON ResultTableColumnHeaders{..}
          = object
              (catMaybes
                 [("columnType" .=) <$> _rtchColumnType,
                  ("name" .=) <$> _rtchName,
                  ("dataType" .=) <$> _rtchDataType])

-- | A paginated list of batchReport resources returned in response to a
-- youtubeAnalytics.batchReport.list request.
--
-- /See:/ 'batchReportList' smart constructor.
data BatchReportList = BatchReportList
    { _brlKind  :: !Text
    , _brlItems :: !(Maybe [Maybe BatchReport])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
brlItems :: Lens' BatchReportList [Maybe BatchReport]
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

-- | Period included in the report. For reports containing all entities
-- endTime is not set. Both startTime and endTime are inclusive.
--
-- /See:/ 'batchReportTimeSpan' smart constructor.
data BatchReportTimeSpan = BatchReportTimeSpan
    { _brtsStartTime :: !(Maybe UTCTime)
    , _brtsEndTime   :: !(Maybe UTCTime)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportTimeSpan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brtsStartTime'
--
-- * 'brtsEndTime'
batchReportTimeSpan
    :: BatchReportTimeSpan
batchReportTimeSpan =
    BatchReportTimeSpan
    { _brtsStartTime = Nothing
    , _brtsEndTime = Nothing
    }

-- | Start of the period included in the report. Inclusive.
brtsStartTime :: Lens' BatchReportTimeSpan (Maybe UTCTime)
brtsStartTime
  = lens _brtsStartTime
      (\ s a -> s{_brtsStartTime = a})

-- | End of the period included in the report. Inclusive. For reports
-- containing all entities endTime is not set.
brtsEndTime :: Lens' BatchReportTimeSpan (Maybe UTCTime)
brtsEndTime
  = lens _brtsEndTime (\ s a -> s{_brtsEndTime = a})

instance FromJSON BatchReportTimeSpan where
        parseJSON
          = withObject "BatchReportTimeSpan"
              (\ o ->
                 BatchReportTimeSpan <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON BatchReportTimeSpan where
        toJSON BatchReportTimeSpan{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _brtsStartTime,
                  ("endTime" .=) <$> _brtsEndTime])

-- | A paginated list of grouList resources returned in response to a
-- youtubeAnalytics.groupApi.list request.
--
-- /See:/ 'groupItemListResponse' smart constructor.
data GroupItemListResponse = GroupItemListResponse
    { _gilrEtag  :: !(Maybe Text)
    , _gilrKind  :: !Text
    , _gilrItems :: !(Maybe [Maybe GroupItem])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

gilrItems :: Lens' GroupItemListResponse [Maybe GroupItem]
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

--
-- /See:/ 'batchReportOutputs' smart constructor.
data BatchReportOutputs = BatchReportOutputs
    { _broFormat      :: !(Maybe Text)
    , _broDownloadUrl :: !(Maybe Text)
    , _broType        :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BatchReportOutputs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'broFormat'
--
-- * 'broDownloadUrl'
--
-- * 'broType'
batchReportOutputs
    :: BatchReportOutputs
batchReportOutputs =
    BatchReportOutputs
    { _broFormat = Nothing
    , _broDownloadUrl = Nothing
    , _broType = "cloudStorageOutput"
    }

-- | Format of the output.
broFormat :: Lens' BatchReportOutputs (Maybe Text)
broFormat
  = lens _broFormat (\ s a -> s{_broFormat = a})

-- | Cloud storage URL to download this report. This URL is valid for 30
-- minutes.
broDownloadUrl :: Lens' BatchReportOutputs (Maybe Text)
broDownloadUrl
  = lens _broDownloadUrl
      (\ s a -> s{_broDownloadUrl = a})

-- | Type of the output.
broType :: Lens' BatchReportOutputs Text
broType = lens _broType (\ s a -> s{_broType = a})

instance FromJSON BatchReportOutputs where
        parseJSON
          = withObject "BatchReportOutputs"
              (\ o ->
                 BatchReportOutputs <$>
                   (o .:? "format") <*> (o .:? "downloadUrl") <*>
                     (o .:? "type" .!= "cloudStorageOutput"))

instance ToJSON BatchReportOutputs where
        toJSON BatchReportOutputs{..}
          = object
              (catMaybes
                 [("format" .=) <$> _broFormat,
                  ("downloadUrl" .=) <$> _broDownloadUrl,
                  Just ("type" .= _broType)])

-- | A paginated list of grouList resources returned in response to a
-- youtubeAnalytics.groupApi.list request.
--
-- /See:/ 'groupListResponse' smart constructor.
data GroupListResponse = GroupListResponse
    { _glrEtag  :: !(Maybe Text)
    , _glrKind  :: !Text
    , _glrItems :: !(Maybe [Maybe Group])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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

glrItems :: Lens' GroupListResponse [Maybe Group]
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
