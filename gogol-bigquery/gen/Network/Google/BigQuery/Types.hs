{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * ModelReference
    , ModelReference
    , modelReference
    , mrModelId
    , mrDataSetId
    , mrProjectId

    -- * TrainingOptionsDataFrequency
    , TrainingOptionsDataFrequency (..)

    -- * JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrLocation
    , jrProjectId

    -- * ArimaSingleModelForecastingMetricsSeasonalPeriodsItem
    , ArimaSingleModelForecastingMetricsSeasonalPeriodsItem (..)

    -- * TableList
    , TableList
    , tableList
    , tlTotalItems
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlTables

    -- * ArimaResultSeasonalPeriodsItem
    , ArimaResultSeasonalPeriodsItem (..)

    -- * DataSetListDataSetsItem
    , DataSetListDataSetsItem
    , dataSetListDataSetsItem
    , dsldsiLocation
    , dsldsiFriendlyName
    , dsldsiKind
    , dsldsiDataSetReference
    , dsldsiId
    , dsldsiLabels

    -- * ClusterInfo
    , ClusterInfo
    , clusterInfo
    , ciClusterSize
    , ciClusterRadius
    , ciCentroidId

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
    , jctcDestinationExpirationTime
    , jctcWriteDisPosition
    , jctcSourceTables
    , jctcCreateDisPosition
    , jctcSourceTable
    , jctcOperationType
    , jctcDestinationEncryptionConfiguration

    -- * TableListTablesItem
    , TableListTablesItem
    , tableListTablesItem
    , tltiCreationTime
    , tltiClustering
    , tltiRangePartitioning
    , tltiTableReference
    , tltiFriendlyName
    , tltiKind
    , tltiTimePartitioning
    , tltiView
    , tltiId
    , tltiLabels
    , tltiType
    , tltiExpirationTime

    -- * TableFieldSchemaPolicyTags
    , TableFieldSchemaPolicyTags
    , tableFieldSchemaPolicyTags
    , tfsptNames

    -- * TableSchema
    , TableSchema
    , tableSchema
    , tsFields

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * ProjectList
    , ProjectList
    , projectList
    , plTotalItems
    , plEtag
    , plNextPageToken
    , plKind
    , plProjects

    -- * ArimaModelInfo
    , ArimaModelInfo
    , arimaModelInfo
    , amiHasStepChanges
    , amiHasSpikesAndDips
    , amiSeasonalPeriods
    , amiNonSeasonalOrder
    , amiHasDrift
    , amiArimaCoefficients
    , amiTimeSeriesIds
    , amiHasHolidayEffect
    , amiTimeSeriesId
    , amiArimaFittingMetrics

    -- * RowLevelSecurityStatistics
    , RowLevelSecurityStatistics
    , rowLevelSecurityStatistics
    , rlssRowLevelSecurityApplied

    -- * FeatureValue
    , FeatureValue
    , featureValue
    , fvFeatureColumn
    , fvNumericalValue
    , fvCategoricalValue

    -- * RoutineDeterminismLevel
    , RoutineDeterminismLevel (..)

    -- * ExplainQueryStep
    , ExplainQueryStep
    , explainQueryStep
    , eqsSubsteps
    , eqsKind

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * StandardSQLField
    , StandardSQLField
    , standardSQLField
    , ssqlfName
    , ssqlfType

    -- * QueryTimelineSample
    , QueryTimelineSample
    , queryTimelineSample
    , qtsPendingUnits
    , qtsTotalSlotMs
    , qtsActiveUnits
    , qtsElapsedMs
    , qtsCompletedUnits

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * QueryParameterTypeStructTypesItem
    , QueryParameterTypeStructTypesItem
    , queryParameterTypeStructTypesItem
    , qptstiName
    , qptstiType
    , qptstiDescription

    -- * Cluster
    , Cluster
    , cluster
    , cFeatureValues
    , cCount
    , cCentroidId

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
    , jsRowLevelSecurityStatistics
    , jsReservationId
    , jsStartTime
    , jsCompletionRatio
    , jsSessionInfo
    , jsNumChildJobs
    , jsTotalSlotMs
    , jsLoad
    , jsTotalBytesProcessed
    , jsQuotaDeferments
    , jsEndTime
    , jsQuery
    , jsScriptStatistics
    , jsTransactionInfo
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
    , dsSatisfiesPZS
    , dsDefaultEncryptionConfiguration
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

    -- * ModelLabels
    , ModelLabels
    , modelLabels
    , mlAddtional

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

    -- * StandardSQLStructType
    , StandardSQLStructType
    , standardSQLStructType
    , ssqlstFields

    -- * CategoricalValue
    , CategoricalValue
    , categoricalValue
    , cvCategoryCounts

    -- * StandardSQLDataType
    , StandardSQLDataType
    , standardSQLDataType
    , ssqldtArrayElementType
    , ssqldtStructType
    , ssqldtTypeKind

    -- * ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcBigtableOptions
    , edcIgnoreUnknownValues
    , edcConnectionId
    , edcCompression
    , edcSourceFormat
    , edcDecimalTargetTypes
    , edcSchema
    , edcMaxBadRecords
    , edcGoogleSheetsOptions
    , edcAutodetect
    , edcHivePartitioningOptions
    , edcSourceURIs
    , edcParquetOptions
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

    -- * RowAccessPolicyReference
    , RowAccessPolicyReference
    , rowAccessPolicyReference
    , raprPolicyId
    , raprDataSetId
    , raprProjectId
    , raprTableId

    -- * ClusteringMetrics
    , ClusteringMetrics
    , clusteringMetrics
    , cmDaviesBouldinIndex
    , cmMeanSquaredDistance
    , cmClusters

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
    , tfsMaxLength
    , tfsScale
    , tfsMode
    , tfsPrecision
    , tfsCategories
    , tfsPolicyTags
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

    -- * RegressionMetrics
    , RegressionMetrics
    , regressionMetrics
    , rmMeanAbsoluteError
    , rmMeanSquaredLogError
    , rmRSquared
    , rmMeanSquaredError
    , rmMedianAbsoluteError

    -- * BiEngineStatistics
    , BiEngineStatistics
    , biEngineStatistics
    , besBiEngineReasons
    , besBiEngineMode

    -- * TrainingOptionsKmeansInitializationMethod
    , TrainingOptionsKmeansInitializationMethod (..)

    -- * ArgumentArgumentKind
    , ArgumentArgumentKind (..)

    -- * ArgumentMode
    , ArgumentMode (..)

    -- * TrainingOptions
    , TrainingOptions
    , trainingOptions
    , toDataFrequency
    , toDataSplitColumn
    , toHiddenUnits
    , toUserColumn
    , toMaxTreeDepth
    , toNumClusters
    , toCleanSpikesAndDips
    , toDecomposeTimeSeries
    , toL2Regularization
    , toSubSample
    , toAdjustStepChanges
    , toInputLabelColumns
    , toWalsAlpha
    , toTimeSeriesDataColumn
    , toKmeansInitializationMethod
    , toAutoArimaMaxOrder
    , toMinRelativeProgress
    , toTimeSeriesIdColumns
    , toDataSplitEvalFraction
    , toLearnRate
    , toHolidayRegion
    , toBatchSize
    , toIncludeDrift
    , toFeedbackType
    , toAutoArima
    , toNonSeasonalOrder
    , toDropout
    , toHorizon
    , toPreserveInputStructs
    , toOptimizationStrategy
    , toDataSplitMethod
    , toLearnRateStrategy
    , toTimeSeriesIdColumn
    , toMaxIterations
    , toInitialLearnRate
    , toNumFactors
    , toEarlyStop
    , toLabelClassWeights
    , toLossType
    , toDistanceType
    , toItemColumn
    , toMinSplitLoss
    , toTimeSeriesTimestampColumn
    , toKmeansInitializationColumn
    , toWarmStart
    , toModelURI
    , toL1Regularization

    -- * DataSetList
    , DataSetList
    , dataSetList
    , dslEtag
    , dslNextPageToken
    , dslKind
    , dslDataSets

    -- * SessionInfo
    , SessionInfo
    , sessionInfo
    , siSessionId

    -- * AggregateClassificationMetrics
    , AggregateClassificationMetrics
    , aggregateClassificationMetrics
    , acmLogLoss
    , acmRecall
    , acmPrecision
    , acmThreshold
    , acmF1Score
    , acmAccuracy
    , acmRocAuc

    -- * ModelModelType
    , ModelModelType (..)

    -- * DataSplitResult
    , DataSplitResult
    , dataSplitResult
    , dsrEvaluationTable
    , dsrTrainingTable

    -- * QueryRequest
    , QueryRequest
    , queryRequest
    , qrRequestId
    , qrConnectionProperties
    , qrLocation
    , qrUseQueryCache
    , qrPreserveNulls
    , qrKind
    , qrQueryParameters
    , qrMaximumBytesBilled
    , qrQuery
    , qrParameterMode
    , qrCreateSession
    , qrTimeoutMs
    , qrLabels
    , qrUseLegacySQL
    , qrDryRun
    , qrMaxResults
    , qrDefaultDataSet

    -- * JobsListProjection
    , JobsListProjection (..)

    -- * Argument
    , Argument
    , argument
    , aArgumentKind
    , aMode
    , aName
    , aDataType

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

    -- * CategoryCount
    , CategoryCount
    , categoryCount
    , ccCategory
    , ccCount

    -- * IterationResult
    , IterationResult
    , iterationResult
    , irDurationMs
    , irLearnRate
    , irArimaResult
    , irClusterInfos
    , irEvalLoss
    , irTrainingLoss
    , irIndex

    -- * BinaryClassificationMetrics
    , BinaryClassificationMetrics
    , binaryClassificationMetrics
    , bcmPositiveLabel
    , bcmAggregateClassificationMetrics
    , bcmBinaryConfusionMatrixList
    , bcmNegativeLabel

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsInputBytes
    , jsDestinationURIFileCounts

    -- * QueryRequestLabels
    , QueryRequestLabels
    , queryRequestLabels
    , qrlAddtional

    -- * MultiClassClassificationMetrics
    , MultiClassClassificationMetrics
    , multiClassClassificationMetrics
    , mccmAggregateClassificationMetrics
    , mccmConfusionMatrixList

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * BinaryConfusionMatrix
    , BinaryConfusionMatrix
    , binaryConfusionMatrix
    , bcmPositiveClassThreshold
    , bcmFalsePositives
    , bcmRecall
    , bcmPrecision
    , bcmTrueNegatives
    , bcmF1Score
    , bcmFalseNegatives
    , bcmAccuracy
    , bcmTruePositives

    -- * TrainingOptionsHolidayRegion
    , TrainingOptionsHolidayRegion (..)

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
    , eqsSlotMs
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

    -- * SnapshotDefinition
    , SnapshotDefinition
    , snapshotDefinition
    , sdBaseTableReference
    , sdSnapshotTime

    -- * BiEngineReason
    , BiEngineReason
    , biEngineReason
    , berCode
    , berMessage

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
    , jclCreateDisPosition
    , jclSchemaInlineFormat
    , jclAllowQuotedNewlines
    , jclSourceFormat
    , jclJSONExtension
    , jclUseAvroLogicalTypes
    , jclDecimalTargetTypes
    , jclSchema
    , jclTimePartitioning
    , jclQuote
    , jclMaxBadRecords
    , jclAutodetect
    , jclHivePartitioningOptions
    , jclSourceURIs
    , jclEncoding
    , jclDestinationTableProperties
    , jclDestinationEncryptionConfiguration
    , jclParquetOptions
    , jclFieldDelimiter
    , jclNullMarker

    -- * JobsListStateFilter
    , JobsListStateFilter (..)

    -- * RankingMetrics
    , RankingMetrics
    , rankingMetrics
    , rMeanAveragePrecision
    , rAverageRank
    , rNormalizedDiscountedCumulativeGain
    , rMeanSquaredError

    -- * EvaluationMetrics
    , EvaluationMetrics
    , evaluationMetrics
    , emClusteringMetrics
    , emRegressionMetrics
    , emBinaryClassificationMetrics
    , emMultiClassClassificationMetrics
    , emRankingMetrics
    , emArimaForecastingMetrics

    -- * DataSetReference
    , DataSetReference
    , dataSetReference
    , dsrDataSetId
    , dsrProjectId

    -- * MaterializedViewDefinition
    , MaterializedViewDefinition
    , materializedViewDefinition
    , mvdEnableRefresh
    , mvdRefreshIntervalMs
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

    -- * TrainingOptionsFeedbackType
    , TrainingOptionsFeedbackType (..)

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

    -- * RoutineLanguage
    , RoutineLanguage (..)

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

    -- * ListRoutinesResponse
    , ListRoutinesResponse
    , listRoutinesResponse
    , lrrNextPageToken
    , lrrRoutines

    -- * ArimaModelInfoSeasonalPeriodsItem
    , ArimaModelInfoSeasonalPeriodsItem (..)

    -- * TableRow
    , TableRow
    , tableRow
    , trF

    -- * ScriptStackFrame
    , ScriptStackFrame
    , scriptStackFrame
    , ssfText
    , ssfProcedureId
    , ssfStartLine
    , ssfEndLine
    , ssfStartColumn
    , ssfEndColumn

    -- * Entry
    , Entry
    , entry
    , ePredictedLabel
    , eItemCount

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

    -- * ArimaResult
    , ArimaResult
    , arimaResult
    , arArimaModelInfo
    , arSeasonalPeriods

    -- * ArimaSingleModelForecastingMetrics
    , ArimaSingleModelForecastingMetrics
    , arimaSingleModelForecastingMetrics
    , asmfmHasStepChanges
    , asmfmHasSpikesAndDips
    , asmfmSeasonalPeriods
    , asmfmNonSeasonalOrder
    , asmfmHasDrift
    , asmfmTimeSeriesIds
    , asmfmHasHolidayEffect
    , asmfmTimeSeriesId
    , asmfmArimaFittingMetrics

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

    -- * Model
    , Model
    , model
    , mCreationTime
    , mModelReference
    , mBestTrialId
    , mModelType
    , mEtag
    , mLocation
    , mFriendlyName
    , mLastModifiedTime
    , mEncryptionConfiguration
    , mTrainingRuns
    , mLabels
    , mLabelColumns
    , mExpirationTime
    , mDescription
    , mFeatureColumns

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

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * TableDataInsertAllResponseInsertErrorsItem
    , TableDataInsertAllResponseInsertErrorsItem
    , tableDataInsertAllResponseInsertErrorsItem
    , tdiarieiErrors
    , tdiarieiIndex

    -- * DataSetAccessEntryTarget_typesItem
    , DataSetAccessEntryTarget_typesItem
    , dataSetAccessEntryTarget_typesItem
    , dsaetiTargetType

    -- * JobConfigurationExtract
    , JobConfigurationExtract
    , jobConfigurationExtract
    , jceDestinationFormat
    , jceSourceTable
    , jcePrintHeader
    , jceCompression
    , jceUseAvroLogicalTypes
    , jceDestinationURIs
    , jceDestinationURI
    , jceSourceModel
    , jceFieldDelimiter

    -- * ScriptStatistics
    , ScriptStatistics
    , scriptStatistics
    , ssStackFrames
    , ssEvaluationKind

    -- * DataSetAccessEntry
    , DataSetAccessEntry
    , dataSetAccessEntry
    , dsaeDataSet
    , dsaeTargetTypes

    -- * TransactionInfo
    , TransactionInfo
    , transactionInfo
    , tiTransactionId

    -- * Row
    , Row
    , row
    , rEntries
    , rActualLabel

    -- * TrainingOptionsOptimizationStrategy
    , TrainingOptionsOptimizationStrategy (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * ModelDefinition
    , ModelDefinition
    , modelDefinition
    , mdModelOptions
    , mdTrainingRuns

    -- * ArimaForecastingMetrics
    , ArimaForecastingMetrics
    , arimaForecastingMetrics
    , afmSeasonalPeriods
    , afmNonSeasonalOrder
    , afmHasDrift
    , afmArimaSingleModelForecastingMetrics
    , afmTimeSeriesId
    , afmArimaFittingMetrics

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
    , jcqConnectionProperties
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
    , jcqCreateSession
    , jcqUseLegacySQL
    , jcqDestinationEncryptionConfiguration
    , jcqDefaultDataSet

    -- * TrainingOptionsDataSplitMethod
    , TrainingOptionsDataSplitMethod (..)

    -- * GoogleSheetsOptions
    , GoogleSheetsOptions
    , googleSheetsOptions
    , gsoSkipLeadingRows
    , gsoRange

    -- * ListModelsResponse
    , ListModelsResponse
    , listModelsResponse
    , lmrNextPageToken
    , lmrModels

    -- * StandardSQLDataTypeTypeKind
    , StandardSQLDataTypeTypeKind (..)

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

    -- * TrainingOptionsLearnRateStrategy
    , TrainingOptionsLearnRateStrategy (..)

    -- * RoutineRoutineType
    , RoutineRoutineType (..)

    -- * TableCell
    , TableCell
    , tableCell
    , tcV

    -- * ArimaOrder
    , ArimaOrder
    , arimaOrder
    , aoP
    , aoQ
    , aoD

    -- * JobStatistics2ReservationUsageItem
    , JobStatistics2ReservationUsageItem
    , jobStatistics2ReservationUsageItem
    , jName
    , jSlotMs

    -- * DmlStatistics
    , DmlStatistics
    , dmlStatistics
    , dsDeletedRowCount
    , dsUpdatedRowCount
    , dsInsertedRowCount

    -- * QueryParameterValue
    , QueryParameterValue
    , queryParameterValue
    , qpvStructValues
    , qpvValue
    , qpvArrayValues

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdUserDefinedFunctionResources
    , vdUseExplicitColumnNames
    , vdQuery
    , vdUseLegacySQL

    -- * UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceURI
    , udfrInlineCode

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jModelTrainingExpectedTotalIteration
    , jModelTraining
    , jDdlTargetDataSet
    , jBiEngineStatistics
    , jTotalSlotMs
    , jDdlTargetRoutine
    , jDdlAffectedRowAccessPolicyCount
    , jDdlTargetTable
    , jDdlTargetRowAccessPolicy
    , jEstimatedBytesProcessed
    , jModelTrainingCurrentIteration
    , jSchema
    , jTotalBytesProcessed
    , jBillingTier
    , jTotalBytesProcessedAccuracy
    , jDmlStats
    , jUndeclaredQueryParameters
    , jReferencedTables
    , jReferencedRoutines
    , jStatementType
    , jReservationUsage
    , jNumDmlAffectedRows
    , jTimeline
    , jDdlDestinationTable
    , jQueryPlan
    , jCacheHit
    , jTotalBytesBilled
    , jDdlOperationPerformed
    , jTotalPartitionsProcessed

    -- * ArimaCoefficients
    , ArimaCoefficients
    , arimaCoefficients
    , acInterceptCoefficient
    , acMovingAverageCoefficients
    , acAutoRegressiveCoefficients

    -- * HivePartitioningOptions
    , HivePartitioningOptions
    , hivePartitioningOptions
    , hpoMode
    , hpoRequirePartitionFilter
    , hpoSourceURIPrefix

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmLegacyLocationId

    -- * TableFieldSchemaCategories
    , TableFieldSchemaCategories
    , tableFieldSchemaCategories
    , tfscNames

    -- * TrainingOptionsLossType
    , TrainingOptionsLossType (..)

    -- * JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- * TrainingOptionsLabelClassWeights
    , TrainingOptionsLabelClassWeights
    , trainingOptionsLabelClassWeights
    , tolcwAddtional

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

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * DataSetAccessItem
    , DataSetAccessItem
    , dataSetAccessItem
    , dsaiDataSet
    , dsaiGroupByEmail
    , dsaiDomain
    , dsaiSpecialGroup
    , dsaiRole
    , dsaiIAMMember
    , dsaiView
    , dsaiRoutine
    , dsaiUserByEmail

    -- * TrainingOptionsDistanceType
    , TrainingOptionsDistanceType (..)

    -- * BqmlTrainingRun
    , BqmlTrainingRun
    , bqmlTrainingRun
    , btrState
    , btrStartTime
    , btrIterationResults
    , btrTrainingOptions

    -- * StandardSQLTableType
    , StandardSQLTableType
    , standardSQLTableType
    , ssqlttColumns

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
    , tabSnapshotDefinition
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

    -- * ArimaFittingMetrics
    , ArimaFittingMetrics
    , arimaFittingMetrics
    , afmLogLikelihood
    , afmVariance
    , afmAic

    -- * ParquetOptions
    , ParquetOptions
    , parquetOptions
    , poEnableListInference
    , poEnumAsString

    -- * Routine
    , Routine
    , routine
    , rCreationTime
    , rEtag
    , rDefinitionBody
    , rRoutineReference
    , rArguments
    , rLastModifiedTime
    , rRoutineType
    , rDeterminismLevel
    , rReturnTableType
    , rLanguage
    , rReturnType
    , rImportedLibraries
    , rDescription

    -- * RowAccessPolicy
    , RowAccessPolicy
    , rowAccessPolicy
    , rapCreationTime
    , rapEtag
    , rapRowAccessPolicyReference
    , rapLastModifiedTime
    , rapFilterPredicate

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

    -- * ListRowAccessPoliciesResponse
    , ListRowAccessPoliciesResponse
    , listRowAccessPoliciesResponse
    , lraprNextPageToken
    , lraprRowAccessPolicies

    -- * JobStatistics3
    , JobStatistics3
    , jobStatistics3
    , jsInputFiles
    , jsOutputRows
    , jsOutputBytes
    , jsInputFileBytes
    , jsBadRecords

    -- * ArimaForecastingMetricsSeasonalPeriodsItem
    , ArimaForecastingMetricsSeasonalPeriodsItem (..)

    -- * QueryResponse
    , QueryResponse
    , queryResponse
    , qJobReference
    , qKind
    , qSchema
    , qTotalBytesProcessed
    , qRows
    , qDmlStats
    , qPageToken
    , qSessionInfoTemplate
    , qNumDmlAffectedRows
    , qTotalRows
    , qErrors
    , qJobComplete
    , qCacheHit

    -- * DataSetListDataSetsItemLabels
    , DataSetListDataSetsItemLabels
    , dataSetListDataSetsItemLabels
    , dsldsilAddtional

    -- * ConnectionProperty
    , ConnectionProperty
    , connectionProperty
    , cpValue
    , cpKey

    -- * TrainingRun
    , TrainingRun
    , trainingRun
    , trResults
    , trStartTime
    , trTrainingOptions
    , trDataSplitResult
    , trEvaluationMetrics

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * TableListTablesItemView
    , TableListTablesItemView
    , tableListTablesItemView
    , tltivUseLegacySQL

    -- * TableListTablesItemLabels
    , TableListTablesItemLabels
    , tableListTablesItemLabels
    , tltilAddtional

    -- * ConfusionMatrix
    , ConfusionMatrix
    , confusionMatrix
    , cmConfidenceThreshold
    , cmRows
    ) where

import Network.Google.BigQuery.Types.Product
import Network.Google.BigQuery.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2' of the BigQuery API. This contains the host and root path used as a starting point for constructing service requests.
bigQueryService :: ServiceConfig
bigQueryService
  = defaultService (ServiceId "bigquery:v2")
      "bigquery.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
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
