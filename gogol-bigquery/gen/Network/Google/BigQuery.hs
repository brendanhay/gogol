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
    -- * REST Resources

    -- ** BigQuery API
      BigQuery
    , bigQuery
    , bigQueryURL

    -- ** bigquery.datasets.delete
    , module Network.Google.API.BigQuery.Datasets.Delete

    -- ** bigquery.datasets.get
    , module Network.Google.API.BigQuery.Datasets.Get

    -- ** bigquery.datasets.insert
    , module Network.Google.API.BigQuery.Datasets.Insert

    -- ** bigquery.datasets.list
    , module Network.Google.API.BigQuery.Datasets.List

    -- ** bigquery.datasets.patch
    , module Network.Google.API.BigQuery.Datasets.Patch

    -- ** bigquery.datasets.update
    , module Network.Google.API.BigQuery.Datasets.Update

    -- ** bigquery.jobs.cancel
    , module Network.Google.API.BigQuery.Jobs.Cancel

    -- ** bigquery.jobs.get
    , module Network.Google.API.BigQuery.Jobs.Get

    -- ** bigquery.jobs.getQueryResults
    , module Network.Google.API.BigQuery.Jobs.GetQueryResults

    -- ** bigquery.jobs.insert
    , module Network.Google.API.BigQuery.Jobs.Insert

    -- ** bigquery.jobs.list
    , module Network.Google.API.BigQuery.Jobs.List

    -- ** bigquery.jobs.query
    , module Network.Google.API.BigQuery.Jobs.Query

    -- ** bigquery.projects.list
    , module Network.Google.API.BigQuery.Projects.List

    -- ** bigquery.tabledata.insertAll
    , module Network.Google.API.BigQuery.Tabledata.InsertAll

    -- ** bigquery.tabledata.list
    , module Network.Google.API.BigQuery.Tabledata.List

    -- ** bigquery.tables.delete
    , module Network.Google.API.BigQuery.Tables.Delete

    -- ** bigquery.tables.get
    , module Network.Google.API.BigQuery.Tables.Get

    -- ** bigquery.tables.insert
    , module Network.Google.API.BigQuery.Tables.Insert

    -- ** bigquery.tables.list
    , module Network.Google.API.BigQuery.Tables.List

    -- ** bigquery.tables.patch
    , module Network.Google.API.BigQuery.Tables.Patch

    -- ** bigquery.tables.update
    , module Network.Google.API.BigQuery.Tables.Update

    -- * Types

    -- ** Streamingbuffer
    , Streamingbuffer
    , streamingbuffer
    , sEstimatedBytes
    , sOldestEntryTime
    , sEstimatedRows

    -- ** TableRow
    , TableRow
    , tableRow
    , trF

    -- ** JobsList'Projection
    , JobsList'Projection (..)

    -- ** JobConfiguration
    , JobConfiguration
    , jobConfiguration
    , jcCopy
    , jcLink
    , jcLoad
    , jcQuery
    , jcExtract
    , jcDryRun

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

    -- ** JobConfigurationLink
    , JobConfigurationLink
    , jobConfigurationLink
    , jclDestinationTable
    , jclWriteDisposition
    , jclCreateDisposition
    , jclSourceUri

    -- ** TableListItemTables
    , TableListItemTables
    , tableListItemTables
    , tlitTableReference
    , tlitFriendlyName
    , tlitKind
    , tlitId
    , tlitType

    -- ** DatasetListItemDatasets
    , DatasetListItemDatasets
    , datasetListItemDatasets
    , dlidFriendlyName
    , dlidKind
    , dlidDatasetReference
    , dlidId

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

    -- ** Alt
    , Alt (..)

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

    -- ** JsonObject
    , JsonObject
    , jsonObject

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

    -- ** JobList
    , JobList
    , jobList
    , jlEtag
    , jlNextPageToken
    , jlKind
    , jlJobs

    -- ** JobsList'StateFilter
    , JobsList'StateFilter (..)

    -- ** ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdQuery

    -- ** TableCell
    , TableCell
    , tableCell
    , tcV

    -- ** JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jTotalBytesProcessed
    , jBillingTier
    , jCacheHit
    , jTotalBytesBilled

    -- ** UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceUri
    , udfrInlineCode

    -- ** JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- ** TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tdiarKind
    , tdiarInsertErrors

    -- ** ProjectReference
    , ProjectReference
    , projectReference
    , prProjectId

    -- ** JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsDestinationUriFileCounts

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

    -- ** JobStatistics3
    , JobStatistics3
    , jobStatistics3
    , jsInputFiles
    , jsOutputRows
    , jsOutputBytes
    , jsInputFileBytes

    -- ** TableDataInsertAllResponseItemInsertErrors
    , TableDataInsertAllResponseItemInsertErrors
    , tableDataInsertAllResponseItemInsertErrors
    , tdiariieErrors
    , tdiariieIndex

    -- ** JobConfigurationTableCopy
    , JobConfigurationTableCopy
    , jobConfigurationTableCopy
    , jctcDestinationTable
    , jctcWriteDisposition
    , jctcSourceTables
    , jctcCreateDisposition
    , jctcSourceTable

    -- ** TableDataList
    , TableDataList
    , tableDataList
    , tdlEtag
    , tdlKind
    , tdlRows
    , tdlPageToken
    , tdlTotalRows

    -- ** JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- ** TableList
    , TableList
    , tableList
    , tlTotalItems
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlTables

    -- ** ProjectListItemProjects
    , ProjectListItemProjects
    , projectListItemProjects
    , plipFriendlyName
    , plipKind
    , plipProjectReference
    , plipId
    , plipNumericId

    -- ** ProjectList
    , ProjectList
    , projectList
    , plTotalItems
    , plEtag
    , plNextPageToken
    , plKind
    , plProjects

    -- ** TableSchema
    , TableSchema
    , tableSchema
    , tsFields

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

    -- ** JobCancelResponse
    , JobCancelResponse
    , jobCancelResponse
    , jcrKind
    , jcrJob

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

    -- ** TableReference
    , TableReference
    , tableReference
    , trDatasetId
    , trProjectId
    , trTableId

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

    -- ** TableFieldSchema
    , TableFieldSchema
    , tableFieldSchema
    , tfsMode
    , tfsName
    , tfsType
    , tfsDescription
    , tfsFields

    -- ** DatasetList
    , DatasetList
    , datasetList
    , dlEtag
    , dlNextPageToken
    , dlKind
    , dlDatasets

    -- ** DatasetItemAccess
    , DatasetItemAccess
    , datasetItemAccess
    , diaGroupByEmail
    , diaDomain
    , diaSpecialGroup
    , diaRole
    , diaView
    , diaUserByEmail

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

    -- ** JobConfigurationQueryTableDefinitions
    , JobConfigurationQueryTableDefinitions
    , jobConfigurationQueryTableDefinitions

    -- ** CsvOptions
    , CsvOptions
    , csvOptions
    , coSkipLeadingRows
    , coAllowJaggedRows
    , coAllowQuotedNewlines
    , coQuote
    , coEncoding
    , coFieldDelimiter

    -- ** TableDataInsertAllRequestItemRows
    , TableDataInsertAllRequestItemRows
    , tableDataInsertAllRequestItemRows
    , tdiarirJson
    , tdiarirInsertId

    -- ** ErrorProto
    , ErrorProto
    , errorProto
    , epDebugInfo
    , epLocation
    , epReason
    , epMessage

    -- ** TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tabKind
    , tabIgnoreUnknownValues
    , tabRows
    , tabSkipInvalidRows

    -- ** DatasetReference
    , DatasetReference
    , datasetReference
    , drDatasetId
    , drProjectId

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
    ) where

