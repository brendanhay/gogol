{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.BigQuery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | A data platform for customers to create, manage, share and query data.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference>
module Network.Google.BigQuery
    (
    -- * Resources
      BigQuery
    , JobsAPI
    , JobsInsert
    , JobsList
    , JobsGet
    , JobsQuery
    , JobsCancel
    , JobsGetQueryResults
    , TablesAPI
    , TablesInsert
    , TablesList
    , TablesPatch
    , TablesGet
    , TablesDelete
    , TablesUpdate
    , TabledataAPI
    , TabledataList
    , TabledataInsertAll
    , ProjectsAPI
    , ProjectsList
    , DatasetsAPI
    , DatasetsInsert
    , DatasetsList
    , DatasetsPatch
    , DatasetsGet
    , DatasetsDelete
    , DatasetsUpdate

    -- * Types

    -- ** CsvOptions
    , CsvOptions
    , csvOptions
    , coSkipLeadingRows
    , coAllowJaggedRows
    , coAllowQuotedNewlines
    , coQuote
    , coEncoding
    , coFieldDelimiter

    -- ** Dataset
    , Dataset
    , dataset
    , dCreationTime
    , dAccess
    , dEtag
    , dLocation
    , dFriendlyName
    , dKind
    , dLastModifiedTime
    , dDatasetReference
    , dSelfLink
    , dId
    , dDefaultTableExpirationMs
    , dDescription

    -- ** DatasetItemAccess
    , DatasetItemAccess
    , datasetItemAccess
    , diaGroupByEmail
    , diaDomain
    , diaSpecialGroup
    , diaRole
    , diaView
    , diaUserByEmail

    -- ** DatasetList
    , DatasetList
    , datasetList
    , dlEtag
    , dlNextPageToken
    , dlKind
    , dlDatasets

    -- ** DatasetListItemDatasets
    , DatasetListItemDatasets
    , datasetListItemDatasets
    , dlidFriendlyName
    , dlidKind
    , dlidDatasetReference
    , dlidId

    -- ** DatasetReference
    , DatasetReference
    , datasetReference
    , drDatasetId
    , drProjectId

    -- ** ErrorProto
    , ErrorProto
    , errorProto
    , epDebugInfo
    , epLocation
    , epReason
    , epMessage

    -- ** ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcIgnoreUnknownValues
    , edcCompression
    , edcSourceFormat
    , edcSchema
    , edcMaxBadRecords
    , edcSourceUris
    , edcCsvOptions

    -- ** GetQueryResultsResponse
    , GetQueryResultsResponse
    , getQueryResultsResponse
    , gqrrJobReference
    , gqrrEtag
    , gqrrKind
    , gqrrSchema
    , gqrrTotalBytesProcessed
    , gqrrRows
    , gqrrPageToken
    , gqrrTotalRows
    , gqrrErrors
    , gqrrJobComplete
    , gqrrCacheHit

    -- ** Job
    , Job
    , job
    , jobJobReference
    , jobStatus
    , jobEtag
    , jobUserEmail
    , jobKind
    , jobSelfLink
    , jobId
    , jobStatistics
    , jobConfiguration

    -- ** JobCancelResponse
    , JobCancelResponse
    , jobCancelResponse
    , jcrKind
    , jcrJob

    -- ** JobConfiguration
    , JobConfiguration
    , jobConfiguration
    , jcCopy
    , jcLink
    , jcLoad
    , jcQuery
    , jcExtract
    , jcDryRun

    -- ** JobConfigurationExtract
    , JobConfigurationExtract
    , jobConfigurationExtract
    , jceDestinationFormat
    , jceSourceTable
    , jcePrintHeader
    , jceCompression
    , jceDestinationUris
    , jceDestinationUri
    , jceFieldDelimiter

    -- ** JobConfigurationLink
    , JobConfigurationLink
    , jobConfigurationLink
    , jclDestinationTable
    , jclWriteDisposition
    , jclCreateDisposition
    , jclSourceUri

    -- ** JobConfigurationLoad
    , JobConfigurationLoad
    , jobConfigurationLoad
    , jSkipLeadingRows
    , jProjectionFields
    , jDestinationTable
    , jWriteDisposition
    , jAllowJaggedRows
    , jSchemaInline
    , jIgnoreUnknownValues
    , jCreateDisposition
    , jSchemaInlineFormat
    , jAllowQuotedNewlines
    , jSourceFormat
    , jSchema
    , jQuote
    , jMaxBadRecords
    , jSourceUris
    , jEncoding
    , jFieldDelimiter

    -- ** JobConfigurationQuery
    , JobConfigurationQuery
    , jobConfigurationQuery
    , jcqDestinationTable
    , jcqWriteDisposition
    , jcqPriority
    , jcqUseQueryCache
    , jcqPreserveNulls
    , jcqTableDefinitions
    , jcqCreateDisposition
    , jcqUserDefinedFunctionResources
    , jcqAllowLargeResults
    , jcqQuery
    , jcqFlattenResults
    , jcqDefaultDataset

    -- ** JobConfigurationQueryTableDefinitions
    , JobConfigurationQueryTableDefinitions
    , jobConfigurationQueryTableDefinitions

    -- ** JobConfigurationTableCopy
    , JobConfigurationTableCopy
    , jobConfigurationTableCopy
    , jctcDestinationTable
    , jctcWriteDisposition
    , jctcSourceTables
    , jctcCreateDisposition
    , jctcSourceTable

    -- ** JobList
    , JobList
    , jobList
    , jlEtag
    , jlNextPageToken
    , jlKind
    , jlJobs

    -- ** JobListItemJobs
    , JobListItemJobs
    , jobListItemJobs
    , jlijJobReference
    , jlijStatus
    , jlijState
    , jlijUserEmail
    , jlijKind
    , jlijErrorResult
    , jlijId
    , jlijStatistics
    , jlijConfiguration

    -- ** JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- ** JobStatistics
    , JobStatistics
    , jobStatistics
    , jsCreationTime
    , jsStartTime
    , jsLoad
    , jsTotalBytesProcessed
    , jsEndTime
    , jsQuery
    , jsExtract

    -- ** JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jTotalBytesProcessed
    , jBillingTier
    , jCacheHit
    , jTotalBytesBilled

    -- ** JobStatistics3
    , JobStatistics3
    , jobStatistics3
    , jsInputFiles
    , jsOutputRows
    , jsOutputBytes
    , jsInputFileBytes

    -- ** JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsDestinationUriFileCounts

    -- ** JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- ** JsonObject
    , JsonObject
    , jsonObject

    -- ** ProjectList
    , ProjectList
    , projectList
    , plTotalItems
    , plEtag
    , plNextPageToken
    , plKind
    , plProjects

    -- ** ProjectListItemProjects
    , ProjectListItemProjects
    , projectListItemProjects
    , plipFriendlyName
    , plipKind
    , plipProjectReference
    , plipId
    , plipNumericId

    -- ** ProjectReference
    , ProjectReference
    , projectReference
    , prProjectId

    -- ** QueryRequest
    , QueryRequest
    , queryRequest
    , qUseQueryCache
    , qPreserveNulls
    , qKind
    , qQuery
    , qTimeoutMs
    , qDryRun
    , qMaxResults
    , qDefaultDataset

    -- ** QueryResponse
    , QueryResponse
    , queryResponse
    , qrJobReference
    , qrKind
    , qrSchema
    , qrTotalBytesProcessed
    , qrRows
    , qrPageToken
    , qrTotalRows
    , qrErrors
    , qrJobComplete
    , qrCacheHit

    -- ** Streamingbuffer
    , Streamingbuffer
    , streamingbuffer
    , sEstimatedBytes
    , sOldestEntryTime
    , sEstimatedRows

    -- ** Table
    , Table
    , table
    , tCreationTime
    , tEtag
    , tNumBytes
    , tExternalDataConfiguration
    , tLocation
    , tTableReference
    , tFriendlyName
    , tKind
    , tLastModifiedTime
    , tSchema
    , tStreamingBuffer
    , tSelfLink
    , tNumRows
    , tView
    , tId
    , tType
    , tExpirationTime
    , tDescription

    -- ** TableCell
    , TableCell
    , tableCell
    , tcV

    -- ** TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tabKind
    , tabIgnoreUnknownValues
    , tabRows
    , tabSkipInvalidRows

    -- ** TableDataInsertAllRequestItemRows
    , TableDataInsertAllRequestItemRows
    , tableDataInsertAllRequestItemRows
    , tdiarirJson
    , tdiarirInsertId

    -- ** TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tdiarKind
    , tdiarInsertErrors

    -- ** TableDataInsertAllResponseItemInsertErrors
    , TableDataInsertAllResponseItemInsertErrors
    , tableDataInsertAllResponseItemInsertErrors
    , tdiariieErrors
    , tdiariieIndex

    -- ** TableDataList
    , TableDataList
    , tableDataList
    , tdlEtag
    , tdlKind
    , tdlRows
    , tdlPageToken
    , tdlTotalRows

    -- ** TableFieldSchema
    , TableFieldSchema
    , tableFieldSchema
    , tfsMode
    , tfsName
    , tfsType
    , tfsDescription
    , tfsFields

    -- ** TableList
    , TableList
    , tableList
    , tlTotalItems
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlTables

    -- ** TableListItemTables
    , TableListItemTables
    , tableListItemTables
    , tlitTableReference
    , tlitFriendlyName
    , tlitKind
    , tlitId
    , tlitType

    -- ** TableReference
    , TableReference
    , tableReference
    , trDatasetId
    , trProjectId
    , trTableId

    -- ** TableRow
    , TableRow
    , tableRow
    , trF

    -- ** TableSchema
    , TableSchema
    , tableSchema
    , tsFields

    -- ** UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceUri
    , udfrInlineCode

    -- ** ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdQuery
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type BigQuery =
     JobsAPI :<|> TablesAPI :<|> TabledataAPI :<|>
       ProjectsAPI
       :<|> DatasetsAPI

type JobsAPI =
     JobsInsert :<|> JobsList :<|> JobsGet :<|> JobsQuery
       :<|> JobsCancel
       :<|> JobsGetQueryResults

-- | Starts a new asynchronous job. Requires the Can View project role.
type JobsInsert =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "jobs" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Job

-- | Lists all jobs that you started in the specified project. Job
-- information is available for a six month period after creation. The job
-- list is sorted in reverse chronological order, by job creation time.
-- Requires the Can View project role, or the Is Owner project role if you
-- set the allUsers property.
type JobsList =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "jobs" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "stateFilter" Text :>
                         QueryParam "projection" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "allUsers" Bool :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] JobList

-- | Returns information about a specific job. Job information is available
-- for a six month period after creation. Requires that you\'re the person
-- who ran the job, or have the Is Owner project role.
type JobsGet =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "jobs" :>
               Capture "jobId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Job

-- | Runs a BigQuery SQL query synchronously and returns query results if the
-- query completes within a specified timeout.
type JobsQuery =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "queries" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] QueryResponse

