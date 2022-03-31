{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A data platform for customers to create, manage, share and query data.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference>
module Gogol.BigQuery
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

    -- * Resources

    -- ** bigquery.datasets.delete
    BigQueryDatasetsDeleteResource,
    newBigQueryDatasetsDelete,
    BigQueryDatasetsDelete,

    -- ** bigquery.datasets.get
    BigQueryDatasetsGetResource,
    newBigQueryDatasetsGet,
    BigQueryDatasetsGet,

    -- ** bigquery.datasets.insert
    BigQueryDatasetsInsertResource,
    newBigQueryDatasetsInsert,
    BigQueryDatasetsInsert,

    -- ** bigquery.datasets.list
    BigQueryDatasetsListResource,
    newBigQueryDatasetsList,
    BigQueryDatasetsList,

    -- ** bigquery.datasets.patch
    BigQueryDatasetsPatchResource,
    newBigQueryDatasetsPatch,
    BigQueryDatasetsPatch,

    -- ** bigquery.datasets.update
    BigQueryDatasetsUpdateResource,
    newBigQueryDatasetsUpdate,
    BigQueryDatasetsUpdate,

    -- ** bigquery.jobs.cancel
    BigQueryJobsCancelResource,
    newBigQueryJobsCancel,
    BigQueryJobsCancel,

    -- ** bigquery.jobs.delete
    BigQueryJobsDeleteResource,
    newBigQueryJobsDelete,
    BigQueryJobsDelete,

    -- ** bigquery.jobs.get
    BigQueryJobsGetResource,
    newBigQueryJobsGet,
    BigQueryJobsGet,

    -- ** bigquery.jobs.getQueryResults
    BigQueryJobsGetQueryResultsResource,
    newBigQueryJobsGetQueryResults,
    BigQueryJobsGetQueryResults,

    -- ** bigquery.jobs.insert
    BigQueryJobsInsertResource,
    newBigQueryJobsInsert,
    BigQueryJobsInsert,

    -- ** bigquery.jobs.list
    BigQueryJobsListResource,
    newBigQueryJobsList,
    BigQueryJobsList,

    -- ** bigquery.jobs.query
    BigQueryJobsQueryResource,
    newBigQueryJobsQuery,
    BigQueryJobsQuery,

    -- ** bigquery.models.delete
    BigQueryModelsDeleteResource,
    newBigQueryModelsDelete,
    BigQueryModelsDelete,

    -- ** bigquery.models.get
    BigQueryModelsGetResource,
    newBigQueryModelsGet,
    BigQueryModelsGet,

    -- ** bigquery.models.list
    BigQueryModelsListResource,
    newBigQueryModelsList,
    BigQueryModelsList,

    -- ** bigquery.models.patch
    BigQueryModelsPatchResource,
    newBigQueryModelsPatch,
    BigQueryModelsPatch,

    -- ** bigquery.projects.getServiceAccount
    BigQueryProjectsGetServiceAccountResource,
    newBigQueryProjectsGetServiceAccount,
    BigQueryProjectsGetServiceAccount,

    -- ** bigquery.projects.list
    BigQueryProjectsListResource,
    newBigQueryProjectsList,
    BigQueryProjectsList,

    -- ** bigquery.routines.delete
    BigQueryRoutinesDeleteResource,
    newBigQueryRoutinesDelete,
    BigQueryRoutinesDelete,

    -- ** bigquery.routines.get
    BigQueryRoutinesGetResource,
    newBigQueryRoutinesGet,
    BigQueryRoutinesGet,

    -- ** bigquery.routines.insert
    BigQueryRoutinesInsertResource,
    newBigQueryRoutinesInsert,
    BigQueryRoutinesInsert,

    -- ** bigquery.routines.list
    BigQueryRoutinesListResource,
    newBigQueryRoutinesList,
    BigQueryRoutinesList,

    -- ** bigquery.routines.update
    BigQueryRoutinesUpdateResource,
    newBigQueryRoutinesUpdate,
    BigQueryRoutinesUpdate,

    -- ** bigquery.rowAccessPolicies.getIamPolicy
    BigQueryRowAccessPoliciesGetIamPolicyResource,
    newBigQueryRowAccessPoliciesGetIamPolicy,
    BigQueryRowAccessPoliciesGetIamPolicy,

    -- ** bigquery.rowAccessPolicies.list
    BigQueryRowAccessPoliciesListResource,
    newBigQueryRowAccessPoliciesList,
    BigQueryRowAccessPoliciesList,

    -- ** bigquery.rowAccessPolicies.setIamPolicy
    BigQueryRowAccessPoliciesSetIamPolicyResource,
    newBigQueryRowAccessPoliciesSetIamPolicy,
    BigQueryRowAccessPoliciesSetIamPolicy,

    -- ** bigquery.rowAccessPolicies.testIamPermissions
    BigQueryRowAccessPoliciesTestIamPermissionsResource,
    newBigQueryRowAccessPoliciesTestIamPermissions,
    BigQueryRowAccessPoliciesTestIamPermissions,

    -- ** bigquery.tabledata.insertAll
    BigQueryTabledataInsertAllResource,
    newBigQueryTabledataInsertAll,
    BigQueryTabledataInsertAll,

    -- ** bigquery.tabledata.list
    BigQueryTabledataListResource,
    newBigQueryTabledataList,
    BigQueryTabledataList,

    -- ** bigquery.tables.delete
    BigQueryTablesDeleteResource,
    newBigQueryTablesDelete,
    BigQueryTablesDelete,

    -- ** bigquery.tables.get
    BigQueryTablesGetResource,
    newBigQueryTablesGet,
    BigQueryTablesGet,

    -- ** bigquery.tables.getIamPolicy
    BigQueryTablesGetIamPolicyResource,
    newBigQueryTablesGetIamPolicy,
    BigQueryTablesGetIamPolicy,

    -- ** bigquery.tables.insert
    BigQueryTablesInsertResource,
    newBigQueryTablesInsert,
    BigQueryTablesInsert,

    -- ** bigquery.tables.list
    BigQueryTablesListResource,
    newBigQueryTablesList,
    BigQueryTablesList,

    -- ** bigquery.tables.patch
    BigQueryTablesPatchResource,
    newBigQueryTablesPatch,
    BigQueryTablesPatch,

    -- ** bigquery.tables.setIamPolicy
    BigQueryTablesSetIamPolicyResource,
    newBigQueryTablesSetIamPolicy,
    BigQueryTablesSetIamPolicy,

    -- ** bigquery.tables.testIamPermissions
    BigQueryTablesTestIamPermissionsResource,
    newBigQueryTablesTestIamPermissions,
    BigQueryTablesTestIamPermissions,

    -- ** bigquery.tables.update
    BigQueryTablesUpdateResource,
    newBigQueryTablesUpdate,
    BigQueryTablesUpdate,

    -- * Types

    -- ** AggregateClassificationMetrics
    AggregateClassificationMetrics (..),
    newAggregateClassificationMetrics,

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

    -- ** BiEngineReason
    BiEngineReason (..),
    newBiEngineReason,

    -- ** BiEngineStatistics
    BiEngineStatistics (..),
    newBiEngineStatistics,

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

    -- ** DataSplitResult
    DataSplitResult (..),
    newDataSplitResult,

    -- ** Dataset
    Dataset (..),
    newDataset,

    -- ** Dataset_AccessItem
    Dataset_AccessItem (..),
    newDataset_AccessItem,

    -- ** Dataset_Labels
    Dataset_Labels (..),
    newDataset_Labels,

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

    -- ** ExplainQueryStep
    ExplainQueryStep (..),
    newExplainQueryStep,

    -- ** Explanation
    Explanation (..),
    newExplanation,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** ExternalDataConfiguration
    ExternalDataConfiguration (..),
    newExternalDataConfiguration,

    -- ** FeatureValue
    FeatureValue (..),
    newFeatureValue,

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

    -- ** JobConfigurationQuery
    JobConfigurationQuery (..),
    newJobConfigurationQuery,

    -- ** JobConfigurationQuery_TableDefinitions
    JobConfigurationQuery_TableDefinitions (..),
    newJobConfigurationQuery_TableDefinitions,

    -- ** JobConfigurationTableCopy
    JobConfigurationTableCopy (..),
    newJobConfigurationTableCopy,

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

    -- ** JobStatus
    JobStatus (..),
    newJobStatus,

    -- ** JsonObject
    JsonObject (..),
    newJsonObject,

    -- ** ListModelsResponse
    ListModelsResponse (..),
    newListModelsResponse,

    -- ** ListRoutinesResponse
    ListRoutinesResponse (..),
    newListRoutinesResponse,

    -- ** ListRowAccessPoliciesResponse
    ListRowAccessPoliciesResponse (..),
    newListRowAccessPoliciesResponse,

    -- ** LocationMetadata
    LocationMetadata (..),
    newLocationMetadata,

    -- ** MaterializedViewDefinition
    MaterializedViewDefinition (..),
    newMaterializedViewDefinition,

    -- ** MlStatistics
    MlStatistics (..),
    newMlStatistics,

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

    -- ** ModelReference
    ModelReference (..),
    newModelReference,

    -- ** MultiClassClassificationMetrics
    MultiClassClassificationMetrics (..),
    newMultiClassClassificationMetrics,

    -- ** ParquetOptions
    ParquetOptions (..),
    newParquetOptions,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PrincipalComponentInfo
    PrincipalComponentInfo (..),
    newPrincipalComponentInfo,

    -- ** ProjectList
    ProjectList (..),
    newProjectList,

    -- ** ProjectList_ProjectsItem
    ProjectList_ProjectsItem (..),
    newProjectList_ProjectsItem,

    -- ** ProjectReference
    ProjectReference (..),
    newProjectReference,

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

    -- ** RankingMetrics
    RankingMetrics (..),
    newRankingMetrics,

    -- ** RegressionMetrics
    RegressionMetrics (..),
    newRegressionMetrics,

    -- ** Routine
    Routine (..),
    newRoutine,

    -- ** Routine_DeterminismLevel
    Routine_DeterminismLevel (..),

    -- ** Routine_Language
    Routine_Language (..),

    -- ** Routine_RoutineType
    Routine_RoutineType (..),

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

    -- ** ScriptStackFrame
    ScriptStackFrame (..),
    newScriptStackFrame,

    -- ** ScriptStatistics
    ScriptStatistics (..),
    newScriptStatistics,

    -- ** SessionInfo
    SessionInfo (..),
    newSessionInfo,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** SnapshotDefinition
    SnapshotDefinition (..),
    newSnapshotDefinition,

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

    -- ** Streamingbuffer
    Streamingbuffer (..),
    newStreamingbuffer,

    -- ** StringHparamSearchSpace
    StringHparamSearchSpace (..),
    newStringHparamSearchSpace,

    -- ** Table
    Table (..),
    newTable,

    -- ** Table_Labels
    Table_Labels (..),
    newTable_Labels,

    -- ** TableCell
    TableCell (..),
    newTableCell,

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

    -- ** TableReference
    TableReference (..),
    newTableReference,

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

    -- ** TrainingOptions_OptimizationStrategy
    TrainingOptions_OptimizationStrategy (..),

    -- ** TrainingOptions_TreeMethod
    TrainingOptions_TreeMethod (..),

    -- ** TrainingRun
    TrainingRun (..),
    newTrainingRun,

    -- ** TransactionInfo
    TransactionInfo (..),
    newTransactionInfo,

    -- ** UserDefinedFunctionResource
    UserDefinedFunctionResource (..),
    newUserDefinedFunctionResource,

    -- ** ViewDefinition
    ViewDefinition (..),
    newViewDefinition,

    -- ** JobsListProjection
    JobsListProjection (..),

    -- ** JobsListStateFilter
    JobsListStateFilter (..),
  )