import           Network.Google.API.BigQuery.Datasets.Delete
import           Network.Google.API.BigQuery.Datasets.Get
import           Network.Google.API.BigQuery.Datasets.Insert
import           Network.Google.API.BigQuery.Datasets.List
import           Network.Google.API.BigQuery.Datasets.Patch
import           Network.Google.API.BigQuery.Datasets.Update
import           Network.Google.API.BigQuery.Jobs.Cancel
import           Network.Google.API.BigQuery.Jobs.Get
import           Network.Google.API.BigQuery.Jobs.GetQueryResults
import           Network.Google.API.BigQuery.Jobs.Insert
import           Network.Google.API.BigQuery.Jobs.List
import           Network.Google.API.BigQuery.Jobs.Query
import           Network.Google.API.BigQuery.Projects.List
import           Network.Google.API.BigQuery.Tabledata.InsertAll
import           Network.Google.API.BigQuery.Tabledata.List
import           Network.Google.API.BigQuery.Tables.Delete
import           Network.Google.API.BigQuery.Tables.Get
import           Network.Google.API.BigQuery.Tables.Insert
import           Network.Google.API.BigQuery.Tables.List
import           Network.Google.API.BigQuery.Tables.Patch
import           Network.Google.API.BigQuery.Tables.Update
import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type BigQuery =
     JobsGetAPI :<|> DatasetsInsertAPI :<|> JobsInsertAPI
       :<|> DatasetsPatchAPI
       :<|> ProjectsListAPI
       :<|> TablesGetAPI
       :<|> TablesInsertAPI
       :<|> JobsListAPI
       :<|> TablesListAPI
       :<|> JobsCancelAPI
       :<|> TablesDeleteAPI
       :<|> DatasetsGetAPI
       :<|> TablesUpdateAPI
       :<|> JobsQueryAPI
       :<|> TabledataListAPI
       :<|> DatasetsListAPI
       :<|> DatasetsDeleteAPI
       :<|> JobsGetQueryResultsAPI
       :<|> TabledataInsertAllAPI
       :<|> DatasetsUpdateAPI
       :<|> TablesPatchAPI

bigQuery :: Proxy BigQuery
bigQuery = Proxy
