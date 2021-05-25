{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQuery.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQuery.Types.Product where

import Network.Google.BigQuery.Types.Sum
import Network.Google.Prelude

--
-- /See:/ 'modelReference' smart constructor.
data ModelReference =
  ModelReference'
    { _mrModelId :: !(Maybe Text)
    , _mrDataSetId :: !(Maybe Text)
    , _mrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModelReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrModelId'
--
-- * 'mrDataSetId'
--
-- * 'mrProjectId'
modelReference
    :: ModelReference
modelReference =
  ModelReference'
    {_mrModelId = Nothing, _mrDataSetId = Nothing, _mrProjectId = Nothing}


-- | [Required] The ID of the model. The ID must contain only letters (a-z,
-- A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024
-- characters.
mrModelId :: Lens' ModelReference (Maybe Text)
mrModelId
  = lens _mrModelId (\ s a -> s{_mrModelId = a})

-- | [Required] The ID of the dataset containing this model.
mrDataSetId :: Lens' ModelReference (Maybe Text)
mrDataSetId
  = lens _mrDataSetId (\ s a -> s{_mrDataSetId = a})

-- | [Required] The ID of the project containing this model.
mrProjectId :: Lens' ModelReference (Maybe Text)
mrProjectId
  = lens _mrProjectId (\ s a -> s{_mrProjectId = a})

instance FromJSON ModelReference where
        parseJSON
          = withObject "ModelReference"
              (\ o ->
                 ModelReference' <$>
                   (o .:? "modelId") <*> (o .:? "datasetId") <*>
                     (o .:? "projectId"))

instance ToJSON ModelReference where
        toJSON ModelReference'{..}
          = object
              (catMaybes
                 [("modelId" .=) <$> _mrModelId,
                  ("datasetId" .=) <$> _mrDataSetId,
                  ("projectId" .=) <$> _mrProjectId])

--
-- /See:/ 'jobReference' smart constructor.
data JobReference =
  JobReference'
    { _jrJobId :: !(Maybe Text)
    , _jrLocation :: !(Maybe Text)
    , _jrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrJobId'
--
-- * 'jrLocation'
--
-- * 'jrProjectId'
jobReference
    :: JobReference
jobReference =
  JobReference'
    {_jrJobId = Nothing, _jrLocation = Nothing, _jrProjectId = Nothing}


-- | [Required] The ID of the job. The ID must contain only letters (a-z,
-- A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length
-- is 1,024 characters.
jrJobId :: Lens' JobReference (Maybe Text)
jrJobId = lens _jrJobId (\ s a -> s{_jrJobId = a})

-- | The geographic location of the job. See details at
-- https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying_your_location.
jrLocation :: Lens' JobReference (Maybe Text)
jrLocation
  = lens _jrLocation (\ s a -> s{_jrLocation = a})

-- | [Required] The ID of the project containing this job.
jrProjectId :: Lens' JobReference (Maybe Text)
jrProjectId
  = lens _jrProjectId (\ s a -> s{_jrProjectId = a})

instance FromJSON JobReference where
        parseJSON
          = withObject "JobReference"
              (\ o ->
                 JobReference' <$>
                   (o .:? "jobId") <*> (o .:? "location") <*>
                     (o .:? "projectId"))

instance ToJSON JobReference where
        toJSON JobReference'{..}
          = object
              (catMaybes
                 [("jobId" .=) <$> _jrJobId,
                  ("location" .=) <$> _jrLocation,
                  ("projectId" .=) <$> _jrProjectId])

--
-- /See:/ 'tableList' smart constructor.
data TableList =
  TableList'
    { _tlTotalItems :: !(Maybe (Textual Int32))
    , _tlEtag :: !(Maybe Text)
    , _tlNextPageToken :: !(Maybe Text)
    , _tlKind :: !Text
    , _tlTables :: !(Maybe [TableListTablesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlTotalItems'
--
-- * 'tlEtag'
--
-- * 'tlNextPageToken'
--
-- * 'tlKind'
--
-- * 'tlTables'
tableList
    :: TableList
tableList =
  TableList'
    { _tlTotalItems = Nothing
    , _tlEtag = Nothing
    , _tlNextPageToken = Nothing
    , _tlKind = "bigquery#tableList"
    , _tlTables = Nothing
    }


-- | The total number of tables in the dataset.
tlTotalItems :: Lens' TableList (Maybe Int32)
tlTotalItems
  = lens _tlTotalItems (\ s a -> s{_tlTotalItems = a})
      . mapping _Coerce

-- | A hash of this page of results.
tlEtag :: Lens' TableList (Maybe Text)
tlEtag = lens _tlEtag (\ s a -> s{_tlEtag = a})

-- | A token to request the next page of results.
tlNextPageToken :: Lens' TableList (Maybe Text)
tlNextPageToken
  = lens _tlNextPageToken
      (\ s a -> s{_tlNextPageToken = a})

-- | The type of list.
tlKind :: Lens' TableList Text
tlKind = lens _tlKind (\ s a -> s{_tlKind = a})

-- | Tables in the requested dataset.
tlTables :: Lens' TableList [TableListTablesItem]
tlTables
  = lens _tlTables (\ s a -> s{_tlTables = a}) .
      _Default
      . _Coerce

instance FromJSON TableList where
        parseJSON
          = withObject "TableList"
              (\ o ->
                 TableList' <$>
                   (o .:? "totalItems") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "bigquery#tableList")
                     <*> (o .:? "tables" .!= mempty))

instance ToJSON TableList where
        toJSON TableList'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _tlTotalItems,
                  ("etag" .=) <$> _tlEtag,
                  ("nextPageToken" .=) <$> _tlNextPageToken,
                  Just ("kind" .= _tlKind),
                  ("tables" .=) <$> _tlTables])

--
-- /See:/ 'dataSetListDataSetsItem' smart constructor.
data DataSetListDataSetsItem =
  DataSetListDataSetsItem'
    { _dsldsiLocation :: !(Maybe Text)
    , _dsldsiFriendlyName :: !(Maybe Text)
    , _dsldsiKind :: !Text
    , _dsldsiDataSetReference :: !(Maybe DataSetReference)
    , _dsldsiId :: !(Maybe Text)
    , _dsldsiLabels :: !(Maybe DataSetListDataSetsItemLabels)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetListDataSetsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsldsiLocation'
--
-- * 'dsldsiFriendlyName'
--
-- * 'dsldsiKind'
--
-- * 'dsldsiDataSetReference'
--
-- * 'dsldsiId'
--
-- * 'dsldsiLabels'
dataSetListDataSetsItem
    :: DataSetListDataSetsItem
dataSetListDataSetsItem =
  DataSetListDataSetsItem'
    { _dsldsiLocation = Nothing
    , _dsldsiFriendlyName = Nothing
    , _dsldsiKind = "bigquery#dataset"
    , _dsldsiDataSetReference = Nothing
    , _dsldsiId = Nothing
    , _dsldsiLabels = Nothing
    }


-- | The geographic location where the data resides.
dsldsiLocation :: Lens' DataSetListDataSetsItem (Maybe Text)
dsldsiLocation
  = lens _dsldsiLocation
      (\ s a -> s{_dsldsiLocation = a})

-- | A descriptive name for the dataset, if one exists.
dsldsiFriendlyName :: Lens' DataSetListDataSetsItem (Maybe Text)
dsldsiFriendlyName
  = lens _dsldsiFriendlyName
      (\ s a -> s{_dsldsiFriendlyName = a})

-- | The resource type. This property always returns the value
-- \"bigquery#dataset\".
dsldsiKind :: Lens' DataSetListDataSetsItem Text
dsldsiKind
  = lens _dsldsiKind (\ s a -> s{_dsldsiKind = a})

-- | The dataset reference. Use this property to access specific parts of the
-- dataset\'s ID, such as project ID or dataset ID.
dsldsiDataSetReference :: Lens' DataSetListDataSetsItem (Maybe DataSetReference)
dsldsiDataSetReference
  = lens _dsldsiDataSetReference
      (\ s a -> s{_dsldsiDataSetReference = a})

-- | The fully-qualified, unique, opaque ID of the dataset.
dsldsiId :: Lens' DataSetListDataSetsItem (Maybe Text)
dsldsiId = lens _dsldsiId (\ s a -> s{_dsldsiId = a})

-- | The labels associated with this dataset. You can use these to organize
-- and group your datasets.
dsldsiLabels :: Lens' DataSetListDataSetsItem (Maybe DataSetListDataSetsItemLabels)
dsldsiLabels
  = lens _dsldsiLabels (\ s a -> s{_dsldsiLabels = a})

instance FromJSON DataSetListDataSetsItem where
        parseJSON
          = withObject "DataSetListDataSetsItem"
              (\ o ->
                 DataSetListDataSetsItem' <$>
                   (o .:? "location") <*> (o .:? "friendlyName") <*>
                     (o .:? "kind" .!= "bigquery#dataset")
                     <*> (o .:? "datasetReference")
                     <*> (o .:? "id")
                     <*> (o .:? "labels"))

instance ToJSON DataSetListDataSetsItem where
        toJSON DataSetListDataSetsItem'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _dsldsiLocation,
                  ("friendlyName" .=) <$> _dsldsiFriendlyName,
                  Just ("kind" .= _dsldsiKind),
                  ("datasetReference" .=) <$> _dsldsiDataSetReference,
                  ("id" .=) <$> _dsldsiId,
                  ("labels" .=) <$> _dsldsiLabels])

-- | Information about a single cluster for clustering model.
--
-- /See:/ 'clusterInfo' smart constructor.
data ClusterInfo =
  ClusterInfo'
    { _ciClusterSize :: !(Maybe (Textual Int64))
    , _ciClusterRadius :: !(Maybe (Textual Double))
    , _ciCentroidId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusterInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciClusterSize'
--
-- * 'ciClusterRadius'
--
-- * 'ciCentroidId'
clusterInfo
    :: ClusterInfo
clusterInfo =
  ClusterInfo'
    { _ciClusterSize = Nothing
    , _ciClusterRadius = Nothing
    , _ciCentroidId = Nothing
    }


-- | Cluster size, the total number of points assigned to the cluster.
ciClusterSize :: Lens' ClusterInfo (Maybe Int64)
ciClusterSize
  = lens _ciClusterSize
      (\ s a -> s{_ciClusterSize = a})
      . mapping _Coerce

-- | Cluster radius, the average distance from centroid to each point
-- assigned to the cluster.
ciClusterRadius :: Lens' ClusterInfo (Maybe Double)
ciClusterRadius
  = lens _ciClusterRadius
      (\ s a -> s{_ciClusterRadius = a})
      . mapping _Coerce

-- | Centroid id.
ciCentroidId :: Lens' ClusterInfo (Maybe Int64)
ciCentroidId
  = lens _ciCentroidId (\ s a -> s{_ciCentroidId = a})
      . mapping _Coerce

instance FromJSON ClusterInfo where
        parseJSON
          = withObject "ClusterInfo"
              (\ o ->
                 ClusterInfo' <$>
                   (o .:? "clusterSize") <*> (o .:? "clusterRadius") <*>
                     (o .:? "centroidId"))

instance ToJSON ClusterInfo where
        toJSON ClusterInfo'{..}
          = object
              (catMaybes
                 [("clusterSize" .=) <$> _ciClusterSize,
                  ("clusterRadius" .=) <$> _ciClusterRadius,
                  ("centroidId" .=) <$> _ciCentroidId])

--
-- /See:/ 'tableDataList' smart constructor.
data TableDataList =
  TableDataList'
    { _tdlEtag :: !(Maybe Text)
    , _tdlKind :: !Text
    , _tdlRows :: !(Maybe [TableRow])
    , _tdlPageToken :: !(Maybe Text)
    , _tdlTotalRows :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableDataList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdlEtag'
--
-- * 'tdlKind'
--
-- * 'tdlRows'
--
-- * 'tdlPageToken'
--
-- * 'tdlTotalRows'
tableDataList
    :: TableDataList
tableDataList =
  TableDataList'
    { _tdlEtag = Nothing
    , _tdlKind = "bigquery#tableDataList"
    , _tdlRows = Nothing
    , _tdlPageToken = Nothing
    , _tdlTotalRows = Nothing
    }


-- | A hash of this page of results.
tdlEtag :: Lens' TableDataList (Maybe Text)
tdlEtag = lens _tdlEtag (\ s a -> s{_tdlEtag = a})

-- | The resource type of the response.
tdlKind :: Lens' TableDataList Text
tdlKind = lens _tdlKind (\ s a -> s{_tdlKind = a})

-- | Rows of results.
tdlRows :: Lens' TableDataList [TableRow]
tdlRows
  = lens _tdlRows (\ s a -> s{_tdlRows = a}) . _Default
      . _Coerce

-- | A token used for paging results. Providing this token instead of the
-- startIndex parameter can help you retrieve stable results when an
-- underlying table is changing.
tdlPageToken :: Lens' TableDataList (Maybe Text)
tdlPageToken
  = lens _tdlPageToken (\ s a -> s{_tdlPageToken = a})

-- | The total number of rows in the complete table.
tdlTotalRows :: Lens' TableDataList (Maybe Int64)
tdlTotalRows
  = lens _tdlTotalRows (\ s a -> s{_tdlTotalRows = a})
      . mapping _Coerce

instance FromJSON TableDataList where
        parseJSON
          = withObject "TableDataList"
              (\ o ->
                 TableDataList' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "bigquery#tableDataList")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "pageToken")
                     <*> (o .:? "totalRows"))

instance ToJSON TableDataList where
        toJSON TableDataList'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tdlEtag, Just ("kind" .= _tdlKind),
                  ("rows" .=) <$> _tdlRows,
                  ("pageToken" .=) <$> _tdlPageToken,
                  ("totalRows" .=) <$> _tdlTotalRows])

--
-- /See:/ 'jobConfigurationTableCopy' smart constructor.
data JobConfigurationTableCopy =
  JobConfigurationTableCopy'
    { _jctcDestinationTable :: !(Maybe TableReference)
    , _jctcDestinationExpirationTime :: !(Maybe JSONValue)
    , _jctcWriteDisPosition :: !(Maybe Text)
    , _jctcSourceTables :: !(Maybe [TableReference])
    , _jctcCreateDisPosition :: !(Maybe Text)
    , _jctcSourceTable :: !(Maybe TableReference)
    , _jctcOperationType :: !(Maybe Text)
    , _jctcDestinationEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobConfigurationTableCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jctcDestinationTable'
--
-- * 'jctcDestinationExpirationTime'
--
-- * 'jctcWriteDisPosition'
--
-- * 'jctcSourceTables'
--
-- * 'jctcCreateDisPosition'
--
-- * 'jctcSourceTable'
--
-- * 'jctcOperationType'
--
-- * 'jctcDestinationEncryptionConfiguration'
jobConfigurationTableCopy
    :: JobConfigurationTableCopy
jobConfigurationTableCopy =
  JobConfigurationTableCopy'
    { _jctcDestinationTable = Nothing
    , _jctcDestinationExpirationTime = Nothing
    , _jctcWriteDisPosition = Nothing
    , _jctcSourceTables = Nothing
    , _jctcCreateDisPosition = Nothing
    , _jctcSourceTable = Nothing
    , _jctcOperationType = Nothing
    , _jctcDestinationEncryptionConfiguration = Nothing
    }


-- | [Required] The destination table
jctcDestinationTable :: Lens' JobConfigurationTableCopy (Maybe TableReference)
jctcDestinationTable
  = lens _jctcDestinationTable
      (\ s a -> s{_jctcDestinationTable = a})

-- | [Optional] The time when the destination table expires. Expired tables
-- will be deleted and their storage reclaimed.
jctcDestinationExpirationTime :: Lens' JobConfigurationTableCopy (Maybe JSONValue)
jctcDestinationExpirationTime
  = lens _jctcDestinationExpirationTime
      (\ s a -> s{_jctcDestinationExpirationTime = a})

-- | [Optional] Specifies the action that occurs if the destination table
-- already exists. The following values are supported: WRITE_TRUNCATE: If
-- the table already exists, BigQuery overwrites the table data.
-- WRITE_APPEND: If the table already exists, BigQuery appends the data to
-- the table. WRITE_EMPTY: If the table already exists and contains data, a
-- \'duplicate\' error is returned in the job result. The default value is
-- WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able
-- to complete the job successfully. Creation, truncation and append
-- actions occur as one atomic update upon job completion.
jctcWriteDisPosition :: Lens' JobConfigurationTableCopy (Maybe Text)
jctcWriteDisPosition
  = lens _jctcWriteDisPosition
      (\ s a -> s{_jctcWriteDisPosition = a})

-- | [Pick one] Source tables to copy.
jctcSourceTables :: Lens' JobConfigurationTableCopy [TableReference]
jctcSourceTables
  = lens _jctcSourceTables
      (\ s a -> s{_jctcSourceTables = a})
      . _Default
      . _Coerce

-- | [Optional] Specifies whether the job is allowed to create new tables.
-- The following values are supported: CREATE_IF_NEEDED: If the table does
-- not exist, BigQuery creates the table. CREATE_NEVER: The table must
-- already exist. If it does not, a \'notFound\' error is returned in the
-- job result. The default value is CREATE_IF_NEEDED. Creation, truncation
-- and append actions occur as one atomic update upon job completion.
jctcCreateDisPosition :: Lens' JobConfigurationTableCopy (Maybe Text)
jctcCreateDisPosition
  = lens _jctcCreateDisPosition
      (\ s a -> s{_jctcCreateDisPosition = a})

-- | [Pick one] Source table to copy.
jctcSourceTable :: Lens' JobConfigurationTableCopy (Maybe TableReference)
jctcSourceTable
  = lens _jctcSourceTable
      (\ s a -> s{_jctcSourceTable = a})

-- | [Optional] Supported operation types in table copy job.
jctcOperationType :: Lens' JobConfigurationTableCopy (Maybe Text)
jctcOperationType
  = lens _jctcOperationType
      (\ s a -> s{_jctcOperationType = a})

-- | Custom encryption configuration (e.g., Cloud KMS keys).
jctcDestinationEncryptionConfiguration :: Lens' JobConfigurationTableCopy (Maybe EncryptionConfiguration)
jctcDestinationEncryptionConfiguration
  = lens _jctcDestinationEncryptionConfiguration
      (\ s a ->
         s{_jctcDestinationEncryptionConfiguration = a})

instance FromJSON JobConfigurationTableCopy where
        parseJSON
          = withObject "JobConfigurationTableCopy"
              (\ o ->
                 JobConfigurationTableCopy' <$>
                   (o .:? "destinationTable") <*>
                     (o .:? "destinationExpirationTime")
                     <*> (o .:? "writeDisposition")
                     <*> (o .:? "sourceTables" .!= mempty)
                     <*> (o .:? "createDisposition")
                     <*> (o .:? "sourceTable")
                     <*> (o .:? "operationType")
                     <*> (o .:? "destinationEncryptionConfiguration"))

instance ToJSON JobConfigurationTableCopy where
        toJSON JobConfigurationTableCopy'{..}
          = object
              (catMaybes
                 [("destinationTable" .=) <$> _jctcDestinationTable,
                  ("destinationExpirationTime" .=) <$>
                    _jctcDestinationExpirationTime,
                  ("writeDisposition" .=) <$> _jctcWriteDisPosition,
                  ("sourceTables" .=) <$> _jctcSourceTables,
                  ("createDisposition" .=) <$> _jctcCreateDisPosition,
                  ("sourceTable" .=) <$> _jctcSourceTable,
                  ("operationType" .=) <$> _jctcOperationType,
                  ("destinationEncryptionConfiguration" .=) <$>
                    _jctcDestinationEncryptionConfiguration])

--
-- /See:/ 'tableListTablesItem' smart constructor.
data TableListTablesItem =
  TableListTablesItem'
    { _tltiCreationTime :: !(Maybe (Textual Int64))
    , _tltiClustering :: !(Maybe Clustering)
    , _tltiRangePartitioning :: !(Maybe RangePartitioning)
    , _tltiTableReference :: !(Maybe TableReference)
    , _tltiFriendlyName :: !(Maybe Text)
    , _tltiKind :: !Text
    , _tltiTimePartitioning :: !(Maybe TimePartitioning)
    , _tltiView :: !(Maybe TableListTablesItemView)
    , _tltiId :: !(Maybe Text)
    , _tltiLabels :: !(Maybe TableListTablesItemLabels)
    , _tltiType :: !(Maybe Text)
    , _tltiExpirationTime :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableListTablesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tltiCreationTime'
--
-- * 'tltiClustering'
--
-- * 'tltiRangePartitioning'
--
-- * 'tltiTableReference'
--
-- * 'tltiFriendlyName'
--
-- * 'tltiKind'
--
-- * 'tltiTimePartitioning'
--
-- * 'tltiView'
--
-- * 'tltiId'
--
-- * 'tltiLabels'
--
-- * 'tltiType'
--
-- * 'tltiExpirationTime'
tableListTablesItem
    :: TableListTablesItem
tableListTablesItem =
  TableListTablesItem'
    { _tltiCreationTime = Nothing
    , _tltiClustering = Nothing
    , _tltiRangePartitioning = Nothing
    , _tltiTableReference = Nothing
    , _tltiFriendlyName = Nothing
    , _tltiKind = "bigquery#table"
    , _tltiTimePartitioning = Nothing
    , _tltiView = Nothing
    , _tltiId = Nothing
    , _tltiLabels = Nothing
    , _tltiType = Nothing
    , _tltiExpirationTime = Nothing
    }


-- | The time when this table was created, in milliseconds since the epoch.
tltiCreationTime :: Lens' TableListTablesItem (Maybe Int64)
tltiCreationTime
  = lens _tltiCreationTime
      (\ s a -> s{_tltiCreationTime = a})
      . mapping _Coerce

-- | [Beta] Clustering specification for this table, if configured.
tltiClustering :: Lens' TableListTablesItem (Maybe Clustering)
tltiClustering
  = lens _tltiClustering
      (\ s a -> s{_tltiClustering = a})

-- | The range partitioning specification for this table, if configured.
tltiRangePartitioning :: Lens' TableListTablesItem (Maybe RangePartitioning)
tltiRangePartitioning
  = lens _tltiRangePartitioning
      (\ s a -> s{_tltiRangePartitioning = a})

-- | A reference uniquely identifying the table.
tltiTableReference :: Lens' TableListTablesItem (Maybe TableReference)
tltiTableReference
  = lens _tltiTableReference
      (\ s a -> s{_tltiTableReference = a})

-- | The user-friendly name for this table.
tltiFriendlyName :: Lens' TableListTablesItem (Maybe Text)
tltiFriendlyName
  = lens _tltiFriendlyName
      (\ s a -> s{_tltiFriendlyName = a})

-- | The resource type.
tltiKind :: Lens' TableListTablesItem Text
tltiKind = lens _tltiKind (\ s a -> s{_tltiKind = a})

-- | The time-based partitioning specification for this table, if configured.
tltiTimePartitioning :: Lens' TableListTablesItem (Maybe TimePartitioning)
tltiTimePartitioning
  = lens _tltiTimePartitioning
      (\ s a -> s{_tltiTimePartitioning = a})

-- | Additional details for a view.
tltiView :: Lens' TableListTablesItem (Maybe TableListTablesItemView)
tltiView = lens _tltiView (\ s a -> s{_tltiView = a})

-- | An opaque ID of the table
tltiId :: Lens' TableListTablesItem (Maybe Text)
tltiId = lens _tltiId (\ s a -> s{_tltiId = a})

-- | The labels associated with this table. You can use these to organize and
-- group your tables.
tltiLabels :: Lens' TableListTablesItem (Maybe TableListTablesItemLabels)
tltiLabels
  = lens _tltiLabels (\ s a -> s{_tltiLabels = a})

-- | The type of table. Possible values are: TABLE, VIEW.
tltiType :: Lens' TableListTablesItem (Maybe Text)
tltiType = lens _tltiType (\ s a -> s{_tltiType = a})

-- | [Optional] The time when this table expires, in milliseconds since the
-- epoch. If not present, the table will persist indefinitely. Expired
-- tables will be deleted and their storage reclaimed.
tltiExpirationTime :: Lens' TableListTablesItem (Maybe Int64)
tltiExpirationTime
  = lens _tltiExpirationTime
      (\ s a -> s{_tltiExpirationTime = a})
      . mapping _Coerce

instance FromJSON TableListTablesItem where
        parseJSON
          = withObject "TableListTablesItem"
              (\ o ->
                 TableListTablesItem' <$>
                   (o .:? "creationTime") <*> (o .:? "clustering") <*>
                     (o .:? "rangePartitioning")
                     <*> (o .:? "tableReference")
                     <*> (o .:? "friendlyName")
                     <*> (o .:? "kind" .!= "bigquery#table")
                     <*> (o .:? "timePartitioning")
                     <*> (o .:? "view")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "type")
                     <*> (o .:? "expirationTime"))

instance ToJSON TableListTablesItem where
        toJSON TableListTablesItem'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _tltiCreationTime,
                  ("clustering" .=) <$> _tltiClustering,
                  ("rangePartitioning" .=) <$> _tltiRangePartitioning,
                  ("tableReference" .=) <$> _tltiTableReference,
                  ("friendlyName" .=) <$> _tltiFriendlyName,
                  Just ("kind" .= _tltiKind),
                  ("timePartitioning" .=) <$> _tltiTimePartitioning,
                  ("view" .=) <$> _tltiView, ("id" .=) <$> _tltiId,
                  ("labels" .=) <$> _tltiLabels,
                  ("type" .=) <$> _tltiType,
                  ("expirationTime" .=) <$> _tltiExpirationTime])

--
-- /See:/ 'tableFieldSchemaPolicyTags' smart constructor.
newtype TableFieldSchemaPolicyTags =
  TableFieldSchemaPolicyTags'
    { _tfsptNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableFieldSchemaPolicyTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfsptNames'
tableFieldSchemaPolicyTags
    :: TableFieldSchemaPolicyTags
tableFieldSchemaPolicyTags = TableFieldSchemaPolicyTags' {_tfsptNames = Nothing}


-- | A list of category resource names. For example,
-- \"projects\/1\/location\/eu\/taxonomies\/2\/policyTags\/3\". At most 1
-- policy tag is allowed.
tfsptNames :: Lens' TableFieldSchemaPolicyTags [Text]
tfsptNames
  = lens _tfsptNames (\ s a -> s{_tfsptNames = a}) .
      _Default
      . _Coerce

instance FromJSON TableFieldSchemaPolicyTags where
        parseJSON
          = withObject "TableFieldSchemaPolicyTags"
              (\ o ->
                 TableFieldSchemaPolicyTags' <$>
                   (o .:? "names" .!= mempty))

instance ToJSON TableFieldSchemaPolicyTags where
        toJSON TableFieldSchemaPolicyTags'{..}
          = object (catMaybes [("names" .=) <$> _tfsptNames])

--
-- /See:/ 'tableSchema' smart constructor.
newtype TableSchema =
  TableSchema'
    { _tsFields :: Maybe [TableFieldSchema]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsFields'
tableSchema
    :: TableSchema
tableSchema = TableSchema' {_tsFields = Nothing}


-- | Describes the fields in a table.
tsFields :: Lens' TableSchema [TableFieldSchema]
tsFields
  = lens _tsFields (\ s a -> s{_tsFields = a}) .
      _Default
      . _Coerce

instance FromJSON TableSchema where
        parseJSON
          = withObject "TableSchema"
              (\ o -> TableSchema' <$> (o .:? "fields" .!= mempty))

instance ToJSON TableSchema where
        toJSON TableSchema'{..}
          = object (catMaybes [("fields" .=) <$> _tsFields])

-- | Specifies the audit configuration for a service. The configuration
-- determines which permission types are logged, and what identities, if
-- any, are exempted from logging. An AuditConfig must have one or more
-- AuditLogConfigs. If there are AuditConfigs for both \`allServices\` and
-- a specific service, the union of the two AuditConfigs is used for that
-- service: the log_types specified in each AuditConfig are enabled, and
-- the exempted_members in each AuditLogConfig are exempted. Example Policy
-- with multiple AuditConfigs: { \"audit_configs\": [ { \"service\":
-- \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\":
-- \"sampleservice.googleapis.com\", \"audit_log_configs\": [ {
-- \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\",
-- \"exempted_members\": [ \"user:aliya\'example.com\" ] } ] } ] } For
-- sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
-- logging. It also exempts jose\'example.com from DATA_READ logging, and
-- aliya\'example.com from DATA_WRITE logging.
--
-- /See:/ 'auditConfig' smart constructor.
data AuditConfig =
  AuditConfig'
    { _acService :: !(Maybe Text)
    , _acAuditLogConfigs :: !(Maybe [AuditLogConfig])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acService'
--
-- * 'acAuditLogConfigs'
auditConfig
    :: AuditConfig
auditConfig = AuditConfig' {_acService = Nothing, _acAuditLogConfigs = Nothing}


-- | Specifies a service that will be enabled for audit logging. For example,
-- \`storage.googleapis.com\`, \`cloudsql.googleapis.com\`. \`allServices\`
-- is a special value that covers all services.
acService :: Lens' AuditConfig (Maybe Text)
acService
  = lens _acService (\ s a -> s{_acService = a})

-- | The configuration for logging of each type of permission.
acAuditLogConfigs :: Lens' AuditConfig [AuditLogConfig]
acAuditLogConfigs
  = lens _acAuditLogConfigs
      (\ s a -> s{_acAuditLogConfigs = a})
      . _Default
      . _Coerce

instance FromJSON AuditConfig where
        parseJSON
          = withObject "AuditConfig"
              (\ o ->
                 AuditConfig' <$>
                   (o .:? "service") <*>
                     (o .:? "auditLogConfigs" .!= mempty))

instance ToJSON AuditConfig where
        toJSON AuditConfig'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _acService,
                  ("auditLogConfigs" .=) <$> _acAuditLogConfigs])

--
-- /See:/ 'projectList' smart constructor.
data ProjectList =
  ProjectList'
    { _plTotalItems :: !(Maybe (Textual Int32))
    , _plEtag :: !(Maybe Text)
    , _plNextPageToken :: !(Maybe Text)
    , _plKind :: !Text
    , _plProjects :: !(Maybe [ProjectListProjectsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plTotalItems'
--
-- * 'plEtag'
--
-- * 'plNextPageToken'
--
-- * 'plKind'
--
-- * 'plProjects'
projectList
    :: ProjectList
projectList =
  ProjectList'
    { _plTotalItems = Nothing
    , _plEtag = Nothing
    , _plNextPageToken = Nothing
    , _plKind = "bigquery#projectList"
    , _plProjects = Nothing
    }


-- | The total number of projects in the list.
plTotalItems :: Lens' ProjectList (Maybe Int32)
plTotalItems
  = lens _plTotalItems (\ s a -> s{_plTotalItems = a})
      . mapping _Coerce

-- | A hash of the page of results
plEtag :: Lens' ProjectList (Maybe Text)
plEtag = lens _plEtag (\ s a -> s{_plEtag = a})

-- | A token to request the next page of results.
plNextPageToken :: Lens' ProjectList (Maybe Text)
plNextPageToken
  = lens _plNextPageToken
      (\ s a -> s{_plNextPageToken = a})

-- | The type of list.
plKind :: Lens' ProjectList Text
plKind = lens _plKind (\ s a -> s{_plKind = a})

-- | Projects to which you have at least READ access.
plProjects :: Lens' ProjectList [ProjectListProjectsItem]
plProjects
  = lens _plProjects (\ s a -> s{_plProjects = a}) .
      _Default
      . _Coerce

instance FromJSON ProjectList where
        parseJSON
          = withObject "ProjectList"
              (\ o ->
                 ProjectList' <$>
                   (o .:? "totalItems") <*> (o .:? "etag") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "kind" .!= "bigquery#projectList")
                     <*> (o .:? "projects" .!= mempty))

instance ToJSON ProjectList where
        toJSON ProjectList'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _plTotalItems,
                  ("etag" .=) <$> _plEtag,
                  ("nextPageToken" .=) <$> _plNextPageToken,
                  Just ("kind" .= _plKind),
                  ("projects" .=) <$> _plProjects])

-- | Arima model information.
--
-- /See:/ 'arimaModelInfo' smart constructor.
data ArimaModelInfo =
  ArimaModelInfo'
    { _amiHasStepChanges :: !(Maybe Bool)
    , _amiHasSpikesAndDips :: !(Maybe Bool)
    , _amiSeasonalPeriods :: !(Maybe [ArimaModelInfoSeasonalPeriodsItem])
    , _amiNonSeasonalOrder :: !(Maybe ArimaOrder)
    , _amiHasDrift :: !(Maybe Bool)
    , _amiArimaCoefficients :: !(Maybe ArimaCoefficients)
    , _amiTimeSeriesIds :: !(Maybe [Text])
    , _amiHasHolidayEffect :: !(Maybe Bool)
    , _amiTimeSeriesId :: !(Maybe Text)
    , _amiArimaFittingMetrics :: !(Maybe ArimaFittingMetrics)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArimaModelInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amiHasStepChanges'
--
-- * 'amiHasSpikesAndDips'
--
-- * 'amiSeasonalPeriods'
--
-- * 'amiNonSeasonalOrder'
--
-- * 'amiHasDrift'
--
-- * 'amiArimaCoefficients'
--
-- * 'amiTimeSeriesIds'
--
-- * 'amiHasHolidayEffect'
--
-- * 'amiTimeSeriesId'
--
-- * 'amiArimaFittingMetrics'
arimaModelInfo
    :: ArimaModelInfo
arimaModelInfo =
  ArimaModelInfo'
    { _amiHasStepChanges = Nothing
    , _amiHasSpikesAndDips = Nothing
    , _amiSeasonalPeriods = Nothing
    , _amiNonSeasonalOrder = Nothing
    , _amiHasDrift = Nothing
    , _amiArimaCoefficients = Nothing
    , _amiTimeSeriesIds = Nothing
    , _amiHasHolidayEffect = Nothing
    , _amiTimeSeriesId = Nothing
    , _amiArimaFittingMetrics = Nothing
    }


-- | If true, step_changes is a part of time series decomposition result.
amiHasStepChanges :: Lens' ArimaModelInfo (Maybe Bool)
amiHasStepChanges
  = lens _amiHasStepChanges
      (\ s a -> s{_amiHasStepChanges = a})

-- | If true, spikes_and_dips is a part of time series decomposition result.
amiHasSpikesAndDips :: Lens' ArimaModelInfo (Maybe Bool)
amiHasSpikesAndDips
  = lens _amiHasSpikesAndDips
      (\ s a -> s{_amiHasSpikesAndDips = a})

-- | Seasonal periods. Repeated because multiple periods are supported for
-- one time series.
amiSeasonalPeriods :: Lens' ArimaModelInfo [ArimaModelInfoSeasonalPeriodsItem]
amiSeasonalPeriods
  = lens _amiSeasonalPeriods
      (\ s a -> s{_amiSeasonalPeriods = a})
      . _Default
      . _Coerce

-- | Non-seasonal order.
amiNonSeasonalOrder :: Lens' ArimaModelInfo (Maybe ArimaOrder)
amiNonSeasonalOrder
  = lens _amiNonSeasonalOrder
      (\ s a -> s{_amiNonSeasonalOrder = a})

-- | Whether Arima model fitted with drift or not. It is always false when d
-- is not 1.
amiHasDrift :: Lens' ArimaModelInfo (Maybe Bool)
amiHasDrift
  = lens _amiHasDrift (\ s a -> s{_amiHasDrift = a})

-- | Arima coefficients.
amiArimaCoefficients :: Lens' ArimaModelInfo (Maybe ArimaCoefficients)
amiArimaCoefficients
  = lens _amiArimaCoefficients
      (\ s a -> s{_amiArimaCoefficients = a})

-- | The tuple of time_series_ids identifying this time series. It will be
-- one of the unique tuples of values present in the time_series_id_columns
-- specified during ARIMA model training. Only present when
-- time_series_id_columns training option was used and the order of values
-- here are same as the order of time_series_id_columns.
amiTimeSeriesIds :: Lens' ArimaModelInfo [Text]
amiTimeSeriesIds
  = lens _amiTimeSeriesIds
      (\ s a -> s{_amiTimeSeriesIds = a})
      . _Default
      . _Coerce

-- | If true, holiday_effect is a part of time series decomposition result.
amiHasHolidayEffect :: Lens' ArimaModelInfo (Maybe Bool)
amiHasHolidayEffect
  = lens _amiHasHolidayEffect
      (\ s a -> s{_amiHasHolidayEffect = a})

-- | The time_series_id value for this time series. It will be one of the
-- unique values from the time_series_id_column specified during ARIMA
-- model training. Only present when time_series_id_column training option
-- was used.
amiTimeSeriesId :: Lens' ArimaModelInfo (Maybe Text)
amiTimeSeriesId
  = lens _amiTimeSeriesId
      (\ s a -> s{_amiTimeSeriesId = a})

-- | Arima fitting metrics.
amiArimaFittingMetrics :: Lens' ArimaModelInfo (Maybe ArimaFittingMetrics)
amiArimaFittingMetrics
  = lens _amiArimaFittingMetrics
      (\ s a -> s{_amiArimaFittingMetrics = a})

instance FromJSON ArimaModelInfo where
        parseJSON
          = withObject "ArimaModelInfo"
              (\ o ->
                 ArimaModelInfo' <$>
                   (o .:? "hasStepChanges") <*>
                     (o .:? "hasSpikesAndDips")
                     <*> (o .:? "seasonalPeriods" .!= mempty)
                     <*> (o .:? "nonSeasonalOrder")
                     <*> (o .:? "hasDrift")
                     <*> (o .:? "arimaCoefficients")
                     <*> (o .:? "timeSeriesIds" .!= mempty)
                     <*> (o .:? "hasHolidayEffect")
                     <*> (o .:? "timeSeriesId")
                     <*> (o .:? "arimaFittingMetrics"))

instance ToJSON ArimaModelInfo where
        toJSON ArimaModelInfo'{..}
          = object
              (catMaybes
                 [("hasStepChanges" .=) <$> _amiHasStepChanges,
                  ("hasSpikesAndDips" .=) <$> _amiHasSpikesAndDips,
                  ("seasonalPeriods" .=) <$> _amiSeasonalPeriods,
                  ("nonSeasonalOrder" .=) <$> _amiNonSeasonalOrder,
                  ("hasDrift" .=) <$> _amiHasDrift,
                  ("arimaCoefficients" .=) <$> _amiArimaCoefficients,
                  ("timeSeriesIds" .=) <$> _amiTimeSeriesIds,
                  ("hasHolidayEffect" .=) <$> _amiHasHolidayEffect,
                  ("timeSeriesId" .=) <$> _amiTimeSeriesId,
                  ("arimaFittingMetrics" .=) <$>
                    _amiArimaFittingMetrics])

--
-- /See:/ 'rowLevelSecurityStatistics' smart constructor.
newtype RowLevelSecurityStatistics =
  RowLevelSecurityStatistics'
    { _rlssRowLevelSecurityApplied :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RowLevelSecurityStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlssRowLevelSecurityApplied'
rowLevelSecurityStatistics
    :: RowLevelSecurityStatistics
rowLevelSecurityStatistics =
  RowLevelSecurityStatistics' {_rlssRowLevelSecurityApplied = Nothing}


-- | [Output-only] [Preview] Whether any accessed data was protected by row
-- access policies.
rlssRowLevelSecurityApplied :: Lens' RowLevelSecurityStatistics (Maybe Bool)
rlssRowLevelSecurityApplied
  = lens _rlssRowLevelSecurityApplied
      (\ s a -> s{_rlssRowLevelSecurityApplied = a})

instance FromJSON RowLevelSecurityStatistics where
        parseJSON
          = withObject "RowLevelSecurityStatistics"
              (\ o ->
                 RowLevelSecurityStatistics' <$>
                   (o .:? "rowLevelSecurityApplied"))

instance ToJSON RowLevelSecurityStatistics where
        toJSON RowLevelSecurityStatistics'{..}
          = object
              (catMaybes
                 [("rowLevelSecurityApplied" .=) <$>
                    _rlssRowLevelSecurityApplied])

-- | Representative value of a single feature within the cluster.
--
-- /See:/ 'featureValue' smart constructor.
data FeatureValue =
  FeatureValue'
    { _fvFeatureColumn :: !(Maybe Text)
    , _fvNumericalValue :: !(Maybe (Textual Double))
    , _fvCategoricalValue :: !(Maybe CategoricalValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FeatureValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fvFeatureColumn'
--
-- * 'fvNumericalValue'
--
-- * 'fvCategoricalValue'
featureValue
    :: FeatureValue
featureValue =
  FeatureValue'
    { _fvFeatureColumn = Nothing
    , _fvNumericalValue = Nothing
    , _fvCategoricalValue = Nothing
    }


-- | The feature column name.
fvFeatureColumn :: Lens' FeatureValue (Maybe Text)
fvFeatureColumn
  = lens _fvFeatureColumn
      (\ s a -> s{_fvFeatureColumn = a})

-- | The numerical feature value. This is the centroid value for this
-- feature.
fvNumericalValue :: Lens' FeatureValue (Maybe Double)
fvNumericalValue
  = lens _fvNumericalValue
      (\ s a -> s{_fvNumericalValue = a})
      . mapping _Coerce

-- | The categorical feature value.
fvCategoricalValue :: Lens' FeatureValue (Maybe CategoricalValue)
fvCategoricalValue
  = lens _fvCategoricalValue
      (\ s a -> s{_fvCategoricalValue = a})

instance FromJSON FeatureValue where
        parseJSON
          = withObject "FeatureValue"
              (\ o ->
                 FeatureValue' <$>
                   (o .:? "featureColumn") <*> (o .:? "numericalValue")
                     <*> (o .:? "categoricalValue"))

instance ToJSON FeatureValue where
        toJSON FeatureValue'{..}
          = object
              (catMaybes
                 [("featureColumn" .=) <$> _fvFeatureColumn,
                  ("numericalValue" .=) <$> _fvNumericalValue,
                  ("categoricalValue" .=) <$> _fvCategoricalValue])

--
-- /See:/ 'explainQueryStep' smart constructor.
data ExplainQueryStep =
  ExplainQueryStep'
    { _eqsSubsteps :: !(Maybe [Text])
    , _eqsKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExplainQueryStep' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eqsSubsteps'
--
-- * 'eqsKind'
explainQueryStep
    :: ExplainQueryStep
explainQueryStep =
  ExplainQueryStep' {_eqsSubsteps = Nothing, _eqsKind = Nothing}


-- | Human-readable stage descriptions.
eqsSubsteps :: Lens' ExplainQueryStep [Text]
eqsSubsteps
  = lens _eqsSubsteps (\ s a -> s{_eqsSubsteps = a}) .
      _Default
      . _Coerce

-- | Machine-readable operation type.
eqsKind :: Lens' ExplainQueryStep (Maybe Text)
eqsKind = lens _eqsKind (\ s a -> s{_eqsKind = a})

instance FromJSON ExplainQueryStep where
        parseJSON
          = withObject "ExplainQueryStep"
              (\ o ->
                 ExplainQueryStep' <$>
                   (o .:? "substeps" .!= mempty) <*> (o .:? "kind"))

instance ToJSON ExplainQueryStep where
        toJSON ExplainQueryStep'{..}
          = object
              (catMaybes
                 [("substeps" .=) <$> _eqsSubsteps,
                  ("kind" .=) <$> _eqsKind])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

-- | A field or a column.
--
-- /See:/ 'standardSQLField' smart constructor.
data StandardSQLField =
  StandardSQLField'
    { _ssqlfName :: !(Maybe Text)
    , _ssqlfType :: !(Maybe StandardSQLDataType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StandardSQLField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssqlfName'
--
-- * 'ssqlfType'
standardSQLField
    :: StandardSQLField
standardSQLField =
  StandardSQLField' {_ssqlfName = Nothing, _ssqlfType = Nothing}


-- | Optional. The name of this field. Can be absent for struct fields.
ssqlfName :: Lens' StandardSQLField (Maybe Text)
ssqlfName
  = lens _ssqlfName (\ s a -> s{_ssqlfName = a})

-- | Optional. The type of this parameter. Absent if not explicitly specified
-- (e.g., CREATE FUNCTION statement can omit the return type; in this case
-- the output parameter does not have this \"type\" field).
ssqlfType :: Lens' StandardSQLField (Maybe StandardSQLDataType)
ssqlfType
  = lens _ssqlfType (\ s a -> s{_ssqlfType = a})

instance FromJSON StandardSQLField where
        parseJSON
          = withObject "StandardSQLField"
              (\ o ->
                 StandardSQLField' <$>
                   (o .:? "name") <*> (o .:? "type"))

instance ToJSON StandardSQLField where
        toJSON StandardSQLField'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ssqlfName,
                  ("type" .=) <$> _ssqlfType])

--
-- /See:/ 'queryTimelineSample' smart constructor.
data QueryTimelineSample =
  QueryTimelineSample'
    { _qtsPendingUnits :: !(Maybe (Textual Int64))
    , _qtsTotalSlotMs :: !(Maybe (Textual Int64))
    , _qtsActiveUnits :: !(Maybe (Textual Int64))
    , _qtsElapsedMs :: !(Maybe (Textual Int64))
    , _qtsCompletedUnits :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryTimelineSample' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qtsPendingUnits'
--
-- * 'qtsTotalSlotMs'
--
-- * 'qtsActiveUnits'
--
-- * 'qtsElapsedMs'
--
-- * 'qtsCompletedUnits'
queryTimelineSample
    :: QueryTimelineSample
queryTimelineSample =
  QueryTimelineSample'
    { _qtsPendingUnits = Nothing
    , _qtsTotalSlotMs = Nothing
    , _qtsActiveUnits = Nothing
    , _qtsElapsedMs = Nothing
    , _qtsCompletedUnits = Nothing
    }


-- | Total parallel units of work remaining for the active stages.
qtsPendingUnits :: Lens' QueryTimelineSample (Maybe Int64)
qtsPendingUnits
  = lens _qtsPendingUnits
      (\ s a -> s{_qtsPendingUnits = a})
      . mapping _Coerce

-- | Cumulative slot-ms consumed by the query.
qtsTotalSlotMs :: Lens' QueryTimelineSample (Maybe Int64)
qtsTotalSlotMs
  = lens _qtsTotalSlotMs
      (\ s a -> s{_qtsTotalSlotMs = a})
      . mapping _Coerce

-- | Total number of units currently being processed by workers. This does
-- not correspond directly to slot usage. This is the largest value
-- observed since the last sample.
qtsActiveUnits :: Lens' QueryTimelineSample (Maybe Int64)
qtsActiveUnits
  = lens _qtsActiveUnits
      (\ s a -> s{_qtsActiveUnits = a})
      . mapping _Coerce

-- | Milliseconds elapsed since the start of query execution.
qtsElapsedMs :: Lens' QueryTimelineSample (Maybe Int64)
qtsElapsedMs
  = lens _qtsElapsedMs (\ s a -> s{_qtsElapsedMs = a})
      . mapping _Coerce

-- | Total parallel units of work completed by this query.
qtsCompletedUnits :: Lens' QueryTimelineSample (Maybe Int64)
qtsCompletedUnits
  = lens _qtsCompletedUnits
      (\ s a -> s{_qtsCompletedUnits = a})
      . mapping _Coerce

instance FromJSON QueryTimelineSample where
        parseJSON
          = withObject "QueryTimelineSample"
              (\ o ->
                 QueryTimelineSample' <$>
                   (o .:? "pendingUnits") <*> (o .:? "totalSlotMs") <*>
                     (o .:? "activeUnits")
                     <*> (o .:? "elapsedMs")
                     <*> (o .:? "completedUnits"))

instance ToJSON QueryTimelineSample where
        toJSON QueryTimelineSample'{..}
          = object
              (catMaybes
                 [("pendingUnits" .=) <$> _qtsPendingUnits,
                  ("totalSlotMs" .=) <$> _qtsTotalSlotMs,
                  ("activeUnits" .=) <$> _qtsActiveUnits,
                  ("elapsedMs" .=) <$> _qtsElapsedMs,
                  ("completedUnits" .=) <$> _qtsCompletedUnits])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
newtype GetIAMPolicyRequest =
  GetIAMPolicyRequest'
    { _giprOptions :: Maybe GetPolicyOptions
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprOptions'
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest' {_giprOptions = Nothing}


-- | OPTIONAL: A \`GetPolicyOptions\` object for specifying options to
-- \`GetIamPolicy\`.
giprOptions :: Lens' GetIAMPolicyRequest (Maybe GetPolicyOptions)
giprOptions
  = lens _giprOptions (\ s a -> s{_giprOptions = a})

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> GetIAMPolicyRequest' <$> (o .:? "options"))

instance ToJSON GetIAMPolicyRequest where
        toJSON GetIAMPolicyRequest'{..}
          = object
              (catMaybes [("options" .=) <$> _giprOptions])

--
-- /See:/ 'queryParameterTypeStructTypesItem' smart constructor.
data QueryParameterTypeStructTypesItem =
  QueryParameterTypeStructTypesItem'
    { _qptstiName :: !(Maybe Text)
    , _qptstiType :: !(Maybe QueryParameterType)
    , _qptstiDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryParameterTypeStructTypesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qptstiName'
--
-- * 'qptstiType'
--
-- * 'qptstiDescription'
queryParameterTypeStructTypesItem
    :: QueryParameterTypeStructTypesItem
queryParameterTypeStructTypesItem =
  QueryParameterTypeStructTypesItem'
    {_qptstiName = Nothing, _qptstiType = Nothing, _qptstiDescription = Nothing}


-- | [Optional] The name of this field.
qptstiName :: Lens' QueryParameterTypeStructTypesItem (Maybe Text)
qptstiName
  = lens _qptstiName (\ s a -> s{_qptstiName = a})

-- | [Required] The type of this field.
qptstiType :: Lens' QueryParameterTypeStructTypesItem (Maybe QueryParameterType)
qptstiType
  = lens _qptstiType (\ s a -> s{_qptstiType = a})

-- | [Optional] Human-oriented description of the field.
qptstiDescription :: Lens' QueryParameterTypeStructTypesItem (Maybe Text)
qptstiDescription
  = lens _qptstiDescription
      (\ s a -> s{_qptstiDescription = a})

instance FromJSON QueryParameterTypeStructTypesItem
         where
        parseJSON
          = withObject "QueryParameterTypeStructTypesItem"
              (\ o ->
                 QueryParameterTypeStructTypesItem' <$>
                   (o .:? "name") <*> (o .:? "type") <*>
                     (o .:? "description"))

instance ToJSON QueryParameterTypeStructTypesItem
         where
        toJSON QueryParameterTypeStructTypesItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _qptstiName,
                  ("type" .=) <$> _qptstiType,
                  ("description" .=) <$> _qptstiDescription])

-- | Message containing the information about one cluster.
--
-- /See:/ 'cluster' smart constructor.
data Cluster =
  Cluster'
    { _cFeatureValues :: !(Maybe [FeatureValue])
    , _cCount :: !(Maybe (Textual Int64))
    , _cCentroidId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cFeatureValues'
--
-- * 'cCount'
--
-- * 'cCentroidId'
cluster
    :: Cluster
cluster =
  Cluster'
    {_cFeatureValues = Nothing, _cCount = Nothing, _cCentroidId = Nothing}


-- | Values of highly variant features for this cluster.
cFeatureValues :: Lens' Cluster [FeatureValue]
cFeatureValues
  = lens _cFeatureValues
      (\ s a -> s{_cFeatureValues = a})
      . _Default
      . _Coerce

-- | Count of training data rows that were assigned to this cluster.
cCount :: Lens' Cluster (Maybe Int64)
cCount
  = lens _cCount (\ s a -> s{_cCount = a}) .
      mapping _Coerce

-- | Centroid id.
cCentroidId :: Lens' Cluster (Maybe Int64)
cCentroidId
  = lens _cCentroidId (\ s a -> s{_cCentroidId = a}) .
      mapping _Coerce

instance FromJSON Cluster where
        parseJSON
          = withObject "Cluster"
              (\ o ->
                 Cluster' <$>
                   (o .:? "featureValues" .!= mempty) <*>
                     (o .:? "count")
                     <*> (o .:? "centroidId"))

instance ToJSON Cluster where
        toJSON Cluster'{..}
          = object
              (catMaybes
                 [("featureValues" .=) <$> _cFeatureValues,
                  ("count" .=) <$> _cCount,
                  ("centroidId" .=) <$> _cCentroidId])

--
-- /See:/ 'bigtableColumnFamily' smart constructor.
data BigtableColumnFamily =
  BigtableColumnFamily'
    { _bcfFamilyId :: !(Maybe Text)
    , _bcfColumns :: !(Maybe [BigtableColumn])
    , _bcfOnlyReadLatest :: !(Maybe Bool)
    , _bcfType :: !(Maybe Text)
    , _bcfEncoding :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BigtableColumnFamily' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcfFamilyId'
--
-- * 'bcfColumns'
--
-- * 'bcfOnlyReadLatest'
--
-- * 'bcfType'
--
-- * 'bcfEncoding'
bigtableColumnFamily
    :: BigtableColumnFamily
bigtableColumnFamily =
  BigtableColumnFamily'
    { _bcfFamilyId = Nothing
    , _bcfColumns = Nothing
    , _bcfOnlyReadLatest = Nothing
    , _bcfType = Nothing
    , _bcfEncoding = Nothing
    }


-- | Identifier of the column family.
bcfFamilyId :: Lens' BigtableColumnFamily (Maybe Text)
bcfFamilyId
  = lens _bcfFamilyId (\ s a -> s{_bcfFamilyId = a})

-- | [Optional] Lists of columns that should be exposed as individual fields
-- as opposed to a list of (column name, value) pairs. All columns whose
-- qualifier matches a qualifier in this list can be accessed as .. Other
-- columns can be accessed as a list through .Column field.
bcfColumns :: Lens' BigtableColumnFamily [BigtableColumn]
bcfColumns
  = lens _bcfColumns (\ s a -> s{_bcfColumns = a}) .
      _Default
      . _Coerce

-- | [Optional] If this is set only the latest version of value are exposed
-- for all columns in this column family. This can be overridden for a
-- specific column by listing that column in \'columns\' and specifying a
-- different setting for that column.
bcfOnlyReadLatest :: Lens' BigtableColumnFamily (Maybe Bool)
bcfOnlyReadLatest
  = lens _bcfOnlyReadLatest
      (\ s a -> s{_bcfOnlyReadLatest = a})

-- | [Optional] The type to convert the value in cells of this column family.
-- The values are expected to be encoded using HBase Bytes.toBytes function
-- when using the BINARY encoding value. Following BigQuery types are
-- allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default
-- type is BYTES. This can be overridden for a specific column by listing
-- that column in \'columns\' and specifying a type for it.
bcfType :: Lens' BigtableColumnFamily (Maybe Text)
bcfType = lens _bcfType (\ s a -> s{_bcfType = a})

-- | [Optional] The encoding of the values when the type is not STRING.
-- Acceptable encoding values are: TEXT - indicates values are alphanumeric
-- text strings. BINARY - indicates values are encoded using HBase
-- Bytes.toBytes family of functions. This can be overridden for a specific
-- column by listing that column in \'columns\' and specifying an encoding
-- for it.
bcfEncoding :: Lens' BigtableColumnFamily (Maybe Text)
bcfEncoding
  = lens _bcfEncoding (\ s a -> s{_bcfEncoding = a})

instance FromJSON BigtableColumnFamily where
        parseJSON
          = withObject "BigtableColumnFamily"
              (\ o ->
                 BigtableColumnFamily' <$>
                   (o .:? "familyId") <*> (o .:? "columns" .!= mempty)
                     <*> (o .:? "onlyReadLatest")
                     <*> (o .:? "type")
                     <*> (o .:? "encoding"))

instance ToJSON BigtableColumnFamily where
        toJSON BigtableColumnFamily'{..}
          = object
              (catMaybes
                 [("familyId" .=) <$> _bcfFamilyId,
                  ("columns" .=) <$> _bcfColumns,
                  ("onlyReadLatest" .=) <$> _bcfOnlyReadLatest,
                  ("type" .=) <$> _bcfType,
                  ("encoding" .=) <$> _bcfEncoding])

--
-- /See:/ 'jobStatistics' smart constructor.
data JobStatistics =
  JobStatistics'
    { _jsCreationTime :: !(Maybe (Textual Int64))
    , _jsRowLevelSecurityStatistics :: !(Maybe RowLevelSecurityStatistics)
    , _jsReservationId :: !(Maybe Text)
    , _jsStartTime :: !(Maybe (Textual Int64))
    , _jsCompletionRatio :: !(Maybe (Textual Double))
    , _jsSessionInfo :: !(Maybe SessionInfo)
    , _jsNumChildJobs :: !(Maybe (Textual Int64))
    , _jsTotalSlotMs :: !(Maybe (Textual Int64))
    , _jsLoad :: !(Maybe JobStatistics3)
    , _jsTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _jsQuotaDeferments :: !(Maybe [Text])
    , _jsEndTime :: !(Maybe (Textual Int64))
    , _jsQuery :: !(Maybe JobStatistics2)
    , _jsScriptStatistics :: !(Maybe ScriptStatistics)
    , _jsTransactionInfo :: !(Maybe TransactionInfo)
    , _jsExtract :: !(Maybe JobStatistics4)
    , _jsReservationUsage :: !(Maybe [JobStatisticsReservationUsageItem])
    , _jsParentJobId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsCreationTime'
--
-- * 'jsRowLevelSecurityStatistics'
--
-- * 'jsReservationId'
--
-- * 'jsStartTime'
--
-- * 'jsCompletionRatio'
--
-- * 'jsSessionInfo'
--
-- * 'jsNumChildJobs'
--
-- * 'jsTotalSlotMs'
--
-- * 'jsLoad'
--
-- * 'jsTotalBytesProcessed'
--
-- * 'jsQuotaDeferments'
--
-- * 'jsEndTime'
--
-- * 'jsQuery'
--
-- * 'jsScriptStatistics'
--
-- * 'jsTransactionInfo'
--
-- * 'jsExtract'
--
-- * 'jsReservationUsage'
--
-- * 'jsParentJobId'
jobStatistics
    :: JobStatistics
jobStatistics =
  JobStatistics'
    { _jsCreationTime = Nothing
    , _jsRowLevelSecurityStatistics = Nothing
    , _jsReservationId = Nothing
    , _jsStartTime = Nothing
    , _jsCompletionRatio = Nothing
    , _jsSessionInfo = Nothing
    , _jsNumChildJobs = Nothing
    , _jsTotalSlotMs = Nothing
    , _jsLoad = Nothing
    , _jsTotalBytesProcessed = Nothing
    , _jsQuotaDeferments = Nothing
    , _jsEndTime = Nothing
    , _jsQuery = Nothing
    , _jsScriptStatistics = Nothing
    , _jsTransactionInfo = Nothing
    , _jsExtract = Nothing
    , _jsReservationUsage = Nothing
    , _jsParentJobId = Nothing
    }


-- | [Output-only] Creation time of this job, in milliseconds since the
-- epoch. This field will be present on all jobs.
jsCreationTime :: Lens' JobStatistics (Maybe Int64)
jsCreationTime
  = lens _jsCreationTime
      (\ s a -> s{_jsCreationTime = a})
      . mapping _Coerce

-- | [Output-only] [Preview] Statistics for row-level security. Present only
-- for query and extract jobs.
jsRowLevelSecurityStatistics :: Lens' JobStatistics (Maybe RowLevelSecurityStatistics)
jsRowLevelSecurityStatistics
  = lens _jsRowLevelSecurityStatistics
      (\ s a -> s{_jsRowLevelSecurityStatistics = a})

-- | [Output-only] Name of the primary reservation assigned to this job. Note
-- that this could be different than reservations reported in the
-- reservation usage field if parent reservations were used to execute this
-- job.
jsReservationId :: Lens' JobStatistics (Maybe Text)
jsReservationId
  = lens _jsReservationId
      (\ s a -> s{_jsReservationId = a})

-- | [Output-only] Start time of this job, in milliseconds since the epoch.
-- This field will be present when the job transitions from the PENDING
-- state to either RUNNING or DONE.
jsStartTime :: Lens' JobStatistics (Maybe Int64)
jsStartTime
  = lens _jsStartTime (\ s a -> s{_jsStartTime = a}) .
      mapping _Coerce

-- | [TrustedTester] [Output-only] Job progress (0.0 -> 1.0) for LOAD and
-- EXTRACT jobs.
jsCompletionRatio :: Lens' JobStatistics (Maybe Double)
jsCompletionRatio
  = lens _jsCompletionRatio
      (\ s a -> s{_jsCompletionRatio = a})
      . mapping _Coerce

-- | [Output-only] [Preview] Information of the session if this job is part
-- of one.
jsSessionInfo :: Lens' JobStatistics (Maybe SessionInfo)
jsSessionInfo
  = lens _jsSessionInfo
      (\ s a -> s{_jsSessionInfo = a})

-- | [Output-only] Number of child jobs executed.
jsNumChildJobs :: Lens' JobStatistics (Maybe Int64)
jsNumChildJobs
  = lens _jsNumChildJobs
      (\ s a -> s{_jsNumChildJobs = a})
      . mapping _Coerce

-- | [Output-only] Slot-milliseconds for the job.
jsTotalSlotMs :: Lens' JobStatistics (Maybe Int64)
jsTotalSlotMs
  = lens _jsTotalSlotMs
      (\ s a -> s{_jsTotalSlotMs = a})
      . mapping _Coerce

-- | [Output-only] Statistics for a load job.
jsLoad :: Lens' JobStatistics (Maybe JobStatistics3)
jsLoad = lens _jsLoad (\ s a -> s{_jsLoad = a})

-- | [Output-only] [Deprecated] Use the bytes processed in the query
-- statistics instead.
jsTotalBytesProcessed :: Lens' JobStatistics (Maybe Int64)
jsTotalBytesProcessed
  = lens _jsTotalBytesProcessed
      (\ s a -> s{_jsTotalBytesProcessed = a})
      . mapping _Coerce

-- | [Output-only] Quotas which delayed this job\'s start time.
jsQuotaDeferments :: Lens' JobStatistics [Text]
jsQuotaDeferments
  = lens _jsQuotaDeferments
      (\ s a -> s{_jsQuotaDeferments = a})
      . _Default
      . _Coerce

-- | [Output-only] End time of this job, in milliseconds since the epoch.
-- This field will be present whenever a job is in the DONE state.
jsEndTime :: Lens' JobStatistics (Maybe Int64)
jsEndTime
  = lens _jsEndTime (\ s a -> s{_jsEndTime = a}) .
      mapping _Coerce

-- | [Output-only] Statistics for a query job.
jsQuery :: Lens' JobStatistics (Maybe JobStatistics2)
jsQuery = lens _jsQuery (\ s a -> s{_jsQuery = a})

-- | [Output-only] Statistics for a child job of a script.
jsScriptStatistics :: Lens' JobStatistics (Maybe ScriptStatistics)
jsScriptStatistics
  = lens _jsScriptStatistics
      (\ s a -> s{_jsScriptStatistics = a})

-- | [Output-only] [Alpha] Information of the multi-statement transaction if
-- this job is part of one.
jsTransactionInfo :: Lens' JobStatistics (Maybe TransactionInfo)
jsTransactionInfo
  = lens _jsTransactionInfo
      (\ s a -> s{_jsTransactionInfo = a})

-- | [Output-only] Statistics for an extract job.
jsExtract :: Lens' JobStatistics (Maybe JobStatistics4)
jsExtract
  = lens _jsExtract (\ s a -> s{_jsExtract = a})

-- | [Output-only] Job resource usage breakdown by reservation.
jsReservationUsage :: Lens' JobStatistics [JobStatisticsReservationUsageItem]
jsReservationUsage
  = lens _jsReservationUsage
      (\ s a -> s{_jsReservationUsage = a})
      . _Default
      . _Coerce

-- | [Output-only] If this is a child job, the id of the parent.
jsParentJobId :: Lens' JobStatistics (Maybe Text)
jsParentJobId
  = lens _jsParentJobId
      (\ s a -> s{_jsParentJobId = a})

instance FromJSON JobStatistics where
        parseJSON
          = withObject "JobStatistics"
              (\ o ->
                 JobStatistics' <$>
                   (o .:? "creationTime") <*>
                     (o .:? "rowLevelSecurityStatistics")
                     <*> (o .:? "reservation_id")
                     <*> (o .:? "startTime")
                     <*> (o .:? "completionRatio")
                     <*> (o .:? "sessionInfo")
                     <*> (o .:? "numChildJobs")
                     <*> (o .:? "totalSlotMs")
                     <*> (o .:? "load")
                     <*> (o .:? "totalBytesProcessed")
                     <*> (o .:? "quotaDeferments" .!= mempty)
                     <*> (o .:? "endTime")
                     <*> (o .:? "query")
                     <*> (o .:? "scriptStatistics")
                     <*> (o .:? "transactionInfo")
                     <*> (o .:? "extract")
                     <*> (o .:? "reservationUsage" .!= mempty)
                     <*> (o .:? "parentJobId"))

instance ToJSON JobStatistics where
        toJSON JobStatistics'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _jsCreationTime,
                  ("rowLevelSecurityStatistics" .=) <$>
                    _jsRowLevelSecurityStatistics,
                  ("reservation_id" .=) <$> _jsReservationId,
                  ("startTime" .=) <$> _jsStartTime,
                  ("completionRatio" .=) <$> _jsCompletionRatio,
                  ("sessionInfo" .=) <$> _jsSessionInfo,
                  ("numChildJobs" .=) <$> _jsNumChildJobs,
                  ("totalSlotMs" .=) <$> _jsTotalSlotMs,
                  ("load" .=) <$> _jsLoad,
                  ("totalBytesProcessed" .=) <$>
                    _jsTotalBytesProcessed,
                  ("quotaDeferments" .=) <$> _jsQuotaDeferments,
                  ("endTime" .=) <$> _jsEndTime,
                  ("query" .=) <$> _jsQuery,
                  ("scriptStatistics" .=) <$> _jsScriptStatistics,
                  ("transactionInfo" .=) <$> _jsTransactionInfo,
                  ("extract" .=) <$> _jsExtract,
                  ("reservationUsage" .=) <$> _jsReservationUsage,
                  ("parentJobId" .=) <$> _jsParentJobId])

-- | The labels associated with this job. You can use these to organize and
-- group your jobs. Label keys and values can be no longer than 63
-- characters, can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter and each label
-- in the list must have a different key.
--
-- /See:/ 'jobConfigurationLabels' smart constructor.
newtype JobConfigurationLabels =
  JobConfigurationLabels'
    { _jclAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobConfigurationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jclAddtional'
jobConfigurationLabels
    :: HashMap Text Text -- ^ 'jclAddtional'
    -> JobConfigurationLabels
jobConfigurationLabels pJclAddtional_ =
  JobConfigurationLabels' {_jclAddtional = _Coerce # pJclAddtional_}


jclAddtional :: Lens' JobConfigurationLabels (HashMap Text Text)
jclAddtional
  = lens _jclAddtional (\ s a -> s{_jclAddtional = a})
      . _Coerce

instance FromJSON JobConfigurationLabels where
        parseJSON
          = withObject "JobConfigurationLabels"
              (\ o ->
                 JobConfigurationLabels' <$> (parseJSONObject o))

instance ToJSON JobConfigurationLabels where
        toJSON = toJSON . _jclAddtional

--
-- /See:/ 'dataSet' smart constructor.
data DataSet =
  DataSet'
    { _dsCreationTime :: !(Maybe (Textual Int64))
    , _dsDefaultPartitionExpirationMs :: !(Maybe (Textual Int64))
    , _dsAccess :: !(Maybe [DataSetAccessItem])
    , _dsSatisfiesPZS :: !(Maybe Bool)
    , _dsDefaultEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    , _dsEtag :: !(Maybe Text)
    , _dsLocation :: !(Maybe Text)
    , _dsFriendlyName :: !(Maybe Text)
    , _dsKind :: !Text
    , _dsLastModifiedTime :: !(Maybe (Textual Int64))
    , _dsDataSetReference :: !(Maybe DataSetReference)
    , _dsSelfLink :: !(Maybe Text)
    , _dsId :: !(Maybe Text)
    , _dsLabels :: !(Maybe DataSetLabels)
    , _dsDefaultTableExpirationMs :: !(Maybe (Textual Int64))
    , _dsDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsCreationTime'
--
-- * 'dsDefaultPartitionExpirationMs'
--
-- * 'dsAccess'
--
-- * 'dsSatisfiesPZS'
--
-- * 'dsDefaultEncryptionConfiguration'
--
-- * 'dsEtag'
--
-- * 'dsLocation'
--
-- * 'dsFriendlyName'
--
-- * 'dsKind'
--
-- * 'dsLastModifiedTime'
--
-- * 'dsDataSetReference'
--
-- * 'dsSelfLink'
--
-- * 'dsId'
--
-- * 'dsLabels'
--
-- * 'dsDefaultTableExpirationMs'
--
-- * 'dsDescription'
dataSet
    :: DataSet
dataSet =
  DataSet'
    { _dsCreationTime = Nothing
    , _dsDefaultPartitionExpirationMs = Nothing
    , _dsAccess = Nothing
    , _dsSatisfiesPZS = Nothing
    , _dsDefaultEncryptionConfiguration = Nothing
    , _dsEtag = Nothing
    , _dsLocation = Nothing
    , _dsFriendlyName = Nothing
    , _dsKind = "bigquery#dataset"
    , _dsLastModifiedTime = Nothing
    , _dsDataSetReference = Nothing
    , _dsSelfLink = Nothing
    , _dsId = Nothing
    , _dsLabels = Nothing
    , _dsDefaultTableExpirationMs = Nothing
    , _dsDescription = Nothing
    }


-- | [Output-only] The time when this dataset was created, in milliseconds
-- since the epoch.
dsCreationTime :: Lens' DataSet (Maybe Int64)
dsCreationTime
  = lens _dsCreationTime
      (\ s a -> s{_dsCreationTime = a})
      . mapping _Coerce

-- | [Optional] The default partition expiration for all partitioned tables
-- in the dataset, in milliseconds. Once this property is set, all
-- newly-created partitioned tables in the dataset will have an
-- expirationMs property in the timePartitioning settings set to this
-- value, and changing the value will only affect new tables, not existing
-- ones. The storage in a partition will have an expiration time of its
-- partition time plus this value. Setting this property overrides the use
-- of defaultTableExpirationMs for partitioned tables: only one of
-- defaultTableExpirationMs and defaultPartitionExpirationMs will be used
-- for any new partitioned table. If you provide an explicit
-- timePartitioning.expirationMs when creating or updating a partitioned
-- table, that value takes precedence over the default partition expiration
-- time indicated by this property.
dsDefaultPartitionExpirationMs :: Lens' DataSet (Maybe Int64)
dsDefaultPartitionExpirationMs
  = lens _dsDefaultPartitionExpirationMs
      (\ s a -> s{_dsDefaultPartitionExpirationMs = a})
      . mapping _Coerce

-- | [Optional] An array of objects that define dataset access for one or
-- more entities. You can set this property when inserting or updating a
-- dataset in order to control who is allowed to access the data. If
-- unspecified at dataset creation time, BigQuery adds default dataset
-- access for the following entities: access.specialGroup: projectReaders;
-- access.role: READER; access.specialGroup: projectWriters; access.role:
-- WRITER; access.specialGroup: projectOwners; access.role: OWNER;
-- access.userByEmail: [dataset creator email]; access.role: OWNER;
dsAccess :: Lens' DataSet [DataSetAccessItem]
dsAccess
  = lens _dsAccess (\ s a -> s{_dsAccess = a}) .
      _Default
      . _Coerce

-- | [Output-only] Reserved for future use.
dsSatisfiesPZS :: Lens' DataSet (Maybe Bool)
dsSatisfiesPZS
  = lens _dsSatisfiesPZS
      (\ s a -> s{_dsSatisfiesPZS = a})

dsDefaultEncryptionConfiguration :: Lens' DataSet (Maybe EncryptionConfiguration)
dsDefaultEncryptionConfiguration
  = lens _dsDefaultEncryptionConfiguration
      (\ s a -> s{_dsDefaultEncryptionConfiguration = a})

-- | [Output-only] A hash of the resource.
dsEtag :: Lens' DataSet (Maybe Text)
dsEtag = lens _dsEtag (\ s a -> s{_dsEtag = a})

-- | The geographic location where the dataset should reside. The default
-- value is US. See details at
-- https:\/\/cloud.google.com\/bigquery\/docs\/locations.
dsLocation :: Lens' DataSet (Maybe Text)
dsLocation
  = lens _dsLocation (\ s a -> s{_dsLocation = a})

-- | [Optional] A descriptive name for the dataset.
dsFriendlyName :: Lens' DataSet (Maybe Text)
dsFriendlyName
  = lens _dsFriendlyName
      (\ s a -> s{_dsFriendlyName = a})

-- | [Output-only] The resource type.
dsKind :: Lens' DataSet Text
dsKind = lens _dsKind (\ s a -> s{_dsKind = a})

-- | [Output-only] The date when this dataset or any of its tables was last
-- modified, in milliseconds since the epoch.
dsLastModifiedTime :: Lens' DataSet (Maybe Int64)
dsLastModifiedTime
  = lens _dsLastModifiedTime
      (\ s a -> s{_dsLastModifiedTime = a})
      . mapping _Coerce

-- | [Required] A reference that identifies the dataset.
dsDataSetReference :: Lens' DataSet (Maybe DataSetReference)
dsDataSetReference
  = lens _dsDataSetReference
      (\ s a -> s{_dsDataSetReference = a})

-- | [Output-only] A URL that can be used to access the resource again. You
-- can use this URL in Get or Update requests to the resource.
dsSelfLink :: Lens' DataSet (Maybe Text)
dsSelfLink
  = lens _dsSelfLink (\ s a -> s{_dsSelfLink = a})

-- | [Output-only] The fully-qualified unique name of the dataset in the
-- format projectId:datasetId. The dataset name without the project name is
-- given in the datasetId field. When creating a new dataset, leave this
-- field blank, and instead specify the datasetId field.
dsId :: Lens' DataSet (Maybe Text)
dsId = lens _dsId (\ s a -> s{_dsId = a})

-- | The labels associated with this dataset. You can use these to organize
-- and group your datasets. You can set this property when inserting or
-- updating a dataset. See Creating and Updating Dataset Labels for more
-- information.
dsLabels :: Lens' DataSet (Maybe DataSetLabels)
dsLabels = lens _dsLabels (\ s a -> s{_dsLabels = a})

-- | [Optional] The default lifetime of all tables in the dataset, in
-- milliseconds. The minimum value is 3600000 milliseconds (one hour). Once
-- this property is set, all newly-created tables in the dataset will have
-- an expirationTime property set to the creation time plus the value in
-- this property, and changing the value will only affect new tables, not
-- existing ones. When the expirationTime for a given table is reached,
-- that table will be deleted automatically. If a table\'s expirationTime
-- is modified or removed before the table expires, or if you provide an
-- explicit expirationTime when creating a table, that value takes
-- precedence over the default expiration time indicated by this property.
dsDefaultTableExpirationMs :: Lens' DataSet (Maybe Int64)
dsDefaultTableExpirationMs
  = lens _dsDefaultTableExpirationMs
      (\ s a -> s{_dsDefaultTableExpirationMs = a})
      . mapping _Coerce

-- | [Optional] A user-friendly description of the dataset.
dsDescription :: Lens' DataSet (Maybe Text)
dsDescription
  = lens _dsDescription
      (\ s a -> s{_dsDescription = a})

instance FromJSON DataSet where
        parseJSON
          = withObject "DataSet"
              (\ o ->
                 DataSet' <$>
                   (o .:? "creationTime") <*>
                     (o .:? "defaultPartitionExpirationMs")
                     <*> (o .:? "access" .!= mempty)
                     <*> (o .:? "satisfiesPZS")
                     <*> (o .:? "defaultEncryptionConfiguration")
                     <*> (o .:? "etag")
                     <*> (o .:? "location")
                     <*> (o .:? "friendlyName")
                     <*> (o .:? "kind" .!= "bigquery#dataset")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "datasetReference")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "defaultTableExpirationMs")
                     <*> (o .:? "description"))

instance ToJSON DataSet where
        toJSON DataSet'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _dsCreationTime,
                  ("defaultPartitionExpirationMs" .=) <$>
                    _dsDefaultPartitionExpirationMs,
                  ("access" .=) <$> _dsAccess,
                  ("satisfiesPZS" .=) <$> _dsSatisfiesPZS,
                  ("defaultEncryptionConfiguration" .=) <$>
                    _dsDefaultEncryptionConfiguration,
                  ("etag" .=) <$> _dsEtag,
                  ("location" .=) <$> _dsLocation,
                  ("friendlyName" .=) <$> _dsFriendlyName,
                  Just ("kind" .= _dsKind),
                  ("lastModifiedTime" .=) <$> _dsLastModifiedTime,
                  ("datasetReference" .=) <$> _dsDataSetReference,
                  ("selfLink" .=) <$> _dsSelfLink, ("id" .=) <$> _dsId,
                  ("labels" .=) <$> _dsLabels,
                  ("defaultTableExpirationMs" .=) <$>
                    _dsDefaultTableExpirationMs,
                  ("description" .=) <$> _dsDescription])

-- | The labels associated with this model. You can use these to organize and
-- group your models. Label keys and values can be no longer than 63
-- characters, can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter and each label
-- in the list must have a different key.
--
-- /See:/ 'modelLabels' smart constructor.
newtype ModelLabels =
  ModelLabels'
    { _mlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModelLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlAddtional'
modelLabels
    :: HashMap Text Text -- ^ 'mlAddtional'
    -> ModelLabels
modelLabels pMlAddtional_ =
  ModelLabels' {_mlAddtional = _Coerce # pMlAddtional_}


mlAddtional :: Lens' ModelLabels (HashMap Text Text)
mlAddtional
  = lens _mlAddtional (\ s a -> s{_mlAddtional = a}) .
      _Coerce

instance FromJSON ModelLabels where
        parseJSON
          = withObject "ModelLabels"
              (\ o -> ModelLabels' <$> (parseJSONObject o))

instance ToJSON ModelLabels where
        toJSON = toJSON . _mlAddtional

-- | [TrustedTester] [Required] Defines the ranges for range partitioning.
--
-- /See:/ 'rangePartitioningRange' smart constructor.
data RangePartitioningRange =
  RangePartitioningRange'
    { _rprStart :: !(Maybe (Textual Int64))
    , _rprInterval :: !(Maybe (Textual Int64))
    , _rprEnd :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RangePartitioningRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprStart'
--
-- * 'rprInterval'
--
-- * 'rprEnd'
rangePartitioningRange
    :: RangePartitioningRange
rangePartitioningRange =
  RangePartitioningRange'
    {_rprStart = Nothing, _rprInterval = Nothing, _rprEnd = Nothing}


-- | [TrustedTester] [Required] The start of range partitioning, inclusive.
rprStart :: Lens' RangePartitioningRange (Maybe Int64)
rprStart
  = lens _rprStart (\ s a -> s{_rprStart = a}) .
      mapping _Coerce

-- | [TrustedTester] [Required] The width of each interval.
rprInterval :: Lens' RangePartitioningRange (Maybe Int64)
rprInterval
  = lens _rprInterval (\ s a -> s{_rprInterval = a}) .
      mapping _Coerce

-- | [TrustedTester] [Required] The end of range partitioning, exclusive.
rprEnd :: Lens' RangePartitioningRange (Maybe Int64)
rprEnd
  = lens _rprEnd (\ s a -> s{_rprEnd = a}) .
      mapping _Coerce

instance FromJSON RangePartitioningRange where
        parseJSON
          = withObject "RangePartitioningRange"
              (\ o ->
                 RangePartitioningRange' <$>
                   (o .:? "start") <*> (o .:? "interval") <*>
                     (o .:? "end"))

instance ToJSON RangePartitioningRange where
        toJSON RangePartitioningRange'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _rprStart,
                  ("interval" .=) <$> _rprInterval,
                  ("end" .=) <$> _rprEnd])

--
-- /See:/ 'jobStatisticsReservationUsageItem' smart constructor.
data JobStatisticsReservationUsageItem =
  JobStatisticsReservationUsageItem'
    { _jsruiName :: !(Maybe Text)
    , _jsruiSlotMs :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobStatisticsReservationUsageItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsruiName'
--
-- * 'jsruiSlotMs'
jobStatisticsReservationUsageItem
    :: JobStatisticsReservationUsageItem
jobStatisticsReservationUsageItem =
  JobStatisticsReservationUsageItem'
    {_jsruiName = Nothing, _jsruiSlotMs = Nothing}


-- | [Output-only] Reservation name or \"unreserved\" for on-demand resources
-- usage.
jsruiName :: Lens' JobStatisticsReservationUsageItem (Maybe Text)
jsruiName
  = lens _jsruiName (\ s a -> s{_jsruiName = a})

-- | [Output-only] Slot-milliseconds the job spent in the given reservation.
jsruiSlotMs :: Lens' JobStatisticsReservationUsageItem (Maybe Int64)
jsruiSlotMs
  = lens _jsruiSlotMs (\ s a -> s{_jsruiSlotMs = a}) .
      mapping _Coerce

instance FromJSON JobStatisticsReservationUsageItem
         where
        parseJSON
          = withObject "JobStatisticsReservationUsageItem"
              (\ o ->
                 JobStatisticsReservationUsageItem' <$>
                   (o .:? "name") <*> (o .:? "slotMs"))

instance ToJSON JobStatisticsReservationUsageItem
         where
        toJSON JobStatisticsReservationUsageItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _jsruiName,
                  ("slotMs" .=) <$> _jsruiSlotMs])

--
-- /See:/ 'bigtableOptions' smart constructor.
data BigtableOptions =
  BigtableOptions'
    { _boReadRowkeyAsString :: !(Maybe Bool)
    , _boIgnoreUnspecifiedColumnFamilies :: !(Maybe Bool)
    , _boColumnFamilies :: !(Maybe [BigtableColumnFamily])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BigtableOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boReadRowkeyAsString'
--
-- * 'boIgnoreUnspecifiedColumnFamilies'
--
-- * 'boColumnFamilies'
bigtableOptions
    :: BigtableOptions
bigtableOptions =
  BigtableOptions'
    { _boReadRowkeyAsString = Nothing
    , _boIgnoreUnspecifiedColumnFamilies = Nothing
    , _boColumnFamilies = Nothing
    }


-- | [Optional] If field is true, then the rowkey column families will be
-- read and converted to string. Otherwise they are read with BYTES type
-- values and users need to manually cast them with CAST if necessary. The
-- default value is false.
boReadRowkeyAsString :: Lens' BigtableOptions (Maybe Bool)
boReadRowkeyAsString
  = lens _boReadRowkeyAsString
      (\ s a -> s{_boReadRowkeyAsString = a})

-- | [Optional] If field is true, then the column families that are not
-- specified in columnFamilies list are not exposed in the table schema.
-- Otherwise, they are read with BYTES type values. The default value is
-- false.
boIgnoreUnspecifiedColumnFamilies :: Lens' BigtableOptions (Maybe Bool)
boIgnoreUnspecifiedColumnFamilies
  = lens _boIgnoreUnspecifiedColumnFamilies
      (\ s a -> s{_boIgnoreUnspecifiedColumnFamilies = a})

-- | [Optional] List of column families to expose in the table schema along
-- with their types. This list restricts the column families that can be
-- referenced in queries and specifies their value types. You can use this
-- list to do type conversions - see the \'type\' field for more details.
-- If you leave this list empty, all column families are present in the
-- table schema and their values are read as BYTES. During a query only the
-- column families referenced in that query are read from Bigtable.
boColumnFamilies :: Lens' BigtableOptions [BigtableColumnFamily]
boColumnFamilies
  = lens _boColumnFamilies
      (\ s a -> s{_boColumnFamilies = a})
      . _Default
      . _Coerce

instance FromJSON BigtableOptions where
        parseJSON
          = withObject "BigtableOptions"
              (\ o ->
                 BigtableOptions' <$>
                   (o .:? "readRowkeyAsString") <*>
                     (o .:? "ignoreUnspecifiedColumnFamilies")
                     <*> (o .:? "columnFamilies" .!= mempty))

instance ToJSON BigtableOptions where
        toJSON BigtableOptions'{..}
          = object
              (catMaybes
                 [("readRowkeyAsString" .=) <$> _boReadRowkeyAsString,
                  ("ignoreUnspecifiedColumnFamilies" .=) <$>
                    _boIgnoreUnspecifiedColumnFamilies,
                  ("columnFamilies" .=) <$> _boColumnFamilies])

--
-- /See:/ 'clustering' smart constructor.
newtype Clustering =
  Clustering'
    { _cFields :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Clustering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cFields'
clustering
    :: Clustering
clustering = Clustering' {_cFields = Nothing}


-- | [Repeated] One or more fields on which data should be clustered. Only
-- top-level, non-repeated, simple-type fields are supported. When you
-- cluster a table using multiple columns, the order of columns you specify
-- is important. The order of the specified columns determines the sort
-- order of the data.
cFields :: Lens' Clustering [Text]
cFields
  = lens _cFields (\ s a -> s{_cFields = a}) . _Default
      . _Coerce

instance FromJSON Clustering where
        parseJSON
          = withObject "Clustering"
              (\ o -> Clustering' <$> (o .:? "fields" .!= mempty))

instance ToJSON Clustering where
        toJSON Clustering'{..}
          = object (catMaybes [("fields" .=) <$> _cFields])

--
-- /See:/ 'standardSQLStructType' smart constructor.
newtype StandardSQLStructType =
  StandardSQLStructType'
    { _ssqlstFields :: Maybe [StandardSQLField]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StandardSQLStructType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssqlstFields'
standardSQLStructType
    :: StandardSQLStructType
standardSQLStructType = StandardSQLStructType' {_ssqlstFields = Nothing}


ssqlstFields :: Lens' StandardSQLStructType [StandardSQLField]
ssqlstFields
  = lens _ssqlstFields (\ s a -> s{_ssqlstFields = a})
      . _Default
      . _Coerce

instance FromJSON StandardSQLStructType where
        parseJSON
          = withObject "StandardSQLStructType"
              (\ o ->
                 StandardSQLStructType' <$>
                   (o .:? "fields" .!= mempty))

instance ToJSON StandardSQLStructType where
        toJSON StandardSQLStructType'{..}
          = object
              (catMaybes [("fields" .=) <$> _ssqlstFields])

-- | Representative value of a categorical feature.
--
-- /See:/ 'categoricalValue' smart constructor.
newtype CategoricalValue =
  CategoricalValue'
    { _cvCategoryCounts :: Maybe [CategoryCount]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CategoricalValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvCategoryCounts'
categoricalValue
    :: CategoricalValue
categoricalValue = CategoricalValue' {_cvCategoryCounts = Nothing}


-- | Counts of all categories for the categorical feature. If there are more
-- than ten categories, we return top ten (by count) and return one more
-- CategoryCount with category \"_OTHER_\" and count as aggregate counts of
-- remaining categories.
cvCategoryCounts :: Lens' CategoricalValue [CategoryCount]
cvCategoryCounts
  = lens _cvCategoryCounts
      (\ s a -> s{_cvCategoryCounts = a})
      . _Default
      . _Coerce

instance FromJSON CategoricalValue where
        parseJSON
          = withObject "CategoricalValue"
              (\ o ->
                 CategoricalValue' <$>
                   (o .:? "categoryCounts" .!= mempty))

instance ToJSON CategoricalValue where
        toJSON CategoricalValue'{..}
          = object
              (catMaybes
                 [("categoryCounts" .=) <$> _cvCategoryCounts])

-- | The type of a variable, e.g., a function argument. Examples: INT64:
-- {type_kind=\"INT64\"} ARRAY: {type_kind=\"ARRAY\",
-- array_element_type=\"STRING\"} STRUCT>: {type_kind=\"STRUCT\",
-- struct_type={fields=[ {name=\"x\", type={type_kind=\"STRING\"}},
-- {name=\"y\", type={type_kind=\"ARRAY\", array_element_type=\"DATE\"}}
-- ]}}
--
-- /See:/ 'standardSQLDataType' smart constructor.
data StandardSQLDataType =
  StandardSQLDataType'
    { _ssqldtArrayElementType :: !(Maybe StandardSQLDataType)
    , _ssqldtStructType :: !(Maybe StandardSQLStructType)
    , _ssqldtTypeKind :: !(Maybe StandardSQLDataTypeTypeKind)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StandardSQLDataType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssqldtArrayElementType'
--
-- * 'ssqldtStructType'
--
-- * 'ssqldtTypeKind'
standardSQLDataType
    :: StandardSQLDataType
standardSQLDataType =
  StandardSQLDataType'
    { _ssqldtArrayElementType = Nothing
    , _ssqldtStructType = Nothing
    , _ssqldtTypeKind = Nothing
    }


-- | The type of the array\'s elements, if type_kind = \"ARRAY\".
ssqldtArrayElementType :: Lens' StandardSQLDataType (Maybe StandardSQLDataType)
ssqldtArrayElementType
  = lens _ssqldtArrayElementType
      (\ s a -> s{_ssqldtArrayElementType = a})

-- | The fields of this struct, in order, if type_kind = \"STRUCT\".
ssqldtStructType :: Lens' StandardSQLDataType (Maybe StandardSQLStructType)
ssqldtStructType
  = lens _ssqldtStructType
      (\ s a -> s{_ssqldtStructType = a})

-- | Required. The top level type of this field. Can be any standard SQL data
-- type (e.g., \"INT64\", \"DATE\", \"ARRAY\").
ssqldtTypeKind :: Lens' StandardSQLDataType (Maybe StandardSQLDataTypeTypeKind)
ssqldtTypeKind
  = lens _ssqldtTypeKind
      (\ s a -> s{_ssqldtTypeKind = a})

instance FromJSON StandardSQLDataType where
        parseJSON
          = withObject "StandardSQLDataType"
              (\ o ->
                 StandardSQLDataType' <$>
                   (o .:? "arrayElementType") <*> (o .:? "structType")
                     <*> (o .:? "typeKind"))

instance ToJSON StandardSQLDataType where
        toJSON StandardSQLDataType'{..}
          = object
              (catMaybes
                 [("arrayElementType" .=) <$> _ssqldtArrayElementType,
                  ("structType" .=) <$> _ssqldtStructType,
                  ("typeKind" .=) <$> _ssqldtTypeKind])

--
-- /See:/ 'externalDataConfiguration' smart constructor.
data ExternalDataConfiguration =
  ExternalDataConfiguration'
    { _edcBigtableOptions :: !(Maybe BigtableOptions)
    , _edcIgnoreUnknownValues :: !(Maybe Bool)
    , _edcConnectionId :: !(Maybe Text)
    , _edcCompression :: !(Maybe Text)
    , _edcSourceFormat :: !(Maybe Text)
    , _edcDecimalTargetTypes :: !(Maybe [Text])
    , _edcSchema :: !(Maybe TableSchema)
    , _edcMaxBadRecords :: !(Maybe (Textual Int32))
    , _edcGoogleSheetsOptions :: !(Maybe GoogleSheetsOptions)
    , _edcAutodetect :: !(Maybe Bool)
    , _edcHivePartitioningOptions :: !(Maybe HivePartitioningOptions)
    , _edcSourceURIs :: !(Maybe [Text])
    , _edcParquetOptions :: !(Maybe ParquetOptions)
    , _edcCSVOptions :: !(Maybe CSVOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalDataConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edcBigtableOptions'
--
-- * 'edcIgnoreUnknownValues'
--
-- * 'edcConnectionId'
--
-- * 'edcCompression'
--
-- * 'edcSourceFormat'
--
-- * 'edcDecimalTargetTypes'
--
-- * 'edcSchema'
--
-- * 'edcMaxBadRecords'
--
-- * 'edcGoogleSheetsOptions'
--
-- * 'edcAutodetect'
--
-- * 'edcHivePartitioningOptions'
--
-- * 'edcSourceURIs'
--
-- * 'edcParquetOptions'
--
-- * 'edcCSVOptions'
externalDataConfiguration
    :: ExternalDataConfiguration
externalDataConfiguration =
  ExternalDataConfiguration'
    { _edcBigtableOptions = Nothing
    , _edcIgnoreUnknownValues = Nothing
    , _edcConnectionId = Nothing
    , _edcCompression = Nothing
    , _edcSourceFormat = Nothing
    , _edcDecimalTargetTypes = Nothing
    , _edcSchema = Nothing
    , _edcMaxBadRecords = Nothing
    , _edcGoogleSheetsOptions = Nothing
    , _edcAutodetect = Nothing
    , _edcHivePartitioningOptions = Nothing
    , _edcSourceURIs = Nothing
    , _edcParquetOptions = Nothing
    , _edcCSVOptions = Nothing
    }


-- | [Optional] Additional options if sourceFormat is set to BIGTABLE.
edcBigtableOptions :: Lens' ExternalDataConfiguration (Maybe BigtableOptions)
edcBigtableOptions
  = lens _edcBigtableOptions
      (\ s a -> s{_edcBigtableOptions = a})

-- | [Optional] Indicates if BigQuery should allow extra values that are not
-- represented in the table schema. If true, the extra values are ignored.
-- If false, records with extra columns are treated as bad records, and if
-- there are too many bad records, an invalid error is returned in the job
-- result. The default value is false. The sourceFormat property determines
-- what BigQuery treats as an extra value: CSV: Trailing columns JSON:
-- Named values that don\'t match any column names Google Cloud Bigtable:
-- This setting is ignored. Google Cloud Datastore backups: This setting is
-- ignored. Avro: This setting is ignored.
edcIgnoreUnknownValues :: Lens' ExternalDataConfiguration (Maybe Bool)
edcIgnoreUnknownValues
  = lens _edcIgnoreUnknownValues
      (\ s a -> s{_edcIgnoreUnknownValues = a})

-- | [Optional, Trusted Tester] Connection for external data source.
edcConnectionId :: Lens' ExternalDataConfiguration (Maybe Text)
edcConnectionId
  = lens _edcConnectionId
      (\ s a -> s{_edcConnectionId = a})

-- | [Optional] The compression type of the data source. Possible values
-- include GZIP and NONE. The default value is NONE. This setting is
-- ignored for Google Cloud Bigtable, Google Cloud Datastore backups and
-- Avro formats.
edcCompression :: Lens' ExternalDataConfiguration (Maybe Text)
edcCompression
  = lens _edcCompression
      (\ s a -> s{_edcCompression = a})

-- | [Required] The data format. For CSV files, specify \"CSV\". For Google
-- sheets, specify \"GOOGLE_SHEETS\". For newline-delimited JSON, specify
-- \"NEWLINE_DELIMITED_JSON\". For Avro files, specify \"AVRO\". For Google
-- Cloud Datastore backups, specify \"DATASTORE_BACKUP\". [Beta] For Google
-- Cloud Bigtable, specify \"BIGTABLE\".
edcSourceFormat :: Lens' ExternalDataConfiguration (Maybe Text)
edcSourceFormat
  = lens _edcSourceFormat
      (\ s a -> s{_edcSourceFormat = a})

-- | [Optional] Defines the list of possible SQL data types to which the
-- source decimal values are converted. This list and the precision and the
-- scale parameters of the decimal field determine the target type. In the
-- order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in
-- the specified list and if it supports the precision and the scale.
-- STRING supports all precision and scale values. If none of the listed
-- types supports the precision and the scale, the type supporting the
-- widest range in the specified list is picked, and if a value exceeds the
-- supported range when reading the data, an error will be thrown. Example:
-- Suppose the value of this field is [\"NUMERIC\", \"BIGNUMERIC\"]. If
-- (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC
-- cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot
-- hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC
-- (error if value exeeds supported range). This field cannot contain
-- duplicate types. The order of the types in this field is ignored. For
-- example, [\"BIGNUMERIC\", \"NUMERIC\"] is the same as [\"NUMERIC\",
-- \"BIGNUMERIC\"] and NUMERIC always takes precedence over BIGNUMERIC.
-- Defaults to [\"NUMERIC\", \"STRING\"] for ORC and [\"NUMERIC\"] for the
-- other file formats.
edcDecimalTargetTypes :: Lens' ExternalDataConfiguration [Text]
edcDecimalTargetTypes
  = lens _edcDecimalTargetTypes
      (\ s a -> s{_edcDecimalTargetTypes = a})
      . _Default
      . _Coerce

-- | [Optional] The schema for the data. Schema is required for CSV and JSON
-- formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore
-- backups, and Avro formats.
edcSchema :: Lens' ExternalDataConfiguration (Maybe TableSchema)
edcSchema
  = lens _edcSchema (\ s a -> s{_edcSchema = a})

-- | [Optional] The maximum number of bad records that BigQuery can ignore
-- when reading data. If the number of bad records exceeds this value, an
-- invalid error is returned in the job result. This is only valid for CSV,
-- JSON, and Google Sheets. The default value is 0, which requires that all
-- records are valid. This setting is ignored for Google Cloud Bigtable,
-- Google Cloud Datastore backups and Avro formats.
edcMaxBadRecords :: Lens' ExternalDataConfiguration (Maybe Int32)
edcMaxBadRecords
  = lens _edcMaxBadRecords
      (\ s a -> s{_edcMaxBadRecords = a})
      . mapping _Coerce

-- | [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
edcGoogleSheetsOptions :: Lens' ExternalDataConfiguration (Maybe GoogleSheetsOptions)
edcGoogleSheetsOptions
  = lens _edcGoogleSheetsOptions
      (\ s a -> s{_edcGoogleSheetsOptions = a})

-- | Try to detect schema and format options automatically. Any option
-- specified explicitly will be honored.
edcAutodetect :: Lens' ExternalDataConfiguration (Maybe Bool)
edcAutodetect
  = lens _edcAutodetect
      (\ s a -> s{_edcAutodetect = a})

-- | [Optional] Options to configure hive partitioning support.
edcHivePartitioningOptions :: Lens' ExternalDataConfiguration (Maybe HivePartitioningOptions)
edcHivePartitioningOptions
  = lens _edcHivePartitioningOptions
      (\ s a -> s{_edcHivePartitioningOptions = a})

-- | [Required] The fully-qualified URIs that point to your data in Google
-- Cloud. For Google Cloud Storage URIs: Each URI can contain one \'*\'
-- wildcard character and it must come after the \'bucket\' name. Size
-- limits related to load jobs apply to external data sources. For Google
-- Cloud Bigtable URIs: Exactly one URI can be specified and it has be a
-- fully specified and valid HTTPS URL for a Google Cloud Bigtable table.
-- For Google Cloud Datastore backups, exactly one URI can be specified.
-- Also, the \'*\' wildcard character is not allowed.
edcSourceURIs :: Lens' ExternalDataConfiguration [Text]
edcSourceURIs
  = lens _edcSourceURIs
      (\ s a -> s{_edcSourceURIs = a})
      . _Default
      . _Coerce

-- | Additional properties to set if sourceFormat is set to Parquet.
edcParquetOptions :: Lens' ExternalDataConfiguration (Maybe ParquetOptions)
edcParquetOptions
  = lens _edcParquetOptions
      (\ s a -> s{_edcParquetOptions = a})

-- | Additional properties to set if sourceFormat is set to CSV.
edcCSVOptions :: Lens' ExternalDataConfiguration (Maybe CSVOptions)
edcCSVOptions
  = lens _edcCSVOptions
      (\ s a -> s{_edcCSVOptions = a})

instance FromJSON ExternalDataConfiguration where
        parseJSON
          = withObject "ExternalDataConfiguration"
              (\ o ->
                 ExternalDataConfiguration' <$>
                   (o .:? "bigtableOptions") <*>
                     (o .:? "ignoreUnknownValues")
                     <*> (o .:? "connectionId")
                     <*> (o .:? "compression")
                     <*> (o .:? "sourceFormat")
                     <*> (o .:? "decimalTargetTypes" .!= mempty)
                     <*> (o .:? "schema")
                     <*> (o .:? "maxBadRecords")
                     <*> (o .:? "googleSheetsOptions")
                     <*> (o .:? "autodetect")
                     <*> (o .:? "hivePartitioningOptions")
                     <*> (o .:? "sourceUris" .!= mempty)
                     <*> (o .:? "parquetOptions")
                     <*> (o .:? "csvOptions"))

instance ToJSON ExternalDataConfiguration where
        toJSON ExternalDataConfiguration'{..}
          = object
              (catMaybes
                 [("bigtableOptions" .=) <$> _edcBigtableOptions,
                  ("ignoreUnknownValues" .=) <$>
                    _edcIgnoreUnknownValues,
                  ("connectionId" .=) <$> _edcConnectionId,
                  ("compression" .=) <$> _edcCompression,
                  ("sourceFormat" .=) <$> _edcSourceFormat,
                  ("decimalTargetTypes" .=) <$> _edcDecimalTargetTypes,
                  ("schema" .=) <$> _edcSchema,
                  ("maxBadRecords" .=) <$> _edcMaxBadRecords,
                  ("googleSheetsOptions" .=) <$>
                    _edcGoogleSheetsOptions,
                  ("autodetect" .=) <$> _edcAutodetect,
                  ("hivePartitioningOptions" .=) <$>
                    _edcHivePartitioningOptions,
                  ("sourceUris" .=) <$> _edcSourceURIs,
                  ("parquetOptions" .=) <$> _edcParquetOptions,
                  ("csvOptions" .=) <$> _edcCSVOptions])

--
-- /See:/ 'tableReference' smart constructor.
data TableReference =
  TableReference'
    { _trDataSetId :: !(Maybe Text)
    , _trProjectId :: !(Maybe Text)
    , _trTableId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trDataSetId'
--
-- * 'trProjectId'
--
-- * 'trTableId'
tableReference
    :: TableReference
tableReference =
  TableReference'
    {_trDataSetId = Nothing, _trProjectId = Nothing, _trTableId = Nothing}


-- | [Required] The ID of the dataset containing this table.
trDataSetId :: Lens' TableReference (Maybe Text)
trDataSetId
  = lens _trDataSetId (\ s a -> s{_trDataSetId = a})

-- | [Required] The ID of the project containing this table.
trProjectId :: Lens' TableReference (Maybe Text)
trProjectId
  = lens _trProjectId (\ s a -> s{_trProjectId = a})

-- | [Required] The ID of the table. The ID must contain only letters (a-z,
-- A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024
-- characters.
trTableId :: Lens' TableReference (Maybe Text)
trTableId
  = lens _trTableId (\ s a -> s{_trTableId = a})

instance FromJSON TableReference where
        parseJSON
          = withObject "TableReference"
              (\ o ->
                 TableReference' <$>
                   (o .:? "datasetId") <*> (o .:? "projectId") <*>
                     (o .:? "tableId"))

instance ToJSON TableReference where
        toJSON TableReference'{..}
          = object
              (catMaybes
                 [("datasetId" .=) <$> _trDataSetId,
                  ("projectId" .=) <$> _trProjectId,
                  ("tableId" .=) <$> _trTableId])

-- | [Output-only, Beta] Model options used for the first training run. These
-- options are immutable for subsequent training runs. Default values are
-- used for any options not specified in the input query.
--
-- /See:/ 'modelDefinitionModelOptions' smart constructor.
data ModelDefinitionModelOptions =
  ModelDefinitionModelOptions'
    { _mdmoModelType :: !(Maybe Text)
    , _mdmoLabels :: !(Maybe [Text])
    , _mdmoLossType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModelDefinitionModelOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdmoModelType'
--
-- * 'mdmoLabels'
--
-- * 'mdmoLossType'
modelDefinitionModelOptions
    :: ModelDefinitionModelOptions
modelDefinitionModelOptions =
  ModelDefinitionModelOptions'
    {_mdmoModelType = Nothing, _mdmoLabels = Nothing, _mdmoLossType = Nothing}


mdmoModelType :: Lens' ModelDefinitionModelOptions (Maybe Text)
mdmoModelType
  = lens _mdmoModelType
      (\ s a -> s{_mdmoModelType = a})

mdmoLabels :: Lens' ModelDefinitionModelOptions [Text]
mdmoLabels
  = lens _mdmoLabels (\ s a -> s{_mdmoLabels = a}) .
      _Default
      . _Coerce

mdmoLossType :: Lens' ModelDefinitionModelOptions (Maybe Text)
mdmoLossType
  = lens _mdmoLossType (\ s a -> s{_mdmoLossType = a})

instance FromJSON ModelDefinitionModelOptions where
        parseJSON
          = withObject "ModelDefinitionModelOptions"
              (\ o ->
                 ModelDefinitionModelOptions' <$>
                   (o .:? "modelType") <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "lossType"))

instance ToJSON ModelDefinitionModelOptions where
        toJSON ModelDefinitionModelOptions'{..}
          = object
              (catMaybes
                 [("modelType" .=) <$> _mdmoModelType,
                  ("labels" .=) <$> _mdmoLabels,
                  ("lossType" .=) <$> _mdmoLossType])

--
-- /See:/ 'rowAccessPolicyReference' smart constructor.
data RowAccessPolicyReference =
  RowAccessPolicyReference'
    { _raprPolicyId :: !(Maybe Text)
    , _raprDataSetId :: !(Maybe Text)
    , _raprProjectId :: !(Maybe Text)
    , _raprTableId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RowAccessPolicyReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raprPolicyId'
--
-- * 'raprDataSetId'
--
-- * 'raprProjectId'
--
-- * 'raprTableId'
rowAccessPolicyReference
    :: RowAccessPolicyReference
rowAccessPolicyReference =
  RowAccessPolicyReference'
    { _raprPolicyId = Nothing
    , _raprDataSetId = Nothing
    , _raprProjectId = Nothing
    , _raprTableId = Nothing
    }


-- | [Required] The ID of the row access policy. The ID must contain only
-- letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
-- length is 256 characters.
raprPolicyId :: Lens' RowAccessPolicyReference (Maybe Text)
raprPolicyId
  = lens _raprPolicyId (\ s a -> s{_raprPolicyId = a})

-- | [Required] The ID of the dataset containing this row access policy.
raprDataSetId :: Lens' RowAccessPolicyReference (Maybe Text)
raprDataSetId
  = lens _raprDataSetId
      (\ s a -> s{_raprDataSetId = a})

-- | [Required] The ID of the project containing this row access policy.
raprProjectId :: Lens' RowAccessPolicyReference (Maybe Text)
raprProjectId
  = lens _raprProjectId
      (\ s a -> s{_raprProjectId = a})

-- | [Required] The ID of the table containing this row access policy.
raprTableId :: Lens' RowAccessPolicyReference (Maybe Text)
raprTableId
  = lens _raprTableId (\ s a -> s{_raprTableId = a})

instance FromJSON RowAccessPolicyReference where
        parseJSON
          = withObject "RowAccessPolicyReference"
              (\ o ->
                 RowAccessPolicyReference' <$>
                   (o .:? "policyId") <*> (o .:? "datasetId") <*>
                     (o .:? "projectId")
                     <*> (o .:? "tableId"))

instance ToJSON RowAccessPolicyReference where
        toJSON RowAccessPolicyReference'{..}
          = object
              (catMaybes
                 [("policyId" .=) <$> _raprPolicyId,
                  ("datasetId" .=) <$> _raprDataSetId,
                  ("projectId" .=) <$> _raprProjectId,
                  ("tableId" .=) <$> _raprTableId])

-- | Evaluation metrics for clustering models.
--
-- /See:/ 'clusteringMetrics' smart constructor.
data ClusteringMetrics =
  ClusteringMetrics'
    { _cmDaviesBouldinIndex :: !(Maybe (Textual Double))
    , _cmMeanSquaredDistance :: !(Maybe (Textual Double))
    , _cmClusters :: !(Maybe [Cluster])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClusteringMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmDaviesBouldinIndex'
--
-- * 'cmMeanSquaredDistance'
--
-- * 'cmClusters'
clusteringMetrics
    :: ClusteringMetrics
clusteringMetrics =
  ClusteringMetrics'
    { _cmDaviesBouldinIndex = Nothing
    , _cmMeanSquaredDistance = Nothing
    , _cmClusters = Nothing
    }


-- | Davies-Bouldin index.
cmDaviesBouldinIndex :: Lens' ClusteringMetrics (Maybe Double)
cmDaviesBouldinIndex
  = lens _cmDaviesBouldinIndex
      (\ s a -> s{_cmDaviesBouldinIndex = a})
      . mapping _Coerce

-- | Mean of squared distances between each sample to its cluster centroid.
cmMeanSquaredDistance :: Lens' ClusteringMetrics (Maybe Double)
cmMeanSquaredDistance
  = lens _cmMeanSquaredDistance
      (\ s a -> s{_cmMeanSquaredDistance = a})
      . mapping _Coerce

-- | Information for all clusters.
cmClusters :: Lens' ClusteringMetrics [Cluster]
cmClusters
  = lens _cmClusters (\ s a -> s{_cmClusters = a}) .
      _Default
      . _Coerce

instance FromJSON ClusteringMetrics where
        parseJSON
          = withObject "ClusteringMetrics"
              (\ o ->
                 ClusteringMetrics' <$>
                   (o .:? "daviesBouldinIndex") <*>
                     (o .:? "meanSquaredDistance")
                     <*> (o .:? "clusters" .!= mempty))

instance ToJSON ClusteringMetrics where
        toJSON ClusteringMetrics'{..}
          = object
              (catMaybes
                 [("daviesBouldinIndex" .=) <$> _cmDaviesBouldinIndex,
                  ("meanSquaredDistance" .=) <$>
                    _cmMeanSquaredDistance,
                  ("clusters" .=) <$> _cmClusters])

--
-- /See:/ 'routineReference' smart constructor.
data RoutineReference =
  RoutineReference'
    { _rrDataSetId :: !(Maybe Text)
    , _rrProjectId :: !(Maybe Text)
    , _rrRoutineId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutineReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrDataSetId'
--
-- * 'rrProjectId'
--
-- * 'rrRoutineId'
routineReference
    :: RoutineReference
routineReference =
  RoutineReference'
    {_rrDataSetId = Nothing, _rrProjectId = Nothing, _rrRoutineId = Nothing}


-- | [Required] The ID of the dataset containing this routine.
rrDataSetId :: Lens' RoutineReference (Maybe Text)
rrDataSetId
  = lens _rrDataSetId (\ s a -> s{_rrDataSetId = a})

-- | [Required] The ID of the project containing this routine.
rrProjectId :: Lens' RoutineReference (Maybe Text)
rrProjectId
  = lens _rrProjectId (\ s a -> s{_rrProjectId = a})

-- | [Required] The ID of the routine. The ID must contain only letters (a-z,
-- A-Z), numbers (0-9), or underscores (_). The maximum length is 256
-- characters.
rrRoutineId :: Lens' RoutineReference (Maybe Text)
rrRoutineId
  = lens _rrRoutineId (\ s a -> s{_rrRoutineId = a})

instance FromJSON RoutineReference where
        parseJSON
          = withObject "RoutineReference"
              (\ o ->
                 RoutineReference' <$>
                   (o .:? "datasetId") <*> (o .:? "projectId") <*>
                     (o .:? "routineId"))

instance ToJSON RoutineReference where
        toJSON RoutineReference'{..}
          = object
              (catMaybes
                 [("datasetId" .=) <$> _rrDataSetId,
                  ("projectId" .=) <$> _rrProjectId,
                  ("routineId" .=) <$> _rrRoutineId])

--
-- /See:/ 'rangePartitioning' smart constructor.
data RangePartitioning =
  RangePartitioning'
    { _rpField :: !(Maybe Text)
    , _rpRange :: !(Maybe RangePartitioningRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RangePartitioning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpField'
--
-- * 'rpRange'
rangePartitioning
    :: RangePartitioning
rangePartitioning = RangePartitioning' {_rpField = Nothing, _rpRange = Nothing}


-- | [TrustedTester] [Required] The table is partitioned by this field. The
-- field must be a top-level NULLABLE\/REQUIRED field. The only supported
-- type is INTEGER\/INT64.
rpField :: Lens' RangePartitioning (Maybe Text)
rpField = lens _rpField (\ s a -> s{_rpField = a})

-- | [TrustedTester] [Required] Defines the ranges for range partitioning.
rpRange :: Lens' RangePartitioning (Maybe RangePartitioningRange)
rpRange = lens _rpRange (\ s a -> s{_rpRange = a})

instance FromJSON RangePartitioning where
        parseJSON
          = withObject "RangePartitioning"
              (\ o ->
                 RangePartitioning' <$>
                   (o .:? "field") <*> (o .:? "range"))

instance ToJSON RangePartitioning where
        toJSON RangePartitioning'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _rpField,
                  ("range" .=) <$> _rpRange])

--
-- /See:/ 'tableFieldSchema' smart constructor.
data TableFieldSchema =
  TableFieldSchema'
    { _tfsMaxLength :: !(Maybe (Textual Int64))
    , _tfsScale :: !(Maybe (Textual Int64))
    , _tfsMode :: !(Maybe Text)
    , _tfsPrecision :: !(Maybe (Textual Int64))
    , _tfsCategories :: !(Maybe TableFieldSchemaCategories)
    , _tfsPolicyTags :: !(Maybe TableFieldSchemaPolicyTags)
    , _tfsName :: !(Maybe Text)
    , _tfsType :: !(Maybe Text)
    , _tfsDescription :: !(Maybe Text)
    , _tfsFields :: !(Maybe [TableFieldSchema])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableFieldSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfsMaxLength'
--
-- * 'tfsScale'
--
-- * 'tfsMode'
--
-- * 'tfsPrecision'
--
-- * 'tfsCategories'
--
-- * 'tfsPolicyTags'
--
-- * 'tfsName'
--
-- * 'tfsType'
--
-- * 'tfsDescription'
--
-- * 'tfsFields'
tableFieldSchema
    :: TableFieldSchema
tableFieldSchema =
  TableFieldSchema'
    { _tfsMaxLength = Nothing
    , _tfsScale = Nothing
    , _tfsMode = Nothing
    , _tfsPrecision = Nothing
    , _tfsCategories = Nothing
    , _tfsPolicyTags = Nothing
    , _tfsName = Nothing
    , _tfsType = Nothing
    , _tfsDescription = Nothing
    , _tfsFields = Nothing
    }


-- | [Optional] Maximum length of values of this field for STRINGS or BYTES.
-- If max_length is not specified, no maximum length constraint is imposed
-- on this field. If type = \"STRING\", then max_length represents the
-- maximum UTF-8 length of strings in this field. If type = \"BYTES\", then
-- max_length represents the maximum number of bytes in this field. It is
-- invalid to set this field if type ≠ \"STRING\" and ≠ \"BYTES\".
tfsMaxLength :: Lens' TableFieldSchema (Maybe Int64)
tfsMaxLength
  = lens _tfsMaxLength (\ s a -> s{_tfsMaxLength = a})
      . mapping _Coerce

-- | [Optional] See documentation for precision.
tfsScale :: Lens' TableFieldSchema (Maybe Int64)
tfsScale
  = lens _tfsScale (\ s a -> s{_tfsScale = a}) .
      mapping _Coerce

-- | [Optional] The field mode. Possible values include NULLABLE, REQUIRED
-- and REPEATED. The default value is NULLABLE.
tfsMode :: Lens' TableFieldSchema (Maybe Text)
tfsMode = lens _tfsMode (\ s a -> s{_tfsMode = a})

-- | [Optional] Precision (maximum number of total digits in base 10) and
-- scale (maximum number of digits in the fractional part in base 10)
-- constraints for values of this field for NUMERIC or BIGNUMERIC. It is
-- invalid to set precision or scale if type ≠ \"NUMERIC\" and ≠
-- \"BIGNUMERIC\". If precision and scale are not specified, no value range
-- constraint is imposed on this field insofar as values are permitted by
-- the type. Values of this NUMERIC or BIGNUMERIC field must be in this
-- range when: - Precision (P) and scale (S) are specified: [-10P-S + 10-S,
-- 10P-S - 10-S] - Precision (P) is specified but not scale (and thus scale
-- is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable
-- values for precision and scale if both are specified: - If type =
-- \"NUMERIC\": 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type =
-- \"BIGNUMERIC\": 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38.
-- Acceptable values for precision if only precision is specified but not
-- scale (and thus scale is interpreted to be equal to zero): - If type =
-- \"NUMERIC\": 1 ≤ precision ≤ 29. - If type = \"BIGNUMERIC\": 1 ≤
-- precision ≤ 38. If scale is specified but not precision, then it is
-- invalid.
tfsPrecision :: Lens' TableFieldSchema (Maybe Int64)
tfsPrecision
  = lens _tfsPrecision (\ s a -> s{_tfsPrecision = a})
      . mapping _Coerce

-- | [Optional] The categories attached to this field, used for field-level
-- access control.
tfsCategories :: Lens' TableFieldSchema (Maybe TableFieldSchemaCategories)
tfsCategories
  = lens _tfsCategories
      (\ s a -> s{_tfsCategories = a})

tfsPolicyTags :: Lens' TableFieldSchema (Maybe TableFieldSchemaPolicyTags)
tfsPolicyTags
  = lens _tfsPolicyTags
      (\ s a -> s{_tfsPolicyTags = a})

-- | [Required] The field name. The name must contain only letters (a-z,
-- A-Z), numbers (0-9), or underscores (_), and must start with a letter or
-- underscore. The maximum length is 300 characters.
tfsName :: Lens' TableFieldSchema (Maybe Text)
tfsName = lens _tfsName (\ s a -> s{_tfsName = a})

-- | [Required] The field data type. Possible values include STRING, BYTES,
-- INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT),
-- NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE,
-- TIME, DATETIME, INTERVAL, RECORD (where RECORD indicates that the field
-- contains a nested schema) or STRUCT (same as RECORD).
tfsType :: Lens' TableFieldSchema (Maybe Text)
tfsType = lens _tfsType (\ s a -> s{_tfsType = a})

-- | [Optional] The field description. The maximum length is 1,024
-- characters.
tfsDescription :: Lens' TableFieldSchema (Maybe Text)
tfsDescription
  = lens _tfsDescription
      (\ s a -> s{_tfsDescription = a})

-- | [Optional] Describes the nested schema fields if the type property is
-- set to RECORD.
tfsFields :: Lens' TableFieldSchema [TableFieldSchema]
tfsFields
  = lens _tfsFields (\ s a -> s{_tfsFields = a}) .
      _Default
      . _Coerce

instance FromJSON TableFieldSchema where
        parseJSON
          = withObject "TableFieldSchema"
              (\ o ->
                 TableFieldSchema' <$>
                   (o .:? "maxLength") <*> (o .:? "scale") <*>
                     (o .:? "mode")
                     <*> (o .:? "precision")
                     <*> (o .:? "categories")
                     <*> (o .:? "policyTags")
                     <*> (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON TableFieldSchema where
        toJSON TableFieldSchema'{..}
          = object
              (catMaybes
                 [("maxLength" .=) <$> _tfsMaxLength,
                  ("scale" .=) <$> _tfsScale, ("mode" .=) <$> _tfsMode,
                  ("precision" .=) <$> _tfsPrecision,
                  ("categories" .=) <$> _tfsCategories,
                  ("policyTags" .=) <$> _tfsPolicyTags,
                  ("name" .=) <$> _tfsName, ("type" .=) <$> _tfsType,
                  ("description" .=) <$> _tfsDescription,
                  ("fields" .=) <$> _tfsFields])

--
-- /See:/ 'getQueryResultsResponse' smart constructor.
data GetQueryResultsResponse =
  GetQueryResultsResponse'
    { _gqrrJobReference :: !(Maybe JobReference)
    , _gqrrEtag :: !(Maybe Text)
    , _gqrrKind :: !Text
    , _gqrrSchema :: !(Maybe TableSchema)
    , _gqrrTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _gqrrRows :: !(Maybe [TableRow])
    , _gqrrPageToken :: !(Maybe Text)
    , _gqrrNumDmlAffectedRows :: !(Maybe (Textual Int64))
    , _gqrrTotalRows :: !(Maybe (Textual Word64))
    , _gqrrErrors :: !(Maybe [ErrorProto])
    , _gqrrJobComplete :: !(Maybe Bool)
    , _gqrrCacheHit :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetQueryResultsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gqrrJobReference'
--
-- * 'gqrrEtag'
--
-- * 'gqrrKind'
--
-- * 'gqrrSchema'
--
-- * 'gqrrTotalBytesProcessed'
--
-- * 'gqrrRows'
--
-- * 'gqrrPageToken'
--
-- * 'gqrrNumDmlAffectedRows'
--
-- * 'gqrrTotalRows'
--
-- * 'gqrrErrors'
--
-- * 'gqrrJobComplete'
--
-- * 'gqrrCacheHit'
getQueryResultsResponse
    :: GetQueryResultsResponse
getQueryResultsResponse =
  GetQueryResultsResponse'
    { _gqrrJobReference = Nothing
    , _gqrrEtag = Nothing
    , _gqrrKind = "bigquery#getQueryResultsResponse"
    , _gqrrSchema = Nothing
    , _gqrrTotalBytesProcessed = Nothing
    , _gqrrRows = Nothing
    , _gqrrPageToken = Nothing
    , _gqrrNumDmlAffectedRows = Nothing
    , _gqrrTotalRows = Nothing
    , _gqrrErrors = Nothing
    , _gqrrJobComplete = Nothing
    , _gqrrCacheHit = Nothing
    }


-- | Reference to the BigQuery Job that was created to run the query. This
-- field will be present even if the original request timed out, in which
-- case GetQueryResults can be used to read the results once the query has
-- completed. Since this API only returns the first page of results,
-- subsequent pages can be fetched via the same mechanism
-- (GetQueryResults).
gqrrJobReference :: Lens' GetQueryResultsResponse (Maybe JobReference)
gqrrJobReference
  = lens _gqrrJobReference
      (\ s a -> s{_gqrrJobReference = a})

-- | A hash of this response.
gqrrEtag :: Lens' GetQueryResultsResponse (Maybe Text)
gqrrEtag = lens _gqrrEtag (\ s a -> s{_gqrrEtag = a})

-- | The resource type of the response.
gqrrKind :: Lens' GetQueryResultsResponse Text
gqrrKind = lens _gqrrKind (\ s a -> s{_gqrrKind = a})

-- | The schema of the results. Present only when the query completes
-- successfully.
gqrrSchema :: Lens' GetQueryResultsResponse (Maybe TableSchema)
gqrrSchema
  = lens _gqrrSchema (\ s a -> s{_gqrrSchema = a})

-- | The total number of bytes processed for this query.
gqrrTotalBytesProcessed :: Lens' GetQueryResultsResponse (Maybe Int64)
gqrrTotalBytesProcessed
  = lens _gqrrTotalBytesProcessed
      (\ s a -> s{_gqrrTotalBytesProcessed = a})
      . mapping _Coerce

-- | An object with as many results as can be contained within the maximum
-- permitted reply size. To get any additional rows, you can call
-- GetQueryResults and specify the jobReference returned above. Present
-- only when the query completes successfully.
gqrrRows :: Lens' GetQueryResultsResponse [TableRow]
gqrrRows
  = lens _gqrrRows (\ s a -> s{_gqrrRows = a}) .
      _Default
      . _Coerce

-- | A token used for paging results.
gqrrPageToken :: Lens' GetQueryResultsResponse (Maybe Text)
gqrrPageToken
  = lens _gqrrPageToken
      (\ s a -> s{_gqrrPageToken = a})

-- | [Output-only] The number of rows affected by a DML statement. Present
-- only for DML statements INSERT, UPDATE or DELETE.
gqrrNumDmlAffectedRows :: Lens' GetQueryResultsResponse (Maybe Int64)
gqrrNumDmlAffectedRows
  = lens _gqrrNumDmlAffectedRows
      (\ s a -> s{_gqrrNumDmlAffectedRows = a})
      . mapping _Coerce

-- | The total number of rows in the complete query result set, which can be
-- more than the number of rows in this single page of results. Present
-- only when the query completes successfully.
gqrrTotalRows :: Lens' GetQueryResultsResponse (Maybe Word64)
gqrrTotalRows
  = lens _gqrrTotalRows
      (\ s a -> s{_gqrrTotalRows = a})
      . mapping _Coerce

-- | [Output-only] The first errors or warnings encountered during the
-- running of the job. The final message includes the number of errors that
-- caused the process to stop. Errors here do not necessarily mean that the
-- job has completed or was unsuccessful.
gqrrErrors :: Lens' GetQueryResultsResponse [ErrorProto]
gqrrErrors
  = lens _gqrrErrors (\ s a -> s{_gqrrErrors = a}) .
      _Default
      . _Coerce

-- | Whether the query has completed or not. If rows or totalRows are
-- present, this will always be true. If this is false, totalRows will not
-- be available.
gqrrJobComplete :: Lens' GetQueryResultsResponse (Maybe Bool)
gqrrJobComplete
  = lens _gqrrJobComplete
      (\ s a -> s{_gqrrJobComplete = a})

-- | Whether the query result was fetched from the query cache.
gqrrCacheHit :: Lens' GetQueryResultsResponse (Maybe Bool)
gqrrCacheHit
  = lens _gqrrCacheHit (\ s a -> s{_gqrrCacheHit = a})

instance FromJSON GetQueryResultsResponse where
        parseJSON
          = withObject "GetQueryResultsResponse"
              (\ o ->
                 GetQueryResultsResponse' <$>
                   (o .:? "jobReference") <*> (o .:? "etag") <*>
                     (o .:? "kind" .!= "bigquery#getQueryResultsResponse")
                     <*> (o .:? "schema")
                     <*> (o .:? "totalBytesProcessed")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "pageToken")
                     <*> (o .:? "numDmlAffectedRows")
                     <*> (o .:? "totalRows")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "jobComplete")
                     <*> (o .:? "cacheHit"))

instance ToJSON GetQueryResultsResponse where
        toJSON GetQueryResultsResponse'{..}
          = object
              (catMaybes
                 [("jobReference" .=) <$> _gqrrJobReference,
                  ("etag" .=) <$> _gqrrEtag,
                  Just ("kind" .= _gqrrKind),
                  ("schema" .=) <$> _gqrrSchema,
                  ("totalBytesProcessed" .=) <$>
                    _gqrrTotalBytesProcessed,
                  ("rows" .=) <$> _gqrrRows,
                  ("pageToken" .=) <$> _gqrrPageToken,
                  ("numDmlAffectedRows" .=) <$>
                    _gqrrNumDmlAffectedRows,
                  ("totalRows" .=) <$> _gqrrTotalRows,
                  ("errors" .=) <$> _gqrrErrors,
                  ("jobComplete" .=) <$> _gqrrJobComplete,
                  ("cacheHit" .=) <$> _gqrrCacheHit])

-- | Evaluation metrics for regression and explicit feedback type matrix
-- factorization models.
--
-- /See:/ 'regressionMetrics' smart constructor.
data RegressionMetrics =
  RegressionMetrics'
    { _rmMeanAbsoluteError :: !(Maybe (Textual Double))
    , _rmMeanSquaredLogError :: !(Maybe (Textual Double))
    , _rmRSquared :: !(Maybe (Textual Double))
    , _rmMeanSquaredError :: !(Maybe (Textual Double))
    , _rmMedianAbsoluteError :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegressionMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmMeanAbsoluteError'
--
-- * 'rmMeanSquaredLogError'
--
-- * 'rmRSquared'
--
-- * 'rmMeanSquaredError'
--
-- * 'rmMedianAbsoluteError'
regressionMetrics
    :: RegressionMetrics
regressionMetrics =
  RegressionMetrics'
    { _rmMeanAbsoluteError = Nothing
    , _rmMeanSquaredLogError = Nothing
    , _rmRSquared = Nothing
    , _rmMeanSquaredError = Nothing
    , _rmMedianAbsoluteError = Nothing
    }


-- | Mean absolute error.
rmMeanAbsoluteError :: Lens' RegressionMetrics (Maybe Double)
rmMeanAbsoluteError
  = lens _rmMeanAbsoluteError
      (\ s a -> s{_rmMeanAbsoluteError = a})
      . mapping _Coerce

-- | Mean squared log error.
rmMeanSquaredLogError :: Lens' RegressionMetrics (Maybe Double)
rmMeanSquaredLogError
  = lens _rmMeanSquaredLogError
      (\ s a -> s{_rmMeanSquaredLogError = a})
      . mapping _Coerce

-- | R^2 score. This corresponds to r2_score in ML.EVALUATE.
rmRSquared :: Lens' RegressionMetrics (Maybe Double)
rmRSquared
  = lens _rmRSquared (\ s a -> s{_rmRSquared = a}) .
      mapping _Coerce

-- | Mean squared error.
rmMeanSquaredError :: Lens' RegressionMetrics (Maybe Double)
rmMeanSquaredError
  = lens _rmMeanSquaredError
      (\ s a -> s{_rmMeanSquaredError = a})
      . mapping _Coerce

-- | Median absolute error.
rmMedianAbsoluteError :: Lens' RegressionMetrics (Maybe Double)
rmMedianAbsoluteError
  = lens _rmMedianAbsoluteError
      (\ s a -> s{_rmMedianAbsoluteError = a})
      . mapping _Coerce

instance FromJSON RegressionMetrics where
        parseJSON
          = withObject "RegressionMetrics"
              (\ o ->
                 RegressionMetrics' <$>
                   (o .:? "meanAbsoluteError") <*>
                     (o .:? "meanSquaredLogError")
                     <*> (o .:? "rSquared")
                     <*> (o .:? "meanSquaredError")
                     <*> (o .:? "medianAbsoluteError"))

instance ToJSON RegressionMetrics where
        toJSON RegressionMetrics'{..}
          = object
              (catMaybes
                 [("meanAbsoluteError" .=) <$> _rmMeanAbsoluteError,
                  ("meanSquaredLogError" .=) <$>
                    _rmMeanSquaredLogError,
                  ("rSquared" .=) <$> _rmRSquared,
                  ("meanSquaredError" .=) <$> _rmMeanSquaredError,
                  ("medianAbsoluteError" .=) <$>
                    _rmMedianAbsoluteError])

--
-- /See:/ 'biEngineStatistics' smart constructor.
data BiEngineStatistics =
  BiEngineStatistics'
    { _besBiEngineReasons :: !(Maybe [BiEngineReason])
    , _besBiEngineMode :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiEngineStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'besBiEngineReasons'
--
-- * 'besBiEngineMode'
biEngineStatistics
    :: BiEngineStatistics
biEngineStatistics =
  BiEngineStatistics'
    { _besBiEngineReasons = Nothing
    , _besBiEngineMode = "$(stats.bi_engine_mode)"
    }


-- | In case of DISABLED or PARTIAL bi_engine_mode, these contain the
-- explanatory reasons as to why BI Engine could not accelerate. In case
-- the full query was accelerated, this field is not populated.
besBiEngineReasons :: Lens' BiEngineStatistics [BiEngineReason]
besBiEngineReasons
  = lens _besBiEngineReasons
      (\ s a -> s{_besBiEngineReasons = a})
      . _Default
      . _Coerce

-- | [Output-only] Specifies which mode of BI Engine acceleration was
-- performed (if any).
besBiEngineMode :: Lens' BiEngineStatistics Text
besBiEngineMode
  = lens _besBiEngineMode
      (\ s a -> s{_besBiEngineMode = a})

instance FromJSON BiEngineStatistics where
        parseJSON
          = withObject "BiEngineStatistics"
              (\ o ->
                 BiEngineStatistics' <$>
                   (o .:? "biEngineReasons" .!= mempty) <*>
                     (o .:? "biEngineMode" .!= "$(stats.bi_engine_mode)"))

instance ToJSON BiEngineStatistics where
        toJSON BiEngineStatistics'{..}
          = object
              (catMaybes
                 [("biEngineReasons" .=) <$> _besBiEngineReasons,
                  Just ("biEngineMode" .= _besBiEngineMode)])

-- | Options used in model training.
--
-- /See:/ 'trainingOptions' smart constructor.
data TrainingOptions =
  TrainingOptions'
    { _toDataFrequency :: !(Maybe TrainingOptionsDataFrequency)
    , _toDataSplitColumn :: !(Maybe Text)
    , _toHiddenUnits :: !(Maybe [Textual Int64])
    , _toUserColumn :: !(Maybe Text)
    , _toMaxTreeDepth :: !(Maybe (Textual Int64))
    , _toNumClusters :: !(Maybe (Textual Int64))
    , _toCleanSpikesAndDips :: !(Maybe Bool)
    , _toDecomposeTimeSeries :: !(Maybe Bool)
    , _toL2Regularization :: !(Maybe (Textual Double))
    , _toSubSample :: !(Maybe (Textual Double))
    , _toAdjustStepChanges :: !(Maybe Bool)
    , _toInputLabelColumns :: !(Maybe [Text])
    , _toWalsAlpha :: !(Maybe (Textual Double))
    , _toTimeSeriesDataColumn :: !(Maybe Text)
    , _toKmeansInitializationMethod :: !(Maybe TrainingOptionsKmeansInitializationMethod)
    , _toAutoArimaMaxOrder :: !(Maybe (Textual Int64))
    , _toMinRelativeProgress :: !(Maybe (Textual Double))
    , _toTimeSeriesIdColumns :: !(Maybe [Text])
    , _toDataSplitEvalFraction :: !(Maybe (Textual Double))
    , _toLearnRate :: !(Maybe (Textual Double))
    , _toHolidayRegion :: !(Maybe TrainingOptionsHolidayRegion)
    , _toBatchSize :: !(Maybe (Textual Int64))
    , _toIncludeDrift :: !(Maybe Bool)
    , _toFeedbackType :: !(Maybe TrainingOptionsFeedbackType)
    , _toAutoArima :: !(Maybe Bool)
    , _toNonSeasonalOrder :: !(Maybe ArimaOrder)
    , _toDropout :: !(Maybe (Textual Double))
    , _toHorizon :: !(Maybe (Textual Int64))
    , _toPreserveInputStructs :: !(Maybe Bool)
    , _toOptimizationStrategy :: !(Maybe TrainingOptionsOptimizationStrategy)
    , _toDataSplitMethod :: !(Maybe TrainingOptionsDataSplitMethod)
    , _toLearnRateStrategy :: !(Maybe TrainingOptionsLearnRateStrategy)
    , _toTimeSeriesIdColumn :: !(Maybe Text)
    , _toMaxIterations :: !(Maybe (Textual Int64))
    , _toInitialLearnRate :: !(Maybe (Textual Double))
    , _toNumFactors :: !(Maybe (Textual Int64))
    , _toEarlyStop :: !(Maybe Bool)
    , _toLabelClassWeights :: !(Maybe TrainingOptionsLabelClassWeights)
    , _toLossType :: !(Maybe TrainingOptionsLossType)
    , _toDistanceType :: !(Maybe TrainingOptionsDistanceType)
    , _toItemColumn :: !(Maybe Text)
    , _toMinSplitLoss :: !(Maybe (Textual Double))
    , _toTimeSeriesTimestampColumn :: !(Maybe Text)
    , _toKmeansInitializationColumn :: !(Maybe Text)
    , _toWarmStart :: !(Maybe Bool)
    , _toModelURI :: !(Maybe Text)
    , _toL1Regularization :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrainingOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toDataFrequency'
--
-- * 'toDataSplitColumn'
--
-- * 'toHiddenUnits'
--
-- * 'toUserColumn'
--
-- * 'toMaxTreeDepth'
--
-- * 'toNumClusters'
--
-- * 'toCleanSpikesAndDips'
--
-- * 'toDecomposeTimeSeries'
--
-- * 'toL2Regularization'
--
-- * 'toSubSample'
--
-- * 'toAdjustStepChanges'
--
-- * 'toInputLabelColumns'
--
-- * 'toWalsAlpha'
--
-- * 'toTimeSeriesDataColumn'
--
-- * 'toKmeansInitializationMethod'
--
-- * 'toAutoArimaMaxOrder'
--
-- * 'toMinRelativeProgress'
--
-- * 'toTimeSeriesIdColumns'
--
-- * 'toDataSplitEvalFraction'
--
-- * 'toLearnRate'
--
-- * 'toHolidayRegion'
--
-- * 'toBatchSize'
--
-- * 'toIncludeDrift'
--
-- * 'toFeedbackType'
--
-- * 'toAutoArima'
--
-- * 'toNonSeasonalOrder'
--
-- * 'toDropout'
--
-- * 'toHorizon'
--
-- * 'toPreserveInputStructs'
--
-- * 'toOptimizationStrategy'
--
-- * 'toDataSplitMethod'
--
-- * 'toLearnRateStrategy'
--
-- * 'toTimeSeriesIdColumn'
--
-- * 'toMaxIterations'
--
-- * 'toInitialLearnRate'
--
-- * 'toNumFactors'
--
-- * 'toEarlyStop'
--
-- * 'toLabelClassWeights'
--
-- * 'toLossType'
--
-- * 'toDistanceType'
--
-- * 'toItemColumn'
--
-- * 'toMinSplitLoss'
--
-- * 'toTimeSeriesTimestampColumn'
--
-- * 'toKmeansInitializationColumn'
--
-- * 'toWarmStart'
--
-- * 'toModelURI'
--
-- * 'toL1Regularization'
trainingOptions
    :: TrainingOptions
trainingOptions =
  TrainingOptions'
    { _toDataFrequency = Nothing
    , _toDataSplitColumn = Nothing
    , _toHiddenUnits = Nothing
    , _toUserColumn = Nothing
    , _toMaxTreeDepth = Nothing
    , _toNumClusters = Nothing
    , _toCleanSpikesAndDips = Nothing
    , _toDecomposeTimeSeries = Nothing
    , _toL2Regularization = Nothing
    , _toSubSample = Nothing
    , _toAdjustStepChanges = Nothing
    , _toInputLabelColumns = Nothing
    , _toWalsAlpha = Nothing
    , _toTimeSeriesDataColumn = Nothing
    , _toKmeansInitializationMethod = Nothing
    , _toAutoArimaMaxOrder = Nothing
    , _toMinRelativeProgress = Nothing
    , _toTimeSeriesIdColumns = Nothing
    , _toDataSplitEvalFraction = Nothing
    , _toLearnRate = Nothing
    , _toHolidayRegion = Nothing
    , _toBatchSize = Nothing
    , _toIncludeDrift = Nothing
    , _toFeedbackType = Nothing
    , _toAutoArima = Nothing
    , _toNonSeasonalOrder = Nothing
    , _toDropout = Nothing
    , _toHorizon = Nothing
    , _toPreserveInputStructs = Nothing
    , _toOptimizationStrategy = Nothing
    , _toDataSplitMethod = Nothing
    , _toLearnRateStrategy = Nothing
    , _toTimeSeriesIdColumn = Nothing
    , _toMaxIterations = Nothing
    , _toInitialLearnRate = Nothing
    , _toNumFactors = Nothing
    , _toEarlyStop = Nothing
    , _toLabelClassWeights = Nothing
    , _toLossType = Nothing
    , _toDistanceType = Nothing
    , _toItemColumn = Nothing
    , _toMinSplitLoss = Nothing
    , _toTimeSeriesTimestampColumn = Nothing
    , _toKmeansInitializationColumn = Nothing
    , _toWarmStart = Nothing
    , _toModelURI = Nothing
    , _toL1Regularization = Nothing
    }


-- | The data frequency of a time series.
toDataFrequency :: Lens' TrainingOptions (Maybe TrainingOptionsDataFrequency)
toDataFrequency
  = lens _toDataFrequency
      (\ s a -> s{_toDataFrequency = a})

-- | The column to split data with. This column won\'t be used as a feature.
-- 1. When data_split_method is CUSTOM, the corresponding column should be
-- boolean. The rows with true value tag are eval data, and the false are
-- training data. 2. When data_split_method is SEQ, the first
-- DATA_SPLIT_EVAL_FRACTION rows (from smallest to largest) in the
-- corresponding column are used as training data, and the rest are eval
-- data. It respects the order in Orderable data types:
-- https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-types#data-type-properties
toDataSplitColumn :: Lens' TrainingOptions (Maybe Text)
toDataSplitColumn
  = lens _toDataSplitColumn
      (\ s a -> s{_toDataSplitColumn = a})

-- | Hidden units for dnn models.
toHiddenUnits :: Lens' TrainingOptions [Int64]
toHiddenUnits
  = lens _toHiddenUnits
      (\ s a -> s{_toHiddenUnits = a})
      . _Default
      . _Coerce

-- | User column specified for matrix factorization models.
toUserColumn :: Lens' TrainingOptions (Maybe Text)
toUserColumn
  = lens _toUserColumn (\ s a -> s{_toUserColumn = a})

-- | Maximum depth of a tree for boosted tree models.
toMaxTreeDepth :: Lens' TrainingOptions (Maybe Int64)
toMaxTreeDepth
  = lens _toMaxTreeDepth
      (\ s a -> s{_toMaxTreeDepth = a})
      . mapping _Coerce

-- | Number of clusters for clustering models.
toNumClusters :: Lens' TrainingOptions (Maybe Int64)
toNumClusters
  = lens _toNumClusters
      (\ s a -> s{_toNumClusters = a})
      . mapping _Coerce

-- | If true, clean spikes and dips in the input time series.
toCleanSpikesAndDips :: Lens' TrainingOptions (Maybe Bool)
toCleanSpikesAndDips
  = lens _toCleanSpikesAndDips
      (\ s a -> s{_toCleanSpikesAndDips = a})

-- | If true, perform decompose time series and save the results.
toDecomposeTimeSeries :: Lens' TrainingOptions (Maybe Bool)
toDecomposeTimeSeries
  = lens _toDecomposeTimeSeries
      (\ s a -> s{_toDecomposeTimeSeries = a})

-- | L2 regularization coefficient.
toL2Regularization :: Lens' TrainingOptions (Maybe Double)
toL2Regularization
  = lens _toL2Regularization
      (\ s a -> s{_toL2Regularization = a})
      . mapping _Coerce

-- | Subsample fraction of the training data to grow tree to prevent
-- overfitting for boosted tree models.
toSubSample :: Lens' TrainingOptions (Maybe Double)
toSubSample
  = lens _toSubSample (\ s a -> s{_toSubSample = a}) .
      mapping _Coerce

-- | If true, detect step changes and make data adjustment in the input time
-- series.
toAdjustStepChanges :: Lens' TrainingOptions (Maybe Bool)
toAdjustStepChanges
  = lens _toAdjustStepChanges
      (\ s a -> s{_toAdjustStepChanges = a})

-- | Name of input label columns in training data.
toInputLabelColumns :: Lens' TrainingOptions [Text]
toInputLabelColumns
  = lens _toInputLabelColumns
      (\ s a -> s{_toInputLabelColumns = a})
      . _Default
      . _Coerce

-- | Hyperparameter for matrix factoration when implicit feedback type is
-- specified.
toWalsAlpha :: Lens' TrainingOptions (Maybe Double)
toWalsAlpha
  = lens _toWalsAlpha (\ s a -> s{_toWalsAlpha = a}) .
      mapping _Coerce

-- | Column to be designated as time series data for ARIMA model.
toTimeSeriesDataColumn :: Lens' TrainingOptions (Maybe Text)
toTimeSeriesDataColumn
  = lens _toTimeSeriesDataColumn
      (\ s a -> s{_toTimeSeriesDataColumn = a})

-- | The method used to initialize the centroids for kmeans algorithm.
toKmeansInitializationMethod :: Lens' TrainingOptions (Maybe TrainingOptionsKmeansInitializationMethod)
toKmeansInitializationMethod
  = lens _toKmeansInitializationMethod
      (\ s a -> s{_toKmeansInitializationMethod = a})

-- | The max value of non-seasonal p and q.
toAutoArimaMaxOrder :: Lens' TrainingOptions (Maybe Int64)
toAutoArimaMaxOrder
  = lens _toAutoArimaMaxOrder
      (\ s a -> s{_toAutoArimaMaxOrder = a})
      . mapping _Coerce

-- | When early_stop is true, stops training when accuracy improvement is
-- less than \'min_relative_progress\'. Used only for iterative training
-- algorithms.
toMinRelativeProgress :: Lens' TrainingOptions (Maybe Double)
toMinRelativeProgress
  = lens _toMinRelativeProgress
      (\ s a -> s{_toMinRelativeProgress = a})
      . mapping _Coerce

-- | The time series id columns that were used during ARIMA model training.
toTimeSeriesIdColumns :: Lens' TrainingOptions [Text]
toTimeSeriesIdColumns
  = lens _toTimeSeriesIdColumns
      (\ s a -> s{_toTimeSeriesIdColumns = a})
      . _Default
      . _Coerce

-- | The fraction of evaluation data over the whole input data. The rest of
-- data will be used as training data. The format should be double.
-- Accurate to two decimal places. Default value is 0.2.
toDataSplitEvalFraction :: Lens' TrainingOptions (Maybe Double)
toDataSplitEvalFraction
  = lens _toDataSplitEvalFraction
      (\ s a -> s{_toDataSplitEvalFraction = a})
      . mapping _Coerce

-- | Learning rate in training. Used only for iterative training algorithms.
toLearnRate :: Lens' TrainingOptions (Maybe Double)
toLearnRate
  = lens _toLearnRate (\ s a -> s{_toLearnRate = a}) .
      mapping _Coerce

-- | The geographical region based on which the holidays are considered in
-- time series modeling. If a valid value is specified, then holiday
-- effects modeling is enabled.
toHolidayRegion :: Lens' TrainingOptions (Maybe TrainingOptionsHolidayRegion)
toHolidayRegion
  = lens _toHolidayRegion
      (\ s a -> s{_toHolidayRegion = a})

-- | Batch size for dnn models.
toBatchSize :: Lens' TrainingOptions (Maybe Int64)
toBatchSize
  = lens _toBatchSize (\ s a -> s{_toBatchSize = a}) .
      mapping _Coerce

-- | Include drift when fitting an ARIMA model.
toIncludeDrift :: Lens' TrainingOptions (Maybe Bool)
toIncludeDrift
  = lens _toIncludeDrift
      (\ s a -> s{_toIncludeDrift = a})

-- | Feedback type that specifies which algorithm to run for matrix
-- factorization.
toFeedbackType :: Lens' TrainingOptions (Maybe TrainingOptionsFeedbackType)
toFeedbackType
  = lens _toFeedbackType
      (\ s a -> s{_toFeedbackType = a})

-- | Whether to enable auto ARIMA or not.
toAutoArima :: Lens' TrainingOptions (Maybe Bool)
toAutoArima
  = lens _toAutoArima (\ s a -> s{_toAutoArima = a})

-- | A specification of the non-seasonal part of the ARIMA model: the three
-- components (p, d, q) are the AR order, the degree of differencing, and
-- the MA order.
toNonSeasonalOrder :: Lens' TrainingOptions (Maybe ArimaOrder)
toNonSeasonalOrder
  = lens _toNonSeasonalOrder
      (\ s a -> s{_toNonSeasonalOrder = a})

-- | Dropout probability for dnn models.
toDropout :: Lens' TrainingOptions (Maybe Double)
toDropout
  = lens _toDropout (\ s a -> s{_toDropout = a}) .
      mapping _Coerce

-- | The number of periods ahead that need to be forecasted.
toHorizon :: Lens' TrainingOptions (Maybe Int64)
toHorizon
  = lens _toHorizon (\ s a -> s{_toHorizon = a}) .
      mapping _Coerce

-- | Whether to preserve the input structs in output feature names. Suppose
-- there is a struct A with field b. When false (default), the output
-- feature name is A_b. When true, the output feature name is A.b.
toPreserveInputStructs :: Lens' TrainingOptions (Maybe Bool)
toPreserveInputStructs
  = lens _toPreserveInputStructs
      (\ s a -> s{_toPreserveInputStructs = a})

-- | Optimization strategy for training linear regression models.
toOptimizationStrategy :: Lens' TrainingOptions (Maybe TrainingOptionsOptimizationStrategy)
toOptimizationStrategy
  = lens _toOptimizationStrategy
      (\ s a -> s{_toOptimizationStrategy = a})

-- | The data split type for training and evaluation, e.g. RANDOM.
toDataSplitMethod :: Lens' TrainingOptions (Maybe TrainingOptionsDataSplitMethod)
toDataSplitMethod
  = lens _toDataSplitMethod
      (\ s a -> s{_toDataSplitMethod = a})

-- | The strategy to determine learn rate for the current iteration.
toLearnRateStrategy :: Lens' TrainingOptions (Maybe TrainingOptionsLearnRateStrategy)
toLearnRateStrategy
  = lens _toLearnRateStrategy
      (\ s a -> s{_toLearnRateStrategy = a})

-- | The time series id column that was used during ARIMA model training.
toTimeSeriesIdColumn :: Lens' TrainingOptions (Maybe Text)
toTimeSeriesIdColumn
  = lens _toTimeSeriesIdColumn
      (\ s a -> s{_toTimeSeriesIdColumn = a})

-- | The maximum number of iterations in training. Used only for iterative
-- training algorithms.
toMaxIterations :: Lens' TrainingOptions (Maybe Int64)
toMaxIterations
  = lens _toMaxIterations
      (\ s a -> s{_toMaxIterations = a})
      . mapping _Coerce

-- | Specifies the initial learning rate for the line search learn rate
-- strategy.
toInitialLearnRate :: Lens' TrainingOptions (Maybe Double)
toInitialLearnRate
  = lens _toInitialLearnRate
      (\ s a -> s{_toInitialLearnRate = a})
      . mapping _Coerce

-- | Num factors specified for matrix factorization models.
toNumFactors :: Lens' TrainingOptions (Maybe Int64)
toNumFactors
  = lens _toNumFactors (\ s a -> s{_toNumFactors = a})
      . mapping _Coerce

-- | Whether to stop early when the loss doesn\'t improve significantly any
-- more (compared to min_relative_progress). Used only for iterative
-- training algorithms.
toEarlyStop :: Lens' TrainingOptions (Maybe Bool)
toEarlyStop
  = lens _toEarlyStop (\ s a -> s{_toEarlyStop = a})

-- | Weights associated with each label class, for rebalancing the training
-- data. Only applicable for classification models.
toLabelClassWeights :: Lens' TrainingOptions (Maybe TrainingOptionsLabelClassWeights)
toLabelClassWeights
  = lens _toLabelClassWeights
      (\ s a -> s{_toLabelClassWeights = a})

-- | Type of loss function used during training run.
toLossType :: Lens' TrainingOptions (Maybe TrainingOptionsLossType)
toLossType
  = lens _toLossType (\ s a -> s{_toLossType = a})

-- | Distance type for clustering models.
toDistanceType :: Lens' TrainingOptions (Maybe TrainingOptionsDistanceType)
toDistanceType
  = lens _toDistanceType
      (\ s a -> s{_toDistanceType = a})

-- | Item column specified for matrix factorization models.
toItemColumn :: Lens' TrainingOptions (Maybe Text)
toItemColumn
  = lens _toItemColumn (\ s a -> s{_toItemColumn = a})

-- | Minimum split loss for boosted tree models.
toMinSplitLoss :: Lens' TrainingOptions (Maybe Double)
toMinSplitLoss
  = lens _toMinSplitLoss
      (\ s a -> s{_toMinSplitLoss = a})
      . mapping _Coerce

-- | Column to be designated as time series timestamp for ARIMA model.
toTimeSeriesTimestampColumn :: Lens' TrainingOptions (Maybe Text)
toTimeSeriesTimestampColumn
  = lens _toTimeSeriesTimestampColumn
      (\ s a -> s{_toTimeSeriesTimestampColumn = a})

-- | The column used to provide the initial centroids for kmeans algorithm
-- when kmeans_initialization_method is CUSTOM.
toKmeansInitializationColumn :: Lens' TrainingOptions (Maybe Text)
toKmeansInitializationColumn
  = lens _toKmeansInitializationColumn
      (\ s a -> s{_toKmeansInitializationColumn = a})

-- | Whether to train a model from the last checkpoint.
toWarmStart :: Lens' TrainingOptions (Maybe Bool)
toWarmStart
  = lens _toWarmStart (\ s a -> s{_toWarmStart = a})

-- | Google Cloud Storage URI from which the model was imported. Only
-- applicable for imported models.
toModelURI :: Lens' TrainingOptions (Maybe Text)
toModelURI
  = lens _toModelURI (\ s a -> s{_toModelURI = a})

-- | L1 regularization coefficient.
toL1Regularization :: Lens' TrainingOptions (Maybe Double)
toL1Regularization
  = lens _toL1Regularization
      (\ s a -> s{_toL1Regularization = a})
      . mapping _Coerce

instance FromJSON TrainingOptions where
        parseJSON
          = withObject "TrainingOptions"
              (\ o ->
                 TrainingOptions' <$>
                   (o .:? "dataFrequency") <*> (o .:? "dataSplitColumn")
                     <*> (o .:? "hiddenUnits" .!= mempty)
                     <*> (o .:? "userColumn")
                     <*> (o .:? "maxTreeDepth")
                     <*> (o .:? "numClusters")
                     <*> (o .:? "cleanSpikesAndDips")
                     <*> (o .:? "decomposeTimeSeries")
                     <*> (o .:? "l2Regularization")
                     <*> (o .:? "subsample")
                     <*> (o .:? "adjustStepChanges")
                     <*> (o .:? "inputLabelColumns" .!= mempty)
                     <*> (o .:? "walsAlpha")
                     <*> (o .:? "timeSeriesDataColumn")
                     <*> (o .:? "kmeansInitializationMethod")
                     <*> (o .:? "autoArimaMaxOrder")
                     <*> (o .:? "minRelativeProgress")
                     <*> (o .:? "timeSeriesIdColumns" .!= mempty)
                     <*> (o .:? "dataSplitEvalFraction")
                     <*> (o .:? "learnRate")
                     <*> (o .:? "holidayRegion")
                     <*> (o .:? "batchSize")
                     <*> (o .:? "includeDrift")
                     <*> (o .:? "feedbackType")
                     <*> (o .:? "autoArima")
                     <*> (o .:? "nonSeasonalOrder")
                     <*> (o .:? "dropout")
                     <*> (o .:? "horizon")
                     <*> (o .:? "preserveInputStructs")
                     <*> (o .:? "optimizationStrategy")
                     <*> (o .:? "dataSplitMethod")
                     <*> (o .:? "learnRateStrategy")
                     <*> (o .:? "timeSeriesIdColumn")
                     <*> (o .:? "maxIterations")
                     <*> (o .:? "initialLearnRate")
                     <*> (o .:? "numFactors")
                     <*> (o .:? "earlyStop")
                     <*> (o .:? "labelClassWeights")
                     <*> (o .:? "lossType")
                     <*> (o .:? "distanceType")
                     <*> (o .:? "itemColumn")
                     <*> (o .:? "minSplitLoss")
                     <*> (o .:? "timeSeriesTimestampColumn")
                     <*> (o .:? "kmeansInitializationColumn")
                     <*> (o .:? "warmStart")
                     <*> (o .:? "modelUri")
                     <*> (o .:? "l1Regularization"))

instance ToJSON TrainingOptions where
        toJSON TrainingOptions'{..}
          = object
              (catMaybes
                 [("dataFrequency" .=) <$> _toDataFrequency,
                  ("dataSplitColumn" .=) <$> _toDataSplitColumn,
                  ("hiddenUnits" .=) <$> _toHiddenUnits,
                  ("userColumn" .=) <$> _toUserColumn,
                  ("maxTreeDepth" .=) <$> _toMaxTreeDepth,
                  ("numClusters" .=) <$> _toNumClusters,
                  ("cleanSpikesAndDips" .=) <$> _toCleanSpikesAndDips,
                  ("decomposeTimeSeries" .=) <$>
                    _toDecomposeTimeSeries,
                  ("l2Regularization" .=) <$> _toL2Regularization,
                  ("subsample" .=) <$> _toSubSample,
                  ("adjustStepChanges" .=) <$> _toAdjustStepChanges,
                  ("inputLabelColumns" .=) <$> _toInputLabelColumns,
                  ("walsAlpha" .=) <$> _toWalsAlpha,
                  ("timeSeriesDataColumn" .=) <$>
                    _toTimeSeriesDataColumn,
                  ("kmeansInitializationMethod" .=) <$>
                    _toKmeansInitializationMethod,
                  ("autoArimaMaxOrder" .=) <$> _toAutoArimaMaxOrder,
                  ("minRelativeProgress" .=) <$>
                    _toMinRelativeProgress,
                  ("timeSeriesIdColumns" .=) <$>
                    _toTimeSeriesIdColumns,
                  ("dataSplitEvalFraction" .=) <$>
                    _toDataSplitEvalFraction,
                  ("learnRate" .=) <$> _toLearnRate,
                  ("holidayRegion" .=) <$> _toHolidayRegion,
                  ("batchSize" .=) <$> _toBatchSize,
                  ("includeDrift" .=) <$> _toIncludeDrift,
                  ("feedbackType" .=) <$> _toFeedbackType,
                  ("autoArima" .=) <$> _toAutoArima,
                  ("nonSeasonalOrder" .=) <$> _toNonSeasonalOrder,
                  ("dropout" .=) <$> _toDropout,
                  ("horizon" .=) <$> _toHorizon,
                  ("preserveInputStructs" .=) <$>
                    _toPreserveInputStructs,
                  ("optimizationStrategy" .=) <$>
                    _toOptimizationStrategy,
                  ("dataSplitMethod" .=) <$> _toDataSplitMethod,
                  ("learnRateStrategy" .=) <$> _toLearnRateStrategy,
                  ("timeSeriesIdColumn" .=) <$> _toTimeSeriesIdColumn,
                  ("maxIterations" .=) <$> _toMaxIterations,
                  ("initialLearnRate" .=) <$> _toInitialLearnRate,
                  ("numFactors" .=) <$> _toNumFactors,
                  ("earlyStop" .=) <$> _toEarlyStop,
                  ("labelClassWeights" .=) <$> _toLabelClassWeights,
                  ("lossType" .=) <$> _toLossType,
                  ("distanceType" .=) <$> _toDistanceType,
                  ("itemColumn" .=) <$> _toItemColumn,
                  ("minSplitLoss" .=) <$> _toMinSplitLoss,
                  ("timeSeriesTimestampColumn" .=) <$>
                    _toTimeSeriesTimestampColumn,
                  ("kmeansInitializationColumn" .=) <$>
                    _toKmeansInitializationColumn,
                  ("warmStart" .=) <$> _toWarmStart,
                  ("modelUri" .=) <$> _toModelURI,
                  ("l1Regularization" .=) <$> _toL1Regularization])

--
-- /See:/ 'dataSetList' smart constructor.
data DataSetList =
  DataSetList'
    { _dslEtag :: !(Maybe Text)
    , _dslNextPageToken :: !(Maybe Text)
    , _dslKind :: !Text
    , _dslDataSets :: !(Maybe [DataSetListDataSetsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslEtag'
--
-- * 'dslNextPageToken'
--
-- * 'dslKind'
--
-- * 'dslDataSets'
dataSetList
    :: DataSetList
dataSetList =
  DataSetList'
    { _dslEtag = Nothing
    , _dslNextPageToken = Nothing
    , _dslKind = "bigquery#datasetList"
    , _dslDataSets = Nothing
    }


-- | A hash value of the results page. You can use this property to determine
-- if the page has changed since the last request.
dslEtag :: Lens' DataSetList (Maybe Text)
dslEtag = lens _dslEtag (\ s a -> s{_dslEtag = a})

-- | A token that can be used to request the next results page. This property
-- is omitted on the final results page.
dslNextPageToken :: Lens' DataSetList (Maybe Text)
dslNextPageToken
  = lens _dslNextPageToken
      (\ s a -> s{_dslNextPageToken = a})

-- | The list type. This property always returns the value
-- \"bigquery#datasetList\".
dslKind :: Lens' DataSetList Text
dslKind = lens _dslKind (\ s a -> s{_dslKind = a})

-- | An array of the dataset resources in the project. Each resource contains
-- basic information. For full information about a particular dataset
-- resource, use the Datasets: get method. This property is omitted when
-- there are no datasets in the project.
dslDataSets :: Lens' DataSetList [DataSetListDataSetsItem]
dslDataSets
  = lens _dslDataSets (\ s a -> s{_dslDataSets = a}) .
      _Default
      . _Coerce

instance FromJSON DataSetList where
        parseJSON
          = withObject "DataSetList"
              (\ o ->
                 DataSetList' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "bigquery#datasetList")
                     <*> (o .:? "datasets" .!= mempty))

instance ToJSON DataSetList where
        toJSON DataSetList'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _dslEtag,
                  ("nextPageToken" .=) <$> _dslNextPageToken,
                  Just ("kind" .= _dslKind),
                  ("datasets" .=) <$> _dslDataSets])

--
-- /See:/ 'sessionInfo' smart constructor.
newtype SessionInfo =
  SessionInfo'
    { _siSessionId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SessionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siSessionId'
sessionInfo
    :: SessionInfo
sessionInfo = SessionInfo' {_siSessionId = Nothing}


-- | [Output-only] \/\/ [Preview] Id of the session.
siSessionId :: Lens' SessionInfo (Maybe Text)
siSessionId
  = lens _siSessionId (\ s a -> s{_siSessionId = a})

instance FromJSON SessionInfo where
        parseJSON
          = withObject "SessionInfo"
              (\ o -> SessionInfo' <$> (o .:? "sessionId"))

instance ToJSON SessionInfo where
        toJSON SessionInfo'{..}
          = object
              (catMaybes [("sessionId" .=) <$> _siSessionId])

-- | Aggregate metrics for classification\/classifier models. For multi-class
-- models, the metrics are either macro-averaged or micro-averaged. When
-- macro-averaged, the metrics are calculated for each label and then an
-- unweighted average is taken of those values. When micro-averaged, the
-- metric is calculated globally by counting the total number of correctly
-- predicted rows.
--
-- /See:/ 'aggregateClassificationMetrics' smart constructor.
data AggregateClassificationMetrics =
  AggregateClassificationMetrics'
    { _acmLogLoss :: !(Maybe (Textual Double))
    , _acmRecall :: !(Maybe (Textual Double))
    , _acmPrecision :: !(Maybe (Textual Double))
    , _acmThreshold :: !(Maybe (Textual Double))
    , _acmF1Score :: !(Maybe (Textual Double))
    , _acmAccuracy :: !(Maybe (Textual Double))
    , _acmRocAuc :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AggregateClassificationMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmLogLoss'
--
-- * 'acmRecall'
--
-- * 'acmPrecision'
--
-- * 'acmThreshold'
--
-- * 'acmF1Score'
--
-- * 'acmAccuracy'
--
-- * 'acmRocAuc'
aggregateClassificationMetrics
    :: AggregateClassificationMetrics
aggregateClassificationMetrics =
  AggregateClassificationMetrics'
    { _acmLogLoss = Nothing
    , _acmRecall = Nothing
    , _acmPrecision = Nothing
    , _acmThreshold = Nothing
    , _acmF1Score = Nothing
    , _acmAccuracy = Nothing
    , _acmRocAuc = Nothing
    }


-- | Logarithmic Loss. For multiclass this is a macro-averaged metric.
acmLogLoss :: Lens' AggregateClassificationMetrics (Maybe Double)
acmLogLoss
  = lens _acmLogLoss (\ s a -> s{_acmLogLoss = a}) .
      mapping _Coerce

-- | Recall is the fraction of actual positive labels that were given a
-- positive prediction. For multiclass this is a macro-averaged metric.
acmRecall :: Lens' AggregateClassificationMetrics (Maybe Double)
acmRecall
  = lens _acmRecall (\ s a -> s{_acmRecall = a}) .
      mapping _Coerce

-- | Precision is the fraction of actual positive predictions that had
-- positive actual labels. For multiclass this is a macro-averaged metric
-- treating each class as a binary classifier.
acmPrecision :: Lens' AggregateClassificationMetrics (Maybe Double)
acmPrecision
  = lens _acmPrecision (\ s a -> s{_acmPrecision = a})
      . mapping _Coerce

-- | Threshold at which the metrics are computed. For binary classification
-- models this is the positive class threshold. For multi-class
-- classfication models this is the confidence threshold.
acmThreshold :: Lens' AggregateClassificationMetrics (Maybe Double)
acmThreshold
  = lens _acmThreshold (\ s a -> s{_acmThreshold = a})
      . mapping _Coerce

-- | The F1 score is an average of recall and precision. For multiclass this
-- is a macro-averaged metric.
acmF1Score :: Lens' AggregateClassificationMetrics (Maybe Double)
acmF1Score
  = lens _acmF1Score (\ s a -> s{_acmF1Score = a}) .
      mapping _Coerce

-- | Accuracy is the fraction of predictions given the correct label. For
-- multiclass this is a micro-averaged metric.
acmAccuracy :: Lens' AggregateClassificationMetrics (Maybe Double)
acmAccuracy
  = lens _acmAccuracy (\ s a -> s{_acmAccuracy = a}) .
      mapping _Coerce

-- | Area Under a ROC Curve. For multiclass this is a macro-averaged metric.
acmRocAuc :: Lens' AggregateClassificationMetrics (Maybe Double)
acmRocAuc
  = lens _acmRocAuc (\ s a -> s{_acmRocAuc = a}) .
      mapping _Coerce

instance FromJSON AggregateClassificationMetrics
         where
        parseJSON
          = withObject "AggregateClassificationMetrics"
              (\ o ->
                 AggregateClassificationMetrics' <$>
                   (o .:? "logLoss") <*> (o .:? "recall") <*>
                     (o .:? "precision")
                     <*> (o .:? "threshold")
                     <*> (o .:? "f1Score")
                     <*> (o .:? "accuracy")
                     <*> (o .:? "rocAuc"))

instance ToJSON AggregateClassificationMetrics where
        toJSON AggregateClassificationMetrics'{..}
          = object
              (catMaybes
                 [("logLoss" .=) <$> _acmLogLoss,
                  ("recall" .=) <$> _acmRecall,
                  ("precision" .=) <$> _acmPrecision,
                  ("threshold" .=) <$> _acmThreshold,
                  ("f1Score" .=) <$> _acmF1Score,
                  ("accuracy" .=) <$> _acmAccuracy,
                  ("rocAuc" .=) <$> _acmRocAuc])

-- | Data split result. This contains references to the training and
-- evaluation data tables that were used to train the model.
--
-- /See:/ 'dataSplitResult' smart constructor.
data DataSplitResult =
  DataSplitResult'
    { _dsrEvaluationTable :: !(Maybe TableReference)
    , _dsrTrainingTable :: !(Maybe TableReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSplitResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrEvaluationTable'
--
-- * 'dsrTrainingTable'
dataSplitResult
    :: DataSplitResult
dataSplitResult =
  DataSplitResult' {_dsrEvaluationTable = Nothing, _dsrTrainingTable = Nothing}


-- | Table reference of the evaluation data after split.
dsrEvaluationTable :: Lens' DataSplitResult (Maybe TableReference)
dsrEvaluationTable
  = lens _dsrEvaluationTable
      (\ s a -> s{_dsrEvaluationTable = a})

-- | Table reference of the training data after split.
dsrTrainingTable :: Lens' DataSplitResult (Maybe TableReference)
dsrTrainingTable
  = lens _dsrTrainingTable
      (\ s a -> s{_dsrTrainingTable = a})

instance FromJSON DataSplitResult where
        parseJSON
          = withObject "DataSplitResult"
              (\ o ->
                 DataSplitResult' <$>
                   (o .:? "evaluationTable") <*>
                     (o .:? "trainingTable"))

instance ToJSON DataSplitResult where
        toJSON DataSplitResult'{..}
          = object
              (catMaybes
                 [("evaluationTable" .=) <$> _dsrEvaluationTable,
                  ("trainingTable" .=) <$> _dsrTrainingTable])

--
-- /See:/ 'queryRequest' smart constructor.
data QueryRequest =
  QueryRequest'
    { _qrRequestId :: !(Maybe Text)
    , _qrConnectionProperties :: !(Maybe [ConnectionProperty])
    , _qrLocation :: !(Maybe Text)
    , _qrUseQueryCache :: !Bool
    , _qrPreserveNulls :: !(Maybe Bool)
    , _qrKind :: !Text
    , _qrQueryParameters :: !(Maybe [QueryParameter])
    , _qrMaximumBytesBilled :: !(Maybe (Textual Int64))
    , _qrQuery :: !(Maybe Text)
    , _qrParameterMode :: !(Maybe Text)
    , _qrCreateSession :: !(Maybe Bool)
    , _qrTimeoutMs :: !(Maybe (Textual Word32))
    , _qrLabels :: !(Maybe QueryRequestLabels)
    , _qrUseLegacySQL :: !Bool
    , _qrDryRun :: !(Maybe Bool)
    , _qrMaxResults :: !(Maybe (Textual Word32))
    , _qrDefaultDataSet :: !(Maybe DataSetReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrRequestId'
--
-- * 'qrConnectionProperties'
--
-- * 'qrLocation'
--
-- * 'qrUseQueryCache'
--
-- * 'qrPreserveNulls'
--
-- * 'qrKind'
--
-- * 'qrQueryParameters'
--
-- * 'qrMaximumBytesBilled'
--
-- * 'qrQuery'
--
-- * 'qrParameterMode'
--
-- * 'qrCreateSession'
--
-- * 'qrTimeoutMs'
--
-- * 'qrLabels'
--
-- * 'qrUseLegacySQL'
--
-- * 'qrDryRun'
--
-- * 'qrMaxResults'
--
-- * 'qrDefaultDataSet'
queryRequest
    :: QueryRequest
queryRequest =
  QueryRequest'
    { _qrRequestId = Nothing
    , _qrConnectionProperties = Nothing
    , _qrLocation = Nothing
    , _qrUseQueryCache = True
    , _qrPreserveNulls = Nothing
    , _qrKind = "bigquery#queryRequest"
    , _qrQueryParameters = Nothing
    , _qrMaximumBytesBilled = Nothing
    , _qrQuery = Nothing
    , _qrParameterMode = Nothing
    , _qrCreateSession = Nothing
    , _qrTimeoutMs = Nothing
    , _qrLabels = Nothing
    , _qrUseLegacySQL = True
    , _qrDryRun = Nothing
    , _qrMaxResults = Nothing
    , _qrDefaultDataSet = Nothing
    }


-- | A unique user provided identifier to ensure idempotent behavior for
-- queries. Note that this is different from the job_id. It has the
-- following properties: 1. It is case-sensitive, limited to up to 36 ASCII
-- characters. A UUID is recommended. 2. Read only queries can ignore this
-- token since they are nullipotent by definition. 3. For the purposes of
-- idempotency ensured by the request_id, a request is considered duplicate
-- of another only if they have the same request_id and are actually
-- duplicates. When determining whether a request is a duplicate of the
-- previous request, all parameters in the request that may affect the
-- behavior are considered. For example, query, connection_properties,
-- query_parameters, use_legacy_sql are parameters that affect the result
-- and are considered when determining whether a request is a duplicate,
-- but properties like timeout_ms don\'t affect the result and are thus not
-- considered. Dry run query requests are never considered duplicate of
-- another request. 4. When a duplicate mutating query request is detected,
-- it returns: a. the results of the mutation if it completes successfully
-- within the timeout. b. the running operation if it is still in progress
-- at the end of the timeout. 5. Its lifetime is limited to 15 minutes. In
-- other words, if two requests are sent with the same request_id, but more
-- than 15 minutes apart, idempotency is not guaranteed.
qrRequestId :: Lens' QueryRequest (Maybe Text)
qrRequestId
  = lens _qrRequestId (\ s a -> s{_qrRequestId = a})

-- | Connection properties.
qrConnectionProperties :: Lens' QueryRequest [ConnectionProperty]
qrConnectionProperties
  = lens _qrConnectionProperties
      (\ s a -> s{_qrConnectionProperties = a})
      . _Default
      . _Coerce

-- | The geographic location where the job should run. See details at
-- https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying_your_location.
qrLocation :: Lens' QueryRequest (Maybe Text)
qrLocation
  = lens _qrLocation (\ s a -> s{_qrLocation = a})

-- | [Optional] Whether to look for the result in the query cache. The query
-- cache is a best-effort cache that will be flushed whenever tables in the
-- query are modified. The default value is true.
qrUseQueryCache :: Lens' QueryRequest Bool
qrUseQueryCache
  = lens _qrUseQueryCache
      (\ s a -> s{_qrUseQueryCache = a})

-- | [Deprecated] This property is deprecated.
qrPreserveNulls :: Lens' QueryRequest (Maybe Bool)
qrPreserveNulls
  = lens _qrPreserveNulls
      (\ s a -> s{_qrPreserveNulls = a})

-- | The resource type of the request.
qrKind :: Lens' QueryRequest Text
qrKind = lens _qrKind (\ s a -> s{_qrKind = a})

-- | Query parameters for Standard SQL queries.
qrQueryParameters :: Lens' QueryRequest [QueryParameter]
qrQueryParameters
  = lens _qrQueryParameters
      (\ s a -> s{_qrQueryParameters = a})
      . _Default
      . _Coerce

-- | [Optional] Limits the bytes billed for this job. Queries that will have
-- bytes billed beyond this limit will fail (without incurring a charge).
-- If unspecified, this will be set to your project default.
qrMaximumBytesBilled :: Lens' QueryRequest (Maybe Int64)
qrMaximumBytesBilled
  = lens _qrMaximumBytesBilled
      (\ s a -> s{_qrMaximumBytesBilled = a})
      . mapping _Coerce

-- | [Required] A query string, following the BigQuery query syntax, of the
-- query to execute. Example: \"SELECT count(f1) FROM
-- [myProjectId:myDatasetId.myTableId]\".
qrQuery :: Lens' QueryRequest (Maybe Text)
qrQuery = lens _qrQuery (\ s a -> s{_qrQuery = a})

-- | Standard SQL only. Set to POSITIONAL to use positional (?) query
-- parameters or to NAMED to use named (\'myparam) query parameters in this
-- query.
qrParameterMode :: Lens' QueryRequest (Maybe Text)
qrParameterMode
  = lens _qrParameterMode
      (\ s a -> s{_qrParameterMode = a})

-- | If true, creates a new session, where session id will be a server
-- generated random id. If false, runs query with an existing session_id
-- passed in ConnectionProperty, otherwise runs query in non-session mode.
qrCreateSession :: Lens' QueryRequest (Maybe Bool)
qrCreateSession
  = lens _qrCreateSession
      (\ s a -> s{_qrCreateSession = a})

-- | [Optional] How long to wait for the query to complete, in milliseconds,
-- before the request times out and returns. Note that this is only a
-- timeout for the request, not the query. If the query takes longer to run
-- than the timeout value, the call returns without any results and with
-- the \'jobComplete\' flag set to false. You can call GetQueryResults() to
-- wait for the query to complete and read the results. The default value
-- is 10000 milliseconds (10 seconds).
qrTimeoutMs :: Lens' QueryRequest (Maybe Word32)
qrTimeoutMs
  = lens _qrTimeoutMs (\ s a -> s{_qrTimeoutMs = a}) .
      mapping _Coerce

-- | The labels associated with this job. You can use these to organize and
-- group your jobs. Label keys and values can be no longer than 63
-- characters, can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter and each label
-- in the list must have a different key.
qrLabels :: Lens' QueryRequest (Maybe QueryRequestLabels)
qrLabels = lens _qrLabels (\ s a -> s{_qrLabels = a})

-- | Specifies whether to use BigQuery\'s legacy SQL dialect for this query.
-- The default value is true. If set to false, the query will use
-- BigQuery\'s standard SQL:
-- https:\/\/cloud.google.com\/bigquery\/sql-reference\/ When useLegacySql
-- is set to false, the value of flattenResults is ignored; query will be
-- run as if flattenResults is false.
qrUseLegacySQL :: Lens' QueryRequest Bool
qrUseLegacySQL
  = lens _qrUseLegacySQL
      (\ s a -> s{_qrUseLegacySQL = a})

-- | [Optional] If set to true, BigQuery doesn\'t run the job. Instead, if
-- the query is valid, BigQuery returns statistics about the job such as
-- how many bytes would be processed. If the query is invalid, an error
-- returns. The default value is false.
qrDryRun :: Lens' QueryRequest (Maybe Bool)
qrDryRun = lens _qrDryRun (\ s a -> s{_qrDryRun = a})

-- | [Optional] The maximum number of rows of data to return per page of
-- results. Setting this flag to a small value such as 1000 and then paging
-- through results might improve reliability when the query result set is
-- large. In addition to this limit, responses are also limited to 10 MB.
-- By default, there is no maximum row count, and only the byte limit
-- applies.
qrMaxResults :: Lens' QueryRequest (Maybe Word32)
qrMaxResults
  = lens _qrMaxResults (\ s a -> s{_qrMaxResults = a})
      . mapping _Coerce

-- | [Optional] Specifies the default datasetId and projectId to assume for
-- any unqualified table names in the query. If not set, all table names in
-- the query string must be qualified in the format \'datasetId.tableId\'.
qrDefaultDataSet :: Lens' QueryRequest (Maybe DataSetReference)
qrDefaultDataSet
  = lens _qrDefaultDataSet
      (\ s a -> s{_qrDefaultDataSet = a})

instance FromJSON QueryRequest where
        parseJSON
          = withObject "QueryRequest"
              (\ o ->
                 QueryRequest' <$>
                   (o .:? "requestId") <*>
                     (o .:? "connectionProperties" .!= mempty)
                     <*> (o .:? "location")
                     <*> (o .:? "useQueryCache" .!= True)
                     <*> (o .:? "preserveNulls")
                     <*> (o .:? "kind" .!= "bigquery#queryRequest")
                     <*> (o .:? "queryParameters" .!= mempty)
                     <*> (o .:? "maximumBytesBilled")
                     <*> (o .:? "query")
                     <*> (o .:? "parameterMode")
                     <*> (o .:? "createSession")
                     <*> (o .:? "timeoutMs")
                     <*> (o .:? "labels")
                     <*> (o .:? "useLegacySql" .!= True)
                     <*> (o .:? "dryRun")
                     <*> (o .:? "maxResults")
                     <*> (o .:? "defaultDataset"))

instance ToJSON QueryRequest where
        toJSON QueryRequest'{..}
          = object
              (catMaybes
                 [("requestId" .=) <$> _qrRequestId,
                  ("connectionProperties" .=) <$>
                    _qrConnectionProperties,
                  ("location" .=) <$> _qrLocation,
                  Just ("useQueryCache" .= _qrUseQueryCache),
                  ("preserveNulls" .=) <$> _qrPreserveNulls,
                  Just ("kind" .= _qrKind),
                  ("queryParameters" .=) <$> _qrQueryParameters,
                  ("maximumBytesBilled" .=) <$> _qrMaximumBytesBilled,
                  ("query" .=) <$> _qrQuery,
                  ("parameterMode" .=) <$> _qrParameterMode,
                  ("createSession" .=) <$> _qrCreateSession,
                  ("timeoutMs" .=) <$> _qrTimeoutMs,
                  ("labels" .=) <$> _qrLabels,
                  Just ("useLegacySql" .= _qrUseLegacySQL),
                  ("dryRun" .=) <$> _qrDryRun,
                  ("maxResults" .=) <$> _qrMaxResults,
                  ("defaultDataset" .=) <$> _qrDefaultDataSet])

-- | Input\/output argument of a function or a stored procedure.
--
-- /See:/ 'argument' smart constructor.
data Argument =
  Argument'
    { _aArgumentKind :: !(Maybe ArgumentArgumentKind)
    , _aMode :: !(Maybe ArgumentMode)
    , _aName :: !(Maybe Text)
    , _aDataType :: !(Maybe StandardSQLDataType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Argument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aArgumentKind'
--
-- * 'aMode'
--
-- * 'aName'
--
-- * 'aDataType'
argument
    :: Argument
argument =
  Argument'
    { _aArgumentKind = Nothing
    , _aMode = Nothing
    , _aName = Nothing
    , _aDataType = Nothing
    }


-- | Optional. Defaults to FIXED_TYPE.
aArgumentKind :: Lens' Argument (Maybe ArgumentArgumentKind)
aArgumentKind
  = lens _aArgumentKind
      (\ s a -> s{_aArgumentKind = a})

-- | Optional. Specifies whether the argument is input or output. Can be set
-- for procedures only.
aMode :: Lens' Argument (Maybe ArgumentMode)
aMode = lens _aMode (\ s a -> s{_aMode = a})

-- | Optional. The name of this argument. Can be absent for function return
-- argument.
aName :: Lens' Argument (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Required unless argument_kind = ANY_TYPE.
aDataType :: Lens' Argument (Maybe StandardSQLDataType)
aDataType
  = lens _aDataType (\ s a -> s{_aDataType = a})

instance FromJSON Argument where
        parseJSON
          = withObject "Argument"
              (\ o ->
                 Argument' <$>
                   (o .:? "argumentKind") <*> (o .:? "mode") <*>
                     (o .:? "name")
                     <*> (o .:? "dataType"))

instance ToJSON Argument where
        toJSON Argument'{..}
          = object
              (catMaybes
                 [("argumentKind" .=) <$> _aArgumentKind,
                  ("mode" .=) <$> _aMode, ("name" .=) <$> _aName,
                  ("dataType" .=) <$> _aDataType])

-- | [Output-only, Beta] Training options used by this training run. These
-- options are mutable for subsequent training runs. Default values are
-- explicitly stored for options not specified in the input query of the
-- first training run. For subsequent training runs, any option not
-- explicitly specified in the input query will be copied from the previous
-- training run.
--
-- /See:/ 'bqmlTrainingRunTrainingOptions' smart constructor.
data BqmlTrainingRunTrainingOptions =
  BqmlTrainingRunTrainingOptions'
    { _btrtoLineSearchInitLearnRate :: !(Maybe (Textual Double))
    , _btrtoMinRelProgress :: !(Maybe (Textual Double))
    , _btrtoL1Reg :: !(Maybe (Textual Double))
    , _btrtoLearnRate :: !(Maybe (Textual Double))
    , _btrtoLearnRateStrategy :: !(Maybe Text)
    , _btrtoMaxIteration :: !(Maybe (Textual Int64))
    , _btrtoEarlyStop :: !(Maybe Bool)
    , _btrtoL2Reg :: !(Maybe (Textual Double))
    , _btrtoWarmStart :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BqmlTrainingRunTrainingOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btrtoLineSearchInitLearnRate'
--
-- * 'btrtoMinRelProgress'
--
-- * 'btrtoL1Reg'
--
-- * 'btrtoLearnRate'
--
-- * 'btrtoLearnRateStrategy'
--
-- * 'btrtoMaxIteration'
--
-- * 'btrtoEarlyStop'
--
-- * 'btrtoL2Reg'
--
-- * 'btrtoWarmStart'
bqmlTrainingRunTrainingOptions
    :: BqmlTrainingRunTrainingOptions
bqmlTrainingRunTrainingOptions =
  BqmlTrainingRunTrainingOptions'
    { _btrtoLineSearchInitLearnRate = Nothing
    , _btrtoMinRelProgress = Nothing
    , _btrtoL1Reg = Nothing
    , _btrtoLearnRate = Nothing
    , _btrtoLearnRateStrategy = Nothing
    , _btrtoMaxIteration = Nothing
    , _btrtoEarlyStop = Nothing
    , _btrtoL2Reg = Nothing
    , _btrtoWarmStart = Nothing
    }


btrtoLineSearchInitLearnRate :: Lens' BqmlTrainingRunTrainingOptions (Maybe Double)
btrtoLineSearchInitLearnRate
  = lens _btrtoLineSearchInitLearnRate
      (\ s a -> s{_btrtoLineSearchInitLearnRate = a})
      . mapping _Coerce

btrtoMinRelProgress :: Lens' BqmlTrainingRunTrainingOptions (Maybe Double)
btrtoMinRelProgress
  = lens _btrtoMinRelProgress
      (\ s a -> s{_btrtoMinRelProgress = a})
      . mapping _Coerce

btrtoL1Reg :: Lens' BqmlTrainingRunTrainingOptions (Maybe Double)
btrtoL1Reg
  = lens _btrtoL1Reg (\ s a -> s{_btrtoL1Reg = a}) .
      mapping _Coerce

btrtoLearnRate :: Lens' BqmlTrainingRunTrainingOptions (Maybe Double)
btrtoLearnRate
  = lens _btrtoLearnRate
      (\ s a -> s{_btrtoLearnRate = a})
      . mapping _Coerce

btrtoLearnRateStrategy :: Lens' BqmlTrainingRunTrainingOptions (Maybe Text)
btrtoLearnRateStrategy
  = lens _btrtoLearnRateStrategy
      (\ s a -> s{_btrtoLearnRateStrategy = a})

btrtoMaxIteration :: Lens' BqmlTrainingRunTrainingOptions (Maybe Int64)
btrtoMaxIteration
  = lens _btrtoMaxIteration
      (\ s a -> s{_btrtoMaxIteration = a})
      . mapping _Coerce

btrtoEarlyStop :: Lens' BqmlTrainingRunTrainingOptions (Maybe Bool)
btrtoEarlyStop
  = lens _btrtoEarlyStop
      (\ s a -> s{_btrtoEarlyStop = a})

btrtoL2Reg :: Lens' BqmlTrainingRunTrainingOptions (Maybe Double)
btrtoL2Reg
  = lens _btrtoL2Reg (\ s a -> s{_btrtoL2Reg = a}) .
      mapping _Coerce

btrtoWarmStart :: Lens' BqmlTrainingRunTrainingOptions (Maybe Bool)
btrtoWarmStart
  = lens _btrtoWarmStart
      (\ s a -> s{_btrtoWarmStart = a})

instance FromJSON BqmlTrainingRunTrainingOptions
         where
        parseJSON
          = withObject "BqmlTrainingRunTrainingOptions"
              (\ o ->
                 BqmlTrainingRunTrainingOptions' <$>
                   (o .:? "lineSearchInitLearnRate") <*>
                     (o .:? "minRelProgress")
                     <*> (o .:? "l1Reg")
                     <*> (o .:? "learnRate")
                     <*> (o .:? "learnRateStrategy")
                     <*> (o .:? "maxIteration")
                     <*> (o .:? "earlyStop")
                     <*> (o .:? "l2Reg")
                     <*> (o .:? "warmStart"))

instance ToJSON BqmlTrainingRunTrainingOptions where
        toJSON BqmlTrainingRunTrainingOptions'{..}
          = object
              (catMaybes
                 [("lineSearchInitLearnRate" .=) <$>
                    _btrtoLineSearchInitLearnRate,
                  ("minRelProgress" .=) <$> _btrtoMinRelProgress,
                  ("l1Reg" .=) <$> _btrtoL1Reg,
                  ("learnRate" .=) <$> _btrtoLearnRate,
                  ("learnRateStrategy" .=) <$> _btrtoLearnRateStrategy,
                  ("maxIteration" .=) <$> _btrtoMaxIteration,
                  ("earlyStop" .=) <$> _btrtoEarlyStop,
                  ("l2Reg" .=) <$> _btrtoL2Reg,
                  ("warmStart" .=) <$> _btrtoWarmStart])

--
-- /See:/ 'queryParameter' smart constructor.
data QueryParameter =
  QueryParameter'
    { _qpParameterValue :: !(Maybe QueryParameterValue)
    , _qpParameterType :: !(Maybe QueryParameterType)
    , _qpName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qpParameterValue'
--
-- * 'qpParameterType'
--
-- * 'qpName'
queryParameter
    :: QueryParameter
queryParameter =
  QueryParameter'
    {_qpParameterValue = Nothing, _qpParameterType = Nothing, _qpName = Nothing}


-- | [Required] The value of this parameter.
qpParameterValue :: Lens' QueryParameter (Maybe QueryParameterValue)
qpParameterValue
  = lens _qpParameterValue
      (\ s a -> s{_qpParameterValue = a})

-- | [Required] The type of this parameter.
qpParameterType :: Lens' QueryParameter (Maybe QueryParameterType)
qpParameterType
  = lens _qpParameterType
      (\ s a -> s{_qpParameterType = a})

-- | [Optional] If unset, this is a positional parameter. Otherwise, should
-- be unique within a query.
qpName :: Lens' QueryParameter (Maybe Text)
qpName = lens _qpName (\ s a -> s{_qpName = a})

instance FromJSON QueryParameter where
        parseJSON
          = withObject "QueryParameter"
              (\ o ->
                 QueryParameter' <$>
                   (o .:? "parameterValue") <*> (o .:? "parameterType")
                     <*> (o .:? "name"))

instance ToJSON QueryParameter where
        toJSON QueryParameter'{..}
          = object
              (catMaybes
                 [("parameterValue" .=) <$> _qpParameterValue,
                  ("parameterType" .=) <$> _qpParameterType,
                  ("name" .=) <$> _qpName])

-- | Represents the count of a single category within the cluster.
--
-- /See:/ 'categoryCount' smart constructor.
data CategoryCount =
  CategoryCount'
    { _ccCategory :: !(Maybe Text)
    , _ccCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CategoryCount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCategory'
--
-- * 'ccCount'
categoryCount
    :: CategoryCount
categoryCount = CategoryCount' {_ccCategory = Nothing, _ccCount = Nothing}


-- | The name of category.
ccCategory :: Lens' CategoryCount (Maybe Text)
ccCategory
  = lens _ccCategory (\ s a -> s{_ccCategory = a})

-- | The count of training samples matching the category within the cluster.
ccCount :: Lens' CategoryCount (Maybe Int64)
ccCount
  = lens _ccCount (\ s a -> s{_ccCount = a}) .
      mapping _Coerce

instance FromJSON CategoryCount where
        parseJSON
          = withObject "CategoryCount"
              (\ o ->
                 CategoryCount' <$>
                   (o .:? "category") <*> (o .:? "count"))

instance ToJSON CategoryCount where
        toJSON CategoryCount'{..}
          = object
              (catMaybes
                 [("category" .=) <$> _ccCategory,
                  ("count" .=) <$> _ccCount])

-- | Information about a single iteration of the training run.
--
-- /See:/ 'iterationResult' smart constructor.
data IterationResult =
  IterationResult'
    { _irDurationMs :: !(Maybe (Textual Int64))
    , _irLearnRate :: !(Maybe (Textual Double))
    , _irArimaResult :: !(Maybe ArimaResult)
    , _irClusterInfos :: !(Maybe [ClusterInfo])
    , _irEvalLoss :: !(Maybe (Textual Double))
    , _irTrainingLoss :: !(Maybe (Textual Double))
    , _irIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IterationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irDurationMs'
--
-- * 'irLearnRate'
--
-- * 'irArimaResult'
--
-- * 'irClusterInfos'
--
-- * 'irEvalLoss'
--
-- * 'irTrainingLoss'
--
-- * 'irIndex'
iterationResult
    :: IterationResult
iterationResult =
  IterationResult'
    { _irDurationMs = Nothing
    , _irLearnRate = Nothing
    , _irArimaResult = Nothing
    , _irClusterInfos = Nothing
    , _irEvalLoss = Nothing
    , _irTrainingLoss = Nothing
    , _irIndex = Nothing
    }


-- | Time taken to run the iteration in milliseconds.
irDurationMs :: Lens' IterationResult (Maybe Int64)
irDurationMs
  = lens _irDurationMs (\ s a -> s{_irDurationMs = a})
      . mapping _Coerce

-- | Learn rate used for this iteration.
irLearnRate :: Lens' IterationResult (Maybe Double)
irLearnRate
  = lens _irLearnRate (\ s a -> s{_irLearnRate = a}) .
      mapping _Coerce

irArimaResult :: Lens' IterationResult (Maybe ArimaResult)
irArimaResult
  = lens _irArimaResult
      (\ s a -> s{_irArimaResult = a})

-- | Information about top clusters for clustering models.
irClusterInfos :: Lens' IterationResult [ClusterInfo]
irClusterInfos
  = lens _irClusterInfos
      (\ s a -> s{_irClusterInfos = a})
      . _Default
      . _Coerce

-- | Loss computed on the eval data at the end of iteration.
irEvalLoss :: Lens' IterationResult (Maybe Double)
irEvalLoss
  = lens _irEvalLoss (\ s a -> s{_irEvalLoss = a}) .
      mapping _Coerce

-- | Loss computed on the training data at the end of iteration.
irTrainingLoss :: Lens' IterationResult (Maybe Double)
irTrainingLoss
  = lens _irTrainingLoss
      (\ s a -> s{_irTrainingLoss = a})
      . mapping _Coerce

-- | Index of the iteration, 0 based.
irIndex :: Lens' IterationResult (Maybe Int32)
irIndex
  = lens _irIndex (\ s a -> s{_irIndex = a}) .
      mapping _Coerce

instance FromJSON IterationResult where
        parseJSON
          = withObject "IterationResult"
              (\ o ->
                 IterationResult' <$>
                   (o .:? "durationMs") <*> (o .:? "learnRate") <*>
                     (o .:? "arimaResult")
                     <*> (o .:? "clusterInfos" .!= mempty)
                     <*> (o .:? "evalLoss")
                     <*> (o .:? "trainingLoss")
                     <*> (o .:? "index"))

instance ToJSON IterationResult where
        toJSON IterationResult'{..}
          = object
              (catMaybes
                 [("durationMs" .=) <$> _irDurationMs,
                  ("learnRate" .=) <$> _irLearnRate,
                  ("arimaResult" .=) <$> _irArimaResult,
                  ("clusterInfos" .=) <$> _irClusterInfos,
                  ("evalLoss" .=) <$> _irEvalLoss,
                  ("trainingLoss" .=) <$> _irTrainingLoss,
                  ("index" .=) <$> _irIndex])

-- | Evaluation metrics for binary classification\/classifier models.
--
-- /See:/ 'binaryClassificationMetrics' smart constructor.
data BinaryClassificationMetrics =
  BinaryClassificationMetrics'
    { _bcmPositiveLabel :: !(Maybe Text)
    , _bcmAggregateClassificationMetrics :: !(Maybe AggregateClassificationMetrics)
    , _bcmBinaryConfusionMatrixList :: !(Maybe [BinaryConfusionMatrix])
    , _bcmNegativeLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BinaryClassificationMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcmPositiveLabel'
--
-- * 'bcmAggregateClassificationMetrics'
--
-- * 'bcmBinaryConfusionMatrixList'
--
-- * 'bcmNegativeLabel'
binaryClassificationMetrics
    :: BinaryClassificationMetrics
binaryClassificationMetrics =
  BinaryClassificationMetrics'
    { _bcmPositiveLabel = Nothing
    , _bcmAggregateClassificationMetrics = Nothing
    , _bcmBinaryConfusionMatrixList = Nothing
    , _bcmNegativeLabel = Nothing
    }


-- | Label representing the positive class.
bcmPositiveLabel :: Lens' BinaryClassificationMetrics (Maybe Text)
bcmPositiveLabel
  = lens _bcmPositiveLabel
      (\ s a -> s{_bcmPositiveLabel = a})

-- | Aggregate classification metrics.
bcmAggregateClassificationMetrics :: Lens' BinaryClassificationMetrics (Maybe AggregateClassificationMetrics)
bcmAggregateClassificationMetrics
  = lens _bcmAggregateClassificationMetrics
      (\ s a -> s{_bcmAggregateClassificationMetrics = a})

-- | Binary confusion matrix at multiple thresholds.
bcmBinaryConfusionMatrixList :: Lens' BinaryClassificationMetrics [BinaryConfusionMatrix]
bcmBinaryConfusionMatrixList
  = lens _bcmBinaryConfusionMatrixList
      (\ s a -> s{_bcmBinaryConfusionMatrixList = a})
      . _Default
      . _Coerce

-- | Label representing the negative class.
bcmNegativeLabel :: Lens' BinaryClassificationMetrics (Maybe Text)
bcmNegativeLabel
  = lens _bcmNegativeLabel
      (\ s a -> s{_bcmNegativeLabel = a})

instance FromJSON BinaryClassificationMetrics where
        parseJSON
          = withObject "BinaryClassificationMetrics"
              (\ o ->
                 BinaryClassificationMetrics' <$>
                   (o .:? "positiveLabel") <*>
                     (o .:? "aggregateClassificationMetrics")
                     <*> (o .:? "binaryConfusionMatrixList" .!= mempty)
                     <*> (o .:? "negativeLabel"))

instance ToJSON BinaryClassificationMetrics where
        toJSON BinaryClassificationMetrics'{..}
          = object
              (catMaybes
                 [("positiveLabel" .=) <$> _bcmPositiveLabel,
                  ("aggregateClassificationMetrics" .=) <$>
                    _bcmAggregateClassificationMetrics,
                  ("binaryConfusionMatrixList" .=) <$>
                    _bcmBinaryConfusionMatrixList,
                  ("negativeLabel" .=) <$> _bcmNegativeLabel])

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'getPolicyOptions' smart constructor.
newtype GetPolicyOptions =
  GetPolicyOptions'
    { _gpoRequestedPolicyVersion :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpoRequestedPolicyVersion'
getPolicyOptions
    :: GetPolicyOptions
getPolicyOptions = GetPolicyOptions' {_gpoRequestedPolicyVersion = Nothing}


-- | Optional. The policy format version to be returned. Valid values are 0,
-- 1, and 3. Requests specifying an invalid value will be rejected.
-- Requests for policies with any conditional bindings must specify version
-- 3. Policies without any conditional bindings may specify any valid value
-- or leave the field unset. To learn which resources support conditions in
-- their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
gpoRequestedPolicyVersion :: Lens' GetPolicyOptions (Maybe Int32)
gpoRequestedPolicyVersion
  = lens _gpoRequestedPolicyVersion
      (\ s a -> s{_gpoRequestedPolicyVersion = a})
      . mapping _Coerce

instance FromJSON GetPolicyOptions where
        parseJSON
          = withObject "GetPolicyOptions"
              (\ o ->
                 GetPolicyOptions' <$>
                   (o .:? "requestedPolicyVersion"))

instance ToJSON GetPolicyOptions where
        toJSON GetPolicyOptions'{..}
          = object
              (catMaybes
                 [("requestedPolicyVersion" .=) <$>
                    _gpoRequestedPolicyVersion])

--
-- /See:/ 'jobStatistics4' smart constructor.
data JobStatistics4 =
  JobStatistics4'
    { _jsInputBytes :: !(Maybe (Textual Int64))
    , _jsDestinationURIFileCounts :: !(Maybe [Textual Int64])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobStatistics4' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsInputBytes'
--
-- * 'jsDestinationURIFileCounts'
jobStatistics4
    :: JobStatistics4
jobStatistics4 =
  JobStatistics4'
    {_jsInputBytes = Nothing, _jsDestinationURIFileCounts = Nothing}


-- | [Output-only] Number of user bytes extracted into the result. This is
-- the byte count as computed by BigQuery for billing purposes.
jsInputBytes :: Lens' JobStatistics4 (Maybe Int64)
jsInputBytes
  = lens _jsInputBytes (\ s a -> s{_jsInputBytes = a})
      . mapping _Coerce

-- | [Output-only] Number of files per destination URI or URI pattern
-- specified in the extract configuration. These values will be in the same
-- order as the URIs specified in the \'destinationUris\' field.
jsDestinationURIFileCounts :: Lens' JobStatistics4 [Int64]
jsDestinationURIFileCounts
  = lens _jsDestinationURIFileCounts
      (\ s a -> s{_jsDestinationURIFileCounts = a})
      . _Default
      . _Coerce

instance FromJSON JobStatistics4 where
        parseJSON
          = withObject "JobStatistics4"
              (\ o ->
                 JobStatistics4' <$>
                   (o .:? "inputBytes") <*>
                     (o .:? "destinationUriFileCounts" .!= mempty))

instance ToJSON JobStatistics4 where
        toJSON JobStatistics4'{..}
          = object
              (catMaybes
                 [("inputBytes" .=) <$> _jsInputBytes,
                  ("destinationUriFileCounts" .=) <$>
                    _jsDestinationURIFileCounts])

-- | The labels associated with this job. You can use these to organize and
-- group your jobs. Label keys and values can be no longer than 63
-- characters, can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter and each label
-- in the list must have a different key.
--
-- /See:/ 'queryRequestLabels' smart constructor.
newtype QueryRequestLabels =
  QueryRequestLabels'
    { _qrlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryRequestLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrlAddtional'
queryRequestLabels
    :: HashMap Text Text -- ^ 'qrlAddtional'
    -> QueryRequestLabels
queryRequestLabels pQrlAddtional_ =
  QueryRequestLabels' {_qrlAddtional = _Coerce # pQrlAddtional_}


qrlAddtional :: Lens' QueryRequestLabels (HashMap Text Text)
qrlAddtional
  = lens _qrlAddtional (\ s a -> s{_qrlAddtional = a})
      . _Coerce

instance FromJSON QueryRequestLabels where
        parseJSON
          = withObject "QueryRequestLabels"
              (\ o -> QueryRequestLabels' <$> (parseJSONObject o))

instance ToJSON QueryRequestLabels where
        toJSON = toJSON . _qrlAddtional

-- | Evaluation metrics for multi-class classification\/classifier models.
--
-- /See:/ 'multiClassClassificationMetrics' smart constructor.
data MultiClassClassificationMetrics =
  MultiClassClassificationMetrics'
    { _mccmAggregateClassificationMetrics :: !(Maybe AggregateClassificationMetrics)
    , _mccmConfusionMatrixList :: !(Maybe [ConfusionMatrix])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MultiClassClassificationMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mccmAggregateClassificationMetrics'
--
-- * 'mccmConfusionMatrixList'
multiClassClassificationMetrics
    :: MultiClassClassificationMetrics
multiClassClassificationMetrics =
  MultiClassClassificationMetrics'
    { _mccmAggregateClassificationMetrics = Nothing
    , _mccmConfusionMatrixList = Nothing
    }


-- | Aggregate classification metrics.
mccmAggregateClassificationMetrics :: Lens' MultiClassClassificationMetrics (Maybe AggregateClassificationMetrics)
mccmAggregateClassificationMetrics
  = lens _mccmAggregateClassificationMetrics
      (\ s a -> s{_mccmAggregateClassificationMetrics = a})

-- | Confusion matrix at different thresholds.
mccmConfusionMatrixList :: Lens' MultiClassClassificationMetrics [ConfusionMatrix]
mccmConfusionMatrixList
  = lens _mccmConfusionMatrixList
      (\ s a -> s{_mccmConfusionMatrixList = a})
      . _Default
      . _Coerce

instance FromJSON MultiClassClassificationMetrics
         where
        parseJSON
          = withObject "MultiClassClassificationMetrics"
              (\ o ->
                 MultiClassClassificationMetrics' <$>
                   (o .:? "aggregateClassificationMetrics") <*>
                     (o .:? "confusionMatrixList" .!= mempty))

instance ToJSON MultiClassClassificationMetrics where
        toJSON MultiClassClassificationMetrics'{..}
          = object
              (catMaybes
                 [("aggregateClassificationMetrics" .=) <$>
                    _mccmAggregateClassificationMetrics,
                  ("confusionMatrixList" .=) <$>
                    _mccmConfusionMatrixList])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
data SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprUpdateMask :: !(Maybe GFieldMask)
    , _siprPolicy :: !(Maybe Policy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprUpdateMask'
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
  SetIAMPolicyRequest' {_siprUpdateMask = Nothing, _siprPolicy = Nothing}


-- | OPTIONAL: A FieldMask specifying which fields of the policy to modify.
-- Only the fields in the mask will be modified. If no mask is provided,
-- the following default mask is used: \`paths: \"bindings, etag\"\`
siprUpdateMask :: Lens' SetIAMPolicyRequest (Maybe GFieldMask)
siprUpdateMask
  = lens _siprUpdateMask
      (\ s a -> s{_siprUpdateMask = a})

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o ->
                 SetIAMPolicyRequest' <$>
                   (o .:? "updateMask") <*> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object
              (catMaybes
                 [("updateMask" .=) <$> _siprUpdateMask,
                  ("policy" .=) <$> _siprPolicy])

-- | Confusion matrix for binary classification models.
--
-- /See:/ 'binaryConfusionMatrix' smart constructor.
data BinaryConfusionMatrix =
  BinaryConfusionMatrix'
    { _bcmPositiveClassThreshold :: !(Maybe (Textual Double))
    , _bcmFalsePositives :: !(Maybe (Textual Int64))
    , _bcmRecall :: !(Maybe (Textual Double))
    , _bcmPrecision :: !(Maybe (Textual Double))
    , _bcmTrueNegatives :: !(Maybe (Textual Int64))
    , _bcmF1Score :: !(Maybe (Textual Double))
    , _bcmFalseNegatives :: !(Maybe (Textual Int64))
    , _bcmAccuracy :: !(Maybe (Textual Double))
    , _bcmTruePositives :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BinaryConfusionMatrix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcmPositiveClassThreshold'
--
-- * 'bcmFalsePositives'
--
-- * 'bcmRecall'
--
-- * 'bcmPrecision'
--
-- * 'bcmTrueNegatives'
--
-- * 'bcmF1Score'
--
-- * 'bcmFalseNegatives'
--
-- * 'bcmAccuracy'
--
-- * 'bcmTruePositives'
binaryConfusionMatrix
    :: BinaryConfusionMatrix
binaryConfusionMatrix =
  BinaryConfusionMatrix'
    { _bcmPositiveClassThreshold = Nothing
    , _bcmFalsePositives = Nothing
    , _bcmRecall = Nothing
    , _bcmPrecision = Nothing
    , _bcmTrueNegatives = Nothing
    , _bcmF1Score = Nothing
    , _bcmFalseNegatives = Nothing
    , _bcmAccuracy = Nothing
    , _bcmTruePositives = Nothing
    }


-- | Threshold value used when computing each of the following metric.
bcmPositiveClassThreshold :: Lens' BinaryConfusionMatrix (Maybe Double)
bcmPositiveClassThreshold
  = lens _bcmPositiveClassThreshold
      (\ s a -> s{_bcmPositiveClassThreshold = a})
      . mapping _Coerce

-- | Number of false samples predicted as true.
bcmFalsePositives :: Lens' BinaryConfusionMatrix (Maybe Int64)
bcmFalsePositives
  = lens _bcmFalsePositives
      (\ s a -> s{_bcmFalsePositives = a})
      . mapping _Coerce

-- | The fraction of actual positive labels that were given a positive
-- prediction.
bcmRecall :: Lens' BinaryConfusionMatrix (Maybe Double)
bcmRecall
  = lens _bcmRecall (\ s a -> s{_bcmRecall = a}) .
      mapping _Coerce

-- | The fraction of actual positive predictions that had positive actual
-- labels.
bcmPrecision :: Lens' BinaryConfusionMatrix (Maybe Double)
bcmPrecision
  = lens _bcmPrecision (\ s a -> s{_bcmPrecision = a})
      . mapping _Coerce

-- | Number of true samples predicted as false.
bcmTrueNegatives :: Lens' BinaryConfusionMatrix (Maybe Int64)
bcmTrueNegatives
  = lens _bcmTrueNegatives
      (\ s a -> s{_bcmTrueNegatives = a})
      . mapping _Coerce

-- | The equally weighted average of recall and precision.
bcmF1Score :: Lens' BinaryConfusionMatrix (Maybe Double)
bcmF1Score
  = lens _bcmF1Score (\ s a -> s{_bcmF1Score = a}) .
      mapping _Coerce

-- | Number of false samples predicted as false.
bcmFalseNegatives :: Lens' BinaryConfusionMatrix (Maybe Int64)
bcmFalseNegatives
  = lens _bcmFalseNegatives
      (\ s a -> s{_bcmFalseNegatives = a})
      . mapping _Coerce

-- | The fraction of predictions given the correct label.
bcmAccuracy :: Lens' BinaryConfusionMatrix (Maybe Double)
bcmAccuracy
  = lens _bcmAccuracy (\ s a -> s{_bcmAccuracy = a}) .
      mapping _Coerce

-- | Number of true samples predicted as true.
bcmTruePositives :: Lens' BinaryConfusionMatrix (Maybe Int64)
bcmTruePositives
  = lens _bcmTruePositives
      (\ s a -> s{_bcmTruePositives = a})
      . mapping _Coerce

instance FromJSON BinaryConfusionMatrix where
        parseJSON
          = withObject "BinaryConfusionMatrix"
              (\ o ->
                 BinaryConfusionMatrix' <$>
                   (o .:? "positiveClassThreshold") <*>
                     (o .:? "falsePositives")
                     <*> (o .:? "recall")
                     <*> (o .:? "precision")
                     <*> (o .:? "trueNegatives")
                     <*> (o .:? "f1Score")
                     <*> (o .:? "falseNegatives")
                     <*> (o .:? "accuracy")
                     <*> (o .:? "truePositives"))

instance ToJSON BinaryConfusionMatrix where
        toJSON BinaryConfusionMatrix'{..}
          = object
              (catMaybes
                 [("positiveClassThreshold" .=) <$>
                    _bcmPositiveClassThreshold,
                  ("falsePositives" .=) <$> _bcmFalsePositives,
                  ("recall" .=) <$> _bcmRecall,
                  ("precision" .=) <$> _bcmPrecision,
                  ("trueNegatives" .=) <$> _bcmTrueNegatives,
                  ("f1Score" .=) <$> _bcmF1Score,
                  ("falseNegatives" .=) <$> _bcmFalseNegatives,
                  ("accuracy" .=) <$> _bcmAccuracy,
                  ("truePositives" .=) <$> _bcmTruePositives])

--
-- /See:/ 'projectReference' smart constructor.
newtype ProjectReference =
  ProjectReference'
    { _prProjectId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prProjectId'
projectReference
    :: ProjectReference
projectReference = ProjectReference' {_prProjectId = Nothing}


-- | [Required] ID of the project. Can be either the numeric ID or the
-- assigned ID of the project.
prProjectId :: Lens' ProjectReference (Maybe Text)
prProjectId
  = lens _prProjectId (\ s a -> s{_prProjectId = a})

instance FromJSON ProjectReference where
        parseJSON
          = withObject "ProjectReference"
              (\ o -> ProjectReference' <$> (o .:? "projectId"))

instance ToJSON ProjectReference where
        toJSON ProjectReference'{..}
          = object
              (catMaybes [("projectId" .=) <$> _prProjectId])

--
-- /See:/ 'explainQueryStage' smart constructor.
data ExplainQueryStage =
  ExplainQueryStage'
    { _eqsReadMsAvg :: !(Maybe (Textual Int64))
    , _eqsStatus :: !(Maybe Text)
    , _eqsShuffleOutputBytesSpilled :: !(Maybe (Textual Int64))
    , _eqsReadMsMax :: !(Maybe (Textual Int64))
    , _eqsCompletedParallelInputs :: !(Maybe (Textual Int64))
    , _eqsWaitRatioMax :: !(Maybe (Textual Double))
    , _eqsParallelInputs :: !(Maybe (Textual Int64))
    , _eqsShuffleOutputBytes :: !(Maybe (Textual Int64))
    , _eqsRecordsWritten :: !(Maybe (Textual Int64))
    , _eqsSteps :: !(Maybe [ExplainQueryStep])
    , _eqsInputStages :: !(Maybe [Textual Int64])
    , _eqsWriteRatioAvg :: !(Maybe (Textual Double))
    , _eqsRecordsRead :: !(Maybe (Textual Int64))
    , _eqsComputeRatioAvg :: !(Maybe (Textual Double))
    , _eqsName :: !(Maybe Text)
    , _eqsComputeMsMax :: !(Maybe (Textual Int64))
    , _eqsReadRatioMax :: !(Maybe (Textual Double))
    , _eqsWriteMsMax :: !(Maybe (Textual Int64))
    , _eqsWaitRatioAvg :: !(Maybe (Textual Double))
    , _eqsSlotMs :: !(Maybe (Textual Int64))
    , _eqsWaitMsAvg :: !(Maybe (Textual Int64))
    , _eqsId :: !(Maybe (Textual Int64))
    , _eqsComputeRatioMax :: !(Maybe (Textual Double))
    , _eqsWriteRatioMax :: !(Maybe (Textual Double))
    , _eqsComputeMsAvg :: !(Maybe (Textual Int64))
    , _eqsReadRatioAvg :: !(Maybe (Textual Double))
    , _eqsWriteMsAvg :: !(Maybe (Textual Int64))
    , _eqsStartMs :: !(Maybe (Textual Int64))
    , _eqsEndMs :: !(Maybe (Textual Int64))
    , _eqsWaitMsMax :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExplainQueryStage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eqsReadMsAvg'
--
-- * 'eqsStatus'
--
-- * 'eqsShuffleOutputBytesSpilled'
--
-- * 'eqsReadMsMax'
--
-- * 'eqsCompletedParallelInputs'
--
-- * 'eqsWaitRatioMax'
--
-- * 'eqsParallelInputs'
--
-- * 'eqsShuffleOutputBytes'
--
-- * 'eqsRecordsWritten'
--
-- * 'eqsSteps'
--
-- * 'eqsInputStages'
--
-- * 'eqsWriteRatioAvg'
--
-- * 'eqsRecordsRead'
--
-- * 'eqsComputeRatioAvg'
--
-- * 'eqsName'
--
-- * 'eqsComputeMsMax'
--
-- * 'eqsReadRatioMax'
--
-- * 'eqsWriteMsMax'
--
-- * 'eqsWaitRatioAvg'
--
-- * 'eqsSlotMs'
--
-- * 'eqsWaitMsAvg'
--
-- * 'eqsId'
--
-- * 'eqsComputeRatioMax'
--
-- * 'eqsWriteRatioMax'
--
-- * 'eqsComputeMsAvg'
--
-- * 'eqsReadRatioAvg'
--
-- * 'eqsWriteMsAvg'
--
-- * 'eqsStartMs'
--
-- * 'eqsEndMs'
--
-- * 'eqsWaitMsMax'
explainQueryStage
    :: ExplainQueryStage
explainQueryStage =
  ExplainQueryStage'
    { _eqsReadMsAvg = Nothing
    , _eqsStatus = Nothing
    , _eqsShuffleOutputBytesSpilled = Nothing
    , _eqsReadMsMax = Nothing
    , _eqsCompletedParallelInputs = Nothing
    , _eqsWaitRatioMax = Nothing
    , _eqsParallelInputs = Nothing
    , _eqsShuffleOutputBytes = Nothing
    , _eqsRecordsWritten = Nothing
    , _eqsSteps = Nothing
    , _eqsInputStages = Nothing
    , _eqsWriteRatioAvg = Nothing
    , _eqsRecordsRead = Nothing
    , _eqsComputeRatioAvg = Nothing
    , _eqsName = Nothing
    , _eqsComputeMsMax = Nothing
    , _eqsReadRatioMax = Nothing
    , _eqsWriteMsMax = Nothing
    , _eqsWaitRatioAvg = Nothing
    , _eqsSlotMs = Nothing
    , _eqsWaitMsAvg = Nothing
    , _eqsId = Nothing
    , _eqsComputeRatioMax = Nothing
    , _eqsWriteRatioMax = Nothing
    , _eqsComputeMsAvg = Nothing
    , _eqsReadRatioAvg = Nothing
    , _eqsWriteMsAvg = Nothing
    , _eqsStartMs = Nothing
    , _eqsEndMs = Nothing
    , _eqsWaitMsMax = Nothing
    }


-- | Milliseconds the average shard spent reading input.
eqsReadMsAvg :: Lens' ExplainQueryStage (Maybe Int64)
eqsReadMsAvg
  = lens _eqsReadMsAvg (\ s a -> s{_eqsReadMsAvg = a})
      . mapping _Coerce

-- | Current status for the stage.
eqsStatus :: Lens' ExplainQueryStage (Maybe Text)
eqsStatus
  = lens _eqsStatus (\ s a -> s{_eqsStatus = a})

-- | Total number of bytes written to shuffle and spilled to disk.
eqsShuffleOutputBytesSpilled :: Lens' ExplainQueryStage (Maybe Int64)
eqsShuffleOutputBytesSpilled
  = lens _eqsShuffleOutputBytesSpilled
      (\ s a -> s{_eqsShuffleOutputBytesSpilled = a})
      . mapping _Coerce

-- | Milliseconds the slowest shard spent reading input.
eqsReadMsMax :: Lens' ExplainQueryStage (Maybe Int64)
eqsReadMsMax
  = lens _eqsReadMsMax (\ s a -> s{_eqsReadMsMax = a})
      . mapping _Coerce

-- | Number of parallel input segments completed.
eqsCompletedParallelInputs :: Lens' ExplainQueryStage (Maybe Int64)
eqsCompletedParallelInputs
  = lens _eqsCompletedParallelInputs
      (\ s a -> s{_eqsCompletedParallelInputs = a})
      . mapping _Coerce

-- | Relative amount of time the slowest shard spent waiting to be scheduled.
eqsWaitRatioMax :: Lens' ExplainQueryStage (Maybe Double)
eqsWaitRatioMax
  = lens _eqsWaitRatioMax
      (\ s a -> s{_eqsWaitRatioMax = a})
      . mapping _Coerce

-- | Number of parallel input segments to be processed.
eqsParallelInputs :: Lens' ExplainQueryStage (Maybe Int64)
eqsParallelInputs
  = lens _eqsParallelInputs
      (\ s a -> s{_eqsParallelInputs = a})
      . mapping _Coerce

-- | Total number of bytes written to shuffle.
eqsShuffleOutputBytes :: Lens' ExplainQueryStage (Maybe Int64)
eqsShuffleOutputBytes
  = lens _eqsShuffleOutputBytes
      (\ s a -> s{_eqsShuffleOutputBytes = a})
      . mapping _Coerce

-- | Number of records written by the stage.
eqsRecordsWritten :: Lens' ExplainQueryStage (Maybe Int64)
eqsRecordsWritten
  = lens _eqsRecordsWritten
      (\ s a -> s{_eqsRecordsWritten = a})
      . mapping _Coerce

-- | List of operations within the stage in dependency order (approximately
-- chronological).
eqsSteps :: Lens' ExplainQueryStage [ExplainQueryStep]
eqsSteps
  = lens _eqsSteps (\ s a -> s{_eqsSteps = a}) .
      _Default
      . _Coerce

-- | IDs for stages that are inputs to this stage.
eqsInputStages :: Lens' ExplainQueryStage [Int64]
eqsInputStages
  = lens _eqsInputStages
      (\ s a -> s{_eqsInputStages = a})
      . _Default
      . _Coerce

-- | Relative amount of time the average shard spent on writing output.
eqsWriteRatioAvg :: Lens' ExplainQueryStage (Maybe Double)
eqsWriteRatioAvg
  = lens _eqsWriteRatioAvg
      (\ s a -> s{_eqsWriteRatioAvg = a})
      . mapping _Coerce

-- | Number of records read into the stage.
eqsRecordsRead :: Lens' ExplainQueryStage (Maybe Int64)
eqsRecordsRead
  = lens _eqsRecordsRead
      (\ s a -> s{_eqsRecordsRead = a})
      . mapping _Coerce

-- | Relative amount of time the average shard spent on CPU-bound tasks.
eqsComputeRatioAvg :: Lens' ExplainQueryStage (Maybe Double)
eqsComputeRatioAvg
  = lens _eqsComputeRatioAvg
      (\ s a -> s{_eqsComputeRatioAvg = a})
      . mapping _Coerce

-- | Human-readable name for stage.
eqsName :: Lens' ExplainQueryStage (Maybe Text)
eqsName = lens _eqsName (\ s a -> s{_eqsName = a})

-- | Milliseconds the slowest shard spent on CPU-bound tasks.
eqsComputeMsMax :: Lens' ExplainQueryStage (Maybe Int64)
eqsComputeMsMax
  = lens _eqsComputeMsMax
      (\ s a -> s{_eqsComputeMsMax = a})
      . mapping _Coerce

-- | Relative amount of time the slowest shard spent reading input.
eqsReadRatioMax :: Lens' ExplainQueryStage (Maybe Double)
eqsReadRatioMax
  = lens _eqsReadRatioMax
      (\ s a -> s{_eqsReadRatioMax = a})
      . mapping _Coerce

-- | Milliseconds the slowest shard spent on writing output.
eqsWriteMsMax :: Lens' ExplainQueryStage (Maybe Int64)
eqsWriteMsMax
  = lens _eqsWriteMsMax
      (\ s a -> s{_eqsWriteMsMax = a})
      . mapping _Coerce

-- | Relative amount of time the average shard spent waiting to be scheduled.
eqsWaitRatioAvg :: Lens' ExplainQueryStage (Maybe Double)
eqsWaitRatioAvg
  = lens _eqsWaitRatioAvg
      (\ s a -> s{_eqsWaitRatioAvg = a})
      . mapping _Coerce

-- | Slot-milliseconds used by the stage.
eqsSlotMs :: Lens' ExplainQueryStage (Maybe Int64)
eqsSlotMs
  = lens _eqsSlotMs (\ s a -> s{_eqsSlotMs = a}) .
      mapping _Coerce

-- | Milliseconds the average shard spent waiting to be scheduled.
eqsWaitMsAvg :: Lens' ExplainQueryStage (Maybe Int64)
eqsWaitMsAvg
  = lens _eqsWaitMsAvg (\ s a -> s{_eqsWaitMsAvg = a})
      . mapping _Coerce

-- | Unique ID for stage within plan.
eqsId :: Lens' ExplainQueryStage (Maybe Int64)
eqsId
  = lens _eqsId (\ s a -> s{_eqsId = a}) .
      mapping _Coerce

-- | Relative amount of time the slowest shard spent on CPU-bound tasks.
eqsComputeRatioMax :: Lens' ExplainQueryStage (Maybe Double)
eqsComputeRatioMax
  = lens _eqsComputeRatioMax
      (\ s a -> s{_eqsComputeRatioMax = a})
      . mapping _Coerce

-- | Relative amount of time the slowest shard spent on writing output.
eqsWriteRatioMax :: Lens' ExplainQueryStage (Maybe Double)
eqsWriteRatioMax
  = lens _eqsWriteRatioMax
      (\ s a -> s{_eqsWriteRatioMax = a})
      . mapping _Coerce

-- | Milliseconds the average shard spent on CPU-bound tasks.
eqsComputeMsAvg :: Lens' ExplainQueryStage (Maybe Int64)
eqsComputeMsAvg
  = lens _eqsComputeMsAvg
      (\ s a -> s{_eqsComputeMsAvg = a})
      . mapping _Coerce

-- | Relative amount of time the average shard spent reading input.
eqsReadRatioAvg :: Lens' ExplainQueryStage (Maybe Double)
eqsReadRatioAvg
  = lens _eqsReadRatioAvg
      (\ s a -> s{_eqsReadRatioAvg = a})
      . mapping _Coerce

-- | Milliseconds the average shard spent on writing output.
eqsWriteMsAvg :: Lens' ExplainQueryStage (Maybe Int64)
eqsWriteMsAvg
  = lens _eqsWriteMsAvg
      (\ s a -> s{_eqsWriteMsAvg = a})
      . mapping _Coerce

-- | Stage start time represented as milliseconds since epoch.
eqsStartMs :: Lens' ExplainQueryStage (Maybe Int64)
eqsStartMs
  = lens _eqsStartMs (\ s a -> s{_eqsStartMs = a}) .
      mapping _Coerce

-- | Stage end time represented as milliseconds since epoch.
eqsEndMs :: Lens' ExplainQueryStage (Maybe Int64)
eqsEndMs
  = lens _eqsEndMs (\ s a -> s{_eqsEndMs = a}) .
      mapping _Coerce

-- | Milliseconds the slowest shard spent waiting to be scheduled.
eqsWaitMsMax :: Lens' ExplainQueryStage (Maybe Int64)
eqsWaitMsMax
  = lens _eqsWaitMsMax (\ s a -> s{_eqsWaitMsMax = a})
      . mapping _Coerce

instance FromJSON ExplainQueryStage where
        parseJSON
          = withObject "ExplainQueryStage"
              (\ o ->
                 ExplainQueryStage' <$>
                   (o .:? "readMsAvg") <*> (o .:? "status") <*>
                     (o .:? "shuffleOutputBytesSpilled")
                     <*> (o .:? "readMsMax")
                     <*> (o .:? "completedParallelInputs")
                     <*> (o .:? "waitRatioMax")
                     <*> (o .:? "parallelInputs")
                     <*> (o .:? "shuffleOutputBytes")
                     <*> (o .:? "recordsWritten")
                     <*> (o .:? "steps" .!= mempty)
                     <*> (o .:? "inputStages" .!= mempty)
                     <*> (o .:? "writeRatioAvg")
                     <*> (o .:? "recordsRead")
                     <*> (o .:? "computeRatioAvg")
                     <*> (o .:? "name")
                     <*> (o .:? "computeMsMax")
                     <*> (o .:? "readRatioMax")
                     <*> (o .:? "writeMsMax")
                     <*> (o .:? "waitRatioAvg")
                     <*> (o .:? "slotMs")
                     <*> (o .:? "waitMsAvg")
                     <*> (o .:? "id")
                     <*> (o .:? "computeRatioMax")
                     <*> (o .:? "writeRatioMax")
                     <*> (o .:? "computeMsAvg")
                     <*> (o .:? "readRatioAvg")
                     <*> (o .:? "writeMsAvg")
                     <*> (o .:? "startMs")
                     <*> (o .:? "endMs")
                     <*> (o .:? "waitMsMax"))

instance ToJSON ExplainQueryStage where
        toJSON ExplainQueryStage'{..}
          = object
              (catMaybes
                 [("readMsAvg" .=) <$> _eqsReadMsAvg,
                  ("status" .=) <$> _eqsStatus,
                  ("shuffleOutputBytesSpilled" .=) <$>
                    _eqsShuffleOutputBytesSpilled,
                  ("readMsMax" .=) <$> _eqsReadMsMax,
                  ("completedParallelInputs" .=) <$>
                    _eqsCompletedParallelInputs,
                  ("waitRatioMax" .=) <$> _eqsWaitRatioMax,
                  ("parallelInputs" .=) <$> _eqsParallelInputs,
                  ("shuffleOutputBytes" .=) <$> _eqsShuffleOutputBytes,
                  ("recordsWritten" .=) <$> _eqsRecordsWritten,
                  ("steps" .=) <$> _eqsSteps,
                  ("inputStages" .=) <$> _eqsInputStages,
                  ("writeRatioAvg" .=) <$> _eqsWriteRatioAvg,
                  ("recordsRead" .=) <$> _eqsRecordsRead,
                  ("computeRatioAvg" .=) <$> _eqsComputeRatioAvg,
                  ("name" .=) <$> _eqsName,
                  ("computeMsMax" .=) <$> _eqsComputeMsMax,
                  ("readRatioMax" .=) <$> _eqsReadRatioMax,
                  ("writeMsMax" .=) <$> _eqsWriteMsMax,
                  ("waitRatioAvg" .=) <$> _eqsWaitRatioAvg,
                  ("slotMs" .=) <$> _eqsSlotMs,
                  ("waitMsAvg" .=) <$> _eqsWaitMsAvg,
                  ("id" .=) <$> _eqsId,
                  ("computeRatioMax" .=) <$> _eqsComputeRatioMax,
                  ("writeRatioMax" .=) <$> _eqsWriteRatioMax,
                  ("computeMsAvg" .=) <$> _eqsComputeMsAvg,
                  ("readRatioAvg" .=) <$> _eqsReadRatioAvg,
                  ("writeMsAvg" .=) <$> _eqsWriteMsAvg,
                  ("startMs" .=) <$> _eqsStartMs,
                  ("endMs" .=) <$> _eqsEndMs,
                  ("waitMsMax" .=) <$> _eqsWaitMsMax])

--
-- /See:/ 'snapshotDefinition' smart constructor.
data SnapshotDefinition =
  SnapshotDefinition'
    { _sdBaseTableReference :: !(Maybe TableReference)
    , _sdSnapshotTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SnapshotDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdBaseTableReference'
--
-- * 'sdSnapshotTime'
snapshotDefinition
    :: SnapshotDefinition
snapshotDefinition =
  SnapshotDefinition'
    {_sdBaseTableReference = Nothing, _sdSnapshotTime = Nothing}


-- | [Required] Reference describing the ID of the table that was snapshot.
sdBaseTableReference :: Lens' SnapshotDefinition (Maybe TableReference)
sdBaseTableReference
  = lens _sdBaseTableReference
      (\ s a -> s{_sdBaseTableReference = a})

-- | [Required] The time at which the base table was snapshot. This value is
-- reported in the JSON response using RFC3339 format.
sdSnapshotTime :: Lens' SnapshotDefinition (Maybe UTCTime)
sdSnapshotTime
  = lens _sdSnapshotTime
      (\ s a -> s{_sdSnapshotTime = a})
      . mapping _DateTime

instance FromJSON SnapshotDefinition where
        parseJSON
          = withObject "SnapshotDefinition"
              (\ o ->
                 SnapshotDefinition' <$>
                   (o .:? "baseTableReference") <*>
                     (o .:? "snapshotTime"))

instance ToJSON SnapshotDefinition where
        toJSON SnapshotDefinition'{..}
          = object
              (catMaybes
                 [("baseTableReference" .=) <$> _sdBaseTableReference,
                  ("snapshotTime" .=) <$> _sdSnapshotTime])

--
-- /See:/ 'biEngineReason' smart constructor.
data BiEngineReason =
  BiEngineReason'
    { _berCode :: !Text
    , _berMessage :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BiEngineReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'berCode'
--
-- * 'berMessage'
biEngineReason
    :: BiEngineReason
biEngineReason =
  BiEngineReason'
    {_berCode = "$(reason.code)", _berMessage = "$(reason.message)"}


-- | [Output-only] High-level BI Engine reason for partial or disabled
-- acceleration.
berCode :: Lens' BiEngineReason Text
berCode = lens _berCode (\ s a -> s{_berCode = a})

-- | [Output-only] Free form human-readable reason for partial or disabled
-- acceleration.
berMessage :: Lens' BiEngineReason Text
berMessage
  = lens _berMessage (\ s a -> s{_berMessage = a})

instance FromJSON BiEngineReason where
        parseJSON
          = withObject "BiEngineReason"
              (\ o ->
                 BiEngineReason' <$>
                   (o .:? "code" .!= "$(reason.code)") <*>
                     (o .:? "message" .!= "$(reason.message)"))

instance ToJSON BiEngineReason where
        toJSON BiEngineReason'{..}
          = object
              (catMaybes
                 [Just ("code" .= _berCode),
                  Just ("message" .= _berMessage)])

--
-- /See:/ 'bigQueryModelTraining' smart constructor.
data BigQueryModelTraining =
  BigQueryModelTraining'
    { _bqmtExpectedTotalIterations :: !(Maybe (Textual Int64))
    , _bqmtCurrentIteration :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BigQueryModelTraining' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bqmtExpectedTotalIterations'
--
-- * 'bqmtCurrentIteration'
bigQueryModelTraining
    :: BigQueryModelTraining
bigQueryModelTraining =
  BigQueryModelTraining'
    {_bqmtExpectedTotalIterations = Nothing, _bqmtCurrentIteration = Nothing}


-- | [Output-only, Beta] Expected number of iterations for the create model
-- query job specified as num_iterations in the input query. The actual
-- total number of iterations may be less than this number due to early
-- stop.
bqmtExpectedTotalIterations :: Lens' BigQueryModelTraining (Maybe Int64)
bqmtExpectedTotalIterations
  = lens _bqmtExpectedTotalIterations
      (\ s a -> s{_bqmtExpectedTotalIterations = a})
      . mapping _Coerce

-- | [Output-only, Beta] Index of current ML training iteration. Updated
-- during create model query job to show job progress.
bqmtCurrentIteration :: Lens' BigQueryModelTraining (Maybe Int32)
bqmtCurrentIteration
  = lens _bqmtCurrentIteration
      (\ s a -> s{_bqmtCurrentIteration = a})
      . mapping _Coerce

instance FromJSON BigQueryModelTraining where
        parseJSON
          = withObject "BigQueryModelTraining"
              (\ o ->
                 BigQueryModelTraining' <$>
                   (o .:? "expectedTotalIterations") <*>
                     (o .:? "currentIteration"))

instance ToJSON BigQueryModelTraining where
        toJSON BigQueryModelTraining'{..}
          = object
              (catMaybes
                 [("expectedTotalIterations" .=) <$>
                    _bqmtExpectedTotalIterations,
                  ("currentIteration" .=) <$> _bqmtCurrentIteration])

--
-- /See:/ 'jobConfigurationLoad' smart constructor.
data JobConfigurationLoad =
  JobConfigurationLoad'
    { _jclSkipLeadingRows :: !(Maybe (Textual Int32))
    , _jclProjectionFields :: !(Maybe [Text])
    , _jclDestinationTable :: !(Maybe TableReference)
    , _jclWriteDisPosition :: !(Maybe Text)
    , _jclAllowJaggedRows :: !(Maybe Bool)
    , _jclClustering :: !(Maybe Clustering)
    , _jclRangePartitioning :: !(Maybe RangePartitioning)
    , _jclSchemaInline :: !(Maybe Text)
    , _jclIgnoreUnknownValues :: !(Maybe Bool)
    , _jclSchemaUpdateOptions :: !(Maybe [Text])
    , _jclCreateDisPosition :: !(Maybe Text)
    , _jclSchemaInlineFormat :: !(Maybe Text)
    , _jclAllowQuotedNewlines :: !(Maybe Bool)
    , _jclSourceFormat :: !(Maybe Text)
    , _jclJSONExtension :: !(Maybe Text)
    , _jclUseAvroLogicalTypes :: !(Maybe Bool)
    , _jclDecimalTargetTypes :: !(Maybe [Text])
    , _jclSchema :: !(Maybe TableSchema)
    , _jclTimePartitioning :: !(Maybe TimePartitioning)
    , _jclQuote :: !(Maybe Text)
    , _jclMaxBadRecords :: !(Maybe (Textual Int32))
    , _jclAutodetect :: !(Maybe Bool)
    , _jclHivePartitioningOptions :: !(Maybe HivePartitioningOptions)
    , _jclSourceURIs :: !(Maybe [Text])
    , _jclEncoding :: !(Maybe Text)
    , _jclDestinationTableProperties :: !(Maybe DestinationTableProperties)
    , _jclDestinationEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    , _jclParquetOptions :: !(Maybe ParquetOptions)
    , _jclFieldDelimiter :: !(Maybe Text)
    , _jclNullMarker :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobConfigurationLoad' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jclSkipLeadingRows'
--
-- * 'jclProjectionFields'
--
-- * 'jclDestinationTable'
--
-- * 'jclWriteDisPosition'
--
-- * 'jclAllowJaggedRows'
--
-- * 'jclClustering'
--
-- * 'jclRangePartitioning'
--
-- * 'jclSchemaInline'
--
-- * 'jclIgnoreUnknownValues'
--
-- * 'jclSchemaUpdateOptions'
--
-- * 'jclCreateDisPosition'
--
-- * 'jclSchemaInlineFormat'
--
-- * 'jclAllowQuotedNewlines'
--
-- * 'jclSourceFormat'
--
-- * 'jclJSONExtension'
--
-- * 'jclUseAvroLogicalTypes'
--
-- * 'jclDecimalTargetTypes'
--
-- * 'jclSchema'
--
-- * 'jclTimePartitioning'
--
-- * 'jclQuote'
--
-- * 'jclMaxBadRecords'
--
-- * 'jclAutodetect'
--
-- * 'jclHivePartitioningOptions'
--
-- * 'jclSourceURIs'
--
-- * 'jclEncoding'
--
-- * 'jclDestinationTableProperties'
--
-- * 'jclDestinationEncryptionConfiguration'
--
-- * 'jclParquetOptions'
--
-- * 'jclFieldDelimiter'
--
-- * 'jclNullMarker'
jobConfigurationLoad
    :: JobConfigurationLoad
jobConfigurationLoad =
  JobConfigurationLoad'
    { _jclSkipLeadingRows = Nothing
    , _jclProjectionFields = Nothing
    , _jclDestinationTable = Nothing
    , _jclWriteDisPosition = Nothing
    , _jclAllowJaggedRows = Nothing
    , _jclClustering = Nothing
    , _jclRangePartitioning = Nothing
    , _jclSchemaInline = Nothing
    , _jclIgnoreUnknownValues = Nothing
    , _jclSchemaUpdateOptions = Nothing
    , _jclCreateDisPosition = Nothing
    , _jclSchemaInlineFormat = Nothing
    , _jclAllowQuotedNewlines = Nothing
    , _jclSourceFormat = Nothing
    , _jclJSONExtension = Nothing
    , _jclUseAvroLogicalTypes = Nothing
    , _jclDecimalTargetTypes = Nothing
    , _jclSchema = Nothing
    , _jclTimePartitioning = Nothing
    , _jclQuote = Nothing
    , _jclMaxBadRecords = Nothing
    , _jclAutodetect = Nothing
    , _jclHivePartitioningOptions = Nothing
    , _jclSourceURIs = Nothing
    , _jclEncoding = Nothing
    , _jclDestinationTableProperties = Nothing
    , _jclDestinationEncryptionConfiguration = Nothing
    , _jclParquetOptions = Nothing
    , _jclFieldDelimiter = Nothing
    , _jclNullMarker = Nothing
    }


-- | [Optional] The number of rows at the top of a CSV file that BigQuery
-- will skip when loading the data. The default value is 0. This property
-- is useful if you have header rows in the file that should be skipped.
jclSkipLeadingRows :: Lens' JobConfigurationLoad (Maybe Int32)
jclSkipLeadingRows
  = lens _jclSkipLeadingRows
      (\ s a -> s{_jclSkipLeadingRows = a})
      . mapping _Coerce

-- | If sourceFormat is set to \"DATASTORE_BACKUP\", indicates which entity
-- properties to load into BigQuery from a Cloud Datastore backup. Property
-- names are case sensitive and must be top-level properties. If no
-- properties are specified, BigQuery loads all properties. If any named
-- property isn\'t found in the Cloud Datastore backup, an invalid error is
-- returned in the job result.
jclProjectionFields :: Lens' JobConfigurationLoad [Text]
jclProjectionFields
  = lens _jclProjectionFields
      (\ s a -> s{_jclProjectionFields = a})
      . _Default
      . _Coerce

-- | [Required] The destination table to load the data into.
jclDestinationTable :: Lens' JobConfigurationLoad (Maybe TableReference)
jclDestinationTable
  = lens _jclDestinationTable
      (\ s a -> s{_jclDestinationTable = a})

-- | [Optional] Specifies the action that occurs if the destination table
-- already exists. The following values are supported: WRITE_TRUNCATE: If
-- the table already exists, BigQuery overwrites the table data.
-- WRITE_APPEND: If the table already exists, BigQuery appends the data to
-- the table. WRITE_EMPTY: If the table already exists and contains data, a
-- \'duplicate\' error is returned in the job result. The default value is
-- WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able
-- to complete the job successfully. Creation, truncation and append
-- actions occur as one atomic update upon job completion.
jclWriteDisPosition :: Lens' JobConfigurationLoad (Maybe Text)
jclWriteDisPosition
  = lens _jclWriteDisPosition
      (\ s a -> s{_jclWriteDisPosition = a})

-- | [Optional] Accept rows that are missing trailing optional columns. The
-- missing values are treated as nulls. If false, records with missing
-- trailing columns are treated as bad records, and if there are too many
-- bad records, an invalid error is returned in the job result. The default
-- value is false. Only applicable to CSV, ignored for other formats.
jclAllowJaggedRows :: Lens' JobConfigurationLoad (Maybe Bool)
jclAllowJaggedRows
  = lens _jclAllowJaggedRows
      (\ s a -> s{_jclAllowJaggedRows = a})

-- | [Beta] Clustering specification for the destination table. Must be
-- specified with time-based partitioning, data in the table will be first
-- partitioned and subsequently clustered.
jclClustering :: Lens' JobConfigurationLoad (Maybe Clustering)
jclClustering
  = lens _jclClustering
      (\ s a -> s{_jclClustering = a})

-- | [TrustedTester] Range partitioning specification for this table. Only
-- one of timePartitioning and rangePartitioning should be specified.
jclRangePartitioning :: Lens' JobConfigurationLoad (Maybe RangePartitioning)
jclRangePartitioning
  = lens _jclRangePartitioning
      (\ s a -> s{_jclRangePartitioning = a})

-- | [Deprecated] The inline schema. For CSV schemas, specify as
-- \"Field1:Type1[,Field2:Type2]*\". For example, \"foo:STRING,
-- bar:INTEGER, baz:FLOAT\".
jclSchemaInline :: Lens' JobConfigurationLoad (Maybe Text)
jclSchemaInline
  = lens _jclSchemaInline
      (\ s a -> s{_jclSchemaInline = a})

-- | [Optional] Indicates if BigQuery should allow extra values that are not
-- represented in the table schema. If true, the extra values are ignored.
-- If false, records with extra columns are treated as bad records, and if
-- there are too many bad records, an invalid error is returned in the job
-- result. The default value is false. The sourceFormat property determines
-- what BigQuery treats as an extra value: CSV: Trailing columns JSON:
-- Named values that don\'t match any column names
jclIgnoreUnknownValues :: Lens' JobConfigurationLoad (Maybe Bool)
jclIgnoreUnknownValues
  = lens _jclIgnoreUnknownValues
      (\ s a -> s{_jclIgnoreUnknownValues = a})

-- | Allows the schema of the destination table to be updated as a side
-- effect of the load job if a schema is autodetected or supplied in the
-- job configuration. Schema update options are supported in two cases:
-- when writeDisposition is WRITE_APPEND; when writeDisposition is
-- WRITE_TRUNCATE and the destination table is a partition of a table,
-- specified by partition decorators. For normal tables, WRITE_TRUNCATE
-- will always overwrite the schema. One or more of the following values
-- are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to
-- the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in
-- the original schema to nullable.
jclSchemaUpdateOptions :: Lens' JobConfigurationLoad [Text]
jclSchemaUpdateOptions
  = lens _jclSchemaUpdateOptions
      (\ s a -> s{_jclSchemaUpdateOptions = a})
      . _Default
      . _Coerce

-- | [Optional] Specifies whether the job is allowed to create new tables.
-- The following values are supported: CREATE_IF_NEEDED: If the table does
-- not exist, BigQuery creates the table. CREATE_NEVER: The table must
-- already exist. If it does not, a \'notFound\' error is returned in the
-- job result. The default value is CREATE_IF_NEEDED. Creation, truncation
-- and append actions occur as one atomic update upon job completion.
jclCreateDisPosition :: Lens' JobConfigurationLoad (Maybe Text)
jclCreateDisPosition
  = lens _jclCreateDisPosition
      (\ s a -> s{_jclCreateDisPosition = a})

-- | [Deprecated] The format of the schemaInline property.
jclSchemaInlineFormat :: Lens' JobConfigurationLoad (Maybe Text)
jclSchemaInlineFormat
  = lens _jclSchemaInlineFormat
      (\ s a -> s{_jclSchemaInlineFormat = a})

-- | Indicates if BigQuery should allow quoted data sections that contain
-- newline characters in a CSV file. The default value is false.
jclAllowQuotedNewlines :: Lens' JobConfigurationLoad (Maybe Bool)
jclAllowQuotedNewlines
  = lens _jclAllowQuotedNewlines
      (\ s a -> s{_jclAllowQuotedNewlines = a})

-- | [Optional] The format of the data files. For CSV files, specify \"CSV\".
-- For datastore backups, specify \"DATASTORE_BACKUP\". For
-- newline-delimited JSON, specify \"NEWLINE_DELIMITED_JSON\". For Avro,
-- specify \"AVRO\". For parquet, specify \"PARQUET\". For orc, specify
-- \"ORC\". The default value is CSV.
jclSourceFormat :: Lens' JobConfigurationLoad (Maybe Text)
jclSourceFormat
  = lens _jclSourceFormat
      (\ s a -> s{_jclSourceFormat = a})

-- | [Optional] If sourceFormat is set to newline-delimited JSON, indicates
-- whether it should be processed as a JSON variant such as GeoJSON. For a
-- sourceFormat other than JSON, omit this field. If the sourceFormat is
-- newline-delimited JSON: - for newline-delimited GeoJSON: set to GEOJSON.
jclJSONExtension :: Lens' JobConfigurationLoad (Maybe Text)
jclJSONExtension
  = lens _jclJSONExtension
      (\ s a -> s{_jclJSONExtension = a})

-- | [Optional] If sourceFormat is set to \"AVRO\", indicates whether to
-- enable interpreting logical types into their corresponding types (ie.
-- TIMESTAMP), instead of only using their raw types (ie. INTEGER).
jclUseAvroLogicalTypes :: Lens' JobConfigurationLoad (Maybe Bool)
jclUseAvroLogicalTypes
  = lens _jclUseAvroLogicalTypes
      (\ s a -> s{_jclUseAvroLogicalTypes = a})

-- | [Optional] Defines the list of possible SQL data types to which the
-- source decimal values are converted. This list and the precision and the
-- scale parameters of the decimal field determine the target type. In the
-- order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in
-- the specified list and if it supports the precision and the scale.
-- STRING supports all precision and scale values. If none of the listed
-- types supports the precision and the scale, the type supporting the
-- widest range in the specified list is picked, and if a value exceeds the
-- supported range when reading the data, an error will be thrown. Example:
-- Suppose the value of this field is [\"NUMERIC\", \"BIGNUMERIC\"]. If
-- (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC
-- cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot
-- hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC
-- (error if value exeeds supported range). This field cannot contain
-- duplicate types. The order of the types in this field is ignored. For
-- example, [\"BIGNUMERIC\", \"NUMERIC\"] is the same as [\"NUMERIC\",
-- \"BIGNUMERIC\"] and NUMERIC always takes precedence over BIGNUMERIC.
-- Defaults to [\"NUMERIC\", \"STRING\"] for ORC and [\"NUMERIC\"] for the
-- other file formats.
jclDecimalTargetTypes :: Lens' JobConfigurationLoad [Text]
jclDecimalTargetTypes
  = lens _jclDecimalTargetTypes
      (\ s a -> s{_jclDecimalTargetTypes = a})
      . _Default
      . _Coerce

-- | [Optional] The schema for the destination table. The schema can be
-- omitted if the destination table already exists, or if you\'re loading
-- data from Google Cloud Datastore.
jclSchema :: Lens' JobConfigurationLoad (Maybe TableSchema)
jclSchema
  = lens _jclSchema (\ s a -> s{_jclSchema = a})

-- | Time-based partitioning specification for the destination table. Only
-- one of timePartitioning and rangePartitioning should be specified.
jclTimePartitioning :: Lens' JobConfigurationLoad (Maybe TimePartitioning)
jclTimePartitioning
  = lens _jclTimePartitioning
      (\ s a -> s{_jclTimePartitioning = a})

-- | [Optional] The value that is used to quote data sections in a CSV file.
-- BigQuery converts the string to ISO-8859-1 encoding, and then uses the
-- first byte of the encoded string to split the data in its raw, binary
-- state. The default value is a double-quote (\'\"\'). If your data does
-- not contain quoted sections, set the property value to an empty string.
-- If your data contains quoted newline characters, you must also set the
-- allowQuotedNewlines property to true.
jclQuote :: Lens' JobConfigurationLoad (Maybe Text)
jclQuote = lens _jclQuote (\ s a -> s{_jclQuote = a})

-- | [Optional] The maximum number of bad records that BigQuery can ignore
-- when running the job. If the number of bad records exceeds this value,
-- an invalid error is returned in the job result. This is only valid for
-- CSV and JSON. The default value is 0, which requires that all records
-- are valid.
jclMaxBadRecords :: Lens' JobConfigurationLoad (Maybe Int32)
jclMaxBadRecords
  = lens _jclMaxBadRecords
      (\ s a -> s{_jclMaxBadRecords = a})
      . mapping _Coerce

-- | [Optional] Indicates if we should automatically infer the options and
-- schema for CSV and JSON sources.
jclAutodetect :: Lens' JobConfigurationLoad (Maybe Bool)
jclAutodetect
  = lens _jclAutodetect
      (\ s a -> s{_jclAutodetect = a})

-- | [Optional] Options to configure hive partitioning support.
jclHivePartitioningOptions :: Lens' JobConfigurationLoad (Maybe HivePartitioningOptions)
jclHivePartitioningOptions
  = lens _jclHivePartitioningOptions
      (\ s a -> s{_jclHivePartitioningOptions = a})

-- | [Required] The fully-qualified URIs that point to your data in Google
-- Cloud. For Google Cloud Storage URIs: Each URI can contain one \'*\'
-- wildcard character and it must come after the \'bucket\' name. Size
-- limits related to load jobs apply to external data sources. For Google
-- Cloud Bigtable URIs: Exactly one URI can be specified and it has be a
-- fully specified and valid HTTPS URL for a Google Cloud Bigtable table.
-- For Google Cloud Datastore backups: Exactly one URI can be specified.
-- Also, the \'*\' wildcard character is not allowed.
jclSourceURIs :: Lens' JobConfigurationLoad [Text]
jclSourceURIs
  = lens _jclSourceURIs
      (\ s a -> s{_jclSourceURIs = a})
      . _Default
      . _Coerce

-- | [Optional] The character encoding of the data. The supported values are
-- UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the
-- data after the raw, binary data has been split using the values of the
-- quote and fieldDelimiter properties.
jclEncoding :: Lens' JobConfigurationLoad (Maybe Text)
jclEncoding
  = lens _jclEncoding (\ s a -> s{_jclEncoding = a})

-- | [Beta] [Optional] Properties with which to create the destination table
-- if it is new.
jclDestinationTableProperties :: Lens' JobConfigurationLoad (Maybe DestinationTableProperties)
jclDestinationTableProperties
  = lens _jclDestinationTableProperties
      (\ s a -> s{_jclDestinationTableProperties = a})

-- | Custom encryption configuration (e.g., Cloud KMS keys).
jclDestinationEncryptionConfiguration :: Lens' JobConfigurationLoad (Maybe EncryptionConfiguration)
jclDestinationEncryptionConfiguration
  = lens _jclDestinationEncryptionConfiguration
      (\ s a ->
         s{_jclDestinationEncryptionConfiguration = a})

-- | [Optional] Options to configure parquet support.
jclParquetOptions :: Lens' JobConfigurationLoad (Maybe ParquetOptions)
jclParquetOptions
  = lens _jclParquetOptions
      (\ s a -> s{_jclParquetOptions = a})

-- | [Optional] The separator for fields in a CSV file. The separator can be
-- any ISO-8859-1 single-byte character. To use a character in the range
-- 128-255, you must encode the character as UTF8. BigQuery converts the
-- string to ISO-8859-1 encoding, and then uses the first byte of the
-- encoded string to split the data in its raw, binary state. BigQuery also
-- supports the escape sequence \"\\t\" to specify a tab separator. The
-- default value is a comma (\',\').
jclFieldDelimiter :: Lens' JobConfigurationLoad (Maybe Text)
jclFieldDelimiter
  = lens _jclFieldDelimiter
      (\ s a -> s{_jclFieldDelimiter = a})

-- | [Optional] Specifies a string that represents a null value in a CSV
-- file. For example, if you specify \"\\N\", BigQuery interprets \"\\N\"
-- as a null value when loading a CSV file. The default value is the empty
-- string. If you set this property to a custom value, BigQuery throws an
-- error if an empty string is present for all data types except for STRING
-- and BYTE. For STRING and BYTE columns, BigQuery interprets the empty
-- string as an empty value.
jclNullMarker :: Lens' JobConfigurationLoad (Maybe Text)
jclNullMarker
  = lens _jclNullMarker
      (\ s a -> s{_jclNullMarker = a})

instance FromJSON JobConfigurationLoad where
        parseJSON
          = withObject "JobConfigurationLoad"
              (\ o ->
                 JobConfigurationLoad' <$>
                   (o .:? "skipLeadingRows") <*>
                     (o .:? "projectionFields" .!= mempty)
                     <*> (o .:? "destinationTable")
                     <*> (o .:? "writeDisposition")
                     <*> (o .:? "allowJaggedRows")
                     <*> (o .:? "clustering")
                     <*> (o .:? "rangePartitioning")
                     <*> (o .:? "schemaInline")
                     <*> (o .:? "ignoreUnknownValues")
                     <*> (o .:? "schemaUpdateOptions" .!= mempty)
                     <*> (o .:? "createDisposition")
                     <*> (o .:? "schemaInlineFormat")
                     <*> (o .:? "allowQuotedNewlines")
                     <*> (o .:? "sourceFormat")
                     <*> (o .:? "jsonExtension")
                     <*> (o .:? "useAvroLogicalTypes")
                     <*> (o .:? "decimalTargetTypes" .!= mempty)
                     <*> (o .:? "schema")
                     <*> (o .:? "timePartitioning")
                     <*> (o .:? "quote")
                     <*> (o .:? "maxBadRecords")
                     <*> (o .:? "autodetect")
                     <*> (o .:? "hivePartitioningOptions")
                     <*> (o .:? "sourceUris" .!= mempty)
                     <*> (o .:? "encoding")
                     <*> (o .:? "destinationTableProperties")
                     <*> (o .:? "destinationEncryptionConfiguration")
                     <*> (o .:? "parquetOptions")
                     <*> (o .:? "fieldDelimiter")
                     <*> (o .:? "nullMarker"))

instance ToJSON JobConfigurationLoad where
        toJSON JobConfigurationLoad'{..}
          = object
              (catMaybes
                 [("skipLeadingRows" .=) <$> _jclSkipLeadingRows,
                  ("projectionFields" .=) <$> _jclProjectionFields,
                  ("destinationTable" .=) <$> _jclDestinationTable,
                  ("writeDisposition" .=) <$> _jclWriteDisPosition,
                  ("allowJaggedRows" .=) <$> _jclAllowJaggedRows,
                  ("clustering" .=) <$> _jclClustering,
                  ("rangePartitioning" .=) <$> _jclRangePartitioning,
                  ("schemaInline" .=) <$> _jclSchemaInline,
                  ("ignoreUnknownValues" .=) <$>
                    _jclIgnoreUnknownValues,
                  ("schemaUpdateOptions" .=) <$>
                    _jclSchemaUpdateOptions,
                  ("createDisposition" .=) <$> _jclCreateDisPosition,
                  ("schemaInlineFormat" .=) <$> _jclSchemaInlineFormat,
                  ("allowQuotedNewlines" .=) <$>
                    _jclAllowQuotedNewlines,
                  ("sourceFormat" .=) <$> _jclSourceFormat,
                  ("jsonExtension" .=) <$> _jclJSONExtension,
                  ("useAvroLogicalTypes" .=) <$>
                    _jclUseAvroLogicalTypes,
                  ("decimalTargetTypes" .=) <$> _jclDecimalTargetTypes,
                  ("schema" .=) <$> _jclSchema,
                  ("timePartitioning" .=) <$> _jclTimePartitioning,
                  ("quote" .=) <$> _jclQuote,
                  ("maxBadRecords" .=) <$> _jclMaxBadRecords,
                  ("autodetect" .=) <$> _jclAutodetect,
                  ("hivePartitioningOptions" .=) <$>
                    _jclHivePartitioningOptions,
                  ("sourceUris" .=) <$> _jclSourceURIs,
                  ("encoding" .=) <$> _jclEncoding,
                  ("destinationTableProperties" .=) <$>
                    _jclDestinationTableProperties,
                  ("destinationEncryptionConfiguration" .=) <$>
                    _jclDestinationEncryptionConfiguration,
                  ("parquetOptions" .=) <$> _jclParquetOptions,
                  ("fieldDelimiter" .=) <$> _jclFieldDelimiter,
                  ("nullMarker" .=) <$> _jclNullMarker])

-- | Evaluation metrics used by weighted-ALS models specified by
-- feedback_type=implicit.
--
-- /See:/ 'rankingMetrics' smart constructor.
data RankingMetrics =
  RankingMetrics'
    { _rMeanAveragePrecision :: !(Maybe (Textual Double))
    , _rAverageRank :: !(Maybe (Textual Double))
    , _rNormalizedDiscountedCumulativeGain :: !(Maybe (Textual Double))
    , _rMeanSquaredError :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RankingMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rMeanAveragePrecision'
--
-- * 'rAverageRank'
--
-- * 'rNormalizedDiscountedCumulativeGain'
--
-- * 'rMeanSquaredError'
rankingMetrics
    :: RankingMetrics
rankingMetrics =
  RankingMetrics'
    { _rMeanAveragePrecision = Nothing
    , _rAverageRank = Nothing
    , _rNormalizedDiscountedCumulativeGain = Nothing
    , _rMeanSquaredError = Nothing
    }


-- | Calculates a precision per user for all the items by ranking them and
-- then averages all the precisions across all the users.
rMeanAveragePrecision :: Lens' RankingMetrics (Maybe Double)
rMeanAveragePrecision
  = lens _rMeanAveragePrecision
      (\ s a -> s{_rMeanAveragePrecision = a})
      . mapping _Coerce

-- | Determines the goodness of a ranking by computing the percentile rank
-- from the predicted confidence and dividing it by the original rank.
rAverageRank :: Lens' RankingMetrics (Maybe Double)
rAverageRank
  = lens _rAverageRank (\ s a -> s{_rAverageRank = a})
      . mapping _Coerce

-- | A metric to determine the goodness of a ranking calculated from the
-- predicted confidence by comparing it to an ideal rank measured by the
-- original ratings.
rNormalizedDiscountedCumulativeGain :: Lens' RankingMetrics (Maybe Double)
rNormalizedDiscountedCumulativeGain
  = lens _rNormalizedDiscountedCumulativeGain
      (\ s a ->
         s{_rNormalizedDiscountedCumulativeGain = a})
      . mapping _Coerce

-- | Similar to the mean squared error computed in regression and explicit
-- recommendation models except instead of computing the rating directly,
-- the output from evaluate is computed against a preference which is 1 or
-- 0 depending on if the rating exists or not.
rMeanSquaredError :: Lens' RankingMetrics (Maybe Double)
rMeanSquaredError
  = lens _rMeanSquaredError
      (\ s a -> s{_rMeanSquaredError = a})
      . mapping _Coerce

instance FromJSON RankingMetrics where
        parseJSON
          = withObject "RankingMetrics"
              (\ o ->
                 RankingMetrics' <$>
                   (o .:? "meanAveragePrecision") <*>
                     (o .:? "averageRank")
                     <*> (o .:? "normalizedDiscountedCumulativeGain")
                     <*> (o .:? "meanSquaredError"))

instance ToJSON RankingMetrics where
        toJSON RankingMetrics'{..}
          = object
              (catMaybes
                 [("meanAveragePrecision" .=) <$>
                    _rMeanAveragePrecision,
                  ("averageRank" .=) <$> _rAverageRank,
                  ("normalizedDiscountedCumulativeGain" .=) <$>
                    _rNormalizedDiscountedCumulativeGain,
                  ("meanSquaredError" .=) <$> _rMeanSquaredError])

-- | Evaluation metrics of a model. These are either computed on all training
-- data or just the eval data based on whether eval data was used during
-- training. These are not present for imported models.
--
-- /See:/ 'evaluationMetrics' smart constructor.
data EvaluationMetrics =
  EvaluationMetrics'
    { _emClusteringMetrics :: !(Maybe ClusteringMetrics)
    , _emRegressionMetrics :: !(Maybe RegressionMetrics)
    , _emBinaryClassificationMetrics :: !(Maybe BinaryClassificationMetrics)
    , _emMultiClassClassificationMetrics :: !(Maybe MultiClassClassificationMetrics)
    , _emRankingMetrics :: !(Maybe RankingMetrics)
    , _emArimaForecastingMetrics :: !(Maybe ArimaForecastingMetrics)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EvaluationMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'emClusteringMetrics'
--
-- * 'emRegressionMetrics'
--
-- * 'emBinaryClassificationMetrics'
--
-- * 'emMultiClassClassificationMetrics'
--
-- * 'emRankingMetrics'
--
-- * 'emArimaForecastingMetrics'
evaluationMetrics
    :: EvaluationMetrics
evaluationMetrics =
  EvaluationMetrics'
    { _emClusteringMetrics = Nothing
    , _emRegressionMetrics = Nothing
    , _emBinaryClassificationMetrics = Nothing
    , _emMultiClassClassificationMetrics = Nothing
    , _emRankingMetrics = Nothing
    , _emArimaForecastingMetrics = Nothing
    }


-- | Populated for clustering models.
emClusteringMetrics :: Lens' EvaluationMetrics (Maybe ClusteringMetrics)
emClusteringMetrics
  = lens _emClusteringMetrics
      (\ s a -> s{_emClusteringMetrics = a})

-- | Populated for regression models and explicit feedback type matrix
-- factorization models.
emRegressionMetrics :: Lens' EvaluationMetrics (Maybe RegressionMetrics)
emRegressionMetrics
  = lens _emRegressionMetrics
      (\ s a -> s{_emRegressionMetrics = a})

-- | Populated for binary classification\/classifier models.
emBinaryClassificationMetrics :: Lens' EvaluationMetrics (Maybe BinaryClassificationMetrics)
emBinaryClassificationMetrics
  = lens _emBinaryClassificationMetrics
      (\ s a -> s{_emBinaryClassificationMetrics = a})

-- | Populated for multi-class classification\/classifier models.
emMultiClassClassificationMetrics :: Lens' EvaluationMetrics (Maybe MultiClassClassificationMetrics)
emMultiClassClassificationMetrics
  = lens _emMultiClassClassificationMetrics
      (\ s a -> s{_emMultiClassClassificationMetrics = a})

-- | Populated for implicit feedback type matrix factorization models.
emRankingMetrics :: Lens' EvaluationMetrics (Maybe RankingMetrics)
emRankingMetrics
  = lens _emRankingMetrics
      (\ s a -> s{_emRankingMetrics = a})

-- | Populated for ARIMA models.
emArimaForecastingMetrics :: Lens' EvaluationMetrics (Maybe ArimaForecastingMetrics)
emArimaForecastingMetrics
  = lens _emArimaForecastingMetrics
      (\ s a -> s{_emArimaForecastingMetrics = a})

instance FromJSON EvaluationMetrics where
        parseJSON
          = withObject "EvaluationMetrics"
              (\ o ->
                 EvaluationMetrics' <$>
                   (o .:? "clusteringMetrics") <*>
                     (o .:? "regressionMetrics")
                     <*> (o .:? "binaryClassificationMetrics")
                     <*> (o .:? "multiClassClassificationMetrics")
                     <*> (o .:? "rankingMetrics")
                     <*> (o .:? "arimaForecastingMetrics"))

instance ToJSON EvaluationMetrics where
        toJSON EvaluationMetrics'{..}
          = object
              (catMaybes
                 [("clusteringMetrics" .=) <$> _emClusteringMetrics,
                  ("regressionMetrics" .=) <$> _emRegressionMetrics,
                  ("binaryClassificationMetrics" .=) <$>
                    _emBinaryClassificationMetrics,
                  ("multiClassClassificationMetrics" .=) <$>
                    _emMultiClassClassificationMetrics,
                  ("rankingMetrics" .=) <$> _emRankingMetrics,
                  ("arimaForecastingMetrics" .=) <$>
                    _emArimaForecastingMetrics])

--
-- /See:/ 'dataSetReference' smart constructor.
data DataSetReference =
  DataSetReference'
    { _dsrDataSetId :: !(Maybe Text)
    , _dsrProjectId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrDataSetId'
--
-- * 'dsrProjectId'
dataSetReference
    :: DataSetReference
dataSetReference =
  DataSetReference' {_dsrDataSetId = Nothing, _dsrProjectId = Nothing}


-- | [Required] A unique ID for this dataset, without the project name. The
-- ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores
-- (_). The maximum length is 1,024 characters.
dsrDataSetId :: Lens' DataSetReference (Maybe Text)
dsrDataSetId
  = lens _dsrDataSetId (\ s a -> s{_dsrDataSetId = a})

-- | [Optional] The ID of the project containing this dataset.
dsrProjectId :: Lens' DataSetReference (Maybe Text)
dsrProjectId
  = lens _dsrProjectId (\ s a -> s{_dsrProjectId = a})

instance FromJSON DataSetReference where
        parseJSON
          = withObject "DataSetReference"
              (\ o ->
                 DataSetReference' <$>
                   (o .:? "datasetId") <*> (o .:? "projectId"))

instance ToJSON DataSetReference where
        toJSON DataSetReference'{..}
          = object
              (catMaybes
                 [("datasetId" .=) <$> _dsrDataSetId,
                  ("projectId" .=) <$> _dsrProjectId])

--
-- /See:/ 'materializedViewDefinition' smart constructor.
data MaterializedViewDefinition =
  MaterializedViewDefinition'
    { _mvdEnableRefresh :: !(Maybe Bool)
    , _mvdRefreshIntervalMs :: !(Maybe (Textual Int64))
    , _mvdQuery :: !(Maybe Text)
    , _mvdLastRefreshTime :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MaterializedViewDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvdEnableRefresh'
--
-- * 'mvdRefreshIntervalMs'
--
-- * 'mvdQuery'
--
-- * 'mvdLastRefreshTime'
materializedViewDefinition
    :: MaterializedViewDefinition
materializedViewDefinition =
  MaterializedViewDefinition'
    { _mvdEnableRefresh = Nothing
    , _mvdRefreshIntervalMs = Nothing
    , _mvdQuery = Nothing
    , _mvdLastRefreshTime = Nothing
    }


-- | [Optional] [TrustedTester] Enable automatic refresh of the materialized
-- view when the base table is updated. The default value is \"true\".
mvdEnableRefresh :: Lens' MaterializedViewDefinition (Maybe Bool)
mvdEnableRefresh
  = lens _mvdEnableRefresh
      (\ s a -> s{_mvdEnableRefresh = a})

-- | [Optional] [TrustedTester] The maximum frequency at which this
-- materialized view will be refreshed. The default value is \"1800000\"
-- (30 minutes).
mvdRefreshIntervalMs :: Lens' MaterializedViewDefinition (Maybe Int64)
mvdRefreshIntervalMs
  = lens _mvdRefreshIntervalMs
      (\ s a -> s{_mvdRefreshIntervalMs = a})
      . mapping _Coerce

-- | [Required] A query whose result is persisted.
mvdQuery :: Lens' MaterializedViewDefinition (Maybe Text)
mvdQuery = lens _mvdQuery (\ s a -> s{_mvdQuery = a})

-- | [Output-only] [TrustedTester] The time when this materialized view was
-- last modified, in milliseconds since the epoch.
mvdLastRefreshTime :: Lens' MaterializedViewDefinition (Maybe Int64)
mvdLastRefreshTime
  = lens _mvdLastRefreshTime
      (\ s a -> s{_mvdLastRefreshTime = a})
      . mapping _Coerce

instance FromJSON MaterializedViewDefinition where
        parseJSON
          = withObject "MaterializedViewDefinition"
              (\ o ->
                 MaterializedViewDefinition' <$>
                   (o .:? "enableRefresh") <*>
                     (o .:? "refreshIntervalMs")
                     <*> (o .:? "query")
                     <*> (o .:? "lastRefreshTime"))

instance ToJSON MaterializedViewDefinition where
        toJSON MaterializedViewDefinition'{..}
          = object
              (catMaybes
                 [("enableRefresh" .=) <$> _mvdEnableRefresh,
                  ("refreshIntervalMs" .=) <$> _mvdRefreshIntervalMs,
                  ("query" .=) <$> _mvdQuery,
                  ("lastRefreshTime" .=) <$> _mvdLastRefreshTime])

--
-- /See:/ 'tableDataInsertAllRequest' smart constructor.
data TableDataInsertAllRequest =
  TableDataInsertAllRequest'
    { _tdiarKind :: !Text
    , _tdiarIgnoreUnknownValues :: !(Maybe Bool)
    , _tdiarRows :: !(Maybe [TableDataInsertAllRequestRowsItem])
    , _tdiarTemplateSuffix :: !(Maybe Text)
    , _tdiarSkipInvalidRows :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableDataInsertAllRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiarKind'
--
-- * 'tdiarIgnoreUnknownValues'
--
-- * 'tdiarRows'
--
-- * 'tdiarTemplateSuffix'
--
-- * 'tdiarSkipInvalidRows'
tableDataInsertAllRequest
    :: TableDataInsertAllRequest
tableDataInsertAllRequest =
  TableDataInsertAllRequest'
    { _tdiarKind = "bigquery#tableDataInsertAllRequest"
    , _tdiarIgnoreUnknownValues = Nothing
    , _tdiarRows = Nothing
    , _tdiarTemplateSuffix = Nothing
    , _tdiarSkipInvalidRows = Nothing
    }


-- | The resource type of the response.
tdiarKind :: Lens' TableDataInsertAllRequest Text
tdiarKind
  = lens _tdiarKind (\ s a -> s{_tdiarKind = a})

-- | [Optional] Accept rows that contain values that do not match the schema.
-- The unknown values are ignored. Default is false, which treats unknown
-- values as errors.
tdiarIgnoreUnknownValues :: Lens' TableDataInsertAllRequest (Maybe Bool)
tdiarIgnoreUnknownValues
  = lens _tdiarIgnoreUnknownValues
      (\ s a -> s{_tdiarIgnoreUnknownValues = a})

-- | The rows to insert.
tdiarRows :: Lens' TableDataInsertAllRequest [TableDataInsertAllRequestRowsItem]
tdiarRows
  = lens _tdiarRows (\ s a -> s{_tdiarRows = a}) .
      _Default
      . _Coerce

-- | If specified, treats the destination table as a base template, and
-- inserts the rows into an instance table named
-- \"{destination}{templateSuffix}\". BigQuery will manage creation of the
-- instance table, using the schema of the base template table. See
-- https:\/\/cloud.google.com\/bigquery\/streaming-data-into-bigquery#template-tables
-- for considerations when working with templates tables.
tdiarTemplateSuffix :: Lens' TableDataInsertAllRequest (Maybe Text)
tdiarTemplateSuffix
  = lens _tdiarTemplateSuffix
      (\ s a -> s{_tdiarTemplateSuffix = a})

-- | [Optional] Insert all valid rows of a request, even if invalid rows
-- exist. The default value is false, which causes the entire request to
-- fail if any invalid rows exist.
tdiarSkipInvalidRows :: Lens' TableDataInsertAllRequest (Maybe Bool)
tdiarSkipInvalidRows
  = lens _tdiarSkipInvalidRows
      (\ s a -> s{_tdiarSkipInvalidRows = a})

instance FromJSON TableDataInsertAllRequest where
        parseJSON
          = withObject "TableDataInsertAllRequest"
              (\ o ->
                 TableDataInsertAllRequest' <$>
                   (o .:? "kind" .!=
                      "bigquery#tableDataInsertAllRequest")
                     <*> (o .:? "ignoreUnknownValues")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "templateSuffix")
                     <*> (o .:? "skipInvalidRows"))

instance ToJSON TableDataInsertAllRequest where
        toJSON TableDataInsertAllRequest'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tdiarKind),
                  ("ignoreUnknownValues" .=) <$>
                    _tdiarIgnoreUnknownValues,
                  ("rows" .=) <$> _tdiarRows,
                  ("templateSuffix" .=) <$> _tdiarTemplateSuffix,
                  ("skipInvalidRows" .=) <$> _tdiarSkipInvalidRows])

--
-- /See:/ 'getServiceAccountResponse' smart constructor.
data GetServiceAccountResponse =
  GetServiceAccountResponse'
    { _gsarEmail :: !(Maybe Text)
    , _gsarKind :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetServiceAccountResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsarEmail'
--
-- * 'gsarKind'
getServiceAccountResponse
    :: GetServiceAccountResponse
getServiceAccountResponse =
  GetServiceAccountResponse'
    {_gsarEmail = Nothing, _gsarKind = "bigquery#getServiceAccountResponse"}


-- | The service account email address.
gsarEmail :: Lens' GetServiceAccountResponse (Maybe Text)
gsarEmail
  = lens _gsarEmail (\ s a -> s{_gsarEmail = a})

-- | The resource type of the response.
gsarKind :: Lens' GetServiceAccountResponse Text
gsarKind = lens _gsarKind (\ s a -> s{_gsarKind = a})

instance FromJSON GetServiceAccountResponse where
        parseJSON
          = withObject "GetServiceAccountResponse"
              (\ o ->
                 GetServiceAccountResponse' <$>
                   (o .:? "email") <*>
                     (o .:? "kind" .!=
                        "bigquery#getServiceAccountResponse"))

instance ToJSON GetServiceAccountResponse where
        toJSON GetServiceAccountResponse'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gsarEmail,
                  Just ("kind" .= _gsarKind)])

--
-- /See:/ 'projectListProjectsItem' smart constructor.
data ProjectListProjectsItem =
  ProjectListProjectsItem'
    { _plpiFriendlyName :: !(Maybe Text)
    , _plpiKind :: !Text
    , _plpiProjectReference :: !(Maybe ProjectReference)
    , _plpiId :: !(Maybe Text)
    , _plpiNumericId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectListProjectsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plpiFriendlyName'
--
-- * 'plpiKind'
--
-- * 'plpiProjectReference'
--
-- * 'plpiId'
--
-- * 'plpiNumericId'
projectListProjectsItem
    :: ProjectListProjectsItem
projectListProjectsItem =
  ProjectListProjectsItem'
    { _plpiFriendlyName = Nothing
    , _plpiKind = "bigquery#project"
    , _plpiProjectReference = Nothing
    , _plpiId = Nothing
    , _plpiNumericId = Nothing
    }


-- | A descriptive name for this project.
plpiFriendlyName :: Lens' ProjectListProjectsItem (Maybe Text)
plpiFriendlyName
  = lens _plpiFriendlyName
      (\ s a -> s{_plpiFriendlyName = a})

-- | The resource type.
plpiKind :: Lens' ProjectListProjectsItem Text
plpiKind = lens _plpiKind (\ s a -> s{_plpiKind = a})

-- | A unique reference to this project.
plpiProjectReference :: Lens' ProjectListProjectsItem (Maybe ProjectReference)
plpiProjectReference
  = lens _plpiProjectReference
      (\ s a -> s{_plpiProjectReference = a})

-- | An opaque ID of this project.
plpiId :: Lens' ProjectListProjectsItem (Maybe Text)
plpiId = lens _plpiId (\ s a -> s{_plpiId = a})

-- | The numeric ID of this project.
plpiNumericId :: Lens' ProjectListProjectsItem (Maybe Word64)
plpiNumericId
  = lens _plpiNumericId
      (\ s a -> s{_plpiNumericId = a})
      . mapping _Coerce

instance FromJSON ProjectListProjectsItem where
        parseJSON
          = withObject "ProjectListProjectsItem"
              (\ o ->
                 ProjectListProjectsItem' <$>
                   (o .:? "friendlyName") <*>
                     (o .:? "kind" .!= "bigquery#project")
                     <*> (o .:? "projectReference")
                     <*> (o .:? "id")
                     <*> (o .:? "numericId"))

instance ToJSON ProjectListProjectsItem where
        toJSON ProjectListProjectsItem'{..}
          = object
              (catMaybes
                 [("friendlyName" .=) <$> _plpiFriendlyName,
                  Just ("kind" .= _plpiKind),
                  ("projectReference" .=) <$> _plpiProjectReference,
                  ("id" .=) <$> _plpiId,
                  ("numericId" .=) <$> _plpiNumericId])

--
-- /See:/ 'bqmlIterationResult' smart constructor.
data BqmlIterationResult =
  BqmlIterationResult'
    { _birDurationMs :: !(Maybe (Textual Int64))
    , _birLearnRate :: !(Maybe (Textual Double))
    , _birEvalLoss :: !(Maybe (Textual Double))
    , _birTrainingLoss :: !(Maybe (Textual Double))
    , _birIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BqmlIterationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'birDurationMs'
--
-- * 'birLearnRate'
--
-- * 'birEvalLoss'
--
-- * 'birTrainingLoss'
--
-- * 'birIndex'
bqmlIterationResult
    :: BqmlIterationResult
bqmlIterationResult =
  BqmlIterationResult'
    { _birDurationMs = Nothing
    , _birLearnRate = Nothing
    , _birEvalLoss = Nothing
    , _birTrainingLoss = Nothing
    , _birIndex = Nothing
    }


-- | [Output-only, Beta] Time taken to run the training iteration in
-- milliseconds.
birDurationMs :: Lens' BqmlIterationResult (Maybe Int64)
birDurationMs
  = lens _birDurationMs
      (\ s a -> s{_birDurationMs = a})
      . mapping _Coerce

-- | [Output-only, Beta] Learning rate used for this iteration, it varies for
-- different training iterations if learn_rate_strategy option is not
-- constant.
birLearnRate :: Lens' BqmlIterationResult (Maybe Double)
birLearnRate
  = lens _birLearnRate (\ s a -> s{_birLearnRate = a})
      . mapping _Coerce

-- | [Output-only, Beta] Eval loss computed on the eval data at the end of
-- the iteration. The eval loss is used for early stopping to avoid
-- overfitting. No eval loss if eval_split_method option is specified as
-- no_split or auto_split with input data size less than 500 rows.
birEvalLoss :: Lens' BqmlIterationResult (Maybe Double)
birEvalLoss
  = lens _birEvalLoss (\ s a -> s{_birEvalLoss = a}) .
      mapping _Coerce

-- | [Output-only, Beta] Training loss computed on the training data at the
-- end of the iteration. The training loss function is defined by model
-- type.
birTrainingLoss :: Lens' BqmlIterationResult (Maybe Double)
birTrainingLoss
  = lens _birTrainingLoss
      (\ s a -> s{_birTrainingLoss = a})
      . mapping _Coerce

-- | [Output-only, Beta] Index of the ML training iteration, starting from
-- zero for each training run.
birIndex :: Lens' BqmlIterationResult (Maybe Int32)
birIndex
  = lens _birIndex (\ s a -> s{_birIndex = a}) .
      mapping _Coerce

instance FromJSON BqmlIterationResult where
        parseJSON
          = withObject "BqmlIterationResult"
              (\ o ->
                 BqmlIterationResult' <$>
                   (o .:? "durationMs") <*> (o .:? "learnRate") <*>
                     (o .:? "evalLoss")
                     <*> (o .:? "trainingLoss")
                     <*> (o .:? "index"))

instance ToJSON BqmlIterationResult where
        toJSON BqmlIterationResult'{..}
          = object
              (catMaybes
                 [("durationMs" .=) <$> _birDurationMs,
                  ("learnRate" .=) <$> _birLearnRate,
                  ("evalLoss" .=) <$> _birEvalLoss,
                  ("trainingLoss" .=) <$> _birTrainingLoss,
                  ("index" .=) <$> _birIndex])

--
-- /See:/ 'bigtableColumn' smart constructor.
data BigtableColumn =
  BigtableColumn'
    { _bcQualifierEncoded :: !(Maybe Bytes)
    , _bcFieldName :: !(Maybe Text)
    , _bcQualifierString :: !(Maybe Text)
    , _bcOnlyReadLatest :: !(Maybe Bool)
    , _bcType :: !(Maybe Text)
    , _bcEncoding :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BigtableColumn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcQualifierEncoded'
--
-- * 'bcFieldName'
--
-- * 'bcQualifierString'
--
-- * 'bcOnlyReadLatest'
--
-- * 'bcType'
--
-- * 'bcEncoding'
bigtableColumn
    :: BigtableColumn
bigtableColumn =
  BigtableColumn'
    { _bcQualifierEncoded = Nothing
    , _bcFieldName = Nothing
    , _bcQualifierString = Nothing
    , _bcOnlyReadLatest = Nothing
    , _bcType = Nothing
    , _bcEncoding = Nothing
    }


-- | [Required] Qualifier of the column. Columns in the parent column family
-- that has this exact qualifier are exposed as . field. If the qualifier
-- is valid UTF-8 string, it can be specified in the qualifier_string
-- field. Otherwise, a base-64 encoded value must be set to
-- qualifier_encoded. The column field name is the same as the column
-- qualifier. However, if the qualifier is not a valid BigQuery field
-- identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier
-- must be provided as field_name.
bcQualifierEncoded :: Lens' BigtableColumn (Maybe ByteString)
bcQualifierEncoded
  = lens _bcQualifierEncoded
      (\ s a -> s{_bcQualifierEncoded = a})
      . mapping _Bytes

-- | [Optional] If the qualifier is not a valid BigQuery field identifier
-- i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be
-- provided as the column field name and is used as field name in queries.
bcFieldName :: Lens' BigtableColumn (Maybe Text)
bcFieldName
  = lens _bcFieldName (\ s a -> s{_bcFieldName = a})

bcQualifierString :: Lens' BigtableColumn (Maybe Text)
bcQualifierString
  = lens _bcQualifierString
      (\ s a -> s{_bcQualifierString = a})

-- | [Optional] If this is set, only the latest version of value in this
-- column are exposed. \'onlyReadLatest\' can also be set at the column
-- family level. However, the setting at this level takes precedence if
-- \'onlyReadLatest\' is set at both levels.
bcOnlyReadLatest :: Lens' BigtableColumn (Maybe Bool)
bcOnlyReadLatest
  = lens _bcOnlyReadLatest
      (\ s a -> s{_bcOnlyReadLatest = a})

-- | [Optional] The type to convert the value in cells of this column. The
-- values are expected to be encoded using HBase Bytes.toBytes function
-- when using the BINARY encoding value. Following BigQuery types are
-- allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default
-- type is BYTES. \'type\' can also be set at the column family level.
-- However, the setting at this level takes precedence if \'type\' is set
-- at both levels.
bcType :: Lens' BigtableColumn (Maybe Text)
bcType = lens _bcType (\ s a -> s{_bcType = a})

-- | [Optional] The encoding of the values when the type is not STRING.
-- Acceptable encoding values are: TEXT - indicates values are alphanumeric
-- text strings. BINARY - indicates values are encoded using HBase
-- Bytes.toBytes family of functions. \'encoding\' can also be set at the
-- column family level. However, the setting at this level takes precedence
-- if \'encoding\' is set at both levels.
bcEncoding :: Lens' BigtableColumn (Maybe Text)
bcEncoding
  = lens _bcEncoding (\ s a -> s{_bcEncoding = a})

instance FromJSON BigtableColumn where
        parseJSON
          = withObject "BigtableColumn"
              (\ o ->
                 BigtableColumn' <$>
                   (o .:? "qualifierEncoded") <*> (o .:? "fieldName")
                     <*> (o .:? "qualifierString")
                     <*> (o .:? "onlyReadLatest")
                     <*> (o .:? "type")
                     <*> (o .:? "encoding"))

instance ToJSON BigtableColumn where
        toJSON BigtableColumn'{..}
          = object
              (catMaybes
                 [("qualifierEncoded" .=) <$> _bcQualifierEncoded,
                  ("fieldName" .=) <$> _bcFieldName,
                  ("qualifierString" .=) <$> _bcQualifierString,
                  ("onlyReadLatest" .=) <$> _bcOnlyReadLatest,
                  ("type" .=) <$> _bcType,
                  ("encoding" .=) <$> _bcEncoding])

--
-- /See:/ 'streamingbuffer' smart constructor.
data Streamingbuffer =
  Streamingbuffer'
    { _sEstimatedBytes :: !(Maybe (Textual Word64))
    , _sOldestEntryTime :: !(Maybe (Textual Word64))
    , _sEstimatedRows :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Streamingbuffer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEstimatedBytes'
--
-- * 'sOldestEntryTime'
--
-- * 'sEstimatedRows'
streamingbuffer
    :: Streamingbuffer
streamingbuffer =
  Streamingbuffer'
    { _sEstimatedBytes = Nothing
    , _sOldestEntryTime = Nothing
    , _sEstimatedRows = Nothing
    }


-- | [Output-only] A lower-bound estimate of the number of bytes currently in
-- the streaming buffer.
sEstimatedBytes :: Lens' Streamingbuffer (Maybe Word64)
sEstimatedBytes
  = lens _sEstimatedBytes
      (\ s a -> s{_sEstimatedBytes = a})
      . mapping _Coerce

-- | [Output-only] Contains the timestamp of the oldest entry in the
-- streaming buffer, in milliseconds since the epoch, if the streaming
-- buffer is available.
sOldestEntryTime :: Lens' Streamingbuffer (Maybe Word64)
sOldestEntryTime
  = lens _sOldestEntryTime
      (\ s a -> s{_sOldestEntryTime = a})
      . mapping _Coerce

-- | [Output-only] A lower-bound estimate of the number of rows currently in
-- the streaming buffer.
sEstimatedRows :: Lens' Streamingbuffer (Maybe Word64)
sEstimatedRows
  = lens _sEstimatedRows
      (\ s a -> s{_sEstimatedRows = a})
      . mapping _Coerce

instance FromJSON Streamingbuffer where
        parseJSON
          = withObject "Streamingbuffer"
              (\ o ->
                 Streamingbuffer' <$>
                   (o .:? "estimatedBytes") <*>
                     (o .:? "oldestEntryTime")
                     <*> (o .:? "estimatedRows"))

instance ToJSON Streamingbuffer where
        toJSON Streamingbuffer'{..}
          = object
              (catMaybes
                 [("estimatedBytes" .=) <$> _sEstimatedBytes,
                  ("oldestEntryTime" .=) <$> _sOldestEntryTime,
                  ("estimatedRows" .=) <$> _sEstimatedRows])

--
-- /See:/ 'listRoutinesResponse' smart constructor.
data ListRoutinesResponse =
  ListRoutinesResponse'
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrRoutines :: !(Maybe [Routine])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRoutinesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrRoutines'
listRoutinesResponse
    :: ListRoutinesResponse
listRoutinesResponse =
  ListRoutinesResponse' {_lrrNextPageToken = Nothing, _lrrRoutines = Nothing}


-- | A token to request the next page of results.
lrrNextPageToken :: Lens' ListRoutinesResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | Routines in the requested dataset. Unless read_mask is set in the
-- request, only the following fields are populated: etag, project_id,
-- dataset_id, routine_id, routine_type, creation_time, last_modified_time,
-- and language.
lrrRoutines :: Lens' ListRoutinesResponse [Routine]
lrrRoutines
  = lens _lrrRoutines (\ s a -> s{_lrrRoutines = a}) .
      _Default
      . _Coerce

instance FromJSON ListRoutinesResponse where
        parseJSON
          = withObject "ListRoutinesResponse"
              (\ o ->
                 ListRoutinesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "routines" .!= mempty))

instance ToJSON ListRoutinesResponse where
        toJSON ListRoutinesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("routines" .=) <$> _lrrRoutines])

--
-- /See:/ 'tableRow' smart constructor.
newtype TableRow =
  TableRow'
    { _trF :: Maybe [TableCell]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trF'
tableRow
    :: TableRow
tableRow = TableRow' {_trF = Nothing}


-- | Represents a single row in the result set, consisting of one or more
-- fields.
trF :: Lens' TableRow [TableCell]
trF
  = lens _trF (\ s a -> s{_trF = a}) . _Default .
      _Coerce

instance FromJSON TableRow where
        parseJSON
          = withObject "TableRow"
              (\ o -> TableRow' <$> (o .:? "f" .!= mempty))

instance ToJSON TableRow where
        toJSON TableRow'{..}
          = object (catMaybes [("f" .=) <$> _trF])

--
-- /See:/ 'scriptStackFrame' smart constructor.
data ScriptStackFrame =
  ScriptStackFrame'
    { _ssfText :: !(Maybe Text)
    , _ssfProcedureId :: !(Maybe Text)
    , _ssfStartLine :: !(Maybe (Textual Int32))
    , _ssfEndLine :: !(Maybe (Textual Int32))
    , _ssfStartColumn :: !(Maybe (Textual Int32))
    , _ssfEndColumn :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScriptStackFrame' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssfText'
--
-- * 'ssfProcedureId'
--
-- * 'ssfStartLine'
--
-- * 'ssfEndLine'
--
-- * 'ssfStartColumn'
--
-- * 'ssfEndColumn'
scriptStackFrame
    :: ScriptStackFrame
scriptStackFrame =
  ScriptStackFrame'
    { _ssfText = Nothing
    , _ssfProcedureId = Nothing
    , _ssfStartLine = Nothing
    , _ssfEndLine = Nothing
    , _ssfStartColumn = Nothing
    , _ssfEndColumn = Nothing
    }


-- | [Output-only] Text of the current statement\/expression.
ssfText :: Lens' ScriptStackFrame (Maybe Text)
ssfText = lens _ssfText (\ s a -> s{_ssfText = a})

-- | [Output-only] Name of the active procedure, empty if in a top-level
-- script.
ssfProcedureId :: Lens' ScriptStackFrame (Maybe Text)
ssfProcedureId
  = lens _ssfProcedureId
      (\ s a -> s{_ssfProcedureId = a})

-- | [Output-only] One-based start line.
ssfStartLine :: Lens' ScriptStackFrame (Maybe Int32)
ssfStartLine
  = lens _ssfStartLine (\ s a -> s{_ssfStartLine = a})
      . mapping _Coerce

-- | [Output-only] One-based end line.
ssfEndLine :: Lens' ScriptStackFrame (Maybe Int32)
ssfEndLine
  = lens _ssfEndLine (\ s a -> s{_ssfEndLine = a}) .
      mapping _Coerce

-- | [Output-only] One-based start column.
ssfStartColumn :: Lens' ScriptStackFrame (Maybe Int32)
ssfStartColumn
  = lens _ssfStartColumn
      (\ s a -> s{_ssfStartColumn = a})
      . mapping _Coerce

-- | [Output-only] One-based end column.
ssfEndColumn :: Lens' ScriptStackFrame (Maybe Int32)
ssfEndColumn
  = lens _ssfEndColumn (\ s a -> s{_ssfEndColumn = a})
      . mapping _Coerce

instance FromJSON ScriptStackFrame where
        parseJSON
          = withObject "ScriptStackFrame"
              (\ o ->
                 ScriptStackFrame' <$>
                   (o .:? "text") <*> (o .:? "procedureId") <*>
                     (o .:? "startLine")
                     <*> (o .:? "endLine")
                     <*> (o .:? "startColumn")
                     <*> (o .:? "endColumn"))

instance ToJSON ScriptStackFrame where
        toJSON ScriptStackFrame'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _ssfText,
                  ("procedureId" .=) <$> _ssfProcedureId,
                  ("startLine" .=) <$> _ssfStartLine,
                  ("endLine" .=) <$> _ssfEndLine,
                  ("startColumn" .=) <$> _ssfStartColumn,
                  ("endColumn" .=) <$> _ssfEndColumn])

-- | A single entry in the confusion matrix.
--
-- /See:/ 'entry' smart constructor.
data Entry =
  Entry'
    { _ePredictedLabel :: !(Maybe Text)
    , _eItemCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Entry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ePredictedLabel'
--
-- * 'eItemCount'
entry
    :: Entry
entry = Entry' {_ePredictedLabel = Nothing, _eItemCount = Nothing}


-- | The predicted label. For confidence_threshold > 0, we will also add an
-- entry indicating the number of items under the confidence threshold.
ePredictedLabel :: Lens' Entry (Maybe Text)
ePredictedLabel
  = lens _ePredictedLabel
      (\ s a -> s{_ePredictedLabel = a})

-- | Number of items being predicted as this label.
eItemCount :: Lens' Entry (Maybe Int64)
eItemCount
  = lens _eItemCount (\ s a -> s{_eItemCount = a}) .
      mapping _Coerce

instance FromJSON Entry where
        parseJSON
          = withObject "Entry"
              (\ o ->
                 Entry' <$>
                   (o .:? "predictedLabel") <*> (o .:? "itemCount"))

instance ToJSON Entry where
        toJSON Entry'{..}
          = object
              (catMaybes
                 [("predictedLabel" .=) <$> _ePredictedLabel,
                  ("itemCount" .=) <$> _eItemCount])

--
-- /See:/ 'jobListJobsItem' smart constructor.
data JobListJobsItem =
  JobListJobsItem'
    { _jljiJobReference :: !(Maybe JobReference)
    , _jljiStatus :: !(Maybe JobStatus)
    , _jljiState :: !(Maybe Text)
    , _jljiUserEmail :: !(Maybe Text)
    , _jljiKind :: !Text
    , _jljiErrorResult :: !(Maybe ErrorProto)
    , _jljiId :: !(Maybe Text)
    , _jljiStatistics :: !(Maybe JobStatistics)
    , _jljiConfiguration :: !(Maybe JobConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobListJobsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jljiJobReference'
--
-- * 'jljiStatus'
--
-- * 'jljiState'
--
-- * 'jljiUserEmail'
--
-- * 'jljiKind'
--
-- * 'jljiErrorResult'
--
-- * 'jljiId'
--
-- * 'jljiStatistics'
--
-- * 'jljiConfiguration'
jobListJobsItem
    :: JobListJobsItem
jobListJobsItem =
  JobListJobsItem'
    { _jljiJobReference = Nothing
    , _jljiStatus = Nothing
    , _jljiState = Nothing
    , _jljiUserEmail = Nothing
    , _jljiKind = "bigquery#job"
    , _jljiErrorResult = Nothing
    , _jljiId = Nothing
    , _jljiStatistics = Nothing
    , _jljiConfiguration = Nothing
    }


-- | Job reference uniquely identifying the job.
jljiJobReference :: Lens' JobListJobsItem (Maybe JobReference)
jljiJobReference
  = lens _jljiJobReference
      (\ s a -> s{_jljiJobReference = a})

-- | [Full-projection-only] Describes the state of the job.
jljiStatus :: Lens' JobListJobsItem (Maybe JobStatus)
jljiStatus
  = lens _jljiStatus (\ s a -> s{_jljiStatus = a})

-- | Running state of the job. When the state is DONE, errorResult can be
-- checked to determine whether the job succeeded or failed.
jljiState :: Lens' JobListJobsItem (Maybe Text)
jljiState
  = lens _jljiState (\ s a -> s{_jljiState = a})

-- | [Full-projection-only] Email address of the user who ran the job.
jljiUserEmail :: Lens' JobListJobsItem (Maybe Text)
jljiUserEmail
  = lens _jljiUserEmail
      (\ s a -> s{_jljiUserEmail = a})

-- | The resource type.
jljiKind :: Lens' JobListJobsItem Text
jljiKind = lens _jljiKind (\ s a -> s{_jljiKind = a})

-- | A result object that will be present only if the job has failed.
jljiErrorResult :: Lens' JobListJobsItem (Maybe ErrorProto)
jljiErrorResult
  = lens _jljiErrorResult
      (\ s a -> s{_jljiErrorResult = a})

-- | Unique opaque ID of the job.
jljiId :: Lens' JobListJobsItem (Maybe Text)
jljiId = lens _jljiId (\ s a -> s{_jljiId = a})

-- | [Output-only] Information about the job, including starting time and
-- ending time of the job.
jljiStatistics :: Lens' JobListJobsItem (Maybe JobStatistics)
jljiStatistics
  = lens _jljiStatistics
      (\ s a -> s{_jljiStatistics = a})

-- | [Full-projection-only] Specifies the job configuration.
jljiConfiguration :: Lens' JobListJobsItem (Maybe JobConfiguration)
jljiConfiguration
  = lens _jljiConfiguration
      (\ s a -> s{_jljiConfiguration = a})

instance FromJSON JobListJobsItem where
        parseJSON
          = withObject "JobListJobsItem"
              (\ o ->
                 JobListJobsItem' <$>
                   (o .:? "jobReference") <*> (o .:? "status") <*>
                     (o .:? "state")
                     <*> (o .:? "user_email")
                     <*> (o .:? "kind" .!= "bigquery#job")
                     <*> (o .:? "errorResult")
                     <*> (o .:? "id")
                     <*> (o .:? "statistics")
                     <*> (o .:? "configuration"))

instance ToJSON JobListJobsItem where
        toJSON JobListJobsItem'{..}
          = object
              (catMaybes
                 [("jobReference" .=) <$> _jljiJobReference,
                  ("status" .=) <$> _jljiStatus,
                  ("state" .=) <$> _jljiState,
                  ("user_email" .=) <$> _jljiUserEmail,
                  Just ("kind" .= _jljiKind),
                  ("errorResult" .=) <$> _jljiErrorResult,
                  ("id" .=) <$> _jljiId,
                  ("statistics" .=) <$> _jljiStatistics,
                  ("configuration" .=) <$> _jljiConfiguration])

-- | (Auto-)arima fitting result. Wrap everything in ArimaResult for easier
-- refactoring if we want to use model-specific iteration results.
--
-- /See:/ 'arimaResult' smart constructor.
data ArimaResult =
  ArimaResult'
    { _arArimaModelInfo :: !(Maybe [ArimaModelInfo])
    , _arSeasonalPeriods :: !(Maybe [ArimaResultSeasonalPeriodsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArimaResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arArimaModelInfo'
--
-- * 'arSeasonalPeriods'
arimaResult
    :: ArimaResult
arimaResult =
  ArimaResult' {_arArimaModelInfo = Nothing, _arSeasonalPeriods = Nothing}


-- | This message is repeated because there are multiple arima models fitted
-- in auto-arima. For non-auto-arima model, its size is one.
arArimaModelInfo :: Lens' ArimaResult [ArimaModelInfo]
arArimaModelInfo
  = lens _arArimaModelInfo
      (\ s a -> s{_arArimaModelInfo = a})
      . _Default
      . _Coerce

-- | Seasonal periods. Repeated because multiple periods are supported for
-- one time series.
arSeasonalPeriods :: Lens' ArimaResult [ArimaResultSeasonalPeriodsItem]
arSeasonalPeriods
  = lens _arSeasonalPeriods
      (\ s a -> s{_arSeasonalPeriods = a})
      . _Default
      . _Coerce

instance FromJSON ArimaResult where
        parseJSON
          = withObject "ArimaResult"
              (\ o ->
                 ArimaResult' <$>
                   (o .:? "arimaModelInfo" .!= mempty) <*>
                     (o .:? "seasonalPeriods" .!= mempty))

instance ToJSON ArimaResult where
        toJSON ArimaResult'{..}
          = object
              (catMaybes
                 [("arimaModelInfo" .=) <$> _arArimaModelInfo,
                  ("seasonalPeriods" .=) <$> _arSeasonalPeriods])

-- | Model evaluation metrics for a single ARIMA forecasting model.
--
-- /See:/ 'arimaSingleModelForecastingMetrics' smart constructor.
data ArimaSingleModelForecastingMetrics =
  ArimaSingleModelForecastingMetrics'
    { _asmfmHasStepChanges :: !(Maybe Bool)
    , _asmfmHasSpikesAndDips :: !(Maybe Bool)
    , _asmfmSeasonalPeriods :: !(Maybe [ArimaSingleModelForecastingMetricsSeasonalPeriodsItem])
    , _asmfmNonSeasonalOrder :: !(Maybe ArimaOrder)
    , _asmfmHasDrift :: !(Maybe Bool)
    , _asmfmTimeSeriesIds :: !(Maybe [Text])
    , _asmfmHasHolidayEffect :: !(Maybe Bool)
    , _asmfmTimeSeriesId :: !(Maybe Text)
    , _asmfmArimaFittingMetrics :: !(Maybe ArimaFittingMetrics)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArimaSingleModelForecastingMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asmfmHasStepChanges'
--
-- * 'asmfmHasSpikesAndDips'
--
-- * 'asmfmSeasonalPeriods'
--
-- * 'asmfmNonSeasonalOrder'
--
-- * 'asmfmHasDrift'
--
-- * 'asmfmTimeSeriesIds'
--
-- * 'asmfmHasHolidayEffect'
--
-- * 'asmfmTimeSeriesId'
--
-- * 'asmfmArimaFittingMetrics'
arimaSingleModelForecastingMetrics
    :: ArimaSingleModelForecastingMetrics
arimaSingleModelForecastingMetrics =
  ArimaSingleModelForecastingMetrics'
    { _asmfmHasStepChanges = Nothing
    , _asmfmHasSpikesAndDips = Nothing
    , _asmfmSeasonalPeriods = Nothing
    , _asmfmNonSeasonalOrder = Nothing
    , _asmfmHasDrift = Nothing
    , _asmfmTimeSeriesIds = Nothing
    , _asmfmHasHolidayEffect = Nothing
    , _asmfmTimeSeriesId = Nothing
    , _asmfmArimaFittingMetrics = Nothing
    }


-- | If true, step_changes is a part of time series decomposition result.
asmfmHasStepChanges :: Lens' ArimaSingleModelForecastingMetrics (Maybe Bool)
asmfmHasStepChanges
  = lens _asmfmHasStepChanges
      (\ s a -> s{_asmfmHasStepChanges = a})

-- | If true, spikes_and_dips is a part of time series decomposition result.
asmfmHasSpikesAndDips :: Lens' ArimaSingleModelForecastingMetrics (Maybe Bool)
asmfmHasSpikesAndDips
  = lens _asmfmHasSpikesAndDips
      (\ s a -> s{_asmfmHasSpikesAndDips = a})

-- | Seasonal periods. Repeated because multiple periods are supported for
-- one time series.
asmfmSeasonalPeriods :: Lens' ArimaSingleModelForecastingMetrics [ArimaSingleModelForecastingMetricsSeasonalPeriodsItem]
asmfmSeasonalPeriods
  = lens _asmfmSeasonalPeriods
      (\ s a -> s{_asmfmSeasonalPeriods = a})
      . _Default
      . _Coerce

-- | Non-seasonal order.
asmfmNonSeasonalOrder :: Lens' ArimaSingleModelForecastingMetrics (Maybe ArimaOrder)
asmfmNonSeasonalOrder
  = lens _asmfmNonSeasonalOrder
      (\ s a -> s{_asmfmNonSeasonalOrder = a})

-- | Is arima model fitted with drift or not. It is always false when d is
-- not 1.
asmfmHasDrift :: Lens' ArimaSingleModelForecastingMetrics (Maybe Bool)
asmfmHasDrift
  = lens _asmfmHasDrift
      (\ s a -> s{_asmfmHasDrift = a})

-- | The tuple of time_series_ids identifying this time series. It will be
-- one of the unique tuples of values present in the time_series_id_columns
-- specified during ARIMA model training. Only present when
-- time_series_id_columns training option was used and the order of values
-- here are same as the order of time_series_id_columns.
asmfmTimeSeriesIds :: Lens' ArimaSingleModelForecastingMetrics [Text]
asmfmTimeSeriesIds
  = lens _asmfmTimeSeriesIds
      (\ s a -> s{_asmfmTimeSeriesIds = a})
      . _Default
      . _Coerce

-- | If true, holiday_effect is a part of time series decomposition result.
asmfmHasHolidayEffect :: Lens' ArimaSingleModelForecastingMetrics (Maybe Bool)
asmfmHasHolidayEffect
  = lens _asmfmHasHolidayEffect
      (\ s a -> s{_asmfmHasHolidayEffect = a})

-- | The time_series_id value for this time series. It will be one of the
-- unique values from the time_series_id_column specified during ARIMA
-- model training. Only present when time_series_id_column training option
-- was used.
asmfmTimeSeriesId :: Lens' ArimaSingleModelForecastingMetrics (Maybe Text)
asmfmTimeSeriesId
  = lens _asmfmTimeSeriesId
      (\ s a -> s{_asmfmTimeSeriesId = a})

-- | Arima fitting metrics.
asmfmArimaFittingMetrics :: Lens' ArimaSingleModelForecastingMetrics (Maybe ArimaFittingMetrics)
asmfmArimaFittingMetrics
  = lens _asmfmArimaFittingMetrics
      (\ s a -> s{_asmfmArimaFittingMetrics = a})

instance FromJSON ArimaSingleModelForecastingMetrics
         where
        parseJSON
          = withObject "ArimaSingleModelForecastingMetrics"
              (\ o ->
                 ArimaSingleModelForecastingMetrics' <$>
                   (o .:? "hasStepChanges") <*>
                     (o .:? "hasSpikesAndDips")
                     <*> (o .:? "seasonalPeriods" .!= mempty)
                     <*> (o .:? "nonSeasonalOrder")
                     <*> (o .:? "hasDrift")
                     <*> (o .:? "timeSeriesIds" .!= mempty)
                     <*> (o .:? "hasHolidayEffect")
                     <*> (o .:? "timeSeriesId")
                     <*> (o .:? "arimaFittingMetrics"))

instance ToJSON ArimaSingleModelForecastingMetrics
         where
        toJSON ArimaSingleModelForecastingMetrics'{..}
          = object
              (catMaybes
                 [("hasStepChanges" .=) <$> _asmfmHasStepChanges,
                  ("hasSpikesAndDips" .=) <$> _asmfmHasSpikesAndDips,
                  ("seasonalPeriods" .=) <$> _asmfmSeasonalPeriods,
                  ("nonSeasonalOrder" .=) <$> _asmfmNonSeasonalOrder,
                  ("hasDrift" .=) <$> _asmfmHasDrift,
                  ("timeSeriesIds" .=) <$> _asmfmTimeSeriesIds,
                  ("hasHolidayEffect" .=) <$> _asmfmHasHolidayEffect,
                  ("timeSeriesId" .=) <$> _asmfmTimeSeriesId,
                  ("arimaFittingMetrics" .=) <$>
                    _asmfmArimaFittingMetrics])

--
-- /See:/ 'timePartitioning' smart constructor.
data TimePartitioning =
  TimePartitioning'
    { _tpField :: !(Maybe Text)
    , _tpExpirationMs :: !(Maybe (Textual Int64))
    , _tpRequirePartitionFilter :: !(Maybe Bool)
    , _tpType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimePartitioning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpField'
--
-- * 'tpExpirationMs'
--
-- * 'tpRequirePartitionFilter'
--
-- * 'tpType'
timePartitioning
    :: TimePartitioning
timePartitioning =
  TimePartitioning'
    { _tpField = Nothing
    , _tpExpirationMs = Nothing
    , _tpRequirePartitionFilter = Nothing
    , _tpType = Nothing
    }


-- | [Beta] [Optional] If not set, the table is partitioned by pseudo column,
-- referenced via either \'_PARTITIONTIME\' as TIMESTAMP type, or
-- \'_PARTITIONDATE\' as DATE type. If field is specified, the table is
-- instead partitioned by this field. The field must be a top-level
-- TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
tpField :: Lens' TimePartitioning (Maybe Text)
tpField = lens _tpField (\ s a -> s{_tpField = a})

-- | [Optional] Number of milliseconds for which to keep the storage for
-- partitions in the table. The storage in a partition will have an
-- expiration time of its partition time plus this value.
tpExpirationMs :: Lens' TimePartitioning (Maybe Int64)
tpExpirationMs
  = lens _tpExpirationMs
      (\ s a -> s{_tpExpirationMs = a})
      . mapping _Coerce

tpRequirePartitionFilter :: Lens' TimePartitioning (Maybe Bool)
tpRequirePartitionFilter
  = lens _tpRequirePartitionFilter
      (\ s a -> s{_tpRequirePartitionFilter = a})

-- | [Required] The supported types are DAY, HOUR, MONTH, and YEAR, which
-- will generate one partition per day, hour, month, and year,
-- respectively. When the type is not specified, the default behavior is
-- DAY.
tpType :: Lens' TimePartitioning (Maybe Text)
tpType = lens _tpType (\ s a -> s{_tpType = a})

instance FromJSON TimePartitioning where
        parseJSON
          = withObject "TimePartitioning"
              (\ o ->
                 TimePartitioning' <$>
                   (o .:? "field") <*> (o .:? "expirationMs") <*>
                     (o .:? "requirePartitionFilter")
                     <*> (o .:? "type"))

instance ToJSON TimePartitioning where
        toJSON TimePartitioning'{..}
          = object
              (catMaybes
                 [("field" .=) <$> _tpField,
                  ("expirationMs" .=) <$> _tpExpirationMs,
                  ("requirePartitionFilter" .=) <$>
                    _tpRequirePartitionFilter,
                  ("type" .=) <$> _tpType])

-- | [Optional] The struct field values, in order of the struct type\'s
-- declaration.
--
-- /See:/ 'queryParameterValueStructValues' smart constructor.
newtype QueryParameterValueStructValues =
  QueryParameterValueStructValues'
    { _qpvsvAddtional :: HashMap Text QueryParameterValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryParameterValueStructValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qpvsvAddtional'
queryParameterValueStructValues
    :: HashMap Text QueryParameterValue -- ^ 'qpvsvAddtional'
    -> QueryParameterValueStructValues
queryParameterValueStructValues pQpvsvAddtional_ =
  QueryParameterValueStructValues'
    {_qpvsvAddtional = _Coerce # pQpvsvAddtional_}


qpvsvAddtional :: Lens' QueryParameterValueStructValues (HashMap Text QueryParameterValue)
qpvsvAddtional
  = lens _qpvsvAddtional
      (\ s a -> s{_qpvsvAddtional = a})
      . _Coerce

instance FromJSON QueryParameterValueStructValues
         where
        parseJSON
          = withObject "QueryParameterValueStructValues"
              (\ o ->
                 QueryParameterValueStructValues' <$>
                   (parseJSONObject o))

instance ToJSON QueryParameterValueStructValues where
        toJSON = toJSON . _qpvsvAddtional

-- | The labels associated with this dataset. You can use these to organize
-- and group your datasets. You can set this property when inserting or
-- updating a dataset. See Creating and Updating Dataset Labels for more
-- information.
--
-- /See:/ 'dataSetLabels' smart constructor.
newtype DataSetLabels =
  DataSetLabels'
    { _dslAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslAddtional'
dataSetLabels
    :: HashMap Text Text -- ^ 'dslAddtional'
    -> DataSetLabels
dataSetLabels pDslAddtional_ =
  DataSetLabels' {_dslAddtional = _Coerce # pDslAddtional_}


dslAddtional :: Lens' DataSetLabels (HashMap Text Text)
dslAddtional
  = lens _dslAddtional (\ s a -> s{_dslAddtional = a})
      . _Coerce

instance FromJSON DataSetLabels where
        parseJSON
          = withObject "DataSetLabels"
              (\ o -> DataSetLabels' <$> (parseJSONObject o))

instance ToJSON DataSetLabels where
        toJSON = toJSON . _dslAddtional

--
-- /See:/ 'model' smart constructor.
data Model =
  Model'
    { _mCreationTime :: !(Maybe (Textual Int64))
    , _mModelReference :: !(Maybe ModelReference)
    , _mBestTrialId :: !(Maybe (Textual Int64))
    , _mModelType :: !(Maybe ModelModelType)
    , _mEtag :: !(Maybe Text)
    , _mLocation :: !(Maybe Text)
    , _mFriendlyName :: !(Maybe Text)
    , _mLastModifiedTime :: !(Maybe (Textual Int64))
    , _mEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    , _mTrainingRuns :: !(Maybe [TrainingRun])
    , _mLabels :: !(Maybe ModelLabels)
    , _mLabelColumns :: !(Maybe [StandardSQLField])
    , _mExpirationTime :: !(Maybe (Textual Int64))
    , _mDescription :: !(Maybe Text)
    , _mFeatureColumns :: !(Maybe [StandardSQLField])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Model' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mCreationTime'
--
-- * 'mModelReference'
--
-- * 'mBestTrialId'
--
-- * 'mModelType'
--
-- * 'mEtag'
--
-- * 'mLocation'
--
-- * 'mFriendlyName'
--
-- * 'mLastModifiedTime'
--
-- * 'mEncryptionConfiguration'
--
-- * 'mTrainingRuns'
--
-- * 'mLabels'
--
-- * 'mLabelColumns'
--
-- * 'mExpirationTime'
--
-- * 'mDescription'
--
-- * 'mFeatureColumns'
model
    :: Model
model =
  Model'
    { _mCreationTime = Nothing
    , _mModelReference = Nothing
    , _mBestTrialId = Nothing
    , _mModelType = Nothing
    , _mEtag = Nothing
    , _mLocation = Nothing
    , _mFriendlyName = Nothing
    , _mLastModifiedTime = Nothing
    , _mEncryptionConfiguration = Nothing
    , _mTrainingRuns = Nothing
    , _mLabels = Nothing
    , _mLabelColumns = Nothing
    , _mExpirationTime = Nothing
    , _mDescription = Nothing
    , _mFeatureColumns = Nothing
    }


-- | Output only. The time when this model was created, in millisecs since
-- the epoch.
mCreationTime :: Lens' Model (Maybe Int64)
mCreationTime
  = lens _mCreationTime
      (\ s a -> s{_mCreationTime = a})
      . mapping _Coerce

-- | Required. Unique identifier for this model.
mModelReference :: Lens' Model (Maybe ModelReference)
mModelReference
  = lens _mModelReference
      (\ s a -> s{_mModelReference = a})

-- | The best trial_id across all training runs.
mBestTrialId :: Lens' Model (Maybe Int64)
mBestTrialId
  = lens _mBestTrialId (\ s a -> s{_mBestTrialId = a})
      . mapping _Coerce

-- | Output only. Type of the model resource.
mModelType :: Lens' Model (Maybe ModelModelType)
mModelType
  = lens _mModelType (\ s a -> s{_mModelType = a})

-- | Output only. A hash of this resource.
mEtag :: Lens' Model (Maybe Text)
mEtag = lens _mEtag (\ s a -> s{_mEtag = a})

-- | Output only. The geographic location where the model resides. This value
-- is inherited from the dataset.
mLocation :: Lens' Model (Maybe Text)
mLocation
  = lens _mLocation (\ s a -> s{_mLocation = a})

-- | Optional. A descriptive name for this model.
mFriendlyName :: Lens' Model (Maybe Text)
mFriendlyName
  = lens _mFriendlyName
      (\ s a -> s{_mFriendlyName = a})

-- | Output only. The time when this model was last modified, in millisecs
-- since the epoch.
mLastModifiedTime :: Lens' Model (Maybe Int64)
mLastModifiedTime
  = lens _mLastModifiedTime
      (\ s a -> s{_mLastModifiedTime = a})
      . mapping _Coerce

-- | Custom encryption configuration (e.g., Cloud KMS keys). This shows the
-- encryption configuration of the model data while stored in BigQuery
-- storage. This field can be used with PatchModel to update encryption key
-- for an already encrypted model.
mEncryptionConfiguration :: Lens' Model (Maybe EncryptionConfiguration)
mEncryptionConfiguration
  = lens _mEncryptionConfiguration
      (\ s a -> s{_mEncryptionConfiguration = a})

-- | Output only. Information for all training runs in increasing order of
-- start_time.
mTrainingRuns :: Lens' Model [TrainingRun]
mTrainingRuns
  = lens _mTrainingRuns
      (\ s a -> s{_mTrainingRuns = a})
      . _Default
      . _Coerce

-- | The labels associated with this model. You can use these to organize and
-- group your models. Label keys and values can be no longer than 63
-- characters, can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter and each label
-- in the list must have a different key.
mLabels :: Lens' Model (Maybe ModelLabels)
mLabels = lens _mLabels (\ s a -> s{_mLabels = a})

-- | Output only. Label columns that were used to train this model. The
-- output of the model will have a \"predicted_\" prefix to these columns.
mLabelColumns :: Lens' Model [StandardSQLField]
mLabelColumns
  = lens _mLabelColumns
      (\ s a -> s{_mLabelColumns = a})
      . _Default
      . _Coerce

-- | Optional. The time when this model expires, in milliseconds since the
-- epoch. If not present, the model will persist indefinitely. Expired
-- models will be deleted and their storage reclaimed. The
-- defaultTableExpirationMs property of the encapsulating dataset can be
-- used to set a default expirationTime on newly created models.
mExpirationTime :: Lens' Model (Maybe Int64)
mExpirationTime
  = lens _mExpirationTime
      (\ s a -> s{_mExpirationTime = a})
      . mapping _Coerce

-- | Optional. A user-friendly description of this model.
mDescription :: Lens' Model (Maybe Text)
mDescription
  = lens _mDescription (\ s a -> s{_mDescription = a})

-- | Output only. Input feature columns that were used to train this model.
mFeatureColumns :: Lens' Model [StandardSQLField]
mFeatureColumns
  = lens _mFeatureColumns
      (\ s a -> s{_mFeatureColumns = a})
      . _Default
      . _Coerce

instance FromJSON Model where
        parseJSON
          = withObject "Model"
              (\ o ->
                 Model' <$>
                   (o .:? "creationTime") <*> (o .:? "modelReference")
                     <*> (o .:? "bestTrialId")
                     <*> (o .:? "modelType")
                     <*> (o .:? "etag")
                     <*> (o .:? "location")
                     <*> (o .:? "friendlyName")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "encryptionConfiguration")
                     <*> (o .:? "trainingRuns" .!= mempty)
                     <*> (o .:? "labels")
                     <*> (o .:? "labelColumns" .!= mempty)
                     <*> (o .:? "expirationTime")
                     <*> (o .:? "description")
                     <*> (o .:? "featureColumns" .!= mempty))

instance ToJSON Model where
        toJSON Model'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _mCreationTime,
                  ("modelReference" .=) <$> _mModelReference,
                  ("bestTrialId" .=) <$> _mBestTrialId,
                  ("modelType" .=) <$> _mModelType,
                  ("etag" .=) <$> _mEtag,
                  ("location" .=) <$> _mLocation,
                  ("friendlyName" .=) <$> _mFriendlyName,
                  ("lastModifiedTime" .=) <$> _mLastModifiedTime,
                  ("encryptionConfiguration" .=) <$>
                    _mEncryptionConfiguration,
                  ("trainingRuns" .=) <$> _mTrainingRuns,
                  ("labels" .=) <$> _mLabels,
                  ("labelColumns" .=) <$> _mLabelColumns,
                  ("expirationTime" .=) <$> _mExpirationTime,
                  ("description" .=) <$> _mDescription,
                  ("featureColumns" .=) <$> _mFeatureColumns])

--
-- /See:/ 'jobConfiguration' smart constructor.
data JobConfiguration =
  JobConfiguration'
    { _jcJobType :: !(Maybe Text)
    , _jcCopy :: !(Maybe JobConfigurationTableCopy)
    , _jcLoad :: !(Maybe JobConfigurationLoad)
    , _jcQuery :: !(Maybe JobConfigurationQuery)
    , _jcJobTimeoutMs :: !(Maybe (Textual Int64))
    , _jcExtract :: !(Maybe JobConfigurationExtract)
    , _jcLabels :: !(Maybe JobConfigurationLabels)
    , _jcDryRun :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcJobType'
--
-- * 'jcCopy'
--
-- * 'jcLoad'
--
-- * 'jcQuery'
--
-- * 'jcJobTimeoutMs'
--
-- * 'jcExtract'
--
-- * 'jcLabels'
--
-- * 'jcDryRun'
jobConfiguration
    :: JobConfiguration
jobConfiguration =
  JobConfiguration'
    { _jcJobType = Nothing
    , _jcCopy = Nothing
    , _jcLoad = Nothing
    , _jcQuery = Nothing
    , _jcJobTimeoutMs = Nothing
    , _jcExtract = Nothing
    , _jcLabels = Nothing
    , _jcDryRun = Nothing
    }


-- | [Output-only] The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or
-- UNKNOWN.
jcJobType :: Lens' JobConfiguration (Maybe Text)
jcJobType
  = lens _jcJobType (\ s a -> s{_jcJobType = a})

-- | [Pick one] Copies a table.
jcCopy :: Lens' JobConfiguration (Maybe JobConfigurationTableCopy)
jcCopy = lens _jcCopy (\ s a -> s{_jcCopy = a})

-- | [Pick one] Configures a load job.
jcLoad :: Lens' JobConfiguration (Maybe JobConfigurationLoad)
jcLoad = lens _jcLoad (\ s a -> s{_jcLoad = a})

-- | [Pick one] Configures a query job.
jcQuery :: Lens' JobConfiguration (Maybe JobConfigurationQuery)
jcQuery = lens _jcQuery (\ s a -> s{_jcQuery = a})

-- | [Optional] Job timeout in milliseconds. If this time limit is exceeded,
-- BigQuery may attempt to terminate the job.
jcJobTimeoutMs :: Lens' JobConfiguration (Maybe Int64)
jcJobTimeoutMs
  = lens _jcJobTimeoutMs
      (\ s a -> s{_jcJobTimeoutMs = a})
      . mapping _Coerce

-- | [Pick one] Configures an extract job.
jcExtract :: Lens' JobConfiguration (Maybe JobConfigurationExtract)
jcExtract
  = lens _jcExtract (\ s a -> s{_jcExtract = a})

-- | The labels associated with this job. You can use these to organize and
-- group your jobs. Label keys and values can be no longer than 63
-- characters, can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter and each label
-- in the list must have a different key.
jcLabels :: Lens' JobConfiguration (Maybe JobConfigurationLabels)
jcLabels = lens _jcLabels (\ s a -> s{_jcLabels = a})

-- | [Optional] If set, don\'t actually run this job. A valid query will
-- return a mostly empty response with some processing statistics, while an
-- invalid query will return the same error it would if it wasn\'t a dry
-- run. Behavior of non-query jobs is undefined.
jcDryRun :: Lens' JobConfiguration (Maybe Bool)
jcDryRun = lens _jcDryRun (\ s a -> s{_jcDryRun = a})

instance FromJSON JobConfiguration where
        parseJSON
          = withObject "JobConfiguration"
              (\ o ->
                 JobConfiguration' <$>
                   (o .:? "jobType") <*> (o .:? "copy") <*>
                     (o .:? "load")
                     <*> (o .:? "query")
                     <*> (o .:? "jobTimeoutMs")
                     <*> (o .:? "extract")
                     <*> (o .:? "labels")
                     <*> (o .:? "dryRun"))

instance ToJSON JobConfiguration where
        toJSON JobConfiguration'{..}
          = object
              (catMaybes
                 [("jobType" .=) <$> _jcJobType,
                  ("copy" .=) <$> _jcCopy, ("load" .=) <$> _jcLoad,
                  ("query" .=) <$> _jcQuery,
                  ("jobTimeoutMs" .=) <$> _jcJobTimeoutMs,
                  ("extract" .=) <$> _jcExtract,
                  ("labels" .=) <$> _jcLabels,
                  ("dryRun" .=) <$> _jcDryRun])

--
-- /See:/ 'job' smart constructor.
data Job =
  Job'
    { _jJobReference :: !(Maybe JobReference)
    , _jStatus :: !(Maybe JobStatus)
    , _jEtag :: !(Maybe Text)
    , _jUserEmail :: !(Maybe Text)
    , _jKind :: !Text
    , _jSelfLink :: !(Maybe Text)
    , _jId :: !(Maybe Text)
    , _jStatistics :: !(Maybe JobStatistics)
    , _jConfiguration :: !(Maybe JobConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jJobReference'
--
-- * 'jStatus'
--
-- * 'jEtag'
--
-- * 'jUserEmail'
--
-- * 'jKind'
--
-- * 'jSelfLink'
--
-- * 'jId'
--
-- * 'jStatistics'
--
-- * 'jConfiguration'
job
    :: Job
job =
  Job'
    { _jJobReference = Nothing
    , _jStatus = Nothing
    , _jEtag = Nothing
    , _jUserEmail = Nothing
    , _jKind = "bigquery#job"
    , _jSelfLink = Nothing
    , _jId = Nothing
    , _jStatistics = Nothing
    , _jConfiguration = Nothing
    }


-- | [Optional] Reference describing the unique-per-user name of the job.
jJobReference :: Lens' Job (Maybe JobReference)
jJobReference
  = lens _jJobReference
      (\ s a -> s{_jJobReference = a})

-- | [Output-only] The status of this job. Examine this value when polling an
-- asynchronous job to see if the job is complete.
jStatus :: Lens' Job (Maybe JobStatus)
jStatus = lens _jStatus (\ s a -> s{_jStatus = a})

-- | [Output-only] A hash of this resource.
jEtag :: Lens' Job (Maybe Text)
jEtag = lens _jEtag (\ s a -> s{_jEtag = a})

-- | [Output-only] Email address of the user who ran the job.
jUserEmail :: Lens' Job (Maybe Text)
jUserEmail
  = lens _jUserEmail (\ s a -> s{_jUserEmail = a})

-- | [Output-only] The type of the resource.
jKind :: Lens' Job Text
jKind = lens _jKind (\ s a -> s{_jKind = a})

-- | [Output-only] A URL that can be used to access this resource again.
jSelfLink :: Lens' Job (Maybe Text)
jSelfLink
  = lens _jSelfLink (\ s a -> s{_jSelfLink = a})

-- | [Output-only] Opaque ID field of the job
jId :: Lens' Job (Maybe Text)
jId = lens _jId (\ s a -> s{_jId = a})

-- | [Output-only] Information about the job, including starting time and
-- ending time of the job.
jStatistics :: Lens' Job (Maybe JobStatistics)
jStatistics
  = lens _jStatistics (\ s a -> s{_jStatistics = a})

-- | [Required] Describes the job configuration.
jConfiguration :: Lens' Job (Maybe JobConfiguration)
jConfiguration
  = lens _jConfiguration
      (\ s a -> s{_jConfiguration = a})

instance FromJSON Job where
        parseJSON
          = withObject "Job"
              (\ o ->
                 Job' <$>
                   (o .:? "jobReference") <*> (o .:? "status") <*>
                     (o .:? "etag")
                     <*> (o .:? "user_email")
                     <*> (o .:? "kind" .!= "bigquery#job")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "statistics")
                     <*> (o .:? "configuration"))

instance ToJSON Job where
        toJSON Job'{..}
          = object
              (catMaybes
                 [("jobReference" .=) <$> _jJobReference,
                  ("status" .=) <$> _jStatus, ("etag" .=) <$> _jEtag,
                  ("user_email" .=) <$> _jUserEmail,
                  Just ("kind" .= _jKind),
                  ("selfLink" .=) <$> _jSelfLink, ("id" .=) <$> _jId,
                  ("statistics" .=) <$> _jStatistics,
                  ("configuration" .=) <$> _jConfiguration])

--
-- /See:/ 'encryptionConfiguration' smart constructor.
newtype EncryptionConfiguration =
  EncryptionConfiguration'
    { _ecKmsKeyName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EncryptionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecKmsKeyName'
encryptionConfiguration
    :: EncryptionConfiguration
encryptionConfiguration = EncryptionConfiguration' {_ecKmsKeyName = Nothing}


-- | [Optional] Describes the Cloud KMS encryption key that will be used to
-- protect destination BigQuery table. The BigQuery Service Account
-- associated with your project requires access to this encryption key.
ecKmsKeyName :: Lens' EncryptionConfiguration (Maybe Text)
ecKmsKeyName
  = lens _ecKmsKeyName (\ s a -> s{_ecKmsKeyName = a})

instance FromJSON EncryptionConfiguration where
        parseJSON
          = withObject "EncryptionConfiguration"
              (\ o ->
                 EncryptionConfiguration' <$> (o .:? "kmsKeyName"))

instance ToJSON EncryptionConfiguration where
        toJSON EncryptionConfiguration'{..}
          = object
              (catMaybes [("kmsKeyName" .=) <$> _ecKmsKeyName])

--
-- /See:/ 'tableDataInsertAllResponseInsertErrorsItem' smart constructor.
data TableDataInsertAllResponseInsertErrorsItem =
  TableDataInsertAllResponseInsertErrorsItem'
    { _tdiarieiErrors :: !(Maybe [ErrorProto])
    , _tdiarieiIndex :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableDataInsertAllResponseInsertErrorsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiarieiErrors'
--
-- * 'tdiarieiIndex'
tableDataInsertAllResponseInsertErrorsItem
    :: TableDataInsertAllResponseInsertErrorsItem
tableDataInsertAllResponseInsertErrorsItem =
  TableDataInsertAllResponseInsertErrorsItem'
    {_tdiarieiErrors = Nothing, _tdiarieiIndex = Nothing}


-- | Error information for the row indicated by the index property.
tdiarieiErrors :: Lens' TableDataInsertAllResponseInsertErrorsItem [ErrorProto]
tdiarieiErrors
  = lens _tdiarieiErrors
      (\ s a -> s{_tdiarieiErrors = a})
      . _Default
      . _Coerce

-- | The index of the row that error applies to.
tdiarieiIndex :: Lens' TableDataInsertAllResponseInsertErrorsItem (Maybe Word32)
tdiarieiIndex
  = lens _tdiarieiIndex
      (\ s a -> s{_tdiarieiIndex = a})
      . mapping _Coerce

instance FromJSON
           TableDataInsertAllResponseInsertErrorsItem
         where
        parseJSON
          = withObject
              "TableDataInsertAllResponseInsertErrorsItem"
              (\ o ->
                 TableDataInsertAllResponseInsertErrorsItem' <$>
                   (o .:? "errors" .!= mempty) <*> (o .:? "index"))

instance ToJSON
           TableDataInsertAllResponseInsertErrorsItem
         where
        toJSON
          TableDataInsertAllResponseInsertErrorsItem'{..}
          = object
              (catMaybes
                 [("errors" .=) <$> _tdiarieiErrors,
                  ("index" .=) <$> _tdiarieiIndex])

--
-- /See:/ 'dataSetAccessEntryTarget_typesItem' smart constructor.
newtype DataSetAccessEntryTarget_typesItem =
  DataSetAccessEntryTarget_typesItem'
    { _dsaetiTargetType :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetAccessEntryTarget_typesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaetiTargetType'
dataSetAccessEntryTarget_typesItem
    :: DataSetAccessEntryTarget_typesItem
dataSetAccessEntryTarget_typesItem =
  DataSetAccessEntryTarget_typesItem' {_dsaetiTargetType = Nothing}


-- | [Required] Which resources in the dataset this entry applies to.
-- Currently, only views are supported, but additional target types may be
-- added in the future. Possible values: VIEWS: This entry applies to all
-- views in the dataset.
dsaetiTargetType :: Lens' DataSetAccessEntryTarget_typesItem (Maybe Text)
dsaetiTargetType
  = lens _dsaetiTargetType
      (\ s a -> s{_dsaetiTargetType = a})

instance FromJSON DataSetAccessEntryTarget_typesItem
         where
        parseJSON
          = withObject "DataSetAccessEntryTargetTypesItem"
              (\ o ->
                 DataSetAccessEntryTarget_typesItem' <$>
                   (o .:? "targetType"))

instance ToJSON DataSetAccessEntryTarget_typesItem
         where
        toJSON DataSetAccessEntryTarget_typesItem'{..}
          = object
              (catMaybes [("targetType" .=) <$> _dsaetiTargetType])

--
-- /See:/ 'jobConfigurationExtract' smart constructor.
data JobConfigurationExtract =
  JobConfigurationExtract'
    { _jceDestinationFormat :: !(Maybe Text)
    , _jceSourceTable :: !(Maybe TableReference)
    , _jcePrintHeader :: !Bool
    , _jceCompression :: !(Maybe Text)
    , _jceUseAvroLogicalTypes :: !(Maybe Bool)
    , _jceDestinationURIs :: !(Maybe [Text])
    , _jceDestinationURI :: !(Maybe Text)
    , _jceSourceModel :: !(Maybe ModelReference)
    , _jceFieldDelimiter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobConfigurationExtract' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jceDestinationFormat'
--
-- * 'jceSourceTable'
--
-- * 'jcePrintHeader'
--
-- * 'jceCompression'
--
-- * 'jceUseAvroLogicalTypes'
--
-- * 'jceDestinationURIs'
--
-- * 'jceDestinationURI'
--
-- * 'jceSourceModel'
--
-- * 'jceFieldDelimiter'
jobConfigurationExtract
    :: JobConfigurationExtract
jobConfigurationExtract =
  JobConfigurationExtract'
    { _jceDestinationFormat = Nothing
    , _jceSourceTable = Nothing
    , _jcePrintHeader = True
    , _jceCompression = Nothing
    , _jceUseAvroLogicalTypes = Nothing
    , _jceDestinationURIs = Nothing
    , _jceDestinationURI = Nothing
    , _jceSourceModel = Nothing
    , _jceFieldDelimiter = Nothing
    }


-- | [Optional] The exported file format. Possible values include CSV,
-- NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL
-- or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV.
-- Tables with nested or repeated fields cannot be exported as CSV. The
-- default value for models is ML_TF_SAVED_MODEL.
jceDestinationFormat :: Lens' JobConfigurationExtract (Maybe Text)
jceDestinationFormat
  = lens _jceDestinationFormat
      (\ s a -> s{_jceDestinationFormat = a})

-- | A reference to the table being exported.
jceSourceTable :: Lens' JobConfigurationExtract (Maybe TableReference)
jceSourceTable
  = lens _jceSourceTable
      (\ s a -> s{_jceSourceTable = a})

-- | [Optional] Whether to print out a header row in the results. Default is
-- true. Not applicable when extracting models.
jcePrintHeader :: Lens' JobConfigurationExtract Bool
jcePrintHeader
  = lens _jcePrintHeader
      (\ s a -> s{_jcePrintHeader = a})

-- | [Optional] The compression type to use for exported files. Possible
-- values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is
-- NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable
-- when extracting models.
jceCompression :: Lens' JobConfigurationExtract (Maybe Text)
jceCompression
  = lens _jceCompression
      (\ s a -> s{_jceCompression = a})

-- | [Optional] If destinationFormat is set to \"AVRO\", this flag indicates
-- whether to enable extracting applicable column types (such as TIMESTAMP)
-- to their corresponding AVRO logical types (timestamp-micros), instead of
-- only using their raw types (avro-long). Not applicable when extracting
-- models.
jceUseAvroLogicalTypes :: Lens' JobConfigurationExtract (Maybe Bool)
jceUseAvroLogicalTypes
  = lens _jceUseAvroLogicalTypes
      (\ s a -> s{_jceUseAvroLogicalTypes = a})

-- | [Pick one] A list of fully-qualified Google Cloud Storage URIs where the
-- extracted table should be written.
jceDestinationURIs :: Lens' JobConfigurationExtract [Text]
jceDestinationURIs
  = lens _jceDestinationURIs
      (\ s a -> s{_jceDestinationURIs = a})
      . _Default
      . _Coerce

-- | [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI
-- as necessary. The fully-qualified Google Cloud Storage URI where the
-- extracted table should be written.
jceDestinationURI :: Lens' JobConfigurationExtract (Maybe Text)
jceDestinationURI
  = lens _jceDestinationURI
      (\ s a -> s{_jceDestinationURI = a})

-- | A reference to the model being exported.
jceSourceModel :: Lens' JobConfigurationExtract (Maybe ModelReference)
jceSourceModel
  = lens _jceSourceModel
      (\ s a -> s{_jceSourceModel = a})

-- | [Optional] Delimiter to use between fields in the exported data. Default
-- is \',\'. Not applicable when extracting models.
jceFieldDelimiter :: Lens' JobConfigurationExtract (Maybe Text)
jceFieldDelimiter
  = lens _jceFieldDelimiter
      (\ s a -> s{_jceFieldDelimiter = a})

instance FromJSON JobConfigurationExtract where
        parseJSON
          = withObject "JobConfigurationExtract"
              (\ o ->
                 JobConfigurationExtract' <$>
                   (o .:? "destinationFormat") <*> (o .:? "sourceTable")
                     <*> (o .:? "printHeader" .!= True)
                     <*> (o .:? "compression")
                     <*> (o .:? "useAvroLogicalTypes")
                     <*> (o .:? "destinationUris" .!= mempty)
                     <*> (o .:? "destinationUri")
                     <*> (o .:? "sourceModel")
                     <*> (o .:? "fieldDelimiter"))

instance ToJSON JobConfigurationExtract where
        toJSON JobConfigurationExtract'{..}
          = object
              (catMaybes
                 [("destinationFormat" .=) <$> _jceDestinationFormat,
                  ("sourceTable" .=) <$> _jceSourceTable,
                  Just ("printHeader" .= _jcePrintHeader),
                  ("compression" .=) <$> _jceCompression,
                  ("useAvroLogicalTypes" .=) <$>
                    _jceUseAvroLogicalTypes,
                  ("destinationUris" .=) <$> _jceDestinationURIs,
                  ("destinationUri" .=) <$> _jceDestinationURI,
                  ("sourceModel" .=) <$> _jceSourceModel,
                  ("fieldDelimiter" .=) <$> _jceFieldDelimiter])

--
-- /See:/ 'scriptStatistics' smart constructor.
data ScriptStatistics =
  ScriptStatistics'
    { _ssStackFrames :: !(Maybe [ScriptStackFrame])
    , _ssEvaluationKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ScriptStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssStackFrames'
--
-- * 'ssEvaluationKind'
scriptStatistics
    :: ScriptStatistics
scriptStatistics =
  ScriptStatistics' {_ssStackFrames = Nothing, _ssEvaluationKind = Nothing}


-- | Stack trace showing the line\/column\/procedure name of each frame on
-- the stack at the point where the current evaluation happened. The leaf
-- frame is first, the primary script is last. Never empty.
ssStackFrames :: Lens' ScriptStatistics [ScriptStackFrame]
ssStackFrames
  = lens _ssStackFrames
      (\ s a -> s{_ssStackFrames = a})
      . _Default
      . _Coerce

-- | [Output-only] Whether this child job was a statement or expression.
ssEvaluationKind :: Lens' ScriptStatistics (Maybe Text)
ssEvaluationKind
  = lens _ssEvaluationKind
      (\ s a -> s{_ssEvaluationKind = a})

instance FromJSON ScriptStatistics where
        parseJSON
          = withObject "ScriptStatistics"
              (\ o ->
                 ScriptStatistics' <$>
                   (o .:? "stackFrames" .!= mempty) <*>
                     (o .:? "evaluationKind"))

instance ToJSON ScriptStatistics where
        toJSON ScriptStatistics'{..}
          = object
              (catMaybes
                 [("stackFrames" .=) <$> _ssStackFrames,
                  ("evaluationKind" .=) <$> _ssEvaluationKind])

--
-- /See:/ 'dataSetAccessEntry' smart constructor.
data DataSetAccessEntry =
  DataSetAccessEntry'
    { _dsaeDataSet :: !(Maybe DataSetReference)
    , _dsaeTargetTypes :: !(Maybe [DataSetAccessEntryTarget_typesItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetAccessEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaeDataSet'
--
-- * 'dsaeTargetTypes'
dataSetAccessEntry
    :: DataSetAccessEntry
dataSetAccessEntry =
  DataSetAccessEntry' {_dsaeDataSet = Nothing, _dsaeTargetTypes = Nothing}


-- | [Required] The dataset this entry applies to.
dsaeDataSet :: Lens' DataSetAccessEntry (Maybe DataSetReference)
dsaeDataSet
  = lens _dsaeDataSet (\ s a -> s{_dsaeDataSet = a})

dsaeTargetTypes :: Lens' DataSetAccessEntry [DataSetAccessEntryTarget_typesItem]
dsaeTargetTypes
  = lens _dsaeTargetTypes
      (\ s a -> s{_dsaeTargetTypes = a})
      . _Default
      . _Coerce

instance FromJSON DataSetAccessEntry where
        parseJSON
          = withObject "DataSetAccessEntry"
              (\ o ->
                 DataSetAccessEntry' <$>
                   (o .:? "dataset") <*>
                     (o .:? "target_types" .!= mempty))

instance ToJSON DataSetAccessEntry where
        toJSON DataSetAccessEntry'{..}
          = object
              (catMaybes
                 [("dataset" .=) <$> _dsaeDataSet,
                  ("target_types" .=) <$> _dsaeTargetTypes])

--
-- /See:/ 'transactionInfo' smart constructor.
newtype TransactionInfo =
  TransactionInfo'
    { _tiTransactionId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransactionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiTransactionId'
transactionInfo
    :: TransactionInfo
transactionInfo = TransactionInfo' {_tiTransactionId = Nothing}


-- | [Output-only] \/\/ [Alpha] Id of the transaction.
tiTransactionId :: Lens' TransactionInfo (Maybe Text)
tiTransactionId
  = lens _tiTransactionId
      (\ s a -> s{_tiTransactionId = a})

instance FromJSON TransactionInfo where
        parseJSON
          = withObject "TransactionInfo"
              (\ o -> TransactionInfo' <$> (o .:? "transactionId"))

instance ToJSON TransactionInfo where
        toJSON TransactionInfo'{..}
          = object
              (catMaybes
                 [("transactionId" .=) <$> _tiTransactionId])

-- | A single row in the confusion matrix.
--
-- /See:/ 'row' smart constructor.
data Row =
  Row'
    { _rEntries :: !(Maybe [Entry])
    , _rActualLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Row' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEntries'
--
-- * 'rActualLabel'
row
    :: Row
row = Row' {_rEntries = Nothing, _rActualLabel = Nothing}


-- | Info describing predicted label distribution.
rEntries :: Lens' Row [Entry]
rEntries
  = lens _rEntries (\ s a -> s{_rEntries = a}) .
      _Default
      . _Coerce

-- | The original label of this row.
rActualLabel :: Lens' Row (Maybe Text)
rActualLabel
  = lens _rActualLabel (\ s a -> s{_rActualLabel = a})

instance FromJSON Row where
        parseJSON
          = withObject "Row"
              (\ o ->
                 Row' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "actualLabel"))

instance ToJSON Row where
        toJSON Row'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _rEntries,
                  ("actualLabel" .=) <$> _rActualLabel])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

--
-- /See:/ 'modelDefinition' smart constructor.
data ModelDefinition =
  ModelDefinition'
    { _mdModelOptions :: !(Maybe ModelDefinitionModelOptions)
    , _mdTrainingRuns :: !(Maybe [BqmlTrainingRun])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ModelDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdModelOptions'
--
-- * 'mdTrainingRuns'
modelDefinition
    :: ModelDefinition
modelDefinition =
  ModelDefinition' {_mdModelOptions = Nothing, _mdTrainingRuns = Nothing}


-- | [Output-only, Beta] Model options used for the first training run. These
-- options are immutable for subsequent training runs. Default values are
-- used for any options not specified in the input query.
mdModelOptions :: Lens' ModelDefinition (Maybe ModelDefinitionModelOptions)
mdModelOptions
  = lens _mdModelOptions
      (\ s a -> s{_mdModelOptions = a})

-- | [Output-only, Beta] Information about ml training runs, each training
-- run comprises of multiple iterations and there may be multiple training
-- runs for the model if warm start is used or if a user decides to
-- continue a previously cancelled query.
mdTrainingRuns :: Lens' ModelDefinition [BqmlTrainingRun]
mdTrainingRuns
  = lens _mdTrainingRuns
      (\ s a -> s{_mdTrainingRuns = a})
      . _Default
      . _Coerce

instance FromJSON ModelDefinition where
        parseJSON
          = withObject "ModelDefinition"
              (\ o ->
                 ModelDefinition' <$>
                   (o .:? "modelOptions") <*>
                     (o .:? "trainingRuns" .!= mempty))

instance ToJSON ModelDefinition where
        toJSON ModelDefinition'{..}
          = object
              (catMaybes
                 [("modelOptions" .=) <$> _mdModelOptions,
                  ("trainingRuns" .=) <$> _mdTrainingRuns])

-- | Model evaluation metrics for ARIMA forecasting models.
--
-- /See:/ 'arimaForecastingMetrics' smart constructor.
data ArimaForecastingMetrics =
  ArimaForecastingMetrics'
    { _afmSeasonalPeriods :: !(Maybe [ArimaForecastingMetricsSeasonalPeriodsItem])
    , _afmNonSeasonalOrder :: !(Maybe [ArimaOrder])
    , _afmHasDrift :: !(Maybe [Bool])
    , _afmArimaSingleModelForecastingMetrics :: !(Maybe [ArimaSingleModelForecastingMetrics])
    , _afmTimeSeriesId :: !(Maybe [Text])
    , _afmArimaFittingMetrics :: !(Maybe [ArimaFittingMetrics])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArimaForecastingMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afmSeasonalPeriods'
--
-- * 'afmNonSeasonalOrder'
--
-- * 'afmHasDrift'
--
-- * 'afmArimaSingleModelForecastingMetrics'
--
-- * 'afmTimeSeriesId'
--
-- * 'afmArimaFittingMetrics'
arimaForecastingMetrics
    :: ArimaForecastingMetrics
arimaForecastingMetrics =
  ArimaForecastingMetrics'
    { _afmSeasonalPeriods = Nothing
    , _afmNonSeasonalOrder = Nothing
    , _afmHasDrift = Nothing
    , _afmArimaSingleModelForecastingMetrics = Nothing
    , _afmTimeSeriesId = Nothing
    , _afmArimaFittingMetrics = Nothing
    }


-- | Seasonal periods. Repeated because multiple periods are supported for
-- one time series.
afmSeasonalPeriods :: Lens' ArimaForecastingMetrics [ArimaForecastingMetricsSeasonalPeriodsItem]
afmSeasonalPeriods
  = lens _afmSeasonalPeriods
      (\ s a -> s{_afmSeasonalPeriods = a})
      . _Default
      . _Coerce

-- | Non-seasonal order.
afmNonSeasonalOrder :: Lens' ArimaForecastingMetrics [ArimaOrder]
afmNonSeasonalOrder
  = lens _afmNonSeasonalOrder
      (\ s a -> s{_afmNonSeasonalOrder = a})
      . _Default
      . _Coerce

-- | Whether Arima model fitted with drift or not. It is always false when d
-- is not 1.
afmHasDrift :: Lens' ArimaForecastingMetrics [Bool]
afmHasDrift
  = lens _afmHasDrift (\ s a -> s{_afmHasDrift = a}) .
      _Default
      . _Coerce

-- | Repeated as there can be many metric sets (one for each model) in
-- auto-arima and the large-scale case.
afmArimaSingleModelForecastingMetrics :: Lens' ArimaForecastingMetrics [ArimaSingleModelForecastingMetrics]
afmArimaSingleModelForecastingMetrics
  = lens _afmArimaSingleModelForecastingMetrics
      (\ s a ->
         s{_afmArimaSingleModelForecastingMetrics = a})
      . _Default
      . _Coerce

-- | Id to differentiate different time series for the large-scale case.
afmTimeSeriesId :: Lens' ArimaForecastingMetrics [Text]
afmTimeSeriesId
  = lens _afmTimeSeriesId
      (\ s a -> s{_afmTimeSeriesId = a})
      . _Default
      . _Coerce

-- | Arima model fitting metrics.
afmArimaFittingMetrics :: Lens' ArimaForecastingMetrics [ArimaFittingMetrics]
afmArimaFittingMetrics
  = lens _afmArimaFittingMetrics
      (\ s a -> s{_afmArimaFittingMetrics = a})
      . _Default
      . _Coerce

instance FromJSON ArimaForecastingMetrics where
        parseJSON
          = withObject "ArimaForecastingMetrics"
              (\ o ->
                 ArimaForecastingMetrics' <$>
                   (o .:? "seasonalPeriods" .!= mempty) <*>
                     (o .:? "nonSeasonalOrder" .!= mempty)
                     <*> (o .:? "hasDrift" .!= mempty)
                     <*>
                     (o .:? "arimaSingleModelForecastingMetrics" .!=
                        mempty)
                     <*> (o .:? "timeSeriesId" .!= mempty)
                     <*> (o .:? "arimaFittingMetrics" .!= mempty))

instance ToJSON ArimaForecastingMetrics where
        toJSON ArimaForecastingMetrics'{..}
          = object
              (catMaybes
                 [("seasonalPeriods" .=) <$> _afmSeasonalPeriods,
                  ("nonSeasonalOrder" .=) <$> _afmNonSeasonalOrder,
                  ("hasDrift" .=) <$> _afmHasDrift,
                  ("arimaSingleModelForecastingMetrics" .=) <$>
                    _afmArimaSingleModelForecastingMetrics,
                  ("timeSeriesId" .=) <$> _afmTimeSeriesId,
                  ("arimaFittingMetrics" .=) <$>
                    _afmArimaFittingMetrics])

--
-- /See:/ 'jobCancelResponse' smart constructor.
data JobCancelResponse =
  JobCancelResponse'
    { _jcrKind :: !Text
    , _jcrJob :: !(Maybe Job)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobCancelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcrKind'
--
-- * 'jcrJob'
jobCancelResponse
    :: JobCancelResponse
jobCancelResponse =
  JobCancelResponse'
    {_jcrKind = "bigquery#jobCancelResponse", _jcrJob = Nothing}


-- | The resource type of the response.
jcrKind :: Lens' JobCancelResponse Text
jcrKind = lens _jcrKind (\ s a -> s{_jcrKind = a})

-- | The final state of the job.
jcrJob :: Lens' JobCancelResponse (Maybe Job)
jcrJob = lens _jcrJob (\ s a -> s{_jcrJob = a})

instance FromJSON JobCancelResponse where
        parseJSON
          = withObject "JobCancelResponse"
              (\ o ->
                 JobCancelResponse' <$>
                   (o .:? "kind" .!= "bigquery#jobCancelResponse") <*>
                     (o .:? "job"))

instance ToJSON JobCancelResponse where
        toJSON JobCancelResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _jcrKind), ("job" .=) <$> _jcrJob])

-- | Represents a single JSON object.
--
-- /See:/ 'jsonObject' smart constructor.
newtype JSONObject =
  JSONObject'
    { _joAddtional :: HashMap Text JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JSONObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'joAddtional'
jsonObject
    :: HashMap Text JSONValue -- ^ 'joAddtional'
    -> JSONObject
jsonObject pJoAddtional_ = JSONObject' {_joAddtional = _Coerce # pJoAddtional_}


joAddtional :: Lens' JSONObject (HashMap Text JSONValue)
joAddtional
  = lens _joAddtional (\ s a -> s{_joAddtional = a}) .
      _Coerce

instance FromJSON JSONObject where
        parseJSON
          = withObject "JSONObject"
              (\ o -> JSONObject' <$> (parseJSONObject o))

instance ToJSON JSONObject where
        toJSON = toJSON . _joAddtional

--
-- /See:/ 'jobConfigurationQuery' smart constructor.
data JobConfigurationQuery =
  JobConfigurationQuery'
    { _jcqConnectionProperties :: !(Maybe [ConnectionProperty])
    , _jcqDestinationTable :: !(Maybe TableReference)
    , _jcqWriteDisPosition :: !(Maybe Text)
    , _jcqPriority :: !(Maybe Text)
    , _jcqClustering :: !(Maybe Clustering)
    , _jcqRangePartitioning :: !(Maybe RangePartitioning)
    , _jcqUseQueryCache :: !Bool
    , _jcqPreserveNulls :: !(Maybe Bool)
    , _jcqTableDefinitions :: !(Maybe JobConfigurationQueryTableDefinitions)
    , _jcqQueryParameters :: !(Maybe [QueryParameter])
    , _jcqSchemaUpdateOptions :: !(Maybe [Text])
    , _jcqMaximumBytesBilled :: !(Maybe (Textual Int64))
    , _jcqCreateDisPosition :: !(Maybe Text)
    , _jcqUserDefinedFunctionResources :: !(Maybe [UserDefinedFunctionResource])
    , _jcqAllowLargeResults :: !Bool
    , _jcqMaximumBillingTier :: !(Textual Int32)
    , _jcqTimePartitioning :: !(Maybe TimePartitioning)
    , _jcqQuery :: !(Maybe Text)
    , _jcqFlattenResults :: !Bool
    , _jcqParameterMode :: !(Maybe Text)
    , _jcqCreateSession :: !(Maybe Bool)
    , _jcqUseLegacySQL :: !Bool
    , _jcqDestinationEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    , _jcqDefaultDataSet :: !(Maybe DataSetReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobConfigurationQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcqConnectionProperties'
--
-- * 'jcqDestinationTable'
--
-- * 'jcqWriteDisPosition'
--
-- * 'jcqPriority'
--
-- * 'jcqClustering'
--
-- * 'jcqRangePartitioning'
--
-- * 'jcqUseQueryCache'
--
-- * 'jcqPreserveNulls'
--
-- * 'jcqTableDefinitions'
--
-- * 'jcqQueryParameters'
--
-- * 'jcqSchemaUpdateOptions'
--
-- * 'jcqMaximumBytesBilled'
--
-- * 'jcqCreateDisPosition'
--
-- * 'jcqUserDefinedFunctionResources'
--
-- * 'jcqAllowLargeResults'
--
-- * 'jcqMaximumBillingTier'
--
-- * 'jcqTimePartitioning'
--
-- * 'jcqQuery'
--
-- * 'jcqFlattenResults'
--
-- * 'jcqParameterMode'
--
-- * 'jcqCreateSession'
--
-- * 'jcqUseLegacySQL'
--
-- * 'jcqDestinationEncryptionConfiguration'
--
-- * 'jcqDefaultDataSet'
jobConfigurationQuery
    :: JobConfigurationQuery
jobConfigurationQuery =
  JobConfigurationQuery'
    { _jcqConnectionProperties = Nothing
    , _jcqDestinationTable = Nothing
    , _jcqWriteDisPosition = Nothing
    , _jcqPriority = Nothing
    , _jcqClustering = Nothing
    , _jcqRangePartitioning = Nothing
    , _jcqUseQueryCache = True
    , _jcqPreserveNulls = Nothing
    , _jcqTableDefinitions = Nothing
    , _jcqQueryParameters = Nothing
    , _jcqSchemaUpdateOptions = Nothing
    , _jcqMaximumBytesBilled = Nothing
    , _jcqCreateDisPosition = Nothing
    , _jcqUserDefinedFunctionResources = Nothing
    , _jcqAllowLargeResults = False
    , _jcqMaximumBillingTier = 1
    , _jcqTimePartitioning = Nothing
    , _jcqQuery = Nothing
    , _jcqFlattenResults = True
    , _jcqParameterMode = Nothing
    , _jcqCreateSession = Nothing
    , _jcqUseLegacySQL = True
    , _jcqDestinationEncryptionConfiguration = Nothing
    , _jcqDefaultDataSet = Nothing
    }


-- | Connection properties.
jcqConnectionProperties :: Lens' JobConfigurationQuery [ConnectionProperty]
jcqConnectionProperties
  = lens _jcqConnectionProperties
      (\ s a -> s{_jcqConnectionProperties = a})
      . _Default
      . _Coerce

-- | [Optional] Describes the table where the query results should be stored.
-- If not present, a new table will be created to store the results. This
-- property must be set for large results that exceed the maximum response
-- size.
jcqDestinationTable :: Lens' JobConfigurationQuery (Maybe TableReference)
jcqDestinationTable
  = lens _jcqDestinationTable
      (\ s a -> s{_jcqDestinationTable = a})

-- | [Optional] Specifies the action that occurs if the destination table
-- already exists. The following values are supported: WRITE_TRUNCATE: If
-- the table already exists, BigQuery overwrites the table data and uses
-- the schema from the query result. WRITE_APPEND: If the table already
-- exists, BigQuery appends the data to the table. WRITE_EMPTY: If the
-- table already exists and contains data, a \'duplicate\' error is
-- returned in the job result. The default value is WRITE_EMPTY. Each
-- action is atomic and only occurs if BigQuery is able to complete the job
-- successfully. Creation, truncation and append actions occur as one
-- atomic update upon job completion.
jcqWriteDisPosition :: Lens' JobConfigurationQuery (Maybe Text)
jcqWriteDisPosition
  = lens _jcqWriteDisPosition
      (\ s a -> s{_jcqWriteDisPosition = a})

-- | [Optional] Specifies a priority for the query. Possible values include
-- INTERACTIVE and BATCH. The default value is INTERACTIVE.
jcqPriority :: Lens' JobConfigurationQuery (Maybe Text)
jcqPriority
  = lens _jcqPriority (\ s a -> s{_jcqPriority = a})

-- | [Beta] Clustering specification for the destination table. Must be
-- specified with time-based partitioning, data in the table will be first
-- partitioned and subsequently clustered.
jcqClustering :: Lens' JobConfigurationQuery (Maybe Clustering)
jcqClustering
  = lens _jcqClustering
      (\ s a -> s{_jcqClustering = a})

-- | [TrustedTester] Range partitioning specification for this table. Only
-- one of timePartitioning and rangePartitioning should be specified.
jcqRangePartitioning :: Lens' JobConfigurationQuery (Maybe RangePartitioning)
jcqRangePartitioning
  = lens _jcqRangePartitioning
      (\ s a -> s{_jcqRangePartitioning = a})

-- | [Optional] Whether to look for the result in the query cache. The query
-- cache is a best-effort cache that will be flushed whenever tables in the
-- query are modified. Moreover, the query cache is only available when a
-- query does not have a destination table specified. The default value is
-- true.
jcqUseQueryCache :: Lens' JobConfigurationQuery Bool
jcqUseQueryCache
  = lens _jcqUseQueryCache
      (\ s a -> s{_jcqUseQueryCache = a})

-- | [Deprecated] This property is deprecated.
jcqPreserveNulls :: Lens' JobConfigurationQuery (Maybe Bool)
jcqPreserveNulls
  = lens _jcqPreserveNulls
      (\ s a -> s{_jcqPreserveNulls = a})

-- | [Optional] If querying an external data source outside of BigQuery,
-- describes the data format, location and other properties of the data
-- source. By defining these properties, the data source can then be
-- queried as if it were a standard BigQuery table.
jcqTableDefinitions :: Lens' JobConfigurationQuery (Maybe JobConfigurationQueryTableDefinitions)
jcqTableDefinitions
  = lens _jcqTableDefinitions
      (\ s a -> s{_jcqTableDefinitions = a})

-- | Query parameters for standard SQL queries.
jcqQueryParameters :: Lens' JobConfigurationQuery [QueryParameter]
jcqQueryParameters
  = lens _jcqQueryParameters
      (\ s a -> s{_jcqQueryParameters = a})
      . _Default
      . _Coerce

-- | Allows the schema of the destination table to be updated as a side
-- effect of the query job. Schema update options are supported in two
-- cases: when writeDisposition is WRITE_APPEND; when writeDisposition is
-- WRITE_TRUNCATE and the destination table is a partition of a table,
-- specified by partition decorators. For normal tables, WRITE_TRUNCATE
-- will always overwrite the schema. One or more of the following values
-- are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to
-- the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in
-- the original schema to nullable.
jcqSchemaUpdateOptions :: Lens' JobConfigurationQuery [Text]
jcqSchemaUpdateOptions
  = lens _jcqSchemaUpdateOptions
      (\ s a -> s{_jcqSchemaUpdateOptions = a})
      . _Default
      . _Coerce

-- | [Optional] Limits the bytes billed for this job. Queries that will have
-- bytes billed beyond this limit will fail (without incurring a charge).
-- If unspecified, this will be set to your project default.
jcqMaximumBytesBilled :: Lens' JobConfigurationQuery (Maybe Int64)
jcqMaximumBytesBilled
  = lens _jcqMaximumBytesBilled
      (\ s a -> s{_jcqMaximumBytesBilled = a})
      . mapping _Coerce

-- | [Optional] Specifies whether the job is allowed to create new tables.
-- The following values are supported: CREATE_IF_NEEDED: If the table does
-- not exist, BigQuery creates the table. CREATE_NEVER: The table must
-- already exist. If it does not, a \'notFound\' error is returned in the
-- job result. The default value is CREATE_IF_NEEDED. Creation, truncation
-- and append actions occur as one atomic update upon job completion.
jcqCreateDisPosition :: Lens' JobConfigurationQuery (Maybe Text)
jcqCreateDisPosition
  = lens _jcqCreateDisPosition
      (\ s a -> s{_jcqCreateDisPosition = a})

-- | Describes user-defined function resources used in the query.
jcqUserDefinedFunctionResources :: Lens' JobConfigurationQuery [UserDefinedFunctionResource]
jcqUserDefinedFunctionResources
  = lens _jcqUserDefinedFunctionResources
      (\ s a -> s{_jcqUserDefinedFunctionResources = a})
      . _Default
      . _Coerce

-- | [Optional] If true and query uses legacy SQL dialect, allows the query
-- to produce arbitrarily large result tables at a slight cost in
-- performance. Requires destinationTable to be set. For standard SQL
-- queries, this flag is ignored and large results are always allowed.
-- However, you must still set destinationTable when result size exceeds
-- the allowed maximum response size.
jcqAllowLargeResults :: Lens' JobConfigurationQuery Bool
jcqAllowLargeResults
  = lens _jcqAllowLargeResults
      (\ s a -> s{_jcqAllowLargeResults = a})

-- | [Optional] Limits the billing tier for this job. Queries that have
-- resource usage beyond this tier will fail (without incurring a charge).
-- If unspecified, this will be set to your project default.
jcqMaximumBillingTier :: Lens' JobConfigurationQuery Int32
jcqMaximumBillingTier
  = lens _jcqMaximumBillingTier
      (\ s a -> s{_jcqMaximumBillingTier = a})
      . _Coerce

-- | Time-based partitioning specification for the destination table. Only
-- one of timePartitioning and rangePartitioning should be specified.
jcqTimePartitioning :: Lens' JobConfigurationQuery (Maybe TimePartitioning)
jcqTimePartitioning
  = lens _jcqTimePartitioning
      (\ s a -> s{_jcqTimePartitioning = a})

-- | [Required] SQL query text to execute. The useLegacySql field can be used
-- to indicate whether the query uses legacy SQL or standard SQL.
jcqQuery :: Lens' JobConfigurationQuery (Maybe Text)
jcqQuery = lens _jcqQuery (\ s a -> s{_jcqQuery = a})

-- | [Optional] If true and query uses legacy SQL dialect, flattens all
-- nested and repeated fields in the query results. allowLargeResults must
-- be true if this is set to false. For standard SQL queries, this flag is
-- ignored and results are never flattened.
jcqFlattenResults :: Lens' JobConfigurationQuery Bool
jcqFlattenResults
  = lens _jcqFlattenResults
      (\ s a -> s{_jcqFlattenResults = a})

-- | Standard SQL only. Set to POSITIONAL to use positional (?) query
-- parameters or to NAMED to use named (\'myparam) query parameters in this
-- query.
jcqParameterMode :: Lens' JobConfigurationQuery (Maybe Text)
jcqParameterMode
  = lens _jcqParameterMode
      (\ s a -> s{_jcqParameterMode = a})

-- | If true, creates a new session, where session id will be a server
-- generated random id. If false, runs query with an existing session_id
-- passed in ConnectionProperty, otherwise runs query in non-session mode.
jcqCreateSession :: Lens' JobConfigurationQuery (Maybe Bool)
jcqCreateSession
  = lens _jcqCreateSession
      (\ s a -> s{_jcqCreateSession = a})

-- | Specifies whether to use BigQuery\'s legacy SQL dialect for this query.
-- The default value is true. If set to false, the query will use
-- BigQuery\'s standard SQL:
-- https:\/\/cloud.google.com\/bigquery\/sql-reference\/ When useLegacySql
-- is set to false, the value of flattenResults is ignored; query will be
-- run as if flattenResults is false.
jcqUseLegacySQL :: Lens' JobConfigurationQuery Bool
jcqUseLegacySQL
  = lens _jcqUseLegacySQL
      (\ s a -> s{_jcqUseLegacySQL = a})

-- | Custom encryption configuration (e.g., Cloud KMS keys).
jcqDestinationEncryptionConfiguration :: Lens' JobConfigurationQuery (Maybe EncryptionConfiguration)
jcqDestinationEncryptionConfiguration
  = lens _jcqDestinationEncryptionConfiguration
      (\ s a ->
         s{_jcqDestinationEncryptionConfiguration = a})

-- | [Optional] Specifies the default dataset to use for unqualified table
-- names in the query. Note that this does not alter behavior of
-- unqualified dataset names.
jcqDefaultDataSet :: Lens' JobConfigurationQuery (Maybe DataSetReference)
jcqDefaultDataSet
  = lens _jcqDefaultDataSet
      (\ s a -> s{_jcqDefaultDataSet = a})

instance FromJSON JobConfigurationQuery where
        parseJSON
          = withObject "JobConfigurationQuery"
              (\ o ->
                 JobConfigurationQuery' <$>
                   (o .:? "connectionProperties" .!= mempty) <*>
                     (o .:? "destinationTable")
                     <*> (o .:? "writeDisposition")
                     <*> (o .:? "priority")
                     <*> (o .:? "clustering")
                     <*> (o .:? "rangePartitioning")
                     <*> (o .:? "useQueryCache" .!= True)
                     <*> (o .:? "preserveNulls")
                     <*> (o .:? "tableDefinitions")
                     <*> (o .:? "queryParameters" .!= mempty)
                     <*> (o .:? "schemaUpdateOptions" .!= mempty)
                     <*> (o .:? "maximumBytesBilled")
                     <*> (o .:? "createDisposition")
                     <*> (o .:? "userDefinedFunctionResources" .!= mempty)
                     <*> (o .:? "allowLargeResults" .!= False)
                     <*> (o .:? "maximumBillingTier" .!= 1)
                     <*> (o .:? "timePartitioning")
                     <*> (o .:? "query")
                     <*> (o .:? "flattenResults" .!= True)
                     <*> (o .:? "parameterMode")
                     <*> (o .:? "createSession")
                     <*> (o .:? "useLegacySql" .!= True)
                     <*> (o .:? "destinationEncryptionConfiguration")
                     <*> (o .:? "defaultDataset"))

instance ToJSON JobConfigurationQuery where
        toJSON JobConfigurationQuery'{..}
          = object
              (catMaybes
                 [("connectionProperties" .=) <$>
                    _jcqConnectionProperties,
                  ("destinationTable" .=) <$> _jcqDestinationTable,
                  ("writeDisposition" .=) <$> _jcqWriteDisPosition,
                  ("priority" .=) <$> _jcqPriority,
                  ("clustering" .=) <$> _jcqClustering,
                  ("rangePartitioning" .=) <$> _jcqRangePartitioning,
                  Just ("useQueryCache" .= _jcqUseQueryCache),
                  ("preserveNulls" .=) <$> _jcqPreserveNulls,
                  ("tableDefinitions" .=) <$> _jcqTableDefinitions,
                  ("queryParameters" .=) <$> _jcqQueryParameters,
                  ("schemaUpdateOptions" .=) <$>
                    _jcqSchemaUpdateOptions,
                  ("maximumBytesBilled" .=) <$> _jcqMaximumBytesBilled,
                  ("createDisposition" .=) <$> _jcqCreateDisPosition,
                  ("userDefinedFunctionResources" .=) <$>
                    _jcqUserDefinedFunctionResources,
                  Just ("allowLargeResults" .= _jcqAllowLargeResults),
                  Just
                    ("maximumBillingTier" .= _jcqMaximumBillingTier),
                  ("timePartitioning" .=) <$> _jcqTimePartitioning,
                  ("query" .=) <$> _jcqQuery,
                  Just ("flattenResults" .= _jcqFlattenResults),
                  ("parameterMode" .=) <$> _jcqParameterMode,
                  ("createSession" .=) <$> _jcqCreateSession,
                  Just ("useLegacySql" .= _jcqUseLegacySQL),
                  ("destinationEncryptionConfiguration" .=) <$>
                    _jcqDestinationEncryptionConfiguration,
                  ("defaultDataset" .=) <$> _jcqDefaultDataSet])

--
-- /See:/ 'googleSheetsOptions' smart constructor.
data GoogleSheetsOptions =
  GoogleSheetsOptions'
    { _gsoSkipLeadingRows :: !(Maybe (Textual Int64))
    , _gsoRange :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleSheetsOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsoSkipLeadingRows'
--
-- * 'gsoRange'
googleSheetsOptions
    :: GoogleSheetsOptions
googleSheetsOptions =
  GoogleSheetsOptions' {_gsoSkipLeadingRows = Nothing, _gsoRange = Nothing}


-- | [Optional] The number of rows at the top of a sheet that BigQuery will
-- skip when reading the data. The default value is 0. This property is
-- useful if you have header rows that should be skipped. When autodetect
-- is on, behavior is the following: * skipLeadingRows unspecified -
-- Autodetect tries to detect headers in the first row. If they are not
-- detected, the row is read as data. Otherwise data is read starting from
-- the second row. * skipLeadingRows is 0 - Instructs autodetect that there
-- are no headers and data should be read starting from the first row. *
-- skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect
-- headers in row N. If headers are not detected, row N is just skipped.
-- Otherwise row N is used to extract column names for the detected schema.
gsoSkipLeadingRows :: Lens' GoogleSheetsOptions (Maybe Int64)
gsoSkipLeadingRows
  = lens _gsoSkipLeadingRows
      (\ s a -> s{_gsoSkipLeadingRows = a})
      . mapping _Coerce

-- | [Optional] Range of a sheet to query from. Only used when non-empty.
-- Typical format: sheet_name!top_left_cell_id:bottom_right_cell_id For
-- example: sheet1!A1:B20
gsoRange :: Lens' GoogleSheetsOptions (Maybe Text)
gsoRange = lens _gsoRange (\ s a -> s{_gsoRange = a})

instance FromJSON GoogleSheetsOptions where
        parseJSON
          = withObject "GoogleSheetsOptions"
              (\ o ->
                 GoogleSheetsOptions' <$>
                   (o .:? "skipLeadingRows") <*> (o .:? "range"))

instance ToJSON GoogleSheetsOptions where
        toJSON GoogleSheetsOptions'{..}
          = object
              (catMaybes
                 [("skipLeadingRows" .=) <$> _gsoSkipLeadingRows,
                  ("range" .=) <$> _gsoRange])

--
-- /See:/ 'listModelsResponse' smart constructor.
data ListModelsResponse =
  ListModelsResponse'
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrModels :: !(Maybe [Model])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListModelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrModels'
listModelsResponse
    :: ListModelsResponse
listModelsResponse =
  ListModelsResponse' {_lmrNextPageToken = Nothing, _lmrModels = Nothing}


-- | A token to request the next page of results.
lmrNextPageToken :: Lens' ListModelsResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | Models in the requested dataset. Only the following fields are
-- populated: model_reference, model_type, creation_time,
-- last_modified_time and labels.
lmrModels :: Lens' ListModelsResponse [Model]
lmrModels
  = lens _lmrModels (\ s a -> s{_lmrModels = a}) .
      _Default
      . _Coerce

instance FromJSON ListModelsResponse where
        parseJSON
          = withObject "ListModelsResponse"
              (\ o ->
                 ListModelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "models" .!= mempty))

instance ToJSON ListModelsResponse where
        toJSON ListModelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("models" .=) <$> _lmrModels])

--
-- /See:/ 'tableDataInsertAllRequestRowsItem' smart constructor.
data TableDataInsertAllRequestRowsItem =
  TableDataInsertAllRequestRowsItem'
    { _tdiarriJSON :: !(Maybe JSONObject)
    , _tdiarriInsertId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableDataInsertAllRequestRowsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiarriJSON'
--
-- * 'tdiarriInsertId'
tableDataInsertAllRequestRowsItem
    :: TableDataInsertAllRequestRowsItem
tableDataInsertAllRequestRowsItem =
  TableDataInsertAllRequestRowsItem'
    {_tdiarriJSON = Nothing, _tdiarriInsertId = Nothing}


-- | [Required] A JSON object that contains a row of data. The object\'s
-- properties and values must match the destination table\'s schema.
tdiarriJSON :: Lens' TableDataInsertAllRequestRowsItem (Maybe JSONObject)
tdiarriJSON
  = lens _tdiarriJSON (\ s a -> s{_tdiarriJSON = a})

-- | [Optional] A unique ID for each row. BigQuery uses this property to
-- detect duplicate insertion requests on a best-effort basis.
tdiarriInsertId :: Lens' TableDataInsertAllRequestRowsItem (Maybe Text)
tdiarriInsertId
  = lens _tdiarriInsertId
      (\ s a -> s{_tdiarriInsertId = a})

instance FromJSON TableDataInsertAllRequestRowsItem
         where
        parseJSON
          = withObject "TableDataInsertAllRequestRowsItem"
              (\ o ->
                 TableDataInsertAllRequestRowsItem' <$>
                   (o .:? "json") <*> (o .:? "insertId"))

instance ToJSON TableDataInsertAllRequestRowsItem
         where
        toJSON TableDataInsertAllRequestRowsItem'{..}
          = object
              (catMaybes
                 [("json" .=) <$> _tdiarriJSON,
                  ("insertId" .=) <$> _tdiarriInsertId])

--
-- /See:/ 'jobList' smart constructor.
data JobList =
  JobList'
    { _jlEtag :: !(Maybe Text)
    , _jlNextPageToken :: !(Maybe Text)
    , _jlKind :: !Text
    , _jlJobs :: !(Maybe [JobListJobsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlEtag'
--
-- * 'jlNextPageToken'
--
-- * 'jlKind'
--
-- * 'jlJobs'
jobList
    :: JobList
jobList =
  JobList'
    { _jlEtag = Nothing
    , _jlNextPageToken = Nothing
    , _jlKind = "bigquery#jobList"
    , _jlJobs = Nothing
    }


-- | A hash of this page of results.
jlEtag :: Lens' JobList (Maybe Text)
jlEtag = lens _jlEtag (\ s a -> s{_jlEtag = a})

-- | A token to request the next page of results.
jlNextPageToken :: Lens' JobList (Maybe Text)
jlNextPageToken
  = lens _jlNextPageToken
      (\ s a -> s{_jlNextPageToken = a})

-- | The resource type of the response.
jlKind :: Lens' JobList Text
jlKind = lens _jlKind (\ s a -> s{_jlKind = a})

-- | List of jobs that were requested.
jlJobs :: Lens' JobList [JobListJobsItem]
jlJobs
  = lens _jlJobs (\ s a -> s{_jlJobs = a}) . _Default .
      _Coerce

instance FromJSON JobList where
        parseJSON
          = withObject "JobList"
              (\ o ->
                 JobList' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "bigquery#jobList")
                     <*> (o .:? "jobs" .!= mempty))

instance ToJSON JobList where
        toJSON JobList'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _jlEtag,
                  ("nextPageToken" .=) <$> _jlNextPageToken,
                  Just ("kind" .= _jlKind), ("jobs" .=) <$> _jlJobs])

-- | [Optional] If querying an external data source outside of BigQuery,
-- describes the data format, location and other properties of the data
-- source. By defining these properties, the data source can then be
-- queried as if it were a standard BigQuery table.
--
-- /See:/ 'jobConfigurationQueryTableDefinitions' smart constructor.
newtype JobConfigurationQueryTableDefinitions =
  JobConfigurationQueryTableDefinitions'
    { _jcqtdAddtional :: HashMap Text ExternalDataConfiguration
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobConfigurationQueryTableDefinitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcqtdAddtional'
jobConfigurationQueryTableDefinitions
    :: HashMap Text ExternalDataConfiguration -- ^ 'jcqtdAddtional'
    -> JobConfigurationQueryTableDefinitions
jobConfigurationQueryTableDefinitions pJcqtdAddtional_ =
  JobConfigurationQueryTableDefinitions'
    {_jcqtdAddtional = _Coerce # pJcqtdAddtional_}


jcqtdAddtional :: Lens' JobConfigurationQueryTableDefinitions (HashMap Text ExternalDataConfiguration)
jcqtdAddtional
  = lens _jcqtdAddtional
      (\ s a -> s{_jcqtdAddtional = a})
      . _Coerce

instance FromJSON
           JobConfigurationQueryTableDefinitions
         where
        parseJSON
          = withObject "JobConfigurationQueryTableDefinitions"
              (\ o ->
                 JobConfigurationQueryTableDefinitions' <$>
                   (parseJSONObject o))

instance ToJSON JobConfigurationQueryTableDefinitions
         where
        toJSON = toJSON . _jcqtdAddtional

--
-- /See:/ 'tableCell' smart constructor.
newtype TableCell =
  TableCell'
    { _tcV :: Maybe JSONValue
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcV'
tableCell
    :: TableCell
tableCell = TableCell' {_tcV = Nothing}


tcV :: Lens' TableCell (Maybe JSONValue)
tcV = lens _tcV (\ s a -> s{_tcV = a})

instance FromJSON TableCell where
        parseJSON
          = withObject "TableCell"
              (\ o -> TableCell' <$> (o .:? "v"))

instance ToJSON TableCell where
        toJSON TableCell'{..}
          = object (catMaybes [("v" .=) <$> _tcV])

-- | Arima order, can be used for both non-seasonal and seasonal parts.
--
-- /See:/ 'arimaOrder' smart constructor.
data ArimaOrder =
  ArimaOrder'
    { _aoP :: !(Maybe (Textual Int64))
    , _aoQ :: !(Maybe (Textual Int64))
    , _aoD :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArimaOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoP'
--
-- * 'aoQ'
--
-- * 'aoD'
arimaOrder
    :: ArimaOrder
arimaOrder = ArimaOrder' {_aoP = Nothing, _aoQ = Nothing, _aoD = Nothing}


-- | Order of the autoregressive part.
aoP :: Lens' ArimaOrder (Maybe Int64)
aoP
  = lens _aoP (\ s a -> s{_aoP = a}) . mapping _Coerce

-- | Order of the moving-average part.
aoQ :: Lens' ArimaOrder (Maybe Int64)
aoQ
  = lens _aoQ (\ s a -> s{_aoQ = a}) . mapping _Coerce

-- | Order of the differencing part.
aoD :: Lens' ArimaOrder (Maybe Int64)
aoD
  = lens _aoD (\ s a -> s{_aoD = a}) . mapping _Coerce

instance FromJSON ArimaOrder where
        parseJSON
          = withObject "ArimaOrder"
              (\ o ->
                 ArimaOrder' <$>
                   (o .:? "p") <*> (o .:? "q") <*> (o .:? "d"))

instance ToJSON ArimaOrder where
        toJSON ArimaOrder'{..}
          = object
              (catMaybes
                 [("p" .=) <$> _aoP, ("q" .=) <$> _aoQ,
                  ("d" .=) <$> _aoD])

--
-- /See:/ 'jobStatistics2ReservationUsageItem' smart constructor.
data JobStatistics2ReservationUsageItem =
  JobStatistics2ReservationUsageItem'
    { _jName :: !(Maybe Text)
    , _jSlotMs :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobStatistics2ReservationUsageItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jName'
--
-- * 'jSlotMs'
jobStatistics2ReservationUsageItem
    :: JobStatistics2ReservationUsageItem
jobStatistics2ReservationUsageItem =
  JobStatistics2ReservationUsageItem' {_jName = Nothing, _jSlotMs = Nothing}


-- | [Output-only] Reservation name or \"unreserved\" for on-demand resources
-- usage.
jName :: Lens' JobStatistics2ReservationUsageItem (Maybe Text)
jName = lens _jName (\ s a -> s{_jName = a})

-- | [Output-only] Slot-milliseconds the job spent in the given reservation.
jSlotMs :: Lens' JobStatistics2ReservationUsageItem (Maybe Int64)
jSlotMs
  = lens _jSlotMs (\ s a -> s{_jSlotMs = a}) .
      mapping _Coerce

instance FromJSON JobStatistics2ReservationUsageItem
         where
        parseJSON
          = withObject "JobStatistics2ReservationUsageItem"
              (\ o ->
                 JobStatistics2ReservationUsageItem' <$>
                   (o .:? "name") <*> (o .:? "slotMs"))

instance ToJSON JobStatistics2ReservationUsageItem
         where
        toJSON JobStatistics2ReservationUsageItem'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _jName, ("slotMs" .=) <$> _jSlotMs])

--
-- /See:/ 'dmlStatistics' smart constructor.
data DmlStatistics =
  DmlStatistics'
    { _dsDeletedRowCount :: !(Maybe (Textual Int64))
    , _dsUpdatedRowCount :: !(Maybe (Textual Int64))
    , _dsInsertedRowCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DmlStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsDeletedRowCount'
--
-- * 'dsUpdatedRowCount'
--
-- * 'dsInsertedRowCount'
dmlStatistics
    :: DmlStatistics
dmlStatistics =
  DmlStatistics'
    { _dsDeletedRowCount = Nothing
    , _dsUpdatedRowCount = Nothing
    , _dsInsertedRowCount = Nothing
    }


-- | Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE
-- statements.
dsDeletedRowCount :: Lens' DmlStatistics (Maybe Int64)
dsDeletedRowCount
  = lens _dsDeletedRowCount
      (\ s a -> s{_dsDeletedRowCount = a})
      . mapping _Coerce

-- | Number of updated Rows. Populated by DML UPDATE and MERGE statements.
dsUpdatedRowCount :: Lens' DmlStatistics (Maybe Int64)
dsUpdatedRowCount
  = lens _dsUpdatedRowCount
      (\ s a -> s{_dsUpdatedRowCount = a})
      . mapping _Coerce

-- | Number of inserted Rows. Populated by DML INSERT and MERGE statements.
dsInsertedRowCount :: Lens' DmlStatistics (Maybe Int64)
dsInsertedRowCount
  = lens _dsInsertedRowCount
      (\ s a -> s{_dsInsertedRowCount = a})
      . mapping _Coerce

instance FromJSON DmlStatistics where
        parseJSON
          = withObject "DmlStatistics"
              (\ o ->
                 DmlStatistics' <$>
                   (o .:? "deletedRowCount") <*>
                     (o .:? "updatedRowCount")
                     <*> (o .:? "insertedRowCount"))

instance ToJSON DmlStatistics where
        toJSON DmlStatistics'{..}
          = object
              (catMaybes
                 [("deletedRowCount" .=) <$> _dsDeletedRowCount,
                  ("updatedRowCount" .=) <$> _dsUpdatedRowCount,
                  ("insertedRowCount" .=) <$> _dsInsertedRowCount])

--
-- /See:/ 'queryParameterValue' smart constructor.
data QueryParameterValue =
  QueryParameterValue'
    { _qpvStructValues :: !(Maybe QueryParameterValueStructValues)
    , _qpvValue :: !(Maybe Text)
    , _qpvArrayValues :: !(Maybe [QueryParameterValue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryParameterValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qpvStructValues'
--
-- * 'qpvValue'
--
-- * 'qpvArrayValues'
queryParameterValue
    :: QueryParameterValue
queryParameterValue =
  QueryParameterValue'
    {_qpvStructValues = Nothing, _qpvValue = Nothing, _qpvArrayValues = Nothing}


-- | [Optional] The struct field values, in order of the struct type\'s
-- declaration.
qpvStructValues :: Lens' QueryParameterValue (Maybe QueryParameterValueStructValues)
qpvStructValues
  = lens _qpvStructValues
      (\ s a -> s{_qpvStructValues = a})

-- | [Optional] The value of this value, if a simple scalar type.
qpvValue :: Lens' QueryParameterValue (Maybe Text)
qpvValue = lens _qpvValue (\ s a -> s{_qpvValue = a})

-- | [Optional] The array values, if this is an array type.
qpvArrayValues :: Lens' QueryParameterValue [QueryParameterValue]
qpvArrayValues
  = lens _qpvArrayValues
      (\ s a -> s{_qpvArrayValues = a})
      . _Default
      . _Coerce

instance FromJSON QueryParameterValue where
        parseJSON
          = withObject "QueryParameterValue"
              (\ o ->
                 QueryParameterValue' <$>
                   (o .:? "structValues") <*> (o .:? "value") <*>
                     (o .:? "arrayValues" .!= mempty))

instance ToJSON QueryParameterValue where
        toJSON QueryParameterValue'{..}
          = object
              (catMaybes
                 [("structValues" .=) <$> _qpvStructValues,
                  ("value" .=) <$> _qpvValue,
                  ("arrayValues" .=) <$> _qpvArrayValues])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

--
-- /See:/ 'viewDefinition' smart constructor.
data ViewDefinition =
  ViewDefinition'
    { _vdUserDefinedFunctionResources :: !(Maybe [UserDefinedFunctionResource])
    , _vdUseExplicitColumnNames :: !(Maybe Bool)
    , _vdQuery :: !(Maybe Text)
    , _vdUseLegacySQL :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ViewDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdUserDefinedFunctionResources'
--
-- * 'vdUseExplicitColumnNames'
--
-- * 'vdQuery'
--
-- * 'vdUseLegacySQL'
viewDefinition
    :: ViewDefinition
viewDefinition =
  ViewDefinition'
    { _vdUserDefinedFunctionResources = Nothing
    , _vdUseExplicitColumnNames = Nothing
    , _vdQuery = Nothing
    , _vdUseLegacySQL = Nothing
    }


-- | Describes user-defined function resources used in the query.
vdUserDefinedFunctionResources :: Lens' ViewDefinition [UserDefinedFunctionResource]
vdUserDefinedFunctionResources
  = lens _vdUserDefinedFunctionResources
      (\ s a -> s{_vdUserDefinedFunctionResources = a})
      . _Default
      . _Coerce

-- | True if the column names are explicitly specified. For example by using
-- the \'CREATE VIEW v(c1, c2) AS ...\' syntax. Can only be set using
-- BigQuery\'s standard SQL:
-- https:\/\/cloud.google.com\/bigquery\/sql-reference\/
vdUseExplicitColumnNames :: Lens' ViewDefinition (Maybe Bool)
vdUseExplicitColumnNames
  = lens _vdUseExplicitColumnNames
      (\ s a -> s{_vdUseExplicitColumnNames = a})

-- | [Required] A query that BigQuery executes when the view is referenced.
vdQuery :: Lens' ViewDefinition (Maybe Text)
vdQuery = lens _vdQuery (\ s a -> s{_vdQuery = a})

-- | Specifies whether to use BigQuery\'s legacy SQL for this view. The
-- default value is true. If set to false, the view will use BigQuery\'s
-- standard SQL: https:\/\/cloud.google.com\/bigquery\/sql-reference\/
-- Queries and views that reference this view must use the same flag value.
vdUseLegacySQL :: Lens' ViewDefinition (Maybe Bool)
vdUseLegacySQL
  = lens _vdUseLegacySQL
      (\ s a -> s{_vdUseLegacySQL = a})

instance FromJSON ViewDefinition where
        parseJSON
          = withObject "ViewDefinition"
              (\ o ->
                 ViewDefinition' <$>
                   (o .:? "userDefinedFunctionResources" .!= mempty) <*>
                     (o .:? "useExplicitColumnNames")
                     <*> (o .:? "query")
                     <*> (o .:? "useLegacySql"))

instance ToJSON ViewDefinition where
        toJSON ViewDefinition'{..}
          = object
              (catMaybes
                 [("userDefinedFunctionResources" .=) <$>
                    _vdUserDefinedFunctionResources,
                  ("useExplicitColumnNames" .=) <$>
                    _vdUseExplicitColumnNames,
                  ("query" .=) <$> _vdQuery,
                  ("useLegacySql" .=) <$> _vdUseLegacySQL])

-- | This is used for defining User Defined Function (UDF) resources only
-- when using legacy SQL. Users of Standard SQL should leverage either DDL
-- (e.g. CREATE [TEMPORARY] FUNCTION ... ) or the Routines API to define
-- UDF resources. For additional information on migrating, see:
-- https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/migrating-from-legacy-sql#differences_in_user-defined_javascript_functions
--
-- /See:/ 'userDefinedFunctionResource' smart constructor.
data UserDefinedFunctionResource =
  UserDefinedFunctionResource'
    { _udfrResourceURI :: !(Maybe Text)
    , _udfrInlineCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserDefinedFunctionResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udfrResourceURI'
--
-- * 'udfrInlineCode'
userDefinedFunctionResource
    :: UserDefinedFunctionResource
userDefinedFunctionResource =
  UserDefinedFunctionResource'
    {_udfrResourceURI = Nothing, _udfrInlineCode = Nothing}


-- | [Pick one] A code resource to load from a Google Cloud Storage URI
-- (gs:\/\/bucket\/path).
udfrResourceURI :: Lens' UserDefinedFunctionResource (Maybe Text)
udfrResourceURI
  = lens _udfrResourceURI
      (\ s a -> s{_udfrResourceURI = a})

-- | [Pick one] An inline resource that contains code for a user-defined
-- function (UDF). Providing a inline code resource is equivalent to
-- providing a URI for a file containing the same code.
udfrInlineCode :: Lens' UserDefinedFunctionResource (Maybe Text)
udfrInlineCode
  = lens _udfrInlineCode
      (\ s a -> s{_udfrInlineCode = a})

instance FromJSON UserDefinedFunctionResource where
        parseJSON
          = withObject "UserDefinedFunctionResource"
              (\ o ->
                 UserDefinedFunctionResource' <$>
                   (o .:? "resourceUri") <*> (o .:? "inlineCode"))

instance ToJSON UserDefinedFunctionResource where
        toJSON UserDefinedFunctionResource'{..}
          = object
              (catMaybes
                 [("resourceUri" .=) <$> _udfrResourceURI,
                  ("inlineCode" .=) <$> _udfrInlineCode])

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pAuditConfigs :: !(Maybe [AuditConfig])
    , _pEtag :: !(Maybe Bytes)
    , _pVersion :: !(Maybe (Textual Int32))
    , _pBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pAuditConfigs'
--
-- * 'pEtag'
--
-- * 'pVersion'
--
-- * 'pBindings'
policy
    :: Policy
policy =
  Policy'
    { _pAuditConfigs = Nothing
    , _pEtag = Nothing
    , _pVersion = Nothing
    , _pBindings = Nothing
    }


-- | Specifies cloud audit logging configuration for this policy.
pAuditConfigs :: Lens' Policy [AuditConfig]
pAuditConfigs
  = lens _pAuditConfigs
      (\ s a -> s{_pAuditConfigs = a})
      . _Default
      . _Coerce

-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
pEtag :: Lens' Policy (Maybe ByteString)
pEtag
  = lens _pEtag (\ s a -> s{_pEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
pVersion :: Lens' Policy (Maybe Int32)
pVersion
  = lens _pVersion (\ s a -> s{_pVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
pBindings :: Lens' Policy [Binding]
pBindings
  = lens _pBindings (\ s a -> s{_pBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "auditConfigs" .!= mempty) <*> (o .:? "etag")
                     <*> (o .:? "version")
                     <*> (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("auditConfigs" .=) <$> _pAuditConfigs,
                  ("etag" .=) <$> _pEtag, ("version" .=) <$> _pVersion,
                  ("bindings" .=) <$> _pBindings])

--
-- /See:/ 'jobStatistics2' smart constructor.
data JobStatistics2 =
  JobStatistics2'
    { _jModelTrainingExpectedTotalIteration :: !(Maybe (Textual Int64))
    , _jModelTraining :: !(Maybe BigQueryModelTraining)
    , _jDdlTargetDataSet :: !(Maybe DataSetReference)
    , _jBiEngineStatistics :: !(Maybe BiEngineStatistics)
    , _jTotalSlotMs :: !(Maybe (Textual Int64))
    , _jDdlTargetRoutine :: !(Maybe RoutineReference)
    , _jDdlAffectedRowAccessPolicyCount :: !(Maybe (Textual Int64))
    , _jDdlTargetTable :: !(Maybe TableReference)
    , _jDdlTargetRowAccessPolicy :: !(Maybe RowAccessPolicyReference)
    , _jEstimatedBytesProcessed :: !(Maybe (Textual Int64))
    , _jModelTrainingCurrentIteration :: !(Maybe (Textual Int32))
    , _jSchema :: !(Maybe TableSchema)
    , _jTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _jBillingTier :: !(Maybe (Textual Int32))
    , _jTotalBytesProcessedAccuracy :: !(Maybe Text)
    , _jDmlStats :: !(Maybe DmlStatistics)
    , _jUndeclaredQueryParameters :: !(Maybe [QueryParameter])
    , _jReferencedTables :: !(Maybe [TableReference])
    , _jReferencedRoutines :: !(Maybe [RoutineReference])
    , _jStatementType :: !(Maybe Text)
    , _jReservationUsage :: !(Maybe [JobStatistics2ReservationUsageItem])
    , _jNumDmlAffectedRows :: !(Maybe (Textual Int64))
    , _jTimeline :: !(Maybe [QueryTimelineSample])
    , _jDdlDestinationTable :: !(Maybe TableReference)
    , _jQueryPlan :: !(Maybe [ExplainQueryStage])
    , _jCacheHit :: !(Maybe Bool)
    , _jTotalBytesBilled :: !(Maybe (Textual Int64))
    , _jDdlOperationPerformed :: !(Maybe Text)
    , _jTotalPartitionsProcessed :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobStatistics2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jModelTrainingExpectedTotalIteration'
--
-- * 'jModelTraining'
--
-- * 'jDdlTargetDataSet'
--
-- * 'jBiEngineStatistics'
--
-- * 'jTotalSlotMs'
--
-- * 'jDdlTargetRoutine'
--
-- * 'jDdlAffectedRowAccessPolicyCount'
--
-- * 'jDdlTargetTable'
--
-- * 'jDdlTargetRowAccessPolicy'
--
-- * 'jEstimatedBytesProcessed'
--
-- * 'jModelTrainingCurrentIteration'
--
-- * 'jSchema'
--
-- * 'jTotalBytesProcessed'
--
-- * 'jBillingTier'
--
-- * 'jTotalBytesProcessedAccuracy'
--
-- * 'jDmlStats'
--
-- * 'jUndeclaredQueryParameters'
--
-- * 'jReferencedTables'
--
-- * 'jReferencedRoutines'
--
-- * 'jStatementType'
--
-- * 'jReservationUsage'
--
-- * 'jNumDmlAffectedRows'
--
-- * 'jTimeline'
--
-- * 'jDdlDestinationTable'
--
-- * 'jQueryPlan'
--
-- * 'jCacheHit'
--
-- * 'jTotalBytesBilled'
--
-- * 'jDdlOperationPerformed'
--
-- * 'jTotalPartitionsProcessed'
jobStatistics2
    :: JobStatistics2
jobStatistics2 =
  JobStatistics2'
    { _jModelTrainingExpectedTotalIteration = Nothing
    , _jModelTraining = Nothing
    , _jDdlTargetDataSet = Nothing
    , _jBiEngineStatistics = Nothing
    , _jTotalSlotMs = Nothing
    , _jDdlTargetRoutine = Nothing
    , _jDdlAffectedRowAccessPolicyCount = Nothing
    , _jDdlTargetTable = Nothing
    , _jDdlTargetRowAccessPolicy = Nothing
    , _jEstimatedBytesProcessed = Nothing
    , _jModelTrainingCurrentIteration = Nothing
    , _jSchema = Nothing
    , _jTotalBytesProcessed = Nothing
    , _jBillingTier = Nothing
    , _jTotalBytesProcessedAccuracy = Nothing
    , _jDmlStats = Nothing
    , _jUndeclaredQueryParameters = Nothing
    , _jReferencedTables = Nothing
    , _jReferencedRoutines = Nothing
    , _jStatementType = Nothing
    , _jReservationUsage = Nothing
    , _jNumDmlAffectedRows = Nothing
    , _jTimeline = Nothing
    , _jDdlDestinationTable = Nothing
    , _jQueryPlan = Nothing
    , _jCacheHit = Nothing
    , _jTotalBytesBilled = Nothing
    , _jDdlOperationPerformed = Nothing
    , _jTotalPartitionsProcessed = Nothing
    }


-- | [Output-only, Beta] Deprecated; do not use.
jModelTrainingExpectedTotalIteration :: Lens' JobStatistics2 (Maybe Int64)
jModelTrainingExpectedTotalIteration
  = lens _jModelTrainingExpectedTotalIteration
      (\ s a ->
         s{_jModelTrainingExpectedTotalIteration = a})
      . mapping _Coerce

-- | [Output-only, Beta] Information about create model query job progress.
jModelTraining :: Lens' JobStatistics2 (Maybe BigQueryModelTraining)
jModelTraining
  = lens _jModelTraining
      (\ s a -> s{_jModelTraining = a})

-- | [Output-only] The DDL target dataset. Present only for
-- CREATE\/ALTER\/DROP SCHEMA queries.
jDdlTargetDataSet :: Lens' JobStatistics2 (Maybe DataSetReference)
jDdlTargetDataSet
  = lens _jDdlTargetDataSet
      (\ s a -> s{_jDdlTargetDataSet = a})

-- | BI Engine specific Statistics. [Output-only] BI Engine specific
-- Statistics.
jBiEngineStatistics :: Lens' JobStatistics2 (Maybe BiEngineStatistics)
jBiEngineStatistics
  = lens _jBiEngineStatistics
      (\ s a -> s{_jBiEngineStatistics = a})

-- | [Output-only] Slot-milliseconds for the job.
jTotalSlotMs :: Lens' JobStatistics2 (Maybe Int64)
jTotalSlotMs
  = lens _jTotalSlotMs (\ s a -> s{_jTotalSlotMs = a})
      . mapping _Coerce

-- | The DDL target routine. Present only for CREATE\/DROP
-- FUNCTION\/PROCEDURE queries.
jDdlTargetRoutine :: Lens' JobStatistics2 (Maybe RoutineReference)
jDdlTargetRoutine
  = lens _jDdlTargetRoutine
      (\ s a -> s{_jDdlTargetRoutine = a})

-- | [Output-only] [Preview] The number of row access policies affected by a
-- DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.
jDdlAffectedRowAccessPolicyCount :: Lens' JobStatistics2 (Maybe Int64)
jDdlAffectedRowAccessPolicyCount
  = lens _jDdlAffectedRowAccessPolicyCount
      (\ s a -> s{_jDdlAffectedRowAccessPolicyCount = a})
      . mapping _Coerce

-- | [Output-only] The DDL target table. Present only for CREATE\/DROP
-- TABLE\/VIEW and DROP ALL ROW ACCESS POLICIES queries.
jDdlTargetTable :: Lens' JobStatistics2 (Maybe TableReference)
jDdlTargetTable
  = lens _jDdlTargetTable
      (\ s a -> s{_jDdlTargetTable = a})

-- | [Output-only] [Preview] The DDL target row access policy. Present only
-- for CREATE\/DROP ROW ACCESS POLICY queries.
jDdlTargetRowAccessPolicy :: Lens' JobStatistics2 (Maybe RowAccessPolicyReference)
jDdlTargetRowAccessPolicy
  = lens _jDdlTargetRowAccessPolicy
      (\ s a -> s{_jDdlTargetRowAccessPolicy = a})

-- | [Output-only] The original estimate of bytes processed for the job.
jEstimatedBytesProcessed :: Lens' JobStatistics2 (Maybe Int64)
jEstimatedBytesProcessed
  = lens _jEstimatedBytesProcessed
      (\ s a -> s{_jEstimatedBytesProcessed = a})
      . mapping _Coerce

-- | [Output-only, Beta] Deprecated; do not use.
jModelTrainingCurrentIteration :: Lens' JobStatistics2 (Maybe Int32)
jModelTrainingCurrentIteration
  = lens _jModelTrainingCurrentIteration
      (\ s a -> s{_jModelTrainingCurrentIteration = a})
      . mapping _Coerce

-- | [Output-only] The schema of the results. Present only for successful dry
-- run of non-legacy SQL queries.
jSchema :: Lens' JobStatistics2 (Maybe TableSchema)
jSchema = lens _jSchema (\ s a -> s{_jSchema = a})

-- | [Output-only] Total bytes processed for the job.
jTotalBytesProcessed :: Lens' JobStatistics2 (Maybe Int64)
jTotalBytesProcessed
  = lens _jTotalBytesProcessed
      (\ s a -> s{_jTotalBytesProcessed = a})
      . mapping _Coerce

-- | [Output-only] Billing tier for the job.
jBillingTier :: Lens' JobStatistics2 (Maybe Int32)
jBillingTier
  = lens _jBillingTier (\ s a -> s{_jBillingTier = a})
      . mapping _Coerce

-- | [Output-only] For dry-run jobs, totalBytesProcessed is an estimate and
-- this field specifies the accuracy of the estimate. Possible values can
-- be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is
-- precise. LOWER_BOUND: estimate is lower bound of what the query would
-- cost. UPPER_BOUND: estimate is upper bound of what the query would cost.
jTotalBytesProcessedAccuracy :: Lens' JobStatistics2 (Maybe Text)
jTotalBytesProcessedAccuracy
  = lens _jTotalBytesProcessedAccuracy
      (\ s a -> s{_jTotalBytesProcessedAccuracy = a})

-- | [Output-only] Detailed statistics for DML statements Present only for
-- DML statements INSERT, UPDATE, DELETE or TRUNCATE.
jDmlStats :: Lens' JobStatistics2 (Maybe DmlStatistics)
jDmlStats
  = lens _jDmlStats (\ s a -> s{_jDmlStats = a})

-- | Standard SQL only: list of undeclared query parameters detected during a
-- dry run validation.
jUndeclaredQueryParameters :: Lens' JobStatistics2 [QueryParameter]
jUndeclaredQueryParameters
  = lens _jUndeclaredQueryParameters
      (\ s a -> s{_jUndeclaredQueryParameters = a})
      . _Default
      . _Coerce

-- | [Output-only] Referenced tables for the job. Queries that reference more
-- than 50 tables will not have a complete list.
jReferencedTables :: Lens' JobStatistics2 [TableReference]
jReferencedTables
  = lens _jReferencedTables
      (\ s a -> s{_jReferencedTables = a})
      . _Default
      . _Coerce

-- | [Output-only] Referenced routines (persistent user-defined functions and
-- stored procedures) for the job.
jReferencedRoutines :: Lens' JobStatistics2 [RoutineReference]
jReferencedRoutines
  = lens _jReferencedRoutines
      (\ s a -> s{_jReferencedRoutines = a})
      . _Default
      . _Coerce

-- | The type of query statement, if valid. Possible values (new values might
-- be added in the future): \"SELECT\": SELECT query. \"INSERT\": INSERT
-- query; see
-- https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-manipulation-language.
-- \"UPDATE\": UPDATE query; see
-- https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-manipulation-language.
-- \"DELETE\": DELETE query; see
-- https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-manipulation-language.
-- \"MERGE\": MERGE query; see
-- https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-manipulation-language.
-- \"ALTER_TABLE\": ALTER TABLE query. \"ALTER_VIEW\": ALTER VIEW query.
-- \"ASSERT\": ASSERT condition AS \'description\'. \"CREATE_FUNCTION\":
-- CREATE FUNCTION query. \"CREATE_MODEL\": CREATE [OR REPLACE] MODEL ...
-- AS SELECT ... . \"CREATE_PROCEDURE\": CREATE PROCEDURE query.
-- \"CREATE_TABLE\": CREATE [OR REPLACE] TABLE without AS SELECT.
-- \"CREATE_TABLE_AS_SELECT\": CREATE [OR REPLACE] TABLE ... AS SELECT ...
-- . \"CREATE_VIEW\": CREATE [OR REPLACE] VIEW ... AS SELECT ... .
-- \"DROP_FUNCTION\" : DROP FUNCTION query. \"DROP_PROCEDURE\": DROP
-- PROCEDURE query. \"DROP_TABLE\": DROP TABLE query. \"DROP_VIEW\": DROP
-- VIEW query.
jStatementType :: Lens' JobStatistics2 (Maybe Text)
jStatementType
  = lens _jStatementType
      (\ s a -> s{_jStatementType = a})

-- | [Output-only] Job resource usage breakdown by reservation.
jReservationUsage :: Lens' JobStatistics2 [JobStatistics2ReservationUsageItem]
jReservationUsage
  = lens _jReservationUsage
      (\ s a -> s{_jReservationUsage = a})
      . _Default
      . _Coerce

-- | [Output-only] The number of rows affected by a DML statement. Present
-- only for DML statements INSERT, UPDATE or DELETE.
jNumDmlAffectedRows :: Lens' JobStatistics2 (Maybe Int64)
jNumDmlAffectedRows
  = lens _jNumDmlAffectedRows
      (\ s a -> s{_jNumDmlAffectedRows = a})
      . mapping _Coerce

-- | [Output-only] [Beta] Describes a timeline of job execution.
jTimeline :: Lens' JobStatistics2 [QueryTimelineSample]
jTimeline
  = lens _jTimeline (\ s a -> s{_jTimeline = a}) .
      _Default
      . _Coerce

-- | [Output-only] The DDL destination table. Present only for ALTER TABLE
-- RENAME TO queries. Note that ddl_target_table is used just for its type
-- information.
jDdlDestinationTable :: Lens' JobStatistics2 (Maybe TableReference)
jDdlDestinationTable
  = lens _jDdlDestinationTable
      (\ s a -> s{_jDdlDestinationTable = a})

-- | [Output-only] Describes execution plan for the query.
jQueryPlan :: Lens' JobStatistics2 [ExplainQueryStage]
jQueryPlan
  = lens _jQueryPlan (\ s a -> s{_jQueryPlan = a}) .
      _Default
      . _Coerce

-- | [Output-only] Whether the query result was fetched from the query cache.
jCacheHit :: Lens' JobStatistics2 (Maybe Bool)
jCacheHit
  = lens _jCacheHit (\ s a -> s{_jCacheHit = a})

-- | [Output-only] Total bytes billed for the job.
jTotalBytesBilled :: Lens' JobStatistics2 (Maybe Int64)
jTotalBytesBilled
  = lens _jTotalBytesBilled
      (\ s a -> s{_jTotalBytesBilled = a})
      . mapping _Coerce

-- | The DDL operation performed, possibly dependent on the pre-existence of
-- the DDL target. Possible values (new values might be added in the
-- future): \"CREATE\": The query created the DDL target. \"SKIP\": No-op.
-- Example cases: the query is CREATE TABLE IF NOT EXISTS while the table
-- already exists, or the query is DROP TABLE IF EXISTS while the table
-- does not exist. \"REPLACE\": The query replaced the DDL target. Example
-- case: the query is CREATE OR REPLACE TABLE, and the table already
-- exists. \"DROP\": The query deleted the DDL target.
jDdlOperationPerformed :: Lens' JobStatistics2 (Maybe Text)
jDdlOperationPerformed
  = lens _jDdlOperationPerformed
      (\ s a -> s{_jDdlOperationPerformed = a})

-- | [Output-only] Total number of partitions processed from all partitioned
-- tables referenced in the job.
jTotalPartitionsProcessed :: Lens' JobStatistics2 (Maybe Int64)
jTotalPartitionsProcessed
  = lens _jTotalPartitionsProcessed
      (\ s a -> s{_jTotalPartitionsProcessed = a})
      . mapping _Coerce

instance FromJSON JobStatistics2 where
        parseJSON
          = withObject "JobStatistics2"
              (\ o ->
                 JobStatistics2' <$>
                   (o .:? "modelTrainingExpectedTotalIteration") <*>
                     (o .:? "modelTraining")
                     <*> (o .:? "ddlTargetDataset")
                     <*> (o .:? "biEngineStatistics")
                     <*> (o .:? "totalSlotMs")
                     <*> (o .:? "ddlTargetRoutine")
                     <*> (o .:? "ddlAffectedRowAccessPolicyCount")
                     <*> (o .:? "ddlTargetTable")
                     <*> (o .:? "ddlTargetRowAccessPolicy")
                     <*> (o .:? "estimatedBytesProcessed")
                     <*> (o .:? "modelTrainingCurrentIteration")
                     <*> (o .:? "schema")
                     <*> (o .:? "totalBytesProcessed")
                     <*> (o .:? "billingTier")
                     <*> (o .:? "totalBytesProcessedAccuracy")
                     <*> (o .:? "dmlStats")
                     <*> (o .:? "undeclaredQueryParameters" .!= mempty)
                     <*> (o .:? "referencedTables" .!= mempty)
                     <*> (o .:? "referencedRoutines" .!= mempty)
                     <*> (o .:? "statementType")
                     <*> (o .:? "reservationUsage" .!= mempty)
                     <*> (o .:? "numDmlAffectedRows")
                     <*> (o .:? "timeline" .!= mempty)
                     <*> (o .:? "ddlDestinationTable")
                     <*> (o .:? "queryPlan" .!= mempty)
                     <*> (o .:? "cacheHit")
                     <*> (o .:? "totalBytesBilled")
                     <*> (o .:? "ddlOperationPerformed")
                     <*> (o .:? "totalPartitionsProcessed"))

instance ToJSON JobStatistics2 where
        toJSON JobStatistics2'{..}
          = object
              (catMaybes
                 [("modelTrainingExpectedTotalIteration" .=) <$>
                    _jModelTrainingExpectedTotalIteration,
                  ("modelTraining" .=) <$> _jModelTraining,
                  ("ddlTargetDataset" .=) <$> _jDdlTargetDataSet,
                  ("biEngineStatistics" .=) <$> _jBiEngineStatistics,
                  ("totalSlotMs" .=) <$> _jTotalSlotMs,
                  ("ddlTargetRoutine" .=) <$> _jDdlTargetRoutine,
                  ("ddlAffectedRowAccessPolicyCount" .=) <$>
                    _jDdlAffectedRowAccessPolicyCount,
                  ("ddlTargetTable" .=) <$> _jDdlTargetTable,
                  ("ddlTargetRowAccessPolicy" .=) <$>
                    _jDdlTargetRowAccessPolicy,
                  ("estimatedBytesProcessed" .=) <$>
                    _jEstimatedBytesProcessed,
                  ("modelTrainingCurrentIteration" .=) <$>
                    _jModelTrainingCurrentIteration,
                  ("schema" .=) <$> _jSchema,
                  ("totalBytesProcessed" .=) <$> _jTotalBytesProcessed,
                  ("billingTier" .=) <$> _jBillingTier,
                  ("totalBytesProcessedAccuracy" .=) <$>
                    _jTotalBytesProcessedAccuracy,
                  ("dmlStats" .=) <$> _jDmlStats,
                  ("undeclaredQueryParameters" .=) <$>
                    _jUndeclaredQueryParameters,
                  ("referencedTables" .=) <$> _jReferencedTables,
                  ("referencedRoutines" .=) <$> _jReferencedRoutines,
                  ("statementType" .=) <$> _jStatementType,
                  ("reservationUsage" .=) <$> _jReservationUsage,
                  ("numDmlAffectedRows" .=) <$> _jNumDmlAffectedRows,
                  ("timeline" .=) <$> _jTimeline,
                  ("ddlDestinationTable" .=) <$> _jDdlDestinationTable,
                  ("queryPlan" .=) <$> _jQueryPlan,
                  ("cacheHit" .=) <$> _jCacheHit,
                  ("totalBytesBilled" .=) <$> _jTotalBytesBilled,
                  ("ddlOperationPerformed" .=) <$>
                    _jDdlOperationPerformed,
                  ("totalPartitionsProcessed" .=) <$>
                    _jTotalPartitionsProcessed])

-- | Arima coefficients.
--
-- /See:/ 'arimaCoefficients' smart constructor.
data ArimaCoefficients =
  ArimaCoefficients'
    { _acInterceptCoefficient :: !(Maybe (Textual Double))
    , _acMovingAverageCoefficients :: !(Maybe [Textual Double])
    , _acAutoRegressiveCoefficients :: !(Maybe [Textual Double])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArimaCoefficients' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acInterceptCoefficient'
--
-- * 'acMovingAverageCoefficients'
--
-- * 'acAutoRegressiveCoefficients'
arimaCoefficients
    :: ArimaCoefficients
arimaCoefficients =
  ArimaCoefficients'
    { _acInterceptCoefficient = Nothing
    , _acMovingAverageCoefficients = Nothing
    , _acAutoRegressiveCoefficients = Nothing
    }


-- | Intercept coefficient, just a double not an array.
acInterceptCoefficient :: Lens' ArimaCoefficients (Maybe Double)
acInterceptCoefficient
  = lens _acInterceptCoefficient
      (\ s a -> s{_acInterceptCoefficient = a})
      . mapping _Coerce

-- | Moving-average coefficients, an array of double.
acMovingAverageCoefficients :: Lens' ArimaCoefficients [Double]
acMovingAverageCoefficients
  = lens _acMovingAverageCoefficients
      (\ s a -> s{_acMovingAverageCoefficients = a})
      . _Default
      . _Coerce

-- | Auto-regressive coefficients, an array of double.
acAutoRegressiveCoefficients :: Lens' ArimaCoefficients [Double]
acAutoRegressiveCoefficients
  = lens _acAutoRegressiveCoefficients
      (\ s a -> s{_acAutoRegressiveCoefficients = a})
      . _Default
      . _Coerce

instance FromJSON ArimaCoefficients where
        parseJSON
          = withObject "ArimaCoefficients"
              (\ o ->
                 ArimaCoefficients' <$>
                   (o .:? "interceptCoefficient") <*>
                     (o .:? "movingAverageCoefficients" .!= mempty)
                     <*> (o .:? "autoRegressiveCoefficients" .!= mempty))

instance ToJSON ArimaCoefficients where
        toJSON ArimaCoefficients'{..}
          = object
              (catMaybes
                 [("interceptCoefficient" .=) <$>
                    _acInterceptCoefficient,
                  ("movingAverageCoefficients" .=) <$>
                    _acMovingAverageCoefficients,
                  ("autoRegressiveCoefficients" .=) <$>
                    _acAutoRegressiveCoefficients])

--
-- /See:/ 'hivePartitioningOptions' smart constructor.
data HivePartitioningOptions =
  HivePartitioningOptions'
    { _hpoMode :: !(Maybe Text)
    , _hpoRequirePartitionFilter :: !(Maybe Bool)
    , _hpoSourceURIPrefix :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HivePartitioningOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hpoMode'
--
-- * 'hpoRequirePartitionFilter'
--
-- * 'hpoSourceURIPrefix'
hivePartitioningOptions
    :: HivePartitioningOptions
hivePartitioningOptions =
  HivePartitioningOptions'
    { _hpoMode = Nothing
    , _hpoRequirePartitionFilter = Nothing
    , _hpoSourceURIPrefix = Nothing
    }


-- | [Optional] When set, what mode of hive partitioning to use when reading
-- data. The following modes are supported. (1) AUTO: automatically infer
-- partition key name(s) and type(s). (2) STRINGS: automatically infer
-- partition key name(s). All types are interpreted as strings. (3) CUSTOM:
-- partition key schema is encoded in the source URI prefix. Not all
-- storage formats support hive partitioning. Requesting hive partitioning
-- on an unsupported format will lead to an error. Currently supported
-- types include: AVRO, CSV, JSON, ORC and Parquet.
hpoMode :: Lens' HivePartitioningOptions (Maybe Text)
hpoMode = lens _hpoMode (\ s a -> s{_hpoMode = a})

-- | [Optional] If set to true, queries over this table require a partition
-- filter that can be used for partition elimination to be specified. Note
-- that this field should only be true when creating a permanent external
-- table or querying a temporary external table. Hive-partitioned loads
-- with requirePartitionFilter explicitly set to true will fail.
hpoRequirePartitionFilter :: Lens' HivePartitioningOptions (Maybe Bool)
hpoRequirePartitionFilter
  = lens _hpoRequirePartitionFilter
      (\ s a -> s{_hpoRequirePartitionFilter = a})

-- | [Optional] When hive partition detection is requested, a common prefix
-- for all source uris should be supplied. The prefix must end immediately
-- before the partition key encoding begins. For example, consider files
-- following this data layout.
-- gs:\/\/bucket\/path_to_table\/dt=2019-01-01\/country=BR\/id=7\/file.avro
-- gs:\/\/bucket\/path_to_table\/dt=2018-12-31\/country=CA\/id=3\/file.avro
-- When hive partitioning is requested with either AUTO or STRINGS
-- detection, the common prefix can be either of
-- gs:\/\/bucket\/path_to_table or gs:\/\/bucket\/path_to_table\/ (trailing
-- slash does not matter).
hpoSourceURIPrefix :: Lens' HivePartitioningOptions (Maybe Text)
hpoSourceURIPrefix
  = lens _hpoSourceURIPrefix
      (\ s a -> s{_hpoSourceURIPrefix = a})

instance FromJSON HivePartitioningOptions where
        parseJSON
          = withObject "HivePartitioningOptions"
              (\ o ->
                 HivePartitioningOptions' <$>
                   (o .:? "mode") <*> (o .:? "requirePartitionFilter")
                     <*> (o .:? "sourceUriPrefix"))

instance ToJSON HivePartitioningOptions where
        toJSON HivePartitioningOptions'{..}
          = object
              (catMaybes
                 [("mode" .=) <$> _hpoMode,
                  ("requirePartitionFilter" .=) <$>
                    _hpoRequirePartitionFilter,
                  ("sourceUriPrefix" .=) <$> _hpoSourceURIPrefix])

-- | BigQuery-specific metadata about a location. This will be set on
-- google.cloud.location.Location.metadata in Cloud Location API responses.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata =
  LocationMetadata'
    { _lmLegacyLocationId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmLegacyLocationId'
locationMetadata
    :: LocationMetadata
locationMetadata = LocationMetadata' {_lmLegacyLocationId = Nothing}


-- | The legacy BigQuery location ID, e.g. “EU” for the “europe” location.
-- This is for any API consumers that need the legacy “US” and “EU”
-- locations.
lmLegacyLocationId :: Lens' LocationMetadata (Maybe Text)
lmLegacyLocationId
  = lens _lmLegacyLocationId
      (\ s a -> s{_lmLegacyLocationId = a})

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o ->
                 LocationMetadata' <$> (o .:? "legacyLocationId"))

instance ToJSON LocationMetadata where
        toJSON LocationMetadata'{..}
          = object
              (catMaybes
                 [("legacyLocationId" .=) <$> _lmLegacyLocationId])

-- | [Optional] The categories attached to this field, used for field-level
-- access control.
--
-- /See:/ 'tableFieldSchemaCategories' smart constructor.
newtype TableFieldSchemaCategories =
  TableFieldSchemaCategories'
    { _tfscNames :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableFieldSchemaCategories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfscNames'
tableFieldSchemaCategories
    :: TableFieldSchemaCategories
tableFieldSchemaCategories = TableFieldSchemaCategories' {_tfscNames = Nothing}


-- | A list of category resource names. For example,
-- \"projects\/1\/taxonomies\/2\/categories\/3\". At most 5 categories are
-- allowed.
tfscNames :: Lens' TableFieldSchemaCategories [Text]
tfscNames
  = lens _tfscNames (\ s a -> s{_tfscNames = a}) .
      _Default
      . _Coerce

instance FromJSON TableFieldSchemaCategories where
        parseJSON
          = withObject "TableFieldSchemaCategories"
              (\ o ->
                 TableFieldSchemaCategories' <$>
                   (o .:? "names" .!= mempty))

instance ToJSON TableFieldSchemaCategories where
        toJSON TableFieldSchemaCategories'{..}
          = object (catMaybes [("names" .=) <$> _tfscNames])

--
-- /See:/ 'jobStatus' smart constructor.
data JobStatus =
  JobStatus'
    { _jsState :: !(Maybe Text)
    , _jsErrorResult :: !(Maybe ErrorProto)
    , _jsErrors :: !(Maybe [ErrorProto])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsState'
--
-- * 'jsErrorResult'
--
-- * 'jsErrors'
jobStatus
    :: JobStatus
jobStatus =
  JobStatus' {_jsState = Nothing, _jsErrorResult = Nothing, _jsErrors = Nothing}


-- | [Output-only] Running state of the job.
jsState :: Lens' JobStatus (Maybe Text)
jsState = lens _jsState (\ s a -> s{_jsState = a})

-- | [Output-only] Final error result of the job. If present, indicates that
-- the job has completed and was unsuccessful.
jsErrorResult :: Lens' JobStatus (Maybe ErrorProto)
jsErrorResult
  = lens _jsErrorResult
      (\ s a -> s{_jsErrorResult = a})

-- | [Output-only] The first errors encountered during the running of the
-- job. The final message includes the number of errors that caused the
-- process to stop. Errors here do not necessarily mean that the job has
-- completed or was unsuccessful.
jsErrors :: Lens' JobStatus [ErrorProto]
jsErrors
  = lens _jsErrors (\ s a -> s{_jsErrors = a}) .
      _Default
      . _Coerce

instance FromJSON JobStatus where
        parseJSON
          = withObject "JobStatus"
              (\ o ->
                 JobStatus' <$>
                   (o .:? "state") <*> (o .:? "errorResult") <*>
                     (o .:? "errors" .!= mempty))

instance ToJSON JobStatus where
        toJSON JobStatus'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _jsState,
                  ("errorResult" .=) <$> _jsErrorResult,
                  ("errors" .=) <$> _jsErrors])

-- | Weights associated with each label class, for rebalancing the training
-- data. Only applicable for classification models.
--
-- /See:/ 'trainingOptionsLabelClassWeights' smart constructor.
newtype TrainingOptionsLabelClassWeights =
  TrainingOptionsLabelClassWeights'
    { _tolcwAddtional :: HashMap Text (Textual Double)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrainingOptionsLabelClassWeights' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tolcwAddtional'
trainingOptionsLabelClassWeights
    :: HashMap Text Double -- ^ 'tolcwAddtional'
    -> TrainingOptionsLabelClassWeights
trainingOptionsLabelClassWeights pTolcwAddtional_ =
  TrainingOptionsLabelClassWeights'
    {_tolcwAddtional = _Coerce # pTolcwAddtional_}


tolcwAddtional :: Lens' TrainingOptionsLabelClassWeights (HashMap Text Double)
tolcwAddtional
  = lens _tolcwAddtional
      (\ s a -> s{_tolcwAddtional = a})
      . _Coerce

instance FromJSON TrainingOptionsLabelClassWeights
         where
        parseJSON
          = withObject "TrainingOptionsLabelClassWeights"
              (\ o ->
                 TrainingOptionsLabelClassWeights' <$>
                   (parseJSONObject o))

instance ToJSON TrainingOptionsLabelClassWeights
         where
        toJSON = toJSON . _tolcwAddtional

-- | The labels associated with this table. You can use these to organize and
-- group your tables. Label keys and values can be no longer than 63
-- characters, can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter and each label
-- in the list must have a different key.
--
-- /See:/ 'tableLabels' smart constructor.
newtype TableLabels =
  TableLabels'
    { _tlAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlAddtional'
tableLabels
    :: HashMap Text Text -- ^ 'tlAddtional'
    -> TableLabels
tableLabels pTlAddtional_ =
  TableLabels' {_tlAddtional = _Coerce # pTlAddtional_}


tlAddtional :: Lens' TableLabels (HashMap Text Text)
tlAddtional
  = lens _tlAddtional (\ s a -> s{_tlAddtional = a}) .
      _Coerce

instance FromJSON TableLabels where
        parseJSON
          = withObject "TableLabels"
              (\ o -> TableLabels' <$> (parseJSONObject o))

instance ToJSON TableLabels where
        toJSON = toJSON . _tlAddtional

--
-- /See:/ 'destinationTableProperties' smart constructor.
data DestinationTableProperties =
  DestinationTableProperties'
    { _dtpFriendlyName :: !(Maybe Text)
    , _dtpLabels :: !(Maybe DestinationTablePropertiesLabels)
    , _dtpDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DestinationTableProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtpFriendlyName'
--
-- * 'dtpLabels'
--
-- * 'dtpDescription'
destinationTableProperties
    :: DestinationTableProperties
destinationTableProperties =
  DestinationTableProperties'
    { _dtpFriendlyName = Nothing
    , _dtpLabels = Nothing
    , _dtpDescription = Nothing
    }


-- | [Optional] The friendly name for the destination table. This will only
-- be used if the destination table is newly created. If the table already
-- exists and a value different than the current friendly name is provided,
-- the job will fail.
dtpFriendlyName :: Lens' DestinationTableProperties (Maybe Text)
dtpFriendlyName
  = lens _dtpFriendlyName
      (\ s a -> s{_dtpFriendlyName = a})

-- | [Optional] The labels associated with this table. You can use these to
-- organize and group your tables. This will only be used if the
-- destination table is newly created. If the table already exists and
-- labels are different than the current labels are provided, the job will
-- fail.
dtpLabels :: Lens' DestinationTableProperties (Maybe DestinationTablePropertiesLabels)
dtpLabels
  = lens _dtpLabels (\ s a -> s{_dtpLabels = a})

-- | [Optional] The description for the destination table. This will only be
-- used if the destination table is newly created. If the table already
-- exists and a value different than the current description is provided,
-- the job will fail.
dtpDescription :: Lens' DestinationTableProperties (Maybe Text)
dtpDescription
  = lens _dtpDescription
      (\ s a -> s{_dtpDescription = a})

instance FromJSON DestinationTableProperties where
        parseJSON
          = withObject "DestinationTableProperties"
              (\ o ->
                 DestinationTableProperties' <$>
                   (o .:? "friendlyName") <*> (o .:? "labels") <*>
                     (o .:? "description"))

instance ToJSON DestinationTableProperties where
        toJSON DestinationTableProperties'{..}
          = object
              (catMaybes
                 [("friendlyName" .=) <$> _dtpFriendlyName,
                  ("labels" .=) <$> _dtpLabels,
                  ("description" .=) <$> _dtpDescription])

-- | Provides the configuration for logging a type of permissions. Example: {
-- \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\",
-- \"exempted_members\": [ \"user:jose\'example.com\" ] }, { \"log_type\":
-- \"DATA_WRITE\" } ] } This enables \'DATA_READ\' and \'DATA_WRITE\'
-- logging, while exempting jose\'example.com from DATA_READ logging.
--
-- /See:/ 'auditLogConfig' smart constructor.
data AuditLogConfig =
  AuditLogConfig'
    { _alcLogType :: !(Maybe AuditLogConfigLogType)
    , _alcExemptedMembers :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alcLogType'
--
-- * 'alcExemptedMembers'
auditLogConfig
    :: AuditLogConfig
auditLogConfig =
  AuditLogConfig' {_alcLogType = Nothing, _alcExemptedMembers = Nothing}


-- | The log type that this config enables.
alcLogType :: Lens' AuditLogConfig (Maybe AuditLogConfigLogType)
alcLogType
  = lens _alcLogType (\ s a -> s{_alcLogType = a})

-- | Specifies the identities that do not cause logging for this type of
-- permission. Follows the same format of Binding.members.
alcExemptedMembers :: Lens' AuditLogConfig [Text]
alcExemptedMembers
  = lens _alcExemptedMembers
      (\ s a -> s{_alcExemptedMembers = a})
      . _Default
      . _Coerce

instance FromJSON AuditLogConfig where
        parseJSON
          = withObject "AuditLogConfig"
              (\ o ->
                 AuditLogConfig' <$>
                   (o .:? "logType") <*>
                     (o .:? "exemptedMembers" .!= mempty))

instance ToJSON AuditLogConfig where
        toJSON AuditLogConfig'{..}
          = object
              (catMaybes
                 [("logType" .=) <$> _alcLogType,
                  ("exemptedMembers" .=) <$> _alcExemptedMembers])

--
-- /See:/ 'dataSetAccessItem' smart constructor.
data DataSetAccessItem =
  DataSetAccessItem'
    { _dsaiDataSet :: !(Maybe DataSetAccessEntry)
    , _dsaiGroupByEmail :: !(Maybe Text)
    , _dsaiDomain :: !(Maybe Text)
    , _dsaiSpecialGroup :: !(Maybe Text)
    , _dsaiRole :: !(Maybe Text)
    , _dsaiIAMMember :: !(Maybe Text)
    , _dsaiView :: !(Maybe TableReference)
    , _dsaiRoutine :: !(Maybe RoutineReference)
    , _dsaiUserByEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetAccessItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaiDataSet'
--
-- * 'dsaiGroupByEmail'
--
-- * 'dsaiDomain'
--
-- * 'dsaiSpecialGroup'
--
-- * 'dsaiRole'
--
-- * 'dsaiIAMMember'
--
-- * 'dsaiView'
--
-- * 'dsaiRoutine'
--
-- * 'dsaiUserByEmail'
dataSetAccessItem
    :: DataSetAccessItem
dataSetAccessItem =
  DataSetAccessItem'
    { _dsaiDataSet = Nothing
    , _dsaiGroupByEmail = Nothing
    , _dsaiDomain = Nothing
    , _dsaiSpecialGroup = Nothing
    , _dsaiRole = Nothing
    , _dsaiIAMMember = Nothing
    , _dsaiView = Nothing
    , _dsaiRoutine = Nothing
    , _dsaiUserByEmail = Nothing
    }


-- | [Pick one] A grant authorizing all resources of a particular type in a
-- particular dataset access to this dataset. Only views are supported for
-- now. The role field is not required when this field is set. If that
-- dataset is deleted and re-created, its access needs to be granted again
-- via an update operation.
dsaiDataSet :: Lens' DataSetAccessItem (Maybe DataSetAccessEntry)
dsaiDataSet
  = lens _dsaiDataSet (\ s a -> s{_dsaiDataSet = a})

-- | [Pick one] An email address of a Google Group to grant access to. Maps
-- to IAM policy member \"group:GROUP\".
dsaiGroupByEmail :: Lens' DataSetAccessItem (Maybe Text)
dsaiGroupByEmail
  = lens _dsaiGroupByEmail
      (\ s a -> s{_dsaiGroupByEmail = a})

-- | [Pick one] A domain to grant access to. Any users signed in with the
-- domain specified will be granted the specified access. Example:
-- \"example.com\". Maps to IAM policy member \"domain:DOMAIN\".
dsaiDomain :: Lens' DataSetAccessItem (Maybe Text)
dsaiDomain
  = lens _dsaiDomain (\ s a -> s{_dsaiDomain = a})

-- | [Pick one] A special group to grant access to. Possible values include:
-- projectOwners: Owners of the enclosing project. projectReaders: Readers
-- of the enclosing project. projectWriters: Writers of the enclosing
-- project. allAuthenticatedUsers: All authenticated BigQuery users. Maps
-- to similarly-named IAM members.
dsaiSpecialGroup :: Lens' DataSetAccessItem (Maybe Text)
dsaiSpecialGroup
  = lens _dsaiSpecialGroup
      (\ s a -> s{_dsaiSpecialGroup = a})

-- | [Required] An IAM role ID that should be granted to the user, group, or
-- domain specified in this access entry. The following legacy mappings
-- will be applied: OWNER roles\/bigquery.dataOwner WRITER
-- roles\/bigquery.dataEditor READER roles\/bigquery.dataViewer This field
-- will accept any of the above formats, but will return only the legacy
-- format. For example, if you set this field to
-- \"roles\/bigquery.dataOwner\", it will be returned back as \"OWNER\".
dsaiRole :: Lens' DataSetAccessItem (Maybe Text)
dsaiRole = lens _dsaiRole (\ s a -> s{_dsaiRole = a})

-- | [Pick one] Some other type of member that appears in the IAM Policy but
-- isn\'t a user, group, domain, or special group.
dsaiIAMMember :: Lens' DataSetAccessItem (Maybe Text)
dsaiIAMMember
  = lens _dsaiIAMMember
      (\ s a -> s{_dsaiIAMMember = a})

-- | [Pick one] A view from a different dataset to grant access to. Queries
-- executed against that view will have read access to tables in this
-- dataset. The role field is not required when this field is set. If that
-- view is updated by any user, access to the view needs to be granted
-- again via an update operation.
dsaiView :: Lens' DataSetAccessItem (Maybe TableReference)
dsaiView = lens _dsaiView (\ s a -> s{_dsaiView = a})

-- | [Pick one] A routine from a different dataset to grant access to.
-- Queries executed against that routine will have read access to
-- views\/tables\/routines in this dataset. Only UDF is supported for now.
-- The role field is not required when this field is set. If that routine
-- is updated by any user, access to the routine needs to be granted again
-- via an update operation.
dsaiRoutine :: Lens' DataSetAccessItem (Maybe RoutineReference)
dsaiRoutine
  = lens _dsaiRoutine (\ s a -> s{_dsaiRoutine = a})

-- | [Pick one] An email address of a user to grant access to. For example:
-- fred\'example.com. Maps to IAM policy member \"user:EMAIL\" or
-- \"serviceAccount:EMAIL\".
dsaiUserByEmail :: Lens' DataSetAccessItem (Maybe Text)
dsaiUserByEmail
  = lens _dsaiUserByEmail
      (\ s a -> s{_dsaiUserByEmail = a})

instance FromJSON DataSetAccessItem where
        parseJSON
          = withObject "DataSetAccessItem"
              (\ o ->
                 DataSetAccessItem' <$>
                   (o .:? "dataset") <*> (o .:? "groupByEmail") <*>
                     (o .:? "domain")
                     <*> (o .:? "specialGroup")
                     <*> (o .:? "role")
                     <*> (o .:? "iamMember")
                     <*> (o .:? "view")
                     <*> (o .:? "routine")
                     <*> (o .:? "userByEmail"))

instance ToJSON DataSetAccessItem where
        toJSON DataSetAccessItem'{..}
          = object
              (catMaybes
                 [("dataset" .=) <$> _dsaiDataSet,
                  ("groupByEmail" .=) <$> _dsaiGroupByEmail,
                  ("domain" .=) <$> _dsaiDomain,
                  ("specialGroup" .=) <$> _dsaiSpecialGroup,
                  ("role" .=) <$> _dsaiRole,
                  ("iamMember" .=) <$> _dsaiIAMMember,
                  ("view" .=) <$> _dsaiView,
                  ("routine" .=) <$> _dsaiRoutine,
                  ("userByEmail" .=) <$> _dsaiUserByEmail])

--
-- /See:/ 'bqmlTrainingRun' smart constructor.
data BqmlTrainingRun =
  BqmlTrainingRun'
    { _btrState :: !(Maybe Text)
    , _btrStartTime :: !(Maybe DateTime')
    , _btrIterationResults :: !(Maybe [BqmlIterationResult])
    , _btrTrainingOptions :: !(Maybe BqmlTrainingRunTrainingOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BqmlTrainingRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'btrState'
--
-- * 'btrStartTime'
--
-- * 'btrIterationResults'
--
-- * 'btrTrainingOptions'
bqmlTrainingRun
    :: BqmlTrainingRun
bqmlTrainingRun =
  BqmlTrainingRun'
    { _btrState = Nothing
    , _btrStartTime = Nothing
    , _btrIterationResults = Nothing
    , _btrTrainingOptions = Nothing
    }


-- | [Output-only, Beta] Different state applicable for a training run. IN
-- PROGRESS: Training run is in progress. FAILED: Training run ended due to
-- a non-retryable failure. SUCCEEDED: Training run successfully completed.
-- CANCELLED: Training run cancelled by the user.
btrState :: Lens' BqmlTrainingRun (Maybe Text)
btrState = lens _btrState (\ s a -> s{_btrState = a})

-- | [Output-only, Beta] Training run start time in milliseconds since the
-- epoch.
btrStartTime :: Lens' BqmlTrainingRun (Maybe UTCTime)
btrStartTime
  = lens _btrStartTime (\ s a -> s{_btrStartTime = a})
      . mapping _DateTime

-- | [Output-only, Beta] List of each iteration results.
btrIterationResults :: Lens' BqmlTrainingRun [BqmlIterationResult]
btrIterationResults
  = lens _btrIterationResults
      (\ s a -> s{_btrIterationResults = a})
      . _Default
      . _Coerce

-- | [Output-only, Beta] Training options used by this training run. These
-- options are mutable for subsequent training runs. Default values are
-- explicitly stored for options not specified in the input query of the
-- first training run. For subsequent training runs, any option not
-- explicitly specified in the input query will be copied from the previous
-- training run.
btrTrainingOptions :: Lens' BqmlTrainingRun (Maybe BqmlTrainingRunTrainingOptions)
btrTrainingOptions
  = lens _btrTrainingOptions
      (\ s a -> s{_btrTrainingOptions = a})

instance FromJSON BqmlTrainingRun where
        parseJSON
          = withObject "BqmlTrainingRun"
              (\ o ->
                 BqmlTrainingRun' <$>
                   (o .:? "state") <*> (o .:? "startTime") <*>
                     (o .:? "iterationResults" .!= mempty)
                     <*> (o .:? "trainingOptions"))

instance ToJSON BqmlTrainingRun where
        toJSON BqmlTrainingRun'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _btrState,
                  ("startTime" .=) <$> _btrStartTime,
                  ("iterationResults" .=) <$> _btrIterationResults,
                  ("trainingOptions" .=) <$> _btrTrainingOptions])

-- | A table type
--
-- /See:/ 'standardSQLTableType' smart constructor.
newtype StandardSQLTableType =
  StandardSQLTableType'
    { _ssqlttColumns :: Maybe [StandardSQLField]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StandardSQLTableType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssqlttColumns'
standardSQLTableType
    :: StandardSQLTableType
standardSQLTableType = StandardSQLTableType' {_ssqlttColumns = Nothing}


-- | The columns in this table type
ssqlttColumns :: Lens' StandardSQLTableType [StandardSQLField]
ssqlttColumns
  = lens _ssqlttColumns
      (\ s a -> s{_ssqlttColumns = a})
      . _Default
      . _Coerce

instance FromJSON StandardSQLTableType where
        parseJSON
          = withObject "StandardSQLTableType"
              (\ o ->
                 StandardSQLTableType' <$>
                   (o .:? "columns" .!= mempty))

instance ToJSON StandardSQLTableType where
        toJSON StandardSQLTableType'{..}
          = object
              (catMaybes [("columns" .=) <$> _ssqlttColumns])

--
-- /See:/ 'tableDataInsertAllResponse' smart constructor.
data TableDataInsertAllResponse =
  TableDataInsertAllResponse'
    { _tKind :: !Text
    , _tInsertErrors :: !(Maybe [TableDataInsertAllResponseInsertErrorsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableDataInsertAllResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tKind'
--
-- * 'tInsertErrors'
tableDataInsertAllResponse
    :: TableDataInsertAllResponse
tableDataInsertAllResponse =
  TableDataInsertAllResponse'
    {_tKind = "bigquery#tableDataInsertAllResponse", _tInsertErrors = Nothing}


-- | The resource type of the response.
tKind :: Lens' TableDataInsertAllResponse Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | An array of errors for rows that were not inserted.
tInsertErrors :: Lens' TableDataInsertAllResponse [TableDataInsertAllResponseInsertErrorsItem]
tInsertErrors
  = lens _tInsertErrors
      (\ s a -> s{_tInsertErrors = a})
      . _Default
      . _Coerce

instance FromJSON TableDataInsertAllResponse where
        parseJSON
          = withObject "TableDataInsertAllResponse"
              (\ o ->
                 TableDataInsertAllResponse' <$>
                   (o .:? "kind" .!=
                      "bigquery#tableDataInsertAllResponse")
                     <*> (o .:? "insertErrors" .!= mempty))

instance ToJSON TableDataInsertAllResponse where
        toJSON TableDataInsertAllResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _tKind),
                  ("insertErrors" .=) <$> _tInsertErrors])

--
-- /See:/ 'queryParameterType' smart constructor.
data QueryParameterType =
  QueryParameterType'
    { _qptStructTypes :: !(Maybe [QueryParameterTypeStructTypesItem])
    , _qptType :: !(Maybe Text)
    , _qptArrayType :: !(Maybe QueryParameterType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryParameterType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qptStructTypes'
--
-- * 'qptType'
--
-- * 'qptArrayType'
queryParameterType
    :: QueryParameterType
queryParameterType =
  QueryParameterType'
    {_qptStructTypes = Nothing, _qptType = Nothing, _qptArrayType = Nothing}


-- | [Optional] The types of the fields of this struct, in order, if this is
-- a struct.
qptStructTypes :: Lens' QueryParameterType [QueryParameterTypeStructTypesItem]
qptStructTypes
  = lens _qptStructTypes
      (\ s a -> s{_qptStructTypes = a})
      . _Default
      . _Coerce

-- | [Required] The top level type of this field.
qptType :: Lens' QueryParameterType (Maybe Text)
qptType = lens _qptType (\ s a -> s{_qptType = a})

-- | [Optional] The type of the array\'s elements, if this is an array.
qptArrayType :: Lens' QueryParameterType (Maybe QueryParameterType)
qptArrayType
  = lens _qptArrayType (\ s a -> s{_qptArrayType = a})

instance FromJSON QueryParameterType where
        parseJSON
          = withObject "QueryParameterType"
              (\ o ->
                 QueryParameterType' <$>
                   (o .:? "structTypes" .!= mempty) <*> (o .:? "type")
                     <*> (o .:? "arrayType"))

instance ToJSON QueryParameterType where
        toJSON QueryParameterType'{..}
          = object
              (catMaybes
                 [("structTypes" .=) <$> _qptStructTypes,
                  ("type" .=) <$> _qptType,
                  ("arrayType" .=) <$> _qptArrayType])

--
-- /See:/ 'table' smart constructor.
data Table =
  Table'
    { _tabMaterializedView :: !(Maybe MaterializedViewDefinition)
    , _tabCreationTime :: !(Maybe (Textual Int64))
    , _tabEtag :: !(Maybe Text)
    , _tabNumBytes :: !(Maybe (Textual Int64))
    , _tabClustering :: !(Maybe Clustering)
    , _tabExternalDataConfiguration :: !(Maybe ExternalDataConfiguration)
    , _tabRangePartitioning :: !(Maybe RangePartitioning)
    , _tabLocation :: !(Maybe Text)
    , _tabTableReference :: !(Maybe TableReference)
    , _tabFriendlyName :: !(Maybe Text)
    , _tabKind :: !Text
    , _tabLastModifiedTime :: !(Maybe (Textual Word64))
    , _tabSchema :: !(Maybe TableSchema)
    , _tabSnapshotDefinition :: !(Maybe SnapshotDefinition)
    , _tabStreamingBuffer :: !(Maybe Streamingbuffer)
    , _tabSelfLink :: !(Maybe Text)
    , _tabRequirePartitionFilter :: !(Maybe Bool)
    , _tabEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    , _tabModel :: !(Maybe ModelDefinition)
    , _tabTimePartitioning :: !(Maybe TimePartitioning)
    , _tabNumRows :: !(Maybe (Textual Word64))
    , _tabNumPhysicalBytes :: !(Maybe (Textual Int64))
    , _tabView :: !(Maybe ViewDefinition)
    , _tabId :: !(Maybe Text)
    , _tabLabels :: !(Maybe TableLabels)
    , _tabType :: !(Maybe Text)
    , _tabNumLongTermBytes :: !(Maybe (Textual Int64))
    , _tabExpirationTime :: !(Maybe (Textual Int64))
    , _tabDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabMaterializedView'
--
-- * 'tabCreationTime'
--
-- * 'tabEtag'
--
-- * 'tabNumBytes'
--
-- * 'tabClustering'
--
-- * 'tabExternalDataConfiguration'
--
-- * 'tabRangePartitioning'
--
-- * 'tabLocation'
--
-- * 'tabTableReference'
--
-- * 'tabFriendlyName'
--
-- * 'tabKind'
--
-- * 'tabLastModifiedTime'
--
-- * 'tabSchema'
--
-- * 'tabSnapshotDefinition'
--
-- * 'tabStreamingBuffer'
--
-- * 'tabSelfLink'
--
-- * 'tabRequirePartitionFilter'
--
-- * 'tabEncryptionConfiguration'
--
-- * 'tabModel'
--
-- * 'tabTimePartitioning'
--
-- * 'tabNumRows'
--
-- * 'tabNumPhysicalBytes'
--
-- * 'tabView'
--
-- * 'tabId'
--
-- * 'tabLabels'
--
-- * 'tabType'
--
-- * 'tabNumLongTermBytes'
--
-- * 'tabExpirationTime'
--
-- * 'tabDescription'
table
    :: Table
table =
  Table'
    { _tabMaterializedView = Nothing
    , _tabCreationTime = Nothing
    , _tabEtag = Nothing
    , _tabNumBytes = Nothing
    , _tabClustering = Nothing
    , _tabExternalDataConfiguration = Nothing
    , _tabRangePartitioning = Nothing
    , _tabLocation = Nothing
    , _tabTableReference = Nothing
    , _tabFriendlyName = Nothing
    , _tabKind = "bigquery#table"
    , _tabLastModifiedTime = Nothing
    , _tabSchema = Nothing
    , _tabSnapshotDefinition = Nothing
    , _tabStreamingBuffer = Nothing
    , _tabSelfLink = Nothing
    , _tabRequirePartitionFilter = Nothing
    , _tabEncryptionConfiguration = Nothing
    , _tabModel = Nothing
    , _tabTimePartitioning = Nothing
    , _tabNumRows = Nothing
    , _tabNumPhysicalBytes = Nothing
    , _tabView = Nothing
    , _tabId = Nothing
    , _tabLabels = Nothing
    , _tabType = Nothing
    , _tabNumLongTermBytes = Nothing
    , _tabExpirationTime = Nothing
    , _tabDescription = Nothing
    }


-- | [Optional] Materialized view definition.
tabMaterializedView :: Lens' Table (Maybe MaterializedViewDefinition)
tabMaterializedView
  = lens _tabMaterializedView
      (\ s a -> s{_tabMaterializedView = a})

-- | [Output-only] The time when this table was created, in milliseconds
-- since the epoch.
tabCreationTime :: Lens' Table (Maybe Int64)
tabCreationTime
  = lens _tabCreationTime
      (\ s a -> s{_tabCreationTime = a})
      . mapping _Coerce

-- | [Output-only] A hash of the table metadata. Used to ensure there were no
-- concurrent modifications to the resource when attempting an update. Not
-- guaranteed to change when the table contents or the fields numRows,
-- numBytes, numLongTermBytes or lastModifiedTime change.
tabEtag :: Lens' Table (Maybe Text)
tabEtag = lens _tabEtag (\ s a -> s{_tabEtag = a})

-- | [Output-only] The size of this table in bytes, excluding any data in the
-- streaming buffer.
tabNumBytes :: Lens' Table (Maybe Int64)
tabNumBytes
  = lens _tabNumBytes (\ s a -> s{_tabNumBytes = a}) .
      mapping _Coerce

-- | [Beta] Clustering specification for the table. Must be specified with
-- partitioning, data in the table will be first partitioned and
-- subsequently clustered.
tabClustering :: Lens' Table (Maybe Clustering)
tabClustering
  = lens _tabClustering
      (\ s a -> s{_tabClustering = a})

-- | [Optional] Describes the data format, location, and other properties of
-- a table stored outside of BigQuery. By defining these properties, the
-- data source can then be queried as if it were a standard BigQuery table.
tabExternalDataConfiguration :: Lens' Table (Maybe ExternalDataConfiguration)
tabExternalDataConfiguration
  = lens _tabExternalDataConfiguration
      (\ s a -> s{_tabExternalDataConfiguration = a})

-- | [TrustedTester] Range partitioning specification for this table. Only
-- one of timePartitioning and rangePartitioning should be specified.
tabRangePartitioning :: Lens' Table (Maybe RangePartitioning)
tabRangePartitioning
  = lens _tabRangePartitioning
      (\ s a -> s{_tabRangePartitioning = a})

-- | [Output-only] The geographic location where the table resides. This
-- value is inherited from the dataset.
tabLocation :: Lens' Table (Maybe Text)
tabLocation
  = lens _tabLocation (\ s a -> s{_tabLocation = a})

-- | [Required] Reference describing the ID of this table.
tabTableReference :: Lens' Table (Maybe TableReference)
tabTableReference
  = lens _tabTableReference
      (\ s a -> s{_tabTableReference = a})

-- | [Optional] A descriptive name for this table.
tabFriendlyName :: Lens' Table (Maybe Text)
tabFriendlyName
  = lens _tabFriendlyName
      (\ s a -> s{_tabFriendlyName = a})

-- | [Output-only] The type of the resource.
tabKind :: Lens' Table Text
tabKind = lens _tabKind (\ s a -> s{_tabKind = a})

-- | [Output-only] The time when this table was last modified, in
-- milliseconds since the epoch.
tabLastModifiedTime :: Lens' Table (Maybe Word64)
tabLastModifiedTime
  = lens _tabLastModifiedTime
      (\ s a -> s{_tabLastModifiedTime = a})
      . mapping _Coerce

-- | [Optional] Describes the schema of this table.
tabSchema :: Lens' Table (Maybe TableSchema)
tabSchema
  = lens _tabSchema (\ s a -> s{_tabSchema = a})

-- | [Output-only] Snapshot definition.
tabSnapshotDefinition :: Lens' Table (Maybe SnapshotDefinition)
tabSnapshotDefinition
  = lens _tabSnapshotDefinition
      (\ s a -> s{_tabSnapshotDefinition = a})

-- | [Output-only] Contains information regarding this table\'s streaming
-- buffer, if one is present. This field will be absent if the table is not
-- being streamed to or if there is no data in the streaming buffer.
tabStreamingBuffer :: Lens' Table (Maybe Streamingbuffer)
tabStreamingBuffer
  = lens _tabStreamingBuffer
      (\ s a -> s{_tabStreamingBuffer = a})

-- | [Output-only] A URL that can be used to access this resource again.
tabSelfLink :: Lens' Table (Maybe Text)
tabSelfLink
  = lens _tabSelfLink (\ s a -> s{_tabSelfLink = a})

-- | [Optional] If set to true, queries over this table require a partition
-- filter that can be used for partition elimination to be specified.
tabRequirePartitionFilter :: Lens' Table (Maybe Bool)
tabRequirePartitionFilter
  = lens _tabRequirePartitionFilter
      (\ s a -> s{_tabRequirePartitionFilter = a})

-- | Custom encryption configuration (e.g., Cloud KMS keys).
tabEncryptionConfiguration :: Lens' Table (Maybe EncryptionConfiguration)
tabEncryptionConfiguration
  = lens _tabEncryptionConfiguration
      (\ s a -> s{_tabEncryptionConfiguration = a})

-- | [Output-only, Beta] Present iff this table represents a ML model.
-- Describes the training information for the model, and it is required to
-- run \'PREDICT\' queries.
tabModel :: Lens' Table (Maybe ModelDefinition)
tabModel = lens _tabModel (\ s a -> s{_tabModel = a})

-- | Time-based partitioning specification for this table. Only one of
-- timePartitioning and rangePartitioning should be specified.
tabTimePartitioning :: Lens' Table (Maybe TimePartitioning)
tabTimePartitioning
  = lens _tabTimePartitioning
      (\ s a -> s{_tabTimePartitioning = a})

-- | [Output-only] The number of rows of data in this table, excluding any
-- data in the streaming buffer.
tabNumRows :: Lens' Table (Maybe Word64)
tabNumRows
  = lens _tabNumRows (\ s a -> s{_tabNumRows = a}) .
      mapping _Coerce

-- | [Output-only] [TrustedTester] The physical size of this table in bytes,
-- excluding any data in the streaming buffer. This includes compression
-- and storage used for time travel.
tabNumPhysicalBytes :: Lens' Table (Maybe Int64)
tabNumPhysicalBytes
  = lens _tabNumPhysicalBytes
      (\ s a -> s{_tabNumPhysicalBytes = a})
      . mapping _Coerce

-- | [Optional] The view definition.
tabView :: Lens' Table (Maybe ViewDefinition)
tabView = lens _tabView (\ s a -> s{_tabView = a})

-- | [Output-only] An opaque ID uniquely identifying the table.
tabId :: Lens' Table (Maybe Text)
tabId = lens _tabId (\ s a -> s{_tabId = a})

-- | The labels associated with this table. You can use these to organize and
-- group your tables. Label keys and values can be no longer than 63
-- characters, can only contain lowercase letters, numeric characters,
-- underscores and dashes. International characters are allowed. Label
-- values are optional. Label keys must start with a letter and each label
-- in the list must have a different key.
tabLabels :: Lens' Table (Maybe TableLabels)
tabLabels
  = lens _tabLabels (\ s a -> s{_tabLabels = a})

-- | [Output-only] Describes the table type. The following values are
-- supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined
-- by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy
-- of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose
-- result is persisted. EXTERNAL: A table that references data stored in an
-- external storage system, such as Google Cloud Storage. The default value
-- is TABLE.
tabType :: Lens' Table (Maybe Text)
tabType = lens _tabType (\ s a -> s{_tabType = a})

-- | [Output-only] The number of bytes in the table that are considered
-- \"long-term storage\".
tabNumLongTermBytes :: Lens' Table (Maybe Int64)
tabNumLongTermBytes
  = lens _tabNumLongTermBytes
      (\ s a -> s{_tabNumLongTermBytes = a})
      . mapping _Coerce

-- | [Optional] The time when this table expires, in milliseconds since the
-- epoch. If not present, the table will persist indefinitely. Expired
-- tables will be deleted and their storage reclaimed. The
-- defaultTableExpirationMs property of the encapsulating dataset can be
-- used to set a default expirationTime on newly created tables.
tabExpirationTime :: Lens' Table (Maybe Int64)
tabExpirationTime
  = lens _tabExpirationTime
      (\ s a -> s{_tabExpirationTime = a})
      . mapping _Coerce

-- | [Optional] A user-friendly description of this table.
tabDescription :: Lens' Table (Maybe Text)
tabDescription
  = lens _tabDescription
      (\ s a -> s{_tabDescription = a})

instance FromJSON Table where
        parseJSON
          = withObject "Table"
              (\ o ->
                 Table' <$>
                   (o .:? "materializedView") <*> (o .:? "creationTime")
                     <*> (o .:? "etag")
                     <*> (o .:? "numBytes")
                     <*> (o .:? "clustering")
                     <*> (o .:? "externalDataConfiguration")
                     <*> (o .:? "rangePartitioning")
                     <*> (o .:? "location")
                     <*> (o .:? "tableReference")
                     <*> (o .:? "friendlyName")
                     <*> (o .:? "kind" .!= "bigquery#table")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "schema")
                     <*> (o .:? "snapshotDefinition")
                     <*> (o .:? "streamingBuffer")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "requirePartitionFilter")
                     <*> (o .:? "encryptionConfiguration")
                     <*> (o .:? "model")
                     <*> (o .:? "timePartitioning")
                     <*> (o .:? "numRows")
                     <*> (o .:? "numPhysicalBytes")
                     <*> (o .:? "view")
                     <*> (o .:? "id")
                     <*> (o .:? "labels")
                     <*> (o .:? "type")
                     <*> (o .:? "numLongTermBytes")
                     <*> (o .:? "expirationTime")
                     <*> (o .:? "description"))

instance ToJSON Table where
        toJSON Table'{..}
          = object
              (catMaybes
                 [("materializedView" .=) <$> _tabMaterializedView,
                  ("creationTime" .=) <$> _tabCreationTime,
                  ("etag" .=) <$> _tabEtag,
                  ("numBytes" .=) <$> _tabNumBytes,
                  ("clustering" .=) <$> _tabClustering,
                  ("externalDataConfiguration" .=) <$>
                    _tabExternalDataConfiguration,
                  ("rangePartitioning" .=) <$> _tabRangePartitioning,
                  ("location" .=) <$> _tabLocation,
                  ("tableReference" .=) <$> _tabTableReference,
                  ("friendlyName" .=) <$> _tabFriendlyName,
                  Just ("kind" .= _tabKind),
                  ("lastModifiedTime" .=) <$> _tabLastModifiedTime,
                  ("schema" .=) <$> _tabSchema,
                  ("snapshotDefinition" .=) <$> _tabSnapshotDefinition,
                  ("streamingBuffer" .=) <$> _tabStreamingBuffer,
                  ("selfLink" .=) <$> _tabSelfLink,
                  ("requirePartitionFilter" .=) <$>
                    _tabRequirePartitionFilter,
                  ("encryptionConfiguration" .=) <$>
                    _tabEncryptionConfiguration,
                  ("model" .=) <$> _tabModel,
                  ("timePartitioning" .=) <$> _tabTimePartitioning,
                  ("numRows" .=) <$> _tabNumRows,
                  ("numPhysicalBytes" .=) <$> _tabNumPhysicalBytes,
                  ("view" .=) <$> _tabView, ("id" .=) <$> _tabId,
                  ("labels" .=) <$> _tabLabels,
                  ("type" .=) <$> _tabType,
                  ("numLongTermBytes" .=) <$> _tabNumLongTermBytes,
                  ("expirationTime" .=) <$> _tabExpirationTime,
                  ("description" .=) <$> _tabDescription])

-- | ARIMA model fitting metrics.
--
-- /See:/ 'arimaFittingMetrics' smart constructor.
data ArimaFittingMetrics =
  ArimaFittingMetrics'
    { _afmLogLikelihood :: !(Maybe (Textual Double))
    , _afmVariance :: !(Maybe (Textual Double))
    , _afmAic :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ArimaFittingMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afmLogLikelihood'
--
-- * 'afmVariance'
--
-- * 'afmAic'
arimaFittingMetrics
    :: ArimaFittingMetrics
arimaFittingMetrics =
  ArimaFittingMetrics'
    {_afmLogLikelihood = Nothing, _afmVariance = Nothing, _afmAic = Nothing}


-- | Log-likelihood.
afmLogLikelihood :: Lens' ArimaFittingMetrics (Maybe Double)
afmLogLikelihood
  = lens _afmLogLikelihood
      (\ s a -> s{_afmLogLikelihood = a})
      . mapping _Coerce

-- | Variance.
afmVariance :: Lens' ArimaFittingMetrics (Maybe Double)
afmVariance
  = lens _afmVariance (\ s a -> s{_afmVariance = a}) .
      mapping _Coerce

-- | AIC.
afmAic :: Lens' ArimaFittingMetrics (Maybe Double)
afmAic
  = lens _afmAic (\ s a -> s{_afmAic = a}) .
      mapping _Coerce

instance FromJSON ArimaFittingMetrics where
        parseJSON
          = withObject "ArimaFittingMetrics"
              (\ o ->
                 ArimaFittingMetrics' <$>
                   (o .:? "logLikelihood") <*> (o .:? "variance") <*>
                     (o .:? "aic"))

instance ToJSON ArimaFittingMetrics where
        toJSON ArimaFittingMetrics'{..}
          = object
              (catMaybes
                 [("logLikelihood" .=) <$> _afmLogLikelihood,
                  ("variance" .=) <$> _afmVariance,
                  ("aic" .=) <$> _afmAic])

--
-- /See:/ 'parquetOptions' smart constructor.
data ParquetOptions =
  ParquetOptions'
    { _poEnableListInference :: !(Maybe Bool)
    , _poEnumAsString :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParquetOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'poEnableListInference'
--
-- * 'poEnumAsString'
parquetOptions
    :: ParquetOptions
parquetOptions =
  ParquetOptions' {_poEnableListInference = Nothing, _poEnumAsString = Nothing}


-- | [Optional] Indicates whether to use schema inference specifically for
-- Parquet LIST logical type.
poEnableListInference :: Lens' ParquetOptions (Maybe Bool)
poEnableListInference
  = lens _poEnableListInference
      (\ s a -> s{_poEnableListInference = a})

-- | [Optional] Indicates whether to infer Parquet ENUM logical type as
-- STRING instead of BYTES by default.
poEnumAsString :: Lens' ParquetOptions (Maybe Bool)
poEnumAsString
  = lens _poEnumAsString
      (\ s a -> s{_poEnumAsString = a})

instance FromJSON ParquetOptions where
        parseJSON
          = withObject "ParquetOptions"
              (\ o ->
                 ParquetOptions' <$>
                   (o .:? "enableListInference") <*>
                     (o .:? "enumAsString"))

instance ToJSON ParquetOptions where
        toJSON ParquetOptions'{..}
          = object
              (catMaybes
                 [("enableListInference" .=) <$>
                    _poEnableListInference,
                  ("enumAsString" .=) <$> _poEnumAsString])

-- | A user-defined function or a stored procedure.
--
-- /See:/ 'routine' smart constructor.
data Routine =
  Routine'
    { _rCreationTime :: !(Maybe (Textual Int64))
    , _rEtag :: !(Maybe Text)
    , _rDefinitionBody :: !(Maybe Text)
    , _rRoutineReference :: !(Maybe RoutineReference)
    , _rArguments :: !(Maybe [Argument])
    , _rLastModifiedTime :: !(Maybe (Textual Int64))
    , _rRoutineType :: !(Maybe RoutineRoutineType)
    , _rDeterminismLevel :: !(Maybe RoutineDeterminismLevel)
    , _rReturnTableType :: !(Maybe StandardSQLTableType)
    , _rLanguage :: !(Maybe RoutineLanguage)
    , _rReturnType :: !(Maybe StandardSQLDataType)
    , _rImportedLibraries :: !(Maybe [Text])
    , _rDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Routine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rCreationTime'
--
-- * 'rEtag'
--
-- * 'rDefinitionBody'
--
-- * 'rRoutineReference'
--
-- * 'rArguments'
--
-- * 'rLastModifiedTime'
--
-- * 'rRoutineType'
--
-- * 'rDeterminismLevel'
--
-- * 'rReturnTableType'
--
-- * 'rLanguage'
--
-- * 'rReturnType'
--
-- * 'rImportedLibraries'
--
-- * 'rDescription'
routine
    :: Routine
routine =
  Routine'
    { _rCreationTime = Nothing
    , _rEtag = Nothing
    , _rDefinitionBody = Nothing
    , _rRoutineReference = Nothing
    , _rArguments = Nothing
    , _rLastModifiedTime = Nothing
    , _rRoutineType = Nothing
    , _rDeterminismLevel = Nothing
    , _rReturnTableType = Nothing
    , _rLanguage = Nothing
    , _rReturnType = Nothing
    , _rImportedLibraries = Nothing
    , _rDescription = Nothing
    }


-- | Output only. The time when this routine was created, in milliseconds
-- since the epoch.
rCreationTime :: Lens' Routine (Maybe Int64)
rCreationTime
  = lens _rCreationTime
      (\ s a -> s{_rCreationTime = a})
      . mapping _Coerce

-- | Output only. A hash of this resource.
rEtag :: Lens' Routine (Maybe Text)
rEtag = lens _rEtag (\ s a -> s{_rEtag = a})

-- | Required. The body of the routine. For functions, this is the expression
-- in the AS clause. If language=SQL, it is the substring inside (but
-- excluding) the parentheses. For example, for the function created with
-- the following statement: \`CREATE FUNCTION JoinLines(x string, y string)
-- as (concat(x, \"\\n\", y))\` The definition_body is \`concat(x, \"\\n\",
-- y)\` (\\n is not replaced with linebreak). If language=JAVASCRIPT, it is
-- the evaluated string in the AS clause. For example, for the function
-- created with the following statement: \`CREATE FUNCTION f() RETURNS
-- STRING LANGUAGE js AS \'return \"\\n\";\\n\'\` The definition_body is
-- \`return \"\\n\";\\n\` Note that both \\n are replaced with linebreaks.
rDefinitionBody :: Lens' Routine (Maybe Text)
rDefinitionBody
  = lens _rDefinitionBody
      (\ s a -> s{_rDefinitionBody = a})

-- | Required. Reference describing the ID of this routine.
rRoutineReference :: Lens' Routine (Maybe RoutineReference)
rRoutineReference
  = lens _rRoutineReference
      (\ s a -> s{_rRoutineReference = a})

-- | Optional.
rArguments :: Lens' Routine [Argument]
rArguments
  = lens _rArguments (\ s a -> s{_rArguments = a}) .
      _Default
      . _Coerce

-- | Output only. The time when this routine was last modified, in
-- milliseconds since the epoch.
rLastModifiedTime :: Lens' Routine (Maybe Int64)
rLastModifiedTime
  = lens _rLastModifiedTime
      (\ s a -> s{_rLastModifiedTime = a})
      . mapping _Coerce

-- | Required. The type of routine.
rRoutineType :: Lens' Routine (Maybe RoutineRoutineType)
rRoutineType
  = lens _rRoutineType (\ s a -> s{_rRoutineType = a})

-- | Optional. [Experimental] The determinism level of the JavaScript UDF if
-- defined.
rDeterminismLevel :: Lens' Routine (Maybe RoutineDeterminismLevel)
rDeterminismLevel
  = lens _rDeterminismLevel
      (\ s a -> s{_rDeterminismLevel = a})

-- | Optional. Set only if Routine is a \"TABLE_VALUED_FUNCTION\".
rReturnTableType :: Lens' Routine (Maybe StandardSQLTableType)
rReturnTableType
  = lens _rReturnTableType
      (\ s a -> s{_rReturnTableType = a})

-- | Optional. Defaults to \"SQL\".
rLanguage :: Lens' Routine (Maybe RoutineLanguage)
rLanguage
  = lens _rLanguage (\ s a -> s{_rLanguage = a})

-- | Optional if language = \"SQL\"; required otherwise. If absent, the
-- return type is inferred from definition_body at query time in each query
-- that references this routine. If present, then the evaluated result will
-- be cast to the specified returned type at query time. For example, for
-- the functions created with the following statements: * \`CREATE FUNCTION
-- Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);\` * \`CREATE
-- FUNCTION Increment(x FLOAT64) AS (Add(x, 1));\` * \`CREATE FUNCTION
-- Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));\` The return_type
-- is \`{type_kind: \"FLOAT64\"}\` for \`Add\` and \`Decrement\`, and is
-- absent for \`Increment\` (inferred as FLOAT64 at query time). Suppose
-- the function \`Add\` is replaced by \`CREATE OR REPLACE FUNCTION Add(x
-- INT64, y INT64) AS (x + y);\` Then the inferred return type of
-- \`Increment\` is automatically changed to INT64 at query time, while the
-- return type of \`Decrement\` remains FLOAT64.
rReturnType :: Lens' Routine (Maybe StandardSQLDataType)
rReturnType
  = lens _rReturnType (\ s a -> s{_rReturnType = a})

-- | Optional. If language = \"JAVASCRIPT\", this field stores the path of
-- the imported JAVASCRIPT libraries.
rImportedLibraries :: Lens' Routine [Text]
rImportedLibraries
  = lens _rImportedLibraries
      (\ s a -> s{_rImportedLibraries = a})
      . _Default
      . _Coerce

-- | Optional. [Experimental] The description of the routine if defined.
rDescription :: Lens' Routine (Maybe Text)
rDescription
  = lens _rDescription (\ s a -> s{_rDescription = a})

instance FromJSON Routine where
        parseJSON
          = withObject "Routine"
              (\ o ->
                 Routine' <$>
                   (o .:? "creationTime") <*> (o .:? "etag") <*>
                     (o .:? "definitionBody")
                     <*> (o .:? "routineReference")
                     <*> (o .:? "arguments" .!= mempty)
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "routineType")
                     <*> (o .:? "determinismLevel")
                     <*> (o .:? "returnTableType")
                     <*> (o .:? "language")
                     <*> (o .:? "returnType")
                     <*> (o .:? "importedLibraries" .!= mempty)
                     <*> (o .:? "description"))

instance ToJSON Routine where
        toJSON Routine'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _rCreationTime,
                  ("etag" .=) <$> _rEtag,
                  ("definitionBody" .=) <$> _rDefinitionBody,
                  ("routineReference" .=) <$> _rRoutineReference,
                  ("arguments" .=) <$> _rArguments,
                  ("lastModifiedTime" .=) <$> _rLastModifiedTime,
                  ("routineType" .=) <$> _rRoutineType,
                  ("determinismLevel" .=) <$> _rDeterminismLevel,
                  ("returnTableType" .=) <$> _rReturnTableType,
                  ("language" .=) <$> _rLanguage,
                  ("returnType" .=) <$> _rReturnType,
                  ("importedLibraries" .=) <$> _rImportedLibraries,
                  ("description" .=) <$> _rDescription])

-- | Represents access on a subset of rows on the specified table, defined by
-- its filter predicate. Access to the subset of rows is controlled by its
-- IAM policy.
--
-- /See:/ 'rowAccessPolicy' smart constructor.
data RowAccessPolicy =
  RowAccessPolicy'
    { _rapCreationTime :: !(Maybe DateTime')
    , _rapEtag :: !(Maybe Text)
    , _rapRowAccessPolicyReference :: !(Maybe RowAccessPolicyReference)
    , _rapLastModifiedTime :: !(Maybe DateTime')
    , _rapFilterPredicate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RowAccessPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rapCreationTime'
--
-- * 'rapEtag'
--
-- * 'rapRowAccessPolicyReference'
--
-- * 'rapLastModifiedTime'
--
-- * 'rapFilterPredicate'
rowAccessPolicy
    :: RowAccessPolicy
rowAccessPolicy =
  RowAccessPolicy'
    { _rapCreationTime = Nothing
    , _rapEtag = Nothing
    , _rapRowAccessPolicyReference = Nothing
    , _rapLastModifiedTime = Nothing
    , _rapFilterPredicate = Nothing
    }


-- | Output only. The time when this row access policy was created, in
-- milliseconds since the epoch.
rapCreationTime :: Lens' RowAccessPolicy (Maybe UTCTime)
rapCreationTime
  = lens _rapCreationTime
      (\ s a -> s{_rapCreationTime = a})
      . mapping _DateTime

-- | Output only. A hash of this resource.
rapEtag :: Lens' RowAccessPolicy (Maybe Text)
rapEtag = lens _rapEtag (\ s a -> s{_rapEtag = a})

-- | Required. Reference describing the ID of this row access policy.
rapRowAccessPolicyReference :: Lens' RowAccessPolicy (Maybe RowAccessPolicyReference)
rapRowAccessPolicyReference
  = lens _rapRowAccessPolicyReference
      (\ s a -> s{_rapRowAccessPolicyReference = a})

-- | Output only. The time when this row access policy was last modified, in
-- milliseconds since the epoch.
rapLastModifiedTime :: Lens' RowAccessPolicy (Maybe UTCTime)
rapLastModifiedTime
  = lens _rapLastModifiedTime
      (\ s a -> s{_rapLastModifiedTime = a})
      . mapping _DateTime

-- | Required. A SQL boolean expression that represents the rows defined by
-- this row access policy, similar to the boolean expression in a WHERE
-- clause of a SELECT query on a table. References to other tables,
-- routines, and temporary functions are not supported. Examples:
-- region=\"EU\" date_field = CAST(\'2019-9-27\' as DATE) nullable_field is
-- not NULL numeric_field BETWEEN 1.0 AND 5.0
rapFilterPredicate :: Lens' RowAccessPolicy (Maybe Text)
rapFilterPredicate
  = lens _rapFilterPredicate
      (\ s a -> s{_rapFilterPredicate = a})

instance FromJSON RowAccessPolicy where
        parseJSON
          = withObject "RowAccessPolicy"
              (\ o ->
                 RowAccessPolicy' <$>
                   (o .:? "creationTime") <*> (o .:? "etag") <*>
                     (o .:? "rowAccessPolicyReference")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "filterPredicate"))

instance ToJSON RowAccessPolicy where
        toJSON RowAccessPolicy'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _rapCreationTime,
                  ("etag" .=) <$> _rapEtag,
                  ("rowAccessPolicyReference" .=) <$>
                    _rapRowAccessPolicyReference,
                  ("lastModifiedTime" .=) <$> _rapLastModifiedTime,
                  ("filterPredicate" .=) <$> _rapFilterPredicate])

--
-- /See:/ 'errorProto' smart constructor.
data ErrorProto =
  ErrorProto'
    { _epDebugInfo :: !(Maybe Text)
    , _epLocation :: !(Maybe Text)
    , _epReason :: !(Maybe Text)
    , _epMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ErrorProto' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epDebugInfo'
--
-- * 'epLocation'
--
-- * 'epReason'
--
-- * 'epMessage'
errorProto
    :: ErrorProto
errorProto =
  ErrorProto'
    { _epDebugInfo = Nothing
    , _epLocation = Nothing
    , _epReason = Nothing
    , _epMessage = Nothing
    }


-- | Debugging information. This property is internal to Google and should
-- not be used.
epDebugInfo :: Lens' ErrorProto (Maybe Text)
epDebugInfo
  = lens _epDebugInfo (\ s a -> s{_epDebugInfo = a})

-- | Specifies where the error occurred, if present.
epLocation :: Lens' ErrorProto (Maybe Text)
epLocation
  = lens _epLocation (\ s a -> s{_epLocation = a})

-- | A short error code that summarizes the error.
epReason :: Lens' ErrorProto (Maybe Text)
epReason = lens _epReason (\ s a -> s{_epReason = a})

-- | A human-readable description of the error.
epMessage :: Lens' ErrorProto (Maybe Text)
epMessage
  = lens _epMessage (\ s a -> s{_epMessage = a})

instance FromJSON ErrorProto where
        parseJSON
          = withObject "ErrorProto"
              (\ o ->
                 ErrorProto' <$>
                   (o .:? "debugInfo") <*> (o .:? "location") <*>
                     (o .:? "reason")
                     <*> (o .:? "message"))

instance ToJSON ErrorProto where
        toJSON ErrorProto'{..}
          = object
              (catMaybes
                 [("debugInfo" .=) <$> _epDebugInfo,
                  ("location" .=) <$> _epLocation,
                  ("reason" .=) <$> _epReason,
                  ("message" .=) <$> _epMessage])

--
-- /See:/ 'csvOptions' smart constructor.
data CSVOptions =
  CSVOptions'
    { _coSkipLeadingRows :: !(Maybe (Textual Int64))
    , _coAllowJaggedRows :: !(Maybe Bool)
    , _coAllowQuotedNewlines :: !(Maybe Bool)
    , _coQuote :: !Text
    , _coEncoding :: !(Maybe Text)
    , _coFieldDelimiter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CSVOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coSkipLeadingRows'
--
-- * 'coAllowJaggedRows'
--
-- * 'coAllowQuotedNewlines'
--
-- * 'coQuote'
--
-- * 'coEncoding'
--
-- * 'coFieldDelimiter'
csvOptions
    :: CSVOptions
csvOptions =
  CSVOptions'
    { _coSkipLeadingRows = Nothing
    , _coAllowJaggedRows = Nothing
    , _coAllowQuotedNewlines = Nothing
    , _coQuote = "\""
    , _coEncoding = Nothing
    , _coFieldDelimiter = Nothing
    }


-- | [Optional] The number of rows at the top of a CSV file that BigQuery
-- will skip when reading the data. The default value is 0. This property
-- is useful if you have header rows in the file that should be skipped.
-- When autodetect is on, the behavior is the following: * skipLeadingRows
-- unspecified - Autodetect tries to detect headers in the first row. If
-- they are not detected, the row is read as data. Otherwise data is read
-- starting from the second row. * skipLeadingRows is 0 - Instructs
-- autodetect that there are no headers and data should be read starting
-- from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1
-- rows and tries to detect headers in row N. If headers are not detected,
-- row N is just skipped. Otherwise row N is used to extract column names
-- for the detected schema.
coSkipLeadingRows :: Lens' CSVOptions (Maybe Int64)
coSkipLeadingRows
  = lens _coSkipLeadingRows
      (\ s a -> s{_coSkipLeadingRows = a})
      . mapping _Coerce

-- | [Optional] Indicates if BigQuery should accept rows that are missing
-- trailing optional columns. If true, BigQuery treats missing trailing
-- columns as null values. If false, records with missing trailing columns
-- are treated as bad records, and if there are too many bad records, an
-- invalid error is returned in the job result. The default value is false.
coAllowJaggedRows :: Lens' CSVOptions (Maybe Bool)
coAllowJaggedRows
  = lens _coAllowJaggedRows
      (\ s a -> s{_coAllowJaggedRows = a})

-- | [Optional] Indicates if BigQuery should allow quoted data sections that
-- contain newline characters in a CSV file. The default value is false.
coAllowQuotedNewlines :: Lens' CSVOptions (Maybe Bool)
coAllowQuotedNewlines
  = lens _coAllowQuotedNewlines
      (\ s a -> s{_coAllowQuotedNewlines = a})

-- | [Optional] The value that is used to quote data sections in a CSV file.
-- BigQuery converts the string to ISO-8859-1 encoding, and then uses the
-- first byte of the encoded string to split the data in its raw, binary
-- state. The default value is a double-quote (\'\"\'). If your data does
-- not contain quoted sections, set the property value to an empty string.
-- If your data contains quoted newline characters, you must also set the
-- allowQuotedNewlines property to true.
coQuote :: Lens' CSVOptions Text
coQuote = lens _coQuote (\ s a -> s{_coQuote = a})

-- | [Optional] The character encoding of the data. The supported values are
-- UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the
-- data after the raw, binary data has been split using the values of the
-- quote and fieldDelimiter properties.
coEncoding :: Lens' CSVOptions (Maybe Text)
coEncoding
  = lens _coEncoding (\ s a -> s{_coEncoding = a})

-- | [Optional] The separator for fields in a CSV file. BigQuery converts the
-- string to ISO-8859-1 encoding, and then uses the first byte of the
-- encoded string to split the data in its raw, binary state. BigQuery also
-- supports the escape sequence \"\\t\" to specify a tab separator. The
-- default value is a comma (\',\').
coFieldDelimiter :: Lens' CSVOptions (Maybe Text)
coFieldDelimiter
  = lens _coFieldDelimiter
      (\ s a -> s{_coFieldDelimiter = a})

instance FromJSON CSVOptions where
        parseJSON
          = withObject "CSVOptions"
              (\ o ->
                 CSVOptions' <$>
                   (o .:? "skipLeadingRows") <*>
                     (o .:? "allowJaggedRows")
                     <*> (o .:? "allowQuotedNewlines")
                     <*> (o .:? "quote" .!= "\"")
                     <*> (o .:? "encoding")
                     <*> (o .:? "fieldDelimiter"))

instance ToJSON CSVOptions where
        toJSON CSVOptions'{..}
          = object
              (catMaybes
                 [("skipLeadingRows" .=) <$> _coSkipLeadingRows,
                  ("allowJaggedRows" .=) <$> _coAllowJaggedRows,
                  ("allowQuotedNewlines" .=) <$>
                    _coAllowQuotedNewlines,
                  Just ("quote" .= _coQuote),
                  ("encoding" .=) <$> _coEncoding,
                  ("fieldDelimiter" .=) <$> _coFieldDelimiter])

-- | [Optional] The labels associated with this table. You can use these to
-- organize and group your tables. This will only be used if the
-- destination table is newly created. If the table already exists and
-- labels are different than the current labels are provided, the job will
-- fail.
--
-- /See:/ 'destinationTablePropertiesLabels' smart constructor.
newtype DestinationTablePropertiesLabels =
  DestinationTablePropertiesLabels'
    { _dtplAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DestinationTablePropertiesLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtplAddtional'
destinationTablePropertiesLabels
    :: HashMap Text Text -- ^ 'dtplAddtional'
    -> DestinationTablePropertiesLabels
destinationTablePropertiesLabels pDtplAddtional_ =
  DestinationTablePropertiesLabels' {_dtplAddtional = _Coerce # pDtplAddtional_}


dtplAddtional :: Lens' DestinationTablePropertiesLabels (HashMap Text Text)
dtplAddtional
  = lens _dtplAddtional
      (\ s a -> s{_dtplAddtional = a})
      . _Coerce

instance FromJSON DestinationTablePropertiesLabels
         where
        parseJSON
          = withObject "DestinationTablePropertiesLabels"
              (\ o ->
                 DestinationTablePropertiesLabels' <$>
                   (parseJSONObject o))

instance ToJSON DestinationTablePropertiesLabels
         where
        toJSON = toJSON . _dtplAddtional

-- | Response message for the ListRowAccessPolicies method.
--
-- /See:/ 'listRowAccessPoliciesResponse' smart constructor.
data ListRowAccessPoliciesResponse =
  ListRowAccessPoliciesResponse'
    { _lraprNextPageToken :: !(Maybe Text)
    , _lraprRowAccessPolicies :: !(Maybe [RowAccessPolicy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRowAccessPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lraprNextPageToken'
--
-- * 'lraprRowAccessPolicies'
listRowAccessPoliciesResponse
    :: ListRowAccessPoliciesResponse
listRowAccessPoliciesResponse =
  ListRowAccessPoliciesResponse'
    {_lraprNextPageToken = Nothing, _lraprRowAccessPolicies = Nothing}


-- | A token to request the next page of results.
lraprNextPageToken :: Lens' ListRowAccessPoliciesResponse (Maybe Text)
lraprNextPageToken
  = lens _lraprNextPageToken
      (\ s a -> s{_lraprNextPageToken = a})

-- | Row access policies on the requested table.
lraprRowAccessPolicies :: Lens' ListRowAccessPoliciesResponse [RowAccessPolicy]
lraprRowAccessPolicies
  = lens _lraprRowAccessPolicies
      (\ s a -> s{_lraprRowAccessPolicies = a})
      . _Default
      . _Coerce

instance FromJSON ListRowAccessPoliciesResponse where
        parseJSON
          = withObject "ListRowAccessPoliciesResponse"
              (\ o ->
                 ListRowAccessPoliciesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "rowAccessPolicies" .!= mempty))

instance ToJSON ListRowAccessPoliciesResponse where
        toJSON ListRowAccessPoliciesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lraprNextPageToken,
                  ("rowAccessPolicies" .=) <$>
                    _lraprRowAccessPolicies])

--
-- /See:/ 'jobStatistics3' smart constructor.
data JobStatistics3 =
  JobStatistics3'
    { _jsInputFiles :: !(Maybe (Textual Int64))
    , _jsOutputRows :: !(Maybe (Textual Int64))
    , _jsOutputBytes :: !(Maybe (Textual Int64))
    , _jsInputFileBytes :: !(Maybe (Textual Int64))
    , _jsBadRecords :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobStatistics3' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsInputFiles'
--
-- * 'jsOutputRows'
--
-- * 'jsOutputBytes'
--
-- * 'jsInputFileBytes'
--
-- * 'jsBadRecords'
jobStatistics3
    :: JobStatistics3
jobStatistics3 =
  JobStatistics3'
    { _jsInputFiles = Nothing
    , _jsOutputRows = Nothing
    , _jsOutputBytes = Nothing
    , _jsInputFileBytes = Nothing
    , _jsBadRecords = Nothing
    }


-- | [Output-only] Number of source files in a load job.
jsInputFiles :: Lens' JobStatistics3 (Maybe Int64)
jsInputFiles
  = lens _jsInputFiles (\ s a -> s{_jsInputFiles = a})
      . mapping _Coerce

-- | [Output-only] Number of rows imported in a load job. Note that while an
-- import job is in the running state, this value may change.
jsOutputRows :: Lens' JobStatistics3 (Maybe Int64)
jsOutputRows
  = lens _jsOutputRows (\ s a -> s{_jsOutputRows = a})
      . mapping _Coerce

-- | [Output-only] Size of the loaded data in bytes. Note that while a load
-- job is in the running state, this value may change.
jsOutputBytes :: Lens' JobStatistics3 (Maybe Int64)
jsOutputBytes
  = lens _jsOutputBytes
      (\ s a -> s{_jsOutputBytes = a})
      . mapping _Coerce

-- | [Output-only] Number of bytes of source data in a load job.
jsInputFileBytes :: Lens' JobStatistics3 (Maybe Int64)
jsInputFileBytes
  = lens _jsInputFileBytes
      (\ s a -> s{_jsInputFileBytes = a})
      . mapping _Coerce

-- | [Output-only] The number of bad records encountered. Note that if the
-- job has failed because of more bad records encountered than the maximum
-- allowed in the load job configuration, then this number can be less than
-- the total number of bad records present in the input data.
jsBadRecords :: Lens' JobStatistics3 (Maybe Int64)
jsBadRecords
  = lens _jsBadRecords (\ s a -> s{_jsBadRecords = a})
      . mapping _Coerce

instance FromJSON JobStatistics3 where
        parseJSON
          = withObject "JobStatistics3"
              (\ o ->
                 JobStatistics3' <$>
                   (o .:? "inputFiles") <*> (o .:? "outputRows") <*>
                     (o .:? "outputBytes")
                     <*> (o .:? "inputFileBytes")
                     <*> (o .:? "badRecords"))

instance ToJSON JobStatistics3 where
        toJSON JobStatistics3'{..}
          = object
              (catMaybes
                 [("inputFiles" .=) <$> _jsInputFiles,
                  ("outputRows" .=) <$> _jsOutputRows,
                  ("outputBytes" .=) <$> _jsOutputBytes,
                  ("inputFileBytes" .=) <$> _jsInputFileBytes,
                  ("badRecords" .=) <$> _jsBadRecords])

--
-- /See:/ 'queryResponse' smart constructor.
data QueryResponse =
  QueryResponse'
    { _qJobReference :: !(Maybe JobReference)
    , _qKind :: !Text
    , _qSchema :: !(Maybe TableSchema)
    , _qTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _qRows :: !(Maybe [TableRow])
    , _qDmlStats :: !(Maybe DmlStatistics)
    , _qPageToken :: !(Maybe Text)
    , _qSessionInfoTemplate :: !(Maybe SessionInfo)
    , _qNumDmlAffectedRows :: !(Maybe (Textual Int64))
    , _qTotalRows :: !(Maybe (Textual Word64))
    , _qErrors :: !(Maybe [ErrorProto])
    , _qJobComplete :: !(Maybe Bool)
    , _qCacheHit :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qJobReference'
--
-- * 'qKind'
--
-- * 'qSchema'
--
-- * 'qTotalBytesProcessed'
--
-- * 'qRows'
--
-- * 'qDmlStats'
--
-- * 'qPageToken'
--
-- * 'qSessionInfoTemplate'
--
-- * 'qNumDmlAffectedRows'
--
-- * 'qTotalRows'
--
-- * 'qErrors'
--
-- * 'qJobComplete'
--
-- * 'qCacheHit'
queryResponse
    :: QueryResponse
queryResponse =
  QueryResponse'
    { _qJobReference = Nothing
    , _qKind = "bigquery#queryResponse"
    , _qSchema = Nothing
    , _qTotalBytesProcessed = Nothing
    , _qRows = Nothing
    , _qDmlStats = Nothing
    , _qPageToken = Nothing
    , _qSessionInfoTemplate = Nothing
    , _qNumDmlAffectedRows = Nothing
    , _qTotalRows = Nothing
    , _qErrors = Nothing
    , _qJobComplete = Nothing
    , _qCacheHit = Nothing
    }


-- | Reference to the Job that was created to run the query. This field will
-- be present even if the original request timed out, in which case
-- GetQueryResults can be used to read the results once the query has
-- completed. Since this API only returns the first page of results,
-- subsequent pages can be fetched via the same mechanism
-- (GetQueryResults).
qJobReference :: Lens' QueryResponse (Maybe JobReference)
qJobReference
  = lens _qJobReference
      (\ s a -> s{_qJobReference = a})

-- | The resource type.
qKind :: Lens' QueryResponse Text
qKind = lens _qKind (\ s a -> s{_qKind = a})

-- | The schema of the results. Present only when the query completes
-- successfully.
qSchema :: Lens' QueryResponse (Maybe TableSchema)
qSchema = lens _qSchema (\ s a -> s{_qSchema = a})

-- | The total number of bytes processed for this query. If this query was a
-- dry run, this is the number of bytes that would be processed if the
-- query were run.
qTotalBytesProcessed :: Lens' QueryResponse (Maybe Int64)
qTotalBytesProcessed
  = lens _qTotalBytesProcessed
      (\ s a -> s{_qTotalBytesProcessed = a})
      . mapping _Coerce

-- | An object with as many results as can be contained within the maximum
-- permitted reply size. To get any additional rows, you can call
-- GetQueryResults and specify the jobReference returned above.
qRows :: Lens' QueryResponse [TableRow]
qRows
  = lens _qRows (\ s a -> s{_qRows = a}) . _Default .
      _Coerce

-- | [Output-only] Detailed statistics for DML statements Present only for
-- DML statements INSERT, UPDATE, DELETE or TRUNCATE.
qDmlStats :: Lens' QueryResponse (Maybe DmlStatistics)
qDmlStats
  = lens _qDmlStats (\ s a -> s{_qDmlStats = a})

-- | A token used for paging results.
qPageToken :: Lens' QueryResponse (Maybe Text)
qPageToken
  = lens _qPageToken (\ s a -> s{_qPageToken = a})

-- | [Output-only] [Preview] Information of the session if this job is part
-- of one.
qSessionInfoTemplate :: Lens' QueryResponse (Maybe SessionInfo)
qSessionInfoTemplate
  = lens _qSessionInfoTemplate
      (\ s a -> s{_qSessionInfoTemplate = a})

-- | [Output-only] The number of rows affected by a DML statement. Present
-- only for DML statements INSERT, UPDATE or DELETE.
qNumDmlAffectedRows :: Lens' QueryResponse (Maybe Int64)
qNumDmlAffectedRows
  = lens _qNumDmlAffectedRows
      (\ s a -> s{_qNumDmlAffectedRows = a})
      . mapping _Coerce

-- | The total number of rows in the complete query result set, which can be
-- more than the number of rows in this single page of results.
qTotalRows :: Lens' QueryResponse (Maybe Word64)
qTotalRows
  = lens _qTotalRows (\ s a -> s{_qTotalRows = a}) .
      mapping _Coerce

-- | [Output-only] The first errors or warnings encountered during the
-- running of the job. The final message includes the number of errors that
-- caused the process to stop. Errors here do not necessarily mean that the
-- job has completed or was unsuccessful.
qErrors :: Lens' QueryResponse [ErrorProto]
qErrors
  = lens _qErrors (\ s a -> s{_qErrors = a}) . _Default
      . _Coerce

-- | Whether the query has completed or not. If rows or totalRows are
-- present, this will always be true. If this is false, totalRows will not
-- be available.
qJobComplete :: Lens' QueryResponse (Maybe Bool)
qJobComplete
  = lens _qJobComplete (\ s a -> s{_qJobComplete = a})

-- | Whether the query result was fetched from the query cache.
qCacheHit :: Lens' QueryResponse (Maybe Bool)
qCacheHit
  = lens _qCacheHit (\ s a -> s{_qCacheHit = a})

instance FromJSON QueryResponse where
        parseJSON
          = withObject "QueryResponse"
              (\ o ->
                 QueryResponse' <$>
                   (o .:? "jobReference") <*>
                     (o .:? "kind" .!= "bigquery#queryResponse")
                     <*> (o .:? "schema")
                     <*> (o .:? "totalBytesProcessed")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "dmlStats")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "sessionInfoTemplate")
                     <*> (o .:? "numDmlAffectedRows")
                     <*> (o .:? "totalRows")
                     <*> (o .:? "errors" .!= mempty)
                     <*> (o .:? "jobComplete")
                     <*> (o .:? "cacheHit"))

instance ToJSON QueryResponse where
        toJSON QueryResponse'{..}
          = object
              (catMaybes
                 [("jobReference" .=) <$> _qJobReference,
                  Just ("kind" .= _qKind), ("schema" .=) <$> _qSchema,
                  ("totalBytesProcessed" .=) <$> _qTotalBytesProcessed,
                  ("rows" .=) <$> _qRows,
                  ("dmlStats" .=) <$> _qDmlStats,
                  ("pageToken" .=) <$> _qPageToken,
                  ("sessionInfoTemplate" .=) <$> _qSessionInfoTemplate,
                  ("numDmlAffectedRows" .=) <$> _qNumDmlAffectedRows,
                  ("totalRows" .=) <$> _qTotalRows,
                  ("errors" .=) <$> _qErrors,
                  ("jobComplete" .=) <$> _qJobComplete,
                  ("cacheHit" .=) <$> _qCacheHit])

-- | The labels associated with this dataset. You can use these to organize
-- and group your datasets.
--
-- /See:/ 'dataSetListDataSetsItemLabels' smart constructor.
newtype DataSetListDataSetsItemLabels =
  DataSetListDataSetsItemLabels'
    { _dsldsilAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataSetListDataSetsItemLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsldsilAddtional'
dataSetListDataSetsItemLabels
    :: HashMap Text Text -- ^ 'dsldsilAddtional'
    -> DataSetListDataSetsItemLabels
dataSetListDataSetsItemLabels pDsldsilAddtional_ =
  DataSetListDataSetsItemLabels'
    {_dsldsilAddtional = _Coerce # pDsldsilAddtional_}


dsldsilAddtional :: Lens' DataSetListDataSetsItemLabels (HashMap Text Text)
dsldsilAddtional
  = lens _dsldsilAddtional
      (\ s a -> s{_dsldsilAddtional = a})
      . _Coerce

instance FromJSON DataSetListDataSetsItemLabels where
        parseJSON
          = withObject "DataSetListDataSetsItemLabels"
              (\ o ->
                 DataSetListDataSetsItemLabels' <$>
                   (parseJSONObject o))

instance ToJSON DataSetListDataSetsItemLabels where
        toJSON = toJSON . _dsldsilAddtional

--
-- /See:/ 'connectionProperty' smart constructor.
data ConnectionProperty =
  ConnectionProperty'
    { _cpValue :: !(Maybe Text)
    , _cpKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConnectionProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpValue'
--
-- * 'cpKey'
connectionProperty
    :: ConnectionProperty
connectionProperty = ConnectionProperty' {_cpValue = Nothing, _cpKey = Nothing}


-- | [Required] Value of the connection property.
cpValue :: Lens' ConnectionProperty (Maybe Text)
cpValue = lens _cpValue (\ s a -> s{_cpValue = a})

-- | [Required] Name of the connection property to set.
cpKey :: Lens' ConnectionProperty (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

instance FromJSON ConnectionProperty where
        parseJSON
          = withObject "ConnectionProperty"
              (\ o ->
                 ConnectionProperty' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON ConnectionProperty where
        toJSON ConnectionProperty'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _cpValue, ("key" .=) <$> _cpKey])

-- | Information about a single training query run for the model.
--
-- /See:/ 'trainingRun' smart constructor.
data TrainingRun =
  TrainingRun'
    { _trResults :: !(Maybe [IterationResult])
    , _trStartTime :: !(Maybe DateTime')
    , _trTrainingOptions :: !(Maybe TrainingOptions)
    , _trDataSplitResult :: !(Maybe DataSplitResult)
    , _trEvaluationMetrics :: !(Maybe EvaluationMetrics)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TrainingRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trResults'
--
-- * 'trStartTime'
--
-- * 'trTrainingOptions'
--
-- * 'trDataSplitResult'
--
-- * 'trEvaluationMetrics'
trainingRun
    :: TrainingRun
trainingRun =
  TrainingRun'
    { _trResults = Nothing
    , _trStartTime = Nothing
    , _trTrainingOptions = Nothing
    , _trDataSplitResult = Nothing
    , _trEvaluationMetrics = Nothing
    }


-- | Output of each iteration run, results.size() \<= max_iterations.
trResults :: Lens' TrainingRun [IterationResult]
trResults
  = lens _trResults (\ s a -> s{_trResults = a}) .
      _Default
      . _Coerce

-- | The start time of this training run.
trStartTime :: Lens' TrainingRun (Maybe UTCTime)
trStartTime
  = lens _trStartTime (\ s a -> s{_trStartTime = a}) .
      mapping _DateTime

-- | Options that were used for this training run, includes user specified
-- and default options that were used.
trTrainingOptions :: Lens' TrainingRun (Maybe TrainingOptions)
trTrainingOptions
  = lens _trTrainingOptions
      (\ s a -> s{_trTrainingOptions = a})

-- | Data split result of the training run. Only set when the input data is
-- actually split.
trDataSplitResult :: Lens' TrainingRun (Maybe DataSplitResult)
trDataSplitResult
  = lens _trDataSplitResult
      (\ s a -> s{_trDataSplitResult = a})

-- | The evaluation metrics over training\/eval data that were computed at
-- the end of training.
trEvaluationMetrics :: Lens' TrainingRun (Maybe EvaluationMetrics)
trEvaluationMetrics
  = lens _trEvaluationMetrics
      (\ s a -> s{_trEvaluationMetrics = a})

instance FromJSON TrainingRun where
        parseJSON
          = withObject "TrainingRun"
              (\ o ->
                 TrainingRun' <$>
                   (o .:? "results" .!= mempty) <*> (o .:? "startTime")
                     <*> (o .:? "trainingOptions")
                     <*> (o .:? "dataSplitResult")
                     <*> (o .:? "evaluationMetrics"))

instance ToJSON TrainingRun where
        toJSON TrainingRun'{..}
          = object
              (catMaybes
                 [("results" .=) <$> _trResults,
                  ("startTime" .=) <$> _trStartTime,
                  ("trainingOptions" .=) <$> _trTrainingOptions,
                  ("dataSplitResult" .=) <$> _trDataSplitResult,
                  ("evaluationMetrics" .=) <$> _trEvaluationMetrics])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])

-- | Additional details for a view.
--
-- /See:/ 'tableListTablesItemView' smart constructor.
newtype TableListTablesItemView =
  TableListTablesItemView'
    { _tltivUseLegacySQL :: Maybe Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableListTablesItemView' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tltivUseLegacySQL'
tableListTablesItemView
    :: TableListTablesItemView
tableListTablesItemView =
  TableListTablesItemView' {_tltivUseLegacySQL = Nothing}


-- | True if view is defined in legacy SQL dialect, false if in standard SQL.
tltivUseLegacySQL :: Lens' TableListTablesItemView (Maybe Bool)
tltivUseLegacySQL
  = lens _tltivUseLegacySQL
      (\ s a -> s{_tltivUseLegacySQL = a})

instance FromJSON TableListTablesItemView where
        parseJSON
          = withObject "TableListTablesItemView"
              (\ o ->
                 TableListTablesItemView' <$> (o .:? "useLegacySql"))

instance ToJSON TableListTablesItemView where
        toJSON TableListTablesItemView'{..}
          = object
              (catMaybes
                 [("useLegacySql" .=) <$> _tltivUseLegacySQL])

-- | The labels associated with this table. You can use these to organize and
-- group your tables.
--
-- /See:/ 'tableListTablesItemLabels' smart constructor.
newtype TableListTablesItemLabels =
  TableListTablesItemLabels'
    { _tltilAddtional :: HashMap Text Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableListTablesItemLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tltilAddtional'
tableListTablesItemLabels
    :: HashMap Text Text -- ^ 'tltilAddtional'
    -> TableListTablesItemLabels
tableListTablesItemLabels pTltilAddtional_ =
  TableListTablesItemLabels' {_tltilAddtional = _Coerce # pTltilAddtional_}


tltilAddtional :: Lens' TableListTablesItemLabels (HashMap Text Text)
tltilAddtional
  = lens _tltilAddtional
      (\ s a -> s{_tltilAddtional = a})
      . _Coerce

instance FromJSON TableListTablesItemLabels where
        parseJSON
          = withObject "TableListTablesItemLabels"
              (\ o ->
                 TableListTablesItemLabels' <$> (parseJSONObject o))

instance ToJSON TableListTablesItemLabels where
        toJSON = toJSON . _tltilAddtional

-- | Confusion matrix for multi-class classification models.
--
-- /See:/ 'confusionMatrix' smart constructor.
data ConfusionMatrix =
  ConfusionMatrix'
    { _cmConfidenceThreshold :: !(Maybe (Textual Double))
    , _cmRows :: !(Maybe [Row])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConfusionMatrix' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmConfidenceThreshold'
--
-- * 'cmRows'
confusionMatrix
    :: ConfusionMatrix
confusionMatrix =
  ConfusionMatrix' {_cmConfidenceThreshold = Nothing, _cmRows = Nothing}


-- | Confidence threshold used when computing the entries of the confusion
-- matrix.
cmConfidenceThreshold :: Lens' ConfusionMatrix (Maybe Double)
cmConfidenceThreshold
  = lens _cmConfidenceThreshold
      (\ s a -> s{_cmConfidenceThreshold = a})
      . mapping _Coerce

-- | One row per actual label.
cmRows :: Lens' ConfusionMatrix [Row]
cmRows
  = lens _cmRows (\ s a -> s{_cmRows = a}) . _Default .
      _Coerce

instance FromJSON ConfusionMatrix where
        parseJSON
          = withObject "ConfusionMatrix"
              (\ o ->
                 ConfusionMatrix' <$>
                   (o .:? "confidenceThreshold") <*>
                     (o .:? "rows" .!= mempty))

instance ToJSON ConfusionMatrix where
        toJSON ConfusionMatrix'{..}
          = object
              (catMaybes
                 [("confidenceThreshold" .=) <$>
                    _cmConfidenceThreshold,
                  ("rows" .=) <$> _cmRows])