-- | Requests that a job be cancelled. This call will return immediately, and
-- the client will need to poll for the job status to see if the cancel
-- completed successfully. Cancelled jobs may still incur costs.
type JobsCancel =
     "bigquery" :>
       "v2" :>
         "project" :>
           Capture "projectId" Text :>
             "jobs" :>
               Capture "jobId" Text :>
                 "cancel" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :>
                                 Post '[JSON] JobCancelResponse

-- | Retrieves the results of a query job.
type JobsGetQueryResults =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "queries" :>
               Capture "jobId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "timeoutMs" Word32 :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "startIndex" Word64 :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] GetQueryResultsResponse

type TablesAPI =
     TablesInsert :<|> TablesList :<|> TablesPatch :<|>
       TablesGet
       :<|> TablesDelete
       :<|> TablesUpdate

-- | Creates a new, empty table in the dataset.
type TablesInsert =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Table

-- | Lists all tables in the specified dataset. Requires the READER dataset
-- role.
type TablesList =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] TableList

-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource. This method supports
-- patch semantics.
type TablesPatch =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Patch '[JSON] Table

-- | Gets the specified table resource by table ID. This method does not
-- return the data in the table, it only returns the table resource, which
-- describes the structure of this table.
type TablesGet =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Table

-- | Deletes the table specified by tableId from the dataset. If the table
-- contains data, all the data will be deleted.
type TablesDelete =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource.
type TablesUpdate =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Put '[JSON] Table

