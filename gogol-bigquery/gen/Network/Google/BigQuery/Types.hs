{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQuery.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQuery.Types
    (
    -- * Service URL
      bigQueryURL

    -- * Streamingbuffer
    , Streamingbuffer
    , streamingbuffer
    , sEstimatedBytes
    , sOldestEntryTime
    , sEstimatedRows

    -- * TableRow
    , TableRow
    , tableRow
    , trF

    -- * JobsList'Projection
    , JobsList'Projection (..)

    -- * JobConfiguration
    , JobConfiguration
    , jobConfiguration
    , jcCopy
    , jcLink
    , jcLoad
    , jcQuery
    , jcExtract
    , jcDryRun

    -- * Job
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

    -- * JobConfigurationLink
    , JobConfigurationLink
    , jobConfigurationLink
    , jclDestinationTable
    , jclWriteDisposition
    , jclCreateDisposition
    , jclSourceUri

    -- * TableListItemTables
    , TableListItemTables
    , tableListItemTables
    , tlitTableReference
    , tlitFriendlyName
    , tlitKind
    , tlitId
    , tlitType

    -- * DatasetListItemDatasets
    , DatasetListItemDatasets
    , datasetListItemDatasets
    , dlidFriendlyName
    , dlidKind
    , dlidDatasetReference
    , dlidId

    -- * Dataset
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

    -- * Alt
    , Alt (..)

    -- * JobStatistics
    , JobStatistics
    , jobStatistics
    , jsCreationTime
    , jsStartTime
    , jsLoad
    , jsTotalBytesProcessed
    , jsEndTime
    , jsQuery
    , jsExtract

    -- * JsonObject
    , JsonObject
    , jsonObject

    -- * JobConfigurationQuery
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

    -- * JobList
    , JobList
    , jobList
    , jlEtag
    , jlNextPageToken
    , jlKind
    , jlJobs

    -- * JobsList'StateFilter
    , JobsList'StateFilter (..)

    -- * ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdQuery

    -- * TableCell
    , TableCell
    , tableCell
    , tcV

    -- * JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jTotalBytesProcessed
    , jBillingTier
    , jCacheHit
    , jTotalBytesBilled

    -- * UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceUri
    , udfrInlineCode

    -- * JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- * TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tdiarKind
    , tdiarInsertErrors

    -- * ProjectReference
    , ProjectReference
    , projectReference
    , prProjectId

    -- * JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsDestinationUriFileCounts

    -- * QueryResponse
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

    -- * JobStatistics3
    , JobStatistics3
    , jobStatistics3
    , jsInputFiles
    , jsOutputRows
    , jsOutputBytes
    , jsInputFileBytes

    -- * TableDataInsertAllResponseItemInsertErrors
    , TableDataInsertAllResponseItemInsertErrors
    , tableDataInsertAllResponseItemInsertErrors
    , tdiariieErrors
    , tdiariieIndex

    -- * JobConfigurationTableCopy
    , JobConfigurationTableCopy
    , jobConfigurationTableCopy
    , jctcDestinationTable
    , jctcWriteDisposition
    , jctcSourceTables
    , jctcCreateDisposition
    , jctcSourceTable

    -- * TableDataList
    , TableDataList
    , tableDataList
    , tdlEtag
    , tdlKind
    , tdlRows
    , tdlPageToken
    , tdlTotalRows

    -- * JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- * TableList
    , TableList
    , tableList
    , tlTotalItems
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlTables

    -- * ProjectListItemProjects
    , ProjectListItemProjects
    , projectListItemProjects
    , plipFriendlyName
    , plipKind
    , plipProjectReference
    , plipId
    , plipNumericId

    -- * ProjectList
    , ProjectList
    , projectList
    , plTotalItems
    , plEtag
    , plNextPageToken
    , plKind
    , plProjects

    -- * TableSchema
    , TableSchema
    , tableSchema
    , tsFields

    -- * JobListItemJobs
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

    -- * JobCancelResponse
    , JobCancelResponse
    , jobCancelResponse
    , jcrKind
    , jcrJob

    -- * JobConfigurationExtract
    , JobConfigurationExtract
    , jobConfigurationExtract
    , jceDestinationFormat
    , jceSourceTable
    , jcePrintHeader
    , jceCompression
    , jceDestinationUris
    , jceDestinationUri
    , jceFieldDelimiter

    -- * GetQueryResultsResponse
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

    -- * TableReference
    , TableReference
    , tableReference
    , trDatasetId
    , trProjectId
    , trTableId

    -- * ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcIgnoreUnknownValues
    , edcCompression
    , edcSourceFormat
    , edcSchema
    , edcMaxBadRecords
    , edcSourceUris
    , edcCsvOptions

    -- * TableFieldSchema
    , TableFieldSchema
    , tableFieldSchema
    , tfsMode
    , tfsName
    , tfsType
    , tfsDescription
    , tfsFields

    -- * DatasetList
    , DatasetList
    , datasetList
    , dlEtag
    , dlNextPageToken
    , dlKind
    , dlDatasets

    -- * DatasetItemAccess
    , DatasetItemAccess
    , datasetItemAccess
    , diaGroupByEmail
    , diaDomain
    , diaSpecialGroup
    , diaRole
    , diaView
    , diaUserByEmail

    -- * QueryRequest
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

    -- * Table
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

    -- * JobConfigurationQueryTableDefinitions
    , JobConfigurationQueryTableDefinitions
    , jobConfigurationQueryTableDefinitions

    -- * CsvOptions
    , CsvOptions
    , csvOptions
    , coSkipLeadingRows
    , coAllowJaggedRows
    , coAllowQuotedNewlines
    , coQuote
    , coEncoding
    , coFieldDelimiter

    -- * TableDataInsertAllRequestItemRows
    , TableDataInsertAllRequestItemRows
    , tableDataInsertAllRequestItemRows
    , tdiarirJson
    , tdiarirInsertId

    -- * ErrorProto
    , ErrorProto
    , errorProto
    , epDebugInfo
    , epLocation
    , epReason
    , epMessage

    -- * TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tabKind
    , tabIgnoreUnknownValues
    , tabRows
    , tabSkipInvalidRows

    -- * DatasetReference
    , DatasetReference
    , datasetReference
    , drDatasetId
    , drProjectId

    -- * JobConfigurationLoad
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

import           Network.Google.BigQuery.Types.Product
import           Network.Google.BigQuery.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the BigQuery API.
bigQueryURL :: BaseUrl
bigQueryURL
  = BaseUrl Https
      "https://www.googleapis.com/bigquery/v2/"
      443
