{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQuery.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BigQuery.Types
  ( -- * Configuration
    bigQueryService,

    -- * OAuth Scopes
    Bigquery'FullControl,
    Bigquery'Insertdata,
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,
    Devstorage'FullControl,
    Devstorage'ReadOnly,
    Devstorage'ReadWrite,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AggregateClassificationMetrics
    AggregateClassificationMetrics (..),
    newAggregateClassificationMetrics,

    -- ** AggregationThresholdPolicy
    AggregationThresholdPolicy (..),
    newAggregationThresholdPolicy,

    -- ** Argument
    Argument (..),
    newArgument,

    -- ** Argument_ArgumentKind
    Argument_ArgumentKind (..),

    -- ** Argument_Mode
    Argument_Mode (..),

    -- ** ArimaCoefficients
    ArimaCoefficients (..),
    newArimaCoefficients,

    -- ** ArimaFittingMetrics
    ArimaFittingMetrics (..),
    newArimaFittingMetrics,

    -- ** ArimaForecastingMetrics
    ArimaForecastingMetrics (..),
    newArimaForecastingMetrics,

    -- ** ArimaForecastingMetrics_SeasonalPeriodsItem
    ArimaForecastingMetrics_SeasonalPeriodsItem (..),

    -- ** ArimaModelInfo
    ArimaModelInfo (..),
    newArimaModelInfo,

    -- ** ArimaModelInfo_SeasonalPeriodsItem
    ArimaModelInfo_SeasonalPeriodsItem (..),

    -- ** ArimaOrder
    ArimaOrder (..),
    newArimaOrder,

    -- ** ArimaResult
    ArimaResult (..),
    newArimaResult,

    -- ** ArimaResult_SeasonalPeriodsItem
    ArimaResult_SeasonalPeriodsItem (..),

    -- ** ArimaSingleModelForecastingMetrics
    ArimaSingleModelForecastingMetrics (..),
    newArimaSingleModelForecastingMetrics,

    -- ** ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
    ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** AvroOptions
    AvroOptions (..),
    newAvroOptions,

    -- ** BatchDeleteRowAccessPoliciesRequest
    BatchDeleteRowAccessPoliciesRequest (..),
    newBatchDeleteRowAccessPoliciesRequest,

    -- ** BiEngineReason
    BiEngineReason (..),
    newBiEngineReason,

    -- ** BiEngineReason_Code
    BiEngineReason_Code (..),

    -- ** BiEngineStatistics
    BiEngineStatistics (..),
    newBiEngineStatistics,

    -- ** BiEngineStatistics_AccelerationMode
    BiEngineStatistics_AccelerationMode (..),

    -- ** BiEngineStatistics_BiEngineMode
    BiEngineStatistics_BiEngineMode (..),

    -- ** BigLakeConfiguration
    BigLakeConfiguration (..),
    newBigLakeConfiguration,

    -- ** BigLakeConfiguration_FileFormat
    BigLakeConfiguration_FileFormat (..),

    -- ** BigLakeConfiguration_TableFormat
    BigLakeConfiguration_TableFormat (..),

    -- ** BigQueryModelTraining
    BigQueryModelTraining (..),
    newBigQueryModelTraining,

    -- ** BigtableColumn
    BigtableColumn (..),
    newBigtableColumn,

    -- ** BigtableColumnFamily
    BigtableColumnFamily (..),
    newBigtableColumnFamily,

    -- ** BigtableOptions
    BigtableOptions (..),
    newBigtableOptions,

    -- ** BinaryClassificationMetrics
    BinaryClassificationMetrics (..),
    newBinaryClassificationMetrics,

    -- ** BinaryConfusionMatrix
    BinaryConfusionMatrix (..),
    newBinaryConfusionMatrix,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** BqmlIterationResult
    BqmlIterationResult (..),
    newBqmlIterationResult,

    -- ** BqmlTrainingRun
    BqmlTrainingRun (..),
    newBqmlTrainingRun,

    -- ** BqmlTrainingRun_TrainingOptions
    BqmlTrainingRun_TrainingOptions (..),
    newBqmlTrainingRun_TrainingOptions,

    -- ** CategoricalValue
    CategoricalValue (..),
    newCategoricalValue,

    -- ** CategoryCount
    CategoryCount (..),
    newCategoryCount,

    -- ** CloneDefinition
    CloneDefinition (..),
    newCloneDefinition,

    -- ** Cluster
    Cluster (..),
    newCluster,

    -- ** ClusterInfo
    ClusterInfo (..),
    newClusterInfo,

    -- ** Clustering
    Clustering (..),
    newClustering,

    -- ** ClusteringMetrics
    ClusteringMetrics (..),
    newClusteringMetrics,

    -- ** ConfusionMatrix
    ConfusionMatrix (..),
    newConfusionMatrix,

    -- ** ConnectionProperty
    ConnectionProperty (..),
    newConnectionProperty,

    -- ** CsvOptions
    CsvOptions (..),
    newCsvOptions,

    -- ** DataFormatOptions
    DataFormatOptions (..),
    newDataFormatOptions,

    -- ** DataMaskingStatistics
    DataMaskingStatistics (..),
    newDataMaskingStatistics,

    -- ** DataPolicyOption
    DataPolicyOption (..),
    newDataPolicyOption,

    -- ** DataSplitResult
    DataSplitResult (..),
    newDataSplitResult,

    -- ** Dataset
    Dataset (..),
    newDataset,

    -- ** Dataset_AccessItem
    Dataset_AccessItem (..),
    newDataset_AccessItem,

    -- ** Dataset_DefaultRoundingMode
    Dataset_DefaultRoundingMode (..),

    -- ** Dataset_Labels
    Dataset_Labels (..),
    newDataset_Labels,

    -- ** Dataset_ResourceTags
    Dataset_ResourceTags (..),
    newDataset_ResourceTags,

    -- ** Dataset_StorageBillingModel
    Dataset_StorageBillingModel (..),

    -- ** Dataset_TagsItem
    Dataset_TagsItem (..),
    newDataset_TagsItem,

    -- ** DatasetAccessEntry
    DatasetAccessEntry (..),
    newDatasetAccessEntry,

    -- ** DatasetAccessEntry_TargetTypesItem
    DatasetAccessEntry_TargetTypesItem (..),

    -- ** DatasetList
    DatasetList (..),
    newDatasetList,

    -- ** DatasetList_DatasetsItem
    DatasetList_DatasetsItem (..),
    newDatasetList_DatasetsItem,

    -- ** DatasetList_DatasetsItem_Labels
    DatasetList_DatasetsItem_Labels (..),
    newDatasetList_DatasetsItem_Labels,

    -- ** DatasetReference
    DatasetReference (..),
    newDatasetReference,

    -- ** DestinationTableProperties
    DestinationTableProperties (..),
    newDestinationTableProperties,

    -- ** DestinationTableProperties_Labels
    DestinationTableProperties_Labels (..),
    newDestinationTableProperties_Labels,

    -- ** DifferentialPrivacyPolicy
    DifferentialPrivacyPolicy (..),
    newDifferentialPrivacyPolicy,

    -- ** DimensionalityReductionMetrics
    DimensionalityReductionMetrics (..),
    newDimensionalityReductionMetrics,

    -- ** DmlStatistics
    DmlStatistics (..),
    newDmlStatistics,

    -- ** DoubleCandidates
    DoubleCandidates (..),
    newDoubleCandidates,

    -- ** DoubleHparamSearchSpace
    DoubleHparamSearchSpace (..),
    newDoubleHparamSearchSpace,

    -- ** DoubleRange
    DoubleRange (..),
    newDoubleRange,

    -- ** EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,

    -- ** Entry
    Entry (..),
    newEntry,

    -- ** ErrorProto
    ErrorProto (..),
    newErrorProto,

    -- ** EvaluationMetrics
    EvaluationMetrics (..),
    newEvaluationMetrics,

    -- ** ExplainQueryStage
    ExplainQueryStage (..),
    newExplainQueryStage,

    -- ** ExplainQueryStage_ComputeMode
    ExplainQueryStage_ComputeMode (..),

    -- ** ExplainQueryStep
    ExplainQueryStep (..),
    newExplainQueryStep,

    -- ** Explanation
    Explanation (..),
    newExplanation,

    -- ** ExportDataStatistics
    ExportDataStatistics (..),
    newExportDataStatistics,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** ExternalCatalogDatasetOptions
    ExternalCatalogDatasetOptions (..),
    newExternalCatalogDatasetOptions,

    -- ** ExternalCatalogDatasetOptions_Parameters
    ExternalCatalogDatasetOptions_Parameters (..),
    newExternalCatalogDatasetOptions_Parameters,

    -- ** ExternalCatalogTableOptions
    ExternalCatalogTableOptions (..),
    newExternalCatalogTableOptions,

    -- ** ExternalCatalogTableOptions_Parameters
    ExternalCatalogTableOptions_Parameters (..),
    newExternalCatalogTableOptions_Parameters,

    -- ** ExternalDataConfiguration
    ExternalDataConfiguration (..),
    newExternalDataConfiguration,

    -- ** ExternalDataConfiguration_DecimalTargetTypesItem
    ExternalDataConfiguration_DecimalTargetTypesItem (..),

    -- ** ExternalDataConfiguration_FileSetSpecType
    ExternalDataConfiguration_FileSetSpecType (..),

    -- ** ExternalDataConfiguration_JsonExtension
    ExternalDataConfiguration_JsonExtension (..),

    -- ** ExternalDataConfiguration_MetadataCacheMode
    ExternalDataConfiguration_MetadataCacheMode (..),

    -- ** ExternalDataConfiguration_ObjectMetadata
    ExternalDataConfiguration_ObjectMetadata (..),

    -- ** ExternalDatasetReference
    ExternalDatasetReference (..),
    newExternalDatasetReference,

    -- ** ExternalServiceCost
    ExternalServiceCost (..),
    newExternalServiceCost,

    -- ** FeatureValue
    FeatureValue (..),
    newFeatureValue,

    -- ** ForeignTypeInfo
    ForeignTypeInfo (..),
    newForeignTypeInfo,

    -- ** ForeignTypeInfo_TypeSystem
    ForeignTypeInfo_TypeSystem (..),

    -- ** ForeignViewDefinition
    ForeignViewDefinition (..),
    newForeignViewDefinition,

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** GetQueryResultsResponse
    GetQueryResultsResponse (..),
    newGetQueryResultsResponse,

    -- ** GetServiceAccountResponse
    GetServiceAccountResponse (..),
    newGetServiceAccountResponse,

    -- ** GlobalExplanation
    GlobalExplanation (..),
    newGlobalExplanation,

    -- ** GoogleSheetsOptions
    GoogleSheetsOptions (..),
    newGoogleSheetsOptions,

    -- ** HighCardinalityJoin
    HighCardinalityJoin (..),
    newHighCardinalityJoin,

    -- ** HivePartitioningOptions
    HivePartitioningOptions (..),
    newHivePartitioningOptions,

    -- ** HparamSearchSpaces
    HparamSearchSpaces (..),
    newHparamSearchSpaces,

    -- ** HparamTuningTrial
    HparamTuningTrial (..),
    newHparamTuningTrial,

    -- ** HparamTuningTrial_Status
    HparamTuningTrial_Status (..),

    -- ** IndexUnusedReason
    IndexUnusedReason (..),
    newIndexUnusedReason,

    -- ** IndexUnusedReason_Code
    IndexUnusedReason_Code (..),

    -- ** InputDataChange
    InputDataChange (..),
    newInputDataChange,

    -- ** IntArray
    IntArray (..),
    newIntArray,

    -- ** IntArrayHparamSearchSpace
    IntArrayHparamSearchSpace (..),
    newIntArrayHparamSearchSpace,

    -- ** IntCandidates
    IntCandidates (..),
    newIntCandidates,

    -- ** IntHparamSearchSpace
    IntHparamSearchSpace (..),
    newIntHparamSearchSpace,

    -- ** IntRange
    IntRange (..),
    newIntRange,

    -- ** IterationResult
    IterationResult (..),
    newIterationResult,

    -- ** Job
    Job (..),
    newJob,

    -- ** JobCancelResponse
    JobCancelResponse (..),
    newJobCancelResponse,

    -- ** JobConfiguration
    JobConfiguration (..),
    newJobConfiguration,

    -- ** JobConfiguration_Labels
    JobConfiguration_Labels (..),
    newJobConfiguration_Labels,

    -- ** JobConfigurationExtract
    JobConfigurationExtract (..),
    newJobConfigurationExtract,

    -- ** JobConfigurationLoad
    JobConfigurationLoad (..),
    newJobConfigurationLoad,

    -- ** JobConfigurationLoad_ColumnNameCharacterMap
    JobConfigurationLoad_ColumnNameCharacterMap (..),

    -- ** JobConfigurationLoad_DecimalTargetTypesItem
    JobConfigurationLoad_DecimalTargetTypesItem (..),

    -- ** JobConfigurationLoad_FileSetSpecType
    JobConfigurationLoad_FileSetSpecType (..),

    -- ** JobConfigurationLoad_JsonExtension
    JobConfigurationLoad_JsonExtension (..),

    -- ** JobConfigurationQuery
    JobConfigurationQuery (..),
    newJobConfigurationQuery,

    -- ** JobConfigurationQuery_TableDefinitions
    JobConfigurationQuery_TableDefinitions (..),
    newJobConfigurationQuery_TableDefinitions,

    -- ** JobConfigurationTableCopy
    JobConfigurationTableCopy (..),
    newJobConfigurationTableCopy,

    -- ** JobConfigurationTableCopy_OperationType
    JobConfigurationTableCopy_OperationType (..),

    -- ** JobCreationReason
    JobCreationReason (..),
    newJobCreationReason,

    -- ** JobCreationReason_Code
    JobCreationReason_Code (..),

    -- ** JobList
    JobList (..),
    newJobList,

    -- ** JobList_JobsItem
    JobList_JobsItem (..),
    newJobList_JobsItem,

    -- ** JobReference
    JobReference (..),
    newJobReference,

    -- ** JobStatistics
    JobStatistics (..),
    newJobStatistics,

    -- ** JobStatistics_Edition
    JobStatistics_Edition (..),

    -- ** JobStatistics_ReservationUsageItem
    JobStatistics_ReservationUsageItem (..),
    newJobStatistics_ReservationUsageItem,

    -- ** JobStatistics2
    JobStatistics2 (..),
    newJobStatistics2,

    -- ** JobStatistics2_ReservationUsageItem
    JobStatistics2_ReservationUsageItem (..),
    newJobStatistics2_ReservationUsageItem,

    -- ** JobStatistics3
    JobStatistics3 (..),
    newJobStatistics3,

    -- ** JobStatistics4
    JobStatistics4 (..),
    newJobStatistics4,

    -- ** JobStatistics5
    JobStatistics5 (..),
    newJobStatistics5,

    -- ** JobStatus
    JobStatus (..),
    newJobStatus,

    -- ** JoinRestrictionPolicy
    JoinRestrictionPolicy (..),
    newJoinRestrictionPolicy,

    -- ** JoinRestrictionPolicy_JoinCondition
    JoinRestrictionPolicy_JoinCondition (..),

    -- ** JsonObject
    JsonObject (..),
    newJsonObject,

    -- ** JsonOptions
    JsonOptions (..),
    newJsonOptions,

    -- ** LinkedDatasetMetadata
    LinkedDatasetMetadata (..),
    newLinkedDatasetMetadata,

    -- ** LinkedDatasetMetadata_LinkState
    LinkedDatasetMetadata_LinkState (..),

    -- ** LinkedDatasetSource
    LinkedDatasetSource (..),
    newLinkedDatasetSource,

    -- ** ListModelsResponse
    ListModelsResponse (..),
    newListModelsResponse,

    -- ** ListRoutinesResponse
    ListRoutinesResponse (..),
    newListRoutinesResponse,

    -- ** ListRowAccessPoliciesResponse
    ListRowAccessPoliciesResponse (..),
    newListRowAccessPoliciesResponse,

    -- ** LoadQueryStatistics
    LoadQueryStatistics (..),
    newLoadQueryStatistics,

    -- ** LocationMetadata
    LocationMetadata (..),
    newLocationMetadata,

    -- ** MaterializedView
    MaterializedView (..),
    newMaterializedView,

    -- ** MaterializedView_RejectedReason
    MaterializedView_RejectedReason (..),

    -- ** MaterializedViewDefinition
    MaterializedViewDefinition (..),
    newMaterializedViewDefinition,

    -- ** MaterializedViewStatistics
    MaterializedViewStatistics (..),
    newMaterializedViewStatistics,

    -- ** MaterializedViewStatus
    MaterializedViewStatus (..),
    newMaterializedViewStatus,

    -- ** MetadataCacheStatistics
    MetadataCacheStatistics (..),
    newMetadataCacheStatistics,

    -- ** MlStatistics
    MlStatistics (..),
    newMlStatistics,

    -- ** MlStatistics_ModelType
    MlStatistics_ModelType (..),

    -- ** MlStatistics_TrainingType
    MlStatistics_TrainingType (..),

    -- ** Model
    Model (..),
    newModel,

    -- ** Model_Labels
    Model_Labels (..),
    newModel_Labels,

    -- ** Model_ModelType
    Model_ModelType (..),

    -- ** ModelDefinition
    ModelDefinition (..),
    newModelDefinition,

    -- ** ModelDefinition_ModelOptions
    ModelDefinition_ModelOptions (..),
    newModelDefinition_ModelOptions,

    -- ** ModelExtractOptions
    ModelExtractOptions (..),
    newModelExtractOptions,

    -- ** ModelReference
    ModelReference (..),
    newModelReference,

    -- ** MultiClassClassificationMetrics
    MultiClassClassificationMetrics (..),
    newMultiClassClassificationMetrics,

    -- ** ParquetOptions
    ParquetOptions (..),
    newParquetOptions,

    -- ** ParquetOptions_MapTargetType
    ParquetOptions_MapTargetType (..),

    -- ** PartitionSkew
    PartitionSkew (..),
    newPartitionSkew,

    -- ** PartitionedColumn
    PartitionedColumn (..),
    newPartitionedColumn,

    -- ** PartitioningDefinition
    PartitioningDefinition (..),
    newPartitioningDefinition,

    -- ** PerformanceInsights
    PerformanceInsights (..),
    newPerformanceInsights,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PrincipalComponentInfo
    PrincipalComponentInfo (..),
    newPrincipalComponentInfo,

    -- ** PrivacyPolicy
    PrivacyPolicy (..),
    newPrivacyPolicy,

    -- ** ProjectList
    ProjectList (..),
    newProjectList,

    -- ** ProjectList_ProjectsItem
    ProjectList_ProjectsItem (..),
    newProjectList_ProjectsItem,

    -- ** ProjectReference
    ProjectReference (..),
    newProjectReference,

    -- ** QueryInfo
    QueryInfo (..),
    newQueryInfo,

    -- ** QueryInfo_OptimizationDetails
    QueryInfo_OptimizationDetails (..),
    newQueryInfo_OptimizationDetails,

    -- ** QueryParameter
    QueryParameter (..),
    newQueryParameter,

    -- ** QueryParameterType
    QueryParameterType (..),
    newQueryParameterType,

    -- ** QueryParameterType_StructTypesItem
    QueryParameterType_StructTypesItem (..),
    newQueryParameterType_StructTypesItem,

    -- ** QueryParameterValue
    QueryParameterValue (..),
    newQueryParameterValue,

    -- ** QueryParameterValue_StructValues
    QueryParameterValue_StructValues (..),
    newQueryParameterValue_StructValues,

    -- ** QueryRequest
    QueryRequest (..),
    newQueryRequest,

    -- ** QueryRequest_JobCreationMode
    QueryRequest_JobCreationMode (..),

    -- ** QueryRequest_Labels
    QueryRequest_Labels (..),
    newQueryRequest_Labels,

    -- ** QueryResponse
    QueryResponse (..),
    newQueryResponse,

    -- ** QueryTimelineSample
    QueryTimelineSample (..),
    newQueryTimelineSample,

    -- ** RangePartitioning
    RangePartitioning (..),
    newRangePartitioning,

    -- ** RangePartitioning_Range
    RangePartitioning_Range (..),
    newRangePartitioning_Range,

    -- ** RangeValue
    RangeValue (..),
    newRangeValue,

    -- ** RankingMetrics
    RankingMetrics (..),
    newRankingMetrics,

    -- ** RegressionMetrics
    RegressionMetrics (..),
    newRegressionMetrics,

    -- ** RemoteFunctionOptions
    RemoteFunctionOptions (..),
    newRemoteFunctionOptions,

    -- ** RemoteFunctionOptions_UserDefinedContext
    RemoteFunctionOptions_UserDefinedContext (..),
    newRemoteFunctionOptions_UserDefinedContext,

    -- ** RemoteModelInfo
    RemoteModelInfo (..),
    newRemoteModelInfo,

    -- ** RemoteModelInfo_RemoteServiceType
    RemoteModelInfo_RemoteServiceType (..),

    -- ** RestrictionConfig
    RestrictionConfig (..),
    newRestrictionConfig,

    -- ** RestrictionConfig_Type
    RestrictionConfig_Type (..),

    -- ** Routine
    Routine (..),
    newRoutine,

    -- ** Routine_DataGovernanceType
    Routine_DataGovernanceType (..),

    -- ** Routine_DeterminismLevel
    Routine_DeterminismLevel (..),

    -- ** Routine_Language
    Routine_Language (..),

    -- ** Routine_RoutineType
    Routine_RoutineType (..),

    -- ** Routine_SecurityMode
    Routine_SecurityMode (..),

    -- ** RoutineReference
    RoutineReference (..),
    newRoutineReference,

    -- ** Row
    Row (..),
    newRow,

    -- ** RowAccessPolicy
    RowAccessPolicy (..),
    newRowAccessPolicy,

    -- ** RowAccessPolicyReference
    RowAccessPolicyReference (..),
    newRowAccessPolicyReference,

    -- ** RowLevelSecurityStatistics
    RowLevelSecurityStatistics (..),
    newRowLevelSecurityStatistics,

    -- ** ScriptOptions
    ScriptOptions (..),
    newScriptOptions,

    -- ** ScriptOptions_KeyResultStatement
    ScriptOptions_KeyResultStatement (..),

    -- ** ScriptStackFrame
    ScriptStackFrame (..),
    newScriptStackFrame,

    -- ** ScriptStatistics
    ScriptStatistics (..),
    newScriptStatistics,

    -- ** ScriptStatistics_EvaluationKind
    ScriptStatistics_EvaluationKind (..),

    -- ** SearchStatistics
    SearchStatistics (..),
    newSearchStatistics,

    -- ** SearchStatistics_IndexUsageMode
    SearchStatistics_IndexUsageMode (..),

    -- ** SerDeInfo
    SerDeInfo (..),
    newSerDeInfo,

    -- ** SerDeInfo_Parameters
    SerDeInfo_Parameters (..),
    newSerDeInfo_Parameters,

    -- ** SessionInfo
    SessionInfo (..),
    newSessionInfo,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** SkewSource
    SkewSource (..),
    newSkewSource,

    -- ** SnapshotDefinition
    SnapshotDefinition (..),
    newSnapshotDefinition,

    -- ** SparkLoggingInfo
    SparkLoggingInfo (..),
    newSparkLoggingInfo,

    -- ** SparkOptions
    SparkOptions (..),
    newSparkOptions,

    -- ** SparkOptions_Properties
    SparkOptions_Properties (..),
    newSparkOptions_Properties,

    -- ** SparkStatistics
    SparkStatistics (..),
    newSparkStatistics,

    -- ** SparkStatistics_Endpoints
    SparkStatistics_Endpoints (..),
    newSparkStatistics_Endpoints,

    -- ** StagePerformanceChangeInsight
    StagePerformanceChangeInsight (..),
    newStagePerformanceChangeInsight,

    -- ** StagePerformanceStandaloneInsight
    StagePerformanceStandaloneInsight (..),
    newStagePerformanceStandaloneInsight,

    -- ** StandardSqlDataType
    StandardSqlDataType (..),
    newStandardSqlDataType,

    -- ** StandardSqlDataType_TypeKind
    StandardSqlDataType_TypeKind (..),

    -- ** StandardSqlField
    StandardSqlField (..),
    newStandardSqlField,

    -- ** StandardSqlStructType
    StandardSqlStructType (..),
    newStandardSqlStructType,

    -- ** StandardSqlTableType
    StandardSqlTableType (..),
    newStandardSqlTableType,

    -- ** StorageDescriptor
    StorageDescriptor (..),
    newStorageDescriptor,

    -- ** StoredColumnsUnusedReason
    StoredColumnsUnusedReason (..),
    newStoredColumnsUnusedReason,

    -- ** StoredColumnsUnusedReason_Code
    StoredColumnsUnusedReason_Code (..),

    -- ** StoredColumnsUsage
    StoredColumnsUsage (..),
    newStoredColumnsUsage,

    -- ** Streamingbuffer
    Streamingbuffer (..),
    newStreamingbuffer,

    -- ** StringHparamSearchSpace
    StringHparamSearchSpace (..),
    newStringHparamSearchSpace,

    -- ** SystemVariables
    SystemVariables (..),
    newSystemVariables,

    -- ** SystemVariables_Types
    SystemVariables_Types (..),
    newSystemVariables_Types,

    -- ** SystemVariables_Values
    SystemVariables_Values (..),
    newSystemVariables_Values,

    -- ** Table
    Table (..),
    newTable,

    -- ** Table_DefaultRoundingMode
    Table_DefaultRoundingMode (..),

    -- ** Table_Labels
    Table_Labels (..),
    newTable_Labels,

    -- ** Table_ManagedTableType
    Table_ManagedTableType (..),

    -- ** Table_ResourceTags
    Table_ResourceTags (..),
    newTable_ResourceTags,

    -- ** TableCell
    TableCell (..),
    newTableCell,

    -- ** TableConstraints
    TableConstraints (..),
    newTableConstraints,

    -- ** TableConstraints_ForeignKeysItem
    TableConstraints_ForeignKeysItem (..),
    newTableConstraints_ForeignKeysItem,

    -- ** TableConstraints_ForeignKeysItem_ColumnReferencesItem
    TableConstraints_ForeignKeysItem_ColumnReferencesItem (..),
    newTableConstraints_ForeignKeysItem_ColumnReferencesItem,

    -- ** TableConstraints_ForeignKeysItem_ReferencedTable
    TableConstraints_ForeignKeysItem_ReferencedTable (..),
    newTableConstraints_ForeignKeysItem_ReferencedTable,

    -- ** TableConstraints_PrimaryKey
    TableConstraints_PrimaryKey (..),
    newTableConstraints_PrimaryKey,

    -- ** TableDataInsertAllRequest
    TableDataInsertAllRequest (..),
    newTableDataInsertAllRequest,

    -- ** TableDataInsertAllRequest_RowsItem
    TableDataInsertAllRequest_RowsItem (..),
    newTableDataInsertAllRequest_RowsItem,

    -- ** TableDataInsertAllResponse
    TableDataInsertAllResponse (..),
    newTableDataInsertAllResponse,

    -- ** TableDataInsertAllResponse_InsertErrorsItem
    TableDataInsertAllResponse_InsertErrorsItem (..),
    newTableDataInsertAllResponse_InsertErrorsItem,

    -- ** TableDataList
    TableDataList (..),
    newTableDataList,

    -- ** TableFieldSchema
    TableFieldSchema (..),
    newTableFieldSchema,

    -- ** TableFieldSchema_Categories
    TableFieldSchema_Categories (..),
    newTableFieldSchema_Categories,

    -- ** TableFieldSchema_PolicyTags
    TableFieldSchema_PolicyTags (..),
    newTableFieldSchema_PolicyTags,

    -- ** TableFieldSchema_RangeElementType
    TableFieldSchema_RangeElementType (..),
    newTableFieldSchema_RangeElementType,

    -- ** TableFieldSchema_RoundingMode
    TableFieldSchema_RoundingMode (..),

    -- ** TableList
    TableList (..),
    newTableList,

    -- ** TableList_TablesItem
    TableList_TablesItem (..),
    newTableList_TablesItem,

    -- ** TableList_TablesItem_Labels
    TableList_TablesItem_Labels (..),
    newTableList_TablesItem_Labels,

    -- ** TableList_TablesItem_View
    TableList_TablesItem_View (..),
    newTableList_TablesItem_View,

    -- ** TableMetadataCacheUsage
    TableMetadataCacheUsage (..),
    newTableMetadataCacheUsage,

    -- ** TableMetadataCacheUsage_UnusedReason
    TableMetadataCacheUsage_UnusedReason (..),

    -- ** TableReference
    TableReference (..),
    newTableReference,

    -- ** TableReplicationInfo
    TableReplicationInfo (..),
    newTableReplicationInfo,

    -- ** TableReplicationInfo_ReplicationStatus
    TableReplicationInfo_ReplicationStatus (..),

    -- ** TableRow
    TableRow (..),
    newTableRow,

    -- ** TableSchema
    TableSchema (..),
    newTableSchema,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TimePartitioning
    TimePartitioning (..),
    newTimePartitioning,

    -- ** TrainingOptions
    TrainingOptions (..),
    newTrainingOptions,

    -- ** TrainingOptions_BoosterType
    TrainingOptions_BoosterType (..),

    -- ** TrainingOptions_CategoryEncodingMethod
    TrainingOptions_CategoryEncodingMethod (..),

    -- ** TrainingOptions_ColorSpace
    TrainingOptions_ColorSpace (..),

    -- ** TrainingOptions_DartNormalizeType
    TrainingOptions_DartNormalizeType (..),

    -- ** TrainingOptions_DataFrequency
    TrainingOptions_DataFrequency (..),

    -- ** TrainingOptions_DataSplitMethod
    TrainingOptions_DataSplitMethod (..),

    -- ** TrainingOptions_DistanceType
    TrainingOptions_DistanceType (..),

    -- ** TrainingOptions_FeedbackType
    TrainingOptions_FeedbackType (..),

    -- ** TrainingOptions_HolidayRegion
    TrainingOptions_HolidayRegion (..),

    -- ** TrainingOptions_HolidayRegionsItem
    TrainingOptions_HolidayRegionsItem (..),

    -- ** TrainingOptions_HparamTuningObjectivesItem
    TrainingOptions_HparamTuningObjectivesItem (..),

    -- ** TrainingOptions_KmeansInitializationMethod
    TrainingOptions_KmeansInitializationMethod (..),

    -- ** TrainingOptions_LabelClassWeights
    TrainingOptions_LabelClassWeights (..),
    newTrainingOptions_LabelClassWeights,

    -- ** TrainingOptions_LearnRateStrategy
    TrainingOptions_LearnRateStrategy (..),

    -- ** TrainingOptions_LossType
    TrainingOptions_LossType (..),

    -- ** TrainingOptions_ModelRegistry
    TrainingOptions_ModelRegistry (..),

    -- ** TrainingOptions_OptimizationStrategy
    TrainingOptions_OptimizationStrategy (..),

    -- ** TrainingOptions_PcaSolver
    TrainingOptions_PcaSolver (..),

    -- ** TrainingOptions_TreeMethod
    TrainingOptions_TreeMethod (..),

    -- ** TrainingRun
    TrainingRun (..),
    newTrainingRun,

    -- ** TransactionInfo
    TransactionInfo (..),
    newTransactionInfo,

    -- ** TransformColumn
    TransformColumn (..),
    newTransformColumn,

    -- ** UndeleteDatasetRequest
    UndeleteDatasetRequest (..),
    newUndeleteDatasetRequest,

    -- ** UserDefinedFunctionResource
    UserDefinedFunctionResource (..),
    newUserDefinedFunctionResource,

    -- ** VectorSearchStatistics
    VectorSearchStatistics (..),
    newVectorSearchStatistics,

    -- ** VectorSearchStatistics_IndexUsageMode
    VectorSearchStatistics_IndexUsageMode (..),

    -- ** ViewDefinition
    ViewDefinition (..),
    newViewDefinition,

    -- ** DatasetsGetDatasetView
    DatasetsGetDatasetView (..),

    -- ** JobsListProjection
    JobsListProjection (..),

    -- ** JobsListStateFilter
    JobsListStateFilter (..),

    -- ** TablesGetView
    TablesGetView (..),
  )
where

import Gogol.BigQuery.Internal.Product
import Gogol.BigQuery.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the BigQuery API. This contains the host and root path used as a starting point for constructing service requests.
bigQueryService :: Core.ServiceConfig
bigQueryService =
  Core.defaultService
    (Core.ServiceId "bigquery:v2")
    "bigquery.googleapis.com"

-- | View and manage your data in Google BigQuery and see the email address for your Google Account
type Bigquery'FullControl =
  "https://www.googleapis.com/auth/bigquery"

-- | Insert data into Google BigQuery
type Bigquery'Insertdata =
  "https://www.googleapis.com/auth/bigquery.insertdata"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | View your data across Google Cloud services and see the email address of your Google Account
type CloudPlatform'ReadOnly =
  "https://www.googleapis.com/auth/cloud-platform.read-only"

-- | Manage your data and permissions in Cloud Storage and see the email address for your Google Account
type Devstorage'FullControl =
  "https://www.googleapis.com/auth/devstorage.full_control"

-- | View your data in Google Cloud Storage
type Devstorage'ReadOnly =
  "https://www.googleapis.com/auth/devstorage.read_only"

-- | Manage your data in Cloud Storage and see the email address of your Google Account
type Devstorage'ReadWrite =
  "https://www.googleapis.com/auth/devstorage.read_write"