type TabledataAPI =
     TabledataList :<|> TabledataInsertAll

-- | Retrieves table data from a specified set of rows. Requires the READER
-- dataset role.
type TabledataList =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     "data" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "startIndex" Word64 :>
                                     QueryParam "maxResults" Word32 :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Text :>
                                           Get '[JSON] TableDataList

-- | Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
type TabledataInsertAll =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     "insertAll" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] TableDataInsertAllResponse

type ProjectsAPI = ProjectsList

-- | Lists all projects to which you have been granted any project role.
type ProjectsList =
     "bigquery" :>
       "v2" :>
         "projects" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Get '[JSON] ProjectList

type DatasetsAPI =
     DatasetsInsert :<|> DatasetsList :<|> DatasetsPatch
       :<|> DatasetsGet
       :<|> DatasetsDelete
       :<|> DatasetsUpdate

-- | Creates a new empty dataset.
type DatasetsInsert =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Text :> Post '[JSON] Dataset

-- | Lists all datasets in the specified project to which you have been
-- granted the READER dataset role.
type DatasetsList =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "all" Bool :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] DatasetList

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource. This method
-- supports patch semantics.
type DatasetsPatch =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Patch '[JSON] Dataset

-- | Returns the dataset specified by datasetID.
type DatasetsGet =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Get '[JSON] Dataset

-- | Deletes the dataset specified by the datasetId value. Before you can
-- delete a dataset, you must delete all its tables, either manually or by
-- specifying deleteContents. Immediately after deletion, you can create
-- another dataset with the same name.
type DatasetsDelete =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "deleteContents" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Delete '[JSON] ()

-- | Updates information in an existing dataset. The update method replaces
-- the entire dataset resource, whereas the patch method only replaces
-- fields that are provided in the submitted dataset resource.
type DatasetsUpdate =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Text :> Put '[JSON] Dataset