where

import Gogol.BigQuery.Datasets.Delete
import Gogol.BigQuery.Datasets.Get
import Gogol.BigQuery.Datasets.Insert
import Gogol.BigQuery.Datasets.List
import Gogol.BigQuery.Datasets.Patch
import Gogol.BigQuery.Datasets.Update
import Gogol.BigQuery.Jobs.Cancel
import Gogol.BigQuery.Jobs.Delete
import Gogol.BigQuery.Jobs.Get
import Gogol.BigQuery.Jobs.GetQueryResults
import Gogol.BigQuery.Jobs.Insert
import Gogol.BigQuery.Jobs.List
import Gogol.BigQuery.Jobs.Query
import Gogol.BigQuery.Models.Delete
import Gogol.BigQuery.Models.Get
import Gogol.BigQuery.Models.List
import Gogol.BigQuery.Models.Patch
import Gogol.BigQuery.Projects.GetServiceAccount
import Gogol.BigQuery.Projects.List
import Gogol.BigQuery.Routines.Delete
import Gogol.BigQuery.Routines.Get
import Gogol.BigQuery.Routines.Insert
import Gogol.BigQuery.Routines.List
import Gogol.BigQuery.Routines.Update
import Gogol.BigQuery.RowAccessPolicies.GetIamPolicy
import Gogol.BigQuery.RowAccessPolicies.List
import Gogol.BigQuery.RowAccessPolicies.SetIamPolicy
import Gogol.BigQuery.RowAccessPolicies.TestIamPermissions
import Gogol.BigQuery.Tabledata.InsertAll
import Gogol.BigQuery.Tabledata.List
import Gogol.BigQuery.Tables.Delete
import Gogol.BigQuery.Tables.Get
import Gogol.BigQuery.Tables.GetIamPolicy
import Gogol.BigQuery.Tables.Insert
import Gogol.BigQuery.Tables.List
import Gogol.BigQuery.Tables.Patch
import Gogol.BigQuery.Tables.SetIamPolicy
import Gogol.BigQuery.Tables.TestIamPermissions
import Gogol.BigQuery.Tables.Update
import Gogol.BigQuery.Types
