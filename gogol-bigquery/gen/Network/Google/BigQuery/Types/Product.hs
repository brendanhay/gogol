{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQuery.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQuery.Types.Product where

import           Network.Google.BigQuery.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'csvOptions' smart constructor.
data CsvOptions = CsvOptions
    { _coSkipLeadingRows     :: !(Maybe Int32)
    , _coAllowJaggedRows     :: !(Maybe Bool)
    , _coAllowQuotedNewlines :: !(Maybe Bool)
    , _coQuote               :: !Text
    , _coEncoding            :: !(Maybe Text)
    , _coFieldDelimiter      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CsvOptions' with the minimum fields required to make a request.
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
    :: CsvOptions
csvOptions =
    CsvOptions
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
coSkipLeadingRows :: Lens' CsvOptions (Maybe Int32)
coSkipLeadingRows
  = lens _coSkipLeadingRows
      (\ s a -> s{_coSkipLeadingRows = a})

-- | [Optional] Indicates if BigQuery should accept rows that are missing
-- trailing optional columns. If true, BigQuery treats missing trailing
-- columns as null values. If false, records with missing trailing columns
-- are treated as bad records, and if there are too many bad records, an
-- invalid error is returned in the job result. The default value is false.
coAllowJaggedRows :: Lens' CsvOptions (Maybe Bool)
coAllowJaggedRows
  = lens _coAllowJaggedRows
      (\ s a -> s{_coAllowJaggedRows = a})

-- | [Optional] Indicates if BigQuery should allow quoted data sections that
-- contain newline characters in a CSV file. The default value is false.
coAllowQuotedNewlines :: Lens' CsvOptions (Maybe Bool)
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
coQuote :: Lens' CsvOptions Text
coQuote = lens _coQuote (\ s a -> s{_coQuote = a})

-- | [Optional] The character encoding of the data. The supported values are
-- UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the
-- data after the raw, binary data has been split using the values of the
-- quote and fieldDelimiter properties.
coEncoding :: Lens' CsvOptions (Maybe Text)
coEncoding
  = lens _coEncoding (\ s a -> s{_coEncoding = a})

-- | [Optional] The separator for fields in a CSV file. BigQuery converts the
-- string to ISO-8859-1 encoding, and then uses the first byte of the
-- encoded string to split the data in its raw, binary state. BigQuery also
-- supports the escape sequence \"\\t\" to specify a tab separator. The
-- default value is a comma (\',\').
coFieldDelimiter :: Lens' CsvOptions (Maybe Text)
coFieldDelimiter
  = lens _coFieldDelimiter
      (\ s a -> s{_coFieldDelimiter = a})

--
-- /See:/ 'dataset' smart constructor.
data Dataset = Dataset
    { _dCreationTime             :: !(Maybe Int64)
    , _dAccess                   :: !(Maybe [DatasetItemAccess])
    , _dEtag                     :: !(Maybe Text)
    , _dLocation                 :: !(Maybe Text)
    , _dFriendlyName             :: !(Maybe Text)
    , _dKind                     :: !Text
    , _dLastModifiedTime         :: !(Maybe Int64)
    , _dDatasetReference         :: !(Maybe (Maybe DatasetReference))
    , _dSelfLink                 :: !(Maybe Text)
    , _dId                       :: !(Maybe Text)
    , _dDefaultTableExpirationMs :: !(Maybe Int64)
    , _dDescription              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Dataset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dCreationTime'
--
-- * 'dAccess'
--
-- * 'dEtag'
--
-- * 'dLocation'
--
-- * 'dFriendlyName'
--
-- * 'dKind'
--
-- * 'dLastModifiedTime'
--
-- * 'dDatasetReference'
--
-- * 'dSelfLink'
--
-- * 'dId'
--
-- * 'dDefaultTableExpirationMs'
--
-- * 'dDescription'
dataset
    :: Dataset
dataset =
    Dataset
    { _dCreationTime = Nothing
    , _dAccess = Nothing
    , _dEtag = Nothing
    , _dLocation = Nothing
    , _dFriendlyName = Nothing
    , _dKind = "bigquery#dataset"
    , _dLastModifiedTime = Nothing
    , _dDatasetReference = Nothing
    , _dSelfLink = Nothing
    , _dId = Nothing
    , _dDefaultTableExpirationMs = Nothing
    , _dDescription = Nothing
    }

-- | [Output-only] The time when this dataset was created, in milliseconds
-- since the epoch.
dCreationTime :: Lens' Dataset (Maybe Int64)
dCreationTime
  = lens _dCreationTime
      (\ s a -> s{_dCreationTime = a})

-- | [Optional] An array of objects that define dataset access for one or
-- more entities. You can set this property when inserting or updating a
-- dataset in order to control who is allowed to access the data. If
-- unspecified at dataset creation time, BigQuery adds default dataset
-- access for the following entities: access.specialGroup: projectReaders;
-- access.role: READER; access.specialGroup: projectWriters; access.role:
-- WRITER; access.specialGroup: projectOwners; access.role: OWNER;
-- access.userByEmail: [dataset creator email]; access.role: OWNER;
dAccess :: Lens' Dataset [DatasetItemAccess]
dAccess
  = lens _dAccess (\ s a -> s{_dAccess = a}) . _Default
      . _Coerce

-- | [Output-only] A hash of the resource.
dEtag :: Lens' Dataset (Maybe Text)
dEtag = lens _dEtag (\ s a -> s{_dEtag = a})

-- | [Experimental] The geographic location where the dataset should reside.
-- Possible values include EU and US. The default value is US.
dLocation :: Lens' Dataset (Maybe Text)
dLocation
  = lens _dLocation (\ s a -> s{_dLocation = a})

-- | [Optional] A descriptive name for the dataset.
dFriendlyName :: Lens' Dataset (Maybe Text)
dFriendlyName
  = lens _dFriendlyName
      (\ s a -> s{_dFriendlyName = a})

-- | [Output-only] The resource type.
dKind :: Lens' Dataset Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | [Output-only] The date when this dataset or any of its tables was last
-- modified, in milliseconds since the epoch.
dLastModifiedTime :: Lens' Dataset (Maybe Int64)
dLastModifiedTime
  = lens _dLastModifiedTime
      (\ s a -> s{_dLastModifiedTime = a})

-- | [Required] A reference that identifies the dataset.
dDatasetReference :: Lens' Dataset (Maybe (Maybe DatasetReference))
dDatasetReference
  = lens _dDatasetReference
      (\ s a -> s{_dDatasetReference = a})

-- | [Output-only] A URL that can be used to access the resource again. You
-- can use this URL in Get or Update requests to the resource.
dSelfLink :: Lens' Dataset (Maybe Text)
dSelfLink
  = lens _dSelfLink (\ s a -> s{_dSelfLink = a})

-- | [Output-only] The fully-qualified unique name of the dataset in the
-- format projectId:datasetId. The dataset name without the project name is
-- given in the datasetId field. When creating a new dataset, leave this
-- field blank, and instead specify the datasetId field.
dId :: Lens' Dataset (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

-- | [Experimental] The default lifetime of all tables in the dataset, in
-- milliseconds. The minimum value is 3600000 milliseconds (one hour). Once
-- this property is set, all newly-created tables in the dataset will have
-- an expirationTime property set to the creation time plus the value in
-- this property, and changing the value will only affect new tables, not
-- existing ones. When the expirationTime for a given table is reached,
-- that table will be deleted automatically. If a table\'s expirationTime
-- is modified or removed before the table expires, or if you provide an
-- explicit expirationTime when creating a table, that value takes
-- precedence over the default expiration time indicated by this property.
dDefaultTableExpirationMs :: Lens' Dataset (Maybe Int64)
dDefaultTableExpirationMs
  = lens _dDefaultTableExpirationMs
      (\ s a -> s{_dDefaultTableExpirationMs = a})

-- | [Optional] A user-friendly description of the dataset.
dDescription :: Lens' Dataset (Maybe Text)
dDescription
  = lens _dDescription (\ s a -> s{_dDescription = a})

--
-- /See:/ 'datasetItemAccess' smart constructor.
data DatasetItemAccess = DatasetItemAccess
    { _diaGroupByEmail :: !(Maybe Text)
    , _diaDomain       :: !(Maybe Text)
    , _diaSpecialGroup :: !(Maybe Text)
    , _diaRole         :: !(Maybe Text)
    , _diaView         :: !(Maybe (Maybe TableReference))
    , _diaUserByEmail  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetItemAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diaGroupByEmail'
--
-- * 'diaDomain'
--
-- * 'diaSpecialGroup'
--
-- * 'diaRole'
--
-- * 'diaView'
--
-- * 'diaUserByEmail'
datasetItemAccess
    :: DatasetItemAccess
datasetItemAccess =
    DatasetItemAccess
    { _diaGroupByEmail = Nothing
    , _diaDomain = Nothing
    , _diaSpecialGroup = Nothing
    , _diaRole = Nothing
    , _diaView = Nothing
    , _diaUserByEmail = Nothing
    }

-- | [Pick one] An email address of a Google Group to grant access to.
diaGroupByEmail :: Lens' DatasetItemAccess (Maybe Text)
diaGroupByEmail
  = lens _diaGroupByEmail
      (\ s a -> s{_diaGroupByEmail = a})

-- | [Pick one] A domain to grant access to. Any users signed in with the
-- domain specified will be granted the specified access. Example:
-- \"example.com\".
diaDomain :: Lens' DatasetItemAccess (Maybe Text)
diaDomain
  = lens _diaDomain (\ s a -> s{_diaDomain = a})

-- | [Pick one] A special group to grant access to. Possible values include:
-- projectOwners: Owners of the enclosing project. projectReaders: Readers
-- of the enclosing project. projectWriters: Writers of the enclosing
-- project. allAuthenticatedUsers: All authenticated BigQuery users.
diaSpecialGroup :: Lens' DatasetItemAccess (Maybe Text)
diaSpecialGroup
  = lens _diaSpecialGroup
      (\ s a -> s{_diaSpecialGroup = a})

-- | [Required] Describes the rights granted to the user specified by the
-- other member of the access object. The following string values are
-- supported: READER, WRITER, OWNER.
diaRole :: Lens' DatasetItemAccess (Maybe Text)
diaRole = lens _diaRole (\ s a -> s{_diaRole = a})

-- | [Pick one] A view from a different dataset to grant access to. Queries
-- executed against that view will have read access to tables in this
-- dataset. The role field is not required when this field is set. If that
-- view is updated by any user, access to the view needs to be granted
-- again via an update operation.
diaView :: Lens' DatasetItemAccess (Maybe (Maybe TableReference))
diaView = lens _diaView (\ s a -> s{_diaView = a})

-- | [Pick one] An email address of a user to grant access to. For example:
-- fred\'example.com.
diaUserByEmail :: Lens' DatasetItemAccess (Maybe Text)
diaUserByEmail
  = lens _diaUserByEmail
      (\ s a -> s{_diaUserByEmail = a})

--
-- /See:/ 'datasetList' smart constructor.
data DatasetList = DatasetList
    { _dlEtag          :: !(Maybe Text)
    , _dlNextPageToken :: !(Maybe Text)
    , _dlKind          :: !Text
    , _dlDatasets      :: !(Maybe [DatasetListItemDatasets])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlEtag'
--
-- * 'dlNextPageToken'
--
-- * 'dlKind'
--
-- * 'dlDatasets'
datasetList
    :: DatasetList
datasetList =
    DatasetList
    { _dlEtag = Nothing
    , _dlNextPageToken = Nothing
    , _dlKind = "bigquery#datasetList"
    , _dlDatasets = Nothing
    }

-- | A hash value of the results page. You can use this property to determine
-- if the page has changed since the last request.
dlEtag :: Lens' DatasetList (Maybe Text)
dlEtag = lens _dlEtag (\ s a -> s{_dlEtag = a})

-- | A token that can be used to request the next results page. This property
-- is omitted on the final results page.
dlNextPageToken :: Lens' DatasetList (Maybe Text)
dlNextPageToken
  = lens _dlNextPageToken
      (\ s a -> s{_dlNextPageToken = a})

-- | The list type. This property always returns the value
-- \"bigquery#datasetList\".
dlKind :: Lens' DatasetList Text
dlKind = lens _dlKind (\ s a -> s{_dlKind = a})

-- | An array of the dataset resources in the project. Each resource contains
-- basic information. For full information about a particular dataset
-- resource, use the Datasets: get method. This property is omitted when
-- there are no datasets in the project.
dlDatasets :: Lens' DatasetList [DatasetListItemDatasets]
dlDatasets
  = lens _dlDatasets (\ s a -> s{_dlDatasets = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'datasetListItemDatasets' smart constructor.
data DatasetListItemDatasets = DatasetListItemDatasets
    { _dlidFriendlyName     :: !(Maybe Text)
    , _dlidKind             :: !Text
    , _dlidDatasetReference :: !(Maybe (Maybe DatasetReference))
    , _dlidId               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetListItemDatasets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlidFriendlyName'
--
-- * 'dlidKind'
--
-- * 'dlidDatasetReference'
--
-- * 'dlidId'
datasetListItemDatasets
    :: DatasetListItemDatasets
datasetListItemDatasets =
    DatasetListItemDatasets
    { _dlidFriendlyName = Nothing
    , _dlidKind = "bigquery#dataset"
    , _dlidDatasetReference = Nothing
    , _dlidId = Nothing
    }

-- | A descriptive name for the dataset, if one exists.
dlidFriendlyName :: Lens' DatasetListItemDatasets (Maybe Text)
dlidFriendlyName
  = lens _dlidFriendlyName
      (\ s a -> s{_dlidFriendlyName = a})

-- | The resource type. This property always returns the value
-- \"bigquery#dataset\".
dlidKind :: Lens' DatasetListItemDatasets Text
dlidKind = lens _dlidKind (\ s a -> s{_dlidKind = a})

-- | The dataset reference. Use this property to access specific parts of the
-- dataset\'s ID, such as project ID or dataset ID.
dlidDatasetReference :: Lens' DatasetListItemDatasets (Maybe (Maybe DatasetReference))
dlidDatasetReference
  = lens _dlidDatasetReference
      (\ s a -> s{_dlidDatasetReference = a})

-- | The fully-qualified, unique, opaque ID of the dataset.
dlidId :: Lens' DatasetListItemDatasets (Maybe Text)
dlidId = lens _dlidId (\ s a -> s{_dlidId = a})

--
-- /See:/ 'datasetReference' smart constructor.
data DatasetReference = DatasetReference
    { _drDatasetId :: !(Maybe Text)
    , _drProjectId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatasetReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drDatasetId'
--
-- * 'drProjectId'
datasetReference
    :: DatasetReference
datasetReference =
    DatasetReference
    { _drDatasetId = Nothing
    , _drProjectId = Nothing
    }

-- | [Required] A unique ID for this dataset, without the project name. The
-- ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores
-- (_). The maximum length is 1,024 characters.
drDatasetId :: Lens' DatasetReference (Maybe Text)
drDatasetId
  = lens _drDatasetId (\ s a -> s{_drDatasetId = a})

-- | [Optional] The ID of the project containing this dataset.
drProjectId :: Lens' DatasetReference (Maybe Text)
drProjectId
  = lens _drProjectId (\ s a -> s{_drProjectId = a})

--
-- /See:/ 'errorProto' smart constructor.
data ErrorProto = ErrorProto
    { _epDebugInfo :: !(Maybe Text)
    , _epLocation  :: !(Maybe Text)
    , _epReason    :: !(Maybe Text)
    , _epMessage   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ErrorProto
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

--
-- /See:/ 'externalDataConfiguration' smart constructor.
data ExternalDataConfiguration = ExternalDataConfiguration
    { _edcIgnoreUnknownValues :: !(Maybe Bool)
    , _edcCompression         :: !(Maybe Text)
    , _edcSourceFormat        :: !(Maybe Text)
    , _edcSchema              :: !(Maybe (Maybe TableSchema))
    , _edcMaxBadRecords       :: !(Maybe Int32)
    , _edcSourceUris          :: !(Maybe [Text])
    , _edcCsvOptions          :: !(Maybe (Maybe CsvOptions))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExternalDataConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'edcSourceUris'
--
-- * 'edcCsvOptions'
externalDataConfiguration
    :: ExternalDataConfiguration
externalDataConfiguration =
    ExternalDataConfiguration
    { _edcIgnoreUnknownValues = Nothing
    , _edcCompression = Nothing
    , _edcSourceFormat = Nothing
    , _edcSchema = Nothing
    , _edcMaxBadRecords = Nothing
    , _edcSourceUris = Nothing
    , _edcCsvOptions = Nothing
    }

-- | [Optional] Indicates if BigQuery should allow extra values that are not
-- represented in the table schema. If true, the extra values are ignored.
-- If false, records with extra columns are treated as bad records, and if
-- there are too many bad records, an invalid error is returned in the job
-- result. The default value is false. The sourceFormat property determines
-- what BigQuery treats as an extra value: CSV: Trailing columns JSON:
-- Named values that don\'t match any column names
edcIgnoreUnknownValues :: Lens' ExternalDataConfiguration (Maybe Bool)
edcIgnoreUnknownValues
  = lens _edcIgnoreUnknownValues
      (\ s a -> s{_edcIgnoreUnknownValues = a})

-- | [Optional] The compression type of the data source. Possible values
-- include GZIP and NONE. The default value is NONE.
edcCompression :: Lens' ExternalDataConfiguration (Maybe Text)
edcCompression
  = lens _edcCompression
      (\ s a -> s{_edcCompression = a})

-- | [Required] The data format. For CSV files, specify \"CSV\". For
-- newline-delimited JSON, specify \"NEWLINE_DELIMITED_JSON\".
edcSourceFormat :: Lens' ExternalDataConfiguration (Maybe Text)
edcSourceFormat
  = lens _edcSourceFormat
      (\ s a -> s{_edcSourceFormat = a})

-- | [Required] The schema for the data.
edcSchema :: Lens' ExternalDataConfiguration (Maybe (Maybe TableSchema))
edcSchema
  = lens _edcSchema (\ s a -> s{_edcSchema = a})

-- | [Optional] The maximum number of bad records that BigQuery can ignore
-- when reading data. If the number of bad records exceeds this value, an
-- invalid error is returned in the job result. The default value is 0,
-- which requires that all records are valid.
edcMaxBadRecords :: Lens' ExternalDataConfiguration (Maybe Int32)
edcMaxBadRecords
  = lens _edcMaxBadRecords
      (\ s a -> s{_edcMaxBadRecords = a})

-- | [Required] The fully-qualified URIs that point to your data in Google
-- Cloud Storage. Each URI can contain one \'*\' wildcard character and it
-- must come after the \'bucket\' name. Size limits related to load jobs
-- apply to external data sources, plus an additional limit of 10 GB
-- maximum size across all URIs.
edcSourceUris :: Lens' ExternalDataConfiguration [Text]
edcSourceUris
  = lens _edcSourceUris
      (\ s a -> s{_edcSourceUris = a})
      . _Default
      . _Coerce

-- | Additional properties to set if sourceFormat is set to CSV.
edcCsvOptions :: Lens' ExternalDataConfiguration (Maybe (Maybe CsvOptions))
edcCsvOptions
  = lens _edcCsvOptions
      (\ s a -> s{_edcCsvOptions = a})

--
-- /See:/ 'getQueryResultsResponse' smart constructor.
data GetQueryResultsResponse = GetQueryResultsResponse
    { _gqrrJobReference        :: !(Maybe (Maybe JobReference))
    , _gqrrEtag                :: !(Maybe Text)
    , _gqrrKind                :: !Text
    , _gqrrSchema              :: !(Maybe (Maybe TableSchema))
    , _gqrrTotalBytesProcessed :: !(Maybe Int64)
    , _gqrrRows                :: !(Maybe [Maybe TableRow])
    , _gqrrPageToken           :: !(Maybe Text)
    , _gqrrTotalRows           :: !(Maybe Word64)
    , _gqrrErrors              :: !(Maybe [Maybe ErrorProto])
    , _gqrrJobComplete         :: !(Maybe Bool)
    , _gqrrCacheHit            :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    GetQueryResultsResponse
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
gqrrJobReference :: Lens' GetQueryResultsResponse (Maybe (Maybe JobReference))
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
gqrrSchema :: Lens' GetQueryResultsResponse (Maybe (Maybe TableSchema))
gqrrSchema
  = lens _gqrrSchema (\ s a -> s{_gqrrSchema = a})

-- | The total number of bytes processed for this query.
gqrrTotalBytesProcessed :: Lens' GetQueryResultsResponse (Maybe Int64)
gqrrTotalBytesProcessed
  = lens _gqrrTotalBytesProcessed
      (\ s a -> s{_gqrrTotalBytesProcessed = a})

-- | An object with as many results as can be contained within the maximum
-- permitted reply size. To get any additional rows, you can call
-- GetQueryResults and specify the jobReference returned above. Present
-- only when the query completes successfully.
gqrrRows :: Lens' GetQueryResultsResponse [Maybe TableRow]
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

-- | [Output-only] All errors and warnings encountered during the running of
-- the job. Errors here do not necessarily mean that the job has completed
-- or was unsuccessful.
gqrrErrors :: Lens' GetQueryResultsResponse [Maybe ErrorProto]
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

--
-- /See:/ 'job' smart constructor.
data Job = Job
    { _jobJobReference  :: !(Maybe (Maybe JobReference))
    , _jobStatus        :: !(Maybe (Maybe JobStatus))
    , _jobEtag          :: !(Maybe Text)
    , _jobUserEmail     :: !(Maybe Text)
    , _jobKind          :: !Text
    , _jobSelfLink      :: !(Maybe Text)
    , _jobId            :: !(Maybe Text)
    , _jobStatistics    :: !(Maybe (Maybe JobStatistics))
    , _jobConfiguration :: !(Maybe (Maybe JobConfiguration))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jobJobReference'
--
-- * 'jobStatus'
--
-- * 'jobEtag'
--
-- * 'jobUserEmail'
--
-- * 'jobKind'
--
-- * 'jobSelfLink'
--
-- * 'jobId'
--
-- * 'jobStatistics'
--
-- * 'jobConfiguration'
job
    :: Job
job =
    Job
    { _jobJobReference = Nothing
    , _jobStatus = Nothing
    , _jobEtag = Nothing
    , _jobUserEmail = Nothing
    , _jobKind = "bigquery#job"
    , _jobSelfLink = Nothing
    , _jobId = Nothing
    , _jobStatistics = Nothing
    , _jobConfiguration = Nothing
    }

-- | [Optional] Reference describing the unique-per-user name of the job.
jobJobReference :: Lens' Job (Maybe (Maybe JobReference))
jobJobReference
  = lens _jobJobReference
      (\ s a -> s{_jobJobReference = a})

-- | [Output-only] The status of this job. Examine this value when polling an
-- asynchronous job to see if the job is complete.
jobStatus :: Lens' Job (Maybe (Maybe JobStatus))
jobStatus
  = lens _jobStatus (\ s a -> s{_jobStatus = a})

-- | [Output-only] A hash of this resource.
jobEtag :: Lens' Job (Maybe Text)
jobEtag = lens _jobEtag (\ s a -> s{_jobEtag = a})

-- | [Output-only] Email address of the user who ran the job.
jobUserEmail :: Lens' Job (Maybe Text)
jobUserEmail
  = lens _jobUserEmail (\ s a -> s{_jobUserEmail = a})

-- | [Output-only] The type of the resource.
jobKind :: Lens' Job Text
jobKind = lens _jobKind (\ s a -> s{_jobKind = a})

-- | [Output-only] A URL that can be used to access this resource again.
jobSelfLink :: Lens' Job (Maybe Text)
jobSelfLink
  = lens _jobSelfLink (\ s a -> s{_jobSelfLink = a})

-- | [Output-only] Opaque ID field of the job
jobId :: Lens' Job (Maybe Text)
jobId = lens _jobId (\ s a -> s{_jobId = a})

-- | [Output-only] Information about the job, including starting time and
-- ending time of the job.
jobStatistics :: Lens' Job (Maybe (Maybe JobStatistics))
jobStatistics
  = lens _jobStatistics
      (\ s a -> s{_jobStatistics = a})

-- | [Required] Describes the job configuration.
jobConfiguration :: Lens' Job (Maybe (Maybe JobConfiguration))
jobConfiguration
  = lens _jobConfiguration
      (\ s a -> s{_jobConfiguration = a})

--
-- /See:/ 'jobCancelResponse' smart constructor.
data JobCancelResponse = JobCancelResponse
    { _jcrKind :: !Text
    , _jcrJob  :: !(Maybe (Maybe Job))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    JobCancelResponse
    { _jcrKind = "bigquery#jobCancelResponse"
    , _jcrJob = Nothing
    }

-- | The resource type of the response.
jcrKind :: Lens' JobCancelResponse Text
jcrKind = lens _jcrKind (\ s a -> s{_jcrKind = a})

-- | The final state of the job.
jcrJob :: Lens' JobCancelResponse (Maybe (Maybe Job))
jcrJob = lens _jcrJob (\ s a -> s{_jcrJob = a})

--
-- /See:/ 'jobConfiguration' smart constructor.
data JobConfiguration = JobConfiguration
    { _jcCopy    :: !(Maybe (Maybe JobConfigurationTableCopy))
    , _jcLink    :: !(Maybe (Maybe JobConfigurationLink))
    , _jcLoad    :: !(Maybe (Maybe JobConfigurationLoad))
    , _jcQuery   :: !(Maybe (Maybe JobConfigurationQuery))
    , _jcExtract :: !(Maybe (Maybe JobConfigurationExtract))
    , _jcDryRun  :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcCopy'
--
-- * 'jcLink'
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
    JobConfiguration
    { _jcCopy = Nothing
    , _jcLink = Nothing
    , _jcLoad = Nothing
    , _jcQuery = Nothing
    , _jcExtract = Nothing
    , _jcDryRun = Nothing
    }

-- | [Pick one] Copies a table.
jcCopy :: Lens' JobConfiguration (Maybe (Maybe JobConfigurationTableCopy))
jcCopy = lens _jcCopy (\ s a -> s{_jcCopy = a})

-- | [Pick one] Configures a link job.
jcLink :: Lens' JobConfiguration (Maybe (Maybe JobConfigurationLink))
jcLink = lens _jcLink (\ s a -> s{_jcLink = a})

-- | [Pick one] Configures a load job.
jcLoad :: Lens' JobConfiguration (Maybe (Maybe JobConfigurationLoad))
jcLoad = lens _jcLoad (\ s a -> s{_jcLoad = a})

-- | [Pick one] Configures a query job.
jcQuery :: Lens' JobConfiguration (Maybe (Maybe JobConfigurationQuery))
jcQuery = lens _jcQuery (\ s a -> s{_jcQuery = a})

-- | [Pick one] Configures an extract job.
jcExtract :: Lens' JobConfiguration (Maybe (Maybe JobConfigurationExtract))
jcExtract
  = lens _jcExtract (\ s a -> s{_jcExtract = a})

-- | [Optional] If set, don\'t actually run this job. A valid query will
-- return a mostly empty response with some processing statistics, while an
-- invalid query will return the same error it would if it wasn\'t a dry
-- run. Behavior of non-query jobs is undefined.
jcDryRun :: Lens' JobConfiguration (Maybe Bool)
jcDryRun = lens _jcDryRun (\ s a -> s{_jcDryRun = a})

--
-- /See:/ 'jobConfigurationExtract' smart constructor.
data JobConfigurationExtract = JobConfigurationExtract
    { _jceDestinationFormat :: !(Maybe Text)
    , _jceSourceTable       :: !(Maybe (Maybe TableReference))
    , _jcePrintHeader       :: !Bool
    , _jceCompression       :: !(Maybe Text)
    , _jceDestinationUris   :: !(Maybe [Text])
    , _jceDestinationUri    :: !(Maybe Text)
    , _jceFieldDelimiter    :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'jceDestinationUris'
--
-- * 'jceDestinationUri'
--
-- * 'jceFieldDelimiter'
jobConfigurationExtract
    :: JobConfigurationExtract
jobConfigurationExtract =
    JobConfigurationExtract
    { _jceDestinationFormat = Nothing
    , _jceSourceTable = Nothing
    , _jcePrintHeader = True
    , _jceCompression = Nothing
    , _jceDestinationUris = Nothing
    , _jceDestinationUri = Nothing
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
jceSourceTable :: Lens' JobConfigurationExtract (Maybe (Maybe TableReference))
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
jceDestinationUris :: Lens' JobConfigurationExtract [Text]
jceDestinationUris
  = lens _jceDestinationUris
      (\ s a -> s{_jceDestinationUris = a})
      . _Default
      . _Coerce

-- | [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI
-- as necessary. The fully-qualified Google Cloud Storage URI where the
-- extracted table should be written.
jceDestinationUri :: Lens' JobConfigurationExtract (Maybe Text)
jceDestinationUri
  = lens _jceDestinationUri
      (\ s a -> s{_jceDestinationUri = a})

-- | [Optional] Delimiter to use between fields in the exported data. Default
-- is \',\'
jceFieldDelimiter :: Lens' JobConfigurationExtract (Maybe Text)
jceFieldDelimiter
  = lens _jceFieldDelimiter
      (\ s a -> s{_jceFieldDelimiter = a})

--
-- /See:/ 'jobConfigurationLink' smart constructor.
data JobConfigurationLink = JobConfigurationLink
    { _jclDestinationTable  :: !(Maybe (Maybe TableReference))
    , _jclWriteDisposition  :: !(Maybe Text)
    , _jclCreateDisposition :: !(Maybe Text)
    , _jclSourceUri         :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobConfigurationLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jclDestinationTable'
--
-- * 'jclWriteDisposition'
--
-- * 'jclCreateDisposition'
--
-- * 'jclSourceUri'
jobConfigurationLink
    :: JobConfigurationLink
jobConfigurationLink =
    JobConfigurationLink
    { _jclDestinationTable = Nothing
    , _jclWriteDisposition = Nothing
    , _jclCreateDisposition = Nothing
    , _jclSourceUri = Nothing
    }

-- | [Required] The destination table of the link job.
jclDestinationTable :: Lens' JobConfigurationLink (Maybe (Maybe TableReference))
jclDestinationTable
  = lens _jclDestinationTable
      (\ s a -> s{_jclDestinationTable = a})

-- | [Optional] Specifies the action that occurs if the destination table
-- already exists. The following values are supported: WRITE_TRUNCATE: If
-- the table already exists, BigQuery overwrites the table data.
-- WRITE_APPEND: If the table already exists, BigQuery appends the data to
-- the table. WRITE_EMPTY: If the table already exists and contains data, a
-- \'duplicate\' error is returned in the job result. The default value is
-- WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able
-- to complete the job successfully. Creation, truncation and append
-- actions occur as one atomic update upon job completion.
jclWriteDisposition :: Lens' JobConfigurationLink (Maybe Text)
jclWriteDisposition
  = lens _jclWriteDisposition
      (\ s a -> s{_jclWriteDisposition = a})

-- | [Optional] Specifies whether the job is allowed to create new tables.
-- The following values are supported: CREATE_IF_NEEDED: If the table does
-- not exist, BigQuery creates the table. CREATE_NEVER: The table must
-- already exist. If it does not, a \'notFound\' error is returned in the
-- job result. The default value is CREATE_IF_NEEDED. Creation, truncation
-- and append actions occur as one atomic update upon job completion.
jclCreateDisposition :: Lens' JobConfigurationLink (Maybe Text)
jclCreateDisposition
  = lens _jclCreateDisposition
      (\ s a -> s{_jclCreateDisposition = a})

-- | [Required] URI of source table to link.
jclSourceUri :: Lens' JobConfigurationLink [Text]
jclSourceUri
  = lens _jclSourceUri (\ s a -> s{_jclSourceUri = a})
      . _Default
      . _Coerce

--
-- /See:/ 'jobConfigurationLoad' smart constructor.
data JobConfigurationLoad = JobConfigurationLoad
    { _jSkipLeadingRows     :: !(Maybe Int32)
    , _jProjectionFields    :: !(Maybe [Text])
    , _jDestinationTable    :: !(Maybe (Maybe TableReference))
    , _jWriteDisposition    :: !(Maybe Text)
    , _jAllowJaggedRows     :: !(Maybe Bool)
    , _jSchemaInline        :: !(Maybe Text)
    , _jIgnoreUnknownValues :: !(Maybe Bool)
    , _jCreateDisposition   :: !(Maybe Text)
    , _jSchemaInlineFormat  :: !(Maybe Text)
    , _jAllowQuotedNewlines :: !(Maybe Bool)
    , _jSourceFormat        :: !(Maybe Text)
    , _jSchema              :: !(Maybe (Maybe TableSchema))
    , _jQuote               :: !Text
    , _jMaxBadRecords       :: !(Maybe Int32)
    , _jSourceUris          :: !(Maybe [Text])
    , _jEncoding            :: !(Maybe Text)
    , _jFieldDelimiter      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobConfigurationLoad' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jSkipLeadingRows'
--
-- * 'jProjectionFields'
--
-- * 'jDestinationTable'
--
-- * 'jWriteDisposition'
--
-- * 'jAllowJaggedRows'
--
-- * 'jSchemaInline'
--
-- * 'jIgnoreUnknownValues'
--
-- * 'jCreateDisposition'
--
-- * 'jSchemaInlineFormat'
--
-- * 'jAllowQuotedNewlines'
--
-- * 'jSourceFormat'
--
-- * 'jSchema'
--
-- * 'jQuote'
--
-- * 'jMaxBadRecords'
--
-- * 'jSourceUris'
--
-- * 'jEncoding'
--
-- * 'jFieldDelimiter'
jobConfigurationLoad
    :: JobConfigurationLoad
jobConfigurationLoad =
    JobConfigurationLoad
    { _jSkipLeadingRows = Nothing
    , _jProjectionFields = Nothing
    , _jDestinationTable = Nothing
    , _jWriteDisposition = Nothing
    , _jAllowJaggedRows = Nothing
    , _jSchemaInline = Nothing
    , _jIgnoreUnknownValues = Nothing
    , _jCreateDisposition = Nothing
    , _jSchemaInlineFormat = Nothing
    , _jAllowQuotedNewlines = Nothing
    , _jSourceFormat = Nothing
    , _jSchema = Nothing
    , _jQuote = "\""
    , _jMaxBadRecords = Nothing
    , _jSourceUris = Nothing
    , _jEncoding = Nothing
    , _jFieldDelimiter = Nothing
    }

-- | [Optional] The number of rows at the top of a CSV file that BigQuery
-- will skip when loading the data. The default value is 0. This property
-- is useful if you have header rows in the file that should be skipped.
jSkipLeadingRows :: Lens' JobConfigurationLoad (Maybe Int32)
jSkipLeadingRows
  = lens _jSkipLeadingRows
      (\ s a -> s{_jSkipLeadingRows = a})

-- | [Experimental] If sourceFormat is set to \"DATASTORE_BACKUP\", indicates
-- which entity properties to load into BigQuery from a Cloud Datastore
-- backup. Property names are case sensitive and must be top-level
-- properties. If no properties are specified, BigQuery loads all
-- properties. If any named property isn\'t found in the Cloud Datastore
-- backup, an invalid error is returned in the job result.
jProjectionFields :: Lens' JobConfigurationLoad [Text]
jProjectionFields
  = lens _jProjectionFields
      (\ s a -> s{_jProjectionFields = a})
      . _Default
      . _Coerce

-- | [Required] The destination table to load the data into.
jDestinationTable :: Lens' JobConfigurationLoad (Maybe (Maybe TableReference))
jDestinationTable
  = lens _jDestinationTable
      (\ s a -> s{_jDestinationTable = a})

-- | [Optional] Specifies the action that occurs if the destination table
-- already exists. The following values are supported: WRITE_TRUNCATE: If
-- the table already exists, BigQuery overwrites the table data.
-- WRITE_APPEND: If the table already exists, BigQuery appends the data to
-- the table. WRITE_EMPTY: If the table already exists and contains data, a
-- \'duplicate\' error is returned in the job result. The default value is
-- WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able
-- to complete the job successfully. Creation, truncation and append
-- actions occur as one atomic update upon job completion.
jWriteDisposition :: Lens' JobConfigurationLoad (Maybe Text)
jWriteDisposition
  = lens _jWriteDisposition
      (\ s a -> s{_jWriteDisposition = a})

-- | [Optional] Accept rows that are missing trailing optional columns. The
-- missing values are treated as nulls. If false, records with missing
-- trailing columns are treated as bad records, and if there are too many
-- bad records, an invalid error is returned in the job result. The default
-- value is false. Only applicable to CSV, ignored for other formats.
jAllowJaggedRows :: Lens' JobConfigurationLoad (Maybe Bool)
jAllowJaggedRows
  = lens _jAllowJaggedRows
      (\ s a -> s{_jAllowJaggedRows = a})

-- | [Deprecated] The inline schema. For CSV schemas, specify as
-- \"Field1:Type1[,Field2:Type2]*\". For example, \"foo:STRING,
-- bar:INTEGER, baz:FLOAT\".
jSchemaInline :: Lens' JobConfigurationLoad (Maybe Text)
jSchemaInline
  = lens _jSchemaInline
      (\ s a -> s{_jSchemaInline = a})

-- | [Optional] Indicates if BigQuery should allow extra values that are not
-- represented in the table schema. If true, the extra values are ignored.
-- If false, records with extra columns are treated as bad records, and if
-- there are too many bad records, an invalid error is returned in the job
-- result. The default value is false. The sourceFormat property determines
-- what BigQuery treats as an extra value: CSV: Trailing columns JSON:
-- Named values that don\'t match any column names
jIgnoreUnknownValues :: Lens' JobConfigurationLoad (Maybe Bool)
jIgnoreUnknownValues
  = lens _jIgnoreUnknownValues
      (\ s a -> s{_jIgnoreUnknownValues = a})

-- | [Optional] Specifies whether the job is allowed to create new tables.
-- The following values are supported: CREATE_IF_NEEDED: If the table does
-- not exist, BigQuery creates the table. CREATE_NEVER: The table must
-- already exist. If it does not, a \'notFound\' error is returned in the
-- job result. The default value is CREATE_IF_NEEDED. Creation, truncation
-- and append actions occur as one atomic update upon job completion.
jCreateDisposition :: Lens' JobConfigurationLoad (Maybe Text)
jCreateDisposition
  = lens _jCreateDisposition
      (\ s a -> s{_jCreateDisposition = a})

-- | [Deprecated] The format of the schemaInline property.
jSchemaInlineFormat :: Lens' JobConfigurationLoad (Maybe Text)
jSchemaInlineFormat
  = lens _jSchemaInlineFormat
      (\ s a -> s{_jSchemaInlineFormat = a})

-- | Indicates if BigQuery should allow quoted data sections that contain
-- newline characters in a CSV file. The default value is false.
jAllowQuotedNewlines :: Lens' JobConfigurationLoad (Maybe Bool)
jAllowQuotedNewlines
  = lens _jAllowQuotedNewlines
      (\ s a -> s{_jAllowQuotedNewlines = a})

-- | [Optional] The format of the data files. For CSV files, specify \"CSV\".
-- For datastore backups, specify \"DATASTORE_BACKUP\". For
-- newline-delimited JSON, specify \"NEWLINE_DELIMITED_JSON\". The default
-- value is CSV.
jSourceFormat :: Lens' JobConfigurationLoad (Maybe Text)
jSourceFormat
  = lens _jSourceFormat
      (\ s a -> s{_jSourceFormat = a})

-- | [Optional] The schema for the destination table. The schema can be
-- omitted if the destination table already exists or if the schema can be
-- inferred from the loaded data.
jSchema :: Lens' JobConfigurationLoad (Maybe (Maybe TableSchema))
jSchema = lens _jSchema (\ s a -> s{_jSchema = a})

-- | [Optional] The value that is used to quote data sections in a CSV file.
-- BigQuery converts the string to ISO-8859-1 encoding, and then uses the
-- first byte of the encoded string to split the data in its raw, binary
-- state. The default value is a double-quote (\'\"\'). If your data does
-- not contain quoted sections, set the property value to an empty string.
-- If your data contains quoted newline characters, you must also set the
-- allowQuotedNewlines property to true.
jQuote :: Lens' JobConfigurationLoad Text
jQuote = lens _jQuote (\ s a -> s{_jQuote = a})

-- | [Optional] The maximum number of bad records that BigQuery can ignore
-- when running the job. If the number of bad records exceeds this value,
-- an invalid error is returned in the job result. The default value is 0,
-- which requires that all records are valid.
jMaxBadRecords :: Lens' JobConfigurationLoad (Maybe Int32)
jMaxBadRecords
  = lens _jMaxBadRecords
      (\ s a -> s{_jMaxBadRecords = a})

-- | [Required] The fully-qualified URIs that point to your data in Google
-- Cloud Storage. Each URI can contain one \'*\' wildcard character and it
-- must come after the \'bucket\' name.
jSourceUris :: Lens' JobConfigurationLoad [Text]
jSourceUris
  = lens _jSourceUris (\ s a -> s{_jSourceUris = a}) .
      _Default
      . _Coerce

-- | [Optional] The character encoding of the data. The supported values are
-- UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the
-- data after the raw, binary data has been split using the values of the
-- quote and fieldDelimiter properties.
jEncoding :: Lens' JobConfigurationLoad (Maybe Text)
jEncoding
  = lens _jEncoding (\ s a -> s{_jEncoding = a})

-- | [Optional] The separator for fields in a CSV file. BigQuery converts the
-- string to ISO-8859-1 encoding, and then uses the first byte of the
-- encoded string to split the data in its raw, binary state. BigQuery also
-- supports the escape sequence \"\\t\" to specify a tab separator. The
-- default value is a comma (\',\').
jFieldDelimiter :: Lens' JobConfigurationLoad (Maybe Text)
jFieldDelimiter
  = lens _jFieldDelimiter
      (\ s a -> s{_jFieldDelimiter = a})

--
-- /See:/ 'jobConfigurationQuery' smart constructor.
data JobConfigurationQuery = JobConfigurationQuery
    { _jcqDestinationTable             :: !(Maybe (Maybe TableReference))
    , _jcqWriteDisposition             :: !(Maybe Text)
    , _jcqPriority                     :: !(Maybe Text)
    , _jcqUseQueryCache                :: !Bool
    , _jcqPreserveNulls                :: !(Maybe Bool)
    , _jcqTableDefinitions             :: !(Maybe JobConfigurationQueryTableDefinitions)
    , _jcqCreateDisposition            :: !(Maybe Text)
    , _jcqUserDefinedFunctionResources :: !(Maybe [Maybe UserDefinedFunctionResource])
    , _jcqAllowLargeResults            :: !(Maybe Bool)
    , _jcqQuery                        :: !(Maybe Text)
    , _jcqFlattenResults               :: !Bool
    , _jcqDefaultDataset               :: !(Maybe (Maybe DatasetReference))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobConfigurationQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcqDestinationTable'
--
-- * 'jcqWriteDisposition'
--
-- * 'jcqPriority'
--
-- * 'jcqUseQueryCache'
--
-- * 'jcqPreserveNulls'
--
-- * 'jcqTableDefinitions'
--
-- * 'jcqCreateDisposition'
--
-- * 'jcqUserDefinedFunctionResources'
--
-- * 'jcqAllowLargeResults'
--
-- * 'jcqQuery'
--
-- * 'jcqFlattenResults'
--
-- * 'jcqDefaultDataset'
jobConfigurationQuery
    :: JobConfigurationQuery
jobConfigurationQuery =
    JobConfigurationQuery
    { _jcqDestinationTable = Nothing
    , _jcqWriteDisposition = Nothing
    , _jcqPriority = Nothing
    , _jcqUseQueryCache = True
    , _jcqPreserveNulls = Nothing
    , _jcqTableDefinitions = Nothing
    , _jcqCreateDisposition = Nothing
    , _jcqUserDefinedFunctionResources = Nothing
    , _jcqAllowLargeResults = Nothing
    , _jcqQuery = Nothing
    , _jcqFlattenResults = True
    , _jcqDefaultDataset = Nothing
    }

-- | [Optional] Describes the table where the query results should be stored.
-- If not present, a new table will be created to store the results.
jcqDestinationTable :: Lens' JobConfigurationQuery (Maybe (Maybe TableReference))
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
jcqWriteDisposition :: Lens' JobConfigurationQuery (Maybe Text)
jcqWriteDisposition
  = lens _jcqWriteDisposition
      (\ s a -> s{_jcqWriteDisposition = a})

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

-- | [Experimental] If querying an external data source outside of BigQuery,
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
jcqCreateDisposition :: Lens' JobConfigurationQuery (Maybe Text)
jcqCreateDisposition
  = lens _jcqCreateDisposition
      (\ s a -> s{_jcqCreateDisposition = a})

-- | [Experimental] Describes user-defined function resources used in the
-- query.
jcqUserDefinedFunctionResources :: Lens' JobConfigurationQuery [Maybe UserDefinedFunctionResource]
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

-- | [Optional] Specifies the default dataset to use for unqualified table
-- names in the query.
jcqDefaultDataset :: Lens' JobConfigurationQuery (Maybe (Maybe DatasetReference))
jcqDefaultDataset
  = lens _jcqDefaultDataset
      (\ s a -> s{_jcqDefaultDataset = a})

-- | [Experimental] If querying an external data source outside of BigQuery,
-- describes the data format, location and other properties of the data
-- source. By defining these properties, the data source can then be
-- queried as if it were a standard BigQuery table.
--
-- /See:/ 'jobConfigurationQueryTableDefinitions' smart constructor.
data JobConfigurationQueryTableDefinitions =
    JobConfigurationQueryTableDefinitions
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobConfigurationQueryTableDefinitions' with the minimum fields required to make a request.
--
jobConfigurationQueryTableDefinitions
    :: JobConfigurationQueryTableDefinitions
jobConfigurationQueryTableDefinitions = JobConfigurationQueryTableDefinitions

--
-- /See:/ 'jobConfigurationTableCopy' smart constructor.
data JobConfigurationTableCopy = JobConfigurationTableCopy
    { _jctcDestinationTable  :: !(Maybe (Maybe TableReference))
    , _jctcWriteDisposition  :: !(Maybe Text)
    , _jctcSourceTables      :: !(Maybe [Maybe TableReference])
    , _jctcCreateDisposition :: !(Maybe Text)
    , _jctcSourceTable       :: !(Maybe (Maybe TableReference))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobConfigurationTableCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jctcDestinationTable'
--
-- * 'jctcWriteDisposition'
--
-- * 'jctcSourceTables'
--
-- * 'jctcCreateDisposition'
--
-- * 'jctcSourceTable'
jobConfigurationTableCopy
    :: JobConfigurationTableCopy
jobConfigurationTableCopy =
    JobConfigurationTableCopy
    { _jctcDestinationTable = Nothing
    , _jctcWriteDisposition = Nothing
    , _jctcSourceTables = Nothing
    , _jctcCreateDisposition = Nothing
    , _jctcSourceTable = Nothing
    }

-- | [Required] The destination table
jctcDestinationTable :: Lens' JobConfigurationTableCopy (Maybe (Maybe TableReference))
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
jctcWriteDisposition :: Lens' JobConfigurationTableCopy (Maybe Text)
jctcWriteDisposition
  = lens _jctcWriteDisposition
      (\ s a -> s{_jctcWriteDisposition = a})

-- | [Pick one] Source tables to copy.
jctcSourceTables :: Lens' JobConfigurationTableCopy [Maybe TableReference]
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
jctcCreateDisposition :: Lens' JobConfigurationTableCopy (Maybe Text)
jctcCreateDisposition
  = lens _jctcCreateDisposition
      (\ s a -> s{_jctcCreateDisposition = a})

-- | [Pick one] Source table to copy.
jctcSourceTable :: Lens' JobConfigurationTableCopy (Maybe (Maybe TableReference))
jctcSourceTable
  = lens _jctcSourceTable
      (\ s a -> s{_jctcSourceTable = a})

--
-- /See:/ 'jobList' smart constructor.
data JobList = JobList
    { _jlEtag          :: !(Maybe Text)
    , _jlNextPageToken :: !(Maybe Text)
    , _jlKind          :: !Text
    , _jlJobs          :: !(Maybe [JobListItemJobs])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    JobList
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
jlJobs :: Lens' JobList [JobListItemJobs]
jlJobs
  = lens _jlJobs (\ s a -> s{_jlJobs = a}) . _Default .
      _Coerce

--
-- /See:/ 'jobListItemJobs' smart constructor.
data JobListItemJobs = JobListItemJobs
    { _jlijJobReference  :: !(Maybe (Maybe JobReference))
    , _jlijStatus        :: !(Maybe (Maybe JobStatus))
    , _jlijState         :: !(Maybe Text)
    , _jlijUserEmail     :: !(Maybe Text)
    , _jlijKind          :: !Text
    , _jlijErrorResult   :: !(Maybe (Maybe ErrorProto))
    , _jlijId            :: !(Maybe Text)
    , _jlijStatistics    :: !(Maybe (Maybe JobStatistics))
    , _jlijConfiguration :: !(Maybe (Maybe JobConfiguration))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobListItemJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlijJobReference'
--
-- * 'jlijStatus'
--
-- * 'jlijState'
--
-- * 'jlijUserEmail'
--
-- * 'jlijKind'
--
-- * 'jlijErrorResult'
--
-- * 'jlijId'
--
-- * 'jlijStatistics'
--
-- * 'jlijConfiguration'
jobListItemJobs
    :: JobListItemJobs
jobListItemJobs =
    JobListItemJobs
    { _jlijJobReference = Nothing
    , _jlijStatus = Nothing
    , _jlijState = Nothing
    , _jlijUserEmail = Nothing
    , _jlijKind = "bigquery#job"
    , _jlijErrorResult = Nothing
    , _jlijId = Nothing
    , _jlijStatistics = Nothing
    , _jlijConfiguration = Nothing
    }

-- | Job reference uniquely identifying the job.
jlijJobReference :: Lens' JobListItemJobs (Maybe (Maybe JobReference))
jlijJobReference
  = lens _jlijJobReference
      (\ s a -> s{_jlijJobReference = a})

-- | [Full-projection-only] Describes the state of the job.
jlijStatus :: Lens' JobListItemJobs (Maybe (Maybe JobStatus))
jlijStatus
  = lens _jlijStatus (\ s a -> s{_jlijStatus = a})

-- | Running state of the job. When the state is DONE, errorResult can be
-- checked to determine whether the job succeeded or failed.
jlijState :: Lens' JobListItemJobs (Maybe Text)
jlijState
  = lens _jlijState (\ s a -> s{_jlijState = a})

-- | [Full-projection-only] Email address of the user who ran the job.
jlijUserEmail :: Lens' JobListItemJobs (Maybe Text)
jlijUserEmail
  = lens _jlijUserEmail
      (\ s a -> s{_jlijUserEmail = a})

-- | The resource type.
jlijKind :: Lens' JobListItemJobs Text
jlijKind = lens _jlijKind (\ s a -> s{_jlijKind = a})

-- | A result object that will be present only if the job has failed.
jlijErrorResult :: Lens' JobListItemJobs (Maybe (Maybe ErrorProto))
jlijErrorResult
  = lens _jlijErrorResult
      (\ s a -> s{_jlijErrorResult = a})

-- | Unique opaque ID of the job.
jlijId :: Lens' JobListItemJobs (Maybe Text)
jlijId = lens _jlijId (\ s a -> s{_jlijId = a})

-- | [Output-only] Information about the job, including starting time and
-- ending time of the job.
jlijStatistics :: Lens' JobListItemJobs (Maybe (Maybe JobStatistics))
jlijStatistics
  = lens _jlijStatistics
      (\ s a -> s{_jlijStatistics = a})

-- | [Full-projection-only] Specifies the job configuration.
jlijConfiguration :: Lens' JobListItemJobs (Maybe (Maybe JobConfiguration))
jlijConfiguration
  = lens _jlijConfiguration
      (\ s a -> s{_jlijConfiguration = a})

--
-- /See:/ 'jobReference' smart constructor.
data JobReference = JobReference
    { _jrJobId     :: !(Maybe Text)
    , _jrProjectId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    JobReference
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

--
-- /See:/ 'jobStatistics' smart constructor.
data JobStatistics = JobStatistics
    { _jsCreationTime        :: !(Maybe Int64)
    , _jsStartTime           :: !(Maybe Int64)
    , _jsLoad                :: !(Maybe (Maybe JobStatistics3))
    , _jsTotalBytesProcessed :: !(Maybe Int64)
    , _jsEndTime             :: !(Maybe Int64)
    , _jsQuery               :: !(Maybe (Maybe JobStatistics2))
    , _jsExtract             :: !(Maybe (Maybe JobStatistics4))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    JobStatistics
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

-- | [Output-only] Start time of this job, in milliseconds since the epoch.
-- This field will be present when the job transitions from the PENDING
-- state to either RUNNING or DONE.
jsStartTime :: Lens' JobStatistics (Maybe Int64)
jsStartTime
  = lens _jsStartTime (\ s a -> s{_jsStartTime = a})

-- | [Output-only] Statistics for a load job.
jsLoad :: Lens' JobStatistics (Maybe (Maybe JobStatistics3))
jsLoad = lens _jsLoad (\ s a -> s{_jsLoad = a})

-- | [Output-only] [Deprecated] Use the bytes processed in the query
-- statistics instead.
jsTotalBytesProcessed :: Lens' JobStatistics (Maybe Int64)
jsTotalBytesProcessed
  = lens _jsTotalBytesProcessed
      (\ s a -> s{_jsTotalBytesProcessed = a})

-- | [Output-only] End time of this job, in milliseconds since the epoch.
-- This field will be present whenever a job is in the DONE state.
jsEndTime :: Lens' JobStatistics (Maybe Int64)
jsEndTime
  = lens _jsEndTime (\ s a -> s{_jsEndTime = a})

-- | [Output-only] Statistics for a query job.
jsQuery :: Lens' JobStatistics (Maybe (Maybe JobStatistics2))
jsQuery = lens _jsQuery (\ s a -> s{_jsQuery = a})

-- | [Output-only] Statistics for an extract job.
jsExtract :: Lens' JobStatistics (Maybe (Maybe JobStatistics4))
jsExtract
  = lens _jsExtract (\ s a -> s{_jsExtract = a})

--
-- /See:/ 'jobStatistics2' smart constructor.
data JobStatistics2 = JobStatistics2
    { _jTotalBytesProcessed :: !(Maybe Int64)
    , _jBillingTier         :: !(Maybe Int32)
    , _jCacheHit            :: !(Maybe Bool)
    , _jTotalBytesBilled    :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobStatistics2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jTotalBytesProcessed'
--
-- * 'jBillingTier'
--
-- * 'jCacheHit'
--
-- * 'jTotalBytesBilled'
jobStatistics2
    :: JobStatistics2
jobStatistics2 =
    JobStatistics2
    { _jTotalBytesProcessed = Nothing
    , _jBillingTier = Nothing
    , _jCacheHit = Nothing
    , _jTotalBytesBilled = Nothing
    }

-- | [Output-only] Total bytes processed for the job.
jTotalBytesProcessed :: Lens' JobStatistics2 (Maybe Int64)
jTotalBytesProcessed
  = lens _jTotalBytesProcessed
      (\ s a -> s{_jTotalBytesProcessed = a})

-- | [Output-only] Billing tier for the job.
jBillingTier :: Lens' JobStatistics2 (Maybe Int32)
jBillingTier
  = lens _jBillingTier (\ s a -> s{_jBillingTier = a})

-- | [Output-only] Whether the query result was fetched from the query cache.
jCacheHit :: Lens' JobStatistics2 (Maybe Bool)
jCacheHit
  = lens _jCacheHit (\ s a -> s{_jCacheHit = a})

-- | [Output-only] Total bytes billed for the job.
jTotalBytesBilled :: Lens' JobStatistics2 (Maybe Int64)
jTotalBytesBilled
  = lens _jTotalBytesBilled
      (\ s a -> s{_jTotalBytesBilled = a})

--
-- /See:/ 'jobStatistics3' smart constructor.
data JobStatistics3 = JobStatistics3
    { _jsInputFiles     :: !(Maybe Int64)
    , _jsOutputRows     :: !(Maybe Int64)
    , _jsOutputBytes    :: !(Maybe Int64)
    , _jsInputFileBytes :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    JobStatistics3
    { _jsInputFiles = Nothing
    , _jsOutputRows = Nothing
    , _jsOutputBytes = Nothing
    , _jsInputFileBytes = Nothing
    }

-- | [Output-only] Number of source files in a load job.
jsInputFiles :: Lens' JobStatistics3 (Maybe Int64)
jsInputFiles
  = lens _jsInputFiles (\ s a -> s{_jsInputFiles = a})

-- | [Output-only] Number of rows imported in a load job. Note that while an
-- import job is in the running state, this value may change.
jsOutputRows :: Lens' JobStatistics3 (Maybe Int64)
jsOutputRows
  = lens _jsOutputRows (\ s a -> s{_jsOutputRows = a})

-- | [Output-only] Size of the loaded data in bytes. Note that while a load
-- job is in the running state, this value may change.
jsOutputBytes :: Lens' JobStatistics3 (Maybe Int64)
jsOutputBytes
  = lens _jsOutputBytes
      (\ s a -> s{_jsOutputBytes = a})

-- | [Output-only] Number of bytes of source data in a load job.
jsInputFileBytes :: Lens' JobStatistics3 (Maybe Int64)
jsInputFileBytes
  = lens _jsInputFileBytes
      (\ s a -> s{_jsInputFileBytes = a})

--
-- /See:/ 'jobStatistics4' smart constructor.
newtype JobStatistics4 = JobStatistics4
    { _jsDestinationUriFileCounts :: Maybe [Int64]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobStatistics4' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsDestinationUriFileCounts'
jobStatistics4
    :: JobStatistics4
jobStatistics4 =
    JobStatistics4
    { _jsDestinationUriFileCounts = Nothing
    }

-- | [Output-only] Number of files per destination URI or URI pattern
-- specified in the extract configuration. These values will be in the same
-- order as the URIs specified in the \'destinationUris\' field.
jsDestinationUriFileCounts :: Lens' JobStatistics4 [Int64]
jsDestinationUriFileCounts
  = lens _jsDestinationUriFileCounts
      (\ s a -> s{_jsDestinationUriFileCounts = a})
      . _Default
      . _Coerce

--
-- /See:/ 'jobStatus' smart constructor.
data JobStatus = JobStatus
    { _jsState       :: !(Maybe Text)
    , _jsErrorResult :: !(Maybe (Maybe ErrorProto))
    , _jsErrors      :: !(Maybe [Maybe ErrorProto])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    JobStatus
    { _jsState = Nothing
    , _jsErrorResult = Nothing
    , _jsErrors = Nothing
    }

-- | [Output-only] Running state of the job.
jsState :: Lens' JobStatus (Maybe Text)
jsState = lens _jsState (\ s a -> s{_jsState = a})

-- | [Output-only] Final error result of the job. If present, indicates that
-- the job has completed and was unsuccessful.
jsErrorResult :: Lens' JobStatus (Maybe (Maybe ErrorProto))
jsErrorResult
  = lens _jsErrorResult
      (\ s a -> s{_jsErrorResult = a})

-- | [Output-only] All errors encountered during the running of the job.
-- Errors here do not necessarily mean that the job has completed or was
-- unsuccessful.
jsErrors :: Lens' JobStatus [Maybe ErrorProto]
jsErrors
  = lens _jsErrors (\ s a -> s{_jsErrors = a}) .
      _Default
      . _Coerce

-- | Represents a single JSON object.
--
-- /See:/ 'jsonObject' smart constructor.
data JsonObject =
    JsonObject
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JsonObject' with the minimum fields required to make a request.
--
jsonObject
    :: JsonObject
jsonObject = JsonObject

--
-- /See:/ 'projectList' smart constructor.
data ProjectList = ProjectList
    { _plTotalItems    :: !(Maybe Int32)
    , _plEtag          :: !(Maybe Text)
    , _plNextPageToken :: !(Maybe Text)
    , _plKind          :: !Text
    , _plProjects      :: !(Maybe [ProjectListItemProjects])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    ProjectList
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
plProjects :: Lens' ProjectList [ProjectListItemProjects]
plProjects
  = lens _plProjects (\ s a -> s{_plProjects = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'projectListItemProjects' smart constructor.
data ProjectListItemProjects = ProjectListItemProjects
    { _plipFriendlyName     :: !(Maybe Text)
    , _plipKind             :: !Text
    , _plipProjectReference :: !(Maybe (Maybe ProjectReference))
    , _plipId               :: !(Maybe Text)
    , _plipNumericId        :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectListItemProjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plipFriendlyName'
--
-- * 'plipKind'
--
-- * 'plipProjectReference'
--
-- * 'plipId'
--
-- * 'plipNumericId'
projectListItemProjects
    :: ProjectListItemProjects
projectListItemProjects =
    ProjectListItemProjects
    { _plipFriendlyName = Nothing
    , _plipKind = "bigquery#project"
    , _plipProjectReference = Nothing
    , _plipId = Nothing
    , _plipNumericId = Nothing
    }

-- | A descriptive name for this project.
plipFriendlyName :: Lens' ProjectListItemProjects (Maybe Text)
plipFriendlyName
  = lens _plipFriendlyName
      (\ s a -> s{_plipFriendlyName = a})

-- | The resource type.
plipKind :: Lens' ProjectListItemProjects Text
plipKind = lens _plipKind (\ s a -> s{_plipKind = a})

-- | A unique reference to this project.
plipProjectReference :: Lens' ProjectListItemProjects (Maybe (Maybe ProjectReference))
plipProjectReference
  = lens _plipProjectReference
      (\ s a -> s{_plipProjectReference = a})

-- | An opaque ID of this project.
plipId :: Lens' ProjectListItemProjects (Maybe Text)
plipId = lens _plipId (\ s a -> s{_plipId = a})

-- | The numeric ID of this project.
plipNumericId :: Lens' ProjectListItemProjects (Maybe Word64)
plipNumericId
  = lens _plipNumericId
      (\ s a -> s{_plipNumericId = a})

--
-- /See:/ 'projectReference' smart constructor.
newtype ProjectReference = ProjectReference
    { _prProjectId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prProjectId'
projectReference
    :: ProjectReference
projectReference =
    ProjectReference
    { _prProjectId = Nothing
    }

-- | [Required] ID of the project. Can be either the numeric ID or the
-- assigned ID of the project.
prProjectId :: Lens' ProjectReference (Maybe Text)
prProjectId
  = lens _prProjectId (\ s a -> s{_prProjectId = a})

--
-- /See:/ 'queryRequest' smart constructor.
data QueryRequest = QueryRequest
    { _qUseQueryCache  :: !Bool
    , _qPreserveNulls  :: !(Maybe Bool)
    , _qKind           :: !Text
    , _qQuery          :: !(Maybe Text)
    , _qTimeoutMs      :: !(Maybe Word32)
    , _qDryRun         :: !(Maybe Bool)
    , _qMaxResults     :: !(Maybe Word32)
    , _qDefaultDataset :: !(Maybe (Maybe DatasetReference))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qUseQueryCache'
--
-- * 'qPreserveNulls'
--
-- * 'qKind'
--
-- * 'qQuery'
--
-- * 'qTimeoutMs'
--
-- * 'qDryRun'
--
-- * 'qMaxResults'
--
-- * 'qDefaultDataset'
queryRequest
    :: QueryRequest
queryRequest =
    QueryRequest
    { _qUseQueryCache = True
    , _qPreserveNulls = Nothing
    , _qKind = "bigquery#queryRequest"
    , _qQuery = Nothing
    , _qTimeoutMs = Nothing
    , _qDryRun = Nothing
    , _qMaxResults = Nothing
    , _qDefaultDataset = Nothing
    }

-- | [Optional] Whether to look for the result in the query cache. The query
-- cache is a best-effort cache that will be flushed whenever tables in the
-- query are modified. The default value is true.
qUseQueryCache :: Lens' QueryRequest Bool
qUseQueryCache
  = lens _qUseQueryCache
      (\ s a -> s{_qUseQueryCache = a})

-- | [Deprecated] This property is deprecated.
qPreserveNulls :: Lens' QueryRequest (Maybe Bool)
qPreserveNulls
  = lens _qPreserveNulls
      (\ s a -> s{_qPreserveNulls = a})

-- | The resource type of the request.
qKind :: Lens' QueryRequest Text
qKind = lens _qKind (\ s a -> s{_qKind = a})

-- | [Required] A query string, following the BigQuery query syntax, of the
-- query to execute. Example: \"SELECT count(f1) FROM
-- [myProjectId:myDatasetId.myTableId]\".
qQuery :: Lens' QueryRequest (Maybe Text)
qQuery = lens _qQuery (\ s a -> s{_qQuery = a})

-- | [Optional] How long to wait for the query to complete, in milliseconds,
-- before the request times out and returns. Note that this is only a
-- timeout for the request, not the query. If the query takes longer to run
-- than the timeout value, the call returns without any results and with
-- the \'jobComplete\' flag set to false. You can call GetQueryResults() to
-- wait for the query to complete and read the results. The default value
-- is 10000 milliseconds (10 seconds).
qTimeoutMs :: Lens' QueryRequest (Maybe Word32)
qTimeoutMs
  = lens _qTimeoutMs (\ s a -> s{_qTimeoutMs = a})

-- | [Optional] If set to true, BigQuery doesn\'t run the job. Instead, if
-- the query is valid, BigQuery returns statistics about the job such as
-- how many bytes would be processed. If the query is invalid, an error
-- returns. The default value is false.
qDryRun :: Lens' QueryRequest (Maybe Bool)
qDryRun = lens _qDryRun (\ s a -> s{_qDryRun = a})

-- | [Optional] The maximum number of rows of data to return per page of
-- results. Setting this flag to a small value such as 1000 and then paging
-- through results might improve reliability when the query result set is
-- large. In addition to this limit, responses are also limited to 10 MB.
-- By default, there is no maximum row count, and only the byte limit
-- applies.
qMaxResults :: Lens' QueryRequest (Maybe Word32)
qMaxResults
  = lens _qMaxResults (\ s a -> s{_qMaxResults = a})

-- | [Optional] Specifies the default datasetId and projectId to assume for
-- any unqualified table names in the query. If not set, all table names in
-- the query string must be qualified in the format \'datasetId.tableId\'.
qDefaultDataset :: Lens' QueryRequest (Maybe (Maybe DatasetReference))
qDefaultDataset
  = lens _qDefaultDataset
      (\ s a -> s{_qDefaultDataset = a})

--
-- /See:/ 'queryResponse' smart constructor.
data QueryResponse = QueryResponse
    { _qrJobReference        :: !(Maybe (Maybe JobReference))
    , _qrKind                :: !Text
    , _qrSchema              :: !(Maybe (Maybe TableSchema))
    , _qrTotalBytesProcessed :: !(Maybe Int64)
    , _qrRows                :: !(Maybe [Maybe TableRow])
    , _qrPageToken           :: !(Maybe Text)
    , _qrTotalRows           :: !(Maybe Word64)
    , _qrErrors              :: !(Maybe [Maybe ErrorProto])
    , _qrJobComplete         :: !(Maybe Bool)
    , _qrCacheHit            :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrJobReference'
--
-- * 'qrKind'
--
-- * 'qrSchema'
--
-- * 'qrTotalBytesProcessed'
--
-- * 'qrRows'
--
-- * 'qrPageToken'
--
-- * 'qrTotalRows'
--
-- * 'qrErrors'
--
-- * 'qrJobComplete'
--
-- * 'qrCacheHit'
queryResponse
    :: QueryResponse
queryResponse =
    QueryResponse
    { _qrJobReference = Nothing
    , _qrKind = "bigquery#queryResponse"
    , _qrSchema = Nothing
    , _qrTotalBytesProcessed = Nothing
    , _qrRows = Nothing
    , _qrPageToken = Nothing
    , _qrTotalRows = Nothing
    , _qrErrors = Nothing
    , _qrJobComplete = Nothing
    , _qrCacheHit = Nothing
    }

-- | Reference to the Job that was created to run the query. This field will
-- be present even if the original request timed out, in which case
-- GetQueryResults can be used to read the results once the query has
-- completed. Since this API only returns the first page of results,
-- subsequent pages can be fetched via the same mechanism
-- (GetQueryResults).
qrJobReference :: Lens' QueryResponse (Maybe (Maybe JobReference))
qrJobReference
  = lens _qrJobReference
      (\ s a -> s{_qrJobReference = a})

-- | The resource type.
qrKind :: Lens' QueryResponse Text
qrKind = lens _qrKind (\ s a -> s{_qrKind = a})

-- | The schema of the results. Present only when the query completes
-- successfully.
qrSchema :: Lens' QueryResponse (Maybe (Maybe TableSchema))
qrSchema = lens _qrSchema (\ s a -> s{_qrSchema = a})

-- | The total number of bytes processed for this query. If this query was a
-- dry run, this is the number of bytes that would be processed if the
-- query were run.
qrTotalBytesProcessed :: Lens' QueryResponse (Maybe Int64)
qrTotalBytesProcessed
  = lens _qrTotalBytesProcessed
      (\ s a -> s{_qrTotalBytesProcessed = a})

-- | An object with as many results as can be contained within the maximum
-- permitted reply size. To get any additional rows, you can call
-- GetQueryResults and specify the jobReference returned above.
qrRows :: Lens' QueryResponse [Maybe TableRow]
qrRows
  = lens _qrRows (\ s a -> s{_qrRows = a}) . _Default .
      _Coerce

-- | A token used for paging results.
qrPageToken :: Lens' QueryResponse (Maybe Text)
qrPageToken
  = lens _qrPageToken (\ s a -> s{_qrPageToken = a})

-- | The total number of rows in the complete query result set, which can be
-- more than the number of rows in this single page of results.
qrTotalRows :: Lens' QueryResponse (Maybe Word64)
qrTotalRows
  = lens _qrTotalRows (\ s a -> s{_qrTotalRows = a})

-- | [Output-only] All errors and warnings encountered during the running of
-- the job. Errors here do not necessarily mean that the job has completed
-- or was unsuccessful.
qrErrors :: Lens' QueryResponse [Maybe ErrorProto]
qrErrors
  = lens _qrErrors (\ s a -> s{_qrErrors = a}) .
      _Default
      . _Coerce

-- | Whether the query has completed or not. If rows or totalRows are
-- present, this will always be true. If this is false, totalRows will not
-- be available.
qrJobComplete :: Lens' QueryResponse (Maybe Bool)
qrJobComplete
  = lens _qrJobComplete
      (\ s a -> s{_qrJobComplete = a})

-- | Whether the query result was fetched from the query cache.
qrCacheHit :: Lens' QueryResponse (Maybe Bool)
qrCacheHit
  = lens _qrCacheHit (\ s a -> s{_qrCacheHit = a})

--
-- /See:/ 'streamingbuffer' smart constructor.
data Streamingbuffer = Streamingbuffer
    { _sEstimatedBytes  :: !(Maybe Word64)
    , _sOldestEntryTime :: !(Maybe Word64)
    , _sEstimatedRows   :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Streamingbuffer
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

-- | [Output-only] Contains the timestamp of the oldest entry in the
-- streaming buffer, in milliseconds since the epoch, if the streaming
-- buffer is available.
sOldestEntryTime :: Lens' Streamingbuffer (Maybe Word64)
sOldestEntryTime
  = lens _sOldestEntryTime
      (\ s a -> s{_sOldestEntryTime = a})

-- | [Output-only] A lower-bound estimate of the number of rows currently in
-- the streaming buffer.
sEstimatedRows :: Lens' Streamingbuffer (Maybe Word64)
sEstimatedRows
  = lens _sEstimatedRows
      (\ s a -> s{_sEstimatedRows = a})

--
-- /See:/ 'table' smart constructor.
data Table = Table
    { _tCreationTime              :: !(Maybe Int64)
    , _tEtag                      :: !(Maybe Text)
    , _tNumBytes                  :: !(Maybe Int64)
    , _tExternalDataConfiguration :: !(Maybe (Maybe ExternalDataConfiguration))
    , _tLocation                  :: !(Maybe Text)
    , _tTableReference            :: !(Maybe (Maybe TableReference))
    , _tFriendlyName              :: !(Maybe Text)
    , _tKind                      :: !Text
    , _tLastModifiedTime          :: !(Maybe Word64)
    , _tSchema                    :: !(Maybe (Maybe TableSchema))
    , _tStreamingBuffer           :: !(Maybe (Maybe Streamingbuffer))
    , _tSelfLink                  :: !(Maybe Text)
    , _tNumRows                   :: !(Maybe Word64)
    , _tView                      :: !(Maybe (Maybe ViewDefinition))
    , _tId                        :: !(Maybe Text)
    , _tType                      :: !(Maybe Text)
    , _tExpirationTime            :: !(Maybe Int64)
    , _tDescription               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tCreationTime'
--
-- * 'tEtag'
--
-- * 'tNumBytes'
--
-- * 'tExternalDataConfiguration'
--
-- * 'tLocation'
--
-- * 'tTableReference'
--
-- * 'tFriendlyName'
--
-- * 'tKind'
--
-- * 'tLastModifiedTime'
--
-- * 'tSchema'
--
-- * 'tStreamingBuffer'
--
-- * 'tSelfLink'
--
-- * 'tNumRows'
--
-- * 'tView'
--
-- * 'tId'
--
-- * 'tType'
--
-- * 'tExpirationTime'
--
-- * 'tDescription'
table
    :: Table
table =
    Table
    { _tCreationTime = Nothing
    , _tEtag = Nothing
    , _tNumBytes = Nothing
    , _tExternalDataConfiguration = Nothing
    , _tLocation = Nothing
    , _tTableReference = Nothing
    , _tFriendlyName = Nothing
    , _tKind = "bigquery#table"
    , _tLastModifiedTime = Nothing
    , _tSchema = Nothing
    , _tStreamingBuffer = Nothing
    , _tSelfLink = Nothing
    , _tNumRows = Nothing
    , _tView = Nothing
    , _tId = Nothing
    , _tType = Nothing
    , _tExpirationTime = Nothing
    , _tDescription = Nothing
    }

-- | [Output-only] The time when this table was created, in milliseconds
-- since the epoch.
tCreationTime :: Lens' Table (Maybe Int64)
tCreationTime
  = lens _tCreationTime
      (\ s a -> s{_tCreationTime = a})

-- | [Output-only] A hash of this resource.
tEtag :: Lens' Table (Maybe Text)
tEtag = lens _tEtag (\ s a -> s{_tEtag = a})

-- | [Output-only] The size of this table in bytes, excluding any data in the
-- streaming buffer.
tNumBytes :: Lens' Table (Maybe Int64)
tNumBytes
  = lens _tNumBytes (\ s a -> s{_tNumBytes = a})

-- | [Experimental] Describes the data format, location, and other properties
-- of a table stored outside of BigQuery. By defining these properties, the
-- data source can then be queried as if it were a standard BigQuery table.
tExternalDataConfiguration :: Lens' Table (Maybe (Maybe ExternalDataConfiguration))
tExternalDataConfiguration
  = lens _tExternalDataConfiguration
      (\ s a -> s{_tExternalDataConfiguration = a})

-- | [Output-only] The geographic location where the table resides. This
-- value is inherited from the dataset.
tLocation :: Lens' Table (Maybe Text)
tLocation
  = lens _tLocation (\ s a -> s{_tLocation = a})

-- | [Required] Reference describing the ID of this table.
tTableReference :: Lens' Table (Maybe (Maybe TableReference))
tTableReference
  = lens _tTableReference
      (\ s a -> s{_tTableReference = a})

-- | [Optional] A descriptive name for this table.
tFriendlyName :: Lens' Table (Maybe Text)
tFriendlyName
  = lens _tFriendlyName
      (\ s a -> s{_tFriendlyName = a})

-- | [Output-only] The type of the resource.
tKind :: Lens' Table Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | [Output-only] The time when this table was last modified, in
-- milliseconds since the epoch.
tLastModifiedTime :: Lens' Table (Maybe Word64)
tLastModifiedTime
  = lens _tLastModifiedTime
      (\ s a -> s{_tLastModifiedTime = a})

-- | [Optional] Describes the schema of this table.
tSchema :: Lens' Table (Maybe (Maybe TableSchema))
tSchema = lens _tSchema (\ s a -> s{_tSchema = a})

-- | [Output-only] Contains information regarding this table\'s streaming
-- buffer, if one is present. This field will be absent if the table is not
-- being streamed to or if there is no data in the streaming buffer.
tStreamingBuffer :: Lens' Table (Maybe (Maybe Streamingbuffer))
tStreamingBuffer
  = lens _tStreamingBuffer
      (\ s a -> s{_tStreamingBuffer = a})

-- | [Output-only] A URL that can be used to access this resource again.
tSelfLink :: Lens' Table (Maybe Text)
tSelfLink
  = lens _tSelfLink (\ s a -> s{_tSelfLink = a})

-- | [Output-only] The number of rows of data in this table, excluding any
-- data in the streaming buffer.
tNumRows :: Lens' Table (Maybe Word64)
tNumRows = lens _tNumRows (\ s a -> s{_tNumRows = a})

-- | [Optional] The view definition.
tView :: Lens' Table (Maybe (Maybe ViewDefinition))
tView = lens _tView (\ s a -> s{_tView = a})

-- | [Output-only] An opaque ID uniquely identifying the table.
tId :: Lens' Table (Maybe Text)
tId = lens _tId (\ s a -> s{_tId = a})

-- | [Output-only] Describes the table type. The following values are
-- supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined
-- by a SQL query. The default value is TABLE.
tType :: Lens' Table (Maybe Text)
tType = lens _tType (\ s a -> s{_tType = a})

-- | [Optional] The time when this table expires, in milliseconds since the
-- epoch. If not present, the table will persist indefinitely. Expired
-- tables will be deleted and their storage reclaimed.
tExpirationTime :: Lens' Table (Maybe Int64)
tExpirationTime
  = lens _tExpirationTime
      (\ s a -> s{_tExpirationTime = a})

-- | [Optional] A user-friendly description of this table.
tDescription :: Lens' Table (Maybe Text)
tDescription
  = lens _tDescription (\ s a -> s{_tDescription = a})

--
-- /See:/ 'tableCell' smart constructor.
newtype TableCell = TableCell
    { _tcV :: Maybe (Either Text Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcV'
tableCell
    :: TableCell
tableCell =
    TableCell
    { _tcV = Nothing
    }

tcV :: Lens' TableCell (Maybe (Either Text Int64))
tcV = lens _tcV (\ s a -> s{_tcV = a})

--
-- /See:/ 'tableDataInsertAllRequest' smart constructor.
data TableDataInsertAllRequest = TableDataInsertAllRequest
    { _tabKind                :: !Text
    , _tabIgnoreUnknownValues :: !(Maybe Bool)
    , _tabRows                :: !(Maybe [TableDataInsertAllRequestItemRows])
    , _tabSkipInvalidRows     :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataInsertAllRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabKind'
--
-- * 'tabIgnoreUnknownValues'
--
-- * 'tabRows'
--
-- * 'tabSkipInvalidRows'
tableDataInsertAllRequest
    :: TableDataInsertAllRequest
tableDataInsertAllRequest =
    TableDataInsertAllRequest
    { _tabKind = "bigquery#tableDataInsertAllRequest"
    , _tabIgnoreUnknownValues = Nothing
    , _tabRows = Nothing
    , _tabSkipInvalidRows = Nothing
    }

-- | The resource type of the response.
tabKind :: Lens' TableDataInsertAllRequest Text
tabKind = lens _tabKind (\ s a -> s{_tabKind = a})

-- | [Optional] Accept rows that contain values that do not match the schema.
-- The unknown values are ignored. Default is false, which treats unknown
-- values as errors.
tabIgnoreUnknownValues :: Lens' TableDataInsertAllRequest (Maybe Bool)
tabIgnoreUnknownValues
  = lens _tabIgnoreUnknownValues
      (\ s a -> s{_tabIgnoreUnknownValues = a})

-- | The rows to insert.
tabRows :: Lens' TableDataInsertAllRequest [TableDataInsertAllRequestItemRows]
tabRows
  = lens _tabRows (\ s a -> s{_tabRows = a}) . _Default
      . _Coerce

-- | [Optional] Insert all valid rows of a request, even if invalid rows
-- exist. The default value is false, which causes the entire request to
-- fail if any invalid rows exist.
tabSkipInvalidRows :: Lens' TableDataInsertAllRequest (Maybe Bool)
tabSkipInvalidRows
  = lens _tabSkipInvalidRows
      (\ s a -> s{_tabSkipInvalidRows = a})

--
-- /See:/ 'tableDataInsertAllRequestItemRows' smart constructor.
data TableDataInsertAllRequestItemRows = TableDataInsertAllRequestItemRows
    { _tdiarirJson     :: !(Maybe (Maybe JsonObject))
    , _tdiarirInsertId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataInsertAllRequestItemRows' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiarirJson'
--
-- * 'tdiarirInsertId'
tableDataInsertAllRequestItemRows
    :: TableDataInsertAllRequestItemRows
tableDataInsertAllRequestItemRows =
    TableDataInsertAllRequestItemRows
    { _tdiarirJson = Nothing
    , _tdiarirInsertId = Nothing
    }

-- | [Required] A JSON object that contains a row of data. The object\'s
-- properties and values must match the destination table\'s schema.
tdiarirJson :: Lens' TableDataInsertAllRequestItemRows (Maybe (Maybe JsonObject))
tdiarirJson
  = lens _tdiarirJson (\ s a -> s{_tdiarirJson = a})

-- | [Optional] A unique ID for each row. BigQuery uses this property to
-- detect duplicate insertion requests on a best-effort basis.
tdiarirInsertId :: Lens' TableDataInsertAllRequestItemRows (Maybe Text)
tdiarirInsertId
  = lens _tdiarirInsertId
      (\ s a -> s{_tdiarirInsertId = a})

--
-- /See:/ 'tableDataInsertAllResponse' smart constructor.
data TableDataInsertAllResponse = TableDataInsertAllResponse
    { _tdiarKind         :: !Text
    , _tdiarInsertErrors :: !(Maybe [TableDataInsertAllResponseItemInsertErrors])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataInsertAllResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiarKind'
--
-- * 'tdiarInsertErrors'
tableDataInsertAllResponse
    :: TableDataInsertAllResponse
tableDataInsertAllResponse =
    TableDataInsertAllResponse
    { _tdiarKind = "bigquery#tableDataInsertAllResponse"
    , _tdiarInsertErrors = Nothing
    }

-- | The resource type of the response.
tdiarKind :: Lens' TableDataInsertAllResponse Text
tdiarKind
  = lens _tdiarKind (\ s a -> s{_tdiarKind = a})

-- | An array of errors for rows that were not inserted.
tdiarInsertErrors :: Lens' TableDataInsertAllResponse [TableDataInsertAllResponseItemInsertErrors]
tdiarInsertErrors
  = lens _tdiarInsertErrors
      (\ s a -> s{_tdiarInsertErrors = a})
      . _Default
      . _Coerce

--
-- /See:/ 'tableDataInsertAllResponseItemInsertErrors' smart constructor.
data TableDataInsertAllResponseItemInsertErrors = TableDataInsertAllResponseItemInsertErrors
    { _tdiariieErrors :: !(Maybe [Maybe ErrorProto])
    , _tdiariieIndex  :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataInsertAllResponseItemInsertErrors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiariieErrors'
--
-- * 'tdiariieIndex'
tableDataInsertAllResponseItemInsertErrors
    :: TableDataInsertAllResponseItemInsertErrors
tableDataInsertAllResponseItemInsertErrors =
    TableDataInsertAllResponseItemInsertErrors
    { _tdiariieErrors = Nothing
    , _tdiariieIndex = Nothing
    }

-- | Error information for the row indicated by the index property.
tdiariieErrors :: Lens' TableDataInsertAllResponseItemInsertErrors [Maybe ErrorProto]
tdiariieErrors
  = lens _tdiariieErrors
      (\ s a -> s{_tdiariieErrors = a})
      . _Default
      . _Coerce

-- | The index of the row that error applies to.
tdiariieIndex :: Lens' TableDataInsertAllResponseItemInsertErrors (Maybe Word32)
tdiariieIndex
  = lens _tdiariieIndex
      (\ s a -> s{_tdiariieIndex = a})

--
-- /See:/ 'tableDataList' smart constructor.
data TableDataList = TableDataList
    { _tdlEtag      :: !(Maybe Text)
    , _tdlKind      :: !Text
    , _tdlRows      :: !(Maybe [Maybe TableRow])
    , _tdlPageToken :: !(Maybe Text)
    , _tdlTotalRows :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TableDataList
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
tdlRows :: Lens' TableDataList [Maybe TableRow]
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

--
-- /See:/ 'tableFieldSchema' smart constructor.
data TableFieldSchema = TableFieldSchema
    { _tfsMode        :: !(Maybe Text)
    , _tfsName        :: !(Maybe Text)
    , _tfsType        :: !(Maybe Text)
    , _tfsDescription :: !(Maybe Text)
    , _tfsFields      :: !(Maybe [Maybe TableFieldSchema])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TableFieldSchema
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

-- | [Required] The field data type. Possible values include STRING, INTEGER,
-- FLOAT, BOOLEAN, TIMESTAMP or RECORD (where RECORD indicates that the
-- field contains a nested schema).
tfsType :: Lens' TableFieldSchema (Maybe Text)
tfsType = lens _tfsType (\ s a -> s{_tfsType = a})

-- | [Optional] The field description. The maximum length is 16K characters.
tfsDescription :: Lens' TableFieldSchema (Maybe Text)
tfsDescription
  = lens _tfsDescription
      (\ s a -> s{_tfsDescription = a})

-- | [Optional] Describes the nested schema fields if the type property is
-- set to RECORD.
tfsFields :: Lens' TableFieldSchema [Maybe TableFieldSchema]
tfsFields
  = lens _tfsFields (\ s a -> s{_tfsFields = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'tableList' smart constructor.
data TableList = TableList
    { _tlTotalItems    :: !(Maybe Int32)
    , _tlEtag          :: !(Maybe Text)
    , _tlNextPageToken :: !(Maybe Text)
    , _tlKind          :: !Text
    , _tlTables        :: !(Maybe [TableListItemTables])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    TableList
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
tlTables :: Lens' TableList [TableListItemTables]
tlTables
  = lens _tlTables (\ s a -> s{_tlTables = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'tableListItemTables' smart constructor.
data TableListItemTables = TableListItemTables
    { _tlitTableReference :: !(Maybe (Maybe TableReference))
    , _tlitFriendlyName   :: !(Maybe Text)
    , _tlitKind           :: !Text
    , _tlitId             :: !(Maybe Text)
    , _tlitType           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableListItemTables' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlitTableReference'
--
-- * 'tlitFriendlyName'
--
-- * 'tlitKind'
--
-- * 'tlitId'
--
-- * 'tlitType'
tableListItemTables
    :: TableListItemTables
tableListItemTables =
    TableListItemTables
    { _tlitTableReference = Nothing
    , _tlitFriendlyName = Nothing
    , _tlitKind = "bigquery#table"
    , _tlitId = Nothing
    , _tlitType = Nothing
    }

-- | A reference uniquely identifying the table.
tlitTableReference :: Lens' TableListItemTables (Maybe (Maybe TableReference))
tlitTableReference
  = lens _tlitTableReference
      (\ s a -> s{_tlitTableReference = a})

-- | The user-friendly name for this table.
tlitFriendlyName :: Lens' TableListItemTables (Maybe Text)
tlitFriendlyName
  = lens _tlitFriendlyName
      (\ s a -> s{_tlitFriendlyName = a})

-- | The resource type.
tlitKind :: Lens' TableListItemTables Text
tlitKind = lens _tlitKind (\ s a -> s{_tlitKind = a})

-- | An opaque ID of the table
tlitId :: Lens' TableListItemTables (Maybe Text)
tlitId = lens _tlitId (\ s a -> s{_tlitId = a})

-- | The type of table. Possible values are: TABLE, VIEW.
tlitType :: Lens' TableListItemTables (Maybe Text)
tlitType = lens _tlitType (\ s a -> s{_tlitType = a})

--
-- /See:/ 'tableReference' smart constructor.
data TableReference = TableReference
    { _trDatasetId :: !(Maybe Text)
    , _trProjectId :: !(Maybe Text)
    , _trTableId   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trDatasetId'
--
-- * 'trProjectId'
--
-- * 'trTableId'
tableReference
    :: TableReference
tableReference =
    TableReference
    { _trDatasetId = Nothing
    , _trProjectId = Nothing
    , _trTableId = Nothing
    }

-- | [Required] The ID of the dataset containing this table.
trDatasetId :: Lens' TableReference (Maybe Text)
trDatasetId
  = lens _trDatasetId (\ s a -> s{_trDatasetId = a})

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

--
-- /See:/ 'tableRow' smart constructor.
newtype TableRow = TableRow
    { _trF :: Maybe [Maybe TableCell]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trF'
tableRow
    :: TableRow
tableRow =
    TableRow
    { _trF = Nothing
    }

-- | Represents a single row in the result set, consisting of one or more
-- fields.
trF :: Lens' TableRow [Maybe TableCell]
trF
  = lens _trF (\ s a -> s{_trF = a}) . _Default .
      _Coerce

--
-- /See:/ 'tableSchema' smart constructor.
newtype TableSchema = TableSchema
    { _tsFields :: Maybe [Maybe TableFieldSchema]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsFields'
tableSchema
    :: TableSchema
tableSchema =
    TableSchema
    { _tsFields = Nothing
    }

-- | Describes the fields in a table.
tsFields :: Lens' TableSchema [Maybe TableFieldSchema]
tsFields
  = lens _tsFields (\ s a -> s{_tsFields = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'userDefinedFunctionResource' smart constructor.
data UserDefinedFunctionResource = UserDefinedFunctionResource
    { _udfrResourceUri :: !(Maybe Text)
    , _udfrInlineCode  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserDefinedFunctionResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udfrResourceUri'
--
-- * 'udfrInlineCode'
userDefinedFunctionResource
    :: UserDefinedFunctionResource
userDefinedFunctionResource =
    UserDefinedFunctionResource
    { _udfrResourceUri = Nothing
    , _udfrInlineCode = Nothing
    }

-- | [Pick one] A code resource to load from a Google Cloud Storage URI
-- (gs:\/\/bucket\/path).
udfrResourceUri :: Lens' UserDefinedFunctionResource (Maybe Text)
udfrResourceUri
  = lens _udfrResourceUri
      (\ s a -> s{_udfrResourceUri = a})

-- | [Pick one] An inline resource that contains code for a user-defined
-- function (UDF). Providing a inline code resource is equivalent to
-- providing a URI for a file containing the same code.
udfrInlineCode :: Lens' UserDefinedFunctionResource (Maybe Text)
udfrInlineCode
  = lens _udfrInlineCode
      (\ s a -> s{_udfrInlineCode = a})

--
-- /See:/ 'viewDefinition' smart constructor.
newtype ViewDefinition = ViewDefinition
    { _vdQuery :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ViewDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdQuery'
viewDefinition
    :: ViewDefinition
viewDefinition =
    ViewDefinition
    { _vdQuery = Nothing
    }

-- | [Required] A query that BigQuery executes when the view is referenced.
vdQuery :: Lens' ViewDefinition (Maybe Text)
vdQuery = lens _vdQuery (\ s a -> s{_vdQuery = a})
