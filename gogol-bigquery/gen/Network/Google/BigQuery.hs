-- |
-- Module      : Network.Google.BigQuery
-- Copyright   : (c) 2015 Brendan Hay
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
    -- * API Definition
      BigQuery



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

{- $resources
TODO
-}

type BigQuery = ()

bigQuery :: Proxy BigQuery
bigQuery = Proxy




