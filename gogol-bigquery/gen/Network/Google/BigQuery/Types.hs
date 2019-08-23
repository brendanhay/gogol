{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQuery.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQuery.Types
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

    -- * JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrLocation
    , jrProjectId

    -- * TableList
    , TableList
    , tableList
    , tlTotalItems
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlTables

    -- * DataSetListDataSetsItem
    , DataSetListDataSetsItem
    , dataSetListDataSetsItem
    , dsldsiLocation
    , dsldsiFriendlyName
    , dsldsiKind
    , dsldsiDataSetReference
    , dsldsiId
    , dsldsiLabels

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
    , jctcDestinationEncryptionConfiguration

    -- * TableListTablesItem
    , TableListTablesItem
    , tableListTablesItem
    , tltiCreationTime
    , tltiClustering
    , tltiTableReference
    , tltiFriendlyName
    , tltiKind
    , tltiTimePartitioning
    , tltiView
    , tltiId
    , tltiLabels
    , tltiType
    , tltiExpirationTime

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

    -- * ExplainQueryStep
    , ExplainQueryStep
    , explainQueryStep
    , eqsSubsteps
    , eqsKind

    -- * QueryTimelineSample
    , QueryTimelineSample
    , queryTimelineSample
    , qtsPendingUnits
    , qtsTotalSlotMs
    , qtsActiveUnits
    , qtsElapsedMs
    , qtsCompletedUnits

    -- * QueryParameterTypeStructTypesItem
    , QueryParameterTypeStructTypesItem
    , queryParameterTypeStructTypesItem
    , qptstiName
    , qptstiType
    , qptstiDescription

    -- * BigtableColumnFamily
    , BigtableColumnFamily
    , bigtableColumnFamily
    , bcfFamilyId
    , bcfColumns
    , bcfOnlyReadLatest
    , bcfType
    , bcfEncoding

    -- * JobStatistics
    , JobStatistics
    , jobStatistics
    , jsCreationTime
    , jsStartTime
    , jsCompletionRatio
    , jsNumChildJobs
    , jsTotalSlotMs
    , jsLoad
    , jsTotalBytesProcessed
    , jsQuotaDeferments
    , jsEndTime
    , jsQuery
    , jsExtract
    , jsReservationUsage
    , jsParentJobId

    -- * JobConfigurationLabels
    , JobConfigurationLabels
    , jobConfigurationLabels
    , jclAddtional

    -- * DataSet
    , DataSet
    , dataSet
    , dsCreationTime
    , dsDefaultPartitionExpirationMs
    , dsAccess
    , dsEtag
    , dsLocation
    , dsFriendlyName
    , dsKind
    , dsLastModifiedTime
    , dsDataSetReference
    , dsSelfLink
    , dsId
    , dsLabels
    , dsDefaultTableExpirationMs
    , dsDescription

    -- * RangePartitioningRange
    , RangePartitioningRange
    , rangePartitioningRange
    , rprStart
    , rprInterval
    , rprEnd

    -- * JobStatisticsReservationUsageItem
    , JobStatisticsReservationUsageItem
    , jobStatisticsReservationUsageItem
    , jsruiName
    , jsruiSlotMs

    -- * BigtableOptions
    , BigtableOptions
    , bigtableOptions
    , boReadRowkeyAsString
    , boIgnoreUnspecifiedColumnFamilies
    , boColumnFamilies

    -- * Clustering
    , Clustering
    , clustering
    , cFields

    -- * ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcBigtableOptions
    , edcIgnoreUnknownValues
    , edcHivePartitioningMode
    , edcCompression
    , edcSourceFormat
    , edcSchema
    , edcMaxBadRecords
    , edcGoogleSheetsOptions
    , edcAutodetect
    , edcSourceURIs
    , edcCSVOptions

    -- * TableReference
    , TableReference
    , tableReference
    , trDataSetId
    , trProjectId
    , trTableId

    -- * ModelDefinitionModelOptions
    , ModelDefinitionModelOptions
    , modelDefinitionModelOptions
    , mdmoModelType
    , mdmoLabels
    , mdmoLossType

    -- * RoutineReference
    , RoutineReference
    , routineReference
    , rrDataSetId
    , rrProjectId
    , rrRoutineId

    -- * RangePartitioning
    , RangePartitioning
    , rangePartitioning
    , rpField
    , rpRange

    -- * TableFieldSchema
    , TableFieldSchema
    , tableFieldSchema
    , tfsMode
    , tfsCategories
    , tfsName
    , tfsType
    , tfsDescription
    , tfsFields

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
    , gqrrNumDmlAffectedRows
    , gqrrTotalRows
    , gqrrErrors
    , gqrrJobComplete
    , gqrrCacheHit

    -- * DataSetList
    , DataSetList
    , dataSetList
    , dslEtag
    , dslNextPageToken
    , dslKind
    , dslDataSets

    -- * QueryRequest
    , QueryRequest
    , queryRequest
    , qrLocation
    , qrUseQueryCache
    , qrPreserveNulls
    , qrKind
    , qrQueryParameters
    , qrQuery
    , qrParameterMode
    , qrTimeoutMs
    , qrUseLegacySQL
    , qrDryRun
    , qrMaxResults
    , qrDefaultDataSet

    -- * JobsListProjection
    , JobsListProjection (..)

    -- * BqmlTrainingRunTrainingOptions
    , BqmlTrainingRunTrainingOptions
    , bqmlTrainingRunTrainingOptions
    , btrtoLineSearchInitLearnRate
    , btrtoMinRelProgress
    , btrtoL1Reg
    , btrtoLearnRate
    , btrtoLearnRateStrategy
    , btrtoMaxIteration
    , btrtoEarlyStop
    , btrtoL2Reg
    , btrtoWarmStart

    -- * QueryParameter
    , QueryParameter
    , queryParameter
    , qpParameterValue
    , qpParameterType
    , qpName

    -- * JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsInputBytes
    , jsDestinationURIFileCounts

    -- * ProjectReference
    , ProjectReference
    , projectReference
    , prProjectId

    -- * ExplainQueryStage
    , ExplainQueryStage
    , explainQueryStage
    , eqsReadMsAvg
    , eqsStatus
    , eqsShuffleOutputBytesSpilled
    , eqsReadMsMax
    , eqsCompletedParallelInputs
    , eqsWaitRatioMax
    , eqsParallelInputs
    , eqsShuffleOutputBytes
    , eqsRecordsWritten
    , eqsSteps
    , eqsInputStages
    , eqsWriteRatioAvg
    , eqsRecordsRead
    , eqsComputeRatioAvg
    , eqsName
    , eqsComputeMsMax
    , eqsReadRatioMax
    , eqsWriteMsMax
    , eqsWaitRatioAvg
    , eqsWaitMsAvg
    , eqsId
    , eqsComputeRatioMax
    , eqsWriteRatioMax
    , eqsComputeMsAvg
    , eqsReadRatioAvg
    , eqsWriteMsAvg
    , eqsStartMs
    , eqsEndMs
    , eqsWaitMsMax

    -- * BigQueryModelTraining
    , BigQueryModelTraining
    , bigQueryModelTraining
    , bqmtExpectedTotalIterations
    , bqmtCurrentIteration

    -- * JobConfigurationLoad
    , JobConfigurationLoad
    , jobConfigurationLoad
    , jclSkipLeadingRows
    , jclProjectionFields
    , jclDestinationTable
    , jclWriteDisPosition
    , jclAllowJaggedRows
    , jclClustering
    , jclRangePartitioning
    , jclSchemaInline
    , jclIgnoreUnknownValues
    , jclSchemaUpdateOptions
    , jclHivePartitioningMode
    , jclCreateDisPosition
    , jclSchemaInlineFormat
    , jclAllowQuotedNewlines
    , jclSourceFormat
    , jclUseAvroLogicalTypes
    , jclSchema
    , jclTimePartitioning
    , jclQuote
    , jclMaxBadRecords
    , jclAutodetect
    , jclSourceURIs
    , jclEncoding
    , jclDestinationTableProperties
    , jclDestinationEncryptionConfiguration
    , jclFieldDelimiter
    , jclNullMarker

    -- * JobsListStateFilter
    , JobsListStateFilter (..)

    -- * DataSetReference
    , DataSetReference
    , dataSetReference
    , dsrDataSetId
    , dsrProjectId

    -- * MaterializedViewDefinition
    , MaterializedViewDefinition
    , materializedViewDefinition
    , mvdQuery
    , mvdLastRefreshTime

    -- * TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tdiarKind
    , tdiarIgnoreUnknownValues
    , tdiarRows
    , tdiarTemplateSuffix
    , tdiarSkipInvalidRows

    -- * GetServiceAccountResponse
    , GetServiceAccountResponse
    , getServiceAccountResponse
    , gsarEmail
    , gsarKind

    -- * ProjectListProjectsItem
    , ProjectListProjectsItem
    , projectListProjectsItem
    , plpiFriendlyName
    , plpiKind
    , plpiProjectReference
    , plpiId
    , plpiNumericId

    -- * BqmlIterationResult
    , BqmlIterationResult
    , bqmlIterationResult
    , birDurationMs
    , birLearnRate
    , birEvalLoss
    , birTrainingLoss
    , birIndex

    -- * BigtableColumn
    , BigtableColumn
    , bigtableColumn
    , bcQualifierEncoded
    , bcFieldName
    , bcQualifierString
    , bcOnlyReadLatest
    , bcType
    , bcEncoding

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

    -- * JobListJobsItem
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

    -- * TimePartitioning
    , TimePartitioning
    , timePartitioning
    , tpField
    , tpExpirationMs
    , tpRequirePartitionFilter
    , tpType

    -- * QueryParameterValueStructValues
    , QueryParameterValueStructValues
    , queryParameterValueStructValues
    , qpvsvAddtional

    -- * DataSetLabels
    , DataSetLabels
    , dataSetLabels
    , dslAddtional

    -- * JobConfiguration
    , JobConfiguration
    , jobConfiguration
    , jcJobType
    , jcCopy
    , jcLoad
    , jcQuery
    , jcJobTimeoutMs
    , jcExtract
    , jcLabels
    , jcDryRun

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

    -- * EncryptionConfiguration
    , EncryptionConfiguration
    , encryptionConfiguration
    , ecKmsKeyName

    -- * TableDataInsertAllResponseInsertErrorsItem
    , TableDataInsertAllResponseInsertErrorsItem
    , tableDataInsertAllResponseInsertErrorsItem
    , tdiarieiErrors
    , tdiarieiIndex

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

    -- * ModelDefinition
    , ModelDefinition
    , modelDefinition
    , mdModelOptions
    , mdTrainingRuns

    -- * JobCancelResponse
    , JobCancelResponse
    , jobCancelResponse
    , jcrKind
    , jcrJob

    -- * JSONObject
    , JSONObject
    , jsonObject
    , joAddtional

    -- * JobConfigurationQuery
    , JobConfigurationQuery
    , jobConfigurationQuery
    , jcqDestinationTable
    , jcqWriteDisPosition
    , jcqPriority
    , jcqClustering
    , jcqRangePartitioning
    , jcqUseQueryCache
    , jcqPreserveNulls
    , jcqTableDefinitions
    , jcqQueryParameters
    , jcqSchemaUpdateOptions
    , jcqMaximumBytesBilled
    , jcqCreateDisPosition
    , jcqUserDefinedFunctionResources
    , jcqAllowLargeResults
    , jcqMaximumBillingTier
    , jcqTimePartitioning
    , jcqQuery
    , jcqFlattenResults
    , jcqParameterMode
    , jcqUseLegacySQL
    , jcqDestinationEncryptionConfiguration
    , jcqDefaultDataSet

    -- * GoogleSheetsOptions
    , GoogleSheetsOptions
    , googleSheetsOptions
    , gsoSkipLeadingRows
    , gsoRange

    -- * TableDataInsertAllRequestRowsItem
    , TableDataInsertAllRequestRowsItem
    , tableDataInsertAllRequestRowsItem
    , tdiarriJSON
    , tdiarriInsertId

    -- * JobList
    , JobList
    , jobList
    , jlEtag
    , jlNextPageToken
    , jlKind
    , jlJobs

    -- * JobConfigurationQueryTableDefinitions
    , JobConfigurationQueryTableDefinitions
    , jobConfigurationQueryTableDefinitions
    , jcqtdAddtional

    -- * TableCell
    , TableCell
    , tableCell
    , tcV

    -- * JobStatistics2ReservationUsageItem
    , JobStatistics2ReservationUsageItem
    , jobStatistics2ReservationUsageItem
    , jName
    , jSlotMs

    -- * QueryParameterValue
    , QueryParameterValue
    , queryParameterValue
    , qpvStructValues
    , qpvValue
    , qpvArrayValues

    -- * ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdUserDefinedFunctionResources
    , vdQuery
    , vdUseLegacySQL

    -- * UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceURI
    , udfrInlineCode

    -- * JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jModelTrainingExpectedTotalIteration
    , jModelTraining
    , jTotalSlotMs
    , jDdlTargetRoutine
    , jDdlTargetTable
    , jEstimatedBytesProcessed
    , jModelTrainingCurrentIteration
    , jSchema
    , jTotalBytesProcessed
    , jBillingTier
    , jTotalBytesProcessedAccuracy
    , jUndeclaredQueryParameters
    , jReferencedTables
    , jStatementType
    , jReservationUsage
    , jNumDmlAffectedRows
    , jTimeline
    , jQueryPlan
    , jCacheHit
    , jTotalBytesBilled
    , jDdlOperationPerformed
    , jTotalPartitionsProcessed

    -- * TableFieldSchemaCategories
    , TableFieldSchemaCategories
    , tableFieldSchemaCategories
    , tfscNames

    -- * JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- * TableLabels
    , TableLabels
    , tableLabels
    , tlAddtional

    -- * DestinationTableProperties
    , DestinationTableProperties
    , destinationTableProperties
    , dtpFriendlyName
    , dtpLabels
    , dtpDescription

    -- * DataSetAccessItem
    , DataSetAccessItem
    , dataSetAccessItem
    , dsaiGroupByEmail
    , dsaiDomain
    , dsaiSpecialGroup
    , dsaiRole
    , dsaiIAMMember
    , dsaiView
    , dsaiUserByEmail

    -- * BqmlTrainingRun
    , BqmlTrainingRun
    , bqmlTrainingRun
    , btrState
    , btrStartTime
    , btrIterationResults
    , btrTrainingOptions

    -- * TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tKind
    , tInsertErrors

    -- * QueryParameterType
    , QueryParameterType
    , queryParameterType
    , qptStructTypes
    , qptType
    , qptArrayType

    -- * Table
    , Table
    , table
    , tabMaterializedView
    , tabCreationTime
    , tabEtag
    , tabNumBytes
    , tabClustering
    , tabExternalDataConfiguration
    , tabRangePartitioning
    , tabLocation
    , tabTableReference
    , tabFriendlyName
    , tabKind
    , tabLastModifiedTime
    , tabSchema
    , tabStreamingBuffer
    , tabSelfLink
    , tabRequirePartitionFilter
    , tabEncryptionConfiguration
    , tabModel
    , tabTimePartitioning
    , tabNumRows
    , tabNumPhysicalBytes
    , tabView
    , tabId
    , tabLabels
    , tabType
    , tabNumLongTermBytes
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

    -- * DestinationTablePropertiesLabels
    , DestinationTablePropertiesLabels
    , destinationTablePropertiesLabels
    , dtplAddtional

    -- * JobStatistics3
    , JobStatistics3
    , jobStatistics3
    , jsInputFiles
    , jsOutputRows
    , jsOutputBytes
    , jsInputFileBytes
    , jsBadRecords

    -- * QueryResponse
    , QueryResponse
    , queryResponse
    , qJobReference
    , qKind
    , qSchema
    , qTotalBytesProcessed
    , qRows
    , qPageToken
    , qNumDmlAffectedRows
    , qTotalRows
    , qErrors
    , qJobComplete
    , qCacheHit

    -- * DataSetListDataSetsItemLabels
    , DataSetListDataSetsItemLabels
    , dataSetListDataSetsItemLabels
    , dsldsilAddtional

    -- * TableListTablesItemView
    , TableListTablesItemView
    , tableListTablesItemView
    , tltivUseLegacySQL

    -- * TableListTablesItemLabels
    , TableListTablesItemLabels
    , tableListTablesItemLabels
    , tltilAddtional
    ) where

import           Network.Google.BigQuery.Types.Product
import           Network.Google.BigQuery.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the BigQuery API. This contains the host and root path used as a starting point for constructing service requests.
bigQueryService :: ServiceConfig
bigQueryService
  = defaultService (ServiceId "bigquery:v2")
      "www.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View your data in Google Cloud Storage
storageReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_only"]
storageReadOnlyScope = Proxy

-- | Insert data into Google BigQuery
bigQueryInsertDataScope :: Proxy '["https://www.googleapis.com/auth/bigquery.insertdata"]
bigQueryInsertDataScope = Proxy

-- | Manage your data in Google Cloud Storage
storageReadWriteScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_write"]
storageReadWriteScope = Proxy

-- | View and manage your data in Google BigQuery
bigQueryScope :: Proxy '["https://www.googleapis.com/auth/bigquery"]
bigQueryScope = Proxy

-- | Manage your data and permissions in Google Cloud Storage
storageFullControlScope :: Proxy '["https://www.googleapis.com/auth/devstorage.full_control"]
storageFullControlScope = Proxy
