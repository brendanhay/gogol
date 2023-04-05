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
-- Module      : Gogol.BigQuery.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.BigQuery.Internal.Product
  ( -- * AggregateClassificationMetrics
    AggregateClassificationMetrics (..),
    newAggregateClassificationMetrics,

    -- * Argument
    Argument (..),
    newArgument,

    -- * ArimaCoefficients
    ArimaCoefficients (..),
    newArimaCoefficients,

    -- * ArimaFittingMetrics
    ArimaFittingMetrics (..),
    newArimaFittingMetrics,

    -- * ArimaForecastingMetrics
    ArimaForecastingMetrics (..),
    newArimaForecastingMetrics,

    -- * ArimaModelInfo
    ArimaModelInfo (..),
    newArimaModelInfo,

    -- * ArimaOrder
    ArimaOrder (..),
    newArimaOrder,

    -- * ArimaResult
    ArimaResult (..),
    newArimaResult,

    -- * ArimaSingleModelForecastingMetrics
    ArimaSingleModelForecastingMetrics (..),
    newArimaSingleModelForecastingMetrics,

    -- * AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- * AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- * AvroOptions
    AvroOptions (..),
    newAvroOptions,

    -- * BiEngineReason
    BiEngineReason (..),
    newBiEngineReason,

    -- * BiEngineStatistics
    BiEngineStatistics (..),
    newBiEngineStatistics,

    -- * BigQueryModelTraining
    BigQueryModelTraining (..),
    newBigQueryModelTraining,

    -- * BigtableColumn
    BigtableColumn (..),
    newBigtableColumn,

    -- * BigtableColumnFamily
    BigtableColumnFamily (..),
    newBigtableColumnFamily,

    -- * BigtableOptions
    BigtableOptions (..),
    newBigtableOptions,

    -- * BinaryClassificationMetrics
    BinaryClassificationMetrics (..),
    newBinaryClassificationMetrics,

    -- * BinaryConfusionMatrix
    BinaryConfusionMatrix (..),
    newBinaryConfusionMatrix,

    -- * Binding
    Binding (..),
    newBinding,

    -- * BqmlIterationResult
    BqmlIterationResult (..),
    newBqmlIterationResult,

    -- * BqmlTrainingRun
    BqmlTrainingRun (..),
    newBqmlTrainingRun,

    -- * BqmlTrainingRun_TrainingOptions
    BqmlTrainingRun_TrainingOptions (..),
    newBqmlTrainingRun_TrainingOptions,

    -- * CategoricalValue
    CategoricalValue (..),
    newCategoricalValue,

    -- * CategoryCount
    CategoryCount (..),
    newCategoryCount,

    -- * CloneDefinition
    CloneDefinition (..),
    newCloneDefinition,

    -- * Cluster
    Cluster (..),
    newCluster,

    -- * ClusterInfo
    ClusterInfo (..),
    newClusterInfo,

    -- * Clustering
    Clustering (..),
    newClustering,

    -- * ClusteringMetrics
    ClusteringMetrics (..),
    newClusteringMetrics,

    -- * ConfusionMatrix
    ConfusionMatrix (..),
    newConfusionMatrix,

    -- * ConnectionProperty
    ConnectionProperty (..),
    newConnectionProperty,

    -- * CsvOptions
    CsvOptions (..),
    newCsvOptions,

    -- * DataMaskingStatistics
    DataMaskingStatistics (..),
    newDataMaskingStatistics,

    -- * DataSplitResult
    DataSplitResult (..),
    newDataSplitResult,

    -- * Dataset
    Dataset (..),
    newDataset,

    -- * Dataset_AccessItem
    Dataset_AccessItem (..),
    newDataset_AccessItem,

    -- * Dataset_Labels
    Dataset_Labels (..),
    newDataset_Labels,

    -- * Dataset_TagsItem
    Dataset_TagsItem (..),
    newDataset_TagsItem,

    -- * DatasetAccessEntry
    DatasetAccessEntry (..),
    newDatasetAccessEntry,

    -- * DatasetList
    DatasetList (..),
    newDatasetList,

    -- * DatasetList_DatasetsItem
    DatasetList_DatasetsItem (..),
    newDatasetList_DatasetsItem,

    -- * DatasetList_DatasetsItem_Labels
    DatasetList_DatasetsItem_Labels (..),
    newDatasetList_DatasetsItem_Labels,

    -- * DatasetReference
    DatasetReference (..),
    newDatasetReference,

    -- * DestinationTableProperties
    DestinationTableProperties (..),
    newDestinationTableProperties,

    -- * DestinationTableProperties_Labels
    DestinationTableProperties_Labels (..),
    newDestinationTableProperties_Labels,

    -- * DimensionalityReductionMetrics
    DimensionalityReductionMetrics (..),
    newDimensionalityReductionMetrics,

    -- * DmlStatistics
    DmlStatistics (..),
    newDmlStatistics,

    -- * DoubleCandidates
    DoubleCandidates (..),
    newDoubleCandidates,

    -- * DoubleHparamSearchSpace
    DoubleHparamSearchSpace (..),
    newDoubleHparamSearchSpace,

    -- * DoubleRange
    DoubleRange (..),
    newDoubleRange,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,

    -- * Entry
    Entry (..),
    newEntry,

    -- * ErrorProto
    ErrorProto (..),
    newErrorProto,

    -- * EvaluationMetrics
    EvaluationMetrics (..),
    newEvaluationMetrics,

    -- * ExplainQueryStage
    ExplainQueryStage (..),
    newExplainQueryStage,

    -- * ExplainQueryStep
    ExplainQueryStep (..),
    newExplainQueryStep,

    -- * Explanation
    Explanation (..),
    newExplanation,

    -- * Expr
    Expr (..),
    newExpr,

    -- * ExternalDataConfiguration
    ExternalDataConfiguration (..),
    newExternalDataConfiguration,

    -- * FeatureValue
    FeatureValue (..),
    newFeatureValue,

    -- * GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- * GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- * GetQueryResultsResponse
    GetQueryResultsResponse (..),
    newGetQueryResultsResponse,

    -- * GetServiceAccountResponse
    GetServiceAccountResponse (..),
    newGetServiceAccountResponse,

    -- * GlobalExplanation
    GlobalExplanation (..),
    newGlobalExplanation,

    -- * GoogleSheetsOptions
    GoogleSheetsOptions (..),
    newGoogleSheetsOptions,

    -- * HivePartitioningOptions
    HivePartitioningOptions (..),
    newHivePartitioningOptions,

    -- * HparamSearchSpaces
    HparamSearchSpaces (..),
    newHparamSearchSpaces,

    -- * HparamTuningTrial
    HparamTuningTrial (..),
    newHparamTuningTrial,

    -- * IndexUnusedReason
    IndexUnusedReason (..),
    newIndexUnusedReason,

    -- * IntArray
    IntArray (..),
    newIntArray,

    -- * IntArrayHparamSearchSpace
    IntArrayHparamSearchSpace (..),
    newIntArrayHparamSearchSpace,

    -- * IntCandidates
    IntCandidates (..),
    newIntCandidates,

    -- * IntHparamSearchSpace
    IntHparamSearchSpace (..),
    newIntHparamSearchSpace,

    -- * IntRange
    IntRange (..),
    newIntRange,

    -- * IterationResult
    IterationResult (..),
    newIterationResult,

    -- * Job
    Job (..),
    newJob,

    -- * JobCancelResponse
    JobCancelResponse (..),
    newJobCancelResponse,

    -- * JobConfiguration
    JobConfiguration (..),
    newJobConfiguration,

    -- * JobConfiguration_Labels
    JobConfiguration_Labels (..),
    newJobConfiguration_Labels,

    -- * JobConfigurationExtract
    JobConfigurationExtract (..),
    newJobConfigurationExtract,

    -- * JobConfigurationLoad
    JobConfigurationLoad (..),
    newJobConfigurationLoad,

    -- * JobConfigurationQuery
    JobConfigurationQuery (..),
    newJobConfigurationQuery,

    -- * JobConfigurationQuery_TableDefinitions
    JobConfigurationQuery_TableDefinitions (..),
    newJobConfigurationQuery_TableDefinitions,

    -- * JobConfigurationTableCopy
    JobConfigurationTableCopy (..),
    newJobConfigurationTableCopy,

    -- * JobList
    JobList (..),
    newJobList,

    -- * JobList_JobsItem
    JobList_JobsItem (..),
    newJobList_JobsItem,

    -- * JobReference
    JobReference (..),
    newJobReference,

    -- * JobStatistics
    JobStatistics (..),
    newJobStatistics,

    -- * JobStatistics_ReservationUsageItem
    JobStatistics_ReservationUsageItem (..),
    newJobStatistics_ReservationUsageItem,

    -- * JobStatistics2
    JobStatistics2 (..),
    newJobStatistics2,

    -- * JobStatistics2_ReservationUsageItem
    JobStatistics2_ReservationUsageItem (..),
    newJobStatistics2_ReservationUsageItem,

    -- * JobStatistics3
    JobStatistics3 (..),
    newJobStatistics3,

    -- * JobStatistics4
    JobStatistics4 (..),
    newJobStatistics4,

    -- * JobStatistics5
    JobStatistics5 (..),
    newJobStatistics5,

    -- * JobStatus
    JobStatus (..),
    newJobStatus,

    -- * JsonObject
    JsonObject (..),
    newJsonObject,

    -- * ListModelsResponse
    ListModelsResponse (..),
    newListModelsResponse,

    -- * ListRoutinesResponse
    ListRoutinesResponse (..),
    newListRoutinesResponse,

    -- * ListRowAccessPoliciesResponse
    ListRowAccessPoliciesResponse (..),
    newListRowAccessPoliciesResponse,

    -- * LocationMetadata
    LocationMetadata (..),
    newLocationMetadata,

    -- * MaterializedViewDefinition
    MaterializedViewDefinition (..),
    newMaterializedViewDefinition,

    -- * MlStatistics
    MlStatistics (..),
    newMlStatistics,

    -- * Model
    Model (..),
    newModel,

    -- * Model_Labels
    Model_Labels (..),
    newModel_Labels,

    -- * ModelDefinition
    ModelDefinition (..),
    newModelDefinition,

    -- * ModelDefinition_ModelOptions
    ModelDefinition_ModelOptions (..),
    newModelDefinition_ModelOptions,

    -- * ModelReference
    ModelReference (..),
    newModelReference,

    -- * MultiClassClassificationMetrics
    MultiClassClassificationMetrics (..),
    newMultiClassClassificationMetrics,

    -- * ParquetOptions
    ParquetOptions (..),
    newParquetOptions,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * PrincipalComponentInfo
    PrincipalComponentInfo (..),
    newPrincipalComponentInfo,

    -- * ProjectList
    ProjectList (..),
    newProjectList,

    -- * ProjectList_ProjectsItem
    ProjectList_ProjectsItem (..),
    newProjectList_ProjectsItem,

    -- * ProjectReference
    ProjectReference (..),
    newProjectReference,

    -- * QueryParameter
    QueryParameter (..),
    newQueryParameter,

    -- * QueryParameterType
    QueryParameterType (..),
    newQueryParameterType,

    -- * QueryParameterType_StructTypesItem
    QueryParameterType_StructTypesItem (..),
    newQueryParameterType_StructTypesItem,

    -- * QueryParameterValue
    QueryParameterValue (..),
    newQueryParameterValue,

    -- * QueryParameterValue_StructValues
    QueryParameterValue_StructValues (..),
    newQueryParameterValue_StructValues,

    -- * QueryRequest
    QueryRequest (..),
    newQueryRequest,

    -- * QueryRequest_Labels
    QueryRequest_Labels (..),
    newQueryRequest_Labels,

    -- * QueryResponse
    QueryResponse (..),
    newQueryResponse,

    -- * QueryTimelineSample
    QueryTimelineSample (..),
    newQueryTimelineSample,

    -- * RangePartitioning
    RangePartitioning (..),
    newRangePartitioning,

    -- * RangePartitioning_Range
    RangePartitioning_Range (..),
    newRangePartitioning_Range,

    -- * RankingMetrics
    RankingMetrics (..),
    newRankingMetrics,

    -- * RegressionMetrics
    RegressionMetrics (..),
    newRegressionMetrics,

    -- * RemoteFunctionOptions
    RemoteFunctionOptions (..),
    newRemoteFunctionOptions,

    -- * RemoteFunctionOptions_UserDefinedContext
    RemoteFunctionOptions_UserDefinedContext (..),
    newRemoteFunctionOptions_UserDefinedContext,

    -- * Routine
    Routine (..),
    newRoutine,

    -- * RoutineReference
    RoutineReference (..),
    newRoutineReference,

    -- * Row
    Row (..),
    newRow,

    -- * RowAccessPolicy
    RowAccessPolicy (..),
    newRowAccessPolicy,

    -- * RowAccessPolicyReference
    RowAccessPolicyReference (..),
    newRowAccessPolicyReference,

    -- * RowLevelSecurityStatistics
    RowLevelSecurityStatistics (..),
    newRowLevelSecurityStatistics,

    -- * ScriptStackFrame
    ScriptStackFrame (..),
    newScriptStackFrame,

    -- * ScriptStatistics
    ScriptStatistics (..),
    newScriptStatistics,

    -- * SearchStatistics
    SearchStatistics (..),
    newSearchStatistics,

    -- * SessionInfo
    SessionInfo (..),
    newSessionInfo,

    -- * SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- * SnapshotDefinition
    SnapshotDefinition (..),
    newSnapshotDefinition,

    -- * SparkLoggingInfo
    SparkLoggingInfo (..),
    newSparkLoggingInfo,

    -- * SparkOptions
    SparkOptions (..),
    newSparkOptions,

    -- * SparkOptions_Properties
    SparkOptions_Properties (..),
    newSparkOptions_Properties,

    -- * SparkStatistics
    SparkStatistics (..),
    newSparkStatistics,

    -- * SparkStatistics_Endpoints
    SparkStatistics_Endpoints (..),
    newSparkStatistics_Endpoints,

    -- * StandardSqlDataType
    StandardSqlDataType (..),
    newStandardSqlDataType,

    -- * StandardSqlField
    StandardSqlField (..),
    newStandardSqlField,

    -- * StandardSqlStructType
    StandardSqlStructType (..),
    newStandardSqlStructType,

    -- * StandardSqlTableType
    StandardSqlTableType (..),
    newStandardSqlTableType,

    -- * Streamingbuffer
    Streamingbuffer (..),
    newStreamingbuffer,

    -- * StringHparamSearchSpace
    StringHparamSearchSpace (..),
    newStringHparamSearchSpace,

    -- * Table
    Table (..),
    newTable,

    -- * Table_Labels
    Table_Labels (..),
    newTable_Labels,

    -- * TableCell
    TableCell (..),
    newTableCell,

    -- * TableDataInsertAllRequest
    TableDataInsertAllRequest (..),
    newTableDataInsertAllRequest,

    -- * TableDataInsertAllRequest_RowsItem
    TableDataInsertAllRequest_RowsItem (..),
    newTableDataInsertAllRequest_RowsItem,

    -- * TableDataInsertAllResponse
    TableDataInsertAllResponse (..),
    newTableDataInsertAllResponse,

    -- * TableDataInsertAllResponse_InsertErrorsItem
    TableDataInsertAllResponse_InsertErrorsItem (..),
    newTableDataInsertAllResponse_InsertErrorsItem,

    -- * TableDataList
    TableDataList (..),
    newTableDataList,

    -- * TableFieldSchema
    TableFieldSchema (..),
    newTableFieldSchema,

    -- * TableFieldSchema_Categories
    TableFieldSchema_Categories (..),
    newTableFieldSchema_Categories,

    -- * TableFieldSchema_PolicyTags
    TableFieldSchema_PolicyTags (..),
    newTableFieldSchema_PolicyTags,

    -- * TableList
    TableList (..),
    newTableList,

    -- * TableList_TablesItem
    TableList_TablesItem (..),
    newTableList_TablesItem,

    -- * TableList_TablesItem_Labels
    TableList_TablesItem_Labels (..),
    newTableList_TablesItem_Labels,

    -- * TableList_TablesItem_View
    TableList_TablesItem_View (..),
    newTableList_TablesItem_View,

    -- * TableReference
    TableReference (..),
    newTableReference,

    -- * TableRow
    TableRow (..),
    newTableRow,

    -- * TableSchema
    TableSchema (..),
    newTableSchema,

    -- * TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- * TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- * TimePartitioning
    TimePartitioning (..),
    newTimePartitioning,

    -- * TrainingOptions
    TrainingOptions (..),
    newTrainingOptions,

    -- * TrainingOptions_LabelClassWeights
    TrainingOptions_LabelClassWeights (..),
    newTrainingOptions_LabelClassWeights,

    -- * TrainingRun
    TrainingRun (..),
    newTrainingRun,

    -- * TransactionInfo
    TransactionInfo (..),
    newTransactionInfo,

    -- * UserDefinedFunctionResource
    UserDefinedFunctionResource (..),
    newUserDefinedFunctionResource,

    -- * ViewDefinition
    ViewDefinition (..),
    newViewDefinition,
  )
where

import Gogol.BigQuery.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Aggregate metrics for classification\/classifier models. For multi-class models, the metrics are either macro-averaged or micro-averaged. When macro-averaged, the metrics are calculated for each label and then an unweighted average is taken of those values. When micro-averaged, the metric is calculated globally by counting the total number of correctly predicted rows.
--
-- /See:/ 'newAggregateClassificationMetrics' smart constructor.
data AggregateClassificationMetrics = AggregateClassificationMetrics
  { -- | Accuracy is the fraction of predictions given the correct label. For multiclass this is a micro-averaged metric.
    accuracy :: (Core.Maybe Core.Double),
    -- | The F1 score is an average of recall and precision. For multiclass this is a macro-averaged metric.
    f1Score :: (Core.Maybe Core.Double),
    -- | Logarithmic Loss. For multiclass this is a macro-averaged metric.
    logLoss :: (Core.Maybe Core.Double),
    -- | Precision is the fraction of actual positive predictions that had positive actual labels. For multiclass this is a macro-averaged metric treating each class as a binary classifier.
    precision :: (Core.Maybe Core.Double),
    -- | Recall is the fraction of actual positive labels that were given a positive prediction. For multiclass this is a macro-averaged metric.
    recall :: (Core.Maybe Core.Double),
    -- | Area Under a ROC Curve. For multiclass this is a macro-averaged metric.
    rocAuc :: (Core.Maybe Core.Double),
    -- | Threshold at which the metrics are computed. For binary classification models this is the positive class threshold. For multi-class classfication models this is the confidence threshold.
    threshold :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AggregateClassificationMetrics' with the minimum fields required to make a request.
newAggregateClassificationMetrics ::
  AggregateClassificationMetrics
newAggregateClassificationMetrics =
  AggregateClassificationMetrics
    { accuracy = Core.Nothing,
      f1Score = Core.Nothing,
      logLoss = Core.Nothing,
      precision = Core.Nothing,
      recall = Core.Nothing,
      rocAuc = Core.Nothing,
      threshold = Core.Nothing
    }

instance Core.FromJSON AggregateClassificationMetrics where
  parseJSON =
    Core.withObject
      "AggregateClassificationMetrics"
      ( \o ->
          AggregateClassificationMetrics
            Core.<$> (o Core..:? "accuracy")
            Core.<*> (o Core..:? "f1Score")
            Core.<*> (o Core..:? "logLoss")
            Core.<*> (o Core..:? "precision")
            Core.<*> (o Core..:? "recall")
            Core.<*> (o Core..:? "rocAuc")
            Core.<*> (o Core..:? "threshold")
      )

instance Core.ToJSON AggregateClassificationMetrics where
  toJSON AggregateClassificationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("accuracy" Core..=) Core.<$> accuracy,
            ("f1Score" Core..=) Core.<$> f1Score,
            ("logLoss" Core..=) Core.<$> logLoss,
            ("precision" Core..=) Core.<$> precision,
            ("recall" Core..=) Core.<$> recall,
            ("rocAuc" Core..=) Core.<$> rocAuc,
            ("threshold" Core..=) Core.<$> threshold
          ]
      )

-- | Input\/output argument of a function or a stored procedure.
--
-- /See:/ 'newArgument' smart constructor.
data Argument = Argument
  { -- | Optional. Defaults to FIXED_TYPE.
    argumentKind :: (Core.Maybe Argument_ArgumentKind),
    -- | Required unless argument/kind = ANY/TYPE.
    dataType :: (Core.Maybe StandardSqlDataType),
    -- | Optional. Specifies whether the argument is input or output. Can be set for procedures only.
    mode :: (Core.Maybe Argument_Mode),
    -- | Optional. The name of this argument. Can be absent for function return argument.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Argument' with the minimum fields required to make a request.
newArgument ::
  Argument
newArgument =
  Argument
    { argumentKind = Core.Nothing,
      dataType = Core.Nothing,
      mode = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Argument where
  parseJSON =
    Core.withObject
      "Argument"
      ( \o ->
          Argument
            Core.<$> (o Core..:? "argumentKind")
            Core.<*> (o Core..:? "dataType")
            Core.<*> (o Core..:? "mode")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Argument where
  toJSON Argument {..} =
    Core.object
      ( Core.catMaybes
          [ ("argumentKind" Core..=) Core.<$> argumentKind,
            ("dataType" Core..=) Core.<$> dataType,
            ("mode" Core..=) Core.<$> mode,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Arima coefficients.
--
-- /See:/ 'newArimaCoefficients' smart constructor.
data ArimaCoefficients = ArimaCoefficients
  { -- | Auto-regressive coefficients, an array of double.
    autoRegressiveCoefficients :: (Core.Maybe [Core.Double]),
    -- | Intercept coefficient, just a double not an array.
    interceptCoefficient :: (Core.Maybe Core.Double),
    -- | Moving-average coefficients, an array of double.
    movingAverageCoefficients :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArimaCoefficients' with the minimum fields required to make a request.
newArimaCoefficients ::
  ArimaCoefficients
newArimaCoefficients =
  ArimaCoefficients
    { autoRegressiveCoefficients = Core.Nothing,
      interceptCoefficient = Core.Nothing,
      movingAverageCoefficients = Core.Nothing
    }

instance Core.FromJSON ArimaCoefficients where
  parseJSON =
    Core.withObject
      "ArimaCoefficients"
      ( \o ->
          ArimaCoefficients
            Core.<$> (o Core..:? "autoRegressiveCoefficients")
            Core.<*> (o Core..:? "interceptCoefficient")
            Core.<*> (o Core..:? "movingAverageCoefficients")
      )

instance Core.ToJSON ArimaCoefficients where
  toJSON ArimaCoefficients {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoRegressiveCoefficients" Core..=)
              Core.<$> autoRegressiveCoefficients,
            ("interceptCoefficient" Core..=)
              Core.<$> interceptCoefficient,
            ("movingAverageCoefficients" Core..=)
              Core.<$> movingAverageCoefficients
          ]
      )

-- | ARIMA model fitting metrics.
--
-- /See:/ 'newArimaFittingMetrics' smart constructor.
data ArimaFittingMetrics = ArimaFittingMetrics
  { -- | AIC.
    aic :: (Core.Maybe Core.Double),
    -- | Log-likelihood.
    logLikelihood :: (Core.Maybe Core.Double),
    -- | Variance.
    variance :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArimaFittingMetrics' with the minimum fields required to make a request.
newArimaFittingMetrics ::
  ArimaFittingMetrics
newArimaFittingMetrics =
  ArimaFittingMetrics
    { aic = Core.Nothing,
      logLikelihood = Core.Nothing,
      variance = Core.Nothing
    }

instance Core.FromJSON ArimaFittingMetrics where
  parseJSON =
    Core.withObject
      "ArimaFittingMetrics"
      ( \o ->
          ArimaFittingMetrics
            Core.<$> (o Core..:? "aic")
            Core.<*> (o Core..:? "logLikelihood")
            Core.<*> (o Core..:? "variance")
      )

instance Core.ToJSON ArimaFittingMetrics where
  toJSON ArimaFittingMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("aic" Core..=) Core.<$> aic,
            ("logLikelihood" Core..=) Core.<$> logLikelihood,
            ("variance" Core..=) Core.<$> variance
          ]
      )

-- | Model evaluation metrics for ARIMA forecasting models.
--
-- /See:/ 'newArimaForecastingMetrics' smart constructor.
data ArimaForecastingMetrics = ArimaForecastingMetrics
  { -- | Arima model fitting metrics.
    arimaFittingMetrics :: (Core.Maybe [ArimaFittingMetrics]),
    -- | Repeated as there can be many metric sets (one for each model) in auto-arima and the large-scale case.
    arimaSingleModelForecastingMetrics :: (Core.Maybe [ArimaSingleModelForecastingMetrics]),
    -- | Whether Arima model fitted with drift or not. It is always false when d is not 1.
    hasDrift :: (Core.Maybe [Core.Bool]),
    -- | Non-seasonal order.
    nonSeasonalOrder :: (Core.Maybe [ArimaOrder]),
    -- | Seasonal periods. Repeated because multiple periods are supported for one time series.
    seasonalPeriods :: (Core.Maybe [ArimaForecastingMetrics_SeasonalPeriodsItem]),
    -- | Id to differentiate different time series for the large-scale case.
    timeSeriesId :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArimaForecastingMetrics' with the minimum fields required to make a request.
newArimaForecastingMetrics ::
  ArimaForecastingMetrics
newArimaForecastingMetrics =
  ArimaForecastingMetrics
    { arimaFittingMetrics = Core.Nothing,
      arimaSingleModelForecastingMetrics = Core.Nothing,
      hasDrift = Core.Nothing,
      nonSeasonalOrder = Core.Nothing,
      seasonalPeriods = Core.Nothing,
      timeSeriesId = Core.Nothing
    }

instance Core.FromJSON ArimaForecastingMetrics where
  parseJSON =
    Core.withObject
      "ArimaForecastingMetrics"
      ( \o ->
          ArimaForecastingMetrics
            Core.<$> (o Core..:? "arimaFittingMetrics")
            Core.<*> (o Core..:? "arimaSingleModelForecastingMetrics")
            Core.<*> (o Core..:? "hasDrift")
            Core.<*> (o Core..:? "nonSeasonalOrder")
            Core.<*> (o Core..:? "seasonalPeriods")
            Core.<*> (o Core..:? "timeSeriesId")
      )

instance Core.ToJSON ArimaForecastingMetrics where
  toJSON ArimaForecastingMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("arimaFittingMetrics" Core..=)
              Core.<$> arimaFittingMetrics,
            ("arimaSingleModelForecastingMetrics" Core..=)
              Core.<$> arimaSingleModelForecastingMetrics,
            ("hasDrift" Core..=) Core.<$> hasDrift,
            ("nonSeasonalOrder" Core..=)
              Core.<$> nonSeasonalOrder,
            ("seasonalPeriods" Core..=) Core.<$> seasonalPeriods,
            ("timeSeriesId" Core..=) Core.<$> timeSeriesId
          ]
      )

-- | Arima model information.
--
-- /See:/ 'newArimaModelInfo' smart constructor.
data ArimaModelInfo = ArimaModelInfo
  { -- | Arima coefficients.
    arimaCoefficients :: (Core.Maybe ArimaCoefficients),
    -- | Arima fitting metrics.
    arimaFittingMetrics :: (Core.Maybe ArimaFittingMetrics),
    -- | Whether Arima model fitted with drift or not. It is always false when d is not 1.
    hasDrift :: (Core.Maybe Core.Bool),
    -- | If true, holiday_effect is a part of time series decomposition result.
    hasHolidayEffect :: (Core.Maybe Core.Bool),
    -- | If true, spikes/and/dips is a part of time series decomposition result.
    hasSpikesAndDips :: (Core.Maybe Core.Bool),
    -- | If true, step_changes is a part of time series decomposition result.
    hasStepChanges :: (Core.Maybe Core.Bool),
    -- | Non-seasonal order.
    nonSeasonalOrder :: (Core.Maybe ArimaOrder),
    -- | Seasonal periods. Repeated because multiple periods are supported for one time series.
    seasonalPeriods :: (Core.Maybe [ArimaModelInfo_SeasonalPeriodsItem]),
    -- | The time/series/id value for this time series. It will be one of the unique values from the time/series/id/column specified during ARIMA model training. Only present when time/series/id/column training option was used.
    timeSeriesId :: (Core.Maybe Core.Text),
    -- | The tuple of time/series/ids identifying this time series. It will be one of the unique tuples of values present in the time/series/id/columns specified during ARIMA model training. Only present when time/series/id/columns training option was used and the order of values here are same as the order of time/series/id_columns.
    timeSeriesIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArimaModelInfo' with the minimum fields required to make a request.
newArimaModelInfo ::
  ArimaModelInfo
newArimaModelInfo =
  ArimaModelInfo
    { arimaCoefficients = Core.Nothing,
      arimaFittingMetrics = Core.Nothing,
      hasDrift = Core.Nothing,
      hasHolidayEffect = Core.Nothing,
      hasSpikesAndDips = Core.Nothing,
      hasStepChanges = Core.Nothing,
      nonSeasonalOrder = Core.Nothing,
      seasonalPeriods = Core.Nothing,
      timeSeriesId = Core.Nothing,
      timeSeriesIds = Core.Nothing
    }

instance Core.FromJSON ArimaModelInfo where
  parseJSON =
    Core.withObject
      "ArimaModelInfo"
      ( \o ->
          ArimaModelInfo
            Core.<$> (o Core..:? "arimaCoefficients")
            Core.<*> (o Core..:? "arimaFittingMetrics")
            Core.<*> (o Core..:? "hasDrift")
            Core.<*> (o Core..:? "hasHolidayEffect")
            Core.<*> (o Core..:? "hasSpikesAndDips")
            Core.<*> (o Core..:? "hasStepChanges")
            Core.<*> (o Core..:? "nonSeasonalOrder")
            Core.<*> (o Core..:? "seasonalPeriods")
            Core.<*> (o Core..:? "timeSeriesId")
            Core.<*> (o Core..:? "timeSeriesIds")
      )

instance Core.ToJSON ArimaModelInfo where
  toJSON ArimaModelInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("arimaCoefficients" Core..=)
              Core.<$> arimaCoefficients,
            ("arimaFittingMetrics" Core..=)
              Core.<$> arimaFittingMetrics,
            ("hasDrift" Core..=) Core.<$> hasDrift,
            ("hasHolidayEffect" Core..=)
              Core.<$> hasHolidayEffect,
            ("hasSpikesAndDips" Core..=)
              Core.<$> hasSpikesAndDips,
            ("hasStepChanges" Core..=) Core.<$> hasStepChanges,
            ("nonSeasonalOrder" Core..=)
              Core.<$> nonSeasonalOrder,
            ("seasonalPeriods" Core..=) Core.<$> seasonalPeriods,
            ("timeSeriesId" Core..=) Core.<$> timeSeriesId,
            ("timeSeriesIds" Core..=) Core.<$> timeSeriesIds
          ]
      )

-- | Arima order, can be used for both non-seasonal and seasonal parts.
--
-- /See:/ 'newArimaOrder' smart constructor.
data ArimaOrder = ArimaOrder
  { -- | Order of the differencing part.
    d :: (Core.Maybe Core.Int64),
    -- | Order of the autoregressive part.
    p :: (Core.Maybe Core.Int64),
    -- | Order of the moving-average part.
    q :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArimaOrder' with the minimum fields required to make a request.
newArimaOrder ::
  ArimaOrder
newArimaOrder =
  ArimaOrder {d = Core.Nothing, p = Core.Nothing, q = Core.Nothing}

instance Core.FromJSON ArimaOrder where
  parseJSON =
    Core.withObject
      "ArimaOrder"
      ( \o ->
          ArimaOrder
            Core.<$> (o Core..:? "d" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "p" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "q" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON ArimaOrder where
  toJSON ArimaOrder {..} =
    Core.object
      ( Core.catMaybes
          [ ("d" Core..=) Core.. Core.AsText Core.<$> d,
            ("p" Core..=) Core.. Core.AsText Core.<$> p,
            ("q" Core..=) Core.. Core.AsText Core.<$> q
          ]
      )

-- | (Auto-)arima fitting result. Wrap everything in ArimaResult for easier refactoring if we want to use model-specific iteration results.
--
-- /See:/ 'newArimaResult' smart constructor.
data ArimaResult = ArimaResult
  { -- | This message is repeated because there are multiple arima models fitted in auto-arima. For non-auto-arima model, its size is one.
    arimaModelInfo :: (Core.Maybe [ArimaModelInfo]),
    -- | Seasonal periods. Repeated because multiple periods are supported for one time series.
    seasonalPeriods :: (Core.Maybe [ArimaResult_SeasonalPeriodsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArimaResult' with the minimum fields required to make a request.
newArimaResult ::
  ArimaResult
newArimaResult =
  ArimaResult {arimaModelInfo = Core.Nothing, seasonalPeriods = Core.Nothing}

instance Core.FromJSON ArimaResult where
  parseJSON =
    Core.withObject
      "ArimaResult"
      ( \o ->
          ArimaResult
            Core.<$> (o Core..:? "arimaModelInfo")
            Core.<*> (o Core..:? "seasonalPeriods")
      )

instance Core.ToJSON ArimaResult where
  toJSON ArimaResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("arimaModelInfo" Core..=) Core.<$> arimaModelInfo,
            ("seasonalPeriods" Core..=)
              Core.<$> seasonalPeriods
          ]
      )

-- | Model evaluation metrics for a single ARIMA forecasting model.
--
-- /See:/ 'newArimaSingleModelForecastingMetrics' smart constructor.
data ArimaSingleModelForecastingMetrics = ArimaSingleModelForecastingMetrics
  { -- | Arima fitting metrics.
    arimaFittingMetrics :: (Core.Maybe ArimaFittingMetrics),
    -- | Is arima model fitted with drift or not. It is always false when d is not 1.
    hasDrift :: (Core.Maybe Core.Bool),
    -- | If true, holiday_effect is a part of time series decomposition result.
    hasHolidayEffect :: (Core.Maybe Core.Bool),
    -- | If true, spikes/and/dips is a part of time series decomposition result.
    hasSpikesAndDips :: (Core.Maybe Core.Bool),
    -- | If true, step_changes is a part of time series decomposition result.
    hasStepChanges :: (Core.Maybe Core.Bool),
    -- | Non-seasonal order.
    nonSeasonalOrder :: (Core.Maybe ArimaOrder),
    -- | Seasonal periods. Repeated because multiple periods are supported for one time series.
    seasonalPeriods ::
      ( Core.Maybe
          [ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem]
      ),
    -- | The time/series/id value for this time series. It will be one of the unique values from the time/series/id/column specified during ARIMA model training. Only present when time/series/id/column training option was used.
    timeSeriesId :: (Core.Maybe Core.Text),
    -- | The tuple of time/series/ids identifying this time series. It will be one of the unique tuples of values present in the time/series/id/columns specified during ARIMA model training. Only present when time/series/id/columns training option was used and the order of values here are same as the order of time/series/id_columns.
    timeSeriesIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArimaSingleModelForecastingMetrics' with the minimum fields required to make a request.
newArimaSingleModelForecastingMetrics ::
  ArimaSingleModelForecastingMetrics
newArimaSingleModelForecastingMetrics =
  ArimaSingleModelForecastingMetrics
    { arimaFittingMetrics = Core.Nothing,
      hasDrift = Core.Nothing,
      hasHolidayEffect = Core.Nothing,
      hasSpikesAndDips = Core.Nothing,
      hasStepChanges = Core.Nothing,
      nonSeasonalOrder = Core.Nothing,
      seasonalPeriods = Core.Nothing,
      timeSeriesId = Core.Nothing,
      timeSeriesIds = Core.Nothing
    }

instance
  Core.FromJSON
    ArimaSingleModelForecastingMetrics
  where
  parseJSON =
    Core.withObject
      "ArimaSingleModelForecastingMetrics"
      ( \o ->
          ArimaSingleModelForecastingMetrics
            Core.<$> (o Core..:? "arimaFittingMetrics")
            Core.<*> (o Core..:? "hasDrift")
            Core.<*> (o Core..:? "hasHolidayEffect")
            Core.<*> (o Core..:? "hasSpikesAndDips")
            Core.<*> (o Core..:? "hasStepChanges")
            Core.<*> (o Core..:? "nonSeasonalOrder")
            Core.<*> (o Core..:? "seasonalPeriods")
            Core.<*> (o Core..:? "timeSeriesId")
            Core.<*> (o Core..:? "timeSeriesIds")
      )

instance
  Core.ToJSON
    ArimaSingleModelForecastingMetrics
  where
  toJSON ArimaSingleModelForecastingMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("arimaFittingMetrics" Core..=)
              Core.<$> arimaFittingMetrics,
            ("hasDrift" Core..=) Core.<$> hasDrift,
            ("hasHolidayEffect" Core..=)
              Core.<$> hasHolidayEffect,
            ("hasSpikesAndDips" Core..=)
              Core.<$> hasSpikesAndDips,
            ("hasStepChanges" Core..=) Core.<$> hasStepChanges,
            ("nonSeasonalOrder" Core..=)
              Core.<$> nonSeasonalOrder,
            ("seasonalPeriods" Core..=) Core.<$> seasonalPeriods,
            ("timeSeriesId" Core..=) Core.<$> timeSeriesId,
            ("timeSeriesIds" Core..=) Core.<$> timeSeriesIds
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts @jose\@example.com@ from DATA/READ logging, and @aliya\@example.com@ from DATA/WRITE logging.
--
-- /See:/ 'newAuditConfig' smart constructor.
data AuditConfig = AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditConfig' with the minimum fields required to make a request.
newAuditConfig ::
  AuditConfig
newAuditConfig =
  AuditConfig {auditLogConfigs = Core.Nothing, service = Core.Nothing}

instance Core.FromJSON AuditConfig where
  parseJSON =
    Core.withObject
      "AuditConfig"
      ( \o ->
          AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON AuditConfig where
  toJSON AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newAuditLogConfig' smart constructor.
data AuditLogConfig = AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuditLogConfig' with the minimum fields required to make a request.
newAuditLogConfig ::
  AuditLogConfig
newAuditLogConfig =
  AuditLogConfig {exemptedMembers = Core.Nothing, logType = Core.Nothing}

instance Core.FromJSON AuditLogConfig where
  parseJSON =
    Core.withObject
      "AuditLogConfig"
      ( \o ->
          AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers")
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON AuditLogConfig where
  toJSON AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

--
-- /See:/ 'newAvroOptions' smart constructor.
newtype AvroOptions = AvroOptions
  { -- | [Optional] If sourceFormat is set to \"AVRO\", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
    useAvroLogicalTypes :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AvroOptions' with the minimum fields required to make a request.
newAvroOptions ::
  AvroOptions
newAvroOptions = AvroOptions {useAvroLogicalTypes = Core.Nothing}

instance Core.FromJSON AvroOptions where
  parseJSON =
    Core.withObject
      "AvroOptions"
      ( \o ->
          AvroOptions
            Core.<$> (o Core..:? "useAvroLogicalTypes")
      )

instance Core.ToJSON AvroOptions where
  toJSON AvroOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("useAvroLogicalTypes" Core..=)
              Core.<$> useAvroLogicalTypes
          ]
      )

--
-- /See:/ 'newBiEngineReason' smart constructor.
data BiEngineReason = BiEngineReason
  { -- | [Output-only] High-level BI Engine reason for partial or disabled acceleration.
    code :: Core.Text,
    -- | [Output-only] Free form human-readable reason for partial or disabled acceleration.
    message :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BiEngineReason' with the minimum fields required to make a request.
newBiEngineReason ::
  BiEngineReason
newBiEngineReason = BiEngineReason {code = "", message = ""}

instance Core.FromJSON BiEngineReason where
  parseJSON =
    Core.withObject
      "BiEngineReason"
      ( \o ->
          BiEngineReason
            Core.<$> (o Core..:? "code" Core..!= "")
            Core.<*> (o Core..:? "message" Core..!= "")
      )

instance Core.ToJSON BiEngineReason where
  toJSON BiEngineReason {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("code" Core..= code),
            Core.Just ("message" Core..= message)
          ]
      )

--
-- /See:/ 'newBiEngineStatistics' smart constructor.
data BiEngineStatistics = BiEngineStatistics
  { -- | [Output-only] Specifies which mode of BI Engine acceleration was performed (if any).
    accelerationMode :: Core.Text,
    -- | [Output-only] Specifies which mode of BI Engine acceleration was performed (if any).
    biEngineMode :: Core.Text,
    -- | In case of DISABLED or PARTIAL bi/engine/mode, these contain the explanatory reasons as to why BI Engine could not accelerate. In case the full query was accelerated, this field is not populated.
    biEngineReasons :: (Core.Maybe [BiEngineReason])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BiEngineStatistics' with the minimum fields required to make a request.
newBiEngineStatistics ::
  BiEngineStatistics
newBiEngineStatistics =
  BiEngineStatistics
    { accelerationMode = "",
      biEngineMode = "",
      biEngineReasons = Core.Nothing
    }

instance Core.FromJSON BiEngineStatistics where
  parseJSON =
    Core.withObject
      "BiEngineStatistics"
      ( \o ->
          BiEngineStatistics
            Core.<$> (o Core..:? "accelerationMode" Core..!= "")
            Core.<*> (o Core..:? "biEngineMode" Core..!= "")
            Core.<*> (o Core..:? "biEngineReasons")
      )

instance Core.ToJSON BiEngineStatistics where
  toJSON BiEngineStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("accelerationMode" Core..= accelerationMode),
            Core.Just ("biEngineMode" Core..= biEngineMode),
            ("biEngineReasons" Core..=)
              Core.<$> biEngineReasons
          ]
      )

--
-- /See:/ 'newBigQueryModelTraining' smart constructor.
data BigQueryModelTraining = BigQueryModelTraining
  { -- | [Output-only, Beta] Index of current ML training iteration. Updated during create model query job to show job progress.
    currentIteration :: (Core.Maybe Core.Int32),
    -- | [Output-only, Beta] Expected number of iterations for the create model query job specified as num_iterations in the input query. The actual total number of iterations may be less than this number due to early stop.
    expectedTotalIterations :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryModelTraining' with the minimum fields required to make a request.
newBigQueryModelTraining ::
  BigQueryModelTraining
newBigQueryModelTraining =
  BigQueryModelTraining
    { currentIteration = Core.Nothing,
      expectedTotalIterations = Core.Nothing
    }

instance Core.FromJSON BigQueryModelTraining where
  parseJSON =
    Core.withObject
      "BigQueryModelTraining"
      ( \o ->
          BigQueryModelTraining
            Core.<$> (o Core..:? "currentIteration")
            Core.<*> ( o Core..:? "expectedTotalIterations"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON BigQueryModelTraining where
  toJSON BigQueryModelTraining {..} =
    Core.object
      ( Core.catMaybes
          [ ("currentIteration" Core..=)
              Core.<$> currentIteration,
            ("expectedTotalIterations" Core..=)
              Core.. Core.AsText
              Core.<$> expectedTotalIterations
          ]
      )

--
-- /See:/ 'newBigtableColumn' smart constructor.
data BigtableColumn = BigtableColumn
  { -- | [Optional] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. \'encoding\' can also be set at the column family level. However, the setting at this level takes precedence if \'encoding\' is set at both levels.
    encoding :: (Core.Maybe Core.Text),
    -- | [Optional] If the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as the column field name and is used as field name in queries.
    fieldName :: (Core.Maybe Core.Text),
    -- | [Optional] If this is set, only the latest version of value in this column are exposed. \'onlyReadLatest\' can also be set at the column family level. However, the setting at this level takes precedence if \'onlyReadLatest\' is set at both levels.
    onlyReadLatest :: (Core.Maybe Core.Bool),
    -- | [Required] Qualifier of the column. Columns in the parent column family that has this exact qualifier are exposed as . field. If the qualifier is valid UTF-8 string, it can be specified in the qualifier/string field. Otherwise, a base-64 encoded value must be set to qualifier/encoded. The column field name is the same as the column qualifier. However, if the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as field_name.
    qualifierEncoded :: (Core.Maybe Core.Base64),
    -- |
    qualifierString :: (Core.Maybe Core.Text),
    -- | [Optional] The type to convert the value in cells of this column. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is BYTES. \'type\' can also be set at the column family level. However, the setting at this level takes precedence if \'type\' is set at both levels.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableColumn' with the minimum fields required to make a request.
newBigtableColumn ::
  BigtableColumn
newBigtableColumn =
  BigtableColumn
    { encoding = Core.Nothing,
      fieldName = Core.Nothing,
      onlyReadLatest = Core.Nothing,
      qualifierEncoded = Core.Nothing,
      qualifierString = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON BigtableColumn where
  parseJSON =
    Core.withObject
      "BigtableColumn"
      ( \o ->
          BigtableColumn
            Core.<$> (o Core..:? "encoding")
            Core.<*> (o Core..:? "fieldName")
            Core.<*> (o Core..:? "onlyReadLatest")
            Core.<*> (o Core..:? "qualifierEncoded")
            Core.<*> (o Core..:? "qualifierString")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON BigtableColumn where
  toJSON BigtableColumn {..} =
    Core.object
      ( Core.catMaybes
          [ ("encoding" Core..=) Core.<$> encoding,
            ("fieldName" Core..=) Core.<$> fieldName,
            ("onlyReadLatest" Core..=) Core.<$> onlyReadLatest,
            ("qualifierEncoded" Core..=)
              Core.<$> qualifierEncoded,
            ("qualifierString" Core..=) Core.<$> qualifierString,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newBigtableColumnFamily' smart constructor.
data BigtableColumnFamily = BigtableColumnFamily
  { -- | [Optional] Lists of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as .. Other columns can be accessed as a list through .Column field.
    columns :: (Core.Maybe [BigtableColumn]),
    -- | [Optional] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in \'columns\' and specifying an encoding for it.
    encoding :: (Core.Maybe Core.Text),
    -- | Identifier of the column family.
    familyId :: (Core.Maybe Core.Text),
    -- | [Optional] If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in \'columns\' and specifying a different setting for that column.
    onlyReadLatest :: (Core.Maybe Core.Bool),
    -- | [Optional] The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is BYTES. This can be overridden for a specific column by listing that column in \'columns\' and specifying a type for it.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableColumnFamily' with the minimum fields required to make a request.
newBigtableColumnFamily ::
  BigtableColumnFamily
newBigtableColumnFamily =
  BigtableColumnFamily
    { columns = Core.Nothing,
      encoding = Core.Nothing,
      familyId = Core.Nothing,
      onlyReadLatest = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON BigtableColumnFamily where
  parseJSON =
    Core.withObject
      "BigtableColumnFamily"
      ( \o ->
          BigtableColumnFamily
            Core.<$> (o Core..:? "columns")
            Core.<*> (o Core..:? "encoding")
            Core.<*> (o Core..:? "familyId")
            Core.<*> (o Core..:? "onlyReadLatest")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON BigtableColumnFamily where
  toJSON BigtableColumnFamily {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            ("encoding" Core..=) Core.<$> encoding,
            ("familyId" Core..=) Core.<$> familyId,
            ("onlyReadLatest" Core..=) Core.<$> onlyReadLatest,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newBigtableOptions' smart constructor.
data BigtableOptions = BigtableOptions
  { -- | [Optional] List of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the \'type\' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.
    columnFamilies :: (Core.Maybe [BigtableColumnFamily]),
    -- | [Optional] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
    ignoreUnspecifiedColumnFamilies :: (Core.Maybe Core.Bool),
    -- | [Optional] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
    readRowkeyAsString :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigtableOptions' with the minimum fields required to make a request.
newBigtableOptions ::
  BigtableOptions
newBigtableOptions =
  BigtableOptions
    { columnFamilies = Core.Nothing,
      ignoreUnspecifiedColumnFamilies = Core.Nothing,
      readRowkeyAsString = Core.Nothing
    }

instance Core.FromJSON BigtableOptions where
  parseJSON =
    Core.withObject
      "BigtableOptions"
      ( \o ->
          BigtableOptions
            Core.<$> (o Core..:? "columnFamilies")
            Core.<*> (o Core..:? "ignoreUnspecifiedColumnFamilies")
            Core.<*> (o Core..:? "readRowkeyAsString")
      )

instance Core.ToJSON BigtableOptions where
  toJSON BigtableOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnFamilies" Core..=) Core.<$> columnFamilies,
            ("ignoreUnspecifiedColumnFamilies" Core..=)
              Core.<$> ignoreUnspecifiedColumnFamilies,
            ("readRowkeyAsString" Core..=)
              Core.<$> readRowkeyAsString
          ]
      )

-- | Evaluation metrics for binary classification\/classifier models.
--
-- /See:/ 'newBinaryClassificationMetrics' smart constructor.
data BinaryClassificationMetrics = BinaryClassificationMetrics
  { -- | Aggregate classification metrics.
    aggregateClassificationMetrics :: (Core.Maybe AggregateClassificationMetrics),
    -- | Binary confusion matrix at multiple thresholds.
    binaryConfusionMatrixList :: (Core.Maybe [BinaryConfusionMatrix]),
    -- | Label representing the negative class.
    negativeLabel :: (Core.Maybe Core.Text),
    -- | Label representing the positive class.
    positiveLabel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryClassificationMetrics' with the minimum fields required to make a request.
newBinaryClassificationMetrics ::
  BinaryClassificationMetrics
newBinaryClassificationMetrics =
  BinaryClassificationMetrics
    { aggregateClassificationMetrics = Core.Nothing,
      binaryConfusionMatrixList = Core.Nothing,
      negativeLabel = Core.Nothing,
      positiveLabel = Core.Nothing
    }

instance Core.FromJSON BinaryClassificationMetrics where
  parseJSON =
    Core.withObject
      "BinaryClassificationMetrics"
      ( \o ->
          BinaryClassificationMetrics
            Core.<$> (o Core..:? "aggregateClassificationMetrics")
            Core.<*> (o Core..:? "binaryConfusionMatrixList")
            Core.<*> (o Core..:? "negativeLabel")
            Core.<*> (o Core..:? "positiveLabel")
      )

instance Core.ToJSON BinaryClassificationMetrics where
  toJSON BinaryClassificationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregateClassificationMetrics" Core..=)
              Core.<$> aggregateClassificationMetrics,
            ("binaryConfusionMatrixList" Core..=)
              Core.<$> binaryConfusionMatrixList,
            ("negativeLabel" Core..=) Core.<$> negativeLabel,
            ("positiveLabel" Core..=) Core.<$> positiveLabel
          ]
      )

-- | Confusion matrix for binary classification models.
--
-- /See:/ 'newBinaryConfusionMatrix' smart constructor.
data BinaryConfusionMatrix = BinaryConfusionMatrix
  { -- | The fraction of predictions given the correct label.
    accuracy :: (Core.Maybe Core.Double),
    -- | The equally weighted average of recall and precision.
    f1Score :: (Core.Maybe Core.Double),
    -- | Number of false samples predicted as false.
    falseNegatives :: (Core.Maybe Core.Int64),
    -- | Number of false samples predicted as true.
    falsePositives :: (Core.Maybe Core.Int64),
    -- | Threshold value used when computing each of the following metric.
    positiveClassThreshold :: (Core.Maybe Core.Double),
    -- | The fraction of actual positive predictions that had positive actual labels.
    precision :: (Core.Maybe Core.Double),
    -- | The fraction of actual positive labels that were given a positive prediction.
    recall :: (Core.Maybe Core.Double),
    -- | Number of true samples predicted as false.
    trueNegatives :: (Core.Maybe Core.Int64),
    -- | Number of true samples predicted as true.
    truePositives :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BinaryConfusionMatrix' with the minimum fields required to make a request.
newBinaryConfusionMatrix ::
  BinaryConfusionMatrix
newBinaryConfusionMatrix =
  BinaryConfusionMatrix
    { accuracy = Core.Nothing,
      f1Score = Core.Nothing,
      falseNegatives = Core.Nothing,
      falsePositives = Core.Nothing,
      positiveClassThreshold = Core.Nothing,
      precision = Core.Nothing,
      recall = Core.Nothing,
      trueNegatives = Core.Nothing,
      truePositives = Core.Nothing
    }

instance Core.FromJSON BinaryConfusionMatrix where
  parseJSON =
    Core.withObject
      "BinaryConfusionMatrix"
      ( \o ->
          BinaryConfusionMatrix
            Core.<$> (o Core..:? "accuracy")
            Core.<*> (o Core..:? "f1Score")
            Core.<*> ( o Core..:? "falseNegatives"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "falsePositives"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "positiveClassThreshold")
            Core.<*> (o Core..:? "precision")
            Core.<*> (o Core..:? "recall")
            Core.<*> ( o Core..:? "trueNegatives"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "truePositives"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON BinaryConfusionMatrix where
  toJSON BinaryConfusionMatrix {..} =
    Core.object
      ( Core.catMaybes
          [ ("accuracy" Core..=) Core.<$> accuracy,
            ("f1Score" Core..=) Core.<$> f1Score,
            ("falseNegatives" Core..=) Core.. Core.AsText
              Core.<$> falseNegatives,
            ("falsePositives" Core..=) Core.. Core.AsText
              Core.<$> falsePositives,
            ("positiveClassThreshold" Core..=)
              Core.<$> positiveClassThreshold,
            ("precision" Core..=) Core.<$> precision,
            ("recall" Core..=) Core.<$> recall,
            ("trueNegatives" Core..=) Core.. Core.AsText
              Core.<$> trueNegatives,
            ("truePositives" Core..=) Core.. Core.AsText
              Core.<$> truePositives
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newBinding' smart constructor.
data Binding = Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe Expr),
    -- | Specifies the principals requesting access for a Google Cloud resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a Google service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @serviceAccount:{projectid}.svc.id.goog[{namespace}\/{kubernetes-sa}]@: An identifier for a <https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts Kubernetes service account>. For example, @my-project.svc.id.goog[my-namespace\/my-kubernetes-sa]@. *
    -- @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus
    -- unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
newBinding ::
  Binding
newBinding =
  Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON Binding where
  parseJSON =
    Core.withObject
      "Binding"
      ( \o ->
          Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON Binding where
  toJSON Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

--
-- /See:/ 'newBqmlIterationResult' smart constructor.
data BqmlIterationResult = BqmlIterationResult
  { -- | [Output-only, Beta] Time taken to run the training iteration in milliseconds.
    durationMs :: (Core.Maybe Core.Int64),
    -- | [Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval/split/method option is specified as no/split or auto/split with input data size less than 500 rows.
    evalLoss :: (Core.Maybe Core.Double),
    -- | [Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.
    index :: (Core.Maybe Core.Int32),
    -- | [Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn/rate/strategy option is not constant.
    learnRate :: (Core.Maybe Core.Double),
    -- | [Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.
    trainingLoss :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BqmlIterationResult' with the minimum fields required to make a request.
newBqmlIterationResult ::
  BqmlIterationResult
newBqmlIterationResult =
  BqmlIterationResult
    { durationMs = Core.Nothing,
      evalLoss = Core.Nothing,
      index = Core.Nothing,
      learnRate = Core.Nothing,
      trainingLoss = Core.Nothing
    }

instance Core.FromJSON BqmlIterationResult where
  parseJSON =
    Core.withObject
      "BqmlIterationResult"
      ( \o ->
          BqmlIterationResult
            Core.<$> ( o Core..:? "durationMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "evalLoss")
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "learnRate")
            Core.<*> (o Core..:? "trainingLoss")
      )

instance Core.ToJSON BqmlIterationResult where
  toJSON BqmlIterationResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationMs" Core..=) Core.. Core.AsText
              Core.<$> durationMs,
            ("evalLoss" Core..=) Core.<$> evalLoss,
            ("index" Core..=) Core.<$> index,
            ("learnRate" Core..=) Core.<$> learnRate,
            ("trainingLoss" Core..=) Core.<$> trainingLoss
          ]
      )

--
-- /See:/ 'newBqmlTrainingRun' smart constructor.
data BqmlTrainingRun = BqmlTrainingRun
  { -- | [Output-only, Beta] List of each iteration results.
    iterationResults :: (Core.Maybe [BqmlIterationResult]),
    -- | [Output-only, Beta] Training run start time in milliseconds since the epoch.
    startTime :: (Core.Maybe Core.DateTime),
    -- | [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.
    state :: (Core.Maybe Core.Text),
    -- | [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
    trainingOptions :: (Core.Maybe BqmlTrainingRun_TrainingOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BqmlTrainingRun' with the minimum fields required to make a request.
newBqmlTrainingRun ::
  BqmlTrainingRun
newBqmlTrainingRun =
  BqmlTrainingRun
    { iterationResults = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      trainingOptions = Core.Nothing
    }

instance Core.FromJSON BqmlTrainingRun where
  parseJSON =
    Core.withObject
      "BqmlTrainingRun"
      ( \o ->
          BqmlTrainingRun
            Core.<$> (o Core..:? "iterationResults")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "trainingOptions")
      )

instance Core.ToJSON BqmlTrainingRun where
  toJSON BqmlTrainingRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("iterationResults" Core..=)
              Core.<$> iterationResults,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("trainingOptions" Core..=)
              Core.<$> trainingOptions
          ]
      )

-- | [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
--
-- /See:/ 'newBqmlTrainingRun_TrainingOptions' smart constructor.
data BqmlTrainingRun_TrainingOptions = BqmlTrainingRun_TrainingOptions
  { -- |
    earlyStop :: (Core.Maybe Core.Bool),
    -- |
    l1Reg :: (Core.Maybe Core.Double),
    -- |
    l2Reg :: (Core.Maybe Core.Double),
    -- |
    learnRate :: (Core.Maybe Core.Double),
    -- |
    learnRateStrategy :: (Core.Maybe Core.Text),
    -- |
    lineSearchInitLearnRate :: (Core.Maybe Core.Double),
    -- |
    maxIteration :: (Core.Maybe Core.Int64),
    -- |
    minRelProgress :: (Core.Maybe Core.Double),
    -- |
    warmStart :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BqmlTrainingRun_TrainingOptions' with the minimum fields required to make a request.
newBqmlTrainingRun_TrainingOptions ::
  BqmlTrainingRun_TrainingOptions
newBqmlTrainingRun_TrainingOptions =
  BqmlTrainingRun_TrainingOptions
    { earlyStop = Core.Nothing,
      l1Reg = Core.Nothing,
      l2Reg = Core.Nothing,
      learnRate = Core.Nothing,
      learnRateStrategy = Core.Nothing,
      lineSearchInitLearnRate = Core.Nothing,
      maxIteration = Core.Nothing,
      minRelProgress = Core.Nothing,
      warmStart = Core.Nothing
    }

instance
  Core.FromJSON
    BqmlTrainingRun_TrainingOptions
  where
  parseJSON =
    Core.withObject
      "BqmlTrainingRun_TrainingOptions"
      ( \o ->
          BqmlTrainingRun_TrainingOptions
            Core.<$> (o Core..:? "earlyStop")
            Core.<*> (o Core..:? "l1Reg")
            Core.<*> (o Core..:? "l2Reg")
            Core.<*> (o Core..:? "learnRate")
            Core.<*> (o Core..:? "learnRateStrategy")
            Core.<*> (o Core..:? "lineSearchInitLearnRate")
            Core.<*> ( o Core..:? "maxIteration"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "minRelProgress")
            Core.<*> (o Core..:? "warmStart")
      )

instance Core.ToJSON BqmlTrainingRun_TrainingOptions where
  toJSON BqmlTrainingRun_TrainingOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("earlyStop" Core..=) Core.<$> earlyStop,
            ("l1Reg" Core..=) Core.<$> l1Reg,
            ("l2Reg" Core..=) Core.<$> l2Reg,
            ("learnRate" Core..=) Core.<$> learnRate,
            ("learnRateStrategy" Core..=)
              Core.<$> learnRateStrategy,
            ("lineSearchInitLearnRate" Core..=)
              Core.<$> lineSearchInitLearnRate,
            ("maxIteration" Core..=) Core.. Core.AsText
              Core.<$> maxIteration,
            ("minRelProgress" Core..=) Core.<$> minRelProgress,
            ("warmStart" Core..=) Core.<$> warmStart
          ]
      )

-- | Representative value of a categorical feature.
--
-- /See:/ 'newCategoricalValue' smart constructor.
newtype CategoricalValue = CategoricalValue
  { -- | Counts of all categories for the categorical feature. If there are more than ten categories, we return top ten (by count) and return one more CategoryCount with category \"/OTHER/\" and count as aggregate counts of remaining categories.
    categoryCounts :: (Core.Maybe [CategoryCount])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CategoricalValue' with the minimum fields required to make a request.
newCategoricalValue ::
  CategoricalValue
newCategoricalValue = CategoricalValue {categoryCounts = Core.Nothing}

instance Core.FromJSON CategoricalValue where
  parseJSON =
    Core.withObject
      "CategoricalValue"
      ( \o ->
          CategoricalValue
            Core.<$> (o Core..:? "categoryCounts")
      )

instance Core.ToJSON CategoricalValue where
  toJSON CategoricalValue {..} =
    Core.object
      ( Core.catMaybes
          [("categoryCounts" Core..=) Core.<$> categoryCounts]
      )

-- | Represents the count of a single category within the cluster.
--
-- /See:/ 'newCategoryCount' smart constructor.
data CategoryCount = CategoryCount
  { -- | The name of category.
    category :: (Core.Maybe Core.Text),
    -- | The count of training samples matching the category within the cluster.
    count :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CategoryCount' with the minimum fields required to make a request.
newCategoryCount ::
  CategoryCount
newCategoryCount = CategoryCount {category = Core.Nothing, count = Core.Nothing}

instance Core.FromJSON CategoryCount where
  parseJSON =
    Core.withObject
      "CategoryCount"
      ( \o ->
          CategoryCount
            Core.<$> (o Core..:? "category")
            Core.<*> ( o Core..:? "count"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON CategoryCount where
  toJSON CategoryCount {..} =
    Core.object
      ( Core.catMaybes
          [ ("category" Core..=) Core.<$> category,
            ("count" Core..=) Core.. Core.AsText Core.<$> count
          ]
      )

--
-- /See:/ 'newCloneDefinition' smart constructor.
data CloneDefinition = CloneDefinition
  { -- | [Required] Reference describing the ID of the table that was cloned.
    baseTableReference :: (Core.Maybe TableReference),
    -- | [Required] The time at which the base table was cloned. This value is reported in the JSON response using RFC3339 format.
    cloneTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloneDefinition' with the minimum fields required to make a request.
newCloneDefinition ::
  CloneDefinition
newCloneDefinition =
  CloneDefinition {baseTableReference = Core.Nothing, cloneTime = Core.Nothing}

instance Core.FromJSON CloneDefinition where
  parseJSON =
    Core.withObject
      "CloneDefinition"
      ( \o ->
          CloneDefinition
            Core.<$> (o Core..:? "baseTableReference")
            Core.<*> (o Core..:? "cloneTime")
      )

instance Core.ToJSON CloneDefinition where
  toJSON CloneDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseTableReference" Core..=)
              Core.<$> baseTableReference,
            ("cloneTime" Core..=) Core.<$> cloneTime
          ]
      )

-- | Message containing the information about one cluster.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster
  { -- | Centroid id.
    centroidId :: (Core.Maybe Core.Int64),
    -- | Count of training data rows that were assigned to this cluster.
    count :: (Core.Maybe Core.Int64),
    -- | Values of highly variant features for this cluster.
    featureValues :: (Core.Maybe [FeatureValue])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
newCluster ::
  Cluster
newCluster =
  Cluster
    { centroidId = Core.Nothing,
      count = Core.Nothing,
      featureValues = Core.Nothing
    }

instance Core.FromJSON Cluster where
  parseJSON =
    Core.withObject
      "Cluster"
      ( \o ->
          Cluster
            Core.<$> ( o Core..:? "centroidId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "count"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "featureValues")
      )

instance Core.ToJSON Cluster where
  toJSON Cluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("centroidId" Core..=) Core.. Core.AsText
              Core.<$> centroidId,
            ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("featureValues" Core..=) Core.<$> featureValues
          ]
      )

-- | Information about a single cluster for clustering model.
--
-- /See:/ 'newClusterInfo' smart constructor.
data ClusterInfo = ClusterInfo
  { -- | Centroid id.
    centroidId :: (Core.Maybe Core.Int64),
    -- | Cluster radius, the average distance from centroid to each point assigned to the cluster.
    clusterRadius :: (Core.Maybe Core.Double),
    -- | Cluster size, the total number of points assigned to the cluster.
    clusterSize :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusterInfo' with the minimum fields required to make a request.
newClusterInfo ::
  ClusterInfo
newClusterInfo =
  ClusterInfo
    { centroidId = Core.Nothing,
      clusterRadius = Core.Nothing,
      clusterSize = Core.Nothing
    }

instance Core.FromJSON ClusterInfo where
  parseJSON =
    Core.withObject
      "ClusterInfo"
      ( \o ->
          ClusterInfo
            Core.<$> ( o Core..:? "centroidId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "clusterRadius")
            Core.<*> ( o Core..:? "clusterSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON ClusterInfo where
  toJSON ClusterInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("centroidId" Core..=) Core.. Core.AsText
              Core.<$> centroidId,
            ("clusterRadius" Core..=) Core.<$> clusterRadius,
            ("clusterSize" Core..=) Core.. Core.AsText
              Core.<$> clusterSize
          ]
      )

--
-- /See:/ 'newClustering' smart constructor.
newtype Clustering = Clustering
  { -- | [Repeated] One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.
    fields :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Clustering' with the minimum fields required to make a request.
newClustering ::
  Clustering
newClustering = Clustering {fields = Core.Nothing}

instance Core.FromJSON Clustering where
  parseJSON =
    Core.withObject
      "Clustering"
      (\o -> Clustering Core.<$> (o Core..:? "fields"))

instance Core.ToJSON Clustering where
  toJSON Clustering {..} =
    Core.object
      (Core.catMaybes [("fields" Core..=) Core.<$> fields])

-- | Evaluation metrics for clustering models.
--
-- /See:/ 'newClusteringMetrics' smart constructor.
data ClusteringMetrics = ClusteringMetrics
  { -- | Information for all clusters.
    clusters :: (Core.Maybe [Cluster]),
    -- | Davies-Bouldin index.
    daviesBouldinIndex :: (Core.Maybe Core.Double),
    -- | Mean of squared distances between each sample to its cluster centroid.
    meanSquaredDistance :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClusteringMetrics' with the minimum fields required to make a request.
newClusteringMetrics ::
  ClusteringMetrics
newClusteringMetrics =
  ClusteringMetrics
    { clusters = Core.Nothing,
      daviesBouldinIndex = Core.Nothing,
      meanSquaredDistance = Core.Nothing
    }

instance Core.FromJSON ClusteringMetrics where
  parseJSON =
    Core.withObject
      "ClusteringMetrics"
      ( \o ->
          ClusteringMetrics
            Core.<$> (o Core..:? "clusters")
            Core.<*> (o Core..:? "daviesBouldinIndex")
            Core.<*> (o Core..:? "meanSquaredDistance")
      )

instance Core.ToJSON ClusteringMetrics where
  toJSON ClusteringMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusters" Core..=) Core.<$> clusters,
            ("daviesBouldinIndex" Core..=)
              Core.<$> daviesBouldinIndex,
            ("meanSquaredDistance" Core..=)
              Core.<$> meanSquaredDistance
          ]
      )

-- | Confusion matrix for multi-class classification models.
--
-- /See:/ 'newConfusionMatrix' smart constructor.
data ConfusionMatrix = ConfusionMatrix
  { -- | Confidence threshold used when computing the entries of the confusion matrix.
    confidenceThreshold :: (Core.Maybe Core.Double),
    -- | One row per actual label.
    rows :: (Core.Maybe [Row])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfusionMatrix' with the minimum fields required to make a request.
newConfusionMatrix ::
  ConfusionMatrix
newConfusionMatrix =
  ConfusionMatrix {confidenceThreshold = Core.Nothing, rows = Core.Nothing}

instance Core.FromJSON ConfusionMatrix where
  parseJSON =
    Core.withObject
      "ConfusionMatrix"
      ( \o ->
          ConfusionMatrix
            Core.<$> (o Core..:? "confidenceThreshold")
            Core.<*> (o Core..:? "rows")
      )

instance Core.ToJSON ConfusionMatrix where
  toJSON ConfusionMatrix {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceThreshold" Core..=)
              Core.<$> confidenceThreshold,
            ("rows" Core..=) Core.<$> rows
          ]
      )

--
-- /See:/ 'newConnectionProperty' smart constructor.
data ConnectionProperty = ConnectionProperty
  { -- | [Required] Name of the connection property to set.
    key :: (Core.Maybe Core.Text),
    -- | [Required] Value of the connection property.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConnectionProperty' with the minimum fields required to make a request.
newConnectionProperty ::
  ConnectionProperty
newConnectionProperty =
  ConnectionProperty {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON ConnectionProperty where
  parseJSON =
    Core.withObject
      "ConnectionProperty"
      ( \o ->
          ConnectionProperty
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON ConnectionProperty where
  toJSON ConnectionProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newCsvOptions' smart constructor.
data CsvOptions = CsvOptions
  { -- | [Optional] Indicates if BigQuery should accept rows that are missing trailing optional columns. If true, BigQuery treats missing trailing columns as null values. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
    allowJaggedRows :: (Core.Maybe Core.Bool),
    -- | [Optional] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
    allowQuotedNewlines :: (Core.Maybe Core.Bool),
    -- | [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
    encoding :: (Core.Maybe Core.Text),
    -- | [Optional] The separator for fields in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence \"\\t\" to specify a tab separator. The default value is a comma (\',\').
    fieldDelimiter :: (Core.Maybe Core.Text),
    -- | [Optional] An custom string that will represent a NULL value in CSV import data.
    nullMarker :: (Core.Maybe Core.Text),
    -- | [Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from \'\\x00\' to \'\\x1F\') when loading from CSV. Only applicable to CSV, ignored for other formats.
    preserveAsciiControlCharacters :: (Core.Maybe Core.Bool),
    -- | [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote (\'\"\'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
    quote :: Core.Text,
    -- | [Optional] The number of rows at the top of a CSV file that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
    skipLeadingRows :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CsvOptions' with the minimum fields required to make a request.
newCsvOptions ::
  CsvOptions
newCsvOptions =
  CsvOptions
    { allowJaggedRows = Core.Nothing,
      allowQuotedNewlines = Core.Nothing,
      encoding = Core.Nothing,
      fieldDelimiter = Core.Nothing,
      nullMarker = Core.Nothing,
      preserveAsciiControlCharacters = Core.Nothing,
      quote = "\"",
      skipLeadingRows = Core.Nothing
    }

instance Core.FromJSON CsvOptions where
  parseJSON =
    Core.withObject
      "CsvOptions"
      ( \o ->
          CsvOptions
            Core.<$> (o Core..:? "allowJaggedRows")
            Core.<*> (o Core..:? "allowQuotedNewlines")
            Core.<*> (o Core..:? "encoding")
            Core.<*> (o Core..:? "fieldDelimiter")
            Core.<*> (o Core..:? "null_marker")
            Core.<*> (o Core..:? "preserveAsciiControlCharacters")
            Core.<*> (o Core..:? "quote" Core..!= "\"")
            Core.<*> ( o Core..:? "skipLeadingRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON CsvOptions where
  toJSON CsvOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowJaggedRows" Core..=)
              Core.<$> allowJaggedRows,
            ("allowQuotedNewlines" Core..=)
              Core.<$> allowQuotedNewlines,
            ("encoding" Core..=) Core.<$> encoding,
            ("fieldDelimiter" Core..=) Core.<$> fieldDelimiter,
            ("null_marker" Core..=) Core.<$> nullMarker,
            ("preserveAsciiControlCharacters" Core..=)
              Core.<$> preserveAsciiControlCharacters,
            Core.Just ("quote" Core..= quote),
            ("skipLeadingRows" Core..=) Core.. Core.AsText
              Core.<$> skipLeadingRows
          ]
      )

--
-- /See:/ 'newDataMaskingStatistics' smart constructor.
newtype DataMaskingStatistics = DataMaskingStatistics
  { -- | [Output-only] [Preview] Whether any accessed data was protected by data masking. The actual evaluation is done by accessStats.masked/field/count > 0. Since this is only used for the discovery_doc generation purpose, as long as the type (boolean) matches, client library can leverage this. The actual evaluation of the variable is done else-where.
    dataMaskingApplied :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataMaskingStatistics' with the minimum fields required to make a request.
newDataMaskingStatistics ::
  DataMaskingStatistics
newDataMaskingStatistics =
  DataMaskingStatistics {dataMaskingApplied = Core.False}

instance Core.FromJSON DataMaskingStatistics where
  parseJSON =
    Core.withObject
      "DataMaskingStatistics"
      ( \o ->
          DataMaskingStatistics
            Core.<$> ( o Core..:? "dataMaskingApplied"
                         Core..!= Core.False
                     )
      )

instance Core.ToJSON DataMaskingStatistics where
  toJSON DataMaskingStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("dataMaskingApplied" Core..= dataMaskingApplied)
          ]
      )

-- | Data split result. This contains references to the training and evaluation data tables that were used to train the model.
--
-- /See:/ 'newDataSplitResult' smart constructor.
data DataSplitResult = DataSplitResult
  { -- | Table reference of the evaluation data after split.
    evaluationTable :: (Core.Maybe TableReference),
    -- | Table reference of the test data after split.
    testTable :: (Core.Maybe TableReference),
    -- | Table reference of the training data after split.
    trainingTable :: (Core.Maybe TableReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataSplitResult' with the minimum fields required to make a request.
newDataSplitResult ::
  DataSplitResult
newDataSplitResult =
  DataSplitResult
    { evaluationTable = Core.Nothing,
      testTable = Core.Nothing,
      trainingTable = Core.Nothing
    }

instance Core.FromJSON DataSplitResult where
  parseJSON =
    Core.withObject
      "DataSplitResult"
      ( \o ->
          DataSplitResult
            Core.<$> (o Core..:? "evaluationTable")
            Core.<*> (o Core..:? "testTable")
            Core.<*> (o Core..:? "trainingTable")
      )

instance Core.ToJSON DataSplitResult where
  toJSON DataSplitResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("evaluationTable" Core..=)
              Core.<$> evaluationTable,
            ("testTable" Core..=) Core.<$> testTable,
            ("trainingTable" Core..=) Core.<$> trainingTable
          ]
      )

--
-- /See:/ 'newDataset' smart constructor.
data Dataset = Dataset
  { -- | [Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;
    access :: (Core.Maybe [Dataset_AccessItem]),
    -- | [Output-only] The time when this dataset was created, in milliseconds since the epoch.
    creationTime :: (Core.Maybe Core.Int64),
    -- | [Required] A reference that identifies the dataset.
    datasetReference :: (Core.Maybe DatasetReference),
    -- | [Output-only] The default collation of the dataset.
    defaultCollation :: (Core.Maybe Core.Text),
    -- |
    defaultEncryptionConfiguration :: (Core.Maybe EncryptionConfiguration),
    -- | [Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.
    defaultPartitionExpirationMs :: (Core.Maybe Core.Int64),
    -- | [Output-only] The default rounding mode of the dataset.
    defaultRoundingMode :: (Core.Maybe Core.Text),
    -- | [Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table\'s expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.
    defaultTableExpirationMs :: (Core.Maybe Core.Int64),
    -- | [Optional] A user-friendly description of the dataset.
    description :: (Core.Maybe Core.Text),
    -- | [Output-only] A hash of the resource.
    etag :: (Core.Maybe Core.Text),
    -- | [Optional] A descriptive name for the dataset.
    friendlyName :: (Core.Maybe Core.Text),
    -- | [Output-only] The fully-qualified unique name of the dataset in the format projectId:datasetId. The dataset name without the project name is given in the datasetId field. When creating a new dataset, leave this field blank, and instead specify the datasetId field.
    id :: (Core.Maybe Core.Text),
    -- | [Optional] Indicates if table names are case insensitive in the dataset.
    isCaseInsensitive :: (Core.Maybe Core.Bool),
    -- | [Output-only] The resource type.
    kind :: Core.Text,
    -- | The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
    labels :: (Core.Maybe Dataset_Labels),
    -- | [Output-only] The date when this dataset or any of its tables was last modified, in milliseconds since the epoch.
    lastModifiedTime :: (Core.Maybe Core.Int64),
    -- | The geographic location where the dataset should reside. The default value is US. See details at https:\/\/cloud.google.com\/bigquery\/docs\/locations.
    location :: (Core.Maybe Core.Text),
    -- | [Optional] Number of hours for the max time travel for all tables in the dataset.
    maxTimeTravelHours :: (Core.Maybe Core.Int64),
    -- | [Output-only] Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | [Output-only] A URL that can be used to access the resource again. You can use this URL in Get or Update requests to the resource.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.
    storageBillingModel :: (Core.Maybe Core.Text),
    -- | [Optional]The tags associated with this dataset. Tag keys are globally unique.
    tags :: (Core.Maybe [Dataset_TagsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dataset' with the minimum fields required to make a request.
newDataset ::
  Dataset
newDataset =
  Dataset
    { access = Core.Nothing,
      creationTime = Core.Nothing,
      datasetReference = Core.Nothing,
      defaultCollation = Core.Nothing,
      defaultEncryptionConfiguration = Core.Nothing,
      defaultPartitionExpirationMs = Core.Nothing,
      defaultRoundingMode = Core.Nothing,
      defaultTableExpirationMs = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      friendlyName = Core.Nothing,
      id = Core.Nothing,
      isCaseInsensitive = Core.Nothing,
      kind = "bigquery#dataset",
      labels = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      location = Core.Nothing,
      maxTimeTravelHours = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      selfLink = Core.Nothing,
      storageBillingModel = Core.Nothing,
      tags = Core.Nothing
    }

instance Core.FromJSON Dataset where
  parseJSON =
    Core.withObject
      "Dataset"
      ( \o ->
          Dataset
            Core.<$> (o Core..:? "access")
            Core.<*> ( o Core..:? "creationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "datasetReference")
            Core.<*> (o Core..:? "defaultCollation")
            Core.<*> (o Core..:? "defaultEncryptionConfiguration")
            Core.<*> ( o Core..:? "defaultPartitionExpirationMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "defaultRoundingMode")
            Core.<*> ( o Core..:? "defaultTableExpirationMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "friendlyName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isCaseInsensitive")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#dataset")
            Core.<*> (o Core..:? "labels")
            Core.<*> ( o Core..:? "lastModifiedTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "location")
            Core.<*> ( o Core..:? "maxTimeTravelHours"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "storageBillingModel")
            Core.<*> (o Core..:? "tags")
      )

instance Core.ToJSON Dataset where
  toJSON Dataset {..} =
    Core.object
      ( Core.catMaybes
          [ ("access" Core..=) Core.<$> access,
            ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("datasetReference" Core..=)
              Core.<$> datasetReference,
            ("defaultCollation" Core..=)
              Core.<$> defaultCollation,
            ("defaultEncryptionConfiguration" Core..=)
              Core.<$> defaultEncryptionConfiguration,
            ("defaultPartitionExpirationMs" Core..=)
              Core.. Core.AsText
              Core.<$> defaultPartitionExpirationMs,
            ("defaultRoundingMode" Core..=)
              Core.<$> defaultRoundingMode,
            ("defaultTableExpirationMs" Core..=)
              Core.. Core.AsText
              Core.<$> defaultTableExpirationMs,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("friendlyName" Core..=) Core.<$> friendlyName,
            ("id" Core..=) Core.<$> id,
            ("isCaseInsensitive" Core..=)
              Core.<$> isCaseInsensitive,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("lastModifiedTime" Core..=) Core.. Core.AsText
              Core.<$> lastModifiedTime,
            ("location" Core..=) Core.<$> location,
            ("maxTimeTravelHours" Core..=) Core.. Core.AsText
              Core.<$> maxTimeTravelHours,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("storageBillingModel" Core..=)
              Core.<$> storageBillingModel,
            ("tags" Core..=) Core.<$> tags
          ]
      )

--
-- /See:/ 'newDataset_AccessItem' smart constructor.
data Dataset_AccessItem = Dataset_AccessItem
  { -- | [Pick one] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation.
    dataset :: (Core.Maybe DatasetAccessEntry),
    -- | [Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: \"example.com\". Maps to IAM policy member \"domain:DOMAIN\".
    domain :: (Core.Maybe Core.Text),
    -- | [Pick one] An email address of a Google Group to grant access to. Maps to IAM policy member \"group:GROUP\".
    groupByEmail :: (Core.Maybe Core.Text),
    -- | [Pick one] Some other type of member that appears in the IAM Policy but isn\'t a user, group, domain, or special group.
    iamMember :: (Core.Maybe Core.Text),
    -- | [Required] An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: OWNER roles\/bigquery.dataOwner WRITER roles\/bigquery.dataEditor READER roles\/bigquery.dataViewer This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to \"roles\/bigquery.dataOwner\", it will be returned back as \"OWNER\".
    role' :: (Core.Maybe Core.Text),
    -- | [Pick one] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views\/tables\/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation.
    routine :: (Core.Maybe RoutineReference),
    -- | [Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members.
    specialGroup :: (Core.Maybe Core.Text),
    -- | [Pick one] An email address of a user to grant access to. For example: fred\@example.com. Maps to IAM policy member \"user:EMAIL\" or \"serviceAccount:EMAIL\".
    userByEmail :: (Core.Maybe Core.Text),
    -- | [Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.
    view :: (Core.Maybe TableReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dataset_AccessItem' with the minimum fields required to make a request.
newDataset_AccessItem ::
  Dataset_AccessItem
newDataset_AccessItem =
  Dataset_AccessItem
    { dataset = Core.Nothing,
      domain = Core.Nothing,
      groupByEmail = Core.Nothing,
      iamMember = Core.Nothing,
      role' = Core.Nothing,
      routine = Core.Nothing,
      specialGroup = Core.Nothing,
      userByEmail = Core.Nothing,
      view = Core.Nothing
    }

instance Core.FromJSON Dataset_AccessItem where
  parseJSON =
    Core.withObject
      "Dataset_AccessItem"
      ( \o ->
          Dataset_AccessItem
            Core.<$> (o Core..:? "dataset")
            Core.<*> (o Core..:? "domain")
            Core.<*> (o Core..:? "groupByEmail")
            Core.<*> (o Core..:? "iamMember")
            Core.<*> (o Core..:? "role")
            Core.<*> (o Core..:? "routine")
            Core.<*> (o Core..:? "specialGroup")
            Core.<*> (o Core..:? "userByEmail")
            Core.<*> (o Core..:? "view")
      )

instance Core.ToJSON Dataset_AccessItem where
  toJSON Dataset_AccessItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataset" Core..=) Core.<$> dataset,
            ("domain" Core..=) Core.<$> domain,
            ("groupByEmail" Core..=) Core.<$> groupByEmail,
            ("iamMember" Core..=) Core.<$> iamMember,
            ("role" Core..=) Core.<$> role',
            ("routine" Core..=) Core.<$> routine,
            ("specialGroup" Core..=) Core.<$> specialGroup,
            ("userByEmail" Core..=) Core.<$> userByEmail,
            ("view" Core..=) Core.<$> view
          ]
      )

-- | The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.
--
-- /See:/ 'newDataset_Labels' smart constructor.
newtype Dataset_Labels = Dataset_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dataset_Labels' with the minimum fields required to make a request.
newDataset_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Dataset_Labels
newDataset_Labels additional = Dataset_Labels {additional = additional}

instance Core.FromJSON Dataset_Labels where
  parseJSON =
    Core.withObject
      "Dataset_Labels"
      ( \o ->
          Dataset_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Dataset_Labels where
  toJSON Dataset_Labels {..} = Core.toJSON additional

--
-- /See:/ 'newDataset_TagsItem' smart constructor.
data Dataset_TagsItem = Dataset_TagsItem
  { -- | [Required] The namespaced friendly name of the tag key, e.g. \"12345\/environment\" where 12345 is org id.
    tagKey :: (Core.Maybe Core.Text),
    -- | [Required] Friendly short name of the tag value, e.g. \"production\".
    tagValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dataset_TagsItem' with the minimum fields required to make a request.
newDataset_TagsItem ::
  Dataset_TagsItem
newDataset_TagsItem =
  Dataset_TagsItem {tagKey = Core.Nothing, tagValue = Core.Nothing}

instance Core.FromJSON Dataset_TagsItem where
  parseJSON =
    Core.withObject
      "Dataset_TagsItem"
      ( \o ->
          Dataset_TagsItem
            Core.<$> (o Core..:? "tagKey")
            Core.<*> (o Core..:? "tagValue")
      )

instance Core.ToJSON Dataset_TagsItem where
  toJSON Dataset_TagsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("tagKey" Core..=) Core.<$> tagKey,
            ("tagValue" Core..=) Core.<$> tagValue
          ]
      )

--
-- /See:/ 'newDatasetAccessEntry' smart constructor.
data DatasetAccessEntry = DatasetAccessEntry
  { -- | [Required] The dataset this entry applies to.
    dataset :: (Core.Maybe DatasetReference),
    -- |
    targetTypes :: (Core.Maybe [DatasetAccessEntry_TargetTypesItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatasetAccessEntry' with the minimum fields required to make a request.
newDatasetAccessEntry ::
  DatasetAccessEntry
newDatasetAccessEntry =
  DatasetAccessEntry {dataset = Core.Nothing, targetTypes = Core.Nothing}

instance Core.FromJSON DatasetAccessEntry where
  parseJSON =
    Core.withObject
      "DatasetAccessEntry"
      ( \o ->
          DatasetAccessEntry
            Core.<$> (o Core..:? "dataset")
            Core.<*> (o Core..:? "targetTypes")
      )

instance Core.ToJSON DatasetAccessEntry where
  toJSON DatasetAccessEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataset" Core..=) Core.<$> dataset,
            ("targetTypes" Core..=) Core.<$> targetTypes
          ]
      )

--
-- /See:/ 'newDatasetList' smart constructor.
data DatasetList = DatasetList
  { -- | An array of the dataset resources in the project. Each resource contains basic information. For full information about a particular dataset resource, use the Datasets: get method. This property is omitted when there are no datasets in the project.
    datasets :: (Core.Maybe [DatasetList_DatasetsItem]),
    -- | A hash value of the results page. You can use this property to determine if the page has changed since the last request.
    etag :: (Core.Maybe Core.Text),
    -- | The list type. This property always returns the value \"bigquery#datasetList\".
    kind :: Core.Text,
    -- | A token that can be used to request the next results page. This property is omitted on the final results page.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatasetList' with the minimum fields required to make a request.
newDatasetList ::
  DatasetList
newDatasetList =
  DatasetList
    { datasets = Core.Nothing,
      etag = Core.Nothing,
      kind = "bigquery#datasetList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON DatasetList where
  parseJSON =
    Core.withObject
      "DatasetList"
      ( \o ->
          DatasetList
            Core.<$> (o Core..:? "datasets")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#datasetList")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON DatasetList where
  toJSON DatasetList {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasets" Core..=) Core.<$> datasets,
            ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newDatasetList_DatasetsItem' smart constructor.
data DatasetList_DatasetsItem = DatasetList_DatasetsItem
  { -- | The dataset reference. Use this property to access specific parts of the dataset\'s ID, such as project ID or dataset ID.
    datasetReference :: (Core.Maybe DatasetReference),
    -- | A descriptive name for the dataset, if one exists.
    friendlyName :: (Core.Maybe Core.Text),
    -- | The fully-qualified, unique, opaque ID of the dataset.
    id :: (Core.Maybe Core.Text),
    -- | The resource type. This property always returns the value \"bigquery#dataset\".
    kind :: Core.Text,
    -- | The labels associated with this dataset. You can use these to organize and group your datasets.
    labels :: (Core.Maybe DatasetList_DatasetsItem_Labels),
    -- | The geographic location where the data resides.
    location :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatasetList_DatasetsItem' with the minimum fields required to make a request.
newDatasetList_DatasetsItem ::
  DatasetList_DatasetsItem
newDatasetList_DatasetsItem =
  DatasetList_DatasetsItem
    { datasetReference = Core.Nothing,
      friendlyName = Core.Nothing,
      id = Core.Nothing,
      kind = "bigquery#dataset",
      labels = Core.Nothing,
      location = Core.Nothing
    }

instance Core.FromJSON DatasetList_DatasetsItem where
  parseJSON =
    Core.withObject
      "DatasetList_DatasetsItem"
      ( \o ->
          DatasetList_DatasetsItem
            Core.<$> (o Core..:? "datasetReference")
            Core.<*> (o Core..:? "friendlyName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#dataset")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "location")
      )

instance Core.ToJSON DatasetList_DatasetsItem where
  toJSON DatasetList_DatasetsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetReference" Core..=)
              Core.<$> datasetReference,
            ("friendlyName" Core..=) Core.<$> friendlyName,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("location" Core..=) Core.<$> location
          ]
      )

-- | The labels associated with this dataset. You can use these to organize and group your datasets.
--
-- /See:/ 'newDatasetList_DatasetsItem_Labels' smart constructor.
newtype DatasetList_DatasetsItem_Labels = DatasetList_DatasetsItem_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatasetList_DatasetsItem_Labels' with the minimum fields required to make a request.
newDatasetList_DatasetsItem_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  DatasetList_DatasetsItem_Labels
newDatasetList_DatasetsItem_Labels additional =
  DatasetList_DatasetsItem_Labels {additional = additional}

instance
  Core.FromJSON
    DatasetList_DatasetsItem_Labels
  where
  parseJSON =
    Core.withObject
      "DatasetList_DatasetsItem_Labels"
      ( \o ->
          DatasetList_DatasetsItem_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON DatasetList_DatasetsItem_Labels where
  toJSON DatasetList_DatasetsItem_Labels {..} =
    Core.toJSON additional

--
-- /See:/ 'newDatasetReference' smart constructor.
data DatasetReference = DatasetReference
  { -- | [Required] A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
    datasetId :: (Core.Maybe Core.Text),
    -- | [Optional] The ID of the project containing this dataset.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatasetReference' with the minimum fields required to make a request.
newDatasetReference ::
  DatasetReference
newDatasetReference =
  DatasetReference {datasetId = Core.Nothing, projectId = Core.Nothing}

instance Core.FromJSON DatasetReference where
  parseJSON =
    Core.withObject
      "DatasetReference"
      ( \o ->
          DatasetReference
            Core.<$> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON DatasetReference where
  toJSON DatasetReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.<$> datasetId,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

--
-- /See:/ 'newDestinationTableProperties' smart constructor.
data DestinationTableProperties = DestinationTableProperties
  { -- | [Optional] The description for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current description is provided, the job will fail.
    description :: (Core.Maybe Core.Text),
    -- | [Internal] This field is for Google internal use only.
    expirationTime :: (Core.Maybe Core.DateTime),
    -- | [Optional] The friendly name for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current friendly name is provided, the job will fail.
    friendlyName :: (Core.Maybe Core.Text),
    -- | [Optional] The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail.
    labels :: (Core.Maybe DestinationTableProperties_Labels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DestinationTableProperties' with the minimum fields required to make a request.
newDestinationTableProperties ::
  DestinationTableProperties
newDestinationTableProperties =
  DestinationTableProperties
    { description = Core.Nothing,
      expirationTime = Core.Nothing,
      friendlyName = Core.Nothing,
      labels = Core.Nothing
    }

instance Core.FromJSON DestinationTableProperties where
  parseJSON =
    Core.withObject
      "DestinationTableProperties"
      ( \o ->
          DestinationTableProperties
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expirationTime")
            Core.<*> (o Core..:? "friendlyName")
            Core.<*> (o Core..:? "labels")
      )

instance Core.ToJSON DestinationTableProperties where
  toJSON DestinationTableProperties {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expirationTime" Core..=) Core.<$> expirationTime,
            ("friendlyName" Core..=) Core.<$> friendlyName,
            ("labels" Core..=) Core.<$> labels
          ]
      )

-- | [Optional] The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail.
--
-- /See:/ 'newDestinationTableProperties_Labels' smart constructor.
newtype DestinationTableProperties_Labels = DestinationTableProperties_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DestinationTableProperties_Labels' with the minimum fields required to make a request.
newDestinationTableProperties_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  DestinationTableProperties_Labels
newDestinationTableProperties_Labels additional =
  DestinationTableProperties_Labels {additional = additional}

instance
  Core.FromJSON
    DestinationTableProperties_Labels
  where
  parseJSON =
    Core.withObject
      "DestinationTableProperties_Labels"
      ( \o ->
          DestinationTableProperties_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    DestinationTableProperties_Labels
  where
  toJSON DestinationTableProperties_Labels {..} =
    Core.toJSON additional

-- | Model evaluation metrics for dimensionality reduction models.
--
-- /See:/ 'newDimensionalityReductionMetrics' smart constructor.
newtype DimensionalityReductionMetrics = DimensionalityReductionMetrics
  { -- | Total percentage of variance explained by the selected principal components.
    totalExplainedVarianceRatio :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionalityReductionMetrics' with the minimum fields required to make a request.
newDimensionalityReductionMetrics ::
  DimensionalityReductionMetrics
newDimensionalityReductionMetrics =
  DimensionalityReductionMetrics {totalExplainedVarianceRatio = Core.Nothing}

instance Core.FromJSON DimensionalityReductionMetrics where
  parseJSON =
    Core.withObject
      "DimensionalityReductionMetrics"
      ( \o ->
          DimensionalityReductionMetrics
            Core.<$> (o Core..:? "totalExplainedVarianceRatio")
      )

instance Core.ToJSON DimensionalityReductionMetrics where
  toJSON DimensionalityReductionMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("totalExplainedVarianceRatio" Core..=)
              Core.<$> totalExplainedVarianceRatio
          ]
      )

--
-- /See:/ 'newDmlStatistics' smart constructor.
data DmlStatistics = DmlStatistics
  { -- | Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE statements.
    deletedRowCount :: (Core.Maybe Core.Int64),
    -- | Number of inserted Rows. Populated by DML INSERT and MERGE statements.
    insertedRowCount :: (Core.Maybe Core.Int64),
    -- | Number of updated Rows. Populated by DML UPDATE and MERGE statements.
    updatedRowCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DmlStatistics' with the minimum fields required to make a request.
newDmlStatistics ::
  DmlStatistics
newDmlStatistics =
  DmlStatistics
    { deletedRowCount = Core.Nothing,
      insertedRowCount = Core.Nothing,
      updatedRowCount = Core.Nothing
    }

instance Core.FromJSON DmlStatistics where
  parseJSON =
    Core.withObject
      "DmlStatistics"
      ( \o ->
          DmlStatistics
            Core.<$> ( o Core..:? "deletedRowCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "insertedRowCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "updatedRowCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON DmlStatistics where
  toJSON DmlStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("deletedRowCount" Core..=) Core.. Core.AsText
              Core.<$> deletedRowCount,
            ("insertedRowCount" Core..=) Core.. Core.AsText
              Core.<$> insertedRowCount,
            ("updatedRowCount" Core..=) Core.. Core.AsText
              Core.<$> updatedRowCount
          ]
      )

-- | Discrete candidates of a double hyperparameter.
--
-- /See:/ 'newDoubleCandidates' smart constructor.
newtype DoubleCandidates = DoubleCandidates
  { -- | Candidates for the double parameter in increasing order.
    candidates :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleCandidates' with the minimum fields required to make a request.
newDoubleCandidates ::
  DoubleCandidates
newDoubleCandidates = DoubleCandidates {candidates = Core.Nothing}

instance Core.FromJSON DoubleCandidates where
  parseJSON =
    Core.withObject
      "DoubleCandidates"
      ( \o ->
          DoubleCandidates Core.<$> (o Core..:? "candidates")
      )

instance Core.ToJSON DoubleCandidates where
  toJSON DoubleCandidates {..} =
    Core.object
      ( Core.catMaybes
          [("candidates" Core..=) Core.<$> candidates]
      )

-- | Search space for a double hyperparameter.
--
-- /See:/ 'newDoubleHparamSearchSpace' smart constructor.
data DoubleHparamSearchSpace = DoubleHparamSearchSpace
  { -- | Candidates of the double hyperparameter.
    candidates :: (Core.Maybe DoubleCandidates),
    -- | Range of the double hyperparameter.
    range :: (Core.Maybe DoubleRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleHparamSearchSpace' with the minimum fields required to make a request.
newDoubleHparamSearchSpace ::
  DoubleHparamSearchSpace
newDoubleHparamSearchSpace =
  DoubleHparamSearchSpace {candidates = Core.Nothing, range = Core.Nothing}

instance Core.FromJSON DoubleHparamSearchSpace where
  parseJSON =
    Core.withObject
      "DoubleHparamSearchSpace"
      ( \o ->
          DoubleHparamSearchSpace
            Core.<$> (o Core..:? "candidates")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON DoubleHparamSearchSpace where
  toJSON DoubleHparamSearchSpace {..} =
    Core.object
      ( Core.catMaybes
          [ ("candidates" Core..=) Core.<$> candidates,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | Range of a double hyperparameter.
--
-- /See:/ 'newDoubleRange' smart constructor.
data DoubleRange = DoubleRange
  { -- | Max value of the double parameter.
    max :: (Core.Maybe Core.Double),
    -- | Min value of the double parameter.
    min :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DoubleRange' with the minimum fields required to make a request.
newDoubleRange ::
  DoubleRange
newDoubleRange = DoubleRange {max = Core.Nothing, min = Core.Nothing}

instance Core.FromJSON DoubleRange where
  parseJSON =
    Core.withObject
      "DoubleRange"
      ( \o ->
          DoubleRange
            Core.<$> (o Core..:? "max") Core.<*> (o Core..:? "min")
      )

instance Core.ToJSON DoubleRange where
  toJSON DoubleRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("max" Core..=) Core.<$> max,
            ("min" Core..=) Core.<$> min
          ]
      )

--
-- /See:/ 'newEncryptionConfiguration' smart constructor.
newtype EncryptionConfiguration = EncryptionConfiguration
  { -- | [Optional] Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key.
    kmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionConfiguration' with the minimum fields required to make a request.
newEncryptionConfiguration ::
  EncryptionConfiguration
newEncryptionConfiguration = EncryptionConfiguration {kmsKeyName = Core.Nothing}

instance Core.FromJSON EncryptionConfiguration where
  parseJSON =
    Core.withObject
      "EncryptionConfiguration"
      ( \o ->
          EncryptionConfiguration
            Core.<$> (o Core..:? "kmsKeyName")
      )

instance Core.ToJSON EncryptionConfiguration where
  toJSON EncryptionConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [("kmsKeyName" Core..=) Core.<$> kmsKeyName]
      )

-- | A single entry in the confusion matrix.
--
-- /See:/ 'newEntry' smart constructor.
data Entry = Entry
  { -- | Number of items being predicted as this label.
    itemCount :: (Core.Maybe Core.Int64),
    -- | The predicted label. For confidence_threshold > 0, we will also add an entry indicating the number of items under the confidence threshold.
    predictedLabel :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entry' with the minimum fields required to make a request.
newEntry ::
  Entry
newEntry = Entry {itemCount = Core.Nothing, predictedLabel = Core.Nothing}

instance Core.FromJSON Entry where
  parseJSON =
    Core.withObject
      "Entry"
      ( \o ->
          Entry
            Core.<$> ( o Core..:? "itemCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "predictedLabel")
      )

instance Core.ToJSON Entry where
  toJSON Entry {..} =
    Core.object
      ( Core.catMaybes
          [ ("itemCount" Core..=) Core.. Core.AsText
              Core.<$> itemCount,
            ("predictedLabel" Core..=) Core.<$> predictedLabel
          ]
      )

--
-- /See:/ 'newErrorProto' smart constructor.
data ErrorProto = ErrorProto
  { -- | Debugging information. This property is internal to Google and should not be used.
    debugInfo :: (Core.Maybe Core.Text),
    -- | Specifies where the error occurred, if present.
    location :: (Core.Maybe Core.Text),
    -- | A human-readable description of the error.
    message :: (Core.Maybe Core.Text),
    -- | A short error code that summarizes the error.
    reason :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ErrorProto' with the minimum fields required to make a request.
newErrorProto ::
  ErrorProto
newErrorProto =
  ErrorProto
    { debugInfo = Core.Nothing,
      location = Core.Nothing,
      message = Core.Nothing,
      reason = Core.Nothing
    }

instance Core.FromJSON ErrorProto where
  parseJSON =
    Core.withObject
      "ErrorProto"
      ( \o ->
          ErrorProto
            Core.<$> (o Core..:? "debugInfo")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON ErrorProto where
  toJSON ErrorProto {..} =
    Core.object
      ( Core.catMaybes
          [ ("debugInfo" Core..=) Core.<$> debugInfo,
            ("location" Core..=) Core.<$> location,
            ("message" Core..=) Core.<$> message,
            ("reason" Core..=) Core.<$> reason
          ]
      )

-- | Evaluation metrics of a model. These are either computed on all training data or just the eval data based on whether eval data was used during training. These are not present for imported models.
--
-- /See:/ 'newEvaluationMetrics' smart constructor.
data EvaluationMetrics = EvaluationMetrics
  { -- | Populated for ARIMA models.
    arimaForecastingMetrics :: (Core.Maybe ArimaForecastingMetrics),
    -- | Populated for binary classification\/classifier models.
    binaryClassificationMetrics :: (Core.Maybe BinaryClassificationMetrics),
    -- | Populated for clustering models.
    clusteringMetrics :: (Core.Maybe ClusteringMetrics),
    -- | Evaluation metrics when the model is a dimensionality reduction model, which currently includes PCA.
    dimensionalityReductionMetrics :: (Core.Maybe DimensionalityReductionMetrics),
    -- | Populated for multi-class classification\/classifier models.
    multiClassClassificationMetrics :: (Core.Maybe MultiClassClassificationMetrics),
    -- | Populated for implicit feedback type matrix factorization models.
    rankingMetrics :: (Core.Maybe RankingMetrics),
    -- | Populated for regression models and explicit feedback type matrix factorization models.
    regressionMetrics :: (Core.Maybe RegressionMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EvaluationMetrics' with the minimum fields required to make a request.
newEvaluationMetrics ::
  EvaluationMetrics
newEvaluationMetrics =
  EvaluationMetrics
    { arimaForecastingMetrics = Core.Nothing,
      binaryClassificationMetrics = Core.Nothing,
      clusteringMetrics = Core.Nothing,
      dimensionalityReductionMetrics = Core.Nothing,
      multiClassClassificationMetrics = Core.Nothing,
      rankingMetrics = Core.Nothing,
      regressionMetrics = Core.Nothing
    }

instance Core.FromJSON EvaluationMetrics where
  parseJSON =
    Core.withObject
      "EvaluationMetrics"
      ( \o ->
          EvaluationMetrics
            Core.<$> (o Core..:? "arimaForecastingMetrics")
            Core.<*> (o Core..:? "binaryClassificationMetrics")
            Core.<*> (o Core..:? "clusteringMetrics")
            Core.<*> (o Core..:? "dimensionalityReductionMetrics")
            Core.<*> (o Core..:? "multiClassClassificationMetrics")
            Core.<*> (o Core..:? "rankingMetrics")
            Core.<*> (o Core..:? "regressionMetrics")
      )

instance Core.ToJSON EvaluationMetrics where
  toJSON EvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("arimaForecastingMetrics" Core..=)
              Core.<$> arimaForecastingMetrics,
            ("binaryClassificationMetrics" Core..=)
              Core.<$> binaryClassificationMetrics,
            ("clusteringMetrics" Core..=)
              Core.<$> clusteringMetrics,
            ("dimensionalityReductionMetrics" Core..=)
              Core.<$> dimensionalityReductionMetrics,
            ("multiClassClassificationMetrics" Core..=)
              Core.<$> multiClassClassificationMetrics,
            ("rankingMetrics" Core..=) Core.<$> rankingMetrics,
            ("regressionMetrics" Core..=)
              Core.<$> regressionMetrics
          ]
      )

--
-- /See:/ 'newExplainQueryStage' smart constructor.
data ExplainQueryStage = ExplainQueryStage
  { -- | Number of parallel input segments completed.
    completedParallelInputs :: (Core.Maybe Core.Int64),
    -- | Milliseconds the average shard spent on CPU-bound tasks.
    computeMsAvg :: (Core.Maybe Core.Int64),
    -- | Milliseconds the slowest shard spent on CPU-bound tasks.
    computeMsMax :: (Core.Maybe Core.Int64),
    -- | Relative amount of time the average shard spent on CPU-bound tasks.
    computeRatioAvg :: (Core.Maybe Core.Double),
    -- | Relative amount of time the slowest shard spent on CPU-bound tasks.
    computeRatioMax :: (Core.Maybe Core.Double),
    -- | Stage end time represented as milliseconds since epoch.
    endMs :: (Core.Maybe Core.Int64),
    -- | Unique ID for stage within plan.
    id :: (Core.Maybe Core.Int64),
    -- | IDs for stages that are inputs to this stage.
    inputStages :: (Core.Maybe [Core.Int64]),
    -- | Human-readable name for stage.
    name :: (Core.Maybe Core.Text),
    -- | Number of parallel input segments to be processed.
    parallelInputs :: (Core.Maybe Core.Int64),
    -- | Milliseconds the average shard spent reading input.
    readMsAvg :: (Core.Maybe Core.Int64),
    -- | Milliseconds the slowest shard spent reading input.
    readMsMax :: (Core.Maybe Core.Int64),
    -- | Relative amount of time the average shard spent reading input.
    readRatioAvg :: (Core.Maybe Core.Double),
    -- | Relative amount of time the slowest shard spent reading input.
    readRatioMax :: (Core.Maybe Core.Double),
    -- | Number of records read into the stage.
    recordsRead :: (Core.Maybe Core.Int64),
    -- | Number of records written by the stage.
    recordsWritten :: (Core.Maybe Core.Int64),
    -- | Total number of bytes written to shuffle.
    shuffleOutputBytes :: (Core.Maybe Core.Int64),
    -- | Total number of bytes written to shuffle and spilled to disk.
    shuffleOutputBytesSpilled :: (Core.Maybe Core.Int64),
    -- | Slot-milliseconds used by the stage.
    slotMs :: (Core.Maybe Core.Int64),
    -- | Stage start time represented as milliseconds since epoch.
    startMs :: (Core.Maybe Core.Int64),
    -- | Current status for the stage.
    status :: (Core.Maybe Core.Text),
    -- | List of operations within the stage in dependency order (approximately chronological).
    steps :: (Core.Maybe [ExplainQueryStep]),
    -- | Milliseconds the average shard spent waiting to be scheduled.
    waitMsAvg :: (Core.Maybe Core.Int64),
    -- | Milliseconds the slowest shard spent waiting to be scheduled.
    waitMsMax :: (Core.Maybe Core.Int64),
    -- | Relative amount of time the average shard spent waiting to be scheduled.
    waitRatioAvg :: (Core.Maybe Core.Double),
    -- | Relative amount of time the slowest shard spent waiting to be scheduled.
    waitRatioMax :: (Core.Maybe Core.Double),
    -- | Milliseconds the average shard spent on writing output.
    writeMsAvg :: (Core.Maybe Core.Int64),
    -- | Milliseconds the slowest shard spent on writing output.
    writeMsMax :: (Core.Maybe Core.Int64),
    -- | Relative amount of time the average shard spent on writing output.
    writeRatioAvg :: (Core.Maybe Core.Double),
    -- | Relative amount of time the slowest shard spent on writing output.
    writeRatioMax :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExplainQueryStage' with the minimum fields required to make a request.
newExplainQueryStage ::
  ExplainQueryStage
newExplainQueryStage =
  ExplainQueryStage
    { completedParallelInputs = Core.Nothing,
      computeMsAvg = Core.Nothing,
      computeMsMax = Core.Nothing,
      computeRatioAvg = Core.Nothing,
      computeRatioMax = Core.Nothing,
      endMs = Core.Nothing,
      id = Core.Nothing,
      inputStages = Core.Nothing,
      name = Core.Nothing,
      parallelInputs = Core.Nothing,
      readMsAvg = Core.Nothing,
      readMsMax = Core.Nothing,
      readRatioAvg = Core.Nothing,
      readRatioMax = Core.Nothing,
      recordsRead = Core.Nothing,
      recordsWritten = Core.Nothing,
      shuffleOutputBytes = Core.Nothing,
      shuffleOutputBytesSpilled = Core.Nothing,
      slotMs = Core.Nothing,
      startMs = Core.Nothing,
      status = Core.Nothing,
      steps = Core.Nothing,
      waitMsAvg = Core.Nothing,
      waitMsMax = Core.Nothing,
      waitRatioAvg = Core.Nothing,
      waitRatioMax = Core.Nothing,
      writeMsAvg = Core.Nothing,
      writeMsMax = Core.Nothing,
      writeRatioAvg = Core.Nothing,
      writeRatioMax = Core.Nothing
    }

instance Core.FromJSON ExplainQueryStage where
  parseJSON =
    Core.withObject
      "ExplainQueryStage"
      ( \o ->
          ExplainQueryStage
            Core.<$> ( o Core..:? "completedParallelInputs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "computeMsAvg"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "computeMsMax"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "computeRatioAvg")
            Core.<*> (o Core..:? "computeRatioMax")
            Core.<*> ( o Core..:? "endMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o Core..:? "inputStages"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> ( o Core..:? "parallelInputs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "readMsAvg"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "readMsMax"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "readRatioAvg")
            Core.<*> (o Core..:? "readRatioMax")
            Core.<*> ( o Core..:? "recordsRead"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "recordsWritten"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "shuffleOutputBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "shuffleOutputBytesSpilled"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "slotMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "startMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "steps")
            Core.<*> ( o Core..:? "waitMsAvg"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "waitMsMax"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "waitRatioAvg")
            Core.<*> (o Core..:? "waitRatioMax")
            Core.<*> ( o Core..:? "writeMsAvg"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "writeMsMax"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "writeRatioAvg")
            Core.<*> (o Core..:? "writeRatioMax")
      )

instance Core.ToJSON ExplainQueryStage where
  toJSON ExplainQueryStage {..} =
    Core.object
      ( Core.catMaybes
          [ ("completedParallelInputs" Core..=)
              Core.. Core.AsText
              Core.<$> completedParallelInputs,
            ("computeMsAvg" Core..=) Core.. Core.AsText
              Core.<$> computeMsAvg,
            ("computeMsMax" Core..=) Core.. Core.AsText
              Core.<$> computeMsMax,
            ("computeRatioAvg" Core..=) Core.<$> computeRatioAvg,
            ("computeRatioMax" Core..=) Core.<$> computeRatioMax,
            ("endMs" Core..=) Core.. Core.AsText Core.<$> endMs,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("inputStages" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> inputStages,
            ("name" Core..=) Core.<$> name,
            ("parallelInputs" Core..=) Core.. Core.AsText
              Core.<$> parallelInputs,
            ("readMsAvg" Core..=) Core.. Core.AsText
              Core.<$> readMsAvg,
            ("readMsMax" Core..=) Core.. Core.AsText
              Core.<$> readMsMax,
            ("readRatioAvg" Core..=) Core.<$> readRatioAvg,
            ("readRatioMax" Core..=) Core.<$> readRatioMax,
            ("recordsRead" Core..=) Core.. Core.AsText
              Core.<$> recordsRead,
            ("recordsWritten" Core..=) Core.. Core.AsText
              Core.<$> recordsWritten,
            ("shuffleOutputBytes" Core..=) Core.. Core.AsText
              Core.<$> shuffleOutputBytes,
            ("shuffleOutputBytesSpilled" Core..=)
              Core.. Core.AsText
              Core.<$> shuffleOutputBytesSpilled,
            ("slotMs" Core..=) Core.. Core.AsText
              Core.<$> slotMs,
            ("startMs" Core..=) Core.. Core.AsText
              Core.<$> startMs,
            ("status" Core..=) Core.<$> status,
            ("steps" Core..=) Core.<$> steps,
            ("waitMsAvg" Core..=) Core.. Core.AsText
              Core.<$> waitMsAvg,
            ("waitMsMax" Core..=) Core.. Core.AsText
              Core.<$> waitMsMax,
            ("waitRatioAvg" Core..=) Core.<$> waitRatioAvg,
            ("waitRatioMax" Core..=) Core.<$> waitRatioMax,
            ("writeMsAvg" Core..=) Core.. Core.AsText
              Core.<$> writeMsAvg,
            ("writeMsMax" Core..=) Core.. Core.AsText
              Core.<$> writeMsMax,
            ("writeRatioAvg" Core..=) Core.<$> writeRatioAvg,
            ("writeRatioMax" Core..=) Core.<$> writeRatioMax
          ]
      )

--
-- /See:/ 'newExplainQueryStep' smart constructor.
data ExplainQueryStep = ExplainQueryStep
  { -- | Machine-readable operation type.
    kind :: (Core.Maybe Core.Text),
    -- | Human-readable stage descriptions.
    substeps :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExplainQueryStep' with the minimum fields required to make a request.
newExplainQueryStep ::
  ExplainQueryStep
newExplainQueryStep =
  ExplainQueryStep {kind = Core.Nothing, substeps = Core.Nothing}

instance Core.FromJSON ExplainQueryStep where
  parseJSON =
    Core.withObject
      "ExplainQueryStep"
      ( \o ->
          ExplainQueryStep
            Core.<$> (o Core..:? "kind") Core.<*> (o Core..:? "substeps")
      )

instance Core.ToJSON ExplainQueryStep where
  toJSON ExplainQueryStep {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("substeps" Core..=) Core.<$> substeps
          ]
      )

-- | Explanation for a single feature.
--
-- /See:/ 'newExplanation' smart constructor.
data Explanation = Explanation
  { -- | Attribution of feature.
    attribution :: (Core.Maybe Core.Double),
    -- | The full feature name. For non-numerical features, will be formatted like @.@. Overall size of feature name will always be truncated to first 120 characters.
    featureName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Explanation' with the minimum fields required to make a request.
newExplanation ::
  Explanation
newExplanation =
  Explanation {attribution = Core.Nothing, featureName = Core.Nothing}

instance Core.FromJSON Explanation where
  parseJSON =
    Core.withObject
      "Explanation"
      ( \o ->
          Explanation
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "featureName")
      )

instance Core.ToJSON Explanation where
  toJSON Explanation {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribution" Core..=) Core.<$> attribution,
            ("featureName" Core..=) Core.<$> featureName
          ]
      )

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newExpr' smart constructor.
data Expr = Expr
  { -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    expression :: (Core.Maybe Core.Text),
    -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Expr' with the minimum fields required to make a request.
newExpr ::
  Expr
newExpr =
  Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON Expr where
  parseJSON =
    Core.withObject
      "Expr"
      ( \o ->
          Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON Expr where
  toJSON Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )

--
-- /See:/ 'newExternalDataConfiguration' smart constructor.
data ExternalDataConfiguration = ExternalDataConfiguration
  { -- | Try to detect schema and format options automatically. Any option specified explicitly will be honored.
    autodetect :: (Core.Maybe Core.Bool),
    -- | Additional properties to set if sourceFormat is set to Avro.
    avroOptions :: (Core.Maybe AvroOptions),
    -- | [Optional] Additional options if sourceFormat is set to BIGTABLE.
    bigtableOptions :: (Core.Maybe BigtableOptions),
    -- | [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
    compression :: (Core.Maybe Core.Text),
    -- | [Optional, Trusted Tester] Connection for external data source.
    connectionId :: (Core.Maybe Core.Text),
    -- | Additional properties to set if sourceFormat is set to CSV.
    csvOptions :: (Core.Maybe CsvOptions),
    -- | [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is [\"NUMERIC\", \"BIGNUMERIC\"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types
    -- in this field is ignored. For example, [\"BIGNUMERIC\", \"NUMERIC\"] is the same as [\"NUMERIC\", \"BIGNUMERIC\"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to [\"NUMERIC\", \"STRING\"] for ORC and [\"NUMERIC\"] for the other file formats.
    decimalTargetTypes :: (Core.Maybe [Core.Text]),
    -- | [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
    googleSheetsOptions :: (Core.Maybe GoogleSheetsOptions),
    -- | [Optional] Options to configure hive partitioning support.
    hivePartitioningOptions :: (Core.Maybe HivePartitioningOptions),
    -- | [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don\'t match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.
    ignoreUnknownValues :: (Core.Maybe Core.Bool),
    -- | [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
    maxBadRecords :: (Core.Maybe Core.Int32),
    -- | [Optional] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
    metadataCacheMode :: (Core.Maybe Core.Text),
    -- | ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source/uris. If ObjectMetadata is set, source/format should be omitted. Currently SIMPLE is the only supported Object Metadata type.
    objectMetadata :: (Core.Maybe Core.Text),
    -- | Additional properties to set if sourceFormat is set to Parquet.
    parquetOptions :: (Core.Maybe ParquetOptions),
    -- | [Optional] Provide a referencing file with the expected table schema. Enabled for the format: AVRO, PARQUET, ORC.
    referenceFileSchemaUri :: (Core.Maybe Core.Text),
    -- | [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
    schema :: (Core.Maybe TableSchema),
    -- | [Required] The data format. For CSV files, specify \"CSV\". For Google sheets, specify \"GOOGLE/SHEETS\". For newline-delimited JSON, specify \"NEWLINE/DELIMITED/JSON\". For Avro files, specify \"AVRO\". For Google Cloud Datastore backups, specify \"DATASTORE/BACKUP\". [Beta] For Google Cloud Bigtable, specify \"BIGTABLE\".
    sourceFormat :: (Core.Maybe Core.Text),
    -- | [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one \'/\' wildcard character and it must come after the \'bucket\' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the \'/\' wildcard character is not allowed.
    sourceUris :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExternalDataConfiguration' with the minimum fields required to make a request.
newExternalDataConfiguration ::
  ExternalDataConfiguration
newExternalDataConfiguration =
  ExternalDataConfiguration
    { autodetect = Core.Nothing,
      avroOptions = Core.Nothing,
      bigtableOptions = Core.Nothing,
      compression = Core.Nothing,
      connectionId = Core.Nothing,
      csvOptions = Core.Nothing,
      decimalTargetTypes = Core.Nothing,
      googleSheetsOptions = Core.Nothing,
      hivePartitioningOptions = Core.Nothing,
      ignoreUnknownValues = Core.Nothing,
      maxBadRecords = Core.Nothing,
      metadataCacheMode = Core.Nothing,
      objectMetadata = Core.Nothing,
      parquetOptions = Core.Nothing,
      referenceFileSchemaUri = Core.Nothing,
      schema = Core.Nothing,
      sourceFormat = Core.Nothing,
      sourceUris = Core.Nothing
    }

instance Core.FromJSON ExternalDataConfiguration where
  parseJSON =
    Core.withObject
      "ExternalDataConfiguration"
      ( \o ->
          ExternalDataConfiguration
            Core.<$> (o Core..:? "autodetect")
            Core.<*> (o Core..:? "avroOptions")
            Core.<*> (o Core..:? "bigtableOptions")
            Core.<*> (o Core..:? "compression")
            Core.<*> (o Core..:? "connectionId")
            Core.<*> (o Core..:? "csvOptions")
            Core.<*> (o Core..:? "decimalTargetTypes")
            Core.<*> (o Core..:? "googleSheetsOptions")
            Core.<*> (o Core..:? "hivePartitioningOptions")
            Core.<*> (o Core..:? "ignoreUnknownValues")
            Core.<*> (o Core..:? "maxBadRecords")
            Core.<*> (o Core..:? "metadataCacheMode")
            Core.<*> (o Core..:? "objectMetadata")
            Core.<*> (o Core..:? "parquetOptions")
            Core.<*> (o Core..:? "referenceFileSchemaUri")
            Core.<*> (o Core..:? "schema")
            Core.<*> (o Core..:? "sourceFormat")
            Core.<*> (o Core..:? "sourceUris")
      )

instance Core.ToJSON ExternalDataConfiguration where
  toJSON ExternalDataConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("autodetect" Core..=) Core.<$> autodetect,
            ("avroOptions" Core..=) Core.<$> avroOptions,
            ("bigtableOptions" Core..=) Core.<$> bigtableOptions,
            ("compression" Core..=) Core.<$> compression,
            ("connectionId" Core..=) Core.<$> connectionId,
            ("csvOptions" Core..=) Core.<$> csvOptions,
            ("decimalTargetTypes" Core..=)
              Core.<$> decimalTargetTypes,
            ("googleSheetsOptions" Core..=)
              Core.<$> googleSheetsOptions,
            ("hivePartitioningOptions" Core..=)
              Core.<$> hivePartitioningOptions,
            ("ignoreUnknownValues" Core..=)
              Core.<$> ignoreUnknownValues,
            ("maxBadRecords" Core..=) Core.<$> maxBadRecords,
            ("metadataCacheMode" Core..=)
              Core.<$> metadataCacheMode,
            ("objectMetadata" Core..=) Core.<$> objectMetadata,
            ("parquetOptions" Core..=) Core.<$> parquetOptions,
            ("referenceFileSchemaUri" Core..=)
              Core.<$> referenceFileSchemaUri,
            ("schema" Core..=) Core.<$> schema,
            ("sourceFormat" Core..=) Core.<$> sourceFormat,
            ("sourceUris" Core..=) Core.<$> sourceUris
          ]
      )

-- | Representative value of a single feature within the cluster.
--
-- /See:/ 'newFeatureValue' smart constructor.
data FeatureValue = FeatureValue
  { -- | The categorical feature value.
    categoricalValue :: (Core.Maybe CategoricalValue),
    -- | The feature column name.
    featureColumn :: (Core.Maybe Core.Text),
    -- | The numerical feature value. This is the centroid value for this feature.
    numericalValue :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FeatureValue' with the minimum fields required to make a request.
newFeatureValue ::
  FeatureValue
newFeatureValue =
  FeatureValue
    { categoricalValue = Core.Nothing,
      featureColumn = Core.Nothing,
      numericalValue = Core.Nothing
    }

instance Core.FromJSON FeatureValue where
  parseJSON =
    Core.withObject
      "FeatureValue"
      ( \o ->
          FeatureValue
            Core.<$> (o Core..:? "categoricalValue")
            Core.<*> (o Core..:? "featureColumn")
            Core.<*> (o Core..:? "numericalValue")
      )

instance Core.ToJSON FeatureValue where
  toJSON FeatureValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("categoricalValue" Core..=)
              Core.<$> categoricalValue,
            ("featureColumn" Core..=) Core.<$> featureColumn,
            ("numericalValue" Core..=) Core.<$> numericalValue
          ]
      )

-- | Request message for @GetIamPolicy@ method.
--
-- /See:/ 'newGetIamPolicyRequest' smart constructor.
newtype GetIamPolicyRequest = GetIamPolicyRequest
  { -- | OPTIONAL: A @GetPolicyOptions@ object for specifying options to @GetIamPolicy@.
    options :: (Core.Maybe GetPolicyOptions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetIamPolicyRequest' with the minimum fields required to make a request.
newGetIamPolicyRequest ::
  GetIamPolicyRequest
newGetIamPolicyRequest = GetIamPolicyRequest {options = Core.Nothing}

instance Core.FromJSON GetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GetIamPolicyRequest"
      ( \o ->
          GetIamPolicyRequest Core.<$> (o Core..:? "options")
      )

instance Core.ToJSON GetIamPolicyRequest where
  toJSON GetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [("options" Core..=) Core.<$> options]
      )

-- | Encapsulates settings provided to GetIamPolicy.
--
-- /See:/ 'newGetPolicyOptions' smart constructor.
newtype GetPolicyOptions = GetPolicyOptions
  { -- | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    requestedPolicyVersion :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetPolicyOptions' with the minimum fields required to make a request.
newGetPolicyOptions ::
  GetPolicyOptions
newGetPolicyOptions = GetPolicyOptions {requestedPolicyVersion = Core.Nothing}

instance Core.FromJSON GetPolicyOptions where
  parseJSON =
    Core.withObject
      "GetPolicyOptions"
      ( \o ->
          GetPolicyOptions
            Core.<$> (o Core..:? "requestedPolicyVersion")
      )

instance Core.ToJSON GetPolicyOptions where
  toJSON GetPolicyOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("requestedPolicyVersion" Core..=)
              Core.<$> requestedPolicyVersion
          ]
      )

--
-- /See:/ 'newGetQueryResultsResponse' smart constructor.
data GetQueryResultsResponse = GetQueryResultsResponse
  { -- | Whether the query result was fetched from the query cache.
    cacheHit :: (Core.Maybe Core.Bool),
    -- | [Output-only] The first errors or warnings encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.
    errors :: (Core.Maybe [ErrorProto]),
    -- | A hash of this response.
    etag :: (Core.Maybe Core.Text),
    -- | Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available.
    jobComplete :: (Core.Maybe Core.Bool),
    -- | Reference to the BigQuery Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults).
    jobReference :: (Core.Maybe JobReference),
    -- | The resource type of the response.
    kind :: Core.Text,
    -- | [Output-only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
    numDmlAffectedRows :: (Core.Maybe Core.Int64),
    -- | A token used for paging results.
    pageToken :: (Core.Maybe Core.Text),
    -- | An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. Present only when the query completes successfully.
    rows :: (Core.Maybe [TableRow]),
    -- | The schema of the results. Present only when the query completes successfully.
    schema :: (Core.Maybe TableSchema),
    -- | The total number of bytes processed for this query.
    totalBytesProcessed :: (Core.Maybe Core.Int64),
    -- | The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. Present only when the query completes successfully.
    totalRows :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetQueryResultsResponse' with the minimum fields required to make a request.
newGetQueryResultsResponse ::
  GetQueryResultsResponse
newGetQueryResultsResponse =
  GetQueryResultsResponse
    { cacheHit = Core.Nothing,
      errors = Core.Nothing,
      etag = Core.Nothing,
      jobComplete = Core.Nothing,
      jobReference = Core.Nothing,
      kind = "bigquery#getQueryResultsResponse",
      numDmlAffectedRows = Core.Nothing,
      pageToken = Core.Nothing,
      rows = Core.Nothing,
      schema = Core.Nothing,
      totalBytesProcessed = Core.Nothing,
      totalRows = Core.Nothing
    }

instance Core.FromJSON GetQueryResultsResponse where
  parseJSON =
    Core.withObject
      "GetQueryResultsResponse"
      ( \o ->
          GetQueryResultsResponse
            Core.<$> (o Core..:? "cacheHit")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "jobComplete")
            Core.<*> (o Core..:? "jobReference")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "bigquery#getQueryResultsResponse"
                     )
            Core.<*> ( o Core..:? "numDmlAffectedRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "schema")
            Core.<*> ( o Core..:? "totalBytesProcessed"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "totalRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GetQueryResultsResponse where
  toJSON GetQueryResultsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cacheHit" Core..=) Core.<$> cacheHit,
            ("errors" Core..=) Core.<$> errors,
            ("etag" Core..=) Core.<$> etag,
            ("jobComplete" Core..=) Core.<$> jobComplete,
            ("jobReference" Core..=) Core.<$> jobReference,
            Core.Just ("kind" Core..= kind),
            ("numDmlAffectedRows" Core..=) Core.. Core.AsText
              Core.<$> numDmlAffectedRows,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("rows" Core..=) Core.<$> rows,
            ("schema" Core..=) Core.<$> schema,
            ("totalBytesProcessed" Core..=) Core.. Core.AsText
              Core.<$> totalBytesProcessed,
            ("totalRows" Core..=) Core.. Core.AsText
              Core.<$> totalRows
          ]
      )

--
-- /See:/ 'newGetServiceAccountResponse' smart constructor.
data GetServiceAccountResponse = GetServiceAccountResponse
  { -- | The service account email address.
    email :: (Core.Maybe Core.Text),
    -- | The resource type of the response.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetServiceAccountResponse' with the minimum fields required to make a request.
newGetServiceAccountResponse ::
  GetServiceAccountResponse
newGetServiceAccountResponse =
  GetServiceAccountResponse
    { email = Core.Nothing,
      kind = "bigquery#getServiceAccountResponse"
    }

instance Core.FromJSON GetServiceAccountResponse where
  parseJSON =
    Core.withObject
      "GetServiceAccountResponse"
      ( \o ->
          GetServiceAccountResponse
            Core.<$> (o Core..:? "email")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "bigquery#getServiceAccountResponse"
                     )
      )

instance Core.ToJSON GetServiceAccountResponse where
  toJSON GetServiceAccountResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | Global explanations containing the top most important features after training.
--
-- /See:/ 'newGlobalExplanation' smart constructor.
data GlobalExplanation = GlobalExplanation
  { -- | Class label for this set of global explanations. Will be empty\/null for binary logistic and linear regression models. Sorted alphabetically in descending order.
    classLabel :: (Core.Maybe Core.Text),
    -- | A list of the top global explanations. Sorted by absolute value of attribution in descending order.
    explanations :: (Core.Maybe [Explanation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GlobalExplanation' with the minimum fields required to make a request.
newGlobalExplanation ::
  GlobalExplanation
newGlobalExplanation =
  GlobalExplanation {classLabel = Core.Nothing, explanations = Core.Nothing}

instance Core.FromJSON GlobalExplanation where
  parseJSON =
    Core.withObject
      "GlobalExplanation"
      ( \o ->
          GlobalExplanation
            Core.<$> (o Core..:? "classLabel")
            Core.<*> (o Core..:? "explanations")
      )

instance Core.ToJSON GlobalExplanation where
  toJSON GlobalExplanation {..} =
    Core.object
      ( Core.catMaybes
          [ ("classLabel" Core..=) Core.<$> classLabel,
            ("explanations" Core..=) Core.<$> explanations
          ]
      )

--
-- /See:/ 'newGoogleSheetsOptions' smart constructor.
data GoogleSheetsOptions = GoogleSheetsOptions
  { -- | [Optional] Range of a sheet to query from. Only used when non-empty. Typical format: sheet/name!top/left/cell/id:bottom/right/cell_id For example: sheet1!A1:B20
    range :: (Core.Maybe Core.Text),
    -- | [Optional] The number of rows at the top of a sheet that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows that should be skipped. When autodetect is on, behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
    skipLeadingRows :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSheetsOptions' with the minimum fields required to make a request.
newGoogleSheetsOptions ::
  GoogleSheetsOptions
newGoogleSheetsOptions =
  GoogleSheetsOptions {range = Core.Nothing, skipLeadingRows = Core.Nothing}

instance Core.FromJSON GoogleSheetsOptions where
  parseJSON =
    Core.withObject
      "GoogleSheetsOptions"
      ( \o ->
          GoogleSheetsOptions
            Core.<$> (o Core..:? "range")
            Core.<*> ( o Core..:? "skipLeadingRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GoogleSheetsOptions where
  toJSON GoogleSheetsOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("range" Core..=) Core.<$> range,
            ("skipLeadingRows" Core..=) Core.. Core.AsText
              Core.<$> skipLeadingRows
          ]
      )

--
-- /See:/ 'newHivePartitioningOptions' smart constructor.
data HivePartitioningOptions = HivePartitioningOptions
  { -- | [Optional] When set, what mode of hive partitioning to use when reading data. The following modes are supported. (1) AUTO: automatically infer partition key name(s) and type(s). (2) STRINGS: automatically infer partition key name(s). All types are interpreted as strings. (3) CUSTOM: partition key schema is encoded in the source URI prefix. Not all storage formats support hive partitioning. Requesting hive partitioning on an unsupported format will lead to an error. Currently supported types include: AVRO, CSV, JSON, ORC and Parquet.
    mode :: (Core.Maybe Core.Text),
    -- | [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. Note that this field should only be true when creating a permanent external table or querying a temporary external table. Hive-partitioned loads with requirePartitionFilter explicitly set to true will fail.
    requirePartitionFilter :: (Core.Maybe Core.Bool),
    -- | [Optional] When hive partition detection is requested, a common prefix for all source uris should be supplied. The prefix must end immediately before the partition key encoding begins. For example, consider files following this data layout. gs:\/\/bucket\/path/to/table\/dt=2019-01-01\/country=BR\/id=7\/file.avro gs:\/\/bucket\/path/to/table\/dt=2018-12-31\/country=CA\/id=3\/file.avro When hive partitioning is requested with either AUTO or STRINGS detection, the common prefix can be either of gs:\/\/bucket\/path/to/table or gs:\/\/bucket\/path/to/table\/ (trailing slash does not matter).
    sourceUriPrefix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HivePartitioningOptions' with the minimum fields required to make a request.
newHivePartitioningOptions ::
  HivePartitioningOptions
newHivePartitioningOptions =
  HivePartitioningOptions
    { mode = Core.Nothing,
      requirePartitionFilter = Core.Nothing,
      sourceUriPrefix = Core.Nothing
    }

instance Core.FromJSON HivePartitioningOptions where
  parseJSON =
    Core.withObject
      "HivePartitioningOptions"
      ( \o ->
          HivePartitioningOptions
            Core.<$> (o Core..:? "mode")
            Core.<*> (o Core..:? "requirePartitionFilter")
            Core.<*> (o Core..:? "sourceUriPrefix")
      )

instance Core.ToJSON HivePartitioningOptions where
  toJSON HivePartitioningOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("mode" Core..=) Core.<$> mode,
            ("requirePartitionFilter" Core..=)
              Core.<$> requirePartitionFilter,
            ("sourceUriPrefix" Core..=)
              Core.<$> sourceUriPrefix
          ]
      )

-- | Hyperparameter search spaces. These should be a subset of training_options.
--
-- /See:/ 'newHparamSearchSpaces' smart constructor.
data HparamSearchSpaces = HparamSearchSpaces
  { -- | Activation functions of neural network models.
    activationFn :: (Core.Maybe StringHparamSearchSpace),
    -- | Mini batch sample size.
    batchSize :: (Core.Maybe IntHparamSearchSpace),
    -- | Booster type for boosted tree models.
    boosterType :: (Core.Maybe StringHparamSearchSpace),
    -- | Subsample ratio of columns for each level for boosted tree models.
    colsampleBylevel :: (Core.Maybe DoubleHparamSearchSpace),
    -- | Subsample ratio of columns for each node(split) for boosted tree models.
    colsampleBynode :: (Core.Maybe DoubleHparamSearchSpace),
    -- | Subsample ratio of columns when constructing each tree for boosted tree models.
    colsampleBytree :: (Core.Maybe DoubleHparamSearchSpace),
    -- | Dart normalization type for boosted tree models.
    dartNormalizeType :: (Core.Maybe StringHparamSearchSpace),
    -- | Dropout probability for dnn model training and boosted tree models using dart booster.
    dropout :: (Core.Maybe DoubleHparamSearchSpace),
    -- | Hidden units for neural network models.
    hiddenUnits :: (Core.Maybe IntArrayHparamSearchSpace),
    -- | L1 regularization coefficient.
    l1Reg :: (Core.Maybe DoubleHparamSearchSpace),
    -- | L2 regularization coefficient.
    l2Reg :: (Core.Maybe DoubleHparamSearchSpace),
    -- | Learning rate of training jobs.
    learnRate :: (Core.Maybe DoubleHparamSearchSpace),
    -- | Maximum depth of a tree for boosted tree models.
    maxTreeDepth :: (Core.Maybe IntHparamSearchSpace),
    -- | Minimum split loss for boosted tree models.
    minSplitLoss :: (Core.Maybe DoubleHparamSearchSpace),
    -- | Minimum sum of instance weight needed in a child for boosted tree models.
    minTreeChildWeight :: (Core.Maybe IntHparamSearchSpace),
    -- | Number of clusters for k-means.
    numClusters :: (Core.Maybe IntHparamSearchSpace),
    -- | Number of latent factors to train on.
    numFactors :: (Core.Maybe IntHparamSearchSpace),
    -- | Number of parallel trees for boosted tree models.
    numParallelTree :: (Core.Maybe IntHparamSearchSpace),
    -- | Optimizer of TF models.
    optimizer :: (Core.Maybe StringHparamSearchSpace),
    -- | Subsample the training data to grow tree to prevent overfitting for boosted tree models.
    subsample :: (Core.Maybe DoubleHparamSearchSpace),
    -- | Tree construction algorithm for boosted tree models.
    treeMethod :: (Core.Maybe StringHparamSearchSpace),
    -- | Hyperparameter for matrix factoration when implicit feedback type is specified.
    walsAlpha :: (Core.Maybe DoubleHparamSearchSpace)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HparamSearchSpaces' with the minimum fields required to make a request.
newHparamSearchSpaces ::
  HparamSearchSpaces
newHparamSearchSpaces =
  HparamSearchSpaces
    { activationFn = Core.Nothing,
      batchSize = Core.Nothing,
      boosterType = Core.Nothing,
      colsampleBylevel = Core.Nothing,
      colsampleBynode = Core.Nothing,
      colsampleBytree = Core.Nothing,
      dartNormalizeType = Core.Nothing,
      dropout = Core.Nothing,
      hiddenUnits = Core.Nothing,
      l1Reg = Core.Nothing,
      l2Reg = Core.Nothing,
      learnRate = Core.Nothing,
      maxTreeDepth = Core.Nothing,
      minSplitLoss = Core.Nothing,
      minTreeChildWeight = Core.Nothing,
      numClusters = Core.Nothing,
      numFactors = Core.Nothing,
      numParallelTree = Core.Nothing,
      optimizer = Core.Nothing,
      subsample = Core.Nothing,
      treeMethod = Core.Nothing,
      walsAlpha = Core.Nothing
    }

instance Core.FromJSON HparamSearchSpaces where
  parseJSON =
    Core.withObject
      "HparamSearchSpaces"
      ( \o ->
          HparamSearchSpaces
            Core.<$> (o Core..:? "activationFn")
            Core.<*> (o Core..:? "batchSize")
            Core.<*> (o Core..:? "boosterType")
            Core.<*> (o Core..:? "colsampleBylevel")
            Core.<*> (o Core..:? "colsampleBynode")
            Core.<*> (o Core..:? "colsampleBytree")
            Core.<*> (o Core..:? "dartNormalizeType")
            Core.<*> (o Core..:? "dropout")
            Core.<*> (o Core..:? "hiddenUnits")
            Core.<*> (o Core..:? "l1Reg")
            Core.<*> (o Core..:? "l2Reg")
            Core.<*> (o Core..:? "learnRate")
            Core.<*> (o Core..:? "maxTreeDepth")
            Core.<*> (o Core..:? "minSplitLoss")
            Core.<*> (o Core..:? "minTreeChildWeight")
            Core.<*> (o Core..:? "numClusters")
            Core.<*> (o Core..:? "numFactors")
            Core.<*> (o Core..:? "numParallelTree")
            Core.<*> (o Core..:? "optimizer")
            Core.<*> (o Core..:? "subsample")
            Core.<*> (o Core..:? "treeMethod")
            Core.<*> (o Core..:? "walsAlpha")
      )

instance Core.ToJSON HparamSearchSpaces where
  toJSON HparamSearchSpaces {..} =
    Core.object
      ( Core.catMaybes
          [ ("activationFn" Core..=) Core.<$> activationFn,
            ("batchSize" Core..=) Core.<$> batchSize,
            ("boosterType" Core..=) Core.<$> boosterType,
            ("colsampleBylevel" Core..=)
              Core.<$> colsampleBylevel,
            ("colsampleBynode" Core..=) Core.<$> colsampleBynode,
            ("colsampleBytree" Core..=) Core.<$> colsampleBytree,
            ("dartNormalizeType" Core..=)
              Core.<$> dartNormalizeType,
            ("dropout" Core..=) Core.<$> dropout,
            ("hiddenUnits" Core..=) Core.<$> hiddenUnits,
            ("l1Reg" Core..=) Core.<$> l1Reg,
            ("l2Reg" Core..=) Core.<$> l2Reg,
            ("learnRate" Core..=) Core.<$> learnRate,
            ("maxTreeDepth" Core..=) Core.<$> maxTreeDepth,
            ("minSplitLoss" Core..=) Core.<$> minSplitLoss,
            ("minTreeChildWeight" Core..=)
              Core.<$> minTreeChildWeight,
            ("numClusters" Core..=) Core.<$> numClusters,
            ("numFactors" Core..=) Core.<$> numFactors,
            ("numParallelTree" Core..=) Core.<$> numParallelTree,
            ("optimizer" Core..=) Core.<$> optimizer,
            ("subsample" Core..=) Core.<$> subsample,
            ("treeMethod" Core..=) Core.<$> treeMethod,
            ("walsAlpha" Core..=) Core.<$> walsAlpha
          ]
      )

-- | Training info of a trial in </bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview hyperparameter tuning> models.
--
-- /See:/ 'newHparamTuningTrial' smart constructor.
data HparamTuningTrial = HparamTuningTrial
  { -- | Ending time of the trial.
    endTimeMs :: (Core.Maybe Core.Int64),
    -- | Error message for FAILED and INFEASIBLE trial.
    errorMessage :: (Core.Maybe Core.Text),
    -- | Loss computed on the eval data at the end of trial.
    evalLoss :: (Core.Maybe Core.Double),
    -- | Evaluation metrics of this trial calculated on the test data. Empty in Job API.
    evaluationMetrics :: (Core.Maybe EvaluationMetrics),
    -- | Hyperparameter tuning evaluation metrics of this trial calculated on the eval data. Unlike evaluation/metrics, only the fields corresponding to the hparam/tuning_objectives are set.
    hparamTuningEvaluationMetrics :: (Core.Maybe EvaluationMetrics),
    -- | The hyperprameters selected for this trial.
    hparams :: (Core.Maybe TrainingOptions),
    -- | Starting time of the trial.
    startTimeMs :: (Core.Maybe Core.Int64),
    -- | The status of the trial.
    status :: (Core.Maybe HparamTuningTrial_Status),
    -- | Loss computed on the training data at the end of trial.
    trainingLoss :: (Core.Maybe Core.Double),
    -- | 1-based index of the trial.
    trialId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HparamTuningTrial' with the minimum fields required to make a request.
newHparamTuningTrial ::
  HparamTuningTrial
newHparamTuningTrial =
  HparamTuningTrial
    { endTimeMs = Core.Nothing,
      errorMessage = Core.Nothing,
      evalLoss = Core.Nothing,
      evaluationMetrics = Core.Nothing,
      hparamTuningEvaluationMetrics = Core.Nothing,
      hparams = Core.Nothing,
      startTimeMs = Core.Nothing,
      status = Core.Nothing,
      trainingLoss = Core.Nothing,
      trialId = Core.Nothing
    }

instance Core.FromJSON HparamTuningTrial where
  parseJSON =
    Core.withObject
      "HparamTuningTrial"
      ( \o ->
          HparamTuningTrial
            Core.<$> ( o Core..:? "endTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "evalLoss")
            Core.<*> (o Core..:? "evaluationMetrics")
            Core.<*> (o Core..:? "hparamTuningEvaluationMetrics")
            Core.<*> (o Core..:? "hparams")
            Core.<*> ( o Core..:? "startTimeMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "trainingLoss")
            Core.<*> ( o Core..:? "trialId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON HparamTuningTrial where
  toJSON HparamTuningTrial {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTimeMs" Core..=) Core.. Core.AsText
              Core.<$> endTimeMs,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("evalLoss" Core..=) Core.<$> evalLoss,
            ("evaluationMetrics" Core..=)
              Core.<$> evaluationMetrics,
            ("hparamTuningEvaluationMetrics" Core..=)
              Core.<$> hparamTuningEvaluationMetrics,
            ("hparams" Core..=) Core.<$> hparams,
            ("startTimeMs" Core..=) Core.. Core.AsText
              Core.<$> startTimeMs,
            ("status" Core..=) Core.<$> status,
            ("trainingLoss" Core..=) Core.<$> trainingLoss,
            ("trialId" Core..=) Core.. Core.AsText
              Core.<$> trialId
          ]
      )

--
-- /See:/ 'newIndexUnusedReason' smart constructor.
data IndexUnusedReason = IndexUnusedReason
  { -- | [Output-only] Specifies the base table involved in the reason that no search index was used.
    baseTable :: (Core.Maybe TableReference),
    -- | [Output-only] Specifies the high-level reason for the scenario when no search index was used.
    code :: Core.Text,
    -- | [Output-only] Specifies the name of the unused search index, if available.
    indexName :: Core.Text,
    -- | [Output-only] Free form human-readable reason for the scenario when no search index was used.
    message :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexUnusedReason' with the minimum fields required to make a request.
newIndexUnusedReason ::
  IndexUnusedReason
newIndexUnusedReason =
  IndexUnusedReason
    { baseTable = Core.Nothing,
      code = "$(reason.code)",
      indexName = "$(reason.index_name)",
      message = "$(reason.message)"
    }

instance Core.FromJSON IndexUnusedReason where
  parseJSON =
    Core.withObject
      "IndexUnusedReason"
      ( \o ->
          IndexUnusedReason
            Core.<$> (o Core..:? "base_table")
            Core.<*> (o Core..:? "code" Core..!= "$(reason.code)")
            Core.<*> ( o Core..:? "index_name"
                         Core..!= "$(reason.index_name)"
                     )
            Core.<*> (o Core..:? "message" Core..!= "$(reason.message)")
      )

instance Core.ToJSON IndexUnusedReason where
  toJSON IndexUnusedReason {..} =
    Core.object
      ( Core.catMaybes
          [ ("base_table" Core..=) Core.<$> baseTable,
            Core.Just ("code" Core..= code),
            Core.Just ("index_name" Core..= indexName),
            Core.Just ("message" Core..= message)
          ]
      )

-- | An array of int.
--
-- /See:/ 'newIntArray' smart constructor.
newtype IntArray = IntArray
  { -- | Elements in the int array.
    elements :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntArray' with the minimum fields required to make a request.
newIntArray ::
  IntArray
newIntArray = IntArray {elements = Core.Nothing}

instance Core.FromJSON IntArray where
  parseJSON =
    Core.withObject
      "IntArray"
      ( \o ->
          IntArray
            Core.<$> ( o Core..:? "elements"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON IntArray where
  toJSON IntArray {..} =
    Core.object
      ( Core.catMaybes
          [ ("elements" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> elements
          ]
      )

-- | Search space for int array.
--
-- /See:/ 'newIntArrayHparamSearchSpace' smart constructor.
newtype IntArrayHparamSearchSpace = IntArrayHparamSearchSpace
  { -- | Candidates for the int array parameter.
    candidates :: (Core.Maybe [IntArray])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntArrayHparamSearchSpace' with the minimum fields required to make a request.
newIntArrayHparamSearchSpace ::
  IntArrayHparamSearchSpace
newIntArrayHparamSearchSpace =
  IntArrayHparamSearchSpace {candidates = Core.Nothing}

instance Core.FromJSON IntArrayHparamSearchSpace where
  parseJSON =
    Core.withObject
      "IntArrayHparamSearchSpace"
      ( \o ->
          IntArrayHparamSearchSpace
            Core.<$> (o Core..:? "candidates")
      )

instance Core.ToJSON IntArrayHparamSearchSpace where
  toJSON IntArrayHparamSearchSpace {..} =
    Core.object
      ( Core.catMaybes
          [("candidates" Core..=) Core.<$> candidates]
      )

-- | Discrete candidates of an int hyperparameter.
--
-- /See:/ 'newIntCandidates' smart constructor.
newtype IntCandidates = IntCandidates
  { -- | Candidates for the int parameter in increasing order.
    candidates :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntCandidates' with the minimum fields required to make a request.
newIntCandidates ::
  IntCandidates
newIntCandidates = IntCandidates {candidates = Core.Nothing}

instance Core.FromJSON IntCandidates where
  parseJSON =
    Core.withObject
      "IntCandidates"
      ( \o ->
          IntCandidates
            Core.<$> ( o Core..:? "candidates"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
      )

instance Core.ToJSON IntCandidates where
  toJSON IntCandidates {..} =
    Core.object
      ( Core.catMaybes
          [ ("candidates" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> candidates
          ]
      )

-- | Search space for an int hyperparameter.
--
-- /See:/ 'newIntHparamSearchSpace' smart constructor.
data IntHparamSearchSpace = IntHparamSearchSpace
  { -- | Candidates of the int hyperparameter.
    candidates :: (Core.Maybe IntCandidates),
    -- | Range of the int hyperparameter.
    range :: (Core.Maybe IntRange)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntHparamSearchSpace' with the minimum fields required to make a request.
newIntHparamSearchSpace ::
  IntHparamSearchSpace
newIntHparamSearchSpace =
  IntHparamSearchSpace {candidates = Core.Nothing, range = Core.Nothing}

instance Core.FromJSON IntHparamSearchSpace where
  parseJSON =
    Core.withObject
      "IntHparamSearchSpace"
      ( \o ->
          IntHparamSearchSpace
            Core.<$> (o Core..:? "candidates")
            Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON IntHparamSearchSpace where
  toJSON IntHparamSearchSpace {..} =
    Core.object
      ( Core.catMaybes
          [ ("candidates" Core..=) Core.<$> candidates,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | Range of an int hyperparameter.
--
-- /See:/ 'newIntRange' smart constructor.
data IntRange = IntRange
  { -- | Max value of the int parameter.
    max :: (Core.Maybe Core.Int64),
    -- | Min value of the int parameter.
    min :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IntRange' with the minimum fields required to make a request.
newIntRange ::
  IntRange
newIntRange = IntRange {max = Core.Nothing, min = Core.Nothing}

instance Core.FromJSON IntRange where
  parseJSON =
    Core.withObject
      "IntRange"
      ( \o ->
          IntRange
            Core.<$> (o Core..:? "max" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o Core..:? "min"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON IntRange where
  toJSON IntRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("max" Core..=) Core.. Core.AsText Core.<$> max,
            ("min" Core..=) Core.. Core.AsText Core.<$> min
          ]
      )

--
-- /See:/ 'newIterationResult' smart constructor.
data IterationResult = IterationResult
  { -- | Time taken to run the iteration in milliseconds.
    durationMs :: (Core.Maybe Core.Int64),
    -- | Loss computed on the eval data at the end of iteration.
    evalLoss :: (Core.Maybe Core.Double),
    -- | Index of the iteration, 0 based.
    index :: (Core.Maybe Core.Int32),
    -- | Learn rate used for this iteration.
    learnRate :: (Core.Maybe Core.Double),
    -- | Loss computed on the training data at the end of iteration.
    trainingLoss :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IterationResult' with the minimum fields required to make a request.
newIterationResult ::
  IterationResult
newIterationResult =
  IterationResult
    { durationMs = Core.Nothing,
      evalLoss = Core.Nothing,
      index = Core.Nothing,
      learnRate = Core.Nothing,
      trainingLoss = Core.Nothing
    }

instance Core.FromJSON IterationResult where
  parseJSON =
    Core.withObject
      "IterationResult"
      ( \o ->
          IterationResult
            Core.<$> ( o Core..:? "durationMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "evalLoss")
            Core.<*> (o Core..:? "index")
            Core.<*> (o Core..:? "learnRate")
            Core.<*> (o Core..:? "trainingLoss")
      )

instance Core.ToJSON IterationResult where
  toJSON IterationResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationMs" Core..=) Core.. Core.AsText
              Core.<$> durationMs,
            ("evalLoss" Core..=) Core.<$> evalLoss,
            ("index" Core..=) Core.<$> index,
            ("learnRate" Core..=) Core.<$> learnRate,
            ("trainingLoss" Core..=) Core.<$> trainingLoss
          ]
      )

--
-- /See:/ 'newJob' smart constructor.
data Job = Job
  { -- | [Required] Describes the job configuration.
    configuration :: (Core.Maybe JobConfiguration),
    -- | [Output-only] A hash of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | [Output-only] Opaque ID field of the job
    id :: (Core.Maybe Core.Text),
    -- | [Optional] Reference describing the unique-per-user name of the job.
    jobReference :: (Core.Maybe JobReference),
    -- | [Output-only] The type of the resource.
    kind :: Core.Text,
    -- | [Output-only] A URL that can be used to access this resource again.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Output-only] Information about the job, including starting time and ending time of the job.
    statistics :: (Core.Maybe JobStatistics),
    -- | [Output-only] The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
    status :: (Core.Maybe JobStatus),
    -- | [Output-only] Email address of the user who ran the job.
    userEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Job' with the minimum fields required to make a request.
newJob ::
  Job
newJob =
  Job
    { configuration = Core.Nothing,
      etag = Core.Nothing,
      id = Core.Nothing,
      jobReference = Core.Nothing,
      kind = "bigquery#job",
      selfLink = Core.Nothing,
      statistics = Core.Nothing,
      status = Core.Nothing,
      userEmail = Core.Nothing
    }

instance Core.FromJSON Job where
  parseJSON =
    Core.withObject
      "Job"
      ( \o ->
          Job
            Core.<$> (o Core..:? "configuration")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "jobReference")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#job")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "statistics")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "user_email")
      )

instance Core.ToJSON Job where
  toJSON Job {..} =
    Core.object
      ( Core.catMaybes
          [ ("configuration" Core..=) Core.<$> configuration,
            ("etag" Core..=) Core.<$> etag,
            ("id" Core..=) Core.<$> id,
            ("jobReference" Core..=) Core.<$> jobReference,
            Core.Just ("kind" Core..= kind),
            ("selfLink" Core..=) Core.<$> selfLink,
            ("statistics" Core..=) Core.<$> statistics,
            ("status" Core..=) Core.<$> status,
            ("user_email" Core..=) Core.<$> userEmail
          ]
      )

--
-- /See:/ 'newJobCancelResponse' smart constructor.
data JobCancelResponse = JobCancelResponse
  { -- | The final state of the job.
    job :: (Core.Maybe Job),
    -- | The resource type of the response.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobCancelResponse' with the minimum fields required to make a request.
newJobCancelResponse ::
  JobCancelResponse
newJobCancelResponse =
  JobCancelResponse {job = Core.Nothing, kind = "bigquery#jobCancelResponse"}

instance Core.FromJSON JobCancelResponse where
  parseJSON =
    Core.withObject
      "JobCancelResponse"
      ( \o ->
          JobCancelResponse
            Core.<$> (o Core..:? "job")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "bigquery#jobCancelResponse"
                     )
      )

instance Core.ToJSON JobCancelResponse where
  toJSON JobCancelResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("job" Core..=) Core.<$> job,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newJobConfiguration' smart constructor.
data JobConfiguration = JobConfiguration
  { -- | [Pick one] Copies a table.
    copy :: (Core.Maybe JobConfigurationTableCopy),
    -- | [Optional] If set, don\'t actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn\'t a dry run. Behavior of non-query jobs is undefined.
    dryRun :: (Core.Maybe Core.Bool),
    -- | [Pick one] Configures an extract job.
    extract :: (Core.Maybe JobConfigurationExtract),
    -- | [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
    jobTimeoutMs :: (Core.Maybe Core.Int64),
    -- | [Output-only] The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.
    jobType :: (Core.Maybe Core.Text),
    -- | The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
    labels :: (Core.Maybe JobConfiguration_Labels),
    -- | [Pick one] Configures a load job.
    load :: (Core.Maybe JobConfigurationLoad),
    -- | [Pick one] Configures a query job.
    query :: (Core.Maybe JobConfigurationQuery)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobConfiguration' with the minimum fields required to make a request.
newJobConfiguration ::
  JobConfiguration
newJobConfiguration =
  JobConfiguration
    { copy = Core.Nothing,
      dryRun = Core.Nothing,
      extract = Core.Nothing,
      jobTimeoutMs = Core.Nothing,
      jobType = Core.Nothing,
      labels = Core.Nothing,
      load = Core.Nothing,
      query = Core.Nothing
    }

instance Core.FromJSON JobConfiguration where
  parseJSON =
    Core.withObject
      "JobConfiguration"
      ( \o ->
          JobConfiguration
            Core.<$> (o Core..:? "copy")
            Core.<*> (o Core..:? "dryRun")
            Core.<*> (o Core..:? "extract")
            Core.<*> ( o Core..:? "jobTimeoutMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "jobType")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "load")
            Core.<*> (o Core..:? "query")
      )

instance Core.ToJSON JobConfiguration where
  toJSON JobConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("copy" Core..=) Core.<$> copy,
            ("dryRun" Core..=) Core.<$> dryRun,
            ("extract" Core..=) Core.<$> extract,
            ("jobTimeoutMs" Core..=) Core.. Core.AsText
              Core.<$> jobTimeoutMs,
            ("jobType" Core..=) Core.<$> jobType,
            ("labels" Core..=) Core.<$> labels,
            ("load" Core..=) Core.<$> load,
            ("query" Core..=) Core.<$> query
          ]
      )

-- | The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
--
-- /See:/ 'newJobConfiguration_Labels' smart constructor.
newtype JobConfiguration_Labels = JobConfiguration_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobConfiguration_Labels' with the minimum fields required to make a request.
newJobConfiguration_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  JobConfiguration_Labels
newJobConfiguration_Labels additional =
  JobConfiguration_Labels {additional = additional}

instance Core.FromJSON JobConfiguration_Labels where
  parseJSON =
    Core.withObject
      "JobConfiguration_Labels"
      ( \o ->
          JobConfiguration_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON JobConfiguration_Labels where
  toJSON JobConfiguration_Labels {..} =
    Core.toJSON additional

--
-- /See:/ 'newJobConfigurationExtract' smart constructor.
data JobConfigurationExtract = JobConfigurationExtract
  { -- | [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.
    compression :: (Core.Maybe Core.Text),
    -- | [Optional] The exported file format. Possible values include CSV, NEWLINE/DELIMITED/JSON, PARQUET or AVRO for tables and ML/TF/SAVED/MODEL or ML/XGBOOST/BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML/TF/SAVED/MODEL.
    destinationFormat :: (Core.Maybe Core.Text),
    -- | [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.
    destinationUri :: (Core.Maybe Core.Text),
    -- | [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
    destinationUris :: (Core.Maybe [Core.Text]),
    -- | [Optional] Delimiter to use between fields in the exported data. Default is \',\'. Not applicable when extracting models.
    fieldDelimiter :: (Core.Maybe Core.Text),
    -- | [Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.
    printHeader :: Core.Bool,
    -- | A reference to the model being exported.
    sourceModel :: (Core.Maybe ModelReference),
    -- | A reference to the table being exported.
    sourceTable :: (Core.Maybe TableReference),
    -- | [Optional] If destinationFormat is set to \"AVRO\", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.
    useAvroLogicalTypes :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobConfigurationExtract' with the minimum fields required to make a request.
newJobConfigurationExtract ::
  JobConfigurationExtract
newJobConfigurationExtract =
  JobConfigurationExtract
    { compression = Core.Nothing,
      destinationFormat = Core.Nothing,
      destinationUri = Core.Nothing,
      destinationUris = Core.Nothing,
      fieldDelimiter = Core.Nothing,
      printHeader = Core.True,
      sourceModel = Core.Nothing,
      sourceTable = Core.Nothing,
      useAvroLogicalTypes = Core.Nothing
    }

instance Core.FromJSON JobConfigurationExtract where
  parseJSON =
    Core.withObject
      "JobConfigurationExtract"
      ( \o ->
          JobConfigurationExtract
            Core.<$> (o Core..:? "compression")
            Core.<*> (o Core..:? "destinationFormat")
            Core.<*> (o Core..:? "destinationUri")
            Core.<*> (o Core..:? "destinationUris")
            Core.<*> (o Core..:? "fieldDelimiter")
            Core.<*> (o Core..:? "printHeader" Core..!= Core.True)
            Core.<*> (o Core..:? "sourceModel")
            Core.<*> (o Core..:? "sourceTable")
            Core.<*> (o Core..:? "useAvroLogicalTypes")
      )

instance Core.ToJSON JobConfigurationExtract where
  toJSON JobConfigurationExtract {..} =
    Core.object
      ( Core.catMaybes
          [ ("compression" Core..=) Core.<$> compression,
            ("destinationFormat" Core..=)
              Core.<$> destinationFormat,
            ("destinationUri" Core..=) Core.<$> destinationUri,
            ("destinationUris" Core..=) Core.<$> destinationUris,
            ("fieldDelimiter" Core..=) Core.<$> fieldDelimiter,
            Core.Just ("printHeader" Core..= printHeader),
            ("sourceModel" Core..=) Core.<$> sourceModel,
            ("sourceTable" Core..=) Core.<$> sourceTable,
            ("useAvroLogicalTypes" Core..=)
              Core.<$> useAvroLogicalTypes
          ]
      )

--
-- /See:/ 'newJobConfigurationLoad' smart constructor.
data JobConfigurationLoad = JobConfigurationLoad
  { -- | [Optional] Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.
    allowJaggedRows :: (Core.Maybe Core.Bool),
    -- | Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
    allowQuotedNewlines :: (Core.Maybe Core.Bool),
    -- | [Optional] Indicates if we should automatically infer the options and schema for CSV and JSON sources.
    autodetect :: (Core.Maybe Core.Bool),
    -- | [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
    clustering :: (Core.Maybe Clustering),
    -- | Connection properties.
    connectionProperties :: (Core.Maybe [ConnectionProperty]),
    -- | [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE/IF/NEEDED: If the table does not exist, BigQuery creates the table. CREATE/NEVER: The table must already exist. If it does not, a \'notFound\' error is returned in the job result. The default value is CREATE/IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
    createDisposition :: (Core.Maybe Core.Text),
    -- | If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs the load job in non-session mode.
    createSession :: (Core.Maybe Core.Bool),
    -- | [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is [\"NUMERIC\", \"BIGNUMERIC\"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types
    -- in this field is ignored. For example, [\"BIGNUMERIC\", \"NUMERIC\"] is the same as [\"NUMERIC\", \"BIGNUMERIC\"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to [\"NUMERIC\", \"STRING\"] for ORC and [\"NUMERIC\"] for the other file formats.
    decimalTargetTypes :: (Core.Maybe [Core.Text]),
    -- | Custom encryption configuration (e.g., Cloud KMS keys).
    destinationEncryptionConfiguration :: (Core.Maybe EncryptionConfiguration),
    -- | [Required] The destination table to load the data into.
    destinationTable :: (Core.Maybe TableReference),
    -- | [Beta] [Optional] Properties with which to create the destination table if it is new.
    destinationTableProperties :: (Core.Maybe DestinationTableProperties),
    -- | [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
    encoding :: (Core.Maybe Core.Text),
    -- | [Optional] The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character. To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence \"\\t\" to specify a tab separator. The default value is a comma (\',\').
    fieldDelimiter :: (Core.Maybe Core.Text),
    -- | [Optional] Options to configure hive partitioning support.
    hivePartitioningOptions :: (Core.Maybe HivePartitioningOptions),
    -- | [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don\'t match any column names
    ignoreUnknownValues :: (Core.Maybe Core.Bool),
    -- | [Optional] If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON. For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited GeoJSON: set to GEOJSON.
    jsonExtension :: (Core.Maybe Core.Text),
    -- | [Optional] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV and JSON. The default value is 0, which requires that all records are valid.
    maxBadRecords :: (Core.Maybe Core.Int32),
    -- | [Optional] Specifies a string that represents a null value in a CSV file. For example, if you specify \"\\N\", BigQuery interprets \"\\N\" as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value.
    nullMarker :: (Core.Maybe Core.Text),
    -- | [Optional] Options to configure parquet support.
    parquetOptions :: (Core.Maybe ParquetOptions),
    -- | [Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from \'\\x00\' to \'\\x1F\') when loading from CSV. Only applicable to CSV, ignored for other formats.
    preserveAsciiControlCharacters :: (Core.Maybe Core.Bool),
    -- | If sourceFormat is set to \"DATASTORE_BACKUP\", indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn\'t found in the Cloud Datastore backup, an invalid error is returned in the job result.
    projectionFields :: (Core.Maybe [Core.Text]),
    -- | [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote (\'\"\'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
    quote :: (Core.Maybe Core.Text),
    -- | [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
    rangePartitioning :: (Core.Maybe RangePartitioning),
    -- | User provided referencing file with the expected reader schema, Available for the format: AVRO, PARQUET, ORC.
    referenceFileSchemaUri :: (Core.Maybe Core.Text),
    -- | [Optional] The schema for the destination table. The schema can be omitted if the destination table already exists, or if you\'re loading data from Google Cloud Datastore.
    schema :: (Core.Maybe TableSchema),
    -- | [Deprecated] The inline schema. For CSV schemas, specify as \"Field1:Type1[,Field2:Type2]*\". For example, \"foo:STRING, bar:INTEGER, baz:FLOAT\".
    schemaInline :: (Core.Maybe Core.Text),
    -- | [Deprecated] The format of the schemaInline property.
    schemaInlineFormat :: (Core.Maybe Core.Text),
    -- | Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE/APPEND; when writeDisposition is WRITE/TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE/TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW/FIELD/ADDITION: allow adding a nullable field to the schema. ALLOW/FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
    schemaUpdateOptions :: (Core.Maybe [Core.Text]),
    -- | [Optional] The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped.
    skipLeadingRows :: (Core.Maybe Core.Int32),
    -- | [Optional] The format of the data files. For CSV files, specify \"CSV\". For datastore backups, specify \"DATASTORE/BACKUP\". For newline-delimited JSON, specify \"NEWLINE/DELIMITED_JSON\". For Avro, specify \"AVRO\". For parquet, specify \"PARQUET\". For orc, specify \"ORC\". The default value is CSV.
    sourceFormat :: (Core.Maybe Core.Text),
    -- | [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one \'/\' wildcard character and it must come after the \'bucket\' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the \'/\' wildcard character is not allowed.
    sourceUris :: (Core.Maybe [Core.Text]),
    -- | Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
    timePartitioning :: (Core.Maybe TimePartitioning),
    -- | [Optional] If sourceFormat is set to \"AVRO\", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).
    useAvroLogicalTypes :: (Core.Maybe Core.Bool),
    -- | [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE/TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE/APPEND: If the table already exists, BigQuery appends the data to the table. WRITE/EMPTY: If the table already exists and contains data, a \'duplicate\' error is returned in the job result. The default value is WRITE/APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
    writeDisposition :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobConfigurationLoad' with the minimum fields required to make a request.
newJobConfigurationLoad ::
  JobConfigurationLoad
newJobConfigurationLoad =
  JobConfigurationLoad
    { allowJaggedRows = Core.Nothing,
      allowQuotedNewlines = Core.Nothing,
      autodetect = Core.Nothing,
      clustering = Core.Nothing,
      connectionProperties = Core.Nothing,
      createDisposition = Core.Nothing,
      createSession = Core.Nothing,
      decimalTargetTypes = Core.Nothing,
      destinationEncryptionConfiguration = Core.Nothing,
      destinationTable = Core.Nothing,
      destinationTableProperties = Core.Nothing,
      encoding = Core.Nothing,
      fieldDelimiter = Core.Nothing,
      hivePartitioningOptions = Core.Nothing,
      ignoreUnknownValues = Core.Nothing,
      jsonExtension = Core.Nothing,
      maxBadRecords = Core.Nothing,
      nullMarker = Core.Nothing,
      parquetOptions = Core.Nothing,
      preserveAsciiControlCharacters = Core.Nothing,
      projectionFields = Core.Nothing,
      quote = Core.Nothing,
      rangePartitioning = Core.Nothing,
      referenceFileSchemaUri = Core.Nothing,
      schema = Core.Nothing,
      schemaInline = Core.Nothing,
      schemaInlineFormat = Core.Nothing,
      schemaUpdateOptions = Core.Nothing,
      skipLeadingRows = Core.Nothing,
      sourceFormat = Core.Nothing,
      sourceUris = Core.Nothing,
      timePartitioning = Core.Nothing,
      useAvroLogicalTypes = Core.Nothing,
      writeDisposition = Core.Nothing
    }

instance Core.FromJSON JobConfigurationLoad where
  parseJSON =
    Core.withObject
      "JobConfigurationLoad"
      ( \o ->
          JobConfigurationLoad
            Core.<$> (o Core..:? "allowJaggedRows")
            Core.<*> (o Core..:? "allowQuotedNewlines")
            Core.<*> (o Core..:? "autodetect")
            Core.<*> (o Core..:? "clustering")
            Core.<*> (o Core..:? "connectionProperties")
            Core.<*> (o Core..:? "createDisposition")
            Core.<*> (o Core..:? "createSession")
            Core.<*> (o Core..:? "decimalTargetTypes")
            Core.<*> (o Core..:? "destinationEncryptionConfiguration")
            Core.<*> (o Core..:? "destinationTable")
            Core.<*> (o Core..:? "destinationTableProperties")
            Core.<*> (o Core..:? "encoding")
            Core.<*> (o Core..:? "fieldDelimiter")
            Core.<*> (o Core..:? "hivePartitioningOptions")
            Core.<*> (o Core..:? "ignoreUnknownValues")
            Core.<*> (o Core..:? "jsonExtension")
            Core.<*> (o Core..:? "maxBadRecords")
            Core.<*> (o Core..:? "nullMarker")
            Core.<*> (o Core..:? "parquetOptions")
            Core.<*> (o Core..:? "preserveAsciiControlCharacters")
            Core.<*> (o Core..:? "projectionFields")
            Core.<*> (o Core..:? "quote")
            Core.<*> (o Core..:? "rangePartitioning")
            Core.<*> (o Core..:? "referenceFileSchemaUri")
            Core.<*> (o Core..:? "schema")
            Core.<*> (o Core..:? "schemaInline")
            Core.<*> (o Core..:? "schemaInlineFormat")
            Core.<*> (o Core..:? "schemaUpdateOptions")
            Core.<*> (o Core..:? "skipLeadingRows")
            Core.<*> (o Core..:? "sourceFormat")
            Core.<*> (o Core..:? "sourceUris")
            Core.<*> (o Core..:? "timePartitioning")
            Core.<*> (o Core..:? "useAvroLogicalTypes")
            Core.<*> (o Core..:? "writeDisposition")
      )

instance Core.ToJSON JobConfigurationLoad where
  toJSON JobConfigurationLoad {..} =
    Core.object
      ( Core.catMaybes
          [ ("allowJaggedRows" Core..=)
              Core.<$> allowJaggedRows,
            ("allowQuotedNewlines" Core..=)
              Core.<$> allowQuotedNewlines,
            ("autodetect" Core..=) Core.<$> autodetect,
            ("clustering" Core..=) Core.<$> clustering,
            ("connectionProperties" Core..=)
              Core.<$> connectionProperties,
            ("createDisposition" Core..=)
              Core.<$> createDisposition,
            ("createSession" Core..=) Core.<$> createSession,
            ("decimalTargetTypes" Core..=)
              Core.<$> decimalTargetTypes,
            ("destinationEncryptionConfiguration" Core..=)
              Core.<$> destinationEncryptionConfiguration,
            ("destinationTable" Core..=)
              Core.<$> destinationTable,
            ("destinationTableProperties" Core..=)
              Core.<$> destinationTableProperties,
            ("encoding" Core..=) Core.<$> encoding,
            ("fieldDelimiter" Core..=) Core.<$> fieldDelimiter,
            ("hivePartitioningOptions" Core..=)
              Core.<$> hivePartitioningOptions,
            ("ignoreUnknownValues" Core..=)
              Core.<$> ignoreUnknownValues,
            ("jsonExtension" Core..=) Core.<$> jsonExtension,
            ("maxBadRecords" Core..=) Core.<$> maxBadRecords,
            ("nullMarker" Core..=) Core.<$> nullMarker,
            ("parquetOptions" Core..=) Core.<$> parquetOptions,
            ("preserveAsciiControlCharacters" Core..=)
              Core.<$> preserveAsciiControlCharacters,
            ("projectionFields" Core..=)
              Core.<$> projectionFields,
            ("quote" Core..=) Core.<$> quote,
            ("rangePartitioning" Core..=)
              Core.<$> rangePartitioning,
            ("referenceFileSchemaUri" Core..=)
              Core.<$> referenceFileSchemaUri,
            ("schema" Core..=) Core.<$> schema,
            ("schemaInline" Core..=) Core.<$> schemaInline,
            ("schemaInlineFormat" Core..=)
              Core.<$> schemaInlineFormat,
            ("schemaUpdateOptions" Core..=)
              Core.<$> schemaUpdateOptions,
            ("skipLeadingRows" Core..=) Core.<$> skipLeadingRows,
            ("sourceFormat" Core..=) Core.<$> sourceFormat,
            ("sourceUris" Core..=) Core.<$> sourceUris,
            ("timePartitioning" Core..=)
              Core.<$> timePartitioning,
            ("useAvroLogicalTypes" Core..=)
              Core.<$> useAvroLogicalTypes,
            ("writeDisposition" Core..=)
              Core.<$> writeDisposition
          ]
      )

--
-- /See:/ 'newJobConfigurationQuery' smart constructor.
data JobConfigurationQuery = JobConfigurationQuery
  { -- | [Optional] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size.
    allowLargeResults :: Core.Bool,
    -- | [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
    clustering :: (Core.Maybe Clustering),
    -- | Connection properties.
    connectionProperties :: (Core.Maybe [ConnectionProperty]),
    -- | [Optional] Specifies whether the query should be executed as a continuous query. The default value is false.
    continuous :: (Core.Maybe Core.Bool),
    -- | [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE/IF/NEEDED: If the table does not exist, BigQuery creates the table. CREATE/NEVER: The table must already exist. If it does not, a \'notFound\' error is returned in the job result. The default value is CREATE/IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
    createDisposition :: (Core.Maybe Core.Text),
    -- | If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode.
    createSession :: (Core.Maybe Core.Bool),
    -- | [Optional] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
    defaultDataset :: (Core.Maybe DatasetReference),
    -- | Custom encryption configuration (e.g., Cloud KMS keys).
    destinationEncryptionConfiguration :: (Core.Maybe EncryptionConfiguration),
    -- | [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. This property must be set for large results that exceed the maximum response size.
    destinationTable :: (Core.Maybe TableReference),
    -- | [Optional] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened.
    flattenResults :: Core.Bool,
    -- | [Optional] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge). If unspecified, this will be set to your project default.
    maximumBillingTier :: Core.Int32,
    -- | [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.
    maximumBytesBilled :: (Core.Maybe Core.Int64),
    -- | Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (\@myparam) query parameters in this query.
    parameterMode :: (Core.Maybe Core.Text),
    -- | [Deprecated] This property is deprecated.
    preserveNulls :: (Core.Maybe Core.Bool),
    -- | [Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE.
    priority :: (Core.Maybe Core.Text),
    -- | [Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
    query :: (Core.Maybe Core.Text),
    -- | Query parameters for standard SQL queries.
    queryParameters :: (Core.Maybe [QueryParameter]),
    -- | [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
    rangePartitioning :: (Core.Maybe RangePartitioning),
    -- | Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in two cases: when writeDisposition is WRITE/APPEND; when writeDisposition is WRITE/TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE/TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW/FIELD/ADDITION: allow adding a nullable field to the schema. ALLOW/FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
    schemaUpdateOptions :: (Core.Maybe [Core.Text]),
    -- | [Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
    tableDefinitions :: (Core.Maybe JobConfigurationQuery_TableDefinitions),
    -- | Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
    timePartitioning :: (Core.Maybe TimePartitioning),
    -- | Specifies whether to use BigQuery\'s legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery\'s standard SQL: https:\/\/cloud.google.com\/bigquery\/sql-reference\/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.
    useLegacySql :: Core.Bool,
    -- | [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true.
    useQueryCache :: Core.Bool,
    -- | Describes user-defined function resources used in the query.
    userDefinedFunctionResources :: (Core.Maybe [UserDefinedFunctionResource]),
    -- | [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE/TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result. WRITE/APPEND: If the table already exists, BigQuery appends the data to the table. WRITE/EMPTY: If the table already exists and contains data, a \'duplicate\' error is returned in the job result. The default value is WRITE/EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
    writeDisposition :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobConfigurationQuery' with the minimum fields required to make a request.
newJobConfigurationQuery ::
  JobConfigurationQuery
newJobConfigurationQuery =
  JobConfigurationQuery
    { allowLargeResults = Core.False,
      clustering = Core.Nothing,
      connectionProperties = Core.Nothing,
      continuous = Core.Nothing,
      createDisposition = Core.Nothing,
      createSession = Core.Nothing,
      defaultDataset = Core.Nothing,
      destinationEncryptionConfiguration = Core.Nothing,
      destinationTable = Core.Nothing,
      flattenResults = Core.True,
      maximumBillingTier = 1,
      maximumBytesBilled = Core.Nothing,
      parameterMode = Core.Nothing,
      preserveNulls = Core.Nothing,
      priority = Core.Nothing,
      query = Core.Nothing,
      queryParameters = Core.Nothing,
      rangePartitioning = Core.Nothing,
      schemaUpdateOptions = Core.Nothing,
      tableDefinitions = Core.Nothing,
      timePartitioning = Core.Nothing,
      useLegacySql = Core.True,
      useQueryCache = Core.True,
      userDefinedFunctionResources = Core.Nothing,
      writeDisposition = Core.Nothing
    }

instance Core.FromJSON JobConfigurationQuery where
  parseJSON =
    Core.withObject
      "JobConfigurationQuery"
      ( \o ->
          JobConfigurationQuery
            Core.<$> (o Core..:? "allowLargeResults" Core..!= Core.False)
            Core.<*> (o Core..:? "clustering")
            Core.<*> (o Core..:? "connectionProperties")
            Core.<*> (o Core..:? "continuous")
            Core.<*> (o Core..:? "createDisposition")
            Core.<*> (o Core..:? "createSession")
            Core.<*> (o Core..:? "defaultDataset")
            Core.<*> (o Core..:? "destinationEncryptionConfiguration")
            Core.<*> (o Core..:? "destinationTable")
            Core.<*> (o Core..:? "flattenResults" Core..!= Core.True)
            Core.<*> (o Core..:? "maximumBillingTier" Core..!= 1)
            Core.<*> ( o Core..:? "maximumBytesBilled"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "parameterMode")
            Core.<*> (o Core..:? "preserveNulls")
            Core.<*> (o Core..:? "priority")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "queryParameters")
            Core.<*> (o Core..:? "rangePartitioning")
            Core.<*> (o Core..:? "schemaUpdateOptions")
            Core.<*> (o Core..:? "tableDefinitions")
            Core.<*> (o Core..:? "timePartitioning")
            Core.<*> (o Core..:? "useLegacySql" Core..!= Core.True)
            Core.<*> (o Core..:? "useQueryCache" Core..!= Core.True)
            Core.<*> (o Core..:? "userDefinedFunctionResources")
            Core.<*> (o Core..:? "writeDisposition")
      )

instance Core.ToJSON JobConfigurationQuery where
  toJSON JobConfigurationQuery {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("allowLargeResults" Core..= allowLargeResults),
            ("clustering" Core..=) Core.<$> clustering,
            ("connectionProperties" Core..=)
              Core.<$> connectionProperties,
            ("continuous" Core..=) Core.<$> continuous,
            ("createDisposition" Core..=)
              Core.<$> createDisposition,
            ("createSession" Core..=) Core.<$> createSession,
            ("defaultDataset" Core..=) Core.<$> defaultDataset,
            ("destinationEncryptionConfiguration" Core..=)
              Core.<$> destinationEncryptionConfiguration,
            ("destinationTable" Core..=)
              Core.<$> destinationTable,
            Core.Just ("flattenResults" Core..= flattenResults),
            Core.Just
              ("maximumBillingTier" Core..= maximumBillingTier),
            ("maximumBytesBilled" Core..=) Core.. Core.AsText
              Core.<$> maximumBytesBilled,
            ("parameterMode" Core..=) Core.<$> parameterMode,
            ("preserveNulls" Core..=) Core.<$> preserveNulls,
            ("priority" Core..=) Core.<$> priority,
            ("query" Core..=) Core.<$> query,
            ("queryParameters" Core..=) Core.<$> queryParameters,
            ("rangePartitioning" Core..=)
              Core.<$> rangePartitioning,
            ("schemaUpdateOptions" Core..=)
              Core.<$> schemaUpdateOptions,
            ("tableDefinitions" Core..=)
              Core.<$> tableDefinitions,
            ("timePartitioning" Core..=)
              Core.<$> timePartitioning,
            Core.Just ("useLegacySql" Core..= useLegacySql),
            Core.Just ("useQueryCache" Core..= useQueryCache),
            ("userDefinedFunctionResources" Core..=)
              Core.<$> userDefinedFunctionResources,
            ("writeDisposition" Core..=)
              Core.<$> writeDisposition
          ]
      )

-- | [Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
--
-- /See:/ 'newJobConfigurationQuery_TableDefinitions' smart constructor.
newtype JobConfigurationQuery_TableDefinitions = JobConfigurationQuery_TableDefinitions
  { -- |
    additional :: (Core.HashMap Core.Text ExternalDataConfiguration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobConfigurationQuery_TableDefinitions' with the minimum fields required to make a request.
newJobConfigurationQuery_TableDefinitions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text ExternalDataConfiguration ->
  JobConfigurationQuery_TableDefinitions
newJobConfigurationQuery_TableDefinitions additional =
  JobConfigurationQuery_TableDefinitions {additional = additional}

instance
  Core.FromJSON
    JobConfigurationQuery_TableDefinitions
  where
  parseJSON =
    Core.withObject
      "JobConfigurationQuery_TableDefinitions"
      ( \o ->
          JobConfigurationQuery_TableDefinitions
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    JobConfigurationQuery_TableDefinitions
  where
  toJSON JobConfigurationQuery_TableDefinitions {..} =
    Core.toJSON additional

--
-- /See:/ 'newJobConfigurationTableCopy' smart constructor.
data JobConfigurationTableCopy = JobConfigurationTableCopy
  { -- | [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE/IF/NEEDED: If the table does not exist, BigQuery creates the table. CREATE/NEVER: The table must already exist. If it does not, a \'notFound\' error is returned in the job result. The default value is CREATE/IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
    createDisposition :: (Core.Maybe Core.Text),
    -- | Custom encryption configuration (e.g., Cloud KMS keys).
    destinationEncryptionConfiguration :: (Core.Maybe EncryptionConfiguration),
    -- | [Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.
    destinationExpirationTime :: (Core.Maybe Core.Value),
    -- | [Required] The destination table
    destinationTable :: (Core.Maybe TableReference),
    -- | [Optional] Supported operation types in table copy job.
    operationType :: (Core.Maybe Core.Text),
    -- | [Pick one] Source table to copy.
    sourceTable :: (Core.Maybe TableReference),
    -- | [Pick one] Source tables to copy.
    sourceTables :: (Core.Maybe [TableReference]),
    -- | [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE/TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE/APPEND: If the table already exists, BigQuery appends the data to the table. WRITE/EMPTY: If the table already exists and contains data, a \'duplicate\' error is returned in the job result. The default value is WRITE/EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
    writeDisposition :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobConfigurationTableCopy' with the minimum fields required to make a request.
newJobConfigurationTableCopy ::
  JobConfigurationTableCopy
newJobConfigurationTableCopy =
  JobConfigurationTableCopy
    { createDisposition = Core.Nothing,
      destinationEncryptionConfiguration = Core.Nothing,
      destinationExpirationTime = Core.Nothing,
      destinationTable = Core.Nothing,
      operationType = Core.Nothing,
      sourceTable = Core.Nothing,
      sourceTables = Core.Nothing,
      writeDisposition = Core.Nothing
    }

instance Core.FromJSON JobConfigurationTableCopy where
  parseJSON =
    Core.withObject
      "JobConfigurationTableCopy"
      ( \o ->
          JobConfigurationTableCopy
            Core.<$> (o Core..:? "createDisposition")
            Core.<*> (o Core..:? "destinationEncryptionConfiguration")
            Core.<*> (o Core..:? "destinationExpirationTime")
            Core.<*> (o Core..:? "destinationTable")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "sourceTable")
            Core.<*> (o Core..:? "sourceTables")
            Core.<*> (o Core..:? "writeDisposition")
      )

instance Core.ToJSON JobConfigurationTableCopy where
  toJSON JobConfigurationTableCopy {..} =
    Core.object
      ( Core.catMaybes
          [ ("createDisposition" Core..=)
              Core.<$> createDisposition,
            ("destinationEncryptionConfiguration" Core..=)
              Core.<$> destinationEncryptionConfiguration,
            ("destinationExpirationTime" Core..=)
              Core.<$> destinationExpirationTime,
            ("destinationTable" Core..=)
              Core.<$> destinationTable,
            ("operationType" Core..=) Core.<$> operationType,
            ("sourceTable" Core..=) Core.<$> sourceTable,
            ("sourceTables" Core..=) Core.<$> sourceTables,
            ("writeDisposition" Core..=)
              Core.<$> writeDisposition
          ]
      )

--
-- /See:/ 'newJobList' smart constructor.
data JobList = JobList
  { -- | A hash of this page of results.
    etag :: (Core.Maybe Core.Text),
    -- | List of jobs that were requested.
    jobs :: (Core.Maybe [JobList_JobsItem]),
    -- | The resource type of the response.
    kind :: Core.Text,
    -- | A token to request the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobList' with the minimum fields required to make a request.
newJobList ::
  JobList
newJobList =
  JobList
    { etag = Core.Nothing,
      jobs = Core.Nothing,
      kind = "bigquery#jobList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON JobList where
  parseJSON =
    Core.withObject
      "JobList"
      ( \o ->
          JobList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "jobs")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#jobList")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON JobList where
  toJSON JobList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("jobs" Core..=) Core.<$> jobs,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newJobList_JobsItem' smart constructor.
data JobList_JobsItem = JobList_JobsItem
  { -- | [Full-projection-only] Specifies the job configuration.
    configuration :: (Core.Maybe JobConfiguration),
    -- | A result object that will be present only if the job has failed.
    errorResult :: (Core.Maybe ErrorProto),
    -- | Unique opaque ID of the job.
    id :: (Core.Maybe Core.Text),
    -- | Job reference uniquely identifying the job.
    jobReference :: (Core.Maybe JobReference),
    -- | The resource type.
    kind :: Core.Text,
    -- | Running state of the job. When the state is DONE, errorResult can be checked to determine whether the job succeeded or failed.
    state :: (Core.Maybe Core.Text),
    -- | [Output-only] Information about the job, including starting time and ending time of the job.
    statistics :: (Core.Maybe JobStatistics),
    -- | [Full-projection-only] Describes the state of the job.
    status :: (Core.Maybe JobStatus),
    -- | [Full-projection-only] Email address of the user who ran the job.
    userEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobList_JobsItem' with the minimum fields required to make a request.
newJobList_JobsItem ::
  JobList_JobsItem
newJobList_JobsItem =
  JobList_JobsItem
    { configuration = Core.Nothing,
      errorResult = Core.Nothing,
      id = Core.Nothing,
      jobReference = Core.Nothing,
      kind = "bigquery#job",
      state = Core.Nothing,
      statistics = Core.Nothing,
      status = Core.Nothing,
      userEmail = Core.Nothing
    }

instance Core.FromJSON JobList_JobsItem where
  parseJSON =
    Core.withObject
      "JobList_JobsItem"
      ( \o ->
          JobList_JobsItem
            Core.<$> (o Core..:? "configuration")
            Core.<*> (o Core..:? "errorResult")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "jobReference")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#job")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "statistics")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "user_email")
      )

instance Core.ToJSON JobList_JobsItem where
  toJSON JobList_JobsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("configuration" Core..=) Core.<$> configuration,
            ("errorResult" Core..=) Core.<$> errorResult,
            ("id" Core..=) Core.<$> id,
            ("jobReference" Core..=) Core.<$> jobReference,
            Core.Just ("kind" Core..= kind),
            ("state" Core..=) Core.<$> state,
            ("statistics" Core..=) Core.<$> statistics,
            ("status" Core..=) Core.<$> status,
            ("user_email" Core..=) Core.<$> userEmail
          ]
      )

--
-- /See:/ 'newJobReference' smart constructor.
data JobReference = JobReference
  { -- | [Required] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
    jobId :: (Core.Maybe Core.Text),
    -- | The geographic location of the job. See details at https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying/your/location.
    location :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the project containing this job.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobReference' with the minimum fields required to make a request.
newJobReference ::
  JobReference
newJobReference =
  JobReference
    { jobId = Core.Nothing,
      location = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON JobReference where
  parseJSON =
    Core.withObject
      "JobReference"
      ( \o ->
          JobReference
            Core.<$> (o Core..:? "jobId")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON JobReference where
  toJSON JobReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobId" Core..=) Core.<$> jobId,
            ("location" Core..=) Core.<$> location,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

--
-- /See:/ 'newJobStatistics' smart constructor.
data JobStatistics = JobStatistics
  { -- | [TrustedTester] [Output-only] Job progress (0.0 -> 1.0) for LOAD and EXTRACT jobs.
    completionRatio :: (Core.Maybe Core.Double),
    -- | [Output-only] Statistics for a copy job.
    copy :: (Core.Maybe JobStatistics5),
    -- | [Output-only] Creation time of this job, in milliseconds since the epoch. This field will be present on all jobs.
    creationTime :: (Core.Maybe Core.Int64),
    -- | [Output-only] Statistics for data masking. Present only for query and extract jobs.
    dataMaskingStatistics :: (Core.Maybe DataMaskingStatistics),
    -- | [Output-only] End time of this job, in milliseconds since the epoch. This field will be present whenever a job is in the DONE state.
    endTime :: (Core.Maybe Core.Int64),
    -- | [Output-only] Statistics for an extract job.
    extract :: (Core.Maybe JobStatistics4),
    -- | [Output-only] Statistics for a load job.
    load :: (Core.Maybe JobStatistics3),
    -- | [Output-only] Number of child jobs executed.
    numChildJobs :: (Core.Maybe Core.Int64),
    -- | [Output-only] If this is a child job, the id of the parent.
    parentJobId :: (Core.Maybe Core.Text),
    -- | [Output-only] Statistics for a query job.
    query :: (Core.Maybe JobStatistics2),
    -- | [Output-only] Quotas which delayed this job\'s start time.
    quotaDeferments :: (Core.Maybe [Core.Text]),
    -- | [Output-only] Job resource usage breakdown by reservation.
    reservationUsage :: (Core.Maybe [JobStatistics_ReservationUsageItem]),
    -- | [Output-only] Name of the primary reservation assigned to this job. Note that this could be different than reservations reported in the reservation usage field if parent reservations were used to execute this job.
    reservationId :: (Core.Maybe Core.Text),
    -- | [Output-only] [Preview] Statistics for row-level security. Present only for query and extract jobs.
    rowLevelSecurityStatistics :: (Core.Maybe RowLevelSecurityStatistics),
    -- | [Output-only] Statistics for a child job of a script.
    scriptStatistics :: (Core.Maybe ScriptStatistics),
    -- | [Output-only] [Preview] Information of the session if this job is part of one.
    sessionInfo :: (Core.Maybe SessionInfo),
    -- | [Output-only] Start time of this job, in milliseconds since the epoch. This field will be present when the job transitions from the PENDING state to either RUNNING or DONE.
    startTime :: (Core.Maybe Core.Int64),
    -- | [Output-only] [Deprecated] Use the bytes processed in the query statistics instead.
    totalBytesProcessed :: (Core.Maybe Core.Int64),
    -- | [Output-only] Slot-milliseconds for the job.
    totalSlotMs :: (Core.Maybe Core.Int64),
    -- | [Output-only] [Alpha] Information of the multi-statement transaction if this job is part of one.
    transactionInfo :: (Core.Maybe TransactionInfo)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatistics' with the minimum fields required to make a request.
newJobStatistics ::
  JobStatistics
newJobStatistics =
  JobStatistics
    { completionRatio = Core.Nothing,
      copy = Core.Nothing,
      creationTime = Core.Nothing,
      dataMaskingStatistics = Core.Nothing,
      endTime = Core.Nothing,
      extract = Core.Nothing,
      load = Core.Nothing,
      numChildJobs = Core.Nothing,
      parentJobId = Core.Nothing,
      query = Core.Nothing,
      quotaDeferments = Core.Nothing,
      reservationUsage = Core.Nothing,
      reservationId = Core.Nothing,
      rowLevelSecurityStatistics = Core.Nothing,
      scriptStatistics = Core.Nothing,
      sessionInfo = Core.Nothing,
      startTime = Core.Nothing,
      totalBytesProcessed = Core.Nothing,
      totalSlotMs = Core.Nothing,
      transactionInfo = Core.Nothing
    }

instance Core.FromJSON JobStatistics where
  parseJSON =
    Core.withObject
      "JobStatistics"
      ( \o ->
          JobStatistics
            Core.<$> (o Core..:? "completionRatio")
            Core.<*> (o Core..:? "copy")
            Core.<*> ( o Core..:? "creationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "dataMaskingStatistics")
            Core.<*> ( o Core..:? "endTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "extract")
            Core.<*> (o Core..:? "load")
            Core.<*> ( o Core..:? "numChildJobs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "parentJobId")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "quotaDeferments")
            Core.<*> (o Core..:? "reservationUsage")
            Core.<*> (o Core..:? "reservation_id")
            Core.<*> (o Core..:? "rowLevelSecurityStatistics")
            Core.<*> (o Core..:? "scriptStatistics")
            Core.<*> (o Core..:? "sessionInfo")
            Core.<*> ( o Core..:? "startTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "totalBytesProcessed"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "totalSlotMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "transactionInfo")
      )

instance Core.ToJSON JobStatistics where
  toJSON JobStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("completionRatio" Core..=)
              Core.<$> completionRatio,
            ("copy" Core..=) Core.<$> copy,
            ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("dataMaskingStatistics" Core..=)
              Core.<$> dataMaskingStatistics,
            ("endTime" Core..=) Core.. Core.AsText
              Core.<$> endTime,
            ("extract" Core..=) Core.<$> extract,
            ("load" Core..=) Core.<$> load,
            ("numChildJobs" Core..=) Core.. Core.AsText
              Core.<$> numChildJobs,
            ("parentJobId" Core..=) Core.<$> parentJobId,
            ("query" Core..=) Core.<$> query,
            ("quotaDeferments" Core..=) Core.<$> quotaDeferments,
            ("reservationUsage" Core..=)
              Core.<$> reservationUsage,
            ("reservation_id" Core..=) Core.<$> reservationId,
            ("rowLevelSecurityStatistics" Core..=)
              Core.<$> rowLevelSecurityStatistics,
            ("scriptStatistics" Core..=)
              Core.<$> scriptStatistics,
            ("sessionInfo" Core..=) Core.<$> sessionInfo,
            ("startTime" Core..=) Core.. Core.AsText
              Core.<$> startTime,
            ("totalBytesProcessed" Core..=) Core.. Core.AsText
              Core.<$> totalBytesProcessed,
            ("totalSlotMs" Core..=) Core.. Core.AsText
              Core.<$> totalSlotMs,
            ("transactionInfo" Core..=)
              Core.<$> transactionInfo
          ]
      )

--
-- /See:/ 'newJobStatistics_ReservationUsageItem' smart constructor.
data JobStatistics_ReservationUsageItem = JobStatistics_ReservationUsageItem
  { -- | [Output-only] Reservation name or \"unreserved\" for on-demand resources usage.
    name :: (Core.Maybe Core.Text),
    -- | [Output-only] Slot-milliseconds the job spent in the given reservation.
    slotMs :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatistics_ReservationUsageItem' with the minimum fields required to make a request.
newJobStatistics_ReservationUsageItem ::
  JobStatistics_ReservationUsageItem
newJobStatistics_ReservationUsageItem =
  JobStatistics_ReservationUsageItem
    { name = Core.Nothing,
      slotMs = Core.Nothing
    }

instance
  Core.FromJSON
    JobStatistics_ReservationUsageItem
  where
  parseJSON =
    Core.withObject
      "JobStatistics_ReservationUsageItem"
      ( \o ->
          JobStatistics_ReservationUsageItem
            Core.<$> (o Core..:? "name")
            Core.<*> ( o Core..:? "slotMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    JobStatistics_ReservationUsageItem
  where
  toJSON JobStatistics_ReservationUsageItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("slotMs" Core..=) Core.. Core.AsText
              Core.<$> slotMs
          ]
      )

--
-- /See:/ 'newJobStatistics2' smart constructor.
data JobStatistics2 = JobStatistics2
  { -- | BI Engine specific Statistics. [Output only] BI Engine specific Statistics.
    biEngineStatistics :: (Core.Maybe BiEngineStatistics),
    -- | [Output only] Billing tier for the job.
    billingTier :: (Core.Maybe Core.Int32),
    -- | [Output only] Whether the query result was fetched from the query cache.
    cacheHit :: (Core.Maybe Core.Bool),
    -- | [Output only] [Preview] The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.
    ddlAffectedRowAccessPolicyCount :: (Core.Maybe Core.Int64),
    -- | [Output only] The DDL destination table. Present only for ALTER TABLE RENAME TO queries. Note that ddl/target/table is used just for its type information.
    ddlDestinationTable :: (Core.Maybe TableReference),
    -- | The DDL operation performed, possibly dependent on the pre-existence of the DDL target. Possible values (new values might be added in the future): \"CREATE\": The query created the DDL target. \"SKIP\": No-op. Example cases: the query is CREATE TABLE IF NOT EXISTS while the table already exists, or the query is DROP TABLE IF EXISTS while the table does not exist. \"REPLACE\": The query replaced the DDL target. Example case: the query is CREATE OR REPLACE TABLE, and the table already exists. \"DROP\": The query deleted the DDL target.
    ddlOperationPerformed :: (Core.Maybe Core.Text),
    -- | [Output only] The DDL target dataset. Present only for CREATE\/ALTER\/DROP SCHEMA queries.
    ddlTargetDataset :: (Core.Maybe DatasetReference),
    -- | The DDL target routine. Present only for CREATE\/DROP FUNCTION\/PROCEDURE queries.
    ddlTargetRoutine :: (Core.Maybe RoutineReference),
    -- | [Output only] [Preview] The DDL target row access policy. Present only for CREATE\/DROP ROW ACCESS POLICY queries.
    ddlTargetRowAccessPolicy :: (Core.Maybe RowAccessPolicyReference),
    -- | [Output only] The DDL target table. Present only for CREATE\/DROP TABLE\/VIEW and DROP ALL ROW ACCESS POLICIES queries.
    ddlTargetTable :: (Core.Maybe TableReference),
    -- | [Output only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.
    dmlStats :: (Core.Maybe DmlStatistics),
    -- | [Output only] The original estimate of bytes processed for the job.
    estimatedBytesProcessed :: (Core.Maybe Core.Int64),
    -- | [Output only] Statistics of a BigQuery ML training job.
    mlStatistics :: (Core.Maybe MlStatistics),
    -- | [Output only, Beta] Information about create model query job progress.
    modelTraining :: (Core.Maybe BigQueryModelTraining),
    -- | [Output only, Beta] Deprecated; do not use.
    modelTrainingCurrentIteration :: (Core.Maybe Core.Int32),
    -- | [Output only, Beta] Deprecated; do not use.
    modelTrainingExpectedTotalIteration :: (Core.Maybe Core.Int64),
    -- | [Output only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
    numDmlAffectedRows :: (Core.Maybe Core.Int64),
    -- | [Output only] Describes execution plan for the query.
    queryPlan :: (Core.Maybe [ExplainQueryStage]),
    -- | [Output only] Referenced routines (persistent user-defined functions and stored procedures) for the job.
    referencedRoutines :: (Core.Maybe [RoutineReference]),
    -- | [Output only] Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list.
    referencedTables :: (Core.Maybe [TableReference]),
    -- | [Output only] Job resource usage breakdown by reservation.
    reservationUsage :: (Core.Maybe [JobStatistics2_ReservationUsageItem]),
    -- | [Output only] The schema of the results. Present only for successful dry run of non-legacy SQL queries.
    schema :: (Core.Maybe TableSchema),
    -- | [Output only] Search query specific statistics.
    searchStatistics :: (Core.Maybe SearchStatistics),
    -- | [Output only] Statistics of a Spark procedure job.
    sparkStatistics :: (Core.Maybe SparkStatistics),
    -- | The type of query statement, if valid. Possible values (new values might be added in the future): \"SELECT\": SELECT query. \"INSERT\": INSERT query; see https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-manipulation-language. \"UPDATE\": UPDATE query; see https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-manipulation-language. \"DELETE\": DELETE query; see https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-manipulation-language. \"MERGE\": MERGE query; see https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-manipulation-language. \"ALTER/TABLE\": ALTER TABLE query. \"ALTER/VIEW\": ALTER VIEW query. \"ASSERT\": ASSERT condition AS \'description\'. \"CREATE/FUNCTION\": CREATE FUNCTION query. \"CREATE/MODEL\": CREATE [OR REPLACE] MODEL ... AS SELECT ... . \"CREATE/PROCEDURE\": CREATE PROCEDURE query. \"CREATE/TABLE\": CREATE [OR REPLACE] TABLE without AS SELECT. \"CREATE/TABLE/AS/SELECT\": CREATE [OR REPLACE] TABLE ...
    -- AS SELECT ... . \"CREATE/VIEW\": CREATE [OR REPLACE] VIEW ... AS SELECT ... . \"DROP/FUNCTION\" : DROP FUNCTION query. \"DROP/PROCEDURE\": DROP PROCEDURE query. \"DROP/TABLE\": DROP TABLE query. \"DROP/VIEW\": DROP VIEW query.
    statementType :: (Core.Maybe Core.Text),
    -- | [Output only] [Beta] Describes a timeline of job execution.
    timeline :: (Core.Maybe [QueryTimelineSample]),
    -- | [Output only] Total bytes billed for the job.
    totalBytesBilled :: (Core.Maybe Core.Int64),
    -- | [Output only] Total bytes processed for the job.
    totalBytesProcessed :: (Core.Maybe Core.Int64),
    -- | [Output only] For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER/BOUND: estimate is lower bound of what the query would cost. UPPER/BOUND: estimate is upper bound of what the query would cost.
    totalBytesProcessedAccuracy :: (Core.Maybe Core.Text),
    -- | [Output only] Total number of partitions processed from all partitioned tables referenced in the job.
    totalPartitionsProcessed :: (Core.Maybe Core.Int64),
    -- | [Output only] Slot-milliseconds for the job.
    totalSlotMs :: (Core.Maybe Core.Int64),
    -- | [Output-only] Total bytes transferred for cross-cloud queries such as Cross Cloud Transfer and CREATE TABLE AS SELECT (CTAS).
    transferredBytes :: (Core.Maybe Core.Int64),
    -- | Standard SQL only: list of undeclared query parameters detected during a dry run validation.
    undeclaredQueryParameters :: (Core.Maybe [QueryParameter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatistics2' with the minimum fields required to make a request.
newJobStatistics2 ::
  JobStatistics2
newJobStatistics2 =
  JobStatistics2
    { biEngineStatistics = Core.Nothing,
      billingTier = Core.Nothing,
      cacheHit = Core.Nothing,
      ddlAffectedRowAccessPolicyCount = Core.Nothing,
      ddlDestinationTable = Core.Nothing,
      ddlOperationPerformed = Core.Nothing,
      ddlTargetDataset = Core.Nothing,
      ddlTargetRoutine = Core.Nothing,
      ddlTargetRowAccessPolicy = Core.Nothing,
      ddlTargetTable = Core.Nothing,
      dmlStats = Core.Nothing,
      estimatedBytesProcessed = Core.Nothing,
      mlStatistics = Core.Nothing,
      modelTraining = Core.Nothing,
      modelTrainingCurrentIteration = Core.Nothing,
      modelTrainingExpectedTotalIteration = Core.Nothing,
      numDmlAffectedRows = Core.Nothing,
      queryPlan = Core.Nothing,
      referencedRoutines = Core.Nothing,
      referencedTables = Core.Nothing,
      reservationUsage = Core.Nothing,
      schema = Core.Nothing,
      searchStatistics = Core.Nothing,
      sparkStatistics = Core.Nothing,
      statementType = Core.Nothing,
      timeline = Core.Nothing,
      totalBytesBilled = Core.Nothing,
      totalBytesProcessed = Core.Nothing,
      totalBytesProcessedAccuracy = Core.Nothing,
      totalPartitionsProcessed = Core.Nothing,
      totalSlotMs = Core.Nothing,
      transferredBytes = Core.Nothing,
      undeclaredQueryParameters = Core.Nothing
    }

instance Core.FromJSON JobStatistics2 where
  parseJSON =
    Core.withObject
      "JobStatistics2"
      ( \o ->
          JobStatistics2
            Core.<$> (o Core..:? "biEngineStatistics")
            Core.<*> (o Core..:? "billingTier")
            Core.<*> (o Core..:? "cacheHit")
            Core.<*> ( o Core..:? "ddlAffectedRowAccessPolicyCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "ddlDestinationTable")
            Core.<*> (o Core..:? "ddlOperationPerformed")
            Core.<*> (o Core..:? "ddlTargetDataset")
            Core.<*> (o Core..:? "ddlTargetRoutine")
            Core.<*> (o Core..:? "ddlTargetRowAccessPolicy")
            Core.<*> (o Core..:? "ddlTargetTable")
            Core.<*> (o Core..:? "dmlStats")
            Core.<*> ( o Core..:? "estimatedBytesProcessed"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "mlStatistics")
            Core.<*> (o Core..:? "modelTraining")
            Core.<*> (o Core..:? "modelTrainingCurrentIteration")
            Core.<*> ( o Core..:? "modelTrainingExpectedTotalIteration"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "numDmlAffectedRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "queryPlan")
            Core.<*> (o Core..:? "referencedRoutines")
            Core.<*> (o Core..:? "referencedTables")
            Core.<*> (o Core..:? "reservationUsage")
            Core.<*> (o Core..:? "schema")
            Core.<*> (o Core..:? "searchStatistics")
            Core.<*> (o Core..:? "sparkStatistics")
            Core.<*> (o Core..:? "statementType")
            Core.<*> (o Core..:? "timeline")
            Core.<*> ( o Core..:? "totalBytesBilled"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "totalBytesProcessed"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "totalBytesProcessedAccuracy")
            Core.<*> ( o Core..:? "totalPartitionsProcessed"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "totalSlotMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "transferredBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "undeclaredQueryParameters")
      )

instance Core.ToJSON JobStatistics2 where
  toJSON JobStatistics2 {..} =
    Core.object
      ( Core.catMaybes
          [ ("biEngineStatistics" Core..=)
              Core.<$> biEngineStatistics,
            ("billingTier" Core..=) Core.<$> billingTier,
            ("cacheHit" Core..=) Core.<$> cacheHit,
            ("ddlAffectedRowAccessPolicyCount" Core..=)
              Core.. Core.AsText
              Core.<$> ddlAffectedRowAccessPolicyCount,
            ("ddlDestinationTable" Core..=)
              Core.<$> ddlDestinationTable,
            ("ddlOperationPerformed" Core..=)
              Core.<$> ddlOperationPerformed,
            ("ddlTargetDataset" Core..=)
              Core.<$> ddlTargetDataset,
            ("ddlTargetRoutine" Core..=)
              Core.<$> ddlTargetRoutine,
            ("ddlTargetRowAccessPolicy" Core..=)
              Core.<$> ddlTargetRowAccessPolicy,
            ("ddlTargetTable" Core..=) Core.<$> ddlTargetTable,
            ("dmlStats" Core..=) Core.<$> dmlStats,
            ("estimatedBytesProcessed" Core..=)
              Core.. Core.AsText
              Core.<$> estimatedBytesProcessed,
            ("mlStatistics" Core..=) Core.<$> mlStatistics,
            ("modelTraining" Core..=) Core.<$> modelTraining,
            ("modelTrainingCurrentIteration" Core..=)
              Core.<$> modelTrainingCurrentIteration,
            ("modelTrainingExpectedTotalIteration" Core..=)
              Core.. Core.AsText
              Core.<$> modelTrainingExpectedTotalIteration,
            ("numDmlAffectedRows" Core..=) Core.. Core.AsText
              Core.<$> numDmlAffectedRows,
            ("queryPlan" Core..=) Core.<$> queryPlan,
            ("referencedRoutines" Core..=)
              Core.<$> referencedRoutines,
            ("referencedTables" Core..=)
              Core.<$> referencedTables,
            ("reservationUsage" Core..=)
              Core.<$> reservationUsage,
            ("schema" Core..=) Core.<$> schema,
            ("searchStatistics" Core..=)
              Core.<$> searchStatistics,
            ("sparkStatistics" Core..=) Core.<$> sparkStatistics,
            ("statementType" Core..=) Core.<$> statementType,
            ("timeline" Core..=) Core.<$> timeline,
            ("totalBytesBilled" Core..=) Core.. Core.AsText
              Core.<$> totalBytesBilled,
            ("totalBytesProcessed" Core..=) Core.. Core.AsText
              Core.<$> totalBytesProcessed,
            ("totalBytesProcessedAccuracy" Core..=)
              Core.<$> totalBytesProcessedAccuracy,
            ("totalPartitionsProcessed" Core..=)
              Core.. Core.AsText
              Core.<$> totalPartitionsProcessed,
            ("totalSlotMs" Core..=) Core.. Core.AsText
              Core.<$> totalSlotMs,
            ("transferredBytes" Core..=) Core.. Core.AsText
              Core.<$> transferredBytes,
            ("undeclaredQueryParameters" Core..=)
              Core.<$> undeclaredQueryParameters
          ]
      )

--
-- /See:/ 'newJobStatistics2_ReservationUsageItem' smart constructor.
data JobStatistics2_ReservationUsageItem = JobStatistics2_ReservationUsageItem
  { -- | [Output only] Reservation name or \"unreserved\" for on-demand resources usage.
    name :: (Core.Maybe Core.Text),
    -- | [Output only] Slot-milliseconds the job spent in the given reservation.
    slotMs :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatistics2_ReservationUsageItem' with the minimum fields required to make a request.
newJobStatistics2_ReservationUsageItem ::
  JobStatistics2_ReservationUsageItem
newJobStatistics2_ReservationUsageItem =
  JobStatistics2_ReservationUsageItem
    { name = Core.Nothing,
      slotMs = Core.Nothing
    }

instance
  Core.FromJSON
    JobStatistics2_ReservationUsageItem
  where
  parseJSON =
    Core.withObject
      "JobStatistics2_ReservationUsageItem"
      ( \o ->
          JobStatistics2_ReservationUsageItem
            Core.<$> (o Core..:? "name")
            Core.<*> ( o Core..:? "slotMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    JobStatistics2_ReservationUsageItem
  where
  toJSON JobStatistics2_ReservationUsageItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("slotMs" Core..=) Core.. Core.AsText
              Core.<$> slotMs
          ]
      )

--
-- /See:/ 'newJobStatistics3' smart constructor.
data JobStatistics3 = JobStatistics3
  { -- | [Output-only] The number of bad records encountered. Note that if the job has failed because of more bad records encountered than the maximum allowed in the load job configuration, then this number can be less than the total number of bad records present in the input data.
    badRecords :: (Core.Maybe Core.Int64),
    -- | [Output-only] Number of bytes of source data in a load job.
    inputFileBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] Number of source files in a load job.
    inputFiles :: (Core.Maybe Core.Int64),
    -- | [Output-only] Size of the loaded data in bytes. Note that while a load job is in the running state, this value may change.
    outputBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] Number of rows imported in a load job. Note that while an import job is in the running state, this value may change.
    outputRows :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatistics3' with the minimum fields required to make a request.
newJobStatistics3 ::
  JobStatistics3
newJobStatistics3 =
  JobStatistics3
    { badRecords = Core.Nothing,
      inputFileBytes = Core.Nothing,
      inputFiles = Core.Nothing,
      outputBytes = Core.Nothing,
      outputRows = Core.Nothing
    }

instance Core.FromJSON JobStatistics3 where
  parseJSON =
    Core.withObject
      "JobStatistics3"
      ( \o ->
          JobStatistics3
            Core.<$> ( o Core..:? "badRecords"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "inputFileBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "inputFiles"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "outputBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "outputRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON JobStatistics3 where
  toJSON JobStatistics3 {..} =
    Core.object
      ( Core.catMaybes
          [ ("badRecords" Core..=) Core.. Core.AsText
              Core.<$> badRecords,
            ("inputFileBytes" Core..=) Core.. Core.AsText
              Core.<$> inputFileBytes,
            ("inputFiles" Core..=) Core.. Core.AsText
              Core.<$> inputFiles,
            ("outputBytes" Core..=) Core.. Core.AsText
              Core.<$> outputBytes,
            ("outputRows" Core..=) Core.. Core.AsText
              Core.<$> outputRows
          ]
      )

--
-- /See:/ 'newJobStatistics4' smart constructor.
data JobStatistics4 = JobStatistics4
  { -- | [Output-only] Number of files per destination URI or URI pattern specified in the extract configuration. These values will be in the same order as the URIs specified in the \'destinationUris\' field.
    destinationUriFileCounts :: (Core.Maybe [Core.Int64]),
    -- | [Output-only] Number of user bytes extracted into the result. This is the byte count as computed by BigQuery for billing purposes.
    inputBytes :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatistics4' with the minimum fields required to make a request.
newJobStatistics4 ::
  JobStatistics4
newJobStatistics4 =
  JobStatistics4
    { destinationUriFileCounts = Core.Nothing,
      inputBytes = Core.Nothing
    }

instance Core.FromJSON JobStatistics4 where
  parseJSON =
    Core.withObject
      "JobStatistics4"
      ( \o ->
          JobStatistics4
            Core.<$> ( o Core..:? "destinationUriFileCounts"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> ( o Core..:? "inputBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON JobStatistics4 where
  toJSON JobStatistics4 {..} =
    Core.object
      ( Core.catMaybes
          [ ("destinationUriFileCounts" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> destinationUriFileCounts,
            ("inputBytes" Core..=) Core.. Core.AsText
              Core.<$> inputBytes
          ]
      )

--
-- /See:/ 'newJobStatistics5' smart constructor.
data JobStatistics5 = JobStatistics5
  { -- | [Output-only] Number of logical bytes copied to the destination table.
    copiedLogicalBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] Number of rows copied to the destination table.
    copiedRows :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatistics5' with the minimum fields required to make a request.
newJobStatistics5 ::
  JobStatistics5
newJobStatistics5 =
  JobStatistics5 {copiedLogicalBytes = Core.Nothing, copiedRows = Core.Nothing}

instance Core.FromJSON JobStatistics5 where
  parseJSON =
    Core.withObject
      "JobStatistics5"
      ( \o ->
          JobStatistics5
            Core.<$> ( o Core..:? "copied_logical_bytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "copied_rows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON JobStatistics5 where
  toJSON JobStatistics5 {..} =
    Core.object
      ( Core.catMaybes
          [ ("copied_logical_bytes" Core..=) Core.. Core.AsText
              Core.<$> copiedLogicalBytes,
            ("copied_rows" Core..=) Core.. Core.AsText
              Core.<$> copiedRows
          ]
      )

--
-- /See:/ 'newJobStatus' smart constructor.
data JobStatus = JobStatus
  { -- | [Output-only] Final error result of the job. If present, indicates that the job has completed and was unsuccessful.
    errorResult :: (Core.Maybe ErrorProto),
    -- | [Output-only] The first errors encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.
    errors :: (Core.Maybe [ErrorProto]),
    -- | [Output-only] Running state of the job.
    state :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobStatus' with the minimum fields required to make a request.
newJobStatus ::
  JobStatus
newJobStatus =
  JobStatus
    { errorResult = Core.Nothing,
      errors = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON JobStatus where
  parseJSON =
    Core.withObject
      "JobStatus"
      ( \o ->
          JobStatus
            Core.<$> (o Core..:? "errorResult")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON JobStatus where
  toJSON JobStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorResult" Core..=) Core.<$> errorResult,
            ("errors" Core..=) Core.<$> errors,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Represents a single JSON object.
--
-- /See:/ 'newJsonObject' smart constructor.
newtype JsonObject = JsonObject
  { -- |
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JsonObject' with the minimum fields required to make a request.
newJsonObject ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  JsonObject
newJsonObject additional = JsonObject {additional = additional}

instance Core.FromJSON JsonObject where
  parseJSON =
    Core.withObject
      "JsonObject"
      (\o -> JsonObject Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON JsonObject where
  toJSON JsonObject {..} = Core.toJSON additional

--
-- /See:/ 'newListModelsResponse' smart constructor.
data ListModelsResponse = ListModelsResponse
  { -- | Models in the requested dataset. Only the following fields are populated: model/reference, model/type, creation/time, last/modified_time and labels.
    models :: (Core.Maybe [Model]),
    -- | A token to request the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListModelsResponse' with the minimum fields required to make a request.
newListModelsResponse ::
  ListModelsResponse
newListModelsResponse =
  ListModelsResponse {models = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListModelsResponse where
  parseJSON =
    Core.withObject
      "ListModelsResponse"
      ( \o ->
          ListModelsResponse
            Core.<$> (o Core..:? "models")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListModelsResponse where
  toJSON ListModelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("models" Core..=) Core.<$> models,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListRoutinesResponse' smart constructor.
data ListRoutinesResponse = ListRoutinesResponse
  { -- | A token to request the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Routines in the requested dataset. Unless read/mask is set in the request, only the following fields are populated: etag, project/id, dataset/id, routine/id, routine/type, creation/time, last/modified/time, language, and remote/function/options.
    routines :: (Core.Maybe [Routine])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRoutinesResponse' with the minimum fields required to make a request.
newListRoutinesResponse ::
  ListRoutinesResponse
newListRoutinesResponse =
  ListRoutinesResponse {nextPageToken = Core.Nothing, routines = Core.Nothing}

instance Core.FromJSON ListRoutinesResponse where
  parseJSON =
    Core.withObject
      "ListRoutinesResponse"
      ( \o ->
          ListRoutinesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "routines")
      )

instance Core.ToJSON ListRoutinesResponse where
  toJSON ListRoutinesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("routines" Core..=) Core.<$> routines
          ]
      )

-- | Response message for the ListRowAccessPolicies method.
--
-- /See:/ 'newListRowAccessPoliciesResponse' smart constructor.
data ListRowAccessPoliciesResponse = ListRowAccessPoliciesResponse
  { -- | A token to request the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Row access policies on the requested table.
    rowAccessPolicies :: (Core.Maybe [RowAccessPolicy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRowAccessPoliciesResponse' with the minimum fields required to make a request.
newListRowAccessPoliciesResponse ::
  ListRowAccessPoliciesResponse
newListRowAccessPoliciesResponse =
  ListRowAccessPoliciesResponse
    { nextPageToken = Core.Nothing,
      rowAccessPolicies = Core.Nothing
    }

instance Core.FromJSON ListRowAccessPoliciesResponse where
  parseJSON =
    Core.withObject
      "ListRowAccessPoliciesResponse"
      ( \o ->
          ListRowAccessPoliciesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "rowAccessPolicies")
      )

instance Core.ToJSON ListRowAccessPoliciesResponse where
  toJSON ListRowAccessPoliciesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("rowAccessPolicies" Core..=)
              Core.<$> rowAccessPolicies
          ]
      )

-- | BigQuery-specific metadata about a location. This will be set on google.cloud.location.Location.metadata in Cloud Location API responses.
--
-- /See:/ 'newLocationMetadata' smart constructor.
newtype LocationMetadata = LocationMetadata
  { -- | The legacy BigQuery location ID, e.g. “EU” for the “europe” location. This is for any API consumers that need the legacy “US” and “EU” locations.
    legacyLocationId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
newLocationMetadata ::
  LocationMetadata
newLocationMetadata = LocationMetadata {legacyLocationId = Core.Nothing}

instance Core.FromJSON LocationMetadata where
  parseJSON =
    Core.withObject
      "LocationMetadata"
      ( \o ->
          LocationMetadata
            Core.<$> (o Core..:? "legacyLocationId")
      )

instance Core.ToJSON LocationMetadata where
  toJSON LocationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("legacyLocationId" Core..=)
              Core.<$> legacyLocationId
          ]
      )

--
-- /See:/ 'newMaterializedViewDefinition' smart constructor.
data MaterializedViewDefinition = MaterializedViewDefinition
  { -- | [Optional] Allow non incremental materialized view definition. The default value is \"false\".
    allowNonIncrementalDefinition :: (Core.Maybe Core.Bool),
    -- | [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is \"true\".
    enableRefresh :: (Core.Maybe Core.Bool),
    -- | [Output-only] [TrustedTester] The time when this materialized view was last modified, in milliseconds since the epoch.
    lastRefreshTime :: (Core.Maybe Core.Int64),
    -- | [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
    maxStaleness :: (Core.Maybe Core.Base64),
    -- | [Required] A query whose result is persisted.
    query :: (Core.Maybe Core.Text),
    -- | [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is \"1800000\" (30 minutes).
    refreshIntervalMs :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaterializedViewDefinition' with the minimum fields required to make a request.
newMaterializedViewDefinition ::
  MaterializedViewDefinition
newMaterializedViewDefinition =
  MaterializedViewDefinition
    { allowNonIncrementalDefinition = Core.Nothing,
      enableRefresh = Core.Nothing,
      lastRefreshTime = Core.Nothing,
      maxStaleness = Core.Nothing,
      query = Core.Nothing,
      refreshIntervalMs = Core.Nothing
    }

instance Core.FromJSON MaterializedViewDefinition where
  parseJSON =
    Core.withObject
      "MaterializedViewDefinition"
      ( \o ->
          MaterializedViewDefinition
            Core.<$> (o Core..:? "allow_non_incremental_definition")
            Core.<*> (o Core..:? "enableRefresh")
            Core.<*> ( o Core..:? "lastRefreshTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "maxStaleness")
            Core.<*> (o Core..:? "query")
            Core.<*> ( o Core..:? "refreshIntervalMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MaterializedViewDefinition where
  toJSON MaterializedViewDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("allow_non_incremental_definition" Core..=)
              Core.<$> allowNonIncrementalDefinition,
            ("enableRefresh" Core..=) Core.<$> enableRefresh,
            ("lastRefreshTime" Core..=) Core.. Core.AsText
              Core.<$> lastRefreshTime,
            ("maxStaleness" Core..=) Core.<$> maxStaleness,
            ("query" Core..=) Core.<$> query,
            ("refreshIntervalMs" Core..=) Core.. Core.AsText
              Core.<$> refreshIntervalMs
          ]
      )

--
-- /See:/ 'newMlStatistics' smart constructor.
data MlStatistics = MlStatistics
  { -- | Results for all completed iterations.
    iterationResults :: (Core.Maybe [IterationResult]),
    -- | Maximum number of iterations specified as max_iterations in the \'CREATE MODEL\' query. The actual number of iterations may be less than this number due to early stop.
    maxIterations :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlStatistics' with the minimum fields required to make a request.
newMlStatistics ::
  MlStatistics
newMlStatistics =
  MlStatistics {iterationResults = Core.Nothing, maxIterations = Core.Nothing}

instance Core.FromJSON MlStatistics where
  parseJSON =
    Core.withObject
      "MlStatistics"
      ( \o ->
          MlStatistics
            Core.<$> (o Core..:? "iterationResults")
            Core.<*> ( o Core..:? "maxIterations"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON MlStatistics where
  toJSON MlStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("iterationResults" Core..=)
              Core.<$> iterationResults,
            ("maxIterations" Core..=) Core.. Core.AsText
              Core.<$> maxIterations
          ]
      )

--
-- /See:/ 'newModel' smart constructor.
data Model = Model
  { -- | The best trial_id across all training runs.
    bestTrialId :: (Core.Maybe Core.Int64),
    -- | Output only. The time when this model was created, in millisecs since the epoch.
    creationTime :: (Core.Maybe Core.Int64),
    -- | Output only. The default trial/id to use in TVFs when the trial/id is not passed in. For single-objective </bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview hyperparameter tuning> models, this is the best trial ID. For multi-objective </bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview hyperparameter tuning> models, this is the smallest trial ID among all Pareto optimal trials.
    defaultTrialId :: (Core.Maybe Core.Int64),
    -- | Optional. A user-friendly description of this model.
    description :: (Core.Maybe Core.Text),
    -- | Custom encryption configuration (e.g., Cloud KMS keys). This shows the encryption configuration of the model data while stored in BigQuery storage. This field can be used with PatchModel to update encryption key for an already encrypted model.
    encryptionConfiguration :: (Core.Maybe EncryptionConfiguration),
    -- | Output only. A hash of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Optional. The time when this model expires, in milliseconds since the epoch. If not present, the model will persist indefinitely. Expired models will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created models.
    expirationTime :: (Core.Maybe Core.Int64),
    -- | Output only. Input feature columns that were used to train this model.
    featureColumns :: (Core.Maybe [StandardSqlField]),
    -- | Optional. A descriptive name for this model.
    friendlyName :: (Core.Maybe Core.Text),
    -- | Output only. All hyperparameter search spaces in this model.
    hparamSearchSpaces :: (Core.Maybe HparamSearchSpaces),
    -- | Output only. Trials of a </bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview hyperparameter tuning> model sorted by trial_id.
    hparamTrials :: (Core.Maybe [HparamTuningTrial]),
    -- | Output only. Label columns that were used to train this model. The output of the model will have a \"predicted_\" prefix to these columns.
    labelColumns :: (Core.Maybe [StandardSqlField]),
    -- | The labels associated with this model. You can use these to organize and group your models. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
    labels :: (Core.Maybe Model_Labels),
    -- | Output only. The time when this model was last modified, in millisecs since the epoch.
    lastModifiedTime :: (Core.Maybe Core.Int64),
    -- | Output only. The geographic location where the model resides. This value is inherited from the dataset.
    location :: (Core.Maybe Core.Text),
    -- | Required. Unique identifier for this model.
    modelReference :: (Core.Maybe ModelReference),
    -- | Output only. Type of the model resource.
    modelType :: (Core.Maybe Model_ModelType),
    -- | Output only. For single-objective </bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview hyperparameter tuning> models, it only contains the best trial. For multi-objective </bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview hyperparameter tuning> models, it contains all Pareto optimal trials sorted by trial_id.
    optimalTrialIds :: (Core.Maybe [Core.Int64]),
    -- | Information for all training runs in increasing order of start_time.
    trainingRuns :: (Core.Maybe [TrainingRun])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Model' with the minimum fields required to make a request.
newModel ::
  Model
newModel =
  Model
    { bestTrialId = Core.Nothing,
      creationTime = Core.Nothing,
      defaultTrialId = Core.Nothing,
      description = Core.Nothing,
      encryptionConfiguration = Core.Nothing,
      etag = Core.Nothing,
      expirationTime = Core.Nothing,
      featureColumns = Core.Nothing,
      friendlyName = Core.Nothing,
      hparamSearchSpaces = Core.Nothing,
      hparamTrials = Core.Nothing,
      labelColumns = Core.Nothing,
      labels = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      location = Core.Nothing,
      modelReference = Core.Nothing,
      modelType = Core.Nothing,
      optimalTrialIds = Core.Nothing,
      trainingRuns = Core.Nothing
    }

instance Core.FromJSON Model where
  parseJSON =
    Core.withObject
      "Model"
      ( \o ->
          Model
            Core.<$> ( o Core..:? "bestTrialId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "creationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "defaultTrialId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "encryptionConfiguration")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "expirationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "featureColumns")
            Core.<*> (o Core..:? "friendlyName")
            Core.<*> (o Core..:? "hparamSearchSpaces")
            Core.<*> (o Core..:? "hparamTrials")
            Core.<*> (o Core..:? "labelColumns")
            Core.<*> (o Core..:? "labels")
            Core.<*> ( o Core..:? "lastModifiedTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "modelReference")
            Core.<*> (o Core..:? "modelType")
            Core.<*> ( o Core..:? "optimalTrialIds"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "trainingRuns")
      )

instance Core.ToJSON Model where
  toJSON Model {..} =
    Core.object
      ( Core.catMaybes
          [ ("bestTrialId" Core..=) Core.. Core.AsText
              Core.<$> bestTrialId,
            ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("defaultTrialId" Core..=) Core.. Core.AsText
              Core.<$> defaultTrialId,
            ("description" Core..=) Core.<$> description,
            ("encryptionConfiguration" Core..=)
              Core.<$> encryptionConfiguration,
            ("etag" Core..=) Core.<$> etag,
            ("expirationTime" Core..=) Core.. Core.AsText
              Core.<$> expirationTime,
            ("featureColumns" Core..=) Core.<$> featureColumns,
            ("friendlyName" Core..=) Core.<$> friendlyName,
            ("hparamSearchSpaces" Core..=)
              Core.<$> hparamSearchSpaces,
            ("hparamTrials" Core..=) Core.<$> hparamTrials,
            ("labelColumns" Core..=) Core.<$> labelColumns,
            ("labels" Core..=) Core.<$> labels,
            ("lastModifiedTime" Core..=) Core.. Core.AsText
              Core.<$> lastModifiedTime,
            ("location" Core..=) Core.<$> location,
            ("modelReference" Core..=) Core.<$> modelReference,
            ("modelType" Core..=) Core.<$> modelType,
            ("optimalTrialIds" Core..=)
              Core.. Core.fmap Core.AsText
              Core.<$> optimalTrialIds,
            ("trainingRuns" Core..=) Core.<$> trainingRuns
          ]
      )

-- | The labels associated with this model. You can use these to organize and group your models. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
--
-- /See:/ 'newModel_Labels' smart constructor.
newtype Model_Labels = Model_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Model_Labels' with the minimum fields required to make a request.
newModel_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Model_Labels
newModel_Labels additional = Model_Labels {additional = additional}

instance Core.FromJSON Model_Labels where
  parseJSON =
    Core.withObject
      "Model_Labels"
      ( \o ->
          Model_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Model_Labels where
  toJSON Model_Labels {..} = Core.toJSON additional

--
-- /See:/ 'newModelDefinition' smart constructor.
data ModelDefinition = ModelDefinition
  { -- | [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
    modelOptions :: (Core.Maybe ModelDefinition_ModelOptions),
    -- | [Output-only, Beta] Information about ml training runs, each training run comprises of multiple iterations and there may be multiple training runs for the model if warm start is used or if a user decides to continue a previously cancelled query.
    trainingRuns :: (Core.Maybe [BqmlTrainingRun])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModelDefinition' with the minimum fields required to make a request.
newModelDefinition ::
  ModelDefinition
newModelDefinition =
  ModelDefinition {modelOptions = Core.Nothing, trainingRuns = Core.Nothing}

instance Core.FromJSON ModelDefinition where
  parseJSON =
    Core.withObject
      "ModelDefinition"
      ( \o ->
          ModelDefinition
            Core.<$> (o Core..:? "modelOptions")
            Core.<*> (o Core..:? "trainingRuns")
      )

instance Core.ToJSON ModelDefinition where
  toJSON ModelDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("modelOptions" Core..=) Core.<$> modelOptions,
            ("trainingRuns" Core..=) Core.<$> trainingRuns
          ]
      )

-- | [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
--
-- /See:/ 'newModelDefinition_ModelOptions' smart constructor.
data ModelDefinition_ModelOptions = ModelDefinition_ModelOptions
  { -- |
    labels :: (Core.Maybe [Core.Text]),
    -- |
    lossType :: (Core.Maybe Core.Text),
    -- |
    modelType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModelDefinition_ModelOptions' with the minimum fields required to make a request.
newModelDefinition_ModelOptions ::
  ModelDefinition_ModelOptions
newModelDefinition_ModelOptions =
  ModelDefinition_ModelOptions
    { labels = Core.Nothing,
      lossType = Core.Nothing,
      modelType = Core.Nothing
    }

instance Core.FromJSON ModelDefinition_ModelOptions where
  parseJSON =
    Core.withObject
      "ModelDefinition_ModelOptions"
      ( \o ->
          ModelDefinition_ModelOptions
            Core.<$> (o Core..:? "labels")
            Core.<*> (o Core..:? "lossType")
            Core.<*> (o Core..:? "modelType")
      )

instance Core.ToJSON ModelDefinition_ModelOptions where
  toJSON ModelDefinition_ModelOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("labels" Core..=) Core.<$> labels,
            ("lossType" Core..=) Core.<$> lossType,
            ("modelType" Core..=) Core.<$> modelType
          ]
      )

--
-- /See:/ 'newModelReference' smart constructor.
data ModelReference = ModelReference
  { -- | [Required] The ID of the dataset containing this model.
    datasetId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the model. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
    modelId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the project containing this model.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModelReference' with the minimum fields required to make a request.
newModelReference ::
  ModelReference
newModelReference =
  ModelReference
    { datasetId = Core.Nothing,
      modelId = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON ModelReference where
  parseJSON =
    Core.withObject
      "ModelReference"
      ( \o ->
          ModelReference
            Core.<$> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "modelId")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON ModelReference where
  toJSON ModelReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.<$> datasetId,
            ("modelId" Core..=) Core.<$> modelId,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | Evaluation metrics for multi-class classification\/classifier models.
--
-- /See:/ 'newMultiClassClassificationMetrics' smart constructor.
data MultiClassClassificationMetrics = MultiClassClassificationMetrics
  { -- | Aggregate classification metrics.
    aggregateClassificationMetrics :: (Core.Maybe AggregateClassificationMetrics),
    -- | Confusion matrix at different thresholds.
    confusionMatrixList :: (Core.Maybe [ConfusionMatrix])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MultiClassClassificationMetrics' with the minimum fields required to make a request.
newMultiClassClassificationMetrics ::
  MultiClassClassificationMetrics
newMultiClassClassificationMetrics =
  MultiClassClassificationMetrics
    { aggregateClassificationMetrics = Core.Nothing,
      confusionMatrixList = Core.Nothing
    }

instance
  Core.FromJSON
    MultiClassClassificationMetrics
  where
  parseJSON =
    Core.withObject
      "MultiClassClassificationMetrics"
      ( \o ->
          MultiClassClassificationMetrics
            Core.<$> (o Core..:? "aggregateClassificationMetrics")
            Core.<*> (o Core..:? "confusionMatrixList")
      )

instance Core.ToJSON MultiClassClassificationMetrics where
  toJSON MultiClassClassificationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("aggregateClassificationMetrics" Core..=)
              Core.<$> aggregateClassificationMetrics,
            ("confusionMatrixList" Core..=)
              Core.<$> confusionMatrixList
          ]
      )

--
-- /See:/ 'newParquetOptions' smart constructor.
data ParquetOptions = ParquetOptions
  { -- | [Optional] Indicates whether to use schema inference specifically for Parquet LIST logical type.
    enableListInference :: (Core.Maybe Core.Bool),
    -- | [Optional] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.
    enumAsString :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ParquetOptions' with the minimum fields required to make a request.
newParquetOptions ::
  ParquetOptions
newParquetOptions =
  ParquetOptions
    { enableListInference = Core.Nothing,
      enumAsString = Core.Nothing
    }

instance Core.FromJSON ParquetOptions where
  parseJSON =
    Core.withObject
      "ParquetOptions"
      ( \o ->
          ParquetOptions
            Core.<$> (o Core..:? "enableListInference")
            Core.<*> (o Core..:? "enumAsString")
      )

instance Core.ToJSON ParquetOptions where
  toJSON ParquetOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableListInference" Core..=)
              Core.<$> enableListInference,
            ("enumAsString" Core..=) Core.<$> enumAsString
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [AuditConfig]),
    -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    bindings :: (Core.Maybe [Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
    -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "auditConfigs")
            Core.<*> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Principal component infos, used only for eigen decomposition based models, e.g., PCA. Ordered by explained_variance in the descending order.
--
-- /See:/ 'newPrincipalComponentInfo' smart constructor.
data PrincipalComponentInfo = PrincipalComponentInfo
  { -- | The explained_variance is pre-ordered in the descending order to compute the cumulative explained variance ratio.
    cumulativeExplainedVarianceRatio :: (Core.Maybe Core.Double),
    -- | Explained variance by this principal component, which is simply the eigenvalue.
    explainedVariance :: (Core.Maybe Core.Double),
    -- | Explained_variance over the total explained variance.
    explainedVarianceRatio :: (Core.Maybe Core.Double),
    -- | Id of the principal component.
    principalComponentId :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrincipalComponentInfo' with the minimum fields required to make a request.
newPrincipalComponentInfo ::
  PrincipalComponentInfo
newPrincipalComponentInfo =
  PrincipalComponentInfo
    { cumulativeExplainedVarianceRatio = Core.Nothing,
      explainedVariance = Core.Nothing,
      explainedVarianceRatio = Core.Nothing,
      principalComponentId = Core.Nothing
    }

instance Core.FromJSON PrincipalComponentInfo where
  parseJSON =
    Core.withObject
      "PrincipalComponentInfo"
      ( \o ->
          PrincipalComponentInfo
            Core.<$> (o Core..:? "cumulativeExplainedVarianceRatio")
            Core.<*> (o Core..:? "explainedVariance")
            Core.<*> (o Core..:? "explainedVarianceRatio")
            Core.<*> ( o Core..:? "principalComponentId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON PrincipalComponentInfo where
  toJSON PrincipalComponentInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("cumulativeExplainedVarianceRatio" Core..=)
              Core.<$> cumulativeExplainedVarianceRatio,
            ("explainedVariance" Core..=)
              Core.<$> explainedVariance,
            ("explainedVarianceRatio" Core..=)
              Core.<$> explainedVarianceRatio,
            ("principalComponentId" Core..=) Core.. Core.AsText
              Core.<$> principalComponentId
          ]
      )

--
-- /See:/ 'newProjectList' smart constructor.
data ProjectList = ProjectList
  { -- | A hash of the page of results
    etag :: (Core.Maybe Core.Text),
    -- | The type of list.
    kind :: Core.Text,
    -- | A token to request the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Projects to which you have at least READ access.
    projects :: (Core.Maybe [ProjectList_ProjectsItem]),
    -- | The total number of projects in the list.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectList' with the minimum fields required to make a request.
newProjectList ::
  ProjectList
newProjectList =
  ProjectList
    { etag = Core.Nothing,
      kind = "bigquery#projectList",
      nextPageToken = Core.Nothing,
      projects = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON ProjectList where
  parseJSON =
    Core.withObject
      "ProjectList"
      ( \o ->
          ProjectList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#projectList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "projects")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON ProjectList where
  toJSON ProjectList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("projects" Core..=) Core.<$> projects,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

--
-- /See:/ 'newProjectList_ProjectsItem' smart constructor.
data ProjectList_ProjectsItem = ProjectList_ProjectsItem
  { -- | A descriptive name for this project.
    friendlyName :: (Core.Maybe Core.Text),
    -- | An opaque ID of this project.
    id :: (Core.Maybe Core.Text),
    -- | The resource type.
    kind :: Core.Text,
    -- | The numeric ID of this project.
    numericId :: (Core.Maybe Core.Word64),
    -- | A unique reference to this project.
    projectReference :: (Core.Maybe ProjectReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectList_ProjectsItem' with the minimum fields required to make a request.
newProjectList_ProjectsItem ::
  ProjectList_ProjectsItem
newProjectList_ProjectsItem =
  ProjectList_ProjectsItem
    { friendlyName = Core.Nothing,
      id = Core.Nothing,
      kind = "bigquery#project",
      numericId = Core.Nothing,
      projectReference = Core.Nothing
    }

instance Core.FromJSON ProjectList_ProjectsItem where
  parseJSON =
    Core.withObject
      "ProjectList_ProjectsItem"
      ( \o ->
          ProjectList_ProjectsItem
            Core.<$> (o Core..:? "friendlyName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#project")
            Core.<*> ( o Core..:? "numericId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "projectReference")
      )

instance Core.ToJSON ProjectList_ProjectsItem where
  toJSON ProjectList_ProjectsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("friendlyName" Core..=) Core.<$> friendlyName,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("numericId" Core..=) Core.. Core.AsText
              Core.<$> numericId,
            ("projectReference" Core..=)
              Core.<$> projectReference
          ]
      )

--
-- /See:/ 'newProjectReference' smart constructor.
newtype ProjectReference = ProjectReference
  { -- | [Required] ID of the project. Can be either the numeric ID or the assigned ID of the project.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProjectReference' with the minimum fields required to make a request.
newProjectReference ::
  ProjectReference
newProjectReference = ProjectReference {projectId = Core.Nothing}

instance Core.FromJSON ProjectReference where
  parseJSON =
    Core.withObject
      "ProjectReference"
      ( \o ->
          ProjectReference Core.<$> (o Core..:? "projectId")
      )

instance Core.ToJSON ProjectReference where
  toJSON ProjectReference {..} =
    Core.object
      ( Core.catMaybes
          [("projectId" Core..=) Core.<$> projectId]
      )

--
-- /See:/ 'newQueryParameter' smart constructor.
data QueryParameter = QueryParameter
  { -- | [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
    name :: (Core.Maybe Core.Text),
    -- | [Required] The type of this parameter.
    parameterType :: (Core.Maybe QueryParameterType),
    -- | [Required] The value of this parameter.
    parameterValue :: (Core.Maybe QueryParameterValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryParameter' with the minimum fields required to make a request.
newQueryParameter ::
  QueryParameter
newQueryParameter =
  QueryParameter
    { name = Core.Nothing,
      parameterType = Core.Nothing,
      parameterValue = Core.Nothing
    }

instance Core.FromJSON QueryParameter where
  parseJSON =
    Core.withObject
      "QueryParameter"
      ( \o ->
          QueryParameter
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "parameterType")
            Core.<*> (o Core..:? "parameterValue")
      )

instance Core.ToJSON QueryParameter where
  toJSON QueryParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("parameterType" Core..=) Core.<$> parameterType,
            ("parameterValue" Core..=) Core.<$> parameterValue
          ]
      )

--
-- /See:/ 'newQueryParameterType' smart constructor.
data QueryParameterType = QueryParameterType
  { -- | [Optional] The type of the array\'s elements, if this is an array.
    arrayType :: (Core.Maybe QueryParameterType),
    -- | [Optional] The types of the fields of this struct, in order, if this is a struct.
    structTypes :: (Core.Maybe [QueryParameterType_StructTypesItem]),
    -- | [Required] The top level type of this field.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryParameterType' with the minimum fields required to make a request.
newQueryParameterType ::
  QueryParameterType
newQueryParameterType =
  QueryParameterType
    { arrayType = Core.Nothing,
      structTypes = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON QueryParameterType where
  parseJSON =
    Core.withObject
      "QueryParameterType"
      ( \o ->
          QueryParameterType
            Core.<$> (o Core..:? "arrayType")
            Core.<*> (o Core..:? "structTypes")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON QueryParameterType where
  toJSON QueryParameterType {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayType" Core..=) Core.<$> arrayType,
            ("structTypes" Core..=) Core.<$> structTypes,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newQueryParameterType_StructTypesItem' smart constructor.
data QueryParameterType_StructTypesItem = QueryParameterType_StructTypesItem
  { -- | [Optional] Human-oriented description of the field.
    description :: (Core.Maybe Core.Text),
    -- | [Optional] The name of this field.
    name :: (Core.Maybe Core.Text),
    -- | [Required] The type of this field.
    type' :: (Core.Maybe QueryParameterType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryParameterType_StructTypesItem' with the minimum fields required to make a request.
newQueryParameterType_StructTypesItem ::
  QueryParameterType_StructTypesItem
newQueryParameterType_StructTypesItem =
  QueryParameterType_StructTypesItem
    { description = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    QueryParameterType_StructTypesItem
  where
  parseJSON =
    Core.withObject
      "QueryParameterType_StructTypesItem"
      ( \o ->
          QueryParameterType_StructTypesItem
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    QueryParameterType_StructTypesItem
  where
  toJSON QueryParameterType_StructTypesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newQueryParameterValue' smart constructor.
data QueryParameterValue = QueryParameterValue
  { -- | [Optional] The array values, if this is an array type.
    arrayValues :: (Core.Maybe [QueryParameterValue]),
    -- | [Optional] The struct field values, in order of the struct type\'s declaration.
    structValues :: (Core.Maybe QueryParameterValue_StructValues),
    -- | [Optional] The value of this value, if a simple scalar type.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryParameterValue' with the minimum fields required to make a request.
newQueryParameterValue ::
  QueryParameterValue
newQueryParameterValue =
  QueryParameterValue
    { arrayValues = Core.Nothing,
      structValues = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON QueryParameterValue where
  parseJSON =
    Core.withObject
      "QueryParameterValue"
      ( \o ->
          QueryParameterValue
            Core.<$> (o Core..:? "arrayValues")
            Core.<*> (o Core..:? "structValues")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON QueryParameterValue where
  toJSON QueryParameterValue {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayValues" Core..=) Core.<$> arrayValues,
            ("structValues" Core..=) Core.<$> structValues,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | [Optional] The struct field values, in order of the struct type\'s declaration.
--
-- /See:/ 'newQueryParameterValue_StructValues' smart constructor.
newtype QueryParameterValue_StructValues = QueryParameterValue_StructValues
  { -- |
    additional :: (Core.HashMap Core.Text QueryParameterValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryParameterValue_StructValues' with the minimum fields required to make a request.
newQueryParameterValue_StructValues ::
  -- |  See 'additional'.
  Core.HashMap Core.Text QueryParameterValue ->
  QueryParameterValue_StructValues
newQueryParameterValue_StructValues additional =
  QueryParameterValue_StructValues {additional = additional}

instance
  Core.FromJSON
    QueryParameterValue_StructValues
  where
  parseJSON =
    Core.withObject
      "QueryParameterValue_StructValues"
      ( \o ->
          QueryParameterValue_StructValues
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON QueryParameterValue_StructValues where
  toJSON QueryParameterValue_StructValues {..} =
    Core.toJSON additional

--
-- /See:/ 'newQueryRequest' smart constructor.
data QueryRequest = QueryRequest
  { -- | Connection properties.
    connectionProperties :: (Core.Maybe [ConnectionProperty]),
    -- | [Optional] Specifies whether the query should be executed as a continuous query. The default value is false.
    continuous :: (Core.Maybe Core.Bool),
    -- | If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode.
    createSession :: (Core.Maybe Core.Bool),
    -- | [Optional] Specifies the default datasetId and projectId to assume for any unqualified table names in the query. If not set, all table names in the query string must be qualified in the format \'datasetId.tableId\'.
    defaultDataset :: (Core.Maybe DatasetReference),
    -- | [Optional] If set to true, BigQuery doesn\'t run the job. Instead, if the query is valid, BigQuery returns statistics about the job such as how many bytes would be processed. If the query is invalid, an error returns. The default value is false.
    dryRun :: (Core.Maybe Core.Bool),
    -- | The resource type of the request.
    kind :: Core.Text,
    -- | The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
    labels :: (Core.Maybe QueryRequest_Labels),
    -- | The geographic location where the job should run. See details at https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying/your/location.
    location :: (Core.Maybe Core.Text),
    -- | [Optional] The maximum number of rows of data to return per page of results. Setting this flag to a small value such as 1000 and then paging through results might improve reliability when the query result set is large. In addition to this limit, responses are also limited to 10 MB. By default, there is no maximum row count, and only the byte limit applies.
    maxResults :: (Core.Maybe Core.Word32),
    -- | [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.
    maximumBytesBilled :: (Core.Maybe Core.Int64),
    -- | Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (\@myparam) query parameters in this query.
    parameterMode :: (Core.Maybe Core.Text),
    -- | [Deprecated] This property is deprecated.
    preserveNulls :: (Core.Maybe Core.Bool),
    -- | [Required] A query string, following the BigQuery query syntax, of the query to execute. Example: \"SELECT count(f1) FROM [myProjectId:myDatasetId.myTableId]\".
    query :: (Core.Maybe Core.Text),
    -- | Query parameters for Standard SQL queries.
    queryParameters :: (Core.Maybe [QueryParameter]),
    -- | A unique user provided identifier to ensure idempotent behavior for queries. Note that this is different from the job/id. It has the following properties: 1. It is case-sensitive, limited to up to 36 ASCII characters. A UUID is recommended. 2. Read only queries can ignore this token since they are nullipotent by definition. 3. For the purposes of idempotency ensured by the request/id, a request is considered duplicate of another only if they have the same request/id and are actually duplicates. When determining whether a request is a duplicate of the previous request, all parameters in the request that may affect the behavior are considered. For example, query, connection/properties, query/parameters, use/legacy/sql are parameters that affect the result and are considered when determining whether a request is a duplicate, but properties like timeout/ms don\'t affect the result and are thus not considered. Dry run query requests are never considered duplicate of another request. 4. When a duplicate mutating
    -- query request is detected, it returns: a. the results of the mutation if it completes successfully within the timeout. b. the running operation if it is still in progress at the end of the timeout. 5. Its lifetime is limited to 15 minutes. In other words, if two requests are sent with the same request_id, but more than 15 minutes apart, idempotency is not guaranteed.
    requestId :: (Core.Maybe Core.Text),
    -- | [Optional] How long to wait for the query to complete, in milliseconds, before the request times out and returns. Note that this is only a timeout for the request, not the query. If the query takes longer to run than the timeout value, the call returns without any results and with the \'jobComplete\' flag set to false. You can call GetQueryResults() to wait for the query to complete and read the results. The default value is 10000 milliseconds (10 seconds).
    timeoutMs :: (Core.Maybe Core.Word32),
    -- | Specifies whether to use BigQuery\'s legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery\'s standard SQL: https:\/\/cloud.google.com\/bigquery\/sql-reference\/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.
    useLegacySql :: Core.Bool,
    -- | [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. The default value is true.
    useQueryCache :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryRequest' with the minimum fields required to make a request.
newQueryRequest ::
  QueryRequest
newQueryRequest =
  QueryRequest
    { connectionProperties = Core.Nothing,
      continuous = Core.Nothing,
      createSession = Core.Nothing,
      defaultDataset = Core.Nothing,
      dryRun = Core.Nothing,
      kind = "bigquery#queryRequest",
      labels = Core.Nothing,
      location = Core.Nothing,
      maxResults = Core.Nothing,
      maximumBytesBilled = Core.Nothing,
      parameterMode = Core.Nothing,
      preserveNulls = Core.Nothing,
      query = Core.Nothing,
      queryParameters = Core.Nothing,
      requestId = Core.Nothing,
      timeoutMs = Core.Nothing,
      useLegacySql = Core.True,
      useQueryCache = Core.True
    }

instance Core.FromJSON QueryRequest where
  parseJSON =
    Core.withObject
      "QueryRequest"
      ( \o ->
          QueryRequest
            Core.<$> (o Core..:? "connectionProperties")
            Core.<*> (o Core..:? "continuous")
            Core.<*> (o Core..:? "createSession")
            Core.<*> (o Core..:? "defaultDataset")
            Core.<*> (o Core..:? "dryRun")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#queryRequest")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "maxResults")
            Core.<*> ( o Core..:? "maximumBytesBilled"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "parameterMode")
            Core.<*> (o Core..:? "preserveNulls")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "queryParameters")
            Core.<*> (o Core..:? "requestId")
            Core.<*> (o Core..:? "timeoutMs")
            Core.<*> (o Core..:? "useLegacySql" Core..!= Core.True)
            Core.<*> (o Core..:? "useQueryCache" Core..!= Core.True)
      )

instance Core.ToJSON QueryRequest where
  toJSON QueryRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("connectionProperties" Core..=)
              Core.<$> connectionProperties,
            ("continuous" Core..=) Core.<$> continuous,
            ("createSession" Core..=) Core.<$> createSession,
            ("defaultDataset" Core..=) Core.<$> defaultDataset,
            ("dryRun" Core..=) Core.<$> dryRun,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("location" Core..=) Core.<$> location,
            ("maxResults" Core..=) Core.<$> maxResults,
            ("maximumBytesBilled" Core..=) Core.. Core.AsText
              Core.<$> maximumBytesBilled,
            ("parameterMode" Core..=) Core.<$> parameterMode,
            ("preserveNulls" Core..=) Core.<$> preserveNulls,
            ("query" Core..=) Core.<$> query,
            ("queryParameters" Core..=) Core.<$> queryParameters,
            ("requestId" Core..=) Core.<$> requestId,
            ("timeoutMs" Core..=) Core.<$> timeoutMs,
            Core.Just ("useLegacySql" Core..= useLegacySql),
            Core.Just ("useQueryCache" Core..= useQueryCache)
          ]
      )

-- | The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
--
-- /See:/ 'newQueryRequest_Labels' smart constructor.
newtype QueryRequest_Labels = QueryRequest_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryRequest_Labels' with the minimum fields required to make a request.
newQueryRequest_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  QueryRequest_Labels
newQueryRequest_Labels additional =
  QueryRequest_Labels {additional = additional}

instance Core.FromJSON QueryRequest_Labels where
  parseJSON =
    Core.withObject
      "QueryRequest_Labels"
      ( \o ->
          QueryRequest_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON QueryRequest_Labels where
  toJSON QueryRequest_Labels {..} =
    Core.toJSON additional

--
-- /See:/ 'newQueryResponse' smart constructor.
data QueryResponse = QueryResponse
  { -- | Whether the query result was fetched from the query cache.
    cacheHit :: (Core.Maybe Core.Bool),
    -- | [Output-only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.
    dmlStats :: (Core.Maybe DmlStatistics),
    -- | [Output-only] The first errors or warnings encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.
    errors :: (Core.Maybe [ErrorProto]),
    -- | Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available.
    jobComplete :: (Core.Maybe Core.Bool),
    -- | Reference to the Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults).
    jobReference :: (Core.Maybe JobReference),
    -- | The resource type.
    kind :: Core.Text,
    -- | [Output-only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
    numDmlAffectedRows :: (Core.Maybe Core.Int64),
    -- | A token used for paging results.
    pageToken :: (Core.Maybe Core.Text),
    -- | An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above.
    rows :: (Core.Maybe [TableRow]),
    -- | The schema of the results. Present only when the query completes successfully.
    schema :: (Core.Maybe TableSchema),
    -- | [Output-only] [Preview] Information of the session if this job is part of one.
    sessionInfo :: (Core.Maybe SessionInfo),
    -- | The total number of bytes processed for this query. If this query was a dry run, this is the number of bytes that would be processed if the query were run.
    totalBytesProcessed :: (Core.Maybe Core.Int64),
    -- | The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results.
    totalRows :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryResponse' with the minimum fields required to make a request.
newQueryResponse ::
  QueryResponse
newQueryResponse =
  QueryResponse
    { cacheHit = Core.Nothing,
      dmlStats = Core.Nothing,
      errors = Core.Nothing,
      jobComplete = Core.Nothing,
      jobReference = Core.Nothing,
      kind = "bigquery#queryResponse",
      numDmlAffectedRows = Core.Nothing,
      pageToken = Core.Nothing,
      rows = Core.Nothing,
      schema = Core.Nothing,
      sessionInfo = Core.Nothing,
      totalBytesProcessed = Core.Nothing,
      totalRows = Core.Nothing
    }

instance Core.FromJSON QueryResponse where
  parseJSON =
    Core.withObject
      "QueryResponse"
      ( \o ->
          QueryResponse
            Core.<$> (o Core..:? "cacheHit")
            Core.<*> (o Core..:? "dmlStats")
            Core.<*> (o Core..:? "errors")
            Core.<*> (o Core..:? "jobComplete")
            Core.<*> (o Core..:? "jobReference")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#queryResponse")
            Core.<*> ( o Core..:? "numDmlAffectedRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "schema")
            Core.<*> (o Core..:? "sessionInfo")
            Core.<*> ( o Core..:? "totalBytesProcessed"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "totalRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON QueryResponse where
  toJSON QueryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cacheHit" Core..=) Core.<$> cacheHit,
            ("dmlStats" Core..=) Core.<$> dmlStats,
            ("errors" Core..=) Core.<$> errors,
            ("jobComplete" Core..=) Core.<$> jobComplete,
            ("jobReference" Core..=) Core.<$> jobReference,
            Core.Just ("kind" Core..= kind),
            ("numDmlAffectedRows" Core..=) Core.. Core.AsText
              Core.<$> numDmlAffectedRows,
            ("pageToken" Core..=) Core.<$> pageToken,
            ("rows" Core..=) Core.<$> rows,
            ("schema" Core..=) Core.<$> schema,
            ("sessionInfo" Core..=) Core.<$> sessionInfo,
            ("totalBytesProcessed" Core..=) Core.. Core.AsText
              Core.<$> totalBytesProcessed,
            ("totalRows" Core..=) Core.. Core.AsText
              Core.<$> totalRows
          ]
      )

--
-- /See:/ 'newQueryTimelineSample' smart constructor.
data QueryTimelineSample = QueryTimelineSample
  { -- | Total number of units currently being processed by workers. This does not correspond directly to slot usage. This is the largest value observed since the last sample.
    activeUnits :: (Core.Maybe Core.Int64),
    -- | Total parallel units of work completed by this query.
    completedUnits :: (Core.Maybe Core.Int64),
    -- | Milliseconds elapsed since the start of query execution.
    elapsedMs :: (Core.Maybe Core.Int64),
    -- | Units of work that can be scheduled immediately. Providing additional slots for these units of work will speed up the query, provided no other query in the reservation needs additional slots.
    estimatedRunnableUnits :: (Core.Maybe Core.Int64),
    -- | Total units of work remaining for the query. This number can be revised (increased or decreased) while the query is running.
    pendingUnits :: (Core.Maybe Core.Int64),
    -- | Cumulative slot-ms consumed by the query.
    totalSlotMs :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueryTimelineSample' with the minimum fields required to make a request.
newQueryTimelineSample ::
  QueryTimelineSample
newQueryTimelineSample =
  QueryTimelineSample
    { activeUnits = Core.Nothing,
      completedUnits = Core.Nothing,
      elapsedMs = Core.Nothing,
      estimatedRunnableUnits = Core.Nothing,
      pendingUnits = Core.Nothing,
      totalSlotMs = Core.Nothing
    }

instance Core.FromJSON QueryTimelineSample where
  parseJSON =
    Core.withObject
      "QueryTimelineSample"
      ( \o ->
          QueryTimelineSample
            Core.<$> ( o Core..:? "activeUnits"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "completedUnits"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "elapsedMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "estimatedRunnableUnits"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "pendingUnits"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "totalSlotMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON QueryTimelineSample where
  toJSON QueryTimelineSample {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeUnits" Core..=) Core.. Core.AsText
              Core.<$> activeUnits,
            ("completedUnits" Core..=) Core.. Core.AsText
              Core.<$> completedUnits,
            ("elapsedMs" Core..=) Core.. Core.AsText
              Core.<$> elapsedMs,
            ("estimatedRunnableUnits" Core..=) Core.. Core.AsText
              Core.<$> estimatedRunnableUnits,
            ("pendingUnits" Core..=) Core.. Core.AsText
              Core.<$> pendingUnits,
            ("totalSlotMs" Core..=) Core.. Core.AsText
              Core.<$> totalSlotMs
          ]
      )

--
-- /See:/ 'newRangePartitioning' smart constructor.
data RangePartitioning = RangePartitioning
  { -- | [TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE\/REQUIRED field. The only supported type is INTEGER\/INT64.
    field :: (Core.Maybe Core.Text),
    -- | [TrustedTester] [Required] Defines the ranges for range partitioning.
    range :: (Core.Maybe RangePartitioning_Range)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RangePartitioning' with the minimum fields required to make a request.
newRangePartitioning ::
  RangePartitioning
newRangePartitioning =
  RangePartitioning {field = Core.Nothing, range = Core.Nothing}

instance Core.FromJSON RangePartitioning where
  parseJSON =
    Core.withObject
      "RangePartitioning"
      ( \o ->
          RangePartitioning
            Core.<$> (o Core..:? "field") Core.<*> (o Core..:? "range")
      )

instance Core.ToJSON RangePartitioning where
  toJSON RangePartitioning {..} =
    Core.object
      ( Core.catMaybes
          [ ("field" Core..=) Core.<$> field,
            ("range" Core..=) Core.<$> range
          ]
      )

-- | [TrustedTester] [Required] Defines the ranges for range partitioning.
--
-- /See:/ 'newRangePartitioning_Range' smart constructor.
data RangePartitioning_Range = RangePartitioning_Range
  { -- | [TrustedTester] [Required] The end of range partitioning, exclusive.
    end :: (Core.Maybe Core.Int64),
    -- | [TrustedTester] [Required] The width of each interval.
    interval :: (Core.Maybe Core.Int64),
    -- | [TrustedTester] [Required] The start of range partitioning, inclusive.
    start :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RangePartitioning_Range' with the minimum fields required to make a request.
newRangePartitioning_Range ::
  RangePartitioning_Range
newRangePartitioning_Range =
  RangePartitioning_Range
    { end = Core.Nothing,
      interval = Core.Nothing,
      start = Core.Nothing
    }

instance Core.FromJSON RangePartitioning_Range where
  parseJSON =
    Core.withObject
      "RangePartitioning_Range"
      ( \o ->
          RangePartitioning_Range
            Core.<$> (o Core..:? "end" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o Core..:? "interval"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "start"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON RangePartitioning_Range where
  toJSON RangePartitioning_Range {..} =
    Core.object
      ( Core.catMaybes
          [ ("end" Core..=) Core.. Core.AsText Core.<$> end,
            ("interval" Core..=) Core.. Core.AsText
              Core.<$> interval,
            ("start" Core..=) Core.. Core.AsText Core.<$> start
          ]
      )

-- | Evaluation metrics used by weighted-ALS models specified by feedback_type=implicit.
--
-- /See:/ 'newRankingMetrics' smart constructor.
data RankingMetrics = RankingMetrics
  { -- | Determines the goodness of a ranking by computing the percentile rank from the predicted confidence and dividing it by the original rank.
    averageRank :: (Core.Maybe Core.Double),
    -- | Calculates a precision per user for all the items by ranking them and then averages all the precisions across all the users.
    meanAveragePrecision :: (Core.Maybe Core.Double),
    -- | Similar to the mean squared error computed in regression and explicit recommendation models except instead of computing the rating directly, the output from evaluate is computed against a preference which is 1 or 0 depending on if the rating exists or not.
    meanSquaredError :: (Core.Maybe Core.Double),
    -- | A metric to determine the goodness of a ranking calculated from the predicted confidence by comparing it to an ideal rank measured by the original ratings.
    normalizedDiscountedCumulativeGain :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RankingMetrics' with the minimum fields required to make a request.
newRankingMetrics ::
  RankingMetrics
newRankingMetrics =
  RankingMetrics
    { averageRank = Core.Nothing,
      meanAveragePrecision = Core.Nothing,
      meanSquaredError = Core.Nothing,
      normalizedDiscountedCumulativeGain = Core.Nothing
    }

instance Core.FromJSON RankingMetrics where
  parseJSON =
    Core.withObject
      "RankingMetrics"
      ( \o ->
          RankingMetrics
            Core.<$> (o Core..:? "averageRank")
            Core.<*> (o Core..:? "meanAveragePrecision")
            Core.<*> (o Core..:? "meanSquaredError")
            Core.<*> (o Core..:? "normalizedDiscountedCumulativeGain")
      )

instance Core.ToJSON RankingMetrics where
  toJSON RankingMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("averageRank" Core..=) Core.<$> averageRank,
            ("meanAveragePrecision" Core..=)
              Core.<$> meanAveragePrecision,
            ("meanSquaredError" Core..=)
              Core.<$> meanSquaredError,
            ("normalizedDiscountedCumulativeGain" Core..=)
              Core.<$> normalizedDiscountedCumulativeGain
          ]
      )

-- | Evaluation metrics for regression and explicit feedback type matrix factorization models.
--
-- /See:/ 'newRegressionMetrics' smart constructor.
data RegressionMetrics = RegressionMetrics
  { -- | Mean absolute error.
    meanAbsoluteError :: (Core.Maybe Core.Double),
    -- | Mean squared error.
    meanSquaredError :: (Core.Maybe Core.Double),
    -- | Mean squared log error.
    meanSquaredLogError :: (Core.Maybe Core.Double),
    -- | Median absolute error.
    medianAbsoluteError :: (Core.Maybe Core.Double),
    -- | R^2 score. This corresponds to r2_score in ML.EVALUATE.
    rSquared :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RegressionMetrics' with the minimum fields required to make a request.
newRegressionMetrics ::
  RegressionMetrics
newRegressionMetrics =
  RegressionMetrics
    { meanAbsoluteError = Core.Nothing,
      meanSquaredError = Core.Nothing,
      meanSquaredLogError = Core.Nothing,
      medianAbsoluteError = Core.Nothing,
      rSquared = Core.Nothing
    }

instance Core.FromJSON RegressionMetrics where
  parseJSON =
    Core.withObject
      "RegressionMetrics"
      ( \o ->
          RegressionMetrics
            Core.<$> (o Core..:? "meanAbsoluteError")
            Core.<*> (o Core..:? "meanSquaredError")
            Core.<*> (o Core..:? "meanSquaredLogError")
            Core.<*> (o Core..:? "medianAbsoluteError")
            Core.<*> (o Core..:? "rSquared")
      )

instance Core.ToJSON RegressionMetrics where
  toJSON RegressionMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("meanAbsoluteError" Core..=)
              Core.<$> meanAbsoluteError,
            ("meanSquaredError" Core..=)
              Core.<$> meanSquaredError,
            ("meanSquaredLogError" Core..=)
              Core.<$> meanSquaredLogError,
            ("medianAbsoluteError" Core..=)
              Core.<$> medianAbsoluteError,
            ("rSquared" Core..=) Core.<$> rSquared
          ]
      )

-- | Options for a remote user-defined function.
--
-- /See:/ 'newRemoteFunctionOptions' smart constructor.
data RemoteFunctionOptions = RemoteFunctionOptions
  { -- | Fully qualified name of the user-provided connection object which holds the authentication information to send requests to the remote service. Format: @\"projects\/{projectId}\/locations\/{locationId}\/connections\/{connectionId}\"@
    connection :: (Core.Maybe Core.Text),
    -- | Endpoint of the user-provided remote service, e.g. @https:\/\/us-east1-my_gcf_project.cloudfunctions.net\/remote_add@
    endpoint :: (Core.Maybe Core.Text),
    -- | Max number of rows in each batch sent to the remote service. If absent or if 0, BigQuery dynamically decides the number of rows in a batch.
    maxBatchingRows :: (Core.Maybe Core.Int64),
    -- | User-defined context as a set of key\/value pairs, which will be sent as function invocation context together with batched arguments in the requests to the remote service. The total number of bytes of keys and values must be less than 8KB.
    userDefinedContext :: (Core.Maybe RemoteFunctionOptions_UserDefinedContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteFunctionOptions' with the minimum fields required to make a request.
newRemoteFunctionOptions ::
  RemoteFunctionOptions
newRemoteFunctionOptions =
  RemoteFunctionOptions
    { connection = Core.Nothing,
      endpoint = Core.Nothing,
      maxBatchingRows = Core.Nothing,
      userDefinedContext = Core.Nothing
    }

instance Core.FromJSON RemoteFunctionOptions where
  parseJSON =
    Core.withObject
      "RemoteFunctionOptions"
      ( \o ->
          RemoteFunctionOptions
            Core.<$> (o Core..:? "connection")
            Core.<*> (o Core..:? "endpoint")
            Core.<*> ( o Core..:? "maxBatchingRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "userDefinedContext")
      )

instance Core.ToJSON RemoteFunctionOptions where
  toJSON RemoteFunctionOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("connection" Core..=) Core.<$> connection,
            ("endpoint" Core..=) Core.<$> endpoint,
            ("maxBatchingRows" Core..=) Core.. Core.AsText
              Core.<$> maxBatchingRows,
            ("userDefinedContext" Core..=)
              Core.<$> userDefinedContext
          ]
      )

-- | User-defined context as a set of key\/value pairs, which will be sent as function invocation context together with batched arguments in the requests to the remote service. The total number of bytes of keys and values must be less than 8KB.
--
-- /See:/ 'newRemoteFunctionOptions_UserDefinedContext' smart constructor.
newtype RemoteFunctionOptions_UserDefinedContext = RemoteFunctionOptions_UserDefinedContext
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteFunctionOptions_UserDefinedContext' with the minimum fields required to make a request.
newRemoteFunctionOptions_UserDefinedContext ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  RemoteFunctionOptions_UserDefinedContext
newRemoteFunctionOptions_UserDefinedContext additional =
  RemoteFunctionOptions_UserDefinedContext {additional = additional}

instance
  Core.FromJSON
    RemoteFunctionOptions_UserDefinedContext
  where
  parseJSON =
    Core.withObject
      "RemoteFunctionOptions_UserDefinedContext"
      ( \o ->
          RemoteFunctionOptions_UserDefinedContext
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    RemoteFunctionOptions_UserDefinedContext
  where
  toJSON RemoteFunctionOptions_UserDefinedContext {..} =
    Core.toJSON additional

-- | A user-defined function or a stored procedure.
--
-- /See:/ 'newRoutine' smart constructor.
data Routine = Routine
  { -- | Optional.
    arguments :: (Core.Maybe [Argument]),
    -- | Output only. The time when this routine was created, in milliseconds since the epoch.
    creationTime :: (Core.Maybe Core.Int64),
    -- | Required. The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: @CREATE FUNCTION JoinLines(x string, y string) as (concat(x, \"\\n\", y))@ The definition/body is @concat(x, \"\\n\", y)@ (\\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: @CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS \'return \"\\n\";\\n\'@ The definition/body is @return \"\\n\";\\n@ Note that both \\n are replaced with linebreaks.
    definitionBody :: (Core.Maybe Core.Text),
    -- | Optional. The description of the routine, if defined.
    description :: (Core.Maybe Core.Text),
    -- | Optional. The determinism level of the JavaScript UDF, if defined.
    determinismLevel :: (Core.Maybe Routine_DeterminismLevel),
    -- | Output only. A hash of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Optional. If language = \"JAVASCRIPT\", this field stores the path of the imported JAVASCRIPT libraries.
    importedLibraries :: (Core.Maybe [Core.Text]),
    -- | Optional. Defaults to \"SQL\" if remote/function/options field is absent, not set otherwise.
    language :: (Core.Maybe Routine_Language),
    -- | Output only. The time when this routine was last modified, in milliseconds since the epoch.
    lastModifiedTime :: (Core.Maybe Core.Int64),
    -- | Optional. Remote function specific options.
    remoteFunctionOptions :: (Core.Maybe RemoteFunctionOptions),
    -- | Optional. Can be set only if routine/type = \"TABLE/VALUED/FUNCTION\". If absent, the return table type is inferred from definition/body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time.
    returnTableType :: (Core.Maybe StandardSqlTableType),
    -- | Optional if language = \"SQL\"; required otherwise. Cannot be set if routine/type = \"TABLE/VALUED/FUNCTION\". If absent, the return type is inferred from definition/body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * @CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);@ * @CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));@ * @CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));@ The return_type is @{type_kind: \"FLOAT64\"}@ for @Add@ and @Decrement@, and is absent for @Increment@ (inferred as FLOAT64 at query time). Suppose the function @Add@ is replaced by @CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);@ Then the inferred return type of @Increment@ is automatically changed to INT64 at query time, while the return type of @Decrement@ remains FLOAT64.
    returnType :: (Core.Maybe StandardSqlDataType),
    -- | Required. Reference describing the ID of this routine.
    routineReference :: (Core.Maybe RoutineReference),
    -- | Required. The type of routine.
    routineType :: (Core.Maybe Routine_RoutineType),
    -- | Optional. Spark specific options.
    sparkOptions :: (Core.Maybe SparkOptions),
    -- | Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation\/update time, and thus this field must be set to false explicitly.
    strictMode :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Routine' with the minimum fields required to make a request.
newRoutine ::
  Routine
newRoutine =
  Routine
    { arguments = Core.Nothing,
      creationTime = Core.Nothing,
      definitionBody = Core.Nothing,
      description = Core.Nothing,
      determinismLevel = Core.Nothing,
      etag = Core.Nothing,
      importedLibraries = Core.Nothing,
      language = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      remoteFunctionOptions = Core.Nothing,
      returnTableType = Core.Nothing,
      returnType = Core.Nothing,
      routineReference = Core.Nothing,
      routineType = Core.Nothing,
      sparkOptions = Core.Nothing,
      strictMode = Core.Nothing
    }

instance Core.FromJSON Routine where
  parseJSON =
    Core.withObject
      "Routine"
      ( \o ->
          Routine
            Core.<$> (o Core..:? "arguments")
            Core.<*> ( o Core..:? "creationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "definitionBody")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "determinismLevel")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "importedLibraries")
            Core.<*> (o Core..:? "language")
            Core.<*> ( o Core..:? "lastModifiedTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "remoteFunctionOptions")
            Core.<*> (o Core..:? "returnTableType")
            Core.<*> (o Core..:? "returnType")
            Core.<*> (o Core..:? "routineReference")
            Core.<*> (o Core..:? "routineType")
            Core.<*> (o Core..:? "sparkOptions")
            Core.<*> (o Core..:? "strictMode")
      )

instance Core.ToJSON Routine where
  toJSON Routine {..} =
    Core.object
      ( Core.catMaybes
          [ ("arguments" Core..=) Core.<$> arguments,
            ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("definitionBody" Core..=) Core.<$> definitionBody,
            ("description" Core..=) Core.<$> description,
            ("determinismLevel" Core..=)
              Core.<$> determinismLevel,
            ("etag" Core..=) Core.<$> etag,
            ("importedLibraries" Core..=)
              Core.<$> importedLibraries,
            ("language" Core..=) Core.<$> language,
            ("lastModifiedTime" Core..=) Core.. Core.AsText
              Core.<$> lastModifiedTime,
            ("remoteFunctionOptions" Core..=)
              Core.<$> remoteFunctionOptions,
            ("returnTableType" Core..=) Core.<$> returnTableType,
            ("returnType" Core..=) Core.<$> returnType,
            ("routineReference" Core..=)
              Core.<$> routineReference,
            ("routineType" Core..=) Core.<$> routineType,
            ("sparkOptions" Core..=) Core.<$> sparkOptions,
            ("strictMode" Core..=) Core.<$> strictMode
          ]
      )

--
-- /See:/ 'newRoutineReference' smart constructor.
data RoutineReference = RoutineReference
  { -- | [Required] The ID of the dataset containing this routine.
    datasetId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the project containing this routine.
    projectId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
    routineId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RoutineReference' with the minimum fields required to make a request.
newRoutineReference ::
  RoutineReference
newRoutineReference =
  RoutineReference
    { datasetId = Core.Nothing,
      projectId = Core.Nothing,
      routineId = Core.Nothing
    }

instance Core.FromJSON RoutineReference where
  parseJSON =
    Core.withObject
      "RoutineReference"
      ( \o ->
          RoutineReference
            Core.<$> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "routineId")
      )

instance Core.ToJSON RoutineReference where
  toJSON RoutineReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.<$> datasetId,
            ("projectId" Core..=) Core.<$> projectId,
            ("routineId" Core..=) Core.<$> routineId
          ]
      )

-- | A single row in the confusion matrix.
--
-- /See:/ 'newRow' smart constructor.
data Row = Row
  { -- | The original label of this row.
    actualLabel :: (Core.Maybe Core.Text),
    -- | Info describing predicted label distribution.
    entries :: (Core.Maybe [Entry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Row' with the minimum fields required to make a request.
newRow ::
  Row
newRow = Row {actualLabel = Core.Nothing, entries = Core.Nothing}

instance Core.FromJSON Row where
  parseJSON =
    Core.withObject
      "Row"
      ( \o ->
          Row
            Core.<$> (o Core..:? "actualLabel")
            Core.<*> (o Core..:? "entries")
      )

instance Core.ToJSON Row where
  toJSON Row {..} =
    Core.object
      ( Core.catMaybes
          [ ("actualLabel" Core..=) Core.<$> actualLabel,
            ("entries" Core..=) Core.<$> entries
          ]
      )

-- | Represents access on a subset of rows on the specified table, defined by its filter predicate. Access to the subset of rows is controlled by its IAM policy.
--
-- /See:/ 'newRowAccessPolicy' smart constructor.
data RowAccessPolicy = RowAccessPolicy
  { -- | Output only. The time when this row access policy was created, in milliseconds since the epoch.
    creationTime :: (Core.Maybe Core.DateTime),
    -- | Output only. A hash of this resource.
    etag :: (Core.Maybe Core.Text),
    -- | Required. A SQL boolean expression that represents the rows defined by this row access policy, similar to the boolean expression in a WHERE clause of a SELECT query on a table. References to other tables, routines, and temporary functions are not supported. Examples: region=\"EU\" date/field = CAST(\'2019-9-27\' as DATE) nullable/field is not NULL numeric_field BETWEEN 1.0 AND 5.0
    filterPredicate :: (Core.Maybe Core.Text),
    -- | Output only. The time when this row access policy was last modified, in milliseconds since the epoch.
    lastModifiedTime :: (Core.Maybe Core.DateTime),
    -- | Required. Reference describing the ID of this row access policy.
    rowAccessPolicyReference :: (Core.Maybe RowAccessPolicyReference)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RowAccessPolicy' with the minimum fields required to make a request.
newRowAccessPolicy ::
  RowAccessPolicy
newRowAccessPolicy =
  RowAccessPolicy
    { creationTime = Core.Nothing,
      etag = Core.Nothing,
      filterPredicate = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      rowAccessPolicyReference = Core.Nothing
    }

instance Core.FromJSON RowAccessPolicy where
  parseJSON =
    Core.withObject
      "RowAccessPolicy"
      ( \o ->
          RowAccessPolicy
            Core.<$> (o Core..:? "creationTime")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "filterPredicate")
            Core.<*> (o Core..:? "lastModifiedTime")
            Core.<*> (o Core..:? "rowAccessPolicyReference")
      )

instance Core.ToJSON RowAccessPolicy where
  toJSON RowAccessPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationTime" Core..=) Core.<$> creationTime,
            ("etag" Core..=) Core.<$> etag,
            ("filterPredicate" Core..=) Core.<$> filterPredicate,
            ("lastModifiedTime" Core..=)
              Core.<$> lastModifiedTime,
            ("rowAccessPolicyReference" Core..=)
              Core.<$> rowAccessPolicyReference
          ]
      )

--
-- /See:/ 'newRowAccessPolicyReference' smart constructor.
data RowAccessPolicyReference = RowAccessPolicyReference
  { -- | [Required] The ID of the dataset containing this row access policy.
    datasetId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the row access policy. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
    policyId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the project containing this row access policy.
    projectId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the table containing this row access policy.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RowAccessPolicyReference' with the minimum fields required to make a request.
newRowAccessPolicyReference ::
  RowAccessPolicyReference
newRowAccessPolicyReference =
  RowAccessPolicyReference
    { datasetId = Core.Nothing,
      policyId = Core.Nothing,
      projectId = Core.Nothing,
      tableId = Core.Nothing
    }

instance Core.FromJSON RowAccessPolicyReference where
  parseJSON =
    Core.withObject
      "RowAccessPolicyReference"
      ( \o ->
          RowAccessPolicyReference
            Core.<$> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "policyId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON RowAccessPolicyReference where
  toJSON RowAccessPolicyReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.<$> datasetId,
            ("policyId" Core..=) Core.<$> policyId,
            ("projectId" Core..=) Core.<$> projectId,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

--
-- /See:/ 'newRowLevelSecurityStatistics' smart constructor.
newtype RowLevelSecurityStatistics = RowLevelSecurityStatistics
  { -- | [Output-only] [Preview] Whether any accessed data was protected by row access policies.
    rowLevelSecurityApplied :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RowLevelSecurityStatistics' with the minimum fields required to make a request.
newRowLevelSecurityStatistics ::
  RowLevelSecurityStatistics
newRowLevelSecurityStatistics =
  RowLevelSecurityStatistics {rowLevelSecurityApplied = Core.Nothing}

instance Core.FromJSON RowLevelSecurityStatistics where
  parseJSON =
    Core.withObject
      "RowLevelSecurityStatistics"
      ( \o ->
          RowLevelSecurityStatistics
            Core.<$> (o Core..:? "rowLevelSecurityApplied")
      )

instance Core.ToJSON RowLevelSecurityStatistics where
  toJSON RowLevelSecurityStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("rowLevelSecurityApplied" Core..=)
              Core.<$> rowLevelSecurityApplied
          ]
      )

--
-- /See:/ 'newScriptStackFrame' smart constructor.
data ScriptStackFrame = ScriptStackFrame
  { -- | [Output-only] One-based end column.
    endColumn :: (Core.Maybe Core.Int32),
    -- | [Output-only] One-based end line.
    endLine :: (Core.Maybe Core.Int32),
    -- | [Output-only] Name of the active procedure, empty if in a top-level script.
    procedureId :: (Core.Maybe Core.Text),
    -- | [Output-only] One-based start column.
    startColumn :: (Core.Maybe Core.Int32),
    -- | [Output-only] One-based start line.
    startLine :: (Core.Maybe Core.Int32),
    -- | [Output-only] Text of the current statement\/expression.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptStackFrame' with the minimum fields required to make a request.
newScriptStackFrame ::
  ScriptStackFrame
newScriptStackFrame =
  ScriptStackFrame
    { endColumn = Core.Nothing,
      endLine = Core.Nothing,
      procedureId = Core.Nothing,
      startColumn = Core.Nothing,
      startLine = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON ScriptStackFrame where
  parseJSON =
    Core.withObject
      "ScriptStackFrame"
      ( \o ->
          ScriptStackFrame
            Core.<$> (o Core..:? "endColumn")
            Core.<*> (o Core..:? "endLine")
            Core.<*> (o Core..:? "procedureId")
            Core.<*> (o Core..:? "startColumn")
            Core.<*> (o Core..:? "startLine")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON ScriptStackFrame where
  toJSON ScriptStackFrame {..} =
    Core.object
      ( Core.catMaybes
          [ ("endColumn" Core..=) Core.<$> endColumn,
            ("endLine" Core..=) Core.<$> endLine,
            ("procedureId" Core..=) Core.<$> procedureId,
            ("startColumn" Core..=) Core.<$> startColumn,
            ("startLine" Core..=) Core.<$> startLine,
            ("text" Core..=) Core.<$> text
          ]
      )

--
-- /See:/ 'newScriptStatistics' smart constructor.
data ScriptStatistics = ScriptStatistics
  { -- | [Output-only] Whether this child job was a statement or expression.
    evaluationKind :: (Core.Maybe Core.Text),
    -- | Stack trace showing the line\/column\/procedure name of each frame on the stack at the point where the current evaluation happened. The leaf frame is first, the primary script is last. Never empty.
    stackFrames :: (Core.Maybe [ScriptStackFrame])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptStatistics' with the minimum fields required to make a request.
newScriptStatistics ::
  ScriptStatistics
newScriptStatistics =
  ScriptStatistics {evaluationKind = Core.Nothing, stackFrames = Core.Nothing}

instance Core.FromJSON ScriptStatistics where
  parseJSON =
    Core.withObject
      "ScriptStatistics"
      ( \o ->
          ScriptStatistics
            Core.<$> (o Core..:? "evaluationKind")
            Core.<*> (o Core..:? "stackFrames")
      )

instance Core.ToJSON ScriptStatistics where
  toJSON ScriptStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("evaluationKind" Core..=) Core.<$> evaluationKind,
            ("stackFrames" Core..=) Core.<$> stackFrames
          ]
      )

--
-- /See:/ 'newSearchStatistics' smart constructor.
data SearchStatistics = SearchStatistics
  { -- | When index/usage/mode is UNUSED or PARTIALLY/USED, this field explains why index was not used in all or part of the search query. If index/usage/mode is FULLLY/USED, this field is not populated.
    indexUnusedReason :: (Core.Maybe [IndexUnusedReason]),
    -- | Specifies index usage mode for the query.
    indexUsageMode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SearchStatistics' with the minimum fields required to make a request.
newSearchStatistics ::
  SearchStatistics
newSearchStatistics =
  SearchStatistics
    { indexUnusedReason = Core.Nothing,
      indexUsageMode = Core.Nothing
    }

instance Core.FromJSON SearchStatistics where
  parseJSON =
    Core.withObject
      "SearchStatistics"
      ( \o ->
          SearchStatistics
            Core.<$> (o Core..:? "indexUnusedReason")
            Core.<*> (o Core..:? "indexUsageMode")
      )

instance Core.ToJSON SearchStatistics where
  toJSON SearchStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("indexUnusedReason" Core..=)
              Core.<$> indexUnusedReason,
            ("indexUsageMode" Core..=) Core.<$> indexUsageMode
          ]
      )

--
-- /See:/ 'newSessionInfo' smart constructor.
newtype SessionInfo = SessionInfo
  { -- | [Output-only] \/\/ [Preview] Id of the session.
    sessionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SessionInfo' with the minimum fields required to make a request.
newSessionInfo ::
  SessionInfo
newSessionInfo = SessionInfo {sessionId = Core.Nothing}

instance Core.FromJSON SessionInfo where
  parseJSON =
    Core.withObject
      "SessionInfo"
      ( \o ->
          SessionInfo Core.<$> (o Core..:? "sessionId")
      )

instance Core.ToJSON SessionInfo where
  toJSON SessionInfo {..} =
    Core.object
      ( Core.catMaybes
          [("sessionId" Core..=) Core.<$> sessionId]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newSetIamPolicyRequest' smart constructor.
data SetIamPolicyRequest = SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.
    policy :: (Core.Maybe Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SetIamPolicyRequest' with the minimum fields required to make a request.
newSetIamPolicyRequest ::
  SetIamPolicyRequest
newSetIamPolicyRequest =
  SetIamPolicyRequest {policy = Core.Nothing, updateMask = Core.Nothing}

instance Core.FromJSON SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "SetIamPolicyRequest"
      ( \o ->
          SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON SetIamPolicyRequest where
  toJSON SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

--
-- /See:/ 'newSnapshotDefinition' smart constructor.
data SnapshotDefinition = SnapshotDefinition
  { -- | [Required] Reference describing the ID of the table that was snapshot.
    baseTableReference :: (Core.Maybe TableReference),
    -- | [Required] The time at which the base table was snapshot. This value is reported in the JSON response using RFC3339 format.
    snapshotTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SnapshotDefinition' with the minimum fields required to make a request.
newSnapshotDefinition ::
  SnapshotDefinition
newSnapshotDefinition =
  SnapshotDefinition
    { baseTableReference = Core.Nothing,
      snapshotTime = Core.Nothing
    }

instance Core.FromJSON SnapshotDefinition where
  parseJSON =
    Core.withObject
      "SnapshotDefinition"
      ( \o ->
          SnapshotDefinition
            Core.<$> (o Core..:? "baseTableReference")
            Core.<*> (o Core..:? "snapshotTime")
      )

instance Core.ToJSON SnapshotDefinition where
  toJSON SnapshotDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseTableReference" Core..=)
              Core.<$> baseTableReference,
            ("snapshotTime" Core..=) Core.<$> snapshotTime
          ]
      )

--
-- /See:/ 'newSparkLoggingInfo' smart constructor.
data SparkLoggingInfo = SparkLoggingInfo
  { -- | [Output-only] Project ID used for logging
    projectId :: (Core.Maybe Core.Text),
    -- | [Output-only] Resource type used for logging
    resourceType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkLoggingInfo' with the minimum fields required to make a request.
newSparkLoggingInfo ::
  SparkLoggingInfo
newSparkLoggingInfo =
  SparkLoggingInfo {projectId = Core.Nothing, resourceType = Core.Nothing}

instance Core.FromJSON SparkLoggingInfo where
  parseJSON =
    Core.withObject
      "SparkLoggingInfo"
      ( \o ->
          SparkLoggingInfo
            Core.<$> (o Core..:? "project_id")
            Core.<*> (o Core..:? "resource_type")
      )

instance Core.ToJSON SparkLoggingInfo where
  toJSON SparkLoggingInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("project_id" Core..=) Core.<$> projectId,
            ("resource_type" Core..=) Core.<$> resourceType
          ]
      )

-- | Options for a user-defined Spark routine.
--
-- /See:/ 'newSparkOptions' smart constructor.
data SparkOptions = SparkOptions
  { -- | Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see <https://spark.apache.org/docs/latest/index.html Apache Spark>.
    archiveUris :: (Core.Maybe [Core.Text]),
    -- | Fully qualified name of the user-provided Spark connection object. Format: @\"projects\/{project_id}\/locations\/{location_id}\/connections\/{connection_id}\"@
    connection :: (Core.Maybe Core.Text),
    -- | Custom container image for the runtime environment.
    containerImage :: (Core.Maybe Core.Text),
    -- | Files to be placed in the working directory of each executor. For more information about Apache Spark, see <https://spark.apache.org/docs/latest/index.html Apache Spark>.
    fileUris :: (Core.Maybe [Core.Text]),
    -- | JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see <https://spark.apache.org/docs/latest/index.html Apache Spark>.
    jarUris :: (Core.Maybe [Core.Text]),
    -- | The fully qualified name of a class in jar/uris, for example, com.example.wordcount. Exactly one of main/class and main/jar/uri field should be set for Java\/Scala language type.
    mainClass :: (Core.Maybe Core.Text),
    -- | The main file\/jar URI of the Spark application. Exactly one of the definition/body field and the main/file_uri field must be set for Python.
    mainFileUri :: (Core.Maybe Core.Text),
    -- | Configuration properties as a set of key\/value pairs, which will be passed on to the Spark application. For more information, see <https://spark.apache.org/docs/latest/index.html Apache Spark> and the <https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list procedure option list>.
    properties :: (Core.Maybe SparkOptions_Properties),
    -- | Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: @.py@, @.egg@, and @.zip@. For more information about Apache Spark, see <https://spark.apache.org/docs/latest/index.html Apache Spark>.
    pyFileUris :: (Core.Maybe [Core.Text]),
    -- | Runtime version. If not specified, the default runtime version is used.
    runtimeVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkOptions' with the minimum fields required to make a request.
newSparkOptions ::
  SparkOptions
newSparkOptions =
  SparkOptions
    { archiveUris = Core.Nothing,
      connection = Core.Nothing,
      containerImage = Core.Nothing,
      fileUris = Core.Nothing,
      jarUris = Core.Nothing,
      mainClass = Core.Nothing,
      mainFileUri = Core.Nothing,
      properties = Core.Nothing,
      pyFileUris = Core.Nothing,
      runtimeVersion = Core.Nothing
    }

instance Core.FromJSON SparkOptions where
  parseJSON =
    Core.withObject
      "SparkOptions"
      ( \o ->
          SparkOptions
            Core.<$> (o Core..:? "archiveUris")
            Core.<*> (o Core..:? "connection")
            Core.<*> (o Core..:? "containerImage")
            Core.<*> (o Core..:? "fileUris")
            Core.<*> (o Core..:? "jarUris")
            Core.<*> (o Core..:? "mainClass")
            Core.<*> (o Core..:? "mainFileUri")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "pyFileUris")
            Core.<*> (o Core..:? "runtimeVersion")
      )

instance Core.ToJSON SparkOptions where
  toJSON SparkOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("archiveUris" Core..=) Core.<$> archiveUris,
            ("connection" Core..=) Core.<$> connection,
            ("containerImage" Core..=) Core.<$> containerImage,
            ("fileUris" Core..=) Core.<$> fileUris,
            ("jarUris" Core..=) Core.<$> jarUris,
            ("mainClass" Core..=) Core.<$> mainClass,
            ("mainFileUri" Core..=) Core.<$> mainFileUri,
            ("properties" Core..=) Core.<$> properties,
            ("pyFileUris" Core..=) Core.<$> pyFileUris,
            ("runtimeVersion" Core..=) Core.<$> runtimeVersion
          ]
      )

-- | Configuration properties as a set of key\/value pairs, which will be passed on to the Spark application. For more information, see <https://spark.apache.org/docs/latest/index.html Apache Spark> and the <https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#procedure_option_list procedure option list>.
--
-- /See:/ 'newSparkOptions_Properties' smart constructor.
newtype SparkOptions_Properties = SparkOptions_Properties
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkOptions_Properties' with the minimum fields required to make a request.
newSparkOptions_Properties ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SparkOptions_Properties
newSparkOptions_Properties additional =
  SparkOptions_Properties {additional = additional}

instance Core.FromJSON SparkOptions_Properties where
  parseJSON =
    Core.withObject
      "SparkOptions_Properties"
      ( \o ->
          SparkOptions_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkOptions_Properties where
  toJSON SparkOptions_Properties {..} =
    Core.toJSON additional

--
-- /See:/ 'newSparkStatistics' smart constructor.
data SparkStatistics = SparkStatistics
  { -- | [Output-only] Endpoints generated for the Spark job.
    endpoints :: (Core.Maybe SparkStatistics_Endpoints),
    -- | [Output-only] Logging info is used to generate a link to Cloud Logging.
    loggingInfo :: (Core.Maybe SparkLoggingInfo),
    -- | [Output-only] Spark job id if a Spark job is created successfully.
    sparkJobId :: (Core.Maybe Core.Text),
    -- | [Output-only] Location where the Spark job is executed.
    sparkJobLocation :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkStatistics' with the minimum fields required to make a request.
newSparkStatistics ::
  SparkStatistics
newSparkStatistics =
  SparkStatistics
    { endpoints = Core.Nothing,
      loggingInfo = Core.Nothing,
      sparkJobId = Core.Nothing,
      sparkJobLocation = Core.Nothing
    }

instance Core.FromJSON SparkStatistics where
  parseJSON =
    Core.withObject
      "SparkStatistics"
      ( \o ->
          SparkStatistics
            Core.<$> (o Core..:? "endpoints")
            Core.<*> (o Core..:? "logging_info")
            Core.<*> (o Core..:? "spark_job_id")
            Core.<*> (o Core..:? "spark_job_location")
      )

instance Core.ToJSON SparkStatistics where
  toJSON SparkStatistics {..} =
    Core.object
      ( Core.catMaybes
          [ ("endpoints" Core..=) Core.<$> endpoints,
            ("logging_info" Core..=) Core.<$> loggingInfo,
            ("spark_job_id" Core..=) Core.<$> sparkJobId,
            ("spark_job_location" Core..=)
              Core.<$> sparkJobLocation
          ]
      )

-- | [Output-only] Endpoints generated for the Spark job.
--
-- /See:/ 'newSparkStatistics_Endpoints' smart constructor.
newtype SparkStatistics_Endpoints = SparkStatistics_Endpoints
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SparkStatistics_Endpoints' with the minimum fields required to make a request.
newSparkStatistics_Endpoints ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SparkStatistics_Endpoints
newSparkStatistics_Endpoints additional =
  SparkStatistics_Endpoints {additional = additional}

instance Core.FromJSON SparkStatistics_Endpoints where
  parseJSON =
    Core.withObject
      "SparkStatistics_Endpoints"
      ( \o ->
          SparkStatistics_Endpoints
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SparkStatistics_Endpoints where
  toJSON SparkStatistics_Endpoints {..} =
    Core.toJSON additional

-- | The data type of a variable such as a function argument. Examples include: * INT64: @{\"typeKind\": \"INT64\"}@ * ARRAY: { \"typeKind\": \"ARRAY\", \"arrayElementType\": {\"typeKind\": \"STRING\"} } * STRUCT>: { \"typeKind\": \"STRUCT\", \"structType\": { \"fields\": [ { \"name\": \"x\", \"type\": {\"typeKind\": \"STRING\"} }, { \"name\": \"y\", \"type\": { \"typeKind\": \"ARRAY\", \"arrayElementType\": {\"typeKind\": \"DATE\"} } } ] } }
--
-- /See:/ 'newStandardSqlDataType' smart constructor.
data StandardSqlDataType = StandardSqlDataType
  { -- | The type of the array\'s elements, if type_kind = \"ARRAY\".
    arrayElementType :: (Core.Maybe StandardSqlDataType),
    -- | The fields of this struct, in order, if type_kind = \"STRUCT\".
    structType :: (Core.Maybe StandardSqlStructType),
    -- | Required. The top level type of this field. Can be any GoogleSQL data type (e.g., \"INT64\", \"DATE\", \"ARRAY\").
    typeKind :: (Core.Maybe StandardSqlDataType_TypeKind)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StandardSqlDataType' with the minimum fields required to make a request.
newStandardSqlDataType ::
  StandardSqlDataType
newStandardSqlDataType =
  StandardSqlDataType
    { arrayElementType = Core.Nothing,
      structType = Core.Nothing,
      typeKind = Core.Nothing
    }

instance Core.FromJSON StandardSqlDataType where
  parseJSON =
    Core.withObject
      "StandardSqlDataType"
      ( \o ->
          StandardSqlDataType
            Core.<$> (o Core..:? "arrayElementType")
            Core.<*> (o Core..:? "structType")
            Core.<*> (o Core..:? "typeKind")
      )

instance Core.ToJSON StandardSqlDataType where
  toJSON StandardSqlDataType {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayElementType" Core..=)
              Core.<$> arrayElementType,
            ("structType" Core..=) Core.<$> structType,
            ("typeKind" Core..=) Core.<$> typeKind
          ]
      )

-- | A field or a column.
--
-- /See:/ 'newStandardSqlField' smart constructor.
data StandardSqlField = StandardSqlField
  { -- | Optional. The name of this field. Can be absent for struct fields.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this \"type\" field).
    type' :: (Core.Maybe StandardSqlDataType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StandardSqlField' with the minimum fields required to make a request.
newStandardSqlField ::
  StandardSqlField
newStandardSqlField =
  StandardSqlField {name = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON StandardSqlField where
  parseJSON =
    Core.withObject
      "StandardSqlField"
      ( \o ->
          StandardSqlField
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON StandardSqlField where
  toJSON StandardSqlField {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newStandardSqlStructType' smart constructor.
newtype StandardSqlStructType = StandardSqlStructType
  { -- |
    fields :: (Core.Maybe [StandardSqlField])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StandardSqlStructType' with the minimum fields required to make a request.
newStandardSqlStructType ::
  StandardSqlStructType
newStandardSqlStructType = StandardSqlStructType {fields = Core.Nothing}

instance Core.FromJSON StandardSqlStructType where
  parseJSON =
    Core.withObject
      "StandardSqlStructType"
      ( \o ->
          StandardSqlStructType Core.<$> (o Core..:? "fields")
      )

instance Core.ToJSON StandardSqlStructType where
  toJSON StandardSqlStructType {..} =
    Core.object
      (Core.catMaybes [("fields" Core..=) Core.<$> fields])

-- | A table type
--
-- /See:/ 'newStandardSqlTableType' smart constructor.
newtype StandardSqlTableType = StandardSqlTableType
  { -- | The columns in this table type
    columns :: (Core.Maybe [StandardSqlField])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StandardSqlTableType' with the minimum fields required to make a request.
newStandardSqlTableType ::
  StandardSqlTableType
newStandardSqlTableType = StandardSqlTableType {columns = Core.Nothing}

instance Core.FromJSON StandardSqlTableType where
  parseJSON =
    Core.withObject
      "StandardSqlTableType"
      ( \o ->
          StandardSqlTableType Core.<$> (o Core..:? "columns")
      )

instance Core.ToJSON StandardSqlTableType where
  toJSON StandardSqlTableType {..} =
    Core.object
      ( Core.catMaybes
          [("columns" Core..=) Core.<$> columns]
      )

--
-- /See:/ 'newStreamingbuffer' smart constructor.
data Streamingbuffer = Streamingbuffer
  { -- | [Output-only] A lower-bound estimate of the number of bytes currently in the streaming buffer.
    estimatedBytes :: (Core.Maybe Core.Word64),
    -- | [Output-only] A lower-bound estimate of the number of rows currently in the streaming buffer.
    estimatedRows :: (Core.Maybe Core.Word64),
    -- | [Output-only] Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds since the epoch, if the streaming buffer is available.
    oldestEntryTime :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Streamingbuffer' with the minimum fields required to make a request.
newStreamingbuffer ::
  Streamingbuffer
newStreamingbuffer =
  Streamingbuffer
    { estimatedBytes = Core.Nothing,
      estimatedRows = Core.Nothing,
      oldestEntryTime = Core.Nothing
    }

instance Core.FromJSON Streamingbuffer where
  parseJSON =
    Core.withObject
      "Streamingbuffer"
      ( \o ->
          Streamingbuffer
            Core.<$> ( o Core..:? "estimatedBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "estimatedRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "oldestEntryTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Streamingbuffer where
  toJSON Streamingbuffer {..} =
    Core.object
      ( Core.catMaybes
          [ ("estimatedBytes" Core..=) Core.. Core.AsText
              Core.<$> estimatedBytes,
            ("estimatedRows" Core..=) Core.. Core.AsText
              Core.<$> estimatedRows,
            ("oldestEntryTime" Core..=) Core.. Core.AsText
              Core.<$> oldestEntryTime
          ]
      )

-- | Search space for string and enum.
--
-- /See:/ 'newStringHparamSearchSpace' smart constructor.
newtype StringHparamSearchSpace = StringHparamSearchSpace
  { -- | Canididates for the string or enum parameter in lower case.
    candidates :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StringHparamSearchSpace' with the minimum fields required to make a request.
newStringHparamSearchSpace ::
  StringHparamSearchSpace
newStringHparamSearchSpace = StringHparamSearchSpace {candidates = Core.Nothing}

instance Core.FromJSON StringHparamSearchSpace where
  parseJSON =
    Core.withObject
      "StringHparamSearchSpace"
      ( \o ->
          StringHparamSearchSpace
            Core.<$> (o Core..:? "candidates")
      )

instance Core.ToJSON StringHparamSearchSpace where
  toJSON StringHparamSearchSpace {..} =
    Core.object
      ( Core.catMaybes
          [("candidates" Core..=) Core.<$> candidates]
      )

--
-- /See:/ 'newTable' smart constructor.
data Table = Table
  { -- | [Output-only] Clone definition.
    cloneDefinition :: (Core.Maybe CloneDefinition),
    -- | [Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.
    clustering :: (Core.Maybe Clustering),
    -- | [Output-only] The time when this table was created, in milliseconds since the epoch.
    creationTime :: (Core.Maybe Core.Int64),
    -- | [Output-only] The default collation of the table.
    defaultCollation :: (Core.Maybe Core.Text),
    -- | [Output-only] The default rounding mode of the table.
    defaultRoundingMode :: (Core.Maybe Core.Text),
    -- | [Optional] A user-friendly description of this table.
    description :: (Core.Maybe Core.Text),
    -- | Custom encryption configuration (e.g., Cloud KMS keys).
    encryptionConfiguration :: (Core.Maybe EncryptionConfiguration),
    -- | [Output-only] A hash of the table metadata. Used to ensure there were no concurrent modifications to the resource when attempting an update. Not guaranteed to change when the table contents or the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.
    etag :: (Core.Maybe Core.Text),
    -- | [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
    expirationTime :: (Core.Maybe Core.Int64),
    -- | [Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
    externalDataConfiguration :: (Core.Maybe ExternalDataConfiguration),
    -- | [Optional] A descriptive name for this table.
    friendlyName :: (Core.Maybe Core.Text),
    -- | [Output-only] An opaque ID uniquely identifying the table.
    id :: (Core.Maybe Core.Text),
    -- | [Output-only] The type of the resource.
    kind :: Core.Text,
    -- | The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
    labels :: (Core.Maybe Table_Labels),
    -- | [Output-only] The time when this table was last modified, in milliseconds since the epoch.
    lastModifiedTime :: (Core.Maybe Core.Word64),
    -- | [Output-only] The geographic location where the table resides. This value is inherited from the dataset.
    location :: (Core.Maybe Core.Text),
    -- | [Optional] Materialized view definition.
    materializedView :: (Core.Maybe MaterializedViewDefinition),
    -- | [Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).
    maxStaleness :: (Core.Maybe Core.Base64),
    -- | [Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run \'PREDICT\' queries.
    model :: (Core.Maybe ModelDefinition),
    -- | [Output-only] The size of this table in bytes, excluding any data in the streaming buffer.
    numBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] The number of bytes in the table that are considered \"long-term storage\".
    numLongTermBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] [TrustedTester] The physical size of this table in bytes, excluding any data in the streaming buffer. This includes compression and storage used for time travel.
    numPhysicalBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] The number of rows of data in this table, excluding any data in the streaming buffer.
    numRows :: (Core.Maybe Core.Word64),
    -- | [Output-only] Number of logical bytes that are less than 90 days old.
    numActiveLogicalBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
    numActivePhysicalBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] Number of logical bytes that are more than 90 days old.
    numLongTermLogicalBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
    numLongTermPhysicalBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
    numPartitions :: (Core.Maybe Core.Int64),
    -- | [Output-only] Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
    numTimeTravelPhysicalBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] Total number of logical bytes in the table or materialized view.
    numTotalLogicalBytes :: (Core.Maybe Core.Int64),
    -- | [Output-only] The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
    numTotalPhysicalBytes :: (Core.Maybe Core.Int64),
    -- | [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
    rangePartitioning :: (Core.Maybe RangePartitioning),
    -- | [Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
    requirePartitionFilter :: (Core.Maybe Core.Bool),
    -- | [Optional] Describes the schema of this table.
    schema :: (Core.Maybe TableSchema),
    -- | [Output-only] A URL that can be used to access this resource again.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Output-only] Snapshot definition.
    snapshotDefinition :: (Core.Maybe SnapshotDefinition),
    -- | [Output-only] Contains information regarding this table\'s streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.
    streamingBuffer :: (Core.Maybe Streamingbuffer),
    -- | [Required] Reference describing the ID of this table.
    tableReference :: (Core.Maybe TableReference),
    -- | Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
    timePartitioning :: (Core.Maybe TimePartitioning),
    -- | [Output-only] Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table that references data stored in an external storage system, such as Google Cloud Storage. The default value is TABLE.
    type' :: (Core.Maybe Core.Text),
    -- | [Optional] The view definition.
    view :: (Core.Maybe ViewDefinition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
newTable ::
  Table
newTable =
  Table
    { cloneDefinition = Core.Nothing,
      clustering = Core.Nothing,
      creationTime = Core.Nothing,
      defaultCollation = Core.Nothing,
      defaultRoundingMode = Core.Nothing,
      description = Core.Nothing,
      encryptionConfiguration = Core.Nothing,
      etag = Core.Nothing,
      expirationTime = Core.Nothing,
      externalDataConfiguration = Core.Nothing,
      friendlyName = Core.Nothing,
      id = Core.Nothing,
      kind = "bigquery#table",
      labels = Core.Nothing,
      lastModifiedTime = Core.Nothing,
      location = Core.Nothing,
      materializedView = Core.Nothing,
      maxStaleness = Core.Nothing,
      model = Core.Nothing,
      numBytes = Core.Nothing,
      numLongTermBytes = Core.Nothing,
      numPhysicalBytes = Core.Nothing,
      numRows = Core.Nothing,
      numActiveLogicalBytes = Core.Nothing,
      numActivePhysicalBytes = Core.Nothing,
      numLongTermLogicalBytes = Core.Nothing,
      numLongTermPhysicalBytes = Core.Nothing,
      numPartitions = Core.Nothing,
      numTimeTravelPhysicalBytes = Core.Nothing,
      numTotalLogicalBytes = Core.Nothing,
      numTotalPhysicalBytes = Core.Nothing,
      rangePartitioning = Core.Nothing,
      requirePartitionFilter = Core.Nothing,
      schema = Core.Nothing,
      selfLink = Core.Nothing,
      snapshotDefinition = Core.Nothing,
      streamingBuffer = Core.Nothing,
      tableReference = Core.Nothing,
      timePartitioning = Core.Nothing,
      type' = Core.Nothing,
      view = Core.Nothing
    }

instance Core.FromJSON Table where
  parseJSON =
    Core.withObject
      "Table"
      ( \o ->
          Table
            Core.<$> (o Core..:? "cloneDefinition")
            Core.<*> (o Core..:? "clustering")
            Core.<*> ( o Core..:? "creationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "defaultCollation")
            Core.<*> (o Core..:? "defaultRoundingMode")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "encryptionConfiguration")
            Core.<*> (o Core..:? "etag")
            Core.<*> ( o Core..:? "expirationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "externalDataConfiguration")
            Core.<*> (o Core..:? "friendlyName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#table")
            Core.<*> (o Core..:? "labels")
            Core.<*> ( o Core..:? "lastModifiedTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "materializedView")
            Core.<*> (o Core..:? "maxStaleness")
            Core.<*> (o Core..:? "model")
            Core.<*> ( o Core..:? "numBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "numLongTermBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "numPhysicalBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "numRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "num_active_logical_bytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "num_active_physical_bytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "num_long_term_logical_bytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "num_long_term_physical_bytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "num_partitions"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "num_time_travel_physical_bytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "num_total_logical_bytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "num_total_physical_bytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "rangePartitioning")
            Core.<*> (o Core..:? "requirePartitionFilter")
            Core.<*> (o Core..:? "schema")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "snapshotDefinition")
            Core.<*> (o Core..:? "streamingBuffer")
            Core.<*> (o Core..:? "tableReference")
            Core.<*> (o Core..:? "timePartitioning")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "view")
      )

instance Core.ToJSON Table where
  toJSON Table {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloneDefinition" Core..=)
              Core.<$> cloneDefinition,
            ("clustering" Core..=) Core.<$> clustering,
            ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("defaultCollation" Core..=)
              Core.<$> defaultCollation,
            ("defaultRoundingMode" Core..=)
              Core.<$> defaultRoundingMode,
            ("description" Core..=) Core.<$> description,
            ("encryptionConfiguration" Core..=)
              Core.<$> encryptionConfiguration,
            ("etag" Core..=) Core.<$> etag,
            ("expirationTime" Core..=) Core.. Core.AsText
              Core.<$> expirationTime,
            ("externalDataConfiguration" Core..=)
              Core.<$> externalDataConfiguration,
            ("friendlyName" Core..=) Core.<$> friendlyName,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("lastModifiedTime" Core..=) Core.. Core.AsText
              Core.<$> lastModifiedTime,
            ("location" Core..=) Core.<$> location,
            ("materializedView" Core..=)
              Core.<$> materializedView,
            ("maxStaleness" Core..=) Core.<$> maxStaleness,
            ("model" Core..=) Core.<$> model,
            ("numBytes" Core..=) Core.. Core.AsText
              Core.<$> numBytes,
            ("numLongTermBytes" Core..=) Core.. Core.AsText
              Core.<$> numLongTermBytes,
            ("numPhysicalBytes" Core..=) Core.. Core.AsText
              Core.<$> numPhysicalBytes,
            ("numRows" Core..=) Core.. Core.AsText
              Core.<$> numRows,
            ("num_active_logical_bytes" Core..=)
              Core.. Core.AsText
              Core.<$> numActiveLogicalBytes,
            ("num_active_physical_bytes" Core..=)
              Core.. Core.AsText
              Core.<$> numActivePhysicalBytes,
            ("num_long_term_logical_bytes" Core..=)
              Core.. Core.AsText
              Core.<$> numLongTermLogicalBytes,
            ("num_long_term_physical_bytes" Core..=)
              Core.. Core.AsText
              Core.<$> numLongTermPhysicalBytes,
            ("num_partitions" Core..=) Core.. Core.AsText
              Core.<$> numPartitions,
            ("num_time_travel_physical_bytes" Core..=)
              Core.. Core.AsText
              Core.<$> numTimeTravelPhysicalBytes,
            ("num_total_logical_bytes" Core..=)
              Core.. Core.AsText
              Core.<$> numTotalLogicalBytes,
            ("num_total_physical_bytes" Core..=)
              Core.. Core.AsText
              Core.<$> numTotalPhysicalBytes,
            ("rangePartitioning" Core..=)
              Core.<$> rangePartitioning,
            ("requirePartitionFilter" Core..=)
              Core.<$> requirePartitionFilter,
            ("schema" Core..=) Core.<$> schema,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("snapshotDefinition" Core..=)
              Core.<$> snapshotDefinition,
            ("streamingBuffer" Core..=) Core.<$> streamingBuffer,
            ("tableReference" Core..=) Core.<$> tableReference,
            ("timePartitioning" Core..=)
              Core.<$> timePartitioning,
            ("type" Core..=) Core.<$> type',
            ("view" Core..=) Core.<$> view
          ]
      )

-- | The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
--
-- /See:/ 'newTable_Labels' smart constructor.
newtype Table_Labels = Table_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table_Labels' with the minimum fields required to make a request.
newTable_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Table_Labels
newTable_Labels additional = Table_Labels {additional = additional}

instance Core.FromJSON Table_Labels where
  parseJSON =
    Core.withObject
      "Table_Labels"
      ( \o ->
          Table_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Table_Labels where
  toJSON Table_Labels {..} = Core.toJSON additional

--
-- /See:/ 'newTableCell' smart constructor.
newtype TableCell = TableCell
  { -- |
    v :: (Core.Maybe Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableCell' with the minimum fields required to make a request.
newTableCell ::
  TableCell
newTableCell = TableCell {v = Core.Nothing}

instance Core.FromJSON TableCell where
  parseJSON =
    Core.withObject
      "TableCell"
      (\o -> TableCell Core.<$> (o Core..:? "v"))

instance Core.ToJSON TableCell where
  toJSON TableCell {..} =
    Core.object
      (Core.catMaybes [("v" Core..=) Core.<$> v])

--
-- /See:/ 'newTableDataInsertAllRequest' smart constructor.
data TableDataInsertAllRequest = TableDataInsertAllRequest
  { -- | [Optional] Accept rows that contain values that do not match the schema. The unknown values are ignored. Default is false, which treats unknown values as errors.
    ignoreUnknownValues :: (Core.Maybe Core.Bool),
    -- | The resource type of the response.
    kind :: Core.Text,
    -- | The rows to insert.
    rows :: (Core.Maybe [TableDataInsertAllRequest_RowsItem]),
    -- | [Optional] Insert all valid rows of a request, even if invalid rows exist. The default value is false, which causes the entire request to fail if any invalid rows exist.
    skipInvalidRows :: (Core.Maybe Core.Bool),
    -- | If specified, treats the destination table as a base template, and inserts the rows into an instance table named \"{destination}{templateSuffix}\". BigQuery will manage creation of the instance table, using the schema of the base template table. See https:\/\/cloud.google.com\/bigquery\/streaming-data-into-bigquery#template-tables for considerations when working with templates tables.
    templateSuffix :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableDataInsertAllRequest' with the minimum fields required to make a request.
newTableDataInsertAllRequest ::
  TableDataInsertAllRequest
newTableDataInsertAllRequest =
  TableDataInsertAllRequest
    { ignoreUnknownValues = Core.Nothing,
      kind = "bigquery#tableDataInsertAllRequest",
      rows = Core.Nothing,
      skipInvalidRows = Core.Nothing,
      templateSuffix = Core.Nothing
    }

instance Core.FromJSON TableDataInsertAllRequest where
  parseJSON =
    Core.withObject
      "TableDataInsertAllRequest"
      ( \o ->
          TableDataInsertAllRequest
            Core.<$> (o Core..:? "ignoreUnknownValues")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "bigquery#tableDataInsertAllRequest"
                     )
            Core.<*> (o Core..:? "rows")
            Core.<*> (o Core..:? "skipInvalidRows")
            Core.<*> (o Core..:? "templateSuffix")
      )

instance Core.ToJSON TableDataInsertAllRequest where
  toJSON TableDataInsertAllRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("ignoreUnknownValues" Core..=)
              Core.<$> ignoreUnknownValues,
            Core.Just ("kind" Core..= kind),
            ("rows" Core..=) Core.<$> rows,
            ("skipInvalidRows" Core..=) Core.<$> skipInvalidRows,
            ("templateSuffix" Core..=) Core.<$> templateSuffix
          ]
      )

--
-- /See:/ 'newTableDataInsertAllRequest_RowsItem' smart constructor.
data TableDataInsertAllRequest_RowsItem = TableDataInsertAllRequest_RowsItem
  { -- | [Optional] A unique ID for each row. BigQuery uses this property to detect duplicate insertion requests on a best-effort basis.
    insertId :: (Core.Maybe Core.Text),
    -- | [Required] A JSON object that contains a row of data. The object\'s properties and values must match the destination table\'s schema.
    json :: (Core.Maybe JsonObject)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableDataInsertAllRequest_RowsItem' with the minimum fields required to make a request.
newTableDataInsertAllRequest_RowsItem ::
  TableDataInsertAllRequest_RowsItem
newTableDataInsertAllRequest_RowsItem =
  TableDataInsertAllRequest_RowsItem
    { insertId = Core.Nothing,
      json = Core.Nothing
    }

instance
  Core.FromJSON
    TableDataInsertAllRequest_RowsItem
  where
  parseJSON =
    Core.withObject
      "TableDataInsertAllRequest_RowsItem"
      ( \o ->
          TableDataInsertAllRequest_RowsItem
            Core.<$> (o Core..:? "insertId") Core.<*> (o Core..:? "json")
      )

instance
  Core.ToJSON
    TableDataInsertAllRequest_RowsItem
  where
  toJSON TableDataInsertAllRequest_RowsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("insertId" Core..=) Core.<$> insertId,
            ("json" Core..=) Core.<$> json
          ]
      )

--
-- /See:/ 'newTableDataInsertAllResponse' smart constructor.
data TableDataInsertAllResponse = TableDataInsertAllResponse
  { -- | An array of errors for rows that were not inserted.
    insertErrors :: (Core.Maybe [TableDataInsertAllResponse_InsertErrorsItem]),
    -- | The resource type of the response.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableDataInsertAllResponse' with the minimum fields required to make a request.
newTableDataInsertAllResponse ::
  TableDataInsertAllResponse
newTableDataInsertAllResponse =
  TableDataInsertAllResponse
    { insertErrors = Core.Nothing,
      kind = "bigquery#tableDataInsertAllResponse"
    }

instance Core.FromJSON TableDataInsertAllResponse where
  parseJSON =
    Core.withObject
      "TableDataInsertAllResponse"
      ( \o ->
          TableDataInsertAllResponse
            Core.<$> (o Core..:? "insertErrors")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "bigquery#tableDataInsertAllResponse"
                     )
      )

instance Core.ToJSON TableDataInsertAllResponse where
  toJSON TableDataInsertAllResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("insertErrors" Core..=) Core.<$> insertErrors,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newTableDataInsertAllResponse_InsertErrorsItem' smart constructor.
data TableDataInsertAllResponse_InsertErrorsItem = TableDataInsertAllResponse_InsertErrorsItem
  { -- | Error information for the row indicated by the index property.
    errors :: (Core.Maybe [ErrorProto]),
    -- | The index of the row that error applies to.
    index :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableDataInsertAllResponse_InsertErrorsItem' with the minimum fields required to make a request.
newTableDataInsertAllResponse_InsertErrorsItem ::
  TableDataInsertAllResponse_InsertErrorsItem
newTableDataInsertAllResponse_InsertErrorsItem =
  TableDataInsertAllResponse_InsertErrorsItem
    { errors = Core.Nothing,
      index = Core.Nothing
    }

instance
  Core.FromJSON
    TableDataInsertAllResponse_InsertErrorsItem
  where
  parseJSON =
    Core.withObject
      "TableDataInsertAllResponse_InsertErrorsItem"
      ( \o ->
          TableDataInsertAllResponse_InsertErrorsItem
            Core.<$> (o Core..:? "errors") Core.<*> (o Core..:? "index")
      )

instance
  Core.ToJSON
    TableDataInsertAllResponse_InsertErrorsItem
  where
  toJSON
    TableDataInsertAllResponse_InsertErrorsItem {..} =
      Core.object
        ( Core.catMaybes
            [ ("errors" Core..=) Core.<$> errors,
              ("index" Core..=) Core.<$> index
            ]
        )

--
-- /See:/ 'newTableDataList' smart constructor.
data TableDataList = TableDataList
  { -- | A hash of this page of results.
    etag :: (Core.Maybe Core.Text),
    -- | The resource type of the response.
    kind :: Core.Text,
    -- | A token used for paging results. Providing this token instead of the startIndex parameter can help you retrieve stable results when an underlying table is changing.
    pageToken :: (Core.Maybe Core.Text),
    -- | Rows of results.
    rows :: (Core.Maybe [TableRow]),
    -- | The total number of rows in the complete table.
    totalRows :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableDataList' with the minimum fields required to make a request.
newTableDataList ::
  TableDataList
newTableDataList =
  TableDataList
    { etag = Core.Nothing,
      kind = "bigquery#tableDataList",
      pageToken = Core.Nothing,
      rows = Core.Nothing,
      totalRows = Core.Nothing
    }

instance Core.FromJSON TableDataList where
  parseJSON =
    Core.withObject
      "TableDataList"
      ( \o ->
          TableDataList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#tableDataList")
            Core.<*> (o Core..:? "pageToken")
            Core.<*> (o Core..:? "rows")
            Core.<*> ( o Core..:? "totalRows"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON TableDataList where
  toJSON TableDataList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("pageToken" Core..=) Core.<$> pageToken,
            ("rows" Core..=) Core.<$> rows,
            ("totalRows" Core..=) Core.. Core.AsText
              Core.<$> totalRows
          ]
      )

--
-- /See:/ 'newTableFieldSchema' smart constructor.
data TableFieldSchema = TableFieldSchema
  { -- | [Optional] The categories attached to this field, used for field-level access control.
    categories :: (Core.Maybe TableFieldSchema_Categories),
    -- | Optional. Collation specification of the field. It only can be set on string type field.
    collation :: (Core.Maybe Core.Text),
    -- | Optional. A SQL expression to specify the default value for this field. It can only be set for top level fields (columns). You can use struct or array expression to specify default value for the entire struct or array. The valid SQL expressions are: - Literals for all data types, including STRUCT and ARRAY. - Following functions: - CURRENT/TIMESTAMP - CURRENT/TIME - CURRENT/DATE - CURRENT/DATETIME - GENERATE/UUID - RAND - SESSION/USER - ST/GEOGPOINT - Struct or array composed with the above allowed functions, for example, [CURRENT/DATE(), DATE \'2020-01-01\']
    defaultValueExpression :: (Core.Maybe Core.Text),
    -- | [Optional] The field description. The maximum length is 1,024 characters.
    description :: (Core.Maybe Core.Text),
    -- | [Optional] Describes the nested schema fields if the type property is set to RECORD.
    fields :: (Core.Maybe [TableFieldSchema]),
    -- | [Optional] Maximum length of values of this field for STRINGS or BYTES. If max/length is not specified, no maximum length constraint is imposed on this field. If type = \"STRING\", then max/length represents the maximum UTF-8 length of strings in this field. If type = \"BYTES\", then max_length represents the maximum number of bytes in this field. It is invalid to set this field if type ≠ \"STRING\" and ≠ \"BYTES\".
    maxLength :: (Core.Maybe Core.Int64),
    -- | [Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE.
    mode :: (Core.Maybe Core.Text),
    -- | [Required] The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 300 characters.
    name :: (Core.Maybe Core.Text),
    -- |
    policyTags :: (Core.Maybe TableFieldSchema_PolicyTags),
    -- | [Optional] Precision (maximum number of total digits in base 10) and scale (maximum number of digits in the fractional part in base 10) constraints for values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision or scale if type ≠ \"NUMERIC\" and ≠ \"BIGNUMERIC\". If precision and scale are not specified, no value range constraint is imposed on this field insofar as values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field must be in this range when: - Precision (P) and scale (S) are specified: [-10P-S + 10-S, 10P-S - 10-S] - Precision (P) is specified but not scale (and thus scale is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable values for precision and scale if both are specified: - If type = \"NUMERIC\": 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type = \"BIGNUMERIC\": 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if only precision is specified but not scale (and thus scale is interpreted to be equal to
    -- zero): - If type = \"NUMERIC\": 1 ≤ precision ≤ 29. - If type = \"BIGNUMERIC\": 1 ≤ precision ≤ 38. If scale is specified but not precision, then it is invalid.
    precision :: (Core.Maybe Core.Int64),
    -- | Optional. Rounding Mode specification of the field. It only can be set on NUMERIC or BIGNUMERIC type fields.
    roundingMode :: (Core.Maybe Core.Text),
    -- | [Optional] See documentation for precision.
    scale :: (Core.Maybe Core.Int64),
    -- | [Required] The field data type. Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT), NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, INTERVAL, RECORD (where RECORD indicates that the field contains a nested schema) or STRUCT (same as RECORD).
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableFieldSchema' with the minimum fields required to make a request.
newTableFieldSchema ::
  TableFieldSchema
newTableFieldSchema =
  TableFieldSchema
    { categories = Core.Nothing,
      collation = Core.Nothing,
      defaultValueExpression = Core.Nothing,
      description = Core.Nothing,
      fields = Core.Nothing,
      maxLength = Core.Nothing,
      mode = Core.Nothing,
      name = Core.Nothing,
      policyTags = Core.Nothing,
      precision = Core.Nothing,
      roundingMode = Core.Nothing,
      scale = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON TableFieldSchema where
  parseJSON =
    Core.withObject
      "TableFieldSchema"
      ( \o ->
          TableFieldSchema
            Core.<$> (o Core..:? "categories")
            Core.<*> (o Core..:? "collation")
            Core.<*> (o Core..:? "defaultValueExpression")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "fields")
            Core.<*> ( o Core..:? "maxLength"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "mode")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "policyTags")
            Core.<*> ( o Core..:? "precision"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "roundingMode")
            Core.<*> ( o Core..:? "scale"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON TableFieldSchema where
  toJSON TableFieldSchema {..} =
    Core.object
      ( Core.catMaybes
          [ ("categories" Core..=) Core.<$> categories,
            ("collation" Core..=) Core.<$> collation,
            ("defaultValueExpression" Core..=)
              Core.<$> defaultValueExpression,
            ("description" Core..=) Core.<$> description,
            ("fields" Core..=) Core.<$> fields,
            ("maxLength" Core..=) Core.. Core.AsText
              Core.<$> maxLength,
            ("mode" Core..=) Core.<$> mode,
            ("name" Core..=) Core.<$> name,
            ("policyTags" Core..=) Core.<$> policyTags,
            ("precision" Core..=) Core.. Core.AsText
              Core.<$> precision,
            ("roundingMode" Core..=) Core.<$> roundingMode,
            ("scale" Core..=) Core.. Core.AsText Core.<$> scale,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | [Optional] The categories attached to this field, used for field-level access control.
--
-- /See:/ 'newTableFieldSchema_Categories' smart constructor.
newtype TableFieldSchema_Categories = TableFieldSchema_Categories
  { -- | A list of category resource names. For example, \"projects\/1\/taxonomies\/2\/categories\/3\". At most 5 categories are allowed.
    names :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableFieldSchema_Categories' with the minimum fields required to make a request.
newTableFieldSchema_Categories ::
  TableFieldSchema_Categories
newTableFieldSchema_Categories =
  TableFieldSchema_Categories {names = Core.Nothing}

instance Core.FromJSON TableFieldSchema_Categories where
  parseJSON =
    Core.withObject
      "TableFieldSchema_Categories"
      ( \o ->
          TableFieldSchema_Categories
            Core.<$> (o Core..:? "names")
      )

instance Core.ToJSON TableFieldSchema_Categories where
  toJSON TableFieldSchema_Categories {..} =
    Core.object
      (Core.catMaybes [("names" Core..=) Core.<$> names])

--
-- /See:/ 'newTableFieldSchema_PolicyTags' smart constructor.
newtype TableFieldSchema_PolicyTags = TableFieldSchema_PolicyTags
  { -- | A list of category resource names. For example, \"projects\/1\/location\/eu\/taxonomies\/2\/policyTags\/3\". At most 1 policy tag is allowed.
    names :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableFieldSchema_PolicyTags' with the minimum fields required to make a request.
newTableFieldSchema_PolicyTags ::
  TableFieldSchema_PolicyTags
newTableFieldSchema_PolicyTags =
  TableFieldSchema_PolicyTags {names = Core.Nothing}

instance Core.FromJSON TableFieldSchema_PolicyTags where
  parseJSON =
    Core.withObject
      "TableFieldSchema_PolicyTags"
      ( \o ->
          TableFieldSchema_PolicyTags
            Core.<$> (o Core..:? "names")
      )

instance Core.ToJSON TableFieldSchema_PolicyTags where
  toJSON TableFieldSchema_PolicyTags {..} =
    Core.object
      (Core.catMaybes [("names" Core..=) Core.<$> names])

--
-- /See:/ 'newTableList' smart constructor.
data TableList = TableList
  { -- | A hash of this page of results.
    etag :: (Core.Maybe Core.Text),
    -- | The type of list.
    kind :: Core.Text,
    -- | A token to request the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Tables in the requested dataset.
    tables :: (Core.Maybe [TableList_TablesItem]),
    -- | The total number of tables in the dataset.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableList' with the minimum fields required to make a request.
newTableList ::
  TableList
newTableList =
  TableList
    { etag = Core.Nothing,
      kind = "bigquery#tableList",
      nextPageToken = Core.Nothing,
      tables = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON TableList where
  parseJSON =
    Core.withObject
      "TableList"
      ( \o ->
          TableList
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#tableList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "tables")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON TableList where
  toJSON TableList {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("tables" Core..=) Core.<$> tables,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

--
-- /See:/ 'newTableList_TablesItem' smart constructor.
data TableList_TablesItem = TableList_TablesItem
  { -- | [Beta] Clustering specification for this table, if configured.
    clustering :: (Core.Maybe Clustering),
    -- | The time when this table was created, in milliseconds since the epoch.
    creationTime :: (Core.Maybe Core.Int64),
    -- | [Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed.
    expirationTime :: (Core.Maybe Core.Int64),
    -- | The user-friendly name for this table.
    friendlyName :: (Core.Maybe Core.Text),
    -- | An opaque ID of the table
    id :: (Core.Maybe Core.Text),
    -- | The resource type.
    kind :: Core.Text,
    -- | The labels associated with this table. You can use these to organize and group your tables.
    labels :: (Core.Maybe TableList_TablesItem_Labels),
    -- | The range partitioning specification for this table, if configured.
    rangePartitioning :: (Core.Maybe RangePartitioning),
    -- | A reference uniquely identifying the table.
    tableReference :: (Core.Maybe TableReference),
    -- | The time-based partitioning specification for this table, if configured.
    timePartitioning :: (Core.Maybe TimePartitioning),
    -- | The type of table. Possible values are: TABLE, VIEW.
    type' :: (Core.Maybe Core.Text),
    -- | Additional details for a view.
    view :: (Core.Maybe TableList_TablesItem_View)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableList_TablesItem' with the minimum fields required to make a request.
newTableList_TablesItem ::
  TableList_TablesItem
newTableList_TablesItem =
  TableList_TablesItem
    { clustering = Core.Nothing,
      creationTime = Core.Nothing,
      expirationTime = Core.Nothing,
      friendlyName = Core.Nothing,
      id = Core.Nothing,
      kind = "bigquery#table",
      labels = Core.Nothing,
      rangePartitioning = Core.Nothing,
      tableReference = Core.Nothing,
      timePartitioning = Core.Nothing,
      type' = Core.Nothing,
      view = Core.Nothing
    }

instance Core.FromJSON TableList_TablesItem where
  parseJSON =
    Core.withObject
      "TableList_TablesItem"
      ( \o ->
          TableList_TablesItem
            Core.<$> (o Core..:? "clustering")
            Core.<*> ( o Core..:? "creationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "expirationTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "friendlyName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "bigquery#table")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "rangePartitioning")
            Core.<*> (o Core..:? "tableReference")
            Core.<*> (o Core..:? "timePartitioning")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "view")
      )

instance Core.ToJSON TableList_TablesItem where
  toJSON TableList_TablesItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("clustering" Core..=) Core.<$> clustering,
            ("creationTime" Core..=) Core.. Core.AsText
              Core.<$> creationTime,
            ("expirationTime" Core..=) Core.. Core.AsText
              Core.<$> expirationTime,
            ("friendlyName" Core..=) Core.<$> friendlyName,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("rangePartitioning" Core..=)
              Core.<$> rangePartitioning,
            ("tableReference" Core..=) Core.<$> tableReference,
            ("timePartitioning" Core..=)
              Core.<$> timePartitioning,
            ("type" Core..=) Core.<$> type',
            ("view" Core..=) Core.<$> view
          ]
      )

-- | The labels associated with this table. You can use these to organize and group your tables.
--
-- /See:/ 'newTableList_TablesItem_Labels' smart constructor.
newtype TableList_TablesItem_Labels = TableList_TablesItem_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableList_TablesItem_Labels' with the minimum fields required to make a request.
newTableList_TablesItem_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  TableList_TablesItem_Labels
newTableList_TablesItem_Labels additional =
  TableList_TablesItem_Labels {additional = additional}

instance Core.FromJSON TableList_TablesItem_Labels where
  parseJSON =
    Core.withObject
      "TableList_TablesItem_Labels"
      ( \o ->
          TableList_TablesItem_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON TableList_TablesItem_Labels where
  toJSON TableList_TablesItem_Labels {..} =
    Core.toJSON additional

-- | Additional details for a view.
--
-- /See:/ 'newTableList_TablesItem_View' smart constructor.
newtype TableList_TablesItem_View = TableList_TablesItem_View
  { -- | True if view is defined in legacy SQL dialect, false if in standard SQL.
    useLegacySql :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableList_TablesItem_View' with the minimum fields required to make a request.
newTableList_TablesItem_View ::
  TableList_TablesItem_View
newTableList_TablesItem_View =
  TableList_TablesItem_View {useLegacySql = Core.Nothing}

instance Core.FromJSON TableList_TablesItem_View where
  parseJSON =
    Core.withObject
      "TableList_TablesItem_View"
      ( \o ->
          TableList_TablesItem_View
            Core.<$> (o Core..:? "useLegacySql")
      )

instance Core.ToJSON TableList_TablesItem_View where
  toJSON TableList_TablesItem_View {..} =
    Core.object
      ( Core.catMaybes
          [("useLegacySql" Core..=) Core.<$> useLegacySql]
      )

--
-- /See:/ 'newTableReference' smart constructor.
data TableReference = TableReference
  { -- | [Required] The ID of the dataset containing this table.
    datasetId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the project containing this table.
    projectId :: (Core.Maybe Core.Text),
    -- | [Required] The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableReference' with the minimum fields required to make a request.
newTableReference ::
  TableReference
newTableReference =
  TableReference
    { datasetId = Core.Nothing,
      projectId = Core.Nothing,
      tableId = Core.Nothing
    }

instance Core.FromJSON TableReference where
  parseJSON =
    Core.withObject
      "TableReference"
      ( \o ->
          TableReference
            Core.<$> (o Core..:? "datasetId")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON TableReference where
  toJSON TableReference {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.<$> datasetId,
            ("projectId" Core..=) Core.<$> projectId,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

--
-- /See:/ 'newTableRow' smart constructor.
newtype TableRow = TableRow
  { -- | Represents a single row in the result set, consisting of one or more fields.
    f :: (Core.Maybe [TableCell])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableRow' with the minimum fields required to make a request.
newTableRow ::
  TableRow
newTableRow = TableRow {f = Core.Nothing}

instance Core.FromJSON TableRow where
  parseJSON =
    Core.withObject
      "TableRow"
      (\o -> TableRow Core.<$> (o Core..:? "f"))

instance Core.ToJSON TableRow where
  toJSON TableRow {..} =
    Core.object
      (Core.catMaybes [("f" Core..=) Core.<$> f])

--
-- /See:/ 'newTableSchema' smart constructor.
newtype TableSchema = TableSchema
  { -- | Describes the fields in a table.
    fields :: (Core.Maybe [TableFieldSchema])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableSchema' with the minimum fields required to make a request.
newTableSchema ::
  TableSchema
newTableSchema = TableSchema {fields = Core.Nothing}

instance Core.FromJSON TableSchema where
  parseJSON =
    Core.withObject
      "TableSchema"
      (\o -> TableSchema Core.<$> (o Core..:? "fields"))

instance Core.ToJSON TableSchema where
  toJSON TableSchema {..} =
    Core.object
      (Core.catMaybes [("fields" Core..=) Core.<$> fields])

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsRequest' smart constructor.
newtype TestIamPermissionsRequest = TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as @*@ or @storage.*@) are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsRequest' with the minimum fields required to make a request.
newTestIamPermissionsRequest ::
  TestIamPermissionsRequest
newTestIamPermissionsRequest =
  TestIamPermissionsRequest {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsRequest where
  parseJSON =
    Core.withObject
      "TestIamPermissionsRequest"
      ( \o ->
          TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsRequest where
  toJSON TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newTestIamPermissionsResponse' smart constructor.
newtype TestIamPermissionsResponse = TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TestIamPermissionsResponse' with the minimum fields required to make a request.
newTestIamPermissionsResponse ::
  TestIamPermissionsResponse
newTestIamPermissionsResponse =
  TestIamPermissionsResponse {permissions = Core.Nothing}

instance Core.FromJSON TestIamPermissionsResponse where
  parseJSON =
    Core.withObject
      "TestIamPermissionsResponse"
      ( \o ->
          TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions")
      )

instance Core.ToJSON TestIamPermissionsResponse where
  toJSON TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

--
-- /See:/ 'newTimePartitioning' smart constructor.
data TimePartitioning = TimePartitioning
  { -- | [Optional] Number of milliseconds for which to keep the storage for partitions in the table. The storage in a partition will have an expiration time of its partition time plus this value.
    expirationMs :: (Core.Maybe Core.Int64),
    -- | [Beta] [Optional] If not set, the table is partitioned by pseudo column, referenced via either \'/PARTITIONTIME\' as TIMESTAMP type, or \'/PARTITIONDATE\' as DATE type. If field is specified, the table is instead partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.
    field :: (Core.Maybe Core.Text),
    -- |
    requirePartitionFilter :: (Core.Maybe Core.Bool),
    -- | [Required] The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively. When the type is not specified, the default behavior is DAY.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimePartitioning' with the minimum fields required to make a request.
newTimePartitioning ::
  TimePartitioning
newTimePartitioning =
  TimePartitioning
    { expirationMs = Core.Nothing,
      field = Core.Nothing,
      requirePartitionFilter = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON TimePartitioning where
  parseJSON =
    Core.withObject
      "TimePartitioning"
      ( \o ->
          TimePartitioning
            Core.<$> ( o Core..:? "expirationMs"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "field")
            Core.<*> (o Core..:? "requirePartitionFilter")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON TimePartitioning where
  toJSON TimePartitioning {..} =
    Core.object
      ( Core.catMaybes
          [ ("expirationMs" Core..=) Core.. Core.AsText
              Core.<$> expirationMs,
            ("field" Core..=) Core.<$> field,
            ("requirePartitionFilter" Core..=)
              Core.<$> requirePartitionFilter,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Options used in model training.
--
-- /See:/ 'newTrainingOptions' smart constructor.
data TrainingOptions = TrainingOptions
  { -- | If true, detect step changes and make data adjustment in the input time series.
    adjustStepChanges :: (Core.Maybe Core.Bool),
    -- | Whether to enable auto ARIMA or not.
    autoArima :: (Core.Maybe Core.Bool),
    -- | The max value of non-seasonal p and q.
    autoArimaMaxOrder :: (Core.Maybe Core.Int64),
    -- | Batch size for dnn models.
    batchSize :: (Core.Maybe Core.Int64),
    -- | Booster type for boosted tree models.
    boosterType :: (Core.Maybe TrainingOptions_BoosterType),
    -- | Whether or not p-value test should be computed for this model. Only available for linear and logistic regression models.
    calculatePValues :: (Core.Maybe Core.Bool),
    -- | If true, clean spikes and dips in the input time series.
    cleanSpikesAndDips :: (Core.Maybe Core.Bool),
    -- | Enums for color space, used for processing images in Object Table. See more details at https:\/\/www.tensorflow.org\/io\/tutorials\/colorspace.
    colorSpace :: (Core.Maybe TrainingOptions_ColorSpace),
    -- | Subsample ratio of columns for each level for boosted tree models.
    colsampleBylevel :: (Core.Maybe Core.Double),
    -- | Subsample ratio of columns for each node(split) for boosted tree models.
    colsampleBynode :: (Core.Maybe Core.Double),
    -- | Subsample ratio of columns when constructing each tree for boosted tree models.
    colsampleBytree :: (Core.Maybe Core.Double),
    -- | Type of normalization algorithm for boosted tree models using dart booster.
    dartNormalizeType :: (Core.Maybe TrainingOptions_DartNormalizeType),
    -- | The data frequency of a time series.
    dataFrequency :: (Core.Maybe TrainingOptions_DataFrequency),
    -- | The column to split data with. This column won\'t be used as a feature. 1. When data/split/method is CUSTOM, the corresponding column should be boolean. The rows with true value tag are eval data, and the false are training data. 2. When data/split/method is SEQ, the first DATA/SPLIT/EVAL_FRACTION rows (from smallest to largest) in the corresponding column are used as training data, and the rest are eval data. It respects the order in Orderable data types: https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/data-types#data-type-properties
    dataSplitColumn :: (Core.Maybe Core.Text),
    -- | The fraction of evaluation data over the whole input data. The rest of data will be used as training data. The format should be double. Accurate to two decimal places. Default value is 0.2.
    dataSplitEvalFraction :: (Core.Maybe Core.Double),
    -- | The data split type for training and evaluation, e.g. RANDOM.
    dataSplitMethod :: (Core.Maybe TrainingOptions_DataSplitMethod),
    -- | If true, perform decompose time series and save the results.
    decomposeTimeSeries :: (Core.Maybe Core.Bool),
    -- | Distance type for clustering models.
    distanceType :: (Core.Maybe TrainingOptions_DistanceType),
    -- | Dropout probability for dnn models.
    dropout :: (Core.Maybe Core.Double),
    -- | Whether to stop early when the loss doesn\'t improve significantly any more (compared to min/relative/progress). Used only for iterative training algorithms.
    earlyStop :: (Core.Maybe Core.Bool),
    -- | If true, enable global explanation during training.
    enableGlobalExplain :: (Core.Maybe Core.Bool),
    -- | Feedback type that specifies which algorithm to run for matrix factorization.
    feedbackType :: (Core.Maybe TrainingOptions_FeedbackType),
    -- | Hidden units for dnn models.
    hiddenUnits :: (Core.Maybe [Core.Int64]),
    -- | The geographical region based on which the holidays are considered in time series modeling. If a valid value is specified, then holiday effects modeling is enabled.
    holidayRegion :: (Core.Maybe TrainingOptions_HolidayRegion),
    -- | The number of periods ahead that need to be forecasted.
    horizon :: (Core.Maybe Core.Int64),
    -- | The target evaluation metrics to optimize the hyperparameters for.
    hparamTuningObjectives :: (Core.Maybe [TrainingOptions_HparamTuningObjectivesItem]),
    -- | Include drift when fitting an ARIMA model.
    includeDrift :: (Core.Maybe Core.Bool),
    -- | Specifies the initial learning rate for the line search learn rate strategy.
    initialLearnRate :: (Core.Maybe Core.Double),
    -- | Name of input label columns in training data.
    inputLabelColumns :: (Core.Maybe [Core.Text]),
    -- | Number of integral steps for the integrated gradients explain method.
    integratedGradientsNumSteps :: (Core.Maybe Core.Int64),
    -- | Item column specified for matrix factorization models.
    itemColumn :: (Core.Maybe Core.Text),
    -- | The column used to provide the initial centroids for kmeans algorithm when kmeans/initialization/method is CUSTOM.
    kmeansInitializationColumn :: (Core.Maybe Core.Text),
    -- | The method used to initialize the centroids for kmeans algorithm.
    kmeansInitializationMethod :: (Core.Maybe TrainingOptions_KmeansInitializationMethod),
    -- | L1 regularization coefficient.
    l1Regularization :: (Core.Maybe Core.Double),
    -- | L2 regularization coefficient.
    l2Regularization :: (Core.Maybe Core.Double),
    -- | Weights associated with each label class, for rebalancing the training data. Only applicable for classification models.
    labelClassWeights :: (Core.Maybe TrainingOptions_LabelClassWeights),
    -- | Learning rate in training. Used only for iterative training algorithms.
    learnRate :: (Core.Maybe Core.Double),
    -- | The strategy to determine learn rate for the current iteration.
    learnRateStrategy :: (Core.Maybe TrainingOptions_LearnRateStrategy),
    -- | Type of loss function used during training run.
    lossType :: (Core.Maybe TrainingOptions_LossType),
    -- | The maximum number of iterations in training. Used only for iterative training algorithms.
    maxIterations :: (Core.Maybe Core.Int64),
    -- | Maximum number of trials to run in parallel.
    maxParallelTrials :: (Core.Maybe Core.Int64),
    -- | Get truncated length by last n points in time series. Use separately from time/series/length/fraction and min/time/series/length.
    maxTimeSeriesLength :: (Core.Maybe Core.Int64),
    -- | Maximum depth of a tree for boosted tree models.
    maxTreeDepth :: (Core.Maybe Core.Int64),
    -- | When early/stop is true, stops training when accuracy improvement is less than \'min/relative_progress\'. Used only for iterative training algorithms.
    minRelativeProgress :: (Core.Maybe Core.Double),
    -- | Minimum split loss for boosted tree models.
    minSplitLoss :: (Core.Maybe Core.Double),
    -- | Set fast trend ARIMA/PLUS model minimum training length. Use in pair with time/series/length/fraction.
    minTimeSeriesLength :: (Core.Maybe Core.Int64),
    -- | Minimum sum of instance weight needed in a child for boosted tree models.
    minTreeChildWeight :: (Core.Maybe Core.Int64),
    -- | Google Cloud Storage URI from which the model was imported. Only applicable for imported models.
    modelUri :: (Core.Maybe Core.Text),
    -- | A specification of the non-seasonal part of the ARIMA model: the three components (p, d, q) are the AR order, the degree of differencing, and the MA order.
    nonSeasonalOrder :: (Core.Maybe ArimaOrder),
    -- | Number of clusters for clustering models.
    numClusters :: (Core.Maybe Core.Int64),
    -- | Num factors specified for matrix factorization models.
    numFactors :: (Core.Maybe Core.Int64),
    -- | Number of parallel trees constructed during each iteration for boosted tree models.
    numParallelTree :: (Core.Maybe Core.Int64),
    -- | Number of trials to run this hyperparameter tuning job.
    numTrials :: (Core.Maybe Core.Int64),
    -- | Optimization strategy for training linear regression models.
    optimizationStrategy :: (Core.Maybe TrainingOptions_OptimizationStrategy),
    -- | Whether to preserve the input structs in output feature names. Suppose there is a struct A with field b. When false (default), the output feature name is A_b. When true, the output feature name is A.b.
    preserveInputStructs :: (Core.Maybe Core.Bool),
    -- | Number of paths for the sampled Shapley explain method.
    sampledShapleyNumPaths :: (Core.Maybe Core.Int64),
    -- | Subsample fraction of the training data to grow tree to prevent overfitting for boosted tree models.
    subsample :: (Core.Maybe Core.Double),
    -- | Column to be designated as time series data for ARIMA model.
    timeSeriesDataColumn :: (Core.Maybe Core.Text),
    -- | The time series id column that was used during ARIMA model training.
    timeSeriesIdColumn :: (Core.Maybe Core.Text),
    -- | The time series id columns that were used during ARIMA model training.
    timeSeriesIdColumns :: (Core.Maybe [Core.Text]),
    -- | Get truncated length by fraction in time series.
    timeSeriesLengthFraction :: (Core.Maybe Core.Double),
    -- | Column to be designated as time series timestamp for ARIMA model.
    timeSeriesTimestampColumn :: (Core.Maybe Core.Text),
    -- | Tree construction algorithm for boosted tree models.
    treeMethod :: (Core.Maybe TrainingOptions_TreeMethod),
    -- | The smoothing window size for the trend component of the time series.
    trendSmoothingWindowSize :: (Core.Maybe Core.Int64),
    -- | User column specified for matrix factorization models.
    userColumn :: (Core.Maybe Core.Text),
    -- | Hyperparameter for matrix factoration when implicit feedback type is specified.
    walsAlpha :: (Core.Maybe Core.Double),
    -- | Whether to train a model from the last checkpoint.
    warmStart :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrainingOptions' with the minimum fields required to make a request.
newTrainingOptions ::
  TrainingOptions
newTrainingOptions =
  TrainingOptions
    { adjustStepChanges = Core.Nothing,
      autoArima = Core.Nothing,
      autoArimaMaxOrder = Core.Nothing,
      batchSize = Core.Nothing,
      boosterType = Core.Nothing,
      calculatePValues = Core.Nothing,
      cleanSpikesAndDips = Core.Nothing,
      colorSpace = Core.Nothing,
      colsampleBylevel = Core.Nothing,
      colsampleBynode = Core.Nothing,
      colsampleBytree = Core.Nothing,
      dartNormalizeType = Core.Nothing,
      dataFrequency = Core.Nothing,
      dataSplitColumn = Core.Nothing,
      dataSplitEvalFraction = Core.Nothing,
      dataSplitMethod = Core.Nothing,
      decomposeTimeSeries = Core.Nothing,
      distanceType = Core.Nothing,
      dropout = Core.Nothing,
      earlyStop = Core.Nothing,
      enableGlobalExplain = Core.Nothing,
      feedbackType = Core.Nothing,
      hiddenUnits = Core.Nothing,
      holidayRegion = Core.Nothing,
      horizon = Core.Nothing,
      hparamTuningObjectives = Core.Nothing,
      includeDrift = Core.Nothing,
      initialLearnRate = Core.Nothing,
      inputLabelColumns = Core.Nothing,
      integratedGradientsNumSteps = Core.Nothing,
      itemColumn = Core.Nothing,
      kmeansInitializationColumn = Core.Nothing,
      kmeansInitializationMethod = Core.Nothing,
      l1Regularization = Core.Nothing,
      l2Regularization = Core.Nothing,
      labelClassWeights = Core.Nothing,
      learnRate = Core.Nothing,
      learnRateStrategy = Core.Nothing,
      lossType = Core.Nothing,
      maxIterations = Core.Nothing,
      maxParallelTrials = Core.Nothing,
      maxTimeSeriesLength = Core.Nothing,
      maxTreeDepth = Core.Nothing,
      minRelativeProgress = Core.Nothing,
      minSplitLoss = Core.Nothing,
      minTimeSeriesLength = Core.Nothing,
      minTreeChildWeight = Core.Nothing,
      modelUri = Core.Nothing,
      nonSeasonalOrder = Core.Nothing,
      numClusters = Core.Nothing,
      numFactors = Core.Nothing,
      numParallelTree = Core.Nothing,
      numTrials = Core.Nothing,
      optimizationStrategy = Core.Nothing,
      preserveInputStructs = Core.Nothing,
      sampledShapleyNumPaths = Core.Nothing,
      subsample = Core.Nothing,
      timeSeriesDataColumn = Core.Nothing,
      timeSeriesIdColumn = Core.Nothing,
      timeSeriesIdColumns = Core.Nothing,
      timeSeriesLengthFraction = Core.Nothing,
      timeSeriesTimestampColumn = Core.Nothing,
      treeMethod = Core.Nothing,
      trendSmoothingWindowSize = Core.Nothing,
      userColumn = Core.Nothing,
      walsAlpha = Core.Nothing,
      warmStart = Core.Nothing
    }

instance Core.FromJSON TrainingOptions where
  parseJSON =
    Core.withObject
      "TrainingOptions"
      ( \o ->
          TrainingOptions
            Core.<$> (o Core..:? "adjustStepChanges")
            Core.<*> (o Core..:? "autoArima")
            Core.<*> ( o Core..:? "autoArimaMaxOrder"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "batchSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "boosterType")
            Core.<*> (o Core..:? "calculatePValues")
            Core.<*> (o Core..:? "cleanSpikesAndDips")
            Core.<*> (o Core..:? "colorSpace")
            Core.<*> (o Core..:? "colsampleBylevel")
            Core.<*> (o Core..:? "colsampleBynode")
            Core.<*> (o Core..:? "colsampleBytree")
            Core.<*> (o Core..:? "dartNormalizeType")
            Core.<*> (o Core..:? "dataFrequency")
            Core.<*> (o Core..:? "dataSplitColumn")
            Core.<*> (o Core..:? "dataSplitEvalFraction")
            Core.<*> (o Core..:? "dataSplitMethod")
            Core.<*> (o Core..:? "decomposeTimeSeries")
            Core.<*> (o Core..:? "distanceType")
            Core.<*> (o Core..:? "dropout")
            Core.<*> (o Core..:? "earlyStop")
            Core.<*> (o Core..:? "enableGlobalExplain")
            Core.<*> (o Core..:? "feedbackType")
            Core.<*> ( o Core..:? "hiddenUnits"
                         Core.<&> Core.fmap (Core.fmap Core.fromAsText)
                     )
            Core.<*> (o Core..:? "holidayRegion")
            Core.<*> ( o Core..:? "horizon"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "hparamTuningObjectives")
            Core.<*> (o Core..:? "includeDrift")
            Core.<*> (o Core..:? "initialLearnRate")
            Core.<*> (o Core..:? "inputLabelColumns")
            Core.<*> ( o Core..:? "integratedGradientsNumSteps"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "itemColumn")
            Core.<*> (o Core..:? "kmeansInitializationColumn")
            Core.<*> (o Core..:? "kmeansInitializationMethod")
            Core.<*> (o Core..:? "l1Regularization")
            Core.<*> (o Core..:? "l2Regularization")
            Core.<*> (o Core..:? "labelClassWeights")
            Core.<*> (o Core..:? "learnRate")
            Core.<*> (o Core..:? "learnRateStrategy")
            Core.<*> (o Core..:? "lossType")
            Core.<*> ( o Core..:? "maxIterations"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "maxParallelTrials"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "maxTimeSeriesLength"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "maxTreeDepth"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "minRelativeProgress")
            Core.<*> (o Core..:? "minSplitLoss")
            Core.<*> ( o Core..:? "minTimeSeriesLength"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "minTreeChildWeight"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "modelUri")
            Core.<*> (o Core..:? "nonSeasonalOrder")
            Core.<*> ( o Core..:? "numClusters"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "numFactors"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "numParallelTree"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "numTrials"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "optimizationStrategy")
            Core.<*> (o Core..:? "preserveInputStructs")
            Core.<*> ( o Core..:? "sampledShapleyNumPaths"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "subsample")
            Core.<*> (o Core..:? "timeSeriesDataColumn")
            Core.<*> (o Core..:? "timeSeriesIdColumn")
            Core.<*> (o Core..:? "timeSeriesIdColumns")
            Core.<*> (o Core..:? "timeSeriesLengthFraction")
            Core.<*> (o Core..:? "timeSeriesTimestampColumn")
            Core.<*> (o Core..:? "treeMethod")
            Core.<*> ( o Core..:? "trendSmoothingWindowSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "userColumn")
            Core.<*> (o Core..:? "walsAlpha")
            Core.<*> (o Core..:? "warmStart")
      )

instance Core.ToJSON TrainingOptions where
  toJSON TrainingOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("adjustStepChanges" Core..=)
              Core.<$> adjustStepChanges,
            ("autoArima" Core..=) Core.<$> autoArima,
            ("autoArimaMaxOrder" Core..=) Core.. Core.AsText
              Core.<$> autoArimaMaxOrder,
            ("batchSize" Core..=) Core.. Core.AsText
              Core.<$> batchSize,
            ("boosterType" Core..=) Core.<$> boosterType,
            ("calculatePValues" Core..=)
              Core.<$> calculatePValues,
            ("cleanSpikesAndDips" Core..=)
              Core.<$> cleanSpikesAndDips,
            ("colorSpace" Core..=) Core.<$> colorSpace,
            ("colsampleBylevel" Core..=)
              Core.<$> colsampleBylevel,
            ("colsampleBynode" Core..=) Core.<$> colsampleBynode,
            ("colsampleBytree" Core..=) Core.<$> colsampleBytree,
            ("dartNormalizeType" Core..=)
              Core.<$> dartNormalizeType,
            ("dataFrequency" Core..=) Core.<$> dataFrequency,
            ("dataSplitColumn" Core..=) Core.<$> dataSplitColumn,
            ("dataSplitEvalFraction" Core..=)
              Core.<$> dataSplitEvalFraction,
            ("dataSplitMethod" Core..=) Core.<$> dataSplitMethod,
            ("decomposeTimeSeries" Core..=)
              Core.<$> decomposeTimeSeries,
            ("distanceType" Core..=) Core.<$> distanceType,
            ("dropout" Core..=) Core.<$> dropout,
            ("earlyStop" Core..=) Core.<$> earlyStop,
            ("enableGlobalExplain" Core..=)
              Core.<$> enableGlobalExplain,
            ("feedbackType" Core..=) Core.<$> feedbackType,
            ("hiddenUnits" Core..=) Core.. Core.fmap Core.AsText
              Core.<$> hiddenUnits,
            ("holidayRegion" Core..=) Core.<$> holidayRegion,
            ("horizon" Core..=) Core.. Core.AsText
              Core.<$> horizon,
            ("hparamTuningObjectives" Core..=)
              Core.<$> hparamTuningObjectives,
            ("includeDrift" Core..=) Core.<$> includeDrift,
            ("initialLearnRate" Core..=)
              Core.<$> initialLearnRate,
            ("inputLabelColumns" Core..=)
              Core.<$> inputLabelColumns,
            ("integratedGradientsNumSteps" Core..=)
              Core.. Core.AsText
              Core.<$> integratedGradientsNumSteps,
            ("itemColumn" Core..=) Core.<$> itemColumn,
            ("kmeansInitializationColumn" Core..=)
              Core.<$> kmeansInitializationColumn,
            ("kmeansInitializationMethod" Core..=)
              Core.<$> kmeansInitializationMethod,
            ("l1Regularization" Core..=)
              Core.<$> l1Regularization,
            ("l2Regularization" Core..=)
              Core.<$> l2Regularization,
            ("labelClassWeights" Core..=)
              Core.<$> labelClassWeights,
            ("learnRate" Core..=) Core.<$> learnRate,
            ("learnRateStrategy" Core..=)
              Core.<$> learnRateStrategy,
            ("lossType" Core..=) Core.<$> lossType,
            ("maxIterations" Core..=) Core.. Core.AsText
              Core.<$> maxIterations,
            ("maxParallelTrials" Core..=) Core.. Core.AsText
              Core.<$> maxParallelTrials,
            ("maxTimeSeriesLength" Core..=) Core.. Core.AsText
              Core.<$> maxTimeSeriesLength,
            ("maxTreeDepth" Core..=) Core.. Core.AsText
              Core.<$> maxTreeDepth,
            ("minRelativeProgress" Core..=)
              Core.<$> minRelativeProgress,
            ("minSplitLoss" Core..=) Core.<$> minSplitLoss,
            ("minTimeSeriesLength" Core..=) Core.. Core.AsText
              Core.<$> minTimeSeriesLength,
            ("minTreeChildWeight" Core..=) Core.. Core.AsText
              Core.<$> minTreeChildWeight,
            ("modelUri" Core..=) Core.<$> modelUri,
            ("nonSeasonalOrder" Core..=)
              Core.<$> nonSeasonalOrder,
            ("numClusters" Core..=) Core.. Core.AsText
              Core.<$> numClusters,
            ("numFactors" Core..=) Core.. Core.AsText
              Core.<$> numFactors,
            ("numParallelTree" Core..=) Core.. Core.AsText
              Core.<$> numParallelTree,
            ("numTrials" Core..=) Core.. Core.AsText
              Core.<$> numTrials,
            ("optimizationStrategy" Core..=)
              Core.<$> optimizationStrategy,
            ("preserveInputStructs" Core..=)
              Core.<$> preserveInputStructs,
            ("sampledShapleyNumPaths" Core..=) Core.. Core.AsText
              Core.<$> sampledShapleyNumPaths,
            ("subsample" Core..=) Core.<$> subsample,
            ("timeSeriesDataColumn" Core..=)
              Core.<$> timeSeriesDataColumn,
            ("timeSeriesIdColumn" Core..=)
              Core.<$> timeSeriesIdColumn,
            ("timeSeriesIdColumns" Core..=)
              Core.<$> timeSeriesIdColumns,
            ("timeSeriesLengthFraction" Core..=)
              Core.<$> timeSeriesLengthFraction,
            ("timeSeriesTimestampColumn" Core..=)
              Core.<$> timeSeriesTimestampColumn,
            ("treeMethod" Core..=) Core.<$> treeMethod,
            ("trendSmoothingWindowSize" Core..=)
              Core.. Core.AsText
              Core.<$> trendSmoothingWindowSize,
            ("userColumn" Core..=) Core.<$> userColumn,
            ("walsAlpha" Core..=) Core.<$> walsAlpha,
            ("warmStart" Core..=) Core.<$> warmStart
          ]
      )

-- | Weights associated with each label class, for rebalancing the training data. Only applicable for classification models.
--
-- /See:/ 'newTrainingOptions_LabelClassWeights' smart constructor.
newtype TrainingOptions_LabelClassWeights = TrainingOptions_LabelClassWeights
  { -- |
    additional :: (Core.HashMap Core.Text Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrainingOptions_LabelClassWeights' with the minimum fields required to make a request.
newTrainingOptions_LabelClassWeights ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Double ->
  TrainingOptions_LabelClassWeights
newTrainingOptions_LabelClassWeights additional =
  TrainingOptions_LabelClassWeights {additional = additional}

instance
  Core.FromJSON
    TrainingOptions_LabelClassWeights
  where
  parseJSON =
    Core.withObject
      "TrainingOptions_LabelClassWeights"
      ( \o ->
          TrainingOptions_LabelClassWeights
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    TrainingOptions_LabelClassWeights
  where
  toJSON TrainingOptions_LabelClassWeights {..} =
    Core.toJSON additional

-- | Information about a single training query run for the model.
--
-- /See:/ 'newTrainingRun' smart constructor.
data TrainingRun = TrainingRun
  { -- | Output only. Global explanation contains the explanation of top features on the class level. Applies to classification models only.
    classLevelGlobalExplanations :: (Core.Maybe [GlobalExplanation]),
    -- | Output only. Data split result of the training run. Only set when the input data is actually split.
    dataSplitResult :: (Core.Maybe DataSplitResult),
    -- | Output only. The evaluation metrics over training\/eval data that were computed at the end of training.
    evaluationMetrics :: (Core.Maybe EvaluationMetrics),
    -- | Output only. Global explanation contains the explanation of top features on the model level. Applies to both regression and classification models.
    modelLevelGlobalExplanation :: (Core.Maybe GlobalExplanation),
    -- | Output only. Output of each iteration run, results.size() \<= max_iterations.
    results :: (Core.Maybe [IterationResult]),
    -- | Output only. The start time of this training run.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Options that were used for this training run, includes user specified and default options that were used.
    trainingOptions :: (Core.Maybe TrainingOptions),
    -- | Output only. The start time of this training run, in milliseconds since epoch.
    trainingStartTime :: (Core.Maybe Core.Int64),
    -- | The model id in the <https://cloud.google.com/vertex-ai/docs/model-registry/introduction Vertex AI Model Registry> for this training run.
    vertexAiModelId :: (Core.Maybe Core.Text),
    -- | Output only. The model version in the <https://cloud.google.com/vertex-ai/docs/model-registry/introduction Vertex AI Model Registry> for this training run.
    vertexAiModelVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrainingRun' with the minimum fields required to make a request.
newTrainingRun ::
  TrainingRun
newTrainingRun =
  TrainingRun
    { classLevelGlobalExplanations = Core.Nothing,
      dataSplitResult = Core.Nothing,
      evaluationMetrics = Core.Nothing,
      modelLevelGlobalExplanation = Core.Nothing,
      results = Core.Nothing,
      startTime = Core.Nothing,
      trainingOptions = Core.Nothing,
      trainingStartTime = Core.Nothing,
      vertexAiModelId = Core.Nothing,
      vertexAiModelVersion = Core.Nothing
    }

instance Core.FromJSON TrainingRun where
  parseJSON =
    Core.withObject
      "TrainingRun"
      ( \o ->
          TrainingRun
            Core.<$> (o Core..:? "classLevelGlobalExplanations")
            Core.<*> (o Core..:? "dataSplitResult")
            Core.<*> (o Core..:? "evaluationMetrics")
            Core.<*> (o Core..:? "modelLevelGlobalExplanation")
            Core.<*> (o Core..:? "results")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "trainingOptions")
            Core.<*> ( o Core..:? "trainingStartTime"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "vertexAiModelId")
            Core.<*> (o Core..:? "vertexAiModelVersion")
      )

instance Core.ToJSON TrainingRun where
  toJSON TrainingRun {..} =
    Core.object
      ( Core.catMaybes
          [ ("classLevelGlobalExplanations" Core..=)
              Core.<$> classLevelGlobalExplanations,
            ("dataSplitResult" Core..=) Core.<$> dataSplitResult,
            ("evaluationMetrics" Core..=)
              Core.<$> evaluationMetrics,
            ("modelLevelGlobalExplanation" Core..=)
              Core.<$> modelLevelGlobalExplanation,
            ("results" Core..=) Core.<$> results,
            ("startTime" Core..=) Core.<$> startTime,
            ("trainingOptions" Core..=) Core.<$> trainingOptions,
            ("trainingStartTime" Core..=) Core.. Core.AsText
              Core.<$> trainingStartTime,
            ("vertexAiModelId" Core..=) Core.<$> vertexAiModelId,
            ("vertexAiModelVersion" Core..=)
              Core.<$> vertexAiModelVersion
          ]
      )

--
-- /See:/ 'newTransactionInfo' smart constructor.
newtype TransactionInfo = TransactionInfo
  { -- | [Output-only] \/\/ [Alpha] Id of the transaction.
    transactionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TransactionInfo' with the minimum fields required to make a request.
newTransactionInfo ::
  TransactionInfo
newTransactionInfo = TransactionInfo {transactionId = Core.Nothing}

instance Core.FromJSON TransactionInfo where
  parseJSON =
    Core.withObject
      "TransactionInfo"
      ( \o ->
          TransactionInfo
            Core.<$> (o Core..:? "transactionId")
      )

instance Core.ToJSON TransactionInfo where
  toJSON TransactionInfo {..} =
    Core.object
      ( Core.catMaybes
          [("transactionId" Core..=) Core.<$> transactionId]
      )

-- | This is used for defining User Defined Function (UDF) resources only when using legacy SQL. Users of Standard SQL should leverage either DDL (e.g. CREATE [TEMPORARY] FUNCTION ... ) or the Routines API to define UDF resources. For additional information on migrating, see: https:\/\/cloud.google.com\/bigquery\/docs\/reference\/standard-sql\/migrating-from-legacy-sql#differences/in/user-defined/javascript/functions
--
-- /See:/ 'newUserDefinedFunctionResource' smart constructor.
data UserDefinedFunctionResource = UserDefinedFunctionResource
  { -- | [Pick one] An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code.
    inlineCode :: (Core.Maybe Core.Text),
    -- | [Pick one] A code resource to load from a Google Cloud Storage URI (gs:\/\/bucket\/path).
    resourceUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserDefinedFunctionResource' with the minimum fields required to make a request.
newUserDefinedFunctionResource ::
  UserDefinedFunctionResource
newUserDefinedFunctionResource =
  UserDefinedFunctionResource
    { inlineCode = Core.Nothing,
      resourceUri = Core.Nothing
    }

instance Core.FromJSON UserDefinedFunctionResource where
  parseJSON =
    Core.withObject
      "UserDefinedFunctionResource"
      ( \o ->
          UserDefinedFunctionResource
            Core.<$> (o Core..:? "inlineCode")
            Core.<*> (o Core..:? "resourceUri")
      )

instance Core.ToJSON UserDefinedFunctionResource where
  toJSON UserDefinedFunctionResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("inlineCode" Core..=) Core.<$> inlineCode,
            ("resourceUri" Core..=) Core.<$> resourceUri
          ]
      )

--
-- /See:/ 'newViewDefinition' smart constructor.
data ViewDefinition = ViewDefinition
  { -- | [Required] A query that BigQuery executes when the view is referenced.
    query :: (Core.Maybe Core.Text),
    -- | True if the column names are explicitly specified. For example by using the \'CREATE VIEW v(c1, c2) AS ...\' syntax. Can only be set using BigQuery\'s standard SQL: https:\/\/cloud.google.com\/bigquery\/sql-reference\/
    useExplicitColumnNames :: (Core.Maybe Core.Bool),
    -- | Specifies whether to use BigQuery\'s legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery\'s standard SQL: https:\/\/cloud.google.com\/bigquery\/sql-reference\/ Queries and views that reference this view must use the same flag value.
    useLegacySql :: (Core.Maybe Core.Bool),
    -- | Describes user-defined function resources used in the query.
    userDefinedFunctionResources :: (Core.Maybe [UserDefinedFunctionResource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ViewDefinition' with the minimum fields required to make a request.
newViewDefinition ::
  ViewDefinition
newViewDefinition =
  ViewDefinition
    { query = Core.Nothing,
      useExplicitColumnNames = Core.Nothing,
      useLegacySql = Core.Nothing,
      userDefinedFunctionResources = Core.Nothing
    }

instance Core.FromJSON ViewDefinition where
  parseJSON =
    Core.withObject
      "ViewDefinition"
      ( \o ->
          ViewDefinition
            Core.<$> (o Core..:? "query")
            Core.<*> (o Core..:? "useExplicitColumnNames")
            Core.<*> (o Core..:? "useLegacySql")
            Core.<*> (o Core..:? "userDefinedFunctionResources")
      )

instance Core.ToJSON ViewDefinition where
  toJSON ViewDefinition {..} =
    Core.object
      ( Core.catMaybes
          [ ("query" Core..=) Core.<$> query,
            ("useExplicitColumnNames" Core..=)
              Core.<$> useExplicitColumnNames,
            ("useLegacySql" Core..=) Core.<$> useLegacySql,
            ("userDefinedFunctionResources" Core..=)
              Core.<$> userDefinedFunctionResources
          ]
      )
