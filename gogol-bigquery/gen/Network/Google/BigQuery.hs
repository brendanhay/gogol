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
-- | A data platform for customers to create, manage, share and query data.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference>
module Network.Google.BigQuery
    (
    -- * API
      BigQueryAPI
    , bigQueryAPI
    , bigQueryURL

    -- * Service Methods

    -- * REST Resources

    -- ** BigqueryDatasetsDelete
    , module Network.Google.Resource.BigQuery.Datasets.Delete

    -- ** BigqueryDatasetsGet
    , module Network.Google.Resource.BigQuery.Datasets.Get

    -- ** BigqueryDatasetsInsert
    , module Network.Google.Resource.BigQuery.Datasets.Insert

    -- ** BigqueryDatasetsList
    , module Network.Google.Resource.BigQuery.Datasets.List

    -- ** BigqueryDatasetsPatch
    , module Network.Google.Resource.BigQuery.Datasets.Patch

    -- ** BigqueryDatasetsUpdate
    , module Network.Google.Resource.BigQuery.Datasets.Update

    -- ** BigqueryJobsCancel
    , module Network.Google.Resource.BigQuery.Jobs.Cancel

    -- ** BigqueryJobsGet
    , module Network.Google.Resource.BigQuery.Jobs.Get

    -- ** BigqueryJobsGetQueryResults
    , module Network.Google.Resource.BigQuery.Jobs.GetQueryResults

    -- ** BigqueryJobsInsert
    , module Network.Google.Resource.BigQuery.Jobs.Insert

    -- ** BigqueryJobsList
    , module Network.Google.Resource.BigQuery.Jobs.List

    -- ** BigqueryJobsQuery
    , module Network.Google.Resource.BigQuery.Jobs.Query

    -- ** BigqueryProjectsList
    , module Network.Google.Resource.BigQuery.Projects.List

    -- ** BigqueryTabledataInsertAll
    , module Network.Google.Resource.BigQuery.Tabledata.InsertAll

    -- ** BigqueryTabledataList
    , module Network.Google.Resource.BigQuery.Tabledata.List

    -- ** BigqueryTablesDelete
    , module Network.Google.Resource.BigQuery.Tables.Delete

    -- ** BigqueryTablesGet
    , module Network.Google.Resource.BigQuery.Tables.Get

    -- ** BigqueryTablesInsert
    , module Network.Google.Resource.BigQuery.Tables.Insert

    -- ** BigqueryTablesList
    , module Network.Google.Resource.BigQuery.Tables.List

    -- ** BigqueryTablesPatch
    , module Network.Google.Resource.BigQuery.Tables.Patch

    -- ** BigqueryTablesUpdate
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

    -- ** TableSchema
    , TableSchema
    , tableSchema
    , tsFields

    -- ** TableDataInsertAllResponseInsertErrors
    , TableDataInsertAllResponseInsertErrors
    , tableDataInsertAllResponseInsertErrors
    , tdiarieErrors
    , tdiarieIndex

    -- ** ProjectList
    , ProjectList
    , projectList
    , plTotalItems
    , plEtag
    , plNextPageToken
    , plKind
    , plProjects

    -- ** BigqueryJobsListStateFilter
    , BigqueryJobsListStateFilter (..)

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

    -- ** TableReference
    , TableReference
    , tableReference
    , trDatasetId
    , trProjectId
    , trTableId

    -- ** BigqueryJobsListProjection
    , BigqueryJobsListProjection (..)

    -- ** TableFieldSchema
    , TableFieldSchema
    , tableFieldSchema
    , tfsMode
    , tfsName
    , tfsType
    , tfsDescription
    , tfsFields

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

    -- ** TableDataInsertAllRequestRows
    , TableDataInsertAllRequestRows
    , tableDataInsertAllRequestRows
    , tdiarrJSON
    , tdiarrInsertId

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

    -- ** JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsDestinationURIFileCounts

    -- ** ProjectReference
    , ProjectReference
    , projectReference
    , prProjectId

    -- ** TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tdiarKind
    , tdiarIgnoreUnknownValues
    , tdiarRows
    , tdiarSkipInvalidRows

    -- ** ProjectListProjects
    , ProjectListProjects
    , projectListProjects
    , plpFriendlyName
    , plpKind
    , plpProjectReference
    , plpId
    , plpNumericId

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

    -- ** DatasetReference
    , DatasetReference
    , datasetReference
    , drDatasetId
    , drProjectId

    -- ** JobListJobs
    , JobListJobs
    , jobListJobs
    , jljJobReference
    , jljStatus
    , jljState
    , jljUserEmail
    , jljKind
    , jljErrorResult
    , jljId
    , jljStatistics
    , jljConfiguration

    -- ** TableRow
    , TableRow
    , tableRow
    , trF

    -- ** Streamingbuffer
    , Streamingbuffer
    , streamingbuffer
    , sEstimatedBytes
    , sOldestEntryTime
    , sEstimatedRows

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

    -- ** JobConfiguration
    , JobConfiguration
    , jobConfiguration
    , jcCopy
    , jcLink
    , jcLoad
    , jcQuery
    , jcExtract
    , jcDryRun

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
    , jceDestinationURIs
    , jceDestinationURI
    , jceFieldDelimiter

    -- ** JSONObject
    , JSONObject
    , jsonObject

    -- ** JobConfigurationQueryTableDefinitions
    , JobConfigurationQueryTableDefinitions
    , jobConfigurationQueryTableDefinitions

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

    -- ** JobList
    , JobList
    , jobList
    , jlEtag
    , jlNextPageToken
    , jlKind
    , jlJobs

    -- ** TableCell
    , TableCell
    , tableCell
    , tcV

    -- ** UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceURI
    , udfrInlineCode

    -- ** ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdQuery

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

    -- ** TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tKind
    , tInsertErrors

    -- ** DatasetAccess
    , DatasetAccess
    , datasetAccess
    , daGroupByEmail
    , daDomain
    , daSpecialGroup
    , daRole
    , daView
    , daUserByEmail

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

    -- ** DatasetListDatasets
    , DatasetListDatasets
    , datasetListDatasets
    , dldFriendlyName
    , dldKind
    , dldDatasetReference
    , dldId

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

    -- ** TableListTables
    , TableListTables
    , tableListTables
    , tltTableReference
    , tltFriendlyName
    , tltKind
    , tltId
    , tltType
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
import           Network.Google.Resource.BigQuery.Tabledata.InsertAll
import           Network.Google.Resource.BigQuery.Tabledata.List
import           Network.Google.Resource.BigQuery.Tables.Delete
import           Network.Google.Resource.BigQuery.Tables.Get
import           Network.Google.Resource.BigQuery.Tables.Insert
import           Network.Google.Resource.BigQuery.Tables.List
import           Network.Google.Resource.BigQuery.Tables.Patch
import           Network.Google.Resource.BigQuery.Tables.Update

{- $resources
TODO
-}

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
       :<|> TabledataListResource
       :<|> TabledataInsertAllResource
       :<|> ProjectsListResource
       :<|> DatasetsInsertResource
       :<|> DatasetsListResource
       :<|> DatasetsPatchResource
       :<|> DatasetsGetResource
       :<|> DatasetsDeleteResource
       :<|> DatasetsUpdateResource

bigQueryAPI :: Proxy BigQueryAPI
bigQueryAPI = Proxy
