{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.BigQuery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A data platform for customers to create, manage, share and query data.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference>
module Network.Google.BigQuery
    (
    -- * Service Configuration
      bigQueryService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , storageReadOnlyScope
    , bigQueryInsertDataScope
    , storageReadWriteScope
    , bigQueryScope
    , storageFullControlScope

    -- * API Declaration
    , BigQueryAPI

    -- * Resources

    -- ** bigquery.datasets.delete
    , module Network.Google.Resource.BigQuery.DataSets.Delete

    -- ** bigquery.datasets.get
    , module Network.Google.Resource.BigQuery.DataSets.Get

    -- ** bigquery.datasets.insert
    , module Network.Google.Resource.BigQuery.DataSets.Insert

    -- ** bigquery.datasets.list
    , module Network.Google.Resource.BigQuery.DataSets.List

    -- ** bigquery.datasets.patch
    , module Network.Google.Resource.BigQuery.DataSets.Patch

    -- ** bigquery.datasets.update
    , module Network.Google.Resource.BigQuery.DataSets.Update

    -- ** bigquery.jobs.cancel
    , module Network.Google.Resource.BigQuery.Jobs.Cancel

    -- ** bigquery.jobs.get
    , module Network.Google.Resource.BigQuery.Jobs.Get

    -- ** bigquery.jobs.getQueryResults
    , module Network.Google.Resource.BigQuery.Jobs.GetQueryResults

    -- ** bigquery.jobs.insert
    , module Network.Google.Resource.BigQuery.Jobs.Insert

    -- ** bigquery.jobs.list
    , module Network.Google.Resource.BigQuery.Jobs.List

    -- ** bigquery.jobs.query
    , module Network.Google.Resource.BigQuery.Jobs.Query

    -- ** bigquery.projects.list
    , module Network.Google.Resource.BigQuery.Projects.List

    -- ** bigquery.tabledata.insertAll
    , module Network.Google.Resource.BigQuery.TableData.InsertAll

    -- ** bigquery.tabledata.list
    , module Network.Google.Resource.BigQuery.TableData.List

    -- ** bigquery.tables.delete
    , module Network.Google.Resource.BigQuery.Tables.Delete

    -- ** bigquery.tables.get
    , module Network.Google.Resource.BigQuery.Tables.Get

    -- ** bigquery.tables.insert
    , module Network.Google.Resource.BigQuery.Tables.Insert

    -- ** bigquery.tables.list
    , module Network.Google.Resource.BigQuery.Tables.List

    -- ** bigquery.tables.patch
    , module Network.Google.Resource.BigQuery.Tables.Patch

    -- ** bigquery.tables.update
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

    -- ** DataSetListDataSetsItem
    , DataSetListDataSetsItem
    , dataSetListDataSetsItem
    , dsldsiFriendlyName
    , dsldsiKind
    , dsldsiDataSetReference
    , dsldsiId

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

    -- ** ExplainQueryStep
    , ExplainQueryStep
    , explainQueryStep
    , eqsSubsteps
    , eqsKind

    -- ** BigtableColumnFamily
    , BigtableColumnFamily
    , bigtableColumnFamily
    , bcfFamilyId
    , bcfColumns
    , bcfOnlyReadLatest
    , bcfType
    , bcfEncoding

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

    -- ** DataSet
    , DataSet
    , dataSet
    , dsCreationTime
    , dsAccess
    , dsEtag
    , dsLocation
    , dsFriendlyName
    , dsKind
    , dsLastModifiedTime
    , dsDataSetReference
    , dsSelfLink
    , dsId
    , dsDefaultTableExpirationMs
    , dsDescription

    -- ** BigtableOptions
    , BigtableOptions
    , bigtableOptions
    , boIgnoreUnspecifiedColumnFamilies
    , boColumnFamilies

    -- ** ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcBigtableOptions
    , edcIgnoreUnknownValues
    , edcCompression
    , edcSourceFormat
    , edcSchema
    , edcMaxBadRecords
    , edcAutodetect
    , edcSourceURIs
    , edcCSVOptions

    -- ** TableReference
    , TableReference
    , tableReference
    , trDataSetId
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

    -- ** DataSetList
    , DataSetList
    , dataSetList
    , dslEtag
    , dslNextPageToken
    , dslKind
    , dslDataSets

    -- ** QueryRequest
    , QueryRequest
    , queryRequest
    , qrUseQueryCache
    , qrPreserveNulls
    , qrKind
    , qrQuery
    , qrTimeoutMs
    , qrUseLegacySQL
    , qrDryRun
    , qrMaxResults
    , qrDefaultDataSet

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

    -- ** ExplainQueryStage
    , ExplainQueryStage
    , explainQueryStage
    , eqsWaitRatioMax
    , eqsRecordsWritten
    , eqsSteps
    , eqsWriteRatioAvg
    , eqsRecordsRead
    , eqsComputeRatioAvg
    , eqsName
    , eqsReadRatioMax
    , eqsWaitRatioAvg
    , eqsId
    , eqsComputeRatioMax
    , eqsWriteRatioMax
    , eqsReadRatioAvg

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

    -- ** DataSetReference
    , DataSetReference
    , dataSetReference
    , dsrDataSetId
    , dsrProjectId

    -- ** TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tdiarKind
    , tdiarIgnoreUnknownValues
    , tdiarRows
    , tdiarTemplateSuffix
    , tdiarSkipInvalidRows

    -- ** ProjectListProjectsItem
    , ProjectListProjectsItem
    , projectListProjectsItem
    , plpiFriendlyName
    , plpiKind
    , plpiProjectReference
    , plpiId
    , plpiNumericId

    -- ** BigtableColumn
    , BigtableColumn
    , bigtableColumn
    , bcQualifierEncoded
    , bcFieldName
    , bcQualifierString
    , bcOnlyReadLatest
    , bcType
    , bcEncoding

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
    , jcqMaximumBillingTier
    , jcqQuery
    , jcqFlattenResults
    , jcqUseLegacySQL
    , jcqDefaultDataSet

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
    , vdUserDefinedFunctionResources
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
    , jReferencedTables
    , jQueryPlan
    , jCacheHit
    , jTotalBytesBilled

    -- ** JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- ** DataSetAccessItem
    , DataSetAccessItem
    , dataSetAccessItem
    , dsaiGroupByEmail
    , dsaiDomain
    , dsaiSpecialGroup
    , dsaiRole
    , dsaiView
    , dsaiUserByEmail

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
import           Network.Google.Resource.BigQuery.DataSets.Delete
import           Network.Google.Resource.BigQuery.DataSets.Get
import           Network.Google.Resource.BigQuery.DataSets.Insert
import           Network.Google.Resource.BigQuery.DataSets.List
import           Network.Google.Resource.BigQuery.DataSets.Patch
import           Network.Google.Resource.BigQuery.DataSets.Update
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
       :<|> DataSetsInsertResource
       :<|> DataSetsListResource
       :<|> DataSetsPatchResource
       :<|> DataSetsGetResource
       :<|> DataSetsDeleteResource
       :<|> DataSetsUpdateResource
