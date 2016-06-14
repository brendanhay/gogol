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
data JobReference = JobReference'
    { _jrJobId     :: !(Maybe Text)
    , _jrProjectId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jrJobId'
--
-- * 'jrProjectId'
jobReference
    :: JobReference
jobReference =
    JobReference'
    { _jrJobId = Nothing
    , _jrProjectId = Nothing
    }

-- | [Required] The ID of the job. The ID must contain only letters (a-z,
-- A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length
-- is 1,024 characters.
jrJobId :: Lens' JobReference (Maybe Text)
jrJobId = lens _jrJobId (\ s a -> s{_jrJobId = a})

-- | [Required] The ID of the project containing this job.
jrProjectId :: Lens' JobReference (Maybe Text)
jrProjectId
  = lens _jrProjectId (\ s a -> s{_jrProjectId = a})

instance FromJSON JobReference where
        parseJSON
          = withObject "JobReference"
              (\ o ->
                 JobReference' <$>
                   (o .:? "jobId") <*> (o .:? "projectId"))

instance ToJSON JobReference where
        toJSON JobReference'{..}
          = object
              (catMaybes
                 [("jobId" .=) <$> _jrJobId,
                  ("projectId" .=) <$> _jrProjectId])

--
-- /See:/ 'tableList' smart constructor.
data TableList = TableList'
    { _tlTotalItems    :: !(Maybe (Textual Int32))
    , _tlEtag          :: !(Maybe Text)
    , _tlNextPageToken :: !(Maybe Text)
    , _tlKind          :: !Text
    , _tlTables        :: !(Maybe [TableListTablesItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data DataSetListDataSetsItem = DataSetListDataSetsItem'
    { _dsldsiFriendlyName     :: !(Maybe Text)
    , _dsldsiKind             :: !Text
    , _dsldsiDataSetReference :: !(Maybe DataSetReference)
    , _dsldsiId               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSetListDataSetsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsldsiFriendlyName'
--
-- * 'dsldsiKind'
--
-- * 'dsldsiDataSetReference'
--
-- * 'dsldsiId'
dataSetListDataSetsItem
    :: DataSetListDataSetsItem
dataSetListDataSetsItem =
    DataSetListDataSetsItem'
    { _dsldsiFriendlyName = Nothing
    , _dsldsiKind = "bigquery#dataset"
    , _dsldsiDataSetReference = Nothing
    , _dsldsiId = Nothing
    }

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

instance FromJSON DataSetListDataSetsItem where
        parseJSON
          = withObject "DataSetListDataSetsItem"
              (\ o ->
                 DataSetListDataSetsItem' <$>
                   (o .:? "friendlyName") <*>
                     (o .:? "kind" .!= "bigquery#dataset")
                     <*> (o .:? "datasetReference")
                     <*> (o .:? "id"))

instance ToJSON DataSetListDataSetsItem where
        toJSON DataSetListDataSetsItem'{..}
          = object
              (catMaybes
                 [("friendlyName" .=) <$> _dsldsiFriendlyName,
                  Just ("kind" .= _dsldsiKind),
                  ("datasetReference" .=) <$> _dsldsiDataSetReference,
                  ("id" .=) <$> _dsldsiId])

--
-- /See:/ 'tableDataList' smart constructor.
data TableDataList = TableDataList'
    { _tdlEtag      :: !(Maybe Text)
    , _tdlKind      :: !Text
    , _tdlRows      :: !(Maybe [TableRow])
    , _tdlPageToken :: !(Maybe Text)
    , _tdlTotalRows :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data JobConfigurationTableCopy = JobConfigurationTableCopy'
    { _jctcDestinationTable  :: !(Maybe TableReference)
    , _jctcWriteDisPosition  :: !(Maybe Text)
    , _jctcSourceTables      :: !(Maybe [TableReference])
    , _jctcCreateDisPosition :: !(Maybe Text)
    , _jctcSourceTable       :: !(Maybe TableReference)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
jobConfigurationTableCopy
    :: JobConfigurationTableCopy
jobConfigurationTableCopy =
    JobConfigurationTableCopy'
    { _jctcDestinationTable = Nothing
    , _jctcWriteDisPosition = Nothing
    , _jctcSourceTables = Nothing
    , _jctcCreateDisPosition = Nothing
    , _jctcSourceTable = Nothing
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

instance FromJSON JobConfigurationTableCopy where
        parseJSON
          = withObject "JobConfigurationTableCopy"
              (\ o ->
                 JobConfigurationTableCopy' <$>
                   (o .:? "destinationTable") <*>
                     (o .:? "writeDisposition")
                     <*> (o .:? "sourceTables" .!= mempty)
                     <*> (o .:? "createDisposition")
                     <*> (o .:? "sourceTable"))

instance ToJSON JobConfigurationTableCopy where
        toJSON JobConfigurationTableCopy'{..}
          = object
              (catMaybes
                 [("destinationTable" .=) <$> _jctcDestinationTable,
                  ("writeDisposition" .=) <$> _jctcWriteDisPosition,
                  ("sourceTables" .=) <$> _jctcSourceTables,
                  ("createDisposition" .=) <$> _jctcCreateDisPosition,
                  ("sourceTable" .=) <$> _jctcSourceTable])

--
-- /See:/ 'tableListTablesItem' smart constructor.
data TableListTablesItem = TableListTablesItem'
    { _tltiTableReference :: !(Maybe TableReference)
    , _tltiFriendlyName   :: !(Maybe Text)
    , _tltiKind           :: !Text
    , _tltiId             :: !(Maybe Text)
    , _tltiType           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableListTablesItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tltiTableReference'
--
-- * 'tltiFriendlyName'
--
-- * 'tltiKind'
--
-- * 'tltiId'
--
-- * 'tltiType'
tableListTablesItem
    :: TableListTablesItem
tableListTablesItem =
    TableListTablesItem'
    { _tltiTableReference = Nothing
    , _tltiFriendlyName = Nothing
    , _tltiKind = "bigquery#table"
    , _tltiId = Nothing
    , _tltiType = Nothing
    }

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

-- | An opaque ID of the table
tltiId :: Lens' TableListTablesItem (Maybe Text)
tltiId = lens _tltiId (\ s a -> s{_tltiId = a})

-- | The type of table. Possible values are: TABLE, VIEW.
tltiType :: Lens' TableListTablesItem (Maybe Text)
tltiType = lens _tltiType (\ s a -> s{_tltiType = a})

instance FromJSON TableListTablesItem where
        parseJSON
          = withObject "TableListTablesItem"
              (\ o ->
                 TableListTablesItem' <$>
                   (o .:? "tableReference") <*> (o .:? "friendlyName")
                     <*> (o .:? "kind" .!= "bigquery#table")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON TableListTablesItem where
        toJSON TableListTablesItem'{..}
          = object
              (catMaybes
                 [("tableReference" .=) <$> _tltiTableReference,
                  ("friendlyName" .=) <$> _tltiFriendlyName,
                  Just ("kind" .= _tltiKind), ("id" .=) <$> _tltiId,
                  ("type" .=) <$> _tltiType])

--
-- /See:/ 'tableSchema' smart constructor.
newtype TableSchema = TableSchema'
    { _tsFields :: Maybe [TableFieldSchema]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsFields'
tableSchema
    :: TableSchema
tableSchema =
    TableSchema'
    { _tsFields = Nothing
    }

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
data ProjectList = ProjectList'
    { _plTotalItems    :: !(Maybe (Textual Int32))
    , _plEtag          :: !(Maybe Text)
    , _plNextPageToken :: !(Maybe Text)
    , _plKind          :: !Text
    , _plProjects      :: !(Maybe [ProjectListProjectsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data ExplainQueryStep = ExplainQueryStep'
    { _eqsSubsteps :: !(Maybe [Text])
    , _eqsKind     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ExplainQueryStep'
    { _eqsSubsteps = Nothing
    , _eqsKind = Nothing
    }

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
-- /See:/ 'bigtableColumnFamily' smart constructor.
data BigtableColumnFamily = BigtableColumnFamily'
    { _bcfFamilyId       :: !(Maybe Text)
    , _bcfColumns        :: !(Maybe [BigtableColumn])
    , _bcfOnlyReadLatest :: !(Maybe Bool)
    , _bcfType           :: !(Maybe Text)
    , _bcfEncoding       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Defaut
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
data JobStatistics = JobStatistics'
    { _jsCreationTime        :: !(Maybe (Textual Int64))
    , _jsStartTime           :: !(Maybe (Textual Int64))
    , _jsLoad                :: !(Maybe JobStatistics3)
    , _jsTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _jsEndTime             :: !(Maybe (Textual Int64))
    , _jsQuery               :: !(Maybe JobStatistics2)
    , _jsExtract             :: !(Maybe JobStatistics4)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsCreationTime'
--
-- * 'jsStartTime'
--
-- * 'jsLoad'
--
-- * 'jsTotalBytesProcessed'
--
-- * 'jsEndTime'
--
-- * 'jsQuery'
--
-- * 'jsExtract'
jobStatistics
    :: JobStatistics
jobStatistics =
    JobStatistics'
    { _jsCreationTime = Nothing
    , _jsStartTime = Nothing
    , _jsLoad = Nothing
    , _jsTotalBytesProcessed = Nothing
    , _jsEndTime = Nothing
    , _jsQuery = Nothing
    , _jsExtract = Nothing
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

instance FromJSON JobStatistics where
        parseJSON
          = withObject "JobStatistics"
              (\ o ->
                 JobStatistics' <$>
                   (o .:? "creationTime") <*> (o .:? "startTime") <*>
                     (o .:? "load")
                     <*> (o .:? "totalBytesProcessed")
                     <*> (o .:? "endTime")
                     <*> (o .:? "query")
                     <*> (o .:? "extract"))

instance ToJSON JobStatistics where
        toJSON JobStatistics'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _jsCreationTime,
                  ("startTime" .=) <$> _jsStartTime,
                  ("load" .=) <$> _jsLoad,
                  ("totalBytesProcessed" .=) <$>
                    _jsTotalBytesProcessed,
                  ("endTime" .=) <$> _jsEndTime,
                  ("query" .=) <$> _jsQuery,
                  ("extract" .=) <$> _jsExtract])

--
-- /See:/ 'dataSet' smart constructor.
data DataSet = DataSet'
    { _dsCreationTime             :: !(Maybe (Textual Int64))
    , _dsAccess                   :: !(Maybe [DataSetAccessItem])
    , _dsEtag                     :: !(Maybe Text)
    , _dsLocation                 :: !(Maybe Text)
    , _dsFriendlyName             :: !(Maybe Text)
    , _dsKind                     :: !Text
    , _dsLastModifiedTime         :: !(Maybe (Textual Int64))
    , _dsDataSetReference         :: !(Maybe DataSetReference)
    , _dsSelfLink                 :: !(Maybe Text)
    , _dsId                       :: !(Maybe Text)
    , _dsDefaultTableExpirationMs :: !(Maybe (Textual Int64))
    , _dsDescription              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsCreationTime'
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
-- * 'dsDefaultTableExpirationMs'
--
-- * 'dsDescription'
dataSet
    :: DataSet
dataSet =
    DataSet'
    { _dsCreationTime = Nothing
    , _dsAccess = Nothing
    , _dsEtag = Nothing
    , _dsLocation = Nothing
    , _dsFriendlyName = Nothing
    , _dsKind = "bigquery#dataset"
    , _dsLastModifiedTime = Nothing
    , _dsDataSetReference = Nothing
    , _dsSelfLink = Nothing
    , _dsId = Nothing
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

-- | [Experimental] The geographic location where the dataset should reside.
-- Possible values include EU and US. The default value is US.
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
                     (o .:? "access" .!= mempty)
                     <*> (o .:? "etag")
                     <*> (o .:? "location")
                     <*> (o .:? "friendlyName")
                     <*> (o .:? "kind" .!= "bigquery#dataset")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "datasetReference")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "id")
                     <*> (o .:? "defaultTableExpirationMs")
                     <*> (o .:? "description"))

instance ToJSON DataSet where
        toJSON DataSet'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _dsCreationTime,
                  ("access" .=) <$> _dsAccess, ("etag" .=) <$> _dsEtag,
                  ("location" .=) <$> _dsLocation,
                  ("friendlyName" .=) <$> _dsFriendlyName,
                  Just ("kind" .= _dsKind),
                  ("lastModifiedTime" .=) <$> _dsLastModifiedTime,
                  ("datasetReference" .=) <$> _dsDataSetReference,
                  ("selfLink" .=) <$> _dsSelfLink, ("id" .=) <$> _dsId,
                  ("defaultTableExpirationMs" .=) <$>
                    _dsDefaultTableExpirationMs,
                  ("description" .=) <$> _dsDescription])

--
-- /See:/ 'bigtableOptions' smart constructor.
data BigtableOptions = BigtableOptions'
    { _boIgnoreUnspecifiedColumnFamilies :: !(Maybe Bool)
    , _boColumnFamilies                  :: !(Maybe [BigtableColumnFamily])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BigtableOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boIgnoreUnspecifiedColumnFamilies'
--
-- * 'boColumnFamilies'
bigtableOptions
    :: BigtableOptions
bigtableOptions =
    BigtableOptions'
    { _boIgnoreUnspecifiedColumnFamilies = Nothing
    , _boColumnFamilies = Nothing
    }

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
                   (o .:? "ignoreUnspecifiedColumnFamilies") <*>
                     (o .:? "columnFamilies" .!= mempty))

instance ToJSON BigtableOptions where
        toJSON BigtableOptions'{..}
          = object
              (catMaybes
                 [("ignoreUnspecifiedColumnFamilies" .=) <$>
                    _boIgnoreUnspecifiedColumnFamilies,
                  ("columnFamilies" .=) <$> _boColumnFamilies])

--
-- /See:/ 'externalDataConfiguration' smart constructor.
data ExternalDataConfiguration = ExternalDataConfiguration'
    { _edcBigtableOptions     :: !(Maybe BigtableOptions)
    , _edcIgnoreUnknownValues :: !(Maybe Bool)
    , _edcCompression         :: !(Maybe Text)
    , _edcSourceFormat        :: !(Maybe Text)
    , _edcSchema              :: !(Maybe TableSchema)
    , _edcMaxBadRecords       :: !(Maybe (Textual Int32))
    , _edcAutodetect          :: !(Maybe Bool)
    , _edcSourceURIs          :: !(Maybe [Text])
    , _edcCSVOptions          :: !(Maybe CSVOptions)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | [Required] The data format. For CSV files, specify \"CSV\". For
-- newline-delimited JSON, specify \"NEWLINE_DELIMITED_JSON\". For Avro
-- files, specify \"AVRO\". For Google Cloud Datastore backups, specify
-- \"DATASTORE_BACKUP\". [Experimental] For Google Cloud Bigtable, specify
-- \"BIGTABLE\". Please note that reading from Google Cloud Bigtable is
-- experimental and has to be enabled for your project. Please contact
-- Google Cloud Support to enable this for your project.
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
-- invalid error is returned in the job result. The default value is 0,
-- which requires that all records are valid. This setting is ignored for
-- Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
edcMaxBadRecords :: Lens' ExternalDataConfiguration (Maybe Int32)
edcMaxBadRecords
  = lens _edcMaxBadRecords
      (\ s a -> s{_edcMaxBadRecords = a})
      . mapping _Coerce

-- | [Experimental] Try to detect schema and format options automatically.
-- Any option specified explicitly will be honored.
edcAutodetect :: Lens' ExternalDataConfiguration (Maybe Bool)
edcAutodetect
  = lens _edcAutodetect
      (\ s a -> s{_edcAutodetect = a})

-- | [Required] The fully-qualified URIs that point to your data in Google
-- Cloud. For Google Cloud Storage URIs: Each URI can contain one \'*\'
-- wildcard character and it must come after the \'bucket\' name. Size
-- limits related to load jobs apply to external data sources, plus an
-- additional limit of 10 GB maximum size across all URIs. For Google Cloud
-- Bigtable URIs: Exactly one URI can be specified and it has be a fully
-- specified and valid HTTPS URL for a Google Cloud Bigtable table. For
-- Google Cloud Datastore backups, exactly one URI can be specified, and it
-- must end with \'.backup_info\'. Also, the \'*\' wildcard character is
-- not allowed.
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
                  ("autodetect" .=) <$> _edcAutodetect,
                  ("sourceUris" .=) <$> _edcSourceURIs,
                  ("csvOptions" .=) <$> _edcCSVOptions])

--
-- /See:/ 'tableReference' smart constructor.
data TableReference = TableReference'
    { _trDataSetId :: !(Maybe Text)
    , _trProjectId :: !(Maybe Text)
    , _trTableId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _trDataSetId = Nothing
    , _trProjectId = Nothing
    , _trTableId = Nothing
    }

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

--
-- /See:/ 'tableFieldSchema' smart constructor.
data TableFieldSchema = TableFieldSchema'
    { _tfsMode        :: !(Maybe Text)
    , _tfsName        :: !(Maybe Text)
    , _tfsType        :: !(Maybe Text)
    , _tfsDescription :: !(Maybe Text)
    , _tfsFields      :: !(Maybe [TableFieldSchema])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- INTEGER, FLOAT, BOOLEAN, TIMESTAMP or RECORD (where RECORD indicates
-- that the field contains a nested schema).
tfsType :: Lens' TableFieldSchema (Maybe Text)
tfsType = lens _tfsType (\ s a -> s{_tfsType = a})

-- | [Optional] The field description. The maximum length is 16K characters.
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
data GetQueryResultsResponse = GetQueryResultsResponse'
    { _gqrrJobReference        :: !(Maybe JobReference)
    , _gqrrEtag                :: !(Maybe Text)
    , _gqrrKind                :: !Text
    , _gqrrSchema              :: !(Maybe TableSchema)
    , _gqrrTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _gqrrRows                :: !(Maybe [TableRow])
    , _gqrrPageToken           :: !(Maybe Text)
    , _gqrrTotalRows           :: !(Maybe (Textual Word64))
    , _gqrrErrors              :: !(Maybe [ErrorProto])
    , _gqrrJobComplete         :: !(Maybe Bool)
    , _gqrrCacheHit            :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The total number of rows in the complete query result set, which can be
-- more than the number of rows in this single page of results. Present
-- only when the query completes successfully.
gqrrTotalRows :: Lens' GetQueryResultsResponse (Maybe Word64)
gqrrTotalRows
  = lens _gqrrTotalRows
      (\ s a -> s{_gqrrTotalRows = a})
      . mapping _Coerce

-- | [Output-only] All errors and warnings encountered during the running of
-- the job. Errors here do not necessarily mean that the job has completed
-- or was unsuccessful.
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
                  ("totalRows" .=) <$> _gqrrTotalRows,
                  ("errors" .=) <$> _gqrrErrors,
                  ("jobComplete" .=) <$> _gqrrJobComplete,
                  ("cacheHit" .=) <$> _gqrrCacheHit])

--
-- /See:/ 'dataSetList' smart constructor.
data DataSetList = DataSetList'
    { _dslEtag          :: !(Maybe Text)
    , _dslNextPageToken :: !(Maybe Text)
    , _dslKind          :: !Text
    , _dslDataSets      :: !(Maybe [DataSetListDataSetsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data QueryRequest = QueryRequest'
    { _qrUseQueryCache  :: !Bool
    , _qrPreserveNulls  :: !(Maybe Bool)
    , _qrKind           :: !Text
    , _qrQuery          :: !(Maybe Text)
    , _qrTimeoutMs      :: !(Maybe (Textual Word32))
    , _qrUseLegacySQL   :: !(Maybe Bool)
    , _qrDryRun         :: !(Maybe Bool)
    , _qrMaxResults     :: !(Maybe (Textual Word32))
    , _qrDefaultDataSet :: !(Maybe DataSetReference)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrUseQueryCache'
--
-- * 'qrPreserveNulls'
--
-- * 'qrKind'
--
-- * 'qrQuery'
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
    { _qrUseQueryCache = True
    , _qrPreserveNulls = Nothing
    , _qrKind = "bigquery#queryRequest"
    , _qrQuery = Nothing
    , _qrTimeoutMs = Nothing
    , _qrUseLegacySQL = Nothing
    , _qrDryRun = Nothing
    , _qrMaxResults = Nothing
    , _qrDefaultDataSet = Nothing
    }

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

-- | [Required] A query string, following the BigQuery query syntax, of the
-- query to execute. Example: \"SELECT count(f1) FROM
-- [myProjectId:myDatasetId.myTableId]\".
qrQuery :: Lens' QueryRequest (Maybe Text)
qrQuery = lens _qrQuery (\ s a -> s{_qrQuery = a})

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

-- | [Experimental] Specifies whether to use BigQuery\'s legacy SQL dialect
-- for this query. The default value is true. If set to false, the query
-- will use BigQuery\'s updated SQL dialect with improved standards
-- compliance: https:\/\/cloud.google.com\/bigquery\/sql-reference\/ When
-- using BigQuery\'s updated SQL, the values of allowLargeResults and
-- flattenResults are ignored. Queries with useLegacySql set to false will
-- be run as if allowLargeResults is true and flattenResults is false.
qrUseLegacySQL :: Lens' QueryRequest (Maybe Bool)
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
                   (o .:? "useQueryCache" .!= True) <*>
                     (o .:? "preserveNulls")
                     <*> (o .:? "kind" .!= "bigquery#queryRequest")
                     <*> (o .:? "query")
                     <*> (o .:? "timeoutMs")
                     <*> (o .:? "useLegacySql")
                     <*> (o .:? "dryRun")
                     <*> (o .:? "maxResults")
                     <*> (o .:? "defaultDataset"))

instance ToJSON QueryRequest where
        toJSON QueryRequest'{..}
          = object
              (catMaybes
                 [Just ("useQueryCache" .= _qrUseQueryCache),
                  ("preserveNulls" .=) <$> _qrPreserveNulls,
                  Just ("kind" .= _qrKind), ("query" .=) <$> _qrQuery,
                  ("timeoutMs" .=) <$> _qrTimeoutMs,
                  ("useLegacySql" .=) <$> _qrUseLegacySQL,
                  ("dryRun" .=) <$> _qrDryRun,
                  ("maxResults" .=) <$> _qrMaxResults,
                  ("defaultDataset" .=) <$> _qrDefaultDataSet])

--
-- /See:/ 'jobStatistics4' smart constructor.
newtype JobStatistics4 = JobStatistics4'
    { _jsDestinationURIFileCounts :: Maybe [Textual Int64]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobStatistics4' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsDestinationURIFileCounts'
jobStatistics4
    :: JobStatistics4
jobStatistics4 =
    JobStatistics4'
    { _jsDestinationURIFileCounts = Nothing
    }

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
newtype ProjectReference = ProjectReference'
    { _prProjectId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prProjectId'
projectReference
    :: ProjectReference
projectReference =
    ProjectReference'
    { _prProjectId = Nothing
    }

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
data ExplainQueryStage = ExplainQueryStage'
    { _eqsWaitRatioMax    :: !(Maybe (Textual Double))
    , _eqsRecordsWritten  :: !(Maybe (Textual Int64))
    , _eqsSteps           :: !(Maybe [ExplainQueryStep])
    , _eqsWriteRatioAvg   :: !(Maybe (Textual Double))
    , _eqsRecordsRead     :: !(Maybe (Textual Int64))
    , _eqsComputeRatioAvg :: !(Maybe (Textual Double))
    , _eqsName            :: !(Maybe Text)
    , _eqsReadRatioMax    :: !(Maybe (Textual Double))
    , _eqsWaitRatioAvg    :: !(Maybe (Textual Double))
    , _eqsId              :: !(Maybe (Textual Int64))
    , _eqsComputeRatioMax :: !(Maybe (Textual Double))
    , _eqsWriteRatioMax   :: !(Maybe (Textual Double))
    , _eqsReadRatioAvg    :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExplainQueryStage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eqsWaitRatioMax'
--
-- * 'eqsRecordsWritten'
--
-- * 'eqsSteps'
--
-- * 'eqsWriteRatioAvg'
--
-- * 'eqsRecordsRead'
--
-- * 'eqsComputeRatioAvg'
--
-- * 'eqsName'
--
-- * 'eqsReadRatioMax'
--
-- * 'eqsWaitRatioAvg'
--
-- * 'eqsId'
--
-- * 'eqsComputeRatioMax'
--
-- * 'eqsWriteRatioMax'
--
-- * 'eqsReadRatioAvg'
explainQueryStage
    :: ExplainQueryStage
explainQueryStage =
    ExplainQueryStage'
    { _eqsWaitRatioMax = Nothing
    , _eqsRecordsWritten = Nothing
    , _eqsSteps = Nothing
    , _eqsWriteRatioAvg = Nothing
    , _eqsRecordsRead = Nothing
    , _eqsComputeRatioAvg = Nothing
    , _eqsName = Nothing
    , _eqsReadRatioMax = Nothing
    , _eqsWaitRatioAvg = Nothing
    , _eqsId = Nothing
    , _eqsComputeRatioMax = Nothing
    , _eqsWriteRatioMax = Nothing
    , _eqsReadRatioAvg = Nothing
    }

-- | Relative amount of time the slowest shard spent waiting to be scheduled.
eqsWaitRatioMax :: Lens' ExplainQueryStage (Maybe Double)
eqsWaitRatioMax
  = lens _eqsWaitRatioMax
      (\ s a -> s{_eqsWaitRatioMax = a})
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

-- | Relative amount of time the slowest shard spent reading input.
eqsReadRatioMax :: Lens' ExplainQueryStage (Maybe Double)
eqsReadRatioMax
  = lens _eqsReadRatioMax
      (\ s a -> s{_eqsReadRatioMax = a})
      . mapping _Coerce

-- | Relative amount of time the average shard spent waiting to be scheduled.
eqsWaitRatioAvg :: Lens' ExplainQueryStage (Maybe Double)
eqsWaitRatioAvg
  = lens _eqsWaitRatioAvg
      (\ s a -> s{_eqsWaitRatioAvg = a})
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

-- | Relative amount of time the average shard spent reading input.
eqsReadRatioAvg :: Lens' ExplainQueryStage (Maybe Double)
eqsReadRatioAvg
  = lens _eqsReadRatioAvg
      (\ s a -> s{_eqsReadRatioAvg = a})
      . mapping _Coerce

instance FromJSON ExplainQueryStage where
        parseJSON
          = withObject "ExplainQueryStage"
              (\ o ->
                 ExplainQueryStage' <$>
                   (o .:? "waitRatioMax") <*> (o .:? "recordsWritten")
                     <*> (o .:? "steps" .!= mempty)
                     <*> (o .:? "writeRatioAvg")
                     <*> (o .:? "recordsRead")
                     <*> (o .:? "computeRatioAvg")
                     <*> (o .:? "name")
                     <*> (o .:? "readRatioMax")
                     <*> (o .:? "waitRatioAvg")
                     <*> (o .:? "id")
                     <*> (o .:? "computeRatioMax")
                     <*> (o .:? "writeRatioMax")
                     <*> (o .:? "readRatioAvg"))

instance ToJSON ExplainQueryStage where
        toJSON ExplainQueryStage'{..}
          = object
              (catMaybes
                 [("waitRatioMax" .=) <$> _eqsWaitRatioMax,
                  ("recordsWritten" .=) <$> _eqsRecordsWritten,
                  ("steps" .=) <$> _eqsSteps,
                  ("writeRatioAvg" .=) <$> _eqsWriteRatioAvg,
                  ("recordsRead" .=) <$> _eqsRecordsRead,
                  ("computeRatioAvg" .=) <$> _eqsComputeRatioAvg,
                  ("name" .=) <$> _eqsName,
                  ("readRatioMax" .=) <$> _eqsReadRatioMax,
                  ("waitRatioAvg" .=) <$> _eqsWaitRatioAvg,
                  ("id" .=) <$> _eqsId,
                  ("computeRatioMax" .=) <$> _eqsComputeRatioMax,
                  ("writeRatioMax" .=) <$> _eqsWriteRatioMax,
                  ("readRatioAvg" .=) <$> _eqsReadRatioAvg])

--
-- /See:/ 'jobConfigurationLoad' smart constructor.
data JobConfigurationLoad = JobConfigurationLoad'
    { _jclSkipLeadingRows     :: !(Maybe (Textual Int32))
    , _jclProjectionFields    :: !(Maybe [Text])
    , _jclDestinationTable    :: !(Maybe TableReference)
    , _jclWriteDisPosition    :: !(Maybe Text)
    , _jclAllowJaggedRows     :: !(Maybe Bool)
    , _jclSchemaInline        :: !(Maybe Text)
    , _jclIgnoreUnknownValues :: !(Maybe Bool)
    , _jclCreateDisPosition   :: !(Maybe Text)
    , _jclSchemaInlineFormat  :: !(Maybe Text)
    , _jclAllowQuotedNewlines :: !(Maybe Bool)
    , _jclSourceFormat        :: !(Maybe Text)
    , _jclSchema              :: !(Maybe TableSchema)
    , _jclQuote               :: !Text
    , _jclMaxBadRecords       :: !(Maybe (Textual Int32))
    , _jclSourceURIs          :: !(Maybe [Text])
    , _jclEncoding            :: !(Maybe Text)
    , _jclFieldDelimiter      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'jclSchemaInline'
--
-- * 'jclIgnoreUnknownValues'
--
-- * 'jclCreateDisPosition'
--
-- * 'jclSchemaInlineFormat'
--
-- * 'jclAllowQuotedNewlines'
--
-- * 'jclSourceFormat'
--
-- * 'jclSchema'
--
-- * 'jclQuote'
--
-- * 'jclMaxBadRecords'
--
-- * 'jclSourceURIs'
--
-- * 'jclEncoding'
--
-- * 'jclFieldDelimiter'
jobConfigurationLoad
    :: JobConfigurationLoad
jobConfigurationLoad =
    JobConfigurationLoad'
    { _jclSkipLeadingRows = Nothing
    , _jclProjectionFields = Nothing
    , _jclDestinationTable = Nothing
    , _jclWriteDisPosition = Nothing
    , _jclAllowJaggedRows = Nothing
    , _jclSchemaInline = Nothing
    , _jclIgnoreUnknownValues = Nothing
    , _jclCreateDisPosition = Nothing
    , _jclSchemaInlineFormat = Nothing
    , _jclAllowQuotedNewlines = Nothing
    , _jclSourceFormat = Nothing
    , _jclSchema = Nothing
    , _jclQuote = "\""
    , _jclMaxBadRecords = Nothing
    , _jclSourceURIs = Nothing
    , _jclEncoding = Nothing
    , _jclFieldDelimiter = Nothing
    }

-- | [Optional] The number of rows at the top of a CSV file that BigQuery
-- will skip when loading the data. The default value is 0. This property
-- is useful if you have header rows in the file that should be skipped.
jclSkipLeadingRows :: Lens' JobConfigurationLoad (Maybe Int32)
jclSkipLeadingRows
  = lens _jclSkipLeadingRows
      (\ s a -> s{_jclSkipLeadingRows = a})
      . mapping _Coerce

-- | [Experimental] If sourceFormat is set to \"DATASTORE_BACKUP\", indicates
-- which entity properties to load into BigQuery from a Cloud Datastore
-- backup. Property names are case sensitive and must be top-level
-- properties. If no properties are specified, BigQuery loads all
-- properties. If any named property isn\'t found in the Cloud Datastore
-- backup, an invalid error is returned in the job result.
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
-- specify \"AVRO\". The default value is CSV.
jclSourceFormat :: Lens' JobConfigurationLoad (Maybe Text)
jclSourceFormat
  = lens _jclSourceFormat
      (\ s a -> s{_jclSourceFormat = a})

-- | [Optional] The schema for the destination table. The schema can be
-- omitted if the destination table already exists, or if you\'re loading
-- data from Google Cloud Datastore.
jclSchema :: Lens' JobConfigurationLoad (Maybe TableSchema)
jclSchema
  = lens _jclSchema (\ s a -> s{_jclSchema = a})

-- | [Optional] The value that is used to quote data sections in a CSV file.
-- BigQuery converts the string to ISO-8859-1 encoding, and then uses the
-- first byte of the encoded string to split the data in its raw, binary
-- state. The default value is a double-quote (\'\"\'). If your data does
-- not contain quoted sections, set the property value to an empty string.
-- If your data contains quoted newline characters, you must also set the
-- allowQuotedNewlines property to true.
jclQuote :: Lens' JobConfigurationLoad Text
jclQuote = lens _jclQuote (\ s a -> s{_jclQuote = a})

-- | [Optional] The maximum number of bad records that BigQuery can ignore
-- when running the job. If the number of bad records exceeds this value,
-- an invalid error is returned in the job result. The default value is 0,
-- which requires that all records are valid.
jclMaxBadRecords :: Lens' JobConfigurationLoad (Maybe Int32)
jclMaxBadRecords
  = lens _jclMaxBadRecords
      (\ s a -> s{_jclMaxBadRecords = a})
      . mapping _Coerce

-- | [Required] The fully-qualified URIs that point to your data in Google
-- Cloud Storage. Each URI can contain one \'*\' wildcard character and it
-- must come after the \'bucket\' name.
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
                     <*> (o .:? "schemaInline")
                     <*> (o .:? "ignoreUnknownValues")
                     <*> (o .:? "createDisposition")
                     <*> (o .:? "schemaInlineFormat")
                     <*> (o .:? "allowQuotedNewlines")
                     <*> (o .:? "sourceFormat")
                     <*> (o .:? "schema")
                     <*> (o .:? "quote" .!= "\"")
                     <*> (o .:? "maxBadRecords")
                     <*> (o .:? "sourceUris" .!= mempty)
                     <*> (o .:? "encoding")
                     <*> (o .:? "fieldDelimiter"))

instance ToJSON JobConfigurationLoad where
        toJSON JobConfigurationLoad'{..}
          = object
              (catMaybes
                 [("skipLeadingRows" .=) <$> _jclSkipLeadingRows,
                  ("projectionFields" .=) <$> _jclProjectionFields,
                  ("destinationTable" .=) <$> _jclDestinationTable,
                  ("writeDisposition" .=) <$> _jclWriteDisPosition,
                  ("allowJaggedRows" .=) <$> _jclAllowJaggedRows,
                  ("schemaInline" .=) <$> _jclSchemaInline,
                  ("ignoreUnknownValues" .=) <$>
                    _jclIgnoreUnknownValues,
                  ("createDisposition" .=) <$> _jclCreateDisPosition,
                  ("schemaInlineFormat" .=) <$> _jclSchemaInlineFormat,
                  ("allowQuotedNewlines" .=) <$>
                    _jclAllowQuotedNewlines,
                  ("sourceFormat" .=) <$> _jclSourceFormat,
                  ("schema" .=) <$> _jclSchema,
                  Just ("quote" .= _jclQuote),
                  ("maxBadRecords" .=) <$> _jclMaxBadRecords,
                  ("sourceUris" .=) <$> _jclSourceURIs,
                  ("encoding" .=) <$> _jclEncoding,
                  ("fieldDelimiter" .=) <$> _jclFieldDelimiter])

--
-- /See:/ 'dataSetReference' smart constructor.
data DataSetReference = DataSetReference'
    { _dsrDataSetId :: !(Maybe Text)
    , _dsrProjectId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DataSetReference'
    { _dsrDataSetId = Nothing
    , _dsrProjectId = Nothing
    }

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
-- /See:/ 'tableDataInsertAllRequest' smart constructor.
data TableDataInsertAllRequest = TableDataInsertAllRequest'
    { _tdiarKind                :: !Text
    , _tdiarIgnoreUnknownValues :: !(Maybe Bool)
    , _tdiarRows                :: !(Maybe [TableDataInsertAllRequestRowsItem])
    , _tdiarTemplateSuffix      :: !(Maybe Text)
    , _tdiarSkipInvalidRows     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | [Experimental] If specified, treats the destination table as a base
-- template, and inserts the rows into an instance table named
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
-- /See:/ 'projectListProjectsItem' smart constructor.
data ProjectListProjectsItem = ProjectListProjectsItem'
    { _plpiFriendlyName     :: !(Maybe Text)
    , _plpiKind             :: !Text
    , _plpiProjectReference :: !(Maybe ProjectReference)
    , _plpiId               :: !(Maybe Text)
    , _plpiNumericId        :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data BigtableColumn = BigtableColumn'
    { _bcQualifierEncoded :: !(Maybe Base64)
    , _bcFieldName        :: !(Maybe Text)
    , _bcQualifierString  :: !(Maybe Text)
    , _bcOnlyReadLatest   :: !(Maybe Bool)
    , _bcType             :: !(Maybe Text)
    , _bcEncoding         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
      . mapping _Base64

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
-- allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Defaut
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
data Streamingbuffer = Streamingbuffer'
    { _sEstimatedBytes  :: !(Maybe (Textual Word64))
    , _sOldestEntryTime :: !(Maybe (Textual Word64))
    , _sEstimatedRows   :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
newtype TableRow = TableRow'
    { _trF :: Maybe [TableCell]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trF'
tableRow
    :: TableRow
tableRow =
    TableRow'
    { _trF = Nothing
    }

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
data JobListJobsItem = JobListJobsItem'
    { _jljiJobReference  :: !(Maybe JobReference)
    , _jljiStatus        :: !(Maybe JobStatus)
    , _jljiState         :: !(Maybe Text)
    , _jljiUserEmail     :: !(Maybe Text)
    , _jljiKind          :: !Text
    , _jljiErrorResult   :: !(Maybe ErrorProto)
    , _jljiId            :: !(Maybe Text)
    , _jljiStatistics    :: !(Maybe JobStatistics)
    , _jljiConfiguration :: !(Maybe JobConfiguration)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data TimePartitioning = TimePartitioning'
    { _tpExpirationMs :: !(Maybe (Textual Int64))
    , _tpType         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimePartitioning' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpExpirationMs'
--
-- * 'tpType'
timePartitioning
    :: TimePartitioning
timePartitioning =
    TimePartitioning'
    { _tpExpirationMs = Nothing
    , _tpType = Nothing
    }

-- | [Optional] Number of milliseconds for which to keep the storage for a
-- partition.
tpExpirationMs :: Lens' TimePartitioning (Maybe Int64)
tpExpirationMs
  = lens _tpExpirationMs
      (\ s a -> s{_tpExpirationMs = a})
      . mapping _Coerce

-- | [Required] The only type supported is DAY, which will generate one
-- partition per day based on data loading time.
tpType :: Lens' TimePartitioning (Maybe Text)
tpType = lens _tpType (\ s a -> s{_tpType = a})

instance FromJSON TimePartitioning where
        parseJSON
          = withObject "TimePartitioning"
              (\ o ->
                 TimePartitioning' <$>
                   (o .:? "expirationMs") <*> (o .:? "type"))

instance ToJSON TimePartitioning where
        toJSON TimePartitioning'{..}
          = object
              (catMaybes
                 [("expirationMs" .=) <$> _tpExpirationMs,
                  ("type" .=) <$> _tpType])

--
-- /See:/ 'jobConfiguration' smart constructor.
data JobConfiguration = JobConfiguration'
    { _jcCopy    :: !(Maybe JobConfigurationTableCopy)
    , _jcLoad    :: !(Maybe JobConfigurationLoad)
    , _jcQuery   :: !(Maybe JobConfigurationQuery)
    , _jcExtract :: !(Maybe JobConfigurationExtract)
    , _jcDryRun  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcCopy'
--
-- * 'jcLoad'
--
-- * 'jcQuery'
--
-- * 'jcExtract'
--
-- * 'jcDryRun'
jobConfiguration
    :: JobConfiguration
jobConfiguration =
    JobConfiguration'
    { _jcCopy = Nothing
    , _jcLoad = Nothing
    , _jcQuery = Nothing
    , _jcExtract = Nothing
    , _jcDryRun = Nothing
    }

-- | [Pick one] Copies a table.
jcCopy :: Lens' JobConfiguration (Maybe JobConfigurationTableCopy)
jcCopy = lens _jcCopy (\ s a -> s{_jcCopy = a})

-- | [Pick one] Configures a load job.
jcLoad :: Lens' JobConfiguration (Maybe JobConfigurationLoad)
jcLoad = lens _jcLoad (\ s a -> s{_jcLoad = a})

-- | [Pick one] Configures a query job.
jcQuery :: Lens' JobConfiguration (Maybe JobConfigurationQuery)
jcQuery = lens _jcQuery (\ s a -> s{_jcQuery = a})

-- | [Pick one] Configures an extract job.
jcExtract :: Lens' JobConfiguration (Maybe JobConfigurationExtract)
jcExtract
  = lens _jcExtract (\ s a -> s{_jcExtract = a})

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
                   (o .:? "copy") <*> (o .:? "load") <*> (o .:? "query")
                     <*> (o .:? "extract")
                     <*> (o .:? "dryRun"))

instance ToJSON JobConfiguration where
        toJSON JobConfiguration'{..}
          = object
              (catMaybes
                 [("copy" .=) <$> _jcCopy, ("load" .=) <$> _jcLoad,
                  ("query" .=) <$> _jcQuery,
                  ("extract" .=) <$> _jcExtract,
                  ("dryRun" .=) <$> _jcDryRun])

--
-- /See:/ 'job' smart constructor.
data Job = Job'
    { _jJobReference  :: !(Maybe JobReference)
    , _jStatus        :: !(Maybe JobStatus)
    , _jEtag          :: !(Maybe Text)
    , _jUserEmail     :: !(Maybe Text)
    , _jKind          :: !Text
    , _jSelfLink      :: !(Maybe Text)
    , _jId            :: !(Maybe Text)
    , _jStatistics    :: !(Maybe JobStatistics)
    , _jConfiguration :: !(Maybe JobConfiguration)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- /See:/ 'tableDataInsertAllResponseInsertErrorsItem' smart constructor.
data TableDataInsertAllResponseInsertErrorsItem = TableDataInsertAllResponseInsertErrorsItem'
    { _tdiarieiErrors :: !(Maybe [ErrorProto])
    , _tdiarieiIndex  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _tdiarieiErrors = Nothing
    , _tdiarieiIndex = Nothing
    }

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
         TableDataInsertAllResponseInsertErrorsItem where
        parseJSON
          = withObject
              "TableDataInsertAllResponseInsertErrorsItem"
              (\ o ->
                 TableDataInsertAllResponseInsertErrorsItem' <$>
                   (o .:? "errors" .!= mempty) <*> (o .:? "index"))

instance ToJSON
         TableDataInsertAllResponseInsertErrorsItem where
        toJSON
          TableDataInsertAllResponseInsertErrorsItem'{..}
          = object
              (catMaybes
                 [("errors" .=) <$> _tdiarieiErrors,
                  ("index" .=) <$> _tdiarieiIndex])

--
-- /See:/ 'jobConfigurationExtract' smart constructor.
data JobConfigurationExtract = JobConfigurationExtract'
    { _jceDestinationFormat :: !(Maybe Text)
    , _jceSourceTable       :: !(Maybe TableReference)
    , _jcePrintHeader       :: !Bool
    , _jceCompression       :: !(Maybe Text)
    , _jceDestinationURIs   :: !(Maybe [Text])
    , _jceDestinationURI    :: !(Maybe Text)
    , _jceFieldDelimiter    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- values include GZIP and NONE. The default value is NONE.
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
-- /See:/ 'jobCancelResponse' smart constructor.
data JobCancelResponse = JobCancelResponse'
    { _jcrKind :: !Text
    , _jcrJob  :: !(Maybe Job)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _jcrKind = "bigquery#jobCancelResponse"
    , _jcrJob = Nothing
    }

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
newtype JSONObject = JSONObject'
    { _joAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JSONObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'joAddtional'
jsonObject
    :: HashMap Text JSONValue -- ^ 'joAddtional'
    -> JSONObject
jsonObject pJoAddtional_ =
    JSONObject'
    { _joAddtional = _Coerce # pJoAddtional_
    }

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
data JobConfigurationQuery = JobConfigurationQuery'
    { _jcqDestinationTable             :: !(Maybe TableReference)
    , _jcqWriteDisPosition             :: !(Maybe Text)
    , _jcqPriority                     :: !(Maybe Text)
    , _jcqUseQueryCache                :: !Bool
    , _jcqPreserveNulls                :: !(Maybe Bool)
    , _jcqTableDefinitions             :: !(Maybe JobConfigurationQueryTableDefinitions)
    , _jcqCreateDisPosition            :: !(Maybe Text)
    , _jcqUserDefinedFunctionResources :: !(Maybe [UserDefinedFunctionResource])
    , _jcqAllowLargeResults            :: !(Maybe Bool)
    , _jcqMaximumBillingTier           :: !(Textual Int32)
    , _jcqQuery                        :: !(Maybe Text)
    , _jcqFlattenResults               :: !Bool
    , _jcqUseLegacySQL                 :: !(Maybe Bool)
    , _jcqDefaultDataSet               :: !(Maybe DataSetReference)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'jcqUseQueryCache'
--
-- * 'jcqPreserveNulls'
--
-- * 'jcqTableDefinitions'
--
-- * 'jcqCreateDisPosition'
--
-- * 'jcqUserDefinedFunctionResources'
--
-- * 'jcqAllowLargeResults'
--
-- * 'jcqMaximumBillingTier'
--
-- * 'jcqQuery'
--
-- * 'jcqFlattenResults'
--
-- * 'jcqUseLegacySQL'
--
-- * 'jcqDefaultDataSet'
jobConfigurationQuery
    :: JobConfigurationQuery
jobConfigurationQuery =
    JobConfigurationQuery'
    { _jcqDestinationTable = Nothing
    , _jcqWriteDisPosition = Nothing
    , _jcqPriority = Nothing
    , _jcqUseQueryCache = True
    , _jcqPreserveNulls = Nothing
    , _jcqTableDefinitions = Nothing
    , _jcqCreateDisPosition = Nothing
    , _jcqUserDefinedFunctionResources = Nothing
    , _jcqAllowLargeResults = Nothing
    , _jcqMaximumBillingTier = 1
    , _jcqQuery = Nothing
    , _jcqFlattenResults = True
    , _jcqUseLegacySQL = Nothing
    , _jcqDefaultDataSet = Nothing
    }

-- | [Optional] Describes the table where the query results should be stored.
-- If not present, a new table will be created to store the results.
jcqDestinationTable :: Lens' JobConfigurationQuery (Maybe TableReference)
jcqDestinationTable
  = lens _jcqDestinationTable
      (\ s a -> s{_jcqDestinationTable = a})

-- | [Optional] Specifies the action that occurs if the destination table
-- already exists. The following values are supported: WRITE_TRUNCATE: If
-- the table already exists, BigQuery overwrites the table data.
-- WRITE_APPEND: If the table already exists, BigQuery appends the data to
-- the table. WRITE_EMPTY: If the table already exists and contains data, a
-- \'duplicate\' error is returned in the job result. The default value is
-- WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able
-- to complete the job successfully. Creation, truncation and append
-- actions occur as one atomic update upon job completion.
jcqWriteDisPosition :: Lens' JobConfigurationQuery (Maybe Text)
jcqWriteDisPosition
  = lens _jcqWriteDisPosition
      (\ s a -> s{_jcqWriteDisPosition = a})

-- | [Optional] Specifies a priority for the query. Possible values include
-- INTERACTIVE and BATCH. The default value is INTERACTIVE.
jcqPriority :: Lens' JobConfigurationQuery (Maybe Text)
jcqPriority
  = lens _jcqPriority (\ s a -> s{_jcqPriority = a})

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

-- | [Experimental] Describes user-defined function resources used in the
-- query.
jcqUserDefinedFunctionResources :: Lens' JobConfigurationQuery [UserDefinedFunctionResource]
jcqUserDefinedFunctionResources
  = lens _jcqUserDefinedFunctionResources
      (\ s a -> s{_jcqUserDefinedFunctionResources = a})
      . _Default
      . _Coerce

-- | If true, allows the query to produce arbitrarily large result tables at
-- a slight cost in performance. Requires destinationTable to be set.
jcqAllowLargeResults :: Lens' JobConfigurationQuery (Maybe Bool)
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

-- | [Required] BigQuery SQL query to execute.
jcqQuery :: Lens' JobConfigurationQuery (Maybe Text)
jcqQuery = lens _jcqQuery (\ s a -> s{_jcqQuery = a})

-- | [Optional] Flattens all nested and repeated fields in the query results.
-- The default value is true. allowLargeResults must be true if this is set
-- to false.
jcqFlattenResults :: Lens' JobConfigurationQuery Bool
jcqFlattenResults
  = lens _jcqFlattenResults
      (\ s a -> s{_jcqFlattenResults = a})

-- | [Experimental] Specifies whether to use BigQuery\'s legacy SQL dialect
-- for this query. The default value is true. If set to false, the query
-- will use BigQuery\'s updated SQL dialect with improved standards
-- compliance: https:\/\/cloud.google.com\/bigquery\/sql-reference\/ When
-- using BigQuery\'s updated SQL, the values of allowLargeResults and
-- flattenResults are ignored. Queries with useLegacySql set to false will
-- be run as if allowLargeResults is true and flattenResults is false.
jcqUseLegacySQL :: Lens' JobConfigurationQuery (Maybe Bool)
jcqUseLegacySQL
  = lens _jcqUseLegacySQL
      (\ s a -> s{_jcqUseLegacySQL = a})

-- | [Optional] Specifies the default dataset to use for unqualified table
-- names in the query.
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
                     <*> (o .:? "useQueryCache" .!= True)
                     <*> (o .:? "preserveNulls")
                     <*> (o .:? "tableDefinitions")
                     <*> (o .:? "createDisposition")
                     <*> (o .:? "userDefinedFunctionResources" .!= mempty)
                     <*> (o .:? "allowLargeResults")
                     <*> (o .:? "maximumBillingTier" .!= 1)
                     <*> (o .:? "query")
                     <*> (o .:? "flattenResults" .!= True)
                     <*> (o .:? "useLegacySql")
                     <*> (o .:? "defaultDataset"))

instance ToJSON JobConfigurationQuery where
        toJSON JobConfigurationQuery'{..}
          = object
              (catMaybes
                 [("destinationTable" .=) <$> _jcqDestinationTable,
                  ("writeDisposition" .=) <$> _jcqWriteDisPosition,
                  ("priority" .=) <$> _jcqPriority,
                  Just ("useQueryCache" .= _jcqUseQueryCache),
                  ("preserveNulls" .=) <$> _jcqPreserveNulls,
                  ("tableDefinitions" .=) <$> _jcqTableDefinitions,
                  ("createDisposition" .=) <$> _jcqCreateDisPosition,
                  ("userDefinedFunctionResources" .=) <$>
                    _jcqUserDefinedFunctionResources,
                  ("allowLargeResults" .=) <$> _jcqAllowLargeResults,
                  Just
                    ("maximumBillingTier" .= _jcqMaximumBillingTier),
                  ("query" .=) <$> _jcqQuery,
                  Just ("flattenResults" .= _jcqFlattenResults),
                  ("useLegacySql" .=) <$> _jcqUseLegacySQL,
                  ("defaultDataset" .=) <$> _jcqDefaultDataSet])

--
-- /See:/ 'tableDataInsertAllRequestRowsItem' smart constructor.
data TableDataInsertAllRequestRowsItem = TableDataInsertAllRequestRowsItem'
    { _tdiarriJSON     :: !(Maybe JSONObject)
    , _tdiarriInsertId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _tdiarriJSON = Nothing
    , _tdiarriInsertId = Nothing
    }

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
data JobList = JobList'
    { _jlEtag          :: !(Maybe Text)
    , _jlNextPageToken :: !(Maybe Text)
    , _jlKind          :: !Text
    , _jlJobs          :: !(Maybe [JobListJobsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
newtype JobConfigurationQueryTableDefinitions = JobConfigurationQueryTableDefinitions'
    { _jcqtdAddtional :: HashMap Text ExternalDataConfiguration
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _jcqtdAddtional = _Coerce # pJcqtdAddtional_
    }

jcqtdAddtional :: Lens' JobConfigurationQueryTableDefinitions (HashMap Text ExternalDataConfiguration)
jcqtdAddtional
  = lens _jcqtdAddtional
      (\ s a -> s{_jcqtdAddtional = a})
      . _Coerce

instance FromJSON
         JobConfigurationQueryTableDefinitions where
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
newtype TableCell = TableCell'
    { _tcV :: Maybe JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcV'
tableCell
    :: TableCell
tableCell =
    TableCell'
    { _tcV = Nothing
    }

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
-- /See:/ 'viewDefinition' smart constructor.
data ViewDefinition = ViewDefinition'
    { _vdUserDefinedFunctionResources :: !(Maybe [UserDefinedFunctionResource])
    , _vdQuery                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ViewDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdUserDefinedFunctionResources'
--
-- * 'vdQuery'
viewDefinition
    :: ViewDefinition
viewDefinition =
    ViewDefinition'
    { _vdUserDefinedFunctionResources = Nothing
    , _vdQuery = Nothing
    }

-- | [Experimental] Describes user-defined function resources used in the
-- query.
vdUserDefinedFunctionResources :: Lens' ViewDefinition [UserDefinedFunctionResource]
vdUserDefinedFunctionResources
  = lens _vdUserDefinedFunctionResources
      (\ s a -> s{_vdUserDefinedFunctionResources = a})
      . _Default
      . _Coerce

-- | [Required] A query that BigQuery executes when the view is referenced.
vdQuery :: Lens' ViewDefinition (Maybe Text)
vdQuery = lens _vdQuery (\ s a -> s{_vdQuery = a})

instance FromJSON ViewDefinition where
        parseJSON
          = withObject "ViewDefinition"
              (\ o ->
                 ViewDefinition' <$>
                   (o .:? "userDefinedFunctionResources" .!= mempty) <*>
                     (o .:? "query"))

instance ToJSON ViewDefinition where
        toJSON ViewDefinition'{..}
          = object
              (catMaybes
                 [("userDefinedFunctionResources" .=) <$>
                    _vdUserDefinedFunctionResources,
                  ("query" .=) <$> _vdQuery])

--
-- /See:/ 'userDefinedFunctionResource' smart constructor.
data UserDefinedFunctionResource = UserDefinedFunctionResource'
    { _udfrResourceURI :: !(Maybe Text)
    , _udfrInlineCode  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _udfrResourceURI = Nothing
    , _udfrInlineCode = Nothing
    }

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
data JobStatistics2 = JobStatistics2'
    { _jSchema              :: !(Maybe TableSchema)
    , _jTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _jBillingTier         :: !(Maybe (Textual Int32))
    , _jReferencedTables    :: !(Maybe [TableReference])
    , _jQueryPlan           :: !(Maybe [ExplainQueryStage])
    , _jCacheHit            :: !(Maybe Bool)
    , _jTotalBytesBilled    :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobStatistics2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jSchema'
--
-- * 'jTotalBytesProcessed'
--
-- * 'jBillingTier'
--
-- * 'jReferencedTables'
--
-- * 'jQueryPlan'
--
-- * 'jCacheHit'
--
-- * 'jTotalBytesBilled'
jobStatistics2
    :: JobStatistics2
jobStatistics2 =
    JobStatistics2'
    { _jSchema = Nothing
    , _jTotalBytesProcessed = Nothing
    , _jBillingTier = Nothing
    , _jReferencedTables = Nothing
    , _jQueryPlan = Nothing
    , _jCacheHit = Nothing
    , _jTotalBytesBilled = Nothing
    }

-- | [Output-only, Experimental] The schema of the results. Present only for
-- successful dry run of non-legacy SQL queries.
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

-- | [Output-only, Experimental] Referenced tables for the job. Queries that
-- reference more than 50 tables will not have a complete list.
jReferencedTables :: Lens' JobStatistics2 [TableReference]
jReferencedTables
  = lens _jReferencedTables
      (\ s a -> s{_jReferencedTables = a})
      . _Default
      . _Coerce

-- | [Output-only, Experimental] Describes execution plan for the query as a
-- list of stages.
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

instance FromJSON JobStatistics2 where
        parseJSON
          = withObject "JobStatistics2"
              (\ o ->
                 JobStatistics2' <$>
                   (o .:? "schema") <*> (o .:? "totalBytesProcessed")
                     <*> (o .:? "billingTier")
                     <*> (o .:? "referencedTables" .!= mempty)
                     <*> (o .:? "queryPlan" .!= mempty)
                     <*> (o .:? "cacheHit")
                     <*> (o .:? "totalBytesBilled"))

instance ToJSON JobStatistics2 where
        toJSON JobStatistics2'{..}
          = object
              (catMaybes
                 [("schema" .=) <$> _jSchema,
                  ("totalBytesProcessed" .=) <$> _jTotalBytesProcessed,
                  ("billingTier" .=) <$> _jBillingTier,
                  ("referencedTables" .=) <$> _jReferencedTables,
                  ("queryPlan" .=) <$> _jQueryPlan,
                  ("cacheHit" .=) <$> _jCacheHit,
                  ("totalBytesBilled" .=) <$> _jTotalBytesBilled])

--
-- /See:/ 'jobStatus' smart constructor.
data JobStatus = JobStatus'
    { _jsState       :: !(Maybe Text)
    , _jsErrorResult :: !(Maybe ErrorProto)
    , _jsErrors      :: !(Maybe [ErrorProto])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    JobStatus'
    { _jsState = Nothing
    , _jsErrorResult = Nothing
    , _jsErrors = Nothing
    }

-- | [Output-only] Running state of the job.
jsState :: Lens' JobStatus (Maybe Text)
jsState = lens _jsState (\ s a -> s{_jsState = a})

-- | [Output-only] Final error result of the job. If present, indicates that
-- the job has completed and was unsuccessful.
jsErrorResult :: Lens' JobStatus (Maybe ErrorProto)
jsErrorResult
  = lens _jsErrorResult
      (\ s a -> s{_jsErrorResult = a})

-- | [Output-only] All errors encountered during the running of the job.
-- Errors here do not necessarily mean that the job has completed or was
-- unsuccessful.
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

--
-- /See:/ 'dataSetAccessItem' smart constructor.
data DataSetAccessItem = DataSetAccessItem'
    { _dsaiGroupByEmail :: !(Maybe Text)
    , _dsaiDomain       :: !(Maybe Text)
    , _dsaiSpecialGroup :: !(Maybe Text)
    , _dsaiRole         :: !(Maybe Text)
    , _dsaiView         :: !(Maybe TableReference)
    , _dsaiUserByEmail  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    , _dsaiView = Nothing
    , _dsaiUserByEmail = Nothing
    }

-- | [Pick one] An email address of a Google Group to grant access to.
dsaiGroupByEmail :: Lens' DataSetAccessItem (Maybe Text)
dsaiGroupByEmail
  = lens _dsaiGroupByEmail
      (\ s a -> s{_dsaiGroupByEmail = a})

-- | [Pick one] A domain to grant access to. Any users signed in with the
-- domain specified will be granted the specified access. Example:
-- \"example.com\".
dsaiDomain :: Lens' DataSetAccessItem (Maybe Text)
dsaiDomain
  = lens _dsaiDomain (\ s a -> s{_dsaiDomain = a})

-- | [Pick one] A special group to grant access to. Possible values include:
-- projectOwners: Owners of the enclosing project. projectReaders: Readers
-- of the enclosing project. projectWriters: Writers of the enclosing
-- project. allAuthenticatedUsers: All authenticated BigQuery users.
dsaiSpecialGroup :: Lens' DataSetAccessItem (Maybe Text)
dsaiSpecialGroup
  = lens _dsaiSpecialGroup
      (\ s a -> s{_dsaiSpecialGroup = a})

-- | [Required] Describes the rights granted to the user specified by the
-- other member of the access object. The following string values are
-- supported: READER, WRITER, OWNER.
dsaiRole :: Lens' DataSetAccessItem (Maybe Text)
dsaiRole = lens _dsaiRole (\ s a -> s{_dsaiRole = a})

-- | [Pick one] A view from a different dataset to grant access to. Queries
-- executed against that view will have read access to tables in this
-- dataset. The role field is not required when this field is set. If that
-- view is updated by any user, access to the view needs to be granted
-- again via an update operation.
dsaiView :: Lens' DataSetAccessItem (Maybe TableReference)
dsaiView = lens _dsaiView (\ s a -> s{_dsaiView = a})

-- | [Pick one] An email address of a user to grant access to. For example:
-- fred\'example.com.
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
                     <*> (o .:? "view")
                     <*> (o .:? "userByEmail"))

instance ToJSON DataSetAccessItem where
        toJSON DataSetAccessItem'{..}
          = object
              (catMaybes
                 [("groupByEmail" .=) <$> _dsaiGroupByEmail,
                  ("domain" .=) <$> _dsaiDomain,
                  ("specialGroup" .=) <$> _dsaiSpecialGroup,
                  ("role" .=) <$> _dsaiRole, ("view" .=) <$> _dsaiView,
                  ("userByEmail" .=) <$> _dsaiUserByEmail])

--
-- /See:/ 'tableDataInsertAllResponse' smart constructor.
data TableDataInsertAllResponse = TableDataInsertAllResponse'
    { _tKind         :: !Text
    , _tInsertErrors :: !(Maybe [TableDataInsertAllResponseInsertErrorsItem])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    { _tKind = "bigquery#tableDataInsertAllResponse"
    , _tInsertErrors = Nothing
    }

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
-- /See:/ 'table' smart constructor.
data Table = Table'
    { _tabCreationTime              :: !(Maybe (Textual Int64))
    , _tabEtag                      :: !(Maybe Text)
    , _tabNumBytes                  :: !(Maybe (Textual Int64))
    , _tabExternalDataConfiguration :: !(Maybe ExternalDataConfiguration)
    , _tabLocation                  :: !(Maybe Text)
    , _tabTableReference            :: !(Maybe TableReference)
    , _tabFriendlyName              :: !(Maybe Text)
    , _tabKind                      :: !Text
    , _tabLastModifiedTime          :: !(Maybe (Textual Word64))
    , _tabSchema                    :: !(Maybe TableSchema)
    , _tabStreamingBuffer           :: !(Maybe Streamingbuffer)
    , _tabSelfLink                  :: !(Maybe Text)
    , _tabTimePartitioning          :: !(Maybe TimePartitioning)
    , _tabNumRows                   :: !(Maybe (Textual Word64))
    , _tabView                      :: !(Maybe ViewDefinition)
    , _tabId                        :: !(Maybe Text)
    , _tabType                      :: !(Maybe Text)
    , _tabExpirationTime            :: !(Maybe (Textual Int64))
    , _tabDescription               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabCreationTime'
--
-- * 'tabEtag'
--
-- * 'tabNumBytes'
--
-- * 'tabExternalDataConfiguration'
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
-- * 'tabTimePartitioning'
--
-- * 'tabNumRows'
--
-- * 'tabView'
--
-- * 'tabId'
--
-- * 'tabType'
--
-- * 'tabExpirationTime'
--
-- * 'tabDescription'
table
    :: Table
table =
    Table'
    { _tabCreationTime = Nothing
    , _tabEtag = Nothing
    , _tabNumBytes = Nothing
    , _tabExternalDataConfiguration = Nothing
    , _tabLocation = Nothing
    , _tabTableReference = Nothing
    , _tabFriendlyName = Nothing
    , _tabKind = "bigquery#table"
    , _tabLastModifiedTime = Nothing
    , _tabSchema = Nothing
    , _tabStreamingBuffer = Nothing
    , _tabSelfLink = Nothing
    , _tabTimePartitioning = Nothing
    , _tabNumRows = Nothing
    , _tabView = Nothing
    , _tabId = Nothing
    , _tabType = Nothing
    , _tabExpirationTime = Nothing
    , _tabDescription = Nothing
    }

-- | [Output-only] The time when this table was created, in milliseconds
-- since the epoch.
tabCreationTime :: Lens' Table (Maybe Int64)
tabCreationTime
  = lens _tabCreationTime
      (\ s a -> s{_tabCreationTime = a})
      . mapping _Coerce

-- | [Output-only] A hash of this resource.
tabEtag :: Lens' Table (Maybe Text)
tabEtag = lens _tabEtag (\ s a -> s{_tabEtag = a})

-- | [Output-only] The size of this table in bytes, excluding any data in the
-- streaming buffer.
tabNumBytes :: Lens' Table (Maybe Int64)
tabNumBytes
  = lens _tabNumBytes (\ s a -> s{_tabNumBytes = a}) .
      mapping _Coerce

-- | [Optional] Describes the data format, location, and other properties of
-- a table stored outside of BigQuery. By defining these properties, the
-- data source can then be queried as if it were a standard BigQuery table.
tabExternalDataConfiguration :: Lens' Table (Maybe ExternalDataConfiguration)
tabExternalDataConfiguration
  = lens _tabExternalDataConfiguration
      (\ s a -> s{_tabExternalDataConfiguration = a})

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

-- | [Experimental] If specified, configures time-based partitioning for this
-- table.
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

-- | [Optional] The view definition.
tabView :: Lens' Table (Maybe ViewDefinition)
tabView = lens _tabView (\ s a -> s{_tabView = a})

-- | [Output-only] An opaque ID uniquely identifying the table.
tabId :: Lens' Table (Maybe Text)
tabId = lens _tabId (\ s a -> s{_tabId = a})

-- | [Output-only] Describes the table type. The following values are
-- supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined
-- by a SQL query. EXTERNAL: A table that references data stored in an
-- external storage system, such as Google Cloud Storage. The default value
-- is TABLE.
tabType :: Lens' Table (Maybe Text)
tabType = lens _tabType (\ s a -> s{_tabType = a})

-- | [Optional] The time when this table expires, in milliseconds since the
-- epoch. If not present, the table will persist indefinitely. Expired
-- tables will be deleted and their storage reclaimed.
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
                   (o .:? "creationTime") <*> (o .:? "etag") <*>
                     (o .:? "numBytes")
                     <*> (o .:? "externalDataConfiguration")
                     <*> (o .:? "location")
                     <*> (o .:? "tableReference")
                     <*> (o .:? "friendlyName")
                     <*> (o .:? "kind" .!= "bigquery#table")
                     <*> (o .:? "lastModifiedTime")
                     <*> (o .:? "schema")
                     <*> (o .:? "streamingBuffer")
                     <*> (o .:? "selfLink")
                     <*> (o .:? "timePartitioning")
                     <*> (o .:? "numRows")
                     <*> (o .:? "view")
                     <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "expirationTime")
                     <*> (o .:? "description"))

instance ToJSON Table where
        toJSON Table'{..}
          = object
              (catMaybes
                 [("creationTime" .=) <$> _tabCreationTime,
                  ("etag" .=) <$> _tabEtag,
                  ("numBytes" .=) <$> _tabNumBytes,
                  ("externalDataConfiguration" .=) <$>
                    _tabExternalDataConfiguration,
                  ("location" .=) <$> _tabLocation,
                  ("tableReference" .=) <$> _tabTableReference,
                  ("friendlyName" .=) <$> _tabFriendlyName,
                  Just ("kind" .= _tabKind),
                  ("lastModifiedTime" .=) <$> _tabLastModifiedTime,
                  ("schema" .=) <$> _tabSchema,
                  ("streamingBuffer" .=) <$> _tabStreamingBuffer,
                  ("selfLink" .=) <$> _tabSelfLink,
                  ("timePartitioning" .=) <$> _tabTimePartitioning,
                  ("numRows" .=) <$> _tabNumRows,
                  ("view" .=) <$> _tabView, ("id" .=) <$> _tabId,
                  ("type" .=) <$> _tabType,
                  ("expirationTime" .=) <$> _tabExpirationTime,
                  ("description" .=) <$> _tabDescription])

--
-- /See:/ 'errorProto' smart constructor.
data ErrorProto = ErrorProto'
    { _epDebugInfo :: !(Maybe Text)
    , _epLocation  :: !(Maybe Text)
    , _epReason    :: !(Maybe Text)
    , _epMessage   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
data CSVOptions = CSVOptions'
    { _coSkipLeadingRows     :: !(Maybe (Textual Int32))
    , _coAllowJaggedRows     :: !(Maybe Bool)
    , _coAllowQuotedNewlines :: !(Maybe Bool)
    , _coQuote               :: !Text
    , _coEncoding            :: !(Maybe Text)
    , _coFieldDelimiter      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
coSkipLeadingRows :: Lens' CSVOptions (Maybe Int32)
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
data JobStatistics3 = JobStatistics3'
    { _jsInputFiles     :: !(Maybe (Textual Int64))
    , _jsOutputRows     :: !(Maybe (Textual Int64))
    , _jsOutputBytes    :: !(Maybe (Textual Int64))
    , _jsInputFileBytes :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
jobStatistics3
    :: JobStatistics3
jobStatistics3 =
    JobStatistics3'
    { _jsInputFiles = Nothing
    , _jsOutputRows = Nothing
    , _jsOutputBytes = Nothing
    , _jsInputFileBytes = Nothing
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

instance FromJSON JobStatistics3 where
        parseJSON
          = withObject "JobStatistics3"
              (\ o ->
                 JobStatistics3' <$>
                   (o .:? "inputFiles") <*> (o .:? "outputRows") <*>
                     (o .:? "outputBytes")
                     <*> (o .:? "inputFileBytes"))

instance ToJSON JobStatistics3 where
        toJSON JobStatistics3'{..}
          = object
              (catMaybes
                 [("inputFiles" .=) <$> _jsInputFiles,
                  ("outputRows" .=) <$> _jsOutputRows,
                  ("outputBytes" .=) <$> _jsOutputBytes,
                  ("inputFileBytes" .=) <$> _jsInputFileBytes])

--
-- /See:/ 'queryResponse' smart constructor.
data QueryResponse = QueryResponse'
    { _qJobReference        :: !(Maybe JobReference)
    , _qKind                :: !Text
    , _qSchema              :: !(Maybe TableSchema)
    , _qTotalBytesProcessed :: !(Maybe (Textual Int64))
    , _qRows                :: !(Maybe [TableRow])
    , _qPageToken           :: !(Maybe Text)
    , _qTotalRows           :: !(Maybe (Textual Word64))
    , _qErrors              :: !(Maybe [ErrorProto])
    , _qJobComplete         :: !(Maybe Bool)
    , _qCacheHit            :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

-- | The total number of rows in the complete query result set, which can be
-- more than the number of rows in this single page of results.
qTotalRows :: Lens' QueryResponse (Maybe Word64)
qTotalRows
  = lens _qTotalRows (\ s a -> s{_qTotalRows = a}) .
      mapping _Coerce

-- | [Output-only] All errors and warnings encountered during the running of
-- the job. Errors here do not necessarily mean that the job has completed
-- or was unsuccessful.
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
                  ("totalRows" .=) <$> _qTotalRows,
                  ("errors" .=) <$> _qErrors,
                  ("jobComplete" .=) <$> _qJobComplete,
                  ("cacheHit" .=) <$> _qCacheHit])
