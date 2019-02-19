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

import           Network.Google.BigQuery.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'jobReference' smart constructor.
data JobReference =
  JobReference'
    { _jrJobId     :: !(Maybe Text)
    , _jrLocation  :: !(Maybe Text)
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
    { _tlTotalItems    :: !(Maybe (Textual Int32))
    , _tlEtag          :: !(Maybe Text)
    , _tlNextPageToken :: !(Maybe Text)
    , _tlKind          :: !Text
    , _tlTables        :: !(Maybe [TableListTablesItem])
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
    { _dsldsiLocation         :: !(Maybe Text)
    , _dsldsiFriendlyName     :: !(Maybe Text)
    , _dsldsiKind             :: !Text
    , _dsldsiDataSetReference :: !(Maybe DataSetReference)
    , _dsldsiId               :: !(Maybe Text)
    , _dsldsiLabels           :: !(Maybe DataSetListDataSetsItemLabels)
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

--
-- /See:/ 'tableDataList' smart constructor.
data TableDataList =
  TableDataList'
    { _tdlEtag      :: !(Maybe Text)
    , _tdlKind      :: !Text
    , _tdlRows      :: !(Maybe [TableRow])
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
    { _jctcDestinationTable                   :: !(Maybe TableReference)
    , _jctcWriteDisPosition                   :: !(Maybe Text)
    , _jctcSourceTables                       :: !(Maybe [TableReference])
    , _jctcCreateDisPosition                  :: !(Maybe Text)
    , _jctcSourceTable                        :: !(Maybe TableReference)
    , _jctcDestinationEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobConfigurationTableCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jctcDestinationTable'
--
-- * 'jctcWriteDisPosition'
--
-- * 'jctcSourceTables'
--
-- * 'jctcCreateDisPosition'
--
-- * 'jctcSourceTable'
--
-- * 'jctcDestinationEncryptionConfiguration'
jobConfigurationTableCopy
    :: JobConfigurationTableCopy
jobConfigurationTableCopy =
  JobConfigurationTableCopy'
    { _jctcDestinationTable = Nothing
    , _jctcWriteDisPosition = Nothing
    , _jctcSourceTables = Nothing
    , _jctcCreateDisPosition = Nothing
    , _jctcSourceTable = Nothing
    , _jctcDestinationEncryptionConfiguration = Nothing
    }

-- | [Required] The destination table
jctcDestinationTable :: Lens' JobConfigurationTableCopy (Maybe TableReference)
jctcDestinationTable
  = lens _jctcDestinationTable
      (\ s a -> s{_jctcDestinationTable = a})

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
                     (o .:? "writeDisposition")
                     <*> (o .:? "sourceTables" .!= mempty)
                     <*> (o .:? "createDisposition")
                     <*> (o .:? "sourceTable")
                     <*> (o .:? "destinationEncryptionConfiguration"))

instance ToJSON JobConfigurationTableCopy where
        toJSON JobConfigurationTableCopy'{..}
          = object
              (catMaybes
                 [("destinationTable" .=) <$> _jctcDestinationTable,
                  ("writeDisposition" .=) <$> _jctcWriteDisPosition,
                  ("sourceTables" .=) <$> _jctcSourceTables,
                  ("createDisposition" .=) <$> _jctcCreateDisPosition,
                  ("sourceTable" .=) <$> _jctcSourceTable,
                  ("destinationEncryptionConfiguration" .=) <$>
                    _jctcDestinationEncryptionConfiguration])

--
-- /See:/ 'tableListTablesItem' smart constructor.
data TableListTablesItem =
  TableListTablesItem'
    { _tltiCreationTime     :: !(Maybe (Textual Int64))
    , _tltiClustering       :: !(Maybe Clustering)
    , _tltiTableReference   :: !(Maybe TableReference)
    , _tltiFriendlyName     :: !(Maybe Text)
    , _tltiKind             :: !Text
    , _tltiTimePartitioning :: !(Maybe TimePartitioning)
    , _tltiView             :: !(Maybe TableListTablesItemView)
    , _tltiId               :: !(Maybe Text)
    , _tltiLabels           :: !(Maybe TableListTablesItemLabels)
    , _tltiType             :: !(Maybe Text)
    , _tltiExpirationTime   :: !(Maybe (Textual Int64))
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
                     (o .:? "tableReference")
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
                  ("tableReference" .=) <$> _tltiTableReference,
                  ("friendlyName" .=) <$> _tltiFriendlyName,
                  Just ("kind" .= _tltiKind),
                  ("timePartitioning" .=) <$> _tltiTimePartitioning,
                  ("view" .=) <$> _tltiView, ("id" .=) <$> _tltiId,
                  ("labels" .=) <$> _tltiLabels,
                  ("type" .=) <$> _tltiType,
                  ("expirationTime" .=) <$> _tltiExpirationTime])

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

--
-- /See:/ 'projectList' smart constructor.
data ProjectList =
  ProjectList'
    { _plTotalItems    :: !(Maybe (Textual Int32))
    , _plEtag          :: !(Maybe Text)
    , _plNextPageToken :: !(Maybe Text)
    , _plKind          :: !Text
    , _plProjects      :: !(Maybe [ProjectListProjectsItem])
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

--
-- /See:/ 'explainQueryStep' smart constructor.
data ExplainQueryStep =
  ExplainQueryStep'
    { _eqsSubsteps :: !(Maybe [Text])
    , _eqsKind     :: !(Maybe Text)
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

--
-- /See:/ 'queryTimelineSample' smart constructor.
data QueryTimelineSample =
  QueryTimelineSample'
    { _qtsPendingUnits   :: !(Maybe (Textual Int64))
    , _qtsTotalSlotMs    :: !(Maybe (Textual Int64))
    , _qtsActiveUnits    :: !(Maybe (Textual Int64))
    , _qtsElapsedMs      :: !(Maybe (Textual Int64))
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

--
-- /See:/ 'queryParameterTypeStructTypesItem' smart constructor.
data QueryParameterTypeStructTypesItem =
  QueryParameterTypeStructTypesItem'
    { _qptstiName        :: !(Maybe Text)
    , _qptstiType        :: !(Maybe QueryParameterType)
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

--
-- /See:/ 'bigtableColumnFamily' smart constructor.
data BigtableColumnFamily =
  BigtableColumnFamily'
    { _bcfFamilyId       :: !(Maybe Text)
    , _bcfColumns        :: !(Maybe [BigtableColumn])
    , _bcfOnlyReadLatest :: !(Maybe Bool)
    , _bcfType           :: !(Maybe Text)
    , _bcfEncoding       :: !(Maybe Text)
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
    { _jsCreationTime        :: !(Maybe (Textual Int64))
    , _jsStartTime           :: !(Maybe (Textual Int64))
    , _jsCompletionRatio     :: !(Maybe (Textual Double))
    , _jsTotalSlotMs         :: !(Maybe (Textual Int64))
    , _jsLoad                :: !(Maybe JobStatistics3)
    , _jsTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _jsQuotaDeferments     :: !(Maybe [Text])
    , _jsEndTime             :: !(Maybe (Textual Int64))
    , _jsQuery               :: !(Maybe JobStatistics2)
    , _jsExtract             :: !(Maybe JobStatistics4)
    , _jsReservationUsage    :: !(Maybe [JobStatisticsReservationUsageItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsCreationTime'
--
-- * 'jsStartTime'
--
-- * 'jsCompletionRatio'
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
-- * 'jsExtract'
--
-- * 'jsReservationUsage'
jobStatistics
    :: JobStatistics
jobStatistics =
  JobStatistics'
    { _jsCreationTime = Nothing
    , _jsStartTime = Nothing
    , _jsCompletionRatio = Nothing
    , _jsTotalSlotMs = Nothing
    , _jsLoad = Nothing
    , _jsTotalBytesProcessed = Nothing
    , _jsQuotaDeferments = Nothing
    , _jsEndTime = Nothing
    , _jsQuery = Nothing
    , _jsExtract = Nothing
    , _jsReservationUsage = Nothing
    }

-- | [Output-only] Creation time of this job, in milliseconds since the
-- epoch. This field will be present on all jobs.
jsCreationTime :: Lens' JobStatistics (Maybe Int64)
jsCreationTime
  = lens _jsCreationTime
      (\ s a -> s{_jsCreationTime = a})
      . mapping _Coerce

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

instance FromJSON JobStatistics where
        parseJSON
          = withObject "JobStatistics"
              (\ o ->
                 JobStatistics' <$>
                   (o .:? "creationTime") <*> (o .:? "startTime") <*>
                     (o .:? "completionRatio")
                     <*> (o .:? "totalSlotMs")
                     <*> (o .:? "load")
                     <*> (o .:? "totalBytesProcessed")
                     <*> (o .:? "quotaDeferments" .!= mempty)
                     <*> (o .:? "endTime")
                     <*> (o .:? "query")
                     <*> (o .:? "extract")
                     <*> (o .:? "reservationUsage" .!= mempty))

instance ToJSON JobStatistics where
        toJSON JobStatistics'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _jsCreationTime,
                  ("startTime" .=) <$> _jsStartTime,
                  ("completionRatio" .=) <$> _jsCompletionRatio,
                  ("totalSlotMs" .=) <$> _jsTotalSlotMs,
                  ("load" .=) <$> _jsLoad,
                  ("totalBytesProcessed" .=) <$>
                    _jsTotalBytesProcessed,
                  ("quotaDeferments" .=) <$> _jsQuotaDeferments,
                  ("endTime" .=) <$> _jsEndTime,
                  ("query" .=) <$> _jsQuery,
                  ("extract" .=) <$> _jsExtract,
                  ("reservationUsage" .=) <$> _jsReservationUsage])

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
    { _dsCreationTime                 :: !(Maybe (Textual Int64))
    , _dsDefaultPartitionExpirationMs :: !(Maybe (Textual Int64))
    , _dsAccess                       :: !(Maybe [DataSetAccessItem])
    , _dsEtag                         :: !(Maybe Text)
    , _dsLocation                     :: !(Maybe Text)
    , _dsFriendlyName                 :: !(Maybe Text)
    , _dsKind                         :: !Text
    , _dsLastModifiedTime             :: !(Maybe (Textual Int64))
    , _dsDataSetReference             :: !(Maybe DataSetReference)
    , _dsSelfLink                     :: !(Maybe Text)
    , _dsId                           :: !(Maybe Text)
    , _dsLabels                       :: !(Maybe DataSetLabels)
    , _dsDefaultTableExpirationMs     :: !(Maybe (Textual Int64))
    , _dsDescription                  :: !(Maybe Text)
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
                  ("access" .=) <$> _dsAccess, ("etag" .=) <$> _dsEtag,
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

-- | [TrustedTester] [Required] Defines the ranges for range partitioning.
--
-- /See:/ 'rangePartitioningRange' smart constructor.
data RangePartitioningRange =
  RangePartitioningRange'
    { _rprStart    :: !(Maybe (Textual Int64))
    , _rprInterval :: !(Maybe (Textual Int64))
    , _rprEnd      :: !(Maybe (Textual Int64))
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
    { _jsruiName   :: !(Maybe Text)
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
    { _boReadRowkeyAsString              :: !(Maybe Bool)
    , _boIgnoreUnspecifiedColumnFamilies :: !(Maybe Bool)
    , _boColumnFamilies                  :: !(Maybe [BigtableColumnFamily])
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
-- /See:/ 'externalDataConfiguration' smart constructor.
data ExternalDataConfiguration =
  ExternalDataConfiguration'
    { _edcBigtableOptions     :: !(Maybe BigtableOptions)
    , _edcIgnoreUnknownValues :: !(Maybe Bool)
    , _edcCompression         :: !(Maybe Text)
    , _edcSourceFormat        :: !(Maybe Text)
    , _edcSchema              :: !(Maybe TableSchema)
    , _edcMaxBadRecords       :: !(Maybe (Textual Int32))
    , _edcGoogleSheetsOptions :: !(Maybe GoogleSheetsOptions)
    , _edcAutodetect          :: !(Maybe Bool)
    , _edcSourceURIs          :: !(Maybe [Text])
    , _edcCSVOptions          :: !(Maybe CSVOptions)
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
-- * 'edcCompression'
--
-- * 'edcSourceFormat'
--
-- * 'edcSchema'
--
-- * 'edcMaxBadRecords'
--
-- * 'edcGoogleSheetsOptions'
--
-- * 'edcAutodetect'
--
-- * 'edcSourceURIs'
--
-- * 'edcCSVOptions'
externalDataConfiguration
    :: ExternalDataConfiguration
externalDataConfiguration =
  ExternalDataConfiguration'
    { _edcBigtableOptions = Nothing
    , _edcIgnoreUnknownValues = Nothing
    , _edcCompression = Nothing
    , _edcSourceFormat = Nothing
    , _edcSchema = Nothing
    , _edcMaxBadRecords = Nothing
    , _edcGoogleSheetsOptions = Nothing
    , _edcAutodetect = Nothing
    , _edcSourceURIs = Nothing
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
                     <*> (o .:? "compression")
                     <*> (o .:? "sourceFormat")
                     <*> (o .:? "schema")
                     <*> (o .:? "maxBadRecords")
                     <*> (o .:? "googleSheetsOptions")
                     <*> (o .:? "autodetect")
                     <*> (o .:? "sourceUris" .!= mempty)
                     <*> (o .:? "csvOptions"))

instance ToJSON ExternalDataConfiguration where
        toJSON ExternalDataConfiguration'{..}
          = object
              (catMaybes
                 [("bigtableOptions" .=) <$> _edcBigtableOptions,
                  ("ignoreUnknownValues" .=) <$>
                    _edcIgnoreUnknownValues,
                  ("compression" .=) <$> _edcCompression,
                  ("sourceFormat" .=) <$> _edcSourceFormat,
                  ("schema" .=) <$> _edcSchema,
                  ("maxBadRecords" .=) <$> _edcMaxBadRecords,
                  ("googleSheetsOptions" .=) <$>
                    _edcGoogleSheetsOptions,
                  ("autodetect" .=) <$> _edcAutodetect,
                  ("sourceUris" .=) <$> _edcSourceURIs,
                  ("csvOptions" .=) <$> _edcCSVOptions])

--
-- /See:/ 'tableReference' smart constructor.
data TableReference =
  TableReference'
    { _trDataSetId :: !(Maybe Text)
    , _trProjectId :: !(Maybe Text)
    , _trTableId   :: !(Maybe Text)
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
    , _mdmoLabels    :: !(Maybe [Text])
    , _mdmoLossType  :: !(Maybe Text)
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
    { _tfsMode        :: !(Maybe Text)
    , _tfsName        :: !(Maybe Text)
    , _tfsType        :: !(Maybe Text)
    , _tfsDescription :: !(Maybe Text)
    , _tfsFields      :: !(Maybe [TableFieldSchema])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableFieldSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfsMode'
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
    { _tfsMode = Nothing
    , _tfsName = Nothing
    , _tfsType = Nothing
    , _tfsDescription = Nothing
    , _tfsFields = Nothing
    }

-- | [Optional] The field mode. Possible values include NULLABLE, REQUIRED
-- and REPEATED. The default value is NULLABLE.
tfsMode :: Lens' TableFieldSchema (Maybe Text)
tfsMode = lens _tfsMode (\ s a -> s{_tfsMode = a})

-- | [Required] The field name. The name must contain only letters (a-z,
-- A-Z), numbers (0-9), or underscores (_), and must start with a letter or
-- underscore. The maximum length is 128 characters.
tfsName :: Lens' TableFieldSchema (Maybe Text)
tfsName = lens _tfsName (\ s a -> s{_tfsName = a})

-- | [Required] The field data type. Possible values include STRING, BYTES,
-- INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT),
-- BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, RECORD
-- (where RECORD indicates that the field contains a nested schema) or
-- STRUCT (same as RECORD).
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
                   (o .:? "mode") <*> (o .:? "name") <*> (o .:? "type")
                     <*> (o .:? "description")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON TableFieldSchema where
        toJSON TableFieldSchema'{..}
          = object
              (catMaybes
                 [("mode" .=) <$> _tfsMode, ("name" .=) <$> _tfsName,
                  ("type" .=) <$> _tfsType,
                  ("description" .=) <$> _tfsDescription,
                  ("fields" .=) <$> _tfsFields])

--
-- /See:/ 'getQueryResultsResponse' smart constructor.
data GetQueryResultsResponse =
  GetQueryResultsResponse'
    { _gqrrJobReference        :: !(Maybe JobReference)
    , _gqrrEtag                :: !(Maybe Text)
    , _gqrrKind                :: !Text
    , _gqrrSchema              :: !(Maybe TableSchema)
    , _gqrrTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _gqrrRows                :: !(Maybe [TableRow])
    , _gqrrPageToken           :: !(Maybe Text)
    , _gqrrNumDmlAffectedRows  :: !(Maybe (Textual Int64))
    , _gqrrTotalRows           :: !(Maybe (Textual Word64))
    , _gqrrErrors              :: !(Maybe [ErrorProto])
    , _gqrrJobComplete         :: !(Maybe Bool)
    , _gqrrCacheHit            :: !(Maybe Bool)
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

--
-- /See:/ 'dataSetList' smart constructor.
data DataSetList =
  DataSetList'
    { _dslEtag          :: !(Maybe Text)
    , _dslNextPageToken :: !(Maybe Text)
    , _dslKind          :: !Text
    , _dslDataSets      :: !(Maybe [DataSetListDataSetsItem])
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
-- /See:/ 'queryRequest' smart constructor.
data QueryRequest =
  QueryRequest'
    { _qrLocation        :: !(Maybe Text)
    , _qrUseQueryCache   :: !Bool
    , _qrPreserveNulls   :: !(Maybe Bool)
    , _qrKind            :: !Text
    , _qrQueryParameters :: !(Maybe [QueryParameter])
    , _qrQuery           :: !(Maybe Text)
    , _qrParameterMode   :: !(Maybe Text)
    , _qrTimeoutMs       :: !(Maybe (Textual Word32))
    , _qrUseLegacySQL    :: !Bool
    , _qrDryRun          :: !(Maybe Bool)
    , _qrMaxResults      :: !(Maybe (Textual Word32))
    , _qrDefaultDataSet  :: !(Maybe DataSetReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'qrQuery'
--
-- * 'qrParameterMode'
--
-- * 'qrTimeoutMs'
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
    { _qrLocation = Nothing
    , _qrUseQueryCache = True
    , _qrPreserveNulls = Nothing
    , _qrKind = "bigquery#queryRequest"
    , _qrQueryParameters = Nothing
    , _qrQuery = Nothing
    , _qrParameterMode = Nothing
    , _qrTimeoutMs = Nothing
    , _qrUseLegacySQL = True
    , _qrDryRun = Nothing
    , _qrMaxResults = Nothing
    , _qrDefaultDataSet = Nothing
    }

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
                   (o .:? "location") <*>
                     (o .:? "useQueryCache" .!= True)
                     <*> (o .:? "preserveNulls")
                     <*> (o .:? "kind" .!= "bigquery#queryRequest")
                     <*> (o .:? "queryParameters" .!= mempty)
                     <*> (o .:? "query")
                     <*> (o .:? "parameterMode")
                     <*> (o .:? "timeoutMs")
                     <*> (o .:? "useLegacySql" .!= True)
                     <*> (o .:? "dryRun")
                     <*> (o .:? "maxResults")
                     <*> (o .:? "defaultDataset"))

instance ToJSON QueryRequest where
        toJSON QueryRequest'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _qrLocation,
                  Just ("useQueryCache" .= _qrUseQueryCache),
                  ("preserveNulls" .=) <$> _qrPreserveNulls,
                  Just ("kind" .= _qrKind),
                  ("queryParameters" .=) <$> _qrQueryParameters,
                  ("query" .=) <$> _qrQuery,
                  ("parameterMode" .=) <$> _qrParameterMode,
                  ("timeoutMs" .=) <$> _qrTimeoutMs,
                  Just ("useLegacySql" .= _qrUseLegacySQL),
                  ("dryRun" .=) <$> _qrDryRun,
                  ("maxResults" .=) <$> _qrMaxResults,
                  ("defaultDataset" .=) <$> _qrDefaultDataSet])

--
-- /See:/ 'queryParameter' smart constructor.
data QueryParameter =
  QueryParameter'
    { _qpParameterValue :: !(Maybe QueryParameterValue)
    , _qpParameterType  :: !(Maybe QueryParameterType)
    , _qpName           :: !(Maybe Text)
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

--
-- /See:/ 'iterationResult' smart constructor.
data IterationResult =
  IterationResult'
    { _irDurationMs   :: !(Maybe (Textual Int64))
    , _irLearnRate    :: !(Maybe (Textual Double))
    , _irEvalLoss     :: !(Maybe (Textual Double))
    , _irTrainingLoss :: !(Maybe (Textual Double))
    , _irIndex        :: !(Maybe (Textual Int32))
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
    , _irEvalLoss = Nothing
    , _irTrainingLoss = Nothing
    , _irIndex = Nothing
    }

-- | [Output-only, Beta] Time taken to run the training iteration in
-- milliseconds.
irDurationMs :: Lens' IterationResult (Maybe Int64)
irDurationMs
  = lens _irDurationMs (\ s a -> s{_irDurationMs = a})
      . mapping _Coerce

-- | [Output-only, Beta] Learning rate used for this iteration, it varies for
-- different training iterations if learn_rate_strategy option is not
-- constant.
irLearnRate :: Lens' IterationResult (Maybe Double)
irLearnRate
  = lens _irLearnRate (\ s a -> s{_irLearnRate = a}) .
      mapping _Coerce

-- | [Output-only, Beta] Eval loss computed on the eval data at the end of
-- the iteration. The eval loss is used for early stopping to avoid
-- overfitting. No eval loss if eval_split_method option is specified as
-- no_split or auto_split with input data size less than 500 rows.
irEvalLoss :: Lens' IterationResult (Maybe Double)
irEvalLoss
  = lens _irEvalLoss (\ s a -> s{_irEvalLoss = a}) .
      mapping _Coerce

-- | [Output-only, Beta] Training loss computed on the training data at the
-- end of the iteration. The training loss function is defined by model
-- type.
irTrainingLoss :: Lens' IterationResult (Maybe Double)
irTrainingLoss
  = lens _irTrainingLoss
      (\ s a -> s{_irTrainingLoss = a})
      . mapping _Coerce

-- | [Output-only, Beta] Index of the ML training iteration, starting from
-- zero for each training run.
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
                     (o .:? "evalLoss")
                     <*> (o .:? "trainingLoss")
                     <*> (o .:? "index"))

instance ToJSON IterationResult where
        toJSON IterationResult'{..}
          = object
              (catMaybes
                 [("durationMs" .=) <$> _irDurationMs,
                  ("learnRate" .=) <$> _irLearnRate,
                  ("evalLoss" .=) <$> _irEvalLoss,
                  ("trainingLoss" .=) <$> _irTrainingLoss,
                  ("index" .=) <$> _irIndex])

--
-- /See:/ 'jobStatistics4' smart constructor.
newtype JobStatistics4 =
  JobStatistics4'
    { _jsDestinationURIFileCounts :: Maybe [Textual Int64]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobStatistics4' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsDestinationURIFileCounts'
jobStatistics4
    :: JobStatistics4
jobStatistics4 = JobStatistics4' {_jsDestinationURIFileCounts = Nothing}

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
                   (o .:? "destinationUriFileCounts" .!= mempty))

instance ToJSON JobStatistics4 where
        toJSON JobStatistics4'{..}
          = object
              (catMaybes
                 [("destinationUriFileCounts" .=) <$>
                    _jsDestinationURIFileCounts])

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
    { _eqsReadMsAvg                 :: !(Maybe (Textual Int64))
    , _eqsStatus                    :: !(Maybe Text)
    , _eqsShuffleOutputBytesSpilled :: !(Maybe (Textual Int64))
    , _eqsReadMsMax                 :: !(Maybe (Textual Int64))
    , _eqsCompletedParallelInputs   :: !(Maybe (Textual Int64))
    , _eqsWaitRatioMax              :: !(Maybe (Textual Double))
    , _eqsParallelInputs            :: !(Maybe (Textual Int64))
    , _eqsShuffleOutputBytes        :: !(Maybe (Textual Int64))
    , _eqsRecordsWritten            :: !(Maybe (Textual Int64))
    , _eqsSteps                     :: !(Maybe [ExplainQueryStep])
    , _eqsInputStages               :: !(Maybe [Textual Int64])
    , _eqsWriteRatioAvg             :: !(Maybe (Textual Double))
    , _eqsRecordsRead               :: !(Maybe (Textual Int64))
    , _eqsComputeRatioAvg           :: !(Maybe (Textual Double))
    , _eqsName                      :: !(Maybe Text)
    , _eqsComputeMsMax              :: !(Maybe (Textual Int64))
    , _eqsReadRatioMax              :: !(Maybe (Textual Double))
    , _eqsWriteMsMax                :: !(Maybe (Textual Int64))
    , _eqsWaitRatioAvg              :: !(Maybe (Textual Double))
    , _eqsWaitMsAvg                 :: !(Maybe (Textual Int64))
    , _eqsId                        :: !(Maybe (Textual Int64))
    , _eqsComputeRatioMax           :: !(Maybe (Textual Double))
    , _eqsWriteRatioMax             :: !(Maybe (Textual Double))
    , _eqsComputeMsAvg              :: !(Maybe (Textual Int64))
    , _eqsReadRatioAvg              :: !(Maybe (Textual Double))
    , _eqsWriteMsAvg                :: !(Maybe (Textual Int64))
    , _eqsStartMs                   :: !(Maybe (Textual Int64))
    , _eqsEndMs                     :: !(Maybe (Textual Int64))
    , _eqsWaitMsMax                 :: !(Maybe (Textual Int64))
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

-- | [Output-only, Beta] Training options used by this training run. These
-- options are mutable for subsequent training runs. Default values are
-- explicitly stored for options not specified in the input query of the
-- first training run. For subsequent training runs, any option not
-- explicitly specified in the input query will be copied from the previous
-- training run.
--
-- /See:/ 'trainingRunTrainingOptions' smart constructor.
data TrainingRunTrainingOptions =
  TrainingRunTrainingOptions'
    { _trtoLineSearchInitLearnRate :: !(Maybe (Textual Double))
    , _trtoMinRelProgress          :: !(Maybe (Textual Double))
    , _trtoL1Reg                   :: !(Maybe (Textual Double))
    , _trtoLearnRate               :: !(Maybe (Textual Double))
    , _trtoLearnRateStrategy       :: !(Maybe Text)
    , _trtoMaxIteration            :: !(Maybe (Textual Int64))
    , _trtoEarlyStop               :: !(Maybe Bool)
    , _trtoL2Reg                   :: !(Maybe (Textual Double))
    , _trtoWarmStart               :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrainingRunTrainingOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trtoLineSearchInitLearnRate'
--
-- * 'trtoMinRelProgress'
--
-- * 'trtoL1Reg'
--
-- * 'trtoLearnRate'
--
-- * 'trtoLearnRateStrategy'
--
-- * 'trtoMaxIteration'
--
-- * 'trtoEarlyStop'
--
-- * 'trtoL2Reg'
--
-- * 'trtoWarmStart'
trainingRunTrainingOptions
    :: TrainingRunTrainingOptions
trainingRunTrainingOptions =
  TrainingRunTrainingOptions'
    { _trtoLineSearchInitLearnRate = Nothing
    , _trtoMinRelProgress = Nothing
    , _trtoL1Reg = Nothing
    , _trtoLearnRate = Nothing
    , _trtoLearnRateStrategy = Nothing
    , _trtoMaxIteration = Nothing
    , _trtoEarlyStop = Nothing
    , _trtoL2Reg = Nothing
    , _trtoWarmStart = Nothing
    }

trtoLineSearchInitLearnRate :: Lens' TrainingRunTrainingOptions (Maybe Double)
trtoLineSearchInitLearnRate
  = lens _trtoLineSearchInitLearnRate
      (\ s a -> s{_trtoLineSearchInitLearnRate = a})
      . mapping _Coerce

trtoMinRelProgress :: Lens' TrainingRunTrainingOptions (Maybe Double)
trtoMinRelProgress
  = lens _trtoMinRelProgress
      (\ s a -> s{_trtoMinRelProgress = a})
      . mapping _Coerce

trtoL1Reg :: Lens' TrainingRunTrainingOptions (Maybe Double)
trtoL1Reg
  = lens _trtoL1Reg (\ s a -> s{_trtoL1Reg = a}) .
      mapping _Coerce

trtoLearnRate :: Lens' TrainingRunTrainingOptions (Maybe Double)
trtoLearnRate
  = lens _trtoLearnRate
      (\ s a -> s{_trtoLearnRate = a})
      . mapping _Coerce

trtoLearnRateStrategy :: Lens' TrainingRunTrainingOptions (Maybe Text)
trtoLearnRateStrategy
  = lens _trtoLearnRateStrategy
      (\ s a -> s{_trtoLearnRateStrategy = a})

trtoMaxIteration :: Lens' TrainingRunTrainingOptions (Maybe Int64)
trtoMaxIteration
  = lens _trtoMaxIteration
      (\ s a -> s{_trtoMaxIteration = a})
      . mapping _Coerce

trtoEarlyStop :: Lens' TrainingRunTrainingOptions (Maybe Bool)
trtoEarlyStop
  = lens _trtoEarlyStop
      (\ s a -> s{_trtoEarlyStop = a})

trtoL2Reg :: Lens' TrainingRunTrainingOptions (Maybe Double)
trtoL2Reg
  = lens _trtoL2Reg (\ s a -> s{_trtoL2Reg = a}) .
      mapping _Coerce

trtoWarmStart :: Lens' TrainingRunTrainingOptions (Maybe Bool)
trtoWarmStart
  = lens _trtoWarmStart
      (\ s a -> s{_trtoWarmStart = a})

instance FromJSON TrainingRunTrainingOptions where
        parseJSON
          = withObject "TrainingRunTrainingOptions"
              (\ o ->
                 TrainingRunTrainingOptions' <$>
                   (o .:? "lineSearchInitLearnRate") <*>
                     (o .:? "minRelProgress")
                     <*> (o .:? "l1Reg")
                     <*> (o .:? "learnRate")
                     <*> (o .:? "learnRateStrategy")
                     <*> (o .:? "maxIteration")
                     <*> (o .:? "earlyStop")
                     <*> (o .:? "l2Reg")
                     <*> (o .:? "warmStart"))

instance ToJSON TrainingRunTrainingOptions where
        toJSON TrainingRunTrainingOptions'{..}
          = object
              (catMaybes
                 [("lineSearchInitLearnRate" .=) <$>
                    _trtoLineSearchInitLearnRate,
                  ("minRelProgress" .=) <$> _trtoMinRelProgress,
                  ("l1Reg" .=) <$> _trtoL1Reg,
                  ("learnRate" .=) <$> _trtoLearnRate,
                  ("learnRateStrategy" .=) <$> _trtoLearnRateStrategy,
                  ("maxIteration" .=) <$> _trtoMaxIteration,
                  ("earlyStop" .=) <$> _trtoEarlyStop,
                  ("l2Reg" .=) <$> _trtoL2Reg,
                  ("warmStart" .=) <$> _trtoWarmStart])

--
-- /See:/ 'bigQueryModelTraining' smart constructor.
data BigQueryModelTraining =
  BigQueryModelTraining'
    { _bqmtExpectedTotalIterations :: !(Maybe (Textual Int64))
    , _bqmtCurrentIteration        :: !(Maybe (Textual Int32))
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
    { _jclSkipLeadingRows                    :: !(Maybe (Textual Int32))
    , _jclProjectionFields                   :: !(Maybe [Text])
    , _jclDestinationTable                   :: !(Maybe TableReference)
    , _jclWriteDisPosition                   :: !(Maybe Text)
    , _jclAllowJaggedRows                    :: !(Maybe Bool)
    , _jclClustering                         :: !(Maybe Clustering)
    , _jclRangePartitioning                  :: !(Maybe RangePartitioning)
    , _jclSchemaInline                       :: !(Maybe Text)
    , _jclIgnoreUnknownValues                :: !(Maybe Bool)
    , _jclSchemaUpdateOptions                :: !(Maybe [Text])
    , _jclCreateDisPosition                  :: !(Maybe Text)
    , _jclSchemaInlineFormat                 :: !(Maybe Text)
    , _jclAllowQuotedNewlines                :: !(Maybe Bool)
    , _jclSourceFormat                       :: !(Maybe Text)
    , _jclUseAvroLogicalTypes                :: !(Maybe Bool)
    , _jclSchema                             :: !(Maybe TableSchema)
    , _jclTimePartitioning                   :: !(Maybe TimePartitioning)
    , _jclQuote                              :: !(Maybe Text)
    , _jclMaxBadRecords                      :: !(Maybe (Textual Int32))
    , _jclAutodetect                         :: !(Maybe Bool)
    , _jclSourceURIs                         :: !(Maybe [Text])
    , _jclEncoding                           :: !(Maybe Text)
    , _jclDestinationTableProperties         :: !(Maybe DestinationTableProperties)
    , _jclDestinationEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    , _jclFieldDelimiter                     :: !(Maybe Text)
    , _jclNullMarker                         :: !(Maybe Text)
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
-- * 'jclUseAvroLogicalTypes'
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
-- * 'jclSourceURIs'
--
-- * 'jclEncoding'
--
-- * 'jclDestinationTableProperties'
--
-- * 'jclDestinationEncryptionConfiguration'
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
    , _jclUseAvroLogicalTypes = Nothing
    , _jclSchema = Nothing
    , _jclTimePartitioning = Nothing
    , _jclQuote = Nothing
    , _jclMaxBadRecords = Nothing
    , _jclAutodetect = Nothing
    , _jclSourceURIs = Nothing
    , _jclEncoding = Nothing
    , _jclDestinationTableProperties = Nothing
    , _jclDestinationEncryptionConfiguration = Nothing
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

-- | [Optional] If sourceFormat is set to \"AVRO\", indicates whether to
-- enable interpreting logical types into their corresponding types (ie.
-- TIMESTAMP), instead of only using their raw types (ie. INTEGER).
jclUseAvroLogicalTypes :: Lens' JobConfigurationLoad (Maybe Bool)
jclUseAvroLogicalTypes
  = lens _jclUseAvroLogicalTypes
      (\ s a -> s{_jclUseAvroLogicalTypes = a})

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
                     <*> (o .:? "useAvroLogicalTypes")
                     <*> (o .:? "schema")
                     <*> (o .:? "timePartitioning")
                     <*> (o .:? "quote")
                     <*> (o .:? "maxBadRecords")
                     <*> (o .:? "autodetect")
                     <*> (o .:? "sourceUris" .!= mempty)
                     <*> (o .:? "encoding")
                     <*> (o .:? "destinationTableProperties")
                     <*> (o .:? "destinationEncryptionConfiguration")
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
                  ("useAvroLogicalTypes" .=) <$>
                    _jclUseAvroLogicalTypes,
                  ("schema" .=) <$> _jclSchema,
                  ("timePartitioning" .=) <$> _jclTimePartitioning,
                  ("quote" .=) <$> _jclQuote,
                  ("maxBadRecords" .=) <$> _jclMaxBadRecords,
                  ("autodetect" .=) <$> _jclAutodetect,
                  ("sourceUris" .=) <$> _jclSourceURIs,
                  ("encoding" .=) <$> _jclEncoding,
                  ("destinationTableProperties" .=) <$>
                    _jclDestinationTableProperties,
                  ("destinationEncryptionConfiguration" .=) <$>
                    _jclDestinationEncryptionConfiguration,
                  ("fieldDelimiter" .=) <$> _jclFieldDelimiter,
                  ("nullMarker" .=) <$> _jclNullMarker])

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
    { _mvdQuery           :: !(Maybe Text)
    , _mvdLastRefreshTime :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MaterializedViewDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvdQuery'
--
-- * 'mvdLastRefreshTime'
materializedViewDefinition
    :: MaterializedViewDefinition
materializedViewDefinition =
  MaterializedViewDefinition'
    {_mvdQuery = Nothing, _mvdLastRefreshTime = Nothing}

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
                   (o .:? "query") <*> (o .:? "lastRefreshTime"))

instance ToJSON MaterializedViewDefinition where
        toJSON MaterializedViewDefinition'{..}
          = object
              (catMaybes
                 [("query" .=) <$> _mvdQuery,
                  ("lastRefreshTime" .=) <$> _mvdLastRefreshTime])

--
-- /See:/ 'tableDataInsertAllRequest' smart constructor.
data TableDataInsertAllRequest =
  TableDataInsertAllRequest'
    { _tdiarKind                :: !Text
    , _tdiarIgnoreUnknownValues :: !(Maybe Bool)
    , _tdiarRows                :: !(Maybe [TableDataInsertAllRequestRowsItem])
    , _tdiarTemplateSuffix      :: !(Maybe Text)
    , _tdiarSkipInvalidRows     :: !(Maybe Bool)
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
    , _gsarKind  :: !Text
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
    { _plpiFriendlyName     :: !(Maybe Text)
    , _plpiKind             :: !Text
    , _plpiProjectReference :: !(Maybe ProjectReference)
    , _plpiId               :: !(Maybe Text)
    , _plpiNumericId        :: !(Maybe (Textual Word64))
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
-- /See:/ 'bigtableColumn' smart constructor.
data BigtableColumn =
  BigtableColumn'
    { _bcQualifierEncoded :: !(Maybe Bytes)
    , _bcFieldName        :: !(Maybe Text)
    , _bcQualifierString  :: !(Maybe Text)
    , _bcOnlyReadLatest   :: !(Maybe Bool)
    , _bcType             :: !(Maybe Text)
    , _bcEncoding         :: !(Maybe Text)
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
    { _sEstimatedBytes  :: !(Maybe (Textual Word64))
    , _sOldestEntryTime :: !(Maybe (Textual Word64))
    , _sEstimatedRows   :: !(Maybe (Textual Word64))
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
-- /See:/ 'jobListJobsItem' smart constructor.
data JobListJobsItem =
  JobListJobsItem'
    { _jljiJobReference  :: !(Maybe JobReference)
    , _jljiStatus        :: !(Maybe JobStatus)
    , _jljiState         :: !(Maybe Text)
    , _jljiUserEmail     :: !(Maybe Text)
    , _jljiKind          :: !Text
    , _jljiErrorResult   :: !(Maybe ErrorProto)
    , _jljiId            :: !(Maybe Text)
    , _jljiStatistics    :: !(Maybe JobStatistics)
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

--
-- /See:/ 'timePartitioning' smart constructor.
data TimePartitioning =
  TimePartitioning'
    { _tpField                  :: !(Maybe Text)
    , _tpExpirationMs           :: !(Maybe (Textual Int64))
    , _tpRequirePartitionFilter :: !(Maybe Bool)
    , _tpType                   :: !(Maybe Text)
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

-- | [Required] The only type supported is DAY, which will generate one
-- partition per day.
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
-- /See:/ 'jobConfiguration' smart constructor.
data JobConfiguration =
  JobConfiguration'
    { _jcJobType      :: !(Maybe Text)
    , _jcCopy         :: !(Maybe JobConfigurationTableCopy)
    , _jcLoad         :: !(Maybe JobConfigurationLoad)
    , _jcQuery        :: !(Maybe JobConfigurationQuery)
    , _jcJobTimeoutMs :: !(Maybe (Textual Int64))
    , _jcExtract      :: !(Maybe JobConfigurationExtract)
    , _jcLabels       :: !(Maybe JobConfigurationLabels)
    , _jcDryRun       :: !(Maybe Bool)
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
    { _jJobReference  :: !(Maybe JobReference)
    , _jStatus        :: !(Maybe JobStatus)
    , _jEtag          :: !(Maybe Text)
    , _jUserEmail     :: !(Maybe Text)
    , _jKind          :: !Text
    , _jSelfLink      :: !(Maybe Text)
    , _jId            :: !(Maybe Text)
    , _jStatistics    :: !(Maybe JobStatistics)
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
    , _tdiarieiIndex  :: !(Maybe (Textual Word32))
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
-- /See:/ 'jobConfigurationExtract' smart constructor.
data JobConfigurationExtract =
  JobConfigurationExtract'
    { _jceDestinationFormat :: !(Maybe Text)
    , _jceSourceTable       :: !(Maybe TableReference)
    , _jcePrintHeader       :: !Bool
    , _jceCompression       :: !(Maybe Text)
    , _jceDestinationURIs   :: !(Maybe [Text])
    , _jceDestinationURI    :: !(Maybe Text)
    , _jceFieldDelimiter    :: !(Maybe Text)
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
-- * 'jceDestinationURIs'
--
-- * 'jceDestinationURI'
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
    , _jceDestinationURIs = Nothing
    , _jceDestinationURI = Nothing
    , _jceFieldDelimiter = Nothing
    }

-- | [Optional] The exported file format. Possible values include CSV,
-- NEWLINE_DELIMITED_JSON and AVRO. The default value is CSV. Tables with
-- nested or repeated fields cannot be exported as CSV.
jceDestinationFormat :: Lens' JobConfigurationExtract (Maybe Text)
jceDestinationFormat
  = lens _jceDestinationFormat
      (\ s a -> s{_jceDestinationFormat = a})

-- | [Required] A reference to the table being exported.
jceSourceTable :: Lens' JobConfigurationExtract (Maybe TableReference)
jceSourceTable
  = lens _jceSourceTable
      (\ s a -> s{_jceSourceTable = a})

-- | [Optional] Whether to print out a header row in the results. Default is
-- true.
jcePrintHeader :: Lens' JobConfigurationExtract Bool
jcePrintHeader
  = lens _jcePrintHeader
      (\ s a -> s{_jcePrintHeader = a})

-- | [Optional] The compression type to use for exported files. Possible
-- values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is
-- NONE. DEFLATE and SNAPPY are only supported for Avro.
jceCompression :: Lens' JobConfigurationExtract (Maybe Text)
jceCompression
  = lens _jceCompression
      (\ s a -> s{_jceCompression = a})

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

-- | [Optional] Delimiter to use between fields in the exported data. Default
-- is \',\'
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
                     <*> (o .:? "destinationUris" .!= mempty)
                     <*> (o .:? "destinationUri")
                     <*> (o .:? "fieldDelimiter"))

instance ToJSON JobConfigurationExtract where
        toJSON JobConfigurationExtract'{..}
          = object
              (catMaybes
                 [("destinationFormat" .=) <$> _jceDestinationFormat,
                  ("sourceTable" .=) <$> _jceSourceTable,
                  Just ("printHeader" .= _jcePrintHeader),
                  ("compression" .=) <$> _jceCompression,
                  ("destinationUris" .=) <$> _jceDestinationURIs,
                  ("destinationUri" .=) <$> _jceDestinationURI,
                  ("fieldDelimiter" .=) <$> _jceFieldDelimiter])

--
-- /See:/ 'modelDefinition' smart constructor.
data ModelDefinition =
  ModelDefinition'
    { _mdModelOptions :: !(Maybe ModelDefinitionModelOptions)
    , _mdTrainingRuns :: !(Maybe [TrainingRun])
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
mdTrainingRuns :: Lens' ModelDefinition [TrainingRun]
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

--
-- /See:/ 'jobCancelResponse' smart constructor.
data JobCancelResponse =
  JobCancelResponse'
    { _jcrKind :: !Text
    , _jcrJob  :: !(Maybe Job)
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
    { _jcqDestinationTable                   :: !(Maybe TableReference)
    , _jcqWriteDisPosition                   :: !(Maybe Text)
    , _jcqPriority                           :: !(Maybe Text)
    , _jcqClustering                         :: !(Maybe Clustering)
    , _jcqRangePartitioning                  :: !(Maybe RangePartitioning)
    , _jcqUseQueryCache                      :: !Bool
    , _jcqPreserveNulls                      :: !(Maybe Bool)
    , _jcqTableDefinitions                   :: !(Maybe JobConfigurationQueryTableDefinitions)
    , _jcqQueryParameters                    :: !(Maybe [QueryParameter])
    , _jcqSchemaUpdateOptions                :: !(Maybe [Text])
    , _jcqMaximumBytesBilled                 :: !(Maybe (Textual Int64))
    , _jcqCreateDisPosition                  :: !(Maybe Text)
    , _jcqUserDefinedFunctionResources       :: !(Maybe [UserDefinedFunctionResource])
    , _jcqAllowLargeResults                  :: !Bool
    , _jcqMaximumBillingTier                 :: !(Textual Int32)
    , _jcqTimePartitioning                   :: !(Maybe TimePartitioning)
    , _jcqQuery                              :: !(Maybe Text)
    , _jcqFlattenResults                     :: !Bool
    , _jcqParameterMode                      :: !(Maybe Text)
    , _jcqUseLegacySQL                       :: !Bool
    , _jcqDestinationEncryptionConfiguration :: !(Maybe EncryptionConfiguration)
    , _jcqDefaultDataSet                     :: !(Maybe DataSetReference)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobConfigurationQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'jcqUseLegacySQL'
--
-- * 'jcqDestinationEncryptionConfiguration'
--
-- * 'jcqDefaultDataSet'
jobConfigurationQuery
    :: JobConfigurationQuery
jobConfigurationQuery =
  JobConfigurationQuery'
    { _jcqDestinationTable = Nothing
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
    , _jcqUseLegacySQL = True
    , _jcqDestinationEncryptionConfiguration = Nothing
    , _jcqDefaultDataSet = Nothing
    }

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
                   (o .:? "destinationTable") <*>
                     (o .:? "writeDisposition")
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
                     <*> (o .:? "useLegacySql" .!= True)
                     <*> (o .:? "destinationEncryptionConfiguration")
                     <*> (o .:? "defaultDataset"))

instance ToJSON JobConfigurationQuery where
        toJSON JobConfigurationQuery'{..}
          = object
              (catMaybes
                 [("destinationTable" .=) <$> _jcqDestinationTable,
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
                  Just ("useLegacySql" .= _jcqUseLegacySQL),
                  ("destinationEncryptionConfiguration" .=) <$>
                    _jcqDestinationEncryptionConfiguration,
                  ("defaultDataset" .=) <$> _jcqDefaultDataSet])

--
-- /See:/ 'googleSheetsOptions' smart constructor.
data GoogleSheetsOptions =
  GoogleSheetsOptions'
    { _gsoSkipLeadingRows :: !(Maybe (Textual Int64))
    , _gsoRange           :: !(Maybe Text)
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

-- | [Beta] [Optional] Range of a sheet to query from. Only used when
-- non-empty. Typical format:
-- sheet_name!top_left_cell_id:bottom_right_cell_id For example:
-- sheet1!A1:B20
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
-- /See:/ 'tableDataInsertAllRequestRowsItem' smart constructor.
data TableDataInsertAllRequestRowsItem =
  TableDataInsertAllRequestRowsItem'
    { _tdiarriJSON     :: !(Maybe JSONObject)
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
    { _jlEtag          :: !(Maybe Text)
    , _jlNextPageToken :: !(Maybe Text)
    , _jlKind          :: !Text
    , _jlJobs          :: !(Maybe [JobListJobsItem])
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

--
-- /See:/ 'jobStatistics2ReservationUsageItem' smart constructor.
data JobStatistics2ReservationUsageItem =
  JobStatistics2ReservationUsageItem'
    { _jName   :: !(Maybe Text)
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
-- /See:/ 'queryParameterValue' smart constructor.
data QueryParameterValue =
  QueryParameterValue'
    { _qpvStructValues :: !(Maybe QueryParameterValueStructValues)
    , _qpvValue        :: !(Maybe Text)
    , _qpvArrayValues  :: !(Maybe [QueryParameterValue])
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

--
-- /See:/ 'viewDefinition' smart constructor.
data ViewDefinition =
  ViewDefinition'
    { _vdUserDefinedFunctionResources :: !(Maybe [UserDefinedFunctionResource])
    , _vdQuery                        :: !(Maybe Text)
    , _vdUseLegacySQL                 :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ViewDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdUserDefinedFunctionResources'
--
-- * 'vdQuery'
--
-- * 'vdUseLegacySQL'
viewDefinition
    :: ViewDefinition
viewDefinition =
  ViewDefinition'
    { _vdUserDefinedFunctionResources = Nothing
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
                     (o .:? "query")
                     <*> (o .:? "useLegacySql"))

instance ToJSON ViewDefinition where
        toJSON ViewDefinition'{..}
          = object
              (catMaybes
                 [("userDefinedFunctionResources" .=) <$>
                    _vdUserDefinedFunctionResources,
                  ("query" .=) <$> _vdQuery,
                  ("useLegacySql" .=) <$> _vdUseLegacySQL])

--
-- /See:/ 'userDefinedFunctionResource' smart constructor.
data UserDefinedFunctionResource =
  UserDefinedFunctionResource'
    { _udfrResourceURI :: !(Maybe Text)
    , _udfrInlineCode  :: !(Maybe Text)
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

--
-- /See:/ 'jobStatistics2' smart constructor.
data JobStatistics2 =
  JobStatistics2'
    { _jModelTrainingExpectedTotalIteration :: !(Maybe (Textual Int64))
    , _jModelTraining                       :: !(Maybe BigQueryModelTraining)
    , _jTotalSlotMs                         :: !(Maybe (Textual Int64))
    , _jDdlTargetTable                      :: !(Maybe TableReference)
    , _jEstimatedBytesProcessed             :: !(Maybe (Textual Int64))
    , _jModelTrainingCurrentIteration       :: !(Maybe (Textual Int32))
    , _jSchema                              :: !(Maybe TableSchema)
    , _jTotalBytesProcessed                 :: !(Maybe (Textual Int64))
    , _jBillingTier                         :: !(Maybe (Textual Int32))
    , _jTotalBytesProcessedAccuracy         :: !(Maybe Text)
    , _jUndeclaredQueryParameters           :: !(Maybe [QueryParameter])
    , _jReferencedTables                    :: !(Maybe [TableReference])
    , _jStatementType                       :: !(Maybe Text)
    , _jReservationUsage                    :: !(Maybe [JobStatistics2ReservationUsageItem])
    , _jNumDmlAffectedRows                  :: !(Maybe (Textual Int64))
    , _jTimeline                            :: !(Maybe [QueryTimelineSample])
    , _jQueryPlan                           :: !(Maybe [ExplainQueryStage])
    , _jCacheHit                            :: !(Maybe Bool)
    , _jTotalBytesBilled                    :: !(Maybe (Textual Int64))
    , _jDdlOperationPerformed               :: !(Maybe Text)
    , _jTotalPartitionsProcessed            :: !(Maybe (Textual Int64))
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
-- * 'jTotalSlotMs'
--
-- * 'jDdlTargetTable'
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
-- * 'jUndeclaredQueryParameters'
--
-- * 'jReferencedTables'
--
-- * 'jStatementType'
--
-- * 'jReservationUsage'
--
-- * 'jNumDmlAffectedRows'
--
-- * 'jTimeline'
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
    , _jTotalSlotMs = Nothing
    , _jDdlTargetTable = Nothing
    , _jEstimatedBytesProcessed = Nothing
    , _jModelTrainingCurrentIteration = Nothing
    , _jSchema = Nothing
    , _jTotalBytesProcessed = Nothing
    , _jBillingTier = Nothing
    , _jTotalBytesProcessedAccuracy = Nothing
    , _jUndeclaredQueryParameters = Nothing
    , _jReferencedTables = Nothing
    , _jStatementType = Nothing
    , _jReservationUsage = Nothing
    , _jNumDmlAffectedRows = Nothing
    , _jTimeline = Nothing
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

-- | [Output-only] Slot-milliseconds for the job.
jTotalSlotMs :: Lens' JobStatistics2 (Maybe Int64)
jTotalSlotMs
  = lens _jTotalSlotMs (\ s a -> s{_jTotalSlotMs = a})
      . mapping _Coerce

-- | The DDL target table. Present only for CREATE\/DROP TABLE\/VIEW queries.
jDdlTargetTable :: Lens' JobStatistics2 (Maybe TableReference)
jDdlTargetTable
  = lens _jDdlTargetTable
      (\ s a -> s{_jDdlTargetTable = a})

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
-- cost. UPPER_BOUND: estiamte is upper bound of what the query would cost.
jTotalBytesProcessedAccuracy :: Lens' JobStatistics2 (Maybe Text)
jTotalBytesProcessedAccuracy
  = lens _jTotalBytesProcessedAccuracy
      (\ s a -> s{_jTotalBytesProcessedAccuracy = a})

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
-- \"CREATE_TABLE\": CREATE [OR REPLACE] TABLE without AS SELECT.
-- \"CREATE_TABLE_AS_SELECT\": CREATE [OR REPLACE] TABLE ... AS SELECT ...
-- . \"DROP_TABLE\": DROP TABLE query. \"CREATE_VIEW\": CREATE [OR REPLACE]
-- VIEW ... AS SELECT ... . \"DROP_VIEW\": DROP VIEW query.
-- \"ALTER_TABLE\": ALTER TABLE query. \"ALTER_VIEW\": ALTER VIEW query.
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
                     <*> (o .:? "totalSlotMs")
                     <*> (o .:? "ddlTargetTable")
                     <*> (o .:? "estimatedBytesProcessed")
                     <*> (o .:? "modelTrainingCurrentIteration")
                     <*> (o .:? "schema")
                     <*> (o .:? "totalBytesProcessed")
                     <*> (o .:? "billingTier")
                     <*> (o .:? "totalBytesProcessedAccuracy")
                     <*> (o .:? "undeclaredQueryParameters" .!= mempty)
                     <*> (o .:? "referencedTables" .!= mempty)
                     <*> (o .:? "statementType")
                     <*> (o .:? "reservationUsage" .!= mempty)
                     <*> (o .:? "numDmlAffectedRows")
                     <*> (o .:? "timeline" .!= mempty)
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
                  ("totalSlotMs" .=) <$> _jTotalSlotMs,
                  ("ddlTargetTable" .=) <$> _jDdlTargetTable,
                  ("estimatedBytesProcessed" .=) <$>
                    _jEstimatedBytesProcessed,
                  ("modelTrainingCurrentIteration" .=) <$>
                    _jModelTrainingCurrentIteration,
                  ("schema" .=) <$> _jSchema,
                  ("totalBytesProcessed" .=) <$> _jTotalBytesProcessed,
                  ("billingTier" .=) <$> _jBillingTier,
                  ("totalBytesProcessedAccuracy" .=) <$>
                    _jTotalBytesProcessedAccuracy,
                  ("undeclaredQueryParameters" .=) <$>
                    _jUndeclaredQueryParameters,
                  ("referencedTables" .=) <$> _jReferencedTables,
                  ("statementType" .=) <$> _jStatementType,
                  ("reservationUsage" .=) <$> _jReservationUsage,
                  ("numDmlAffectedRows" .=) <$> _jNumDmlAffectedRows,
                  ("timeline" .=) <$> _jTimeline,
                  ("queryPlan" .=) <$> _jQueryPlan,
                  ("cacheHit" .=) <$> _jCacheHit,
                  ("totalBytesBilled" .=) <$> _jTotalBytesBilled,
                  ("ddlOperationPerformed" .=) <$>
                    _jDdlOperationPerformed,
                  ("totalPartitionsProcessed" .=) <$>
                    _jTotalPartitionsProcessed])

--
-- /See:/ 'jobStatus' smart constructor.
data JobStatus =
  JobStatus'
    { _jsState       :: !(Maybe Text)
    , _jsErrorResult :: !(Maybe ErrorProto)
    , _jsErrors      :: !(Maybe [ErrorProto])
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
    , _dtpDescription  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DestinationTableProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtpFriendlyName'
--
-- * 'dtpDescription'
destinationTableProperties
    :: DestinationTableProperties
destinationTableProperties =
  DestinationTableProperties'
    {_dtpFriendlyName = Nothing, _dtpDescription = Nothing}

-- | [Optional] The friendly name for the destination table. This will only
-- be used if the destination table is newly created. If the table already
-- exists and a value different than the current friendly name is provided,
-- the job will fail.
dtpFriendlyName :: Lens' DestinationTableProperties (Maybe Text)
dtpFriendlyName
  = lens _dtpFriendlyName
      (\ s a -> s{_dtpFriendlyName = a})

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
                   (o .:? "friendlyName") <*> (o .:? "description"))

instance ToJSON DestinationTableProperties where
        toJSON DestinationTableProperties'{..}
          = object
              (catMaybes
                 [("friendlyName" .=) <$> _dtpFriendlyName,
                  ("description" .=) <$> _dtpDescription])

--
-- /See:/ 'dataSetAccessItem' smart constructor.
data DataSetAccessItem =
  DataSetAccessItem'
    { _dsaiGroupByEmail :: !(Maybe Text)
    , _dsaiDomain       :: !(Maybe Text)
    , _dsaiSpecialGroup :: !(Maybe Text)
    , _dsaiRole         :: !(Maybe Text)
    , _dsaiIAMMember    :: !(Maybe Text)
    , _dsaiView         :: !(Maybe TableReference)
    , _dsaiUserByEmail  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DataSetAccessItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'dsaiUserByEmail'
dataSetAccessItem
    :: DataSetAccessItem
dataSetAccessItem =
  DataSetAccessItem'
    { _dsaiGroupByEmail = Nothing
    , _dsaiDomain = Nothing
    , _dsaiSpecialGroup = Nothing
    , _dsaiRole = Nothing
    , _dsaiIAMMember = Nothing
    , _dsaiView = Nothing
    , _dsaiUserByEmail = Nothing
    }

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

-- | [Required] Describes the rights granted to the user specified by the
-- other member of the access object. The following string values are
-- supported: READER, WRITER, OWNER.
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
                   (o .:? "groupByEmail") <*> (o .:? "domain") <*>
                     (o .:? "specialGroup")
                     <*> (o .:? "role")
                     <*> (o .:? "iamMember")
                     <*> (o .:? "view")
                     <*> (o .:? "userByEmail"))

instance ToJSON DataSetAccessItem where
        toJSON DataSetAccessItem'{..}
          = object
              (catMaybes
                 [("groupByEmail" .=) <$> _dsaiGroupByEmail,
                  ("domain" .=) <$> _dsaiDomain,
                  ("specialGroup" .=) <$> _dsaiSpecialGroup,
                  ("role" .=) <$> _dsaiRole,
                  ("iamMember" .=) <$> _dsaiIAMMember,
                  ("view" .=) <$> _dsaiView,
                  ("userByEmail" .=) <$> _dsaiUserByEmail])

--
-- /See:/ 'tableDataInsertAllResponse' smart constructor.
data TableDataInsertAllResponse =
  TableDataInsertAllResponse'
    { _tKind         :: !Text
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
    , _qptType        :: !(Maybe Text)
    , _qptArrayType   :: !(Maybe QueryParameterType)
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
    { _tabMaterializedView          :: !(Maybe MaterializedViewDefinition)
    , _tabCreationTime              :: !(Maybe (Textual Int64))
    , _tabEtag                      :: !(Maybe Text)
    , _tabNumBytes                  :: !(Maybe (Textual Int64))
    , _tabClustering                :: !(Maybe Clustering)
    , _tabExternalDataConfiguration :: !(Maybe ExternalDataConfiguration)
    , _tabRangePartitioning         :: !(Maybe RangePartitioning)
    , _tabLocation                  :: !(Maybe Text)
    , _tabTableReference            :: !(Maybe TableReference)
    , _tabFriendlyName              :: !(Maybe Text)
    , _tabKind                      :: !Text
    , _tabLastModifiedTime          :: !(Maybe (Textual Word64))
    , _tabSchema                    :: !(Maybe TableSchema)
    , _tabStreamingBuffer           :: !(Maybe Streamingbuffer)
    , _tabSelfLink                  :: !(Maybe Text)
    , _tabRequirePartitionFilter    :: !(Maybe Bool)
    , _tabEncryptionConfiguration   :: !(Maybe EncryptionConfiguration)
    , _tabModel                     :: !(Maybe ModelDefinition)
    , _tabTimePartitioning          :: !(Maybe TimePartitioning)
    , _tabNumRows                   :: !(Maybe (Textual Word64))
    , _tabNumPhysicalBytes          :: !(Maybe (Textual Int64))
    , _tabView                      :: !(Maybe ViewDefinition)
    , _tabId                        :: !(Maybe Text)
    , _tabLabels                    :: !(Maybe TableLabels)
    , _tabType                      :: !(Maybe Text)
    , _tabNumLongTermBytes          :: !(Maybe (Textual Int64))
    , _tabExpirationTime            :: !(Maybe (Textual Int64))
    , _tabDescription               :: !(Maybe Text)
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

-- | [Beta] [Optional] If set to true, queries over this table require a
-- partition filter that can be used for partition elimination to be
-- specified.
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
-- by a SQL query. [TrustedTester] MATERIALIZED_VIEW: SQL query whose
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

--
-- /See:/ 'errorProto' smart constructor.
data ErrorProto =
  ErrorProto'
    { _epDebugInfo :: !(Maybe Text)
    , _epLocation  :: !(Maybe Text)
    , _epReason    :: !(Maybe Text)
    , _epMessage   :: !(Maybe Text)
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
    { _coSkipLeadingRows     :: !(Maybe (Textual Int64))
    , _coAllowJaggedRows     :: !(Maybe Bool)
    , _coAllowQuotedNewlines :: !(Maybe Bool)
    , _coQuote               :: !Text
    , _coEncoding            :: !(Maybe Text)
    , _coFieldDelimiter      :: !(Maybe Text)
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

--
-- /See:/ 'jobStatistics3' smart constructor.
data JobStatistics3 =
  JobStatistics3'
    { _jsInputFiles     :: !(Maybe (Textual Int64))
    , _jsOutputRows     :: !(Maybe (Textual Int64))
    , _jsOutputBytes    :: !(Maybe (Textual Int64))
    , _jsInputFileBytes :: !(Maybe (Textual Int64))
    , _jsBadRecords     :: !(Maybe (Textual Int64))
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
    { _qJobReference        :: !(Maybe JobReference)
    , _qKind                :: !Text
    , _qSchema              :: !(Maybe TableSchema)
    , _qTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _qRows                :: !(Maybe [TableRow])
    , _qPageToken           :: !(Maybe Text)
    , _qNumDmlAffectedRows  :: !(Maybe (Textual Int64))
    , _qTotalRows           :: !(Maybe (Textual Word64))
    , _qErrors              :: !(Maybe [ErrorProto])
    , _qJobComplete         :: !(Maybe Bool)
    , _qCacheHit            :: !(Maybe Bool)
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
-- * 'qPageToken'
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
    , _qPageToken = Nothing
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

-- | A token used for paging results.
qPageToken :: Lens' QueryResponse (Maybe Text)
qPageToken
  = lens _qPageToken (\ s a -> s{_qPageToken = a})

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
                     <*> (o .:? "pageToken")
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
                  ("pageToken" .=) <$> _qPageToken,
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
-- /See:/ 'trainingRun' smart constructor.
data TrainingRun =
  TrainingRun'
    { _trState            :: !(Maybe Text)
    , _trStartTime        :: !(Maybe DateTime')
    , _trIterationResults :: !(Maybe [IterationResult])
    , _trTrainingOptions  :: !(Maybe TrainingRunTrainingOptions)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TrainingRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trState'
--
-- * 'trStartTime'
--
-- * 'trIterationResults'
--
-- * 'trTrainingOptions'
trainingRun
    :: TrainingRun
trainingRun =
  TrainingRun'
    { _trState = Nothing
    , _trStartTime = Nothing
    , _trIterationResults = Nothing
    , _trTrainingOptions = Nothing
    }

-- | [Output-only, Beta] Different state applicable for a training run. IN
-- PROGRESS: Training run is in progress. FAILED: Training run ended due to
-- a non-retryable failure. SUCCEEDED: Training run successfully completed.
-- CANCELLED: Training run cancelled by the user.
trState :: Lens' TrainingRun (Maybe Text)
trState = lens _trState (\ s a -> s{_trState = a})

-- | [Output-only, Beta] Training run start time in milliseconds since the
-- epoch.
trStartTime :: Lens' TrainingRun (Maybe UTCTime)
trStartTime
  = lens _trStartTime (\ s a -> s{_trStartTime = a}) .
      mapping _DateTime

-- | [Output-only, Beta] List of each iteration results.
trIterationResults :: Lens' TrainingRun [IterationResult]
trIterationResults
  = lens _trIterationResults
      (\ s a -> s{_trIterationResults = a})
      . _Default
      . _Coerce

-- | [Output-only, Beta] Training options used by this training run. These
-- options are mutable for subsequent training runs. Default values are
-- explicitly stored for options not specified in the input query of the
-- first training run. For subsequent training runs, any option not
-- explicitly specified in the input query will be copied from the previous
-- training run.
trTrainingOptions :: Lens' TrainingRun (Maybe TrainingRunTrainingOptions)
trTrainingOptions
  = lens _trTrainingOptions
      (\ s a -> s{_trTrainingOptions = a})

instance FromJSON TrainingRun where
        parseJSON
          = withObject "TrainingRun"
              (\ o ->
                 TrainingRun' <$>
                   (o .:? "state") <*> (o .:? "startTime") <*>
                     (o .:? "iterationResults" .!= mempty)
                     <*> (o .:? "trainingOptions"))

instance ToJSON TrainingRun where
        toJSON TrainingRun'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _trState,
                  ("startTime" .=) <$> _trStartTime,
                  ("iterationResults" .=) <$> _trIterationResults,
                  ("trainingOptions" .=) <$> _trTrainingOptions])

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
