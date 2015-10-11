{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | A data platform for customers to create, manage, share and query data.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference>
module Network.Google.BigQuery
    (
    -- * API Declaration
      BigQueryAPI

    -- * Resources

    -- ** BigQueryDatasetsDelete
    , module Network.Google.Resource.BigQuery.Datasets.Delete

    -- ** BigQueryDatasetsGet
    , module Network.Google.Resource.BigQuery.Datasets.Get

    -- ** BigQueryDatasetsInsert
    , module Network.Google.Resource.BigQuery.Datasets.Insert

    -- ** BigQueryDatasetsList
    , module Network.Google.Resource.BigQuery.Datasets.List

    -- ** BigQueryDatasetsPatch
    , module Network.Google.Resource.BigQuery.Datasets.Patch

    -- ** BigQueryDatasetsUpdate
    , module Network.Google.Resource.BigQuery.Datasets.Update

    -- ** BigQueryJobsCancel
    , module Network.Google.Resource.BigQuery.Jobs.Cancel

    -- ** BigQueryJobsGet
    , module Network.Google.Resource.BigQuery.Jobs.Get

    -- ** BigQueryJobsGetQueryResults
    , module Network.Google.Resource.BigQuery.Jobs.GetQueryResults

    -- ** BigQueryJobsInsert
    , module Network.Google.Resource.BigQuery.Jobs.Insert

    -- ** BigQueryJobsList
    , module Network.Google.Resource.BigQuery.Jobs.List

    -- ** BigQueryJobsQuery
    , module Network.Google.Resource.BigQuery.Jobs.Query

    -- ** BigQueryProjectsList
    , module Network.Google.Resource.BigQuery.Projects.List

    -- ** BigQueryTableDataInsertAll
    , module Network.Google.Resource.BigQuery.TableData.InsertAll

    -- ** BigQueryTableDataList
    , module Network.Google.Resource.BigQuery.TableData.List

    -- ** BigQueryTablesDelete
    , module Network.Google.Resource.BigQuery.Tables.Delete

    -- ** BigQueryTablesGet
    , module Network.Google.Resource.BigQuery.Tables.Get

    -- ** BigQueryTablesInsert
    , module Network.Google.Resource.BigQuery.Tables.Insert

    -- ** BigQueryTablesList
    , module Network.Google.Resource.BigQuery.Tables.List

    -- ** BigQueryTablesPatch
    , module Network.Google.Resource.BigQuery.Tables.Patch

    -- ** BigQueryTablesUpdate
    , module Network.Google.Resource.BigQuery.Tables.Update

    -- * Types

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

    -- ** DatasetListDatasetsItem
    , DatasetListDatasetsItem
    , datasetListDatasetsItem
    , dldiFriendlyName
    , dldiKind
    , dldiDatasetReference
    , dldiId

    -- ** TableDataList
    , TableDataList
    , tableDataList
    , tdlEtag
    , tdlKind
    , tdlRows
    , tdlPageToken
    , tdlTotalRows

    -- ** JobConfigurationTableCopy
    , JobConfigurationTableCopy
    , jobConfigurationTableCopy
    , jctcDestinationTable
    , jctcWriteDisPosition
    , jctcSourceTables
    , jctcCreateDisPosition
    , jctcSourceTable

    -- ** TableListTablesItem
    , TableListTablesItem
    , tableListTablesItem
    , tltiTableReference
    , tltiFriendlyName
    , tltiKind
    , tltiId
    , tltiType

    -- ** TableSchema
    , TableSchema
    , tableSchema
    , tsFields

    -- ** ProjectList
    , ProjectList
    , projectList
    , plTotalItems
    , plEtag
    , plNextPageToken
    , plKind
    , plProjects

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

    -- ** ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcIgnoreUnknownValues
    , edcCompression
    , edcSourceFormat
    , edcSchema
    , edcMaxBadRecords
    , edcSourceURIs
    , edcCSVOptions

    -- ** TableReference
    , TableReference
    , tableReference
    , trDatasetId
    , trProjectId
    , trTableId

    -- ** TableFieldSchema
    , TableFieldSchema
    , tableFieldSchema
    , tfsMode
    , tfsName
    , tfsType
    , tfsDescription
    , tfsFields

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

    -- ** DatasetList
    , DatasetList
    , datasetList
    , dlEtag
    , dlNextPageToken
    , dlKind
    , dlDatasets

    -- ** QueryRequest
    , QueryRequest
    , queryRequest
    , qrUseQueryCache
    , qrPreserveNulls
    , qrKind
    , qrQuery
    , qrTimeoutMs
    , qrDryRun
    , qrMaxResults
    , qrDefaultDataset

    -- ** JobsListProjection
    , JobsListProjection (..)

    -- ** JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsDestinationURIFileCounts

    -- ** ProjectReference
    , ProjectReference
    , projectReference
    , prProjectId

    -- ** JobConfigurationLoad
    , JobConfigurationLoad
    , jobConfigurationLoad
    , jclSkipLeadingRows
    , jclProjectionFields
    , jclDestinationTable
    , jclWriteDisPosition
    , jclAllowJaggedRows
    , jclSchemaInline
    , jclIgnoreUnknownValues
    , jclCreateDisPosition
    , jclSchemaInlineFormat
    , jclAllowQuotedNewlines
    , jclSourceFormat
    , jclSchema
    , jclQuote
    , jclMaxBadRecords
    , jclSourceURIs
    , jclEncoding
    , jclFieldDelimiter

    -- ** JobsListStateFilter
    , JobsListStateFilter (..)

    -- ** DatasetReference
    , DatasetReference
    , datasetReference
    , drDatasetId
    , drProjectId

    -- ** TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tdiarKind
    , tdiarIgnoreUnknownValues
    , tdiarRows
    , tdiarSkipInvalidRows

    -- ** ProjectListProjectsItem
    , ProjectListProjectsItem
    , projectListProjectsItem
    , plpiFriendlyName
    , plpiKind
    , plpiProjectReference
    , plpiId
    , plpiNumericId

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

    -- ** JobListJobsItem
    , JobListJobsItem
    , jobListJobsItem
    , jljiJobReference
    , jljiStatus
    , jljiState
    , jljiUserEmail
    , jljiKind
    , jljiErrorResult
    , jljiId
    , jljiStatistics
    , jljiConfiguration

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
    , jJobReference
    , jStatus
    , jEtag
    , jUserEmail
    , jKind
    , jSelfLink
    , jId
    , jStatistics
    , jConfiguration

    -- ** JobConfigurationLink
    , JobConfigurationLink
    , jobConfigurationLink
    , jDestinationTable
    , jWriteDisPosition
    , jCreateDisPosition
    , jSourceURI

    -- ** TableDataInsertAllResponseInsertErrorsItem
    , TableDataInsertAllResponseInsertErrorsItem
    , tableDataInsertAllResponseInsertErrorsItem
    , tdiarieiErrors
    , tdiarieiIndex

    -- ** JobConfigurationExtract
    , JobConfigurationExtract
    , jobConfigurationExtract
    , jceDestinationFormat
    , jceSourceTable
    , jcePrintHeader
    , jceCompression
    , jceDestinationURIs
    , jceDestinationURI
    , jceFieldDelimiter

    -- ** JobCancelResponse
    , JobCancelResponse
    , jobCancelResponse
    , jcrKind
    , jcrJob

    -- ** JSONObject
    , JSONObject
    , jsonObject
    , joAddtional

    -- ** JobConfigurationQuery
    , JobConfigurationQuery
    , jobConfigurationQuery
    , jcqDestinationTable
    , jcqWriteDisPosition
    , jcqPriority
    , jcqUseQueryCache
    , jcqPreserveNulls
    , jcqTableDefinitions
    , jcqCreateDisPosition
    , jcqUserDefinedFunctionResources
    , jcqAllowLargeResults
    , jcqQuery
    , jcqFlattenResults
    , jcqDefaultDataset

    -- ** TableDataInsertAllRequestRowsItem
    , TableDataInsertAllRequestRowsItem
    , tableDataInsertAllRequestRowsItem
    , tdiarriJSON
    , tdiarriInsertId

    -- ** JobList
    , JobList
    , jobList
    , jlEtag
    , jlNextPageToken
    , jlKind
    , jlJobs

    -- ** JobConfigurationQueryTableDefinitions
    , JobConfigurationQueryTableDefinitions
    , jobConfigurationQueryTableDefinitions
    , jcqtdAddtional

    -- ** TableCell
    , TableCell
    , tableCell
    , tcV

    -- ** ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdQuery

    -- ** UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceURI
    , udfrInlineCode

    -- ** JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jTotalBytesProcessed
    , jBillingTier
    , jCacheHit
    , jTotalBytesBilled

    -- ** JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- ** DatasetAccessItem
    , DatasetAccessItem
    , datasetAccessItem
    , daiGroupByEmail
    , daiDomain
    , daiSpecialGroup
    , daiRole
    , daiView
    , daiUserByEmail

    -- ** TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tKind
    , tInsertErrors

    -- ** Table
    , Table
    , table
    , tabCreationTime
    , tabEtag
    , tabNumBytes
    , tabExternalDataConfiguration
    , tabLocation
    , tabTableReference
    , tabFriendlyName
    , tabKind
    , tabLastModifiedTime
    , tabSchema
    , tabStreamingBuffer
    , tabSelfLink
    , tabNumRows
    , tabView
    , tabId
    , tabType
    , tabExpirationTime
    , tabDescription

    -- ** ErrorProto
    , ErrorProto
    , errorProto
    , epDebugInfo
    , epLocation
    , epReason
    , epMessage

    -- ** CSVOptions
    , CSVOptions
    , csvOptions
    , coSkipLeadingRows
    , coAllowJaggedRows
    , coAllowQuotedNewlines
    , coQuote
    , coEncoding
    , coFieldDelimiter

    -- ** JobStatistics3
    , JobStatistics3
    , jobStatistics3
    , jsInputFiles
    , jsOutputRows
    , jsOutputBytes
    , jsInputFileBytes

    -- ** QueryResponse
    , QueryResponse
    , queryResponse
    , qJobReference
    , qKind
    , qSchema
    , qTotalBytesProcessed
    , qRows
    , qPageToken
    , qTotalRows
    , qErrors
    , qJobComplete
    , qCacheHit
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude
import           Network.Google.Resource.BigQuery.Datasets.Delete
import           Network.Google.Resource.BigQuery.Datasets.Get
import           Network.Google.Resource.BigQuery.Datasets.Insert
import           Network.Google.Resource.BigQuery.Datasets.List
import           Network.Google.Resource.BigQuery.Datasets.Patch
import           Network.Google.Resource.BigQuery.Datasets.Update
import           Network.Google.Resource.BigQuery.Jobs.Cancel
import           Network.Google.Resource.BigQuery.Jobs.Get
import           Network.Google.Resource.BigQuery.Jobs.GetQueryResults
import           Network.Google.Resource.BigQuery.Jobs.Insert
import           Network.Google.Resource.BigQuery.Jobs.List
import           Network.Google.Resource.BigQuery.Jobs.Query
import           Network.Google.Resource.BigQuery.Projects.List
import           Network.Google.Resource.BigQuery.TableData.InsertAll
import           Network.Google.Resource.BigQuery.TableData.List
import           Network.Google.Resource.BigQuery.Tables.Delete
import           Network.Google.Resource.BigQuery.Tables.Get
import           Network.Google.Resource.BigQuery.Tables.Insert
import           Network.Google.Resource.BigQuery.Tables.List
import           Network.Google.Resource.BigQuery.Tables.Patch
import           Network.Google.Resource.BigQuery.Tables.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the BigQuery API service.
type BigQueryAPI =
     JobsInsertResource :<|> JobsListResource :<|>
       JobsGetResource
       :<|> JobsQueryResource
       :<|> JobsCancelResource
       :<|> JobsGetQueryResultsResource
       :<|> TablesInsertResource
       :<|> TablesListResource
       :<|> TablesPatchResource
       :<|> TablesGetResource
       :<|> TablesDeleteResource
       :<|> TablesUpdateResource
       :<|> TableDataListResource
       :<|> TableDataInsertAllResource
       :<|> ProjectsListResource
       :<|> DatasetsInsertResource
       :<|> DatasetsListResource
       :<|> DatasetsPatchResource
       :<|> DatasetsGetResource
       :<|> DatasetsDeleteResource
       :<|> DatasetsUpdateResource
