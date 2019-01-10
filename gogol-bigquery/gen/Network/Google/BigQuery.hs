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

    -- ** bigquery.projects.getServiceAccount
    , module Network.Google.Resource.BigQuery.Projects.GetServiceAccount

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
    , jrLocation
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
    , dsldsiLocation
    , dsldsiFriendlyName
    , dsldsiKind
    , dsldsiDataSetReference
    , dsldsiId
    , dsldsiLabels

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
    , jctcDestinationEncryptionConfiguration

    -- ** TableListTablesItem
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

    -- ** QueryTimelineSample
    , QueryTimelineSample
    , queryTimelineSample
    , qtsPendingUnits
    , qtsTotalSlotMs
    , qtsActiveUnits
    , qtsElapsedMs
    , qtsCompletedUnits

    -- ** QueryParameterTypeStructTypesItem
    , QueryParameterTypeStructTypesItem
    , queryParameterTypeStructTypesItem
    , qptstiName
    , qptstiType
    , qptstiDescription

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
    , jsCompletionRatio
    , jsTotalSlotMs
    , jsLoad
    , jsTotalBytesProcessed
    , jsQuotaDeferments
    , jsEndTime
    , jsQuery
    , jsExtract
    , jsReservationUsage

    -- ** JobConfigurationLabels
    , JobConfigurationLabels
    , jobConfigurationLabels
    , jclAddtional

    -- ** DataSet
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

    -- ** RangePartitioningRange
    , RangePartitioningRange
    , rangePartitioningRange
    , rprStart
    , rprInterval
    , rprEnd

    -- ** JobStatisticsReservationUsageItem
    , JobStatisticsReservationUsageItem
    , jobStatisticsReservationUsageItem
    , jsruiName
    , jsruiSlotMs

    -- ** BigtableOptions
    , BigtableOptions
    , bigtableOptions
    , boReadRowkeyAsString
    , boIgnoreUnspecifiedColumnFamilies
    , boColumnFamilies

    -- ** Clustering
    , Clustering
    , clustering
    , cFields

    -- ** ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcBigtableOptions
    , edcIgnoreUnknownValues
    , edcCompression
    , edcSourceFormat
    , edcSchema
    , edcMaxBadRecords
    , edcGoogleSheetsOptions
    , edcAutodetect
    , edcSourceURIs
    , edcCSVOptions

    -- ** TableReference
    , TableReference
    , tableReference
    , trDataSetId
    , trProjectId
    , trTableId

    -- ** ModelDefinitionModelOptions
    , ModelDefinitionModelOptions
    , modelDefinitionModelOptions
    , mdmoModelType
    , mdmoLabels
    , mdmoLossType

    -- ** RangePartitioning
    , RangePartitioning
    , rangePartitioning
    , rpField
    , rpRange

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
    , gqrrNumDmlAffectedRows
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

    -- ** JobsListProjection
    , JobsListProjection (..)

    -- ** QueryParameter
    , QueryParameter
    , queryParameter
    , qpParameterValue
    , qpParameterType
    , qpName

    -- ** IterationResult
    , IterationResult
    , iterationResult
    , irDurationMs
    , irLearnRate
    , irEvalLoss
    , irTrainingLoss
    , irIndex

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

    -- ** TrainingRunTrainingOptions
    , TrainingRunTrainingOptions
    , trainingRunTrainingOptions
    , trtoLineSearchInitLearnRate
    , trtoMinRelProgress
    , trtoL1Reg
    , trtoLearnRate
    , trtoLearnRateStrategy
    , trtoMaxIteration
    , trtoEarlyStop
    , trtoL2Reg
    , trtoWarmStart

    -- ** BigQueryModelTraining
    , BigQueryModelTraining
    , bigQueryModelTraining
    , bqmtExpectedTotalIterations
    , bqmtCurrentIteration

    -- ** JobConfigurationLoad
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

    -- ** JobsListStateFilter
    , JobsListStateFilter (..)

    -- ** DataSetReference
    , DataSetReference
    , dataSetReference
    , dsrDataSetId
    , dsrProjectId

    -- ** MaterializedViewDefinition
    , MaterializedViewDefinition
    , materializedViewDefinition
    , mvdQuery
    , mvdLastRefreshTime

    -- ** TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tdiarKind
    , tdiarIgnoreUnknownValues
    , tdiarRows
    , tdiarTemplateSuffix
    , tdiarSkipInvalidRows

    -- ** GetServiceAccountResponse
    , GetServiceAccountResponse
    , getServiceAccountResponse
    , gsarEmail
    , gsarKind

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

    -- ** TimePartitioning
    , TimePartitioning
    , timePartitioning
    , tpField
    , tpExpirationMs
    , tpRequirePartitionFilter
    , tpType

    -- ** QueryParameterValueStructValues
    , QueryParameterValueStructValues
    , queryParameterValueStructValues
    , qpvsvAddtional

    -- ** DataSetLabels
    , DataSetLabels
    , dataSetLabels
    , dslAddtional

    -- ** JobConfiguration
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

    -- ** EncryptionConfiguration
    , EncryptionConfiguration
    , encryptionConfiguration
    , ecKmsKeyName

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

    -- ** ModelDefinition
    , ModelDefinition
    , modelDefinition
    , mdModelOptions
    , mdTrainingRuns

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

    -- ** GoogleSheetsOptions
    , GoogleSheetsOptions
    , googleSheetsOptions
    , gsoSkipLeadingRows
    , gsoRange

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

    -- ** JobStatistics2ReservationUsageItem
    , JobStatistics2ReservationUsageItem
    , jobStatistics2ReservationUsageItem
    , jName
    , jSlotMs

    -- ** QueryParameterValue
    , QueryParameterValue
    , queryParameterValue
    , qpvStructValues
    , qpvValue
    , qpvArrayValues

    -- ** ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdUserDefinedFunctionResources
    , vdQuery
    , vdUseLegacySQL

    -- ** UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceURI
    , udfrInlineCode

    -- ** JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jModelTrainingExpectedTotalIteration
    , jModelTraining
    , jTotalSlotMs
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

    -- ** JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- ** TableLabels
    , TableLabels
    , tableLabels
    , tlAddtional

    -- ** DestinationTableProperties
    , DestinationTableProperties
    , destinationTableProperties
    , dtpFriendlyName
    , dtpDescription

    -- ** DataSetAccessItem
    , DataSetAccessItem
    , dataSetAccessItem
    , dsaiGroupByEmail
    , dsaiDomain
    , dsaiSpecialGroup
    , dsaiRole
    , dsaiIAMMember
    , dsaiView
    , dsaiUserByEmail

    -- ** TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tKind
    , tInsertErrors

    -- ** QueryParameterType
    , QueryParameterType
    , queryParameterType
    , qptStructTypes
    , qptType
    , qptArrayType

    -- ** Table
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
    , jsBadRecords

    -- ** QueryResponse
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

    -- ** DataSetListDataSetsItemLabels
    , DataSetListDataSetsItemLabels
    , dataSetListDataSetsItemLabels
    , dsldsilAddtional

    -- ** TrainingRun
    , TrainingRun
    , trainingRun
    , trState
    , trStartTime
    , trIterationResults
    , trTrainingOptions

    -- ** TableListTablesItemView
    , TableListTablesItemView
    , tableListTablesItemView
    , tltivUseLegacySQL

    -- ** TableListTablesItemLabels
    , TableListTablesItemLabels
    , tableListTablesItemLabels
    , tltilAddtional
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
import           Network.Google.Resource.BigQuery.Projects.GetServiceAccount
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
       :<|> ProjectsGetServiceAccountResource
       :<|> ProjectsListResource
       :<|> DataSetsInsertResource
       :<|> DataSetsListResource
       :<|> DataSetsPatchResource
       :<|> DataSetsGetResource
       :<|> DataSetsDeleteResource
       :<|> DataSetsUpdateResource
