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

    -- * JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- * DatasetsItem
    , DatasetsItem
    , datasetsItem
    , diFriendlyName
    , diKind
    , diDatasetReference
    , diId

    -- * TableList
    , TableList
    , tableList
    , tlTotalItems
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlTables

    -- * TableDataList
    , TableDataList
    , tableDataList
    , tdlEtag
    , tdlKind
    , tdlRows
    , tdlPageToken
    , tdlTotalRows

    -- * JobConfigurationTableCopy
    , JobConfigurationTableCopy
    , jobConfigurationTableCopy
    , jctcDestinationTable
    , jctcWriteDisPosition
    , jctcSourceTables
    , jctcCreateDisPosition
    , jctcSourceTable

    -- * TableSchema
    , TableSchema
    , tableSchema
    , tsFields

    -- * ProjectList
    , ProjectList
    , projectList
    , plTotalItems
    , plEtag
    , plNextPageToken
    , plKind
    , plProjects

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

    -- * TableReference
    , TableReference
    , tableReference
    , trDatasetId
    , trProjectId
    , trTableId

    -- * TableFieldSchema
    , TableFieldSchema
    , tableFieldSchema
    , tfsMode
    , tfsName
    , tfsType
    , tfsDescription
    , tfsFields

    -- * ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcIgnoreUnknownValues
    , edcCompression
    , edcSourceFormat
    , edcSchema
    , edcMaxBadRecords
    , edcSourceURIs
    , edcCSVOptions

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

    -- * TablesItem
    , TablesItem
    , tablesItem
    , tiTableReference
    , tiFriendlyName
    , tiKind
    , tiId
    , tiType

    -- * TableDefinitions
    , TableDefinitions
    , tableDefinitions

    -- * DatasetList
    , DatasetList
    , datasetList
    , dlEtag
    , dlNextPageToken
    , dlKind
    , dlDatasets

    -- * QueryRequest
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

    -- * JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsDestinationURIFileCounts

    -- * ProjectReference
    , ProjectReference
    , projectReference
    , prProjectId

    -- * JobsItem
    , JobsItem
    , jobsItem
    , jiJobReference
    , jiStatus
    , jiState
    , jiUserEmail
    , jiKind
    , jiErrorResult
    , jiId
    , jiStatistics
    , jiConfiguration

    -- * InsertErrorsItem
    , InsertErrorsItem
    , insertErrorsItem
    , ieiErrors
    , ieiIndex

    -- * TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tdiarKind
    , tdiarIgnoreUnknownValues
    , tdiarRows
    , tdiarSkipInvalidRows

    -- * JobConfigurationLoad
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

    -- * DatasetReference
    , DatasetReference
    , datasetReference
    , drDatasetId
    , drProjectId

    -- * TableRow
    , TableRow
    , tableRow
    , trF

    -- * Streamingbuffer
    , Streamingbuffer
    , streamingbuffer
    , sEstimatedBytes
    , sOldestEntryTime
    , sEstimatedRows

    -- * Job
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

    -- * JobConfigurationLink
    , JobConfigurationLink
    , jobConfigurationLink
    , jDestinationTable
    , jWriteDisPosition
    , jCreateDisPosition
    , jSourceURI

    -- * JobConfiguration
    , JobConfiguration
    , jobConfiguration
    , jcCopy
    , jcLink
    , jcLoad
    , jcQuery
    , jcExtract
    , jcDryRun

    -- * StateFilter
    , StateFilter (..)

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
    , jceDestinationURIs
    , jceDestinationURI
    , jceFieldDelimiter

    -- * JSONObject
    , JSONObject
    , jsonObject

    -- * TableDataInsertAllRequestRowsItem
    , TableDataInsertAllRequestRowsItem
    , tableDataInsertAllRequestRowsItem
    , tdiarriJSON
    , tdiarriInsertId

    -- * JobConfigurationQuery
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

    -- * JobList
    , JobList
    , jobList
    , jlEtag
    , jlNextPageToken
    , jlKind
    , jlJobs

    -- * Projection
    , Projection (..)

    -- * TableCell
    , TableCell
    , tableCell
    , tcV

    -- * UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceURI
    , udfrInlineCode

    -- * ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdQuery

    -- * JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jTotalBytesProcessed
    , jBillingTier
    , jCacheHit
    , jTotalBytesBilled

    -- * JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- * TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tKind
    , tInsertErrors

    -- * ProjectsItem
    , ProjectsItem
    , projectsItem
    , piFriendlyName
    , piKind
    , piProjectReference
    , piId
    , piNumericId

    -- * Table
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

    -- * ErrorProto
    , ErrorProto
    , errorProto
    , epDebugInfo
    , epLocation
    , epReason
    , epMessage

    -- * CSVOptions
    , CSVOptions
    , csvOptions
    , coSkipLeadingRows
    , coAllowJaggedRows
    , coAllowQuotedNewlines
    , coQuote
    , coEncoding
    , coFieldDelimiter

    -- * JobStatistics3
    , JobStatistics3
    , jobStatistics3
    , jsInputFiles
    , jsOutputRows
    , jsOutputBytes
    , jsInputFileBytes

    -- * QueryResponse
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

    -- * AccessItem
    , AccessItem
    , accessItem
    , aiGroupByEmail
    , aiDomain
    , aiSpecialGroup
    , aiRole
    , aiView
    , aiUserByEmail
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
