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
-- Module      : Gogol.Language
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides natural language understanding technologies, such as sentiment analysis, entity recognition, entity sentiment analysis, and other text annotations, to developers.
--
-- /See:/ <https://cloud.google.com/natural-language/ Cloud Natural Language API Reference>
module Gogol.Language
  ( -- * Configuration
    languageService,

    -- * OAuth Scopes
    CloudLanguage'FullControl,
    CloudPlatform'FullControl,

    -- * Resources

    -- ** language.documents.analyzeEntities
    LanguageDocumentsAnalyzeEntitiesResource,
    LanguageDocumentsAnalyzeEntities (..),
    newLanguageDocumentsAnalyzeEntities,

    -- ** language.documents.analyzeSentiment
    LanguageDocumentsAnalyzeSentimentResource,
    LanguageDocumentsAnalyzeSentiment (..),
    newLanguageDocumentsAnalyzeSentiment,

    -- ** language.documents.annotateText
    LanguageDocumentsAnnotateTextResource,
    LanguageDocumentsAnnotateText (..),
    newLanguageDocumentsAnnotateText,

    -- ** language.documents.classifyText
    LanguageDocumentsClassifyTextResource,
    LanguageDocumentsClassifyText (..),
    newLanguageDocumentsClassifyText,

    -- ** language.documents.moderateText
    LanguageDocumentsModerateTextResource,
    LanguageDocumentsModerateText (..),
    newLanguageDocumentsModerateText,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AnalyzeEntitiesRequest
    AnalyzeEntitiesRequest (..),
    newAnalyzeEntitiesRequest,

    -- ** AnalyzeEntitiesRequest_EncodingType
    AnalyzeEntitiesRequest_EncodingType (..),

    -- ** AnalyzeEntitiesResponse
    AnalyzeEntitiesResponse (..),
    newAnalyzeEntitiesResponse,

    -- ** AnalyzeSentimentRequest
    AnalyzeSentimentRequest (..),
    newAnalyzeSentimentRequest,

    -- ** AnalyzeSentimentRequest_EncodingType
    AnalyzeSentimentRequest_EncodingType (..),

    -- ** AnalyzeSentimentResponse
    AnalyzeSentimentResponse (..),
    newAnalyzeSentimentResponse,

    -- ** AnnotateTextRequest
    AnnotateTextRequest (..),
    newAnnotateTextRequest,

    -- ** AnnotateTextRequest_EncodingType
    AnnotateTextRequest_EncodingType (..),

    -- ** AnnotateTextRequestFeatures
    AnnotateTextRequestFeatures (..),
    newAnnotateTextRequestFeatures,

    -- ** AnnotateTextResponse
    AnnotateTextResponse (..),
    newAnnotateTextResponse,

    -- ** ClassificationCategory
    ClassificationCategory (..),
    newClassificationCategory,

    -- ** ClassifyTextRequest
    ClassifyTextRequest (..),
    newClassifyTextRequest,

    -- ** ClassifyTextResponse
    ClassifyTextResponse (..),
    newClassifyTextResponse,

    -- ** Color
    Color (..),
    newColor,

    -- ** CpuMetric
    CpuMetric (..),
    newCpuMetric,

    -- ** CpuMetric_CpuType
    CpuMetric_CpuType (..),

    -- ** CpuMetric_MachineSpec
    CpuMetric_MachineSpec (..),

    -- ** CpuMetric_TrackingLabels
    CpuMetric_TrackingLabels (..),
    newCpuMetric_TrackingLabels,

    -- ** DiskMetric
    DiskMetric (..),
    newDiskMetric,

    -- ** DiskMetric_DiskType
    DiskMetric_DiskType (..),

    -- ** Document
    Document (..),
    newDocument,

    -- ** Document_Type
    Document_Type (..),

    -- ** Entity
    Entity (..),
    newEntity,

    -- ** Entity_Metadata
    Entity_Metadata (..),
    newEntity_Metadata,

    -- ** Entity_Type
    Entity_Type (..),

    -- ** EntityMention
    EntityMention (..),
    newEntityMention,

    -- ** EntityMention_Type
    EntityMention_Type (..),

    -- ** GpuMetric
    GpuMetric (..),
    newGpuMetric,

    -- ** GpuMetric_GpuType
    GpuMetric_GpuType (..),

    -- ** GpuMetric_MachineSpec
    GpuMetric_MachineSpec (..),

    -- ** GpuMetric_TrackingLabels
    GpuMetric_TrackingLabels (..),
    newGpuMetric_TrackingLabels,

    -- ** InfraUsage
    InfraUsage (..),
    newInfraUsage,

    -- ** ModerateTextRequest
    ModerateTextRequest (..),
    newModerateTextRequest,

    -- ** ModerateTextRequest_ModelVersion
    ModerateTextRequest_ModelVersion (..),

    -- ** ModerateTextResponse
    ModerateTextResponse (..),
    newModerateTextResponse,

    -- ** RamMetric
    RamMetric (..),
    newRamMetric,

    -- ** RamMetric_MachineSpec
    RamMetric_MachineSpec (..),

    -- ** RamMetric_RamType
    RamMetric_RamType (..),

    -- ** RamMetric_TrackingLabels
    RamMetric_TrackingLabels (..),
    newRamMetric_TrackingLabels,

    -- ** Sentence
    Sentence (..),
    newSentence,

    -- ** Sentiment
    Sentiment (..),
    newSentiment,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TextSpan
    TextSpan (..),
    newTextSpan,

    -- ** TpuMetric
    TpuMetric (..),
    newTpuMetric,

    -- ** TpuMetric_TpuType
    TpuMetric_TpuType (..),

    -- ** XPSArrayStats
    XPSArrayStats (..),
    newXPSArrayStats,

    -- ** XPSBatchPredictResponse
    XPSBatchPredictResponse (..),
    newXPSBatchPredictResponse,

    -- ** XPSBoundingBoxMetricsEntry
    XPSBoundingBoxMetricsEntry (..),
    newXPSBoundingBoxMetricsEntry,

    -- ** XPSBoundingBoxMetricsEntryConfidenceMetricsEntry
    XPSBoundingBoxMetricsEntryConfidenceMetricsEntry (..),
    newXPSBoundingBoxMetricsEntryConfidenceMetricsEntry,

    -- ** XPSCategoryStats
    XPSCategoryStats (..),
    newXPSCategoryStats,

    -- ** XPSCategoryStatsSingleCategoryStats
    XPSCategoryStatsSingleCategoryStats (..),
    newXPSCategoryStatsSingleCategoryStats,

    -- ** XPSClassificationEvaluationMetrics
    XPSClassificationEvaluationMetrics (..),
    newXPSClassificationEvaluationMetrics,

    -- ** XPSColorMap
    XPSColorMap (..),
    newXPSColorMap,

    -- ** XPSColorMapIntColor
    XPSColorMapIntColor (..),
    newXPSColorMapIntColor,

    -- ** XPSColumnSpec
    XPSColumnSpec (..),
    newXPSColumnSpec,

    -- ** XPSColumnSpecCorrelatedColumn
    XPSColumnSpecCorrelatedColumn (..),
    newXPSColumnSpecCorrelatedColumn,

    -- ** XPSColumnSpecForecastingMetadata
    XPSColumnSpecForecastingMetadata (..),
    newXPSColumnSpecForecastingMetadata,

    -- ** XPSColumnSpecForecastingMetadata_ColumnType
    XPSColumnSpecForecastingMetadata_ColumnType (..),

    -- ** XPSCommonStats
    XPSCommonStats (..),
    newXPSCommonStats,

    -- ** XPSConfidenceMetricsEntry
    XPSConfidenceMetricsEntry (..),
    newXPSConfidenceMetricsEntry,

    -- ** XPSConfusionMatrix
    XPSConfusionMatrix (..),
    newXPSConfusionMatrix,

    -- ** XPSConfusionMatrixRow
    XPSConfusionMatrixRow (..),
    newXPSConfusionMatrixRow,

    -- ** XPSCoreMlFormat
    XPSCoreMlFormat (..),
    newXPSCoreMlFormat,

    -- ** XPSCorrelationStats
    XPSCorrelationStats (..),
    newXPSCorrelationStats,

    -- ** XPSDataErrors
    XPSDataErrors (..),
    newXPSDataErrors,

    -- ** XPSDataErrors_ErrorType
    XPSDataErrors_ErrorType (..),

    -- ** XPSDataStats
    XPSDataStats (..),
    newXPSDataStats,

    -- ** XPSDataType
    XPSDataType (..),
    newXPSDataType,

    -- ** XPSDataType_TypeCode
    XPSDataType_TypeCode (..),

    -- ** XPSDockerFormat
    XPSDockerFormat (..),
    newXPSDockerFormat,

    -- ** XPSDockerFormat_CpuArchitecture
    XPSDockerFormat_CpuArchitecture (..),

    -- ** XPSDockerFormat_GpuArchitecture
    XPSDockerFormat_GpuArchitecture (..),

    -- ** XPSEdgeTpuTfLiteFormat
    XPSEdgeTpuTfLiteFormat (..),
    newXPSEdgeTpuTfLiteFormat,

    -- ** XPSEvaluationMetrics
    XPSEvaluationMetrics (..),
    newXPSEvaluationMetrics,

    -- ** XPSEvaluationMetricsSet
    XPSEvaluationMetricsSet (..),
    newXPSEvaluationMetricsSet,

    -- ** XPSExampleSet
    XPSExampleSet (..),
    newXPSExampleSet,

    -- ** XPSExportModelOutputConfig
    XPSExportModelOutputConfig (..),
    newXPSExportModelOutputConfig,

    -- ** XPSFileSpec
    XPSFileSpec (..),
    newXPSFileSpec,

    -- ** XPSFileSpec_FileFormat
    XPSFileSpec_FileFormat (..),

    -- ** XPSFloat64Stats
    XPSFloat64Stats (..),
    newXPSFloat64Stats,

    -- ** XPSFloat64StatsHistogramBucket
    XPSFloat64StatsHistogramBucket (..),
    newXPSFloat64StatsHistogramBucket,

    -- ** XPSImageClassificationTrainResponse
    XPSImageClassificationTrainResponse (..),
    newXPSImageClassificationTrainResponse,

    -- ** XPSImageClassificationTrainResponse_StopReason
    XPSImageClassificationTrainResponse_StopReason (..),

    -- ** XPSImageExportModelSpec
    XPSImageExportModelSpec (..),
    newXPSImageExportModelSpec,

    -- ** XPSImageModelArtifactSpec
    XPSImageModelArtifactSpec (..),
    newXPSImageModelArtifactSpec,

    -- ** XPSImageModelServingSpec
    XPSImageModelServingSpec (..),
    newXPSImageModelServingSpec,

    -- ** XPSImageModelServingSpecModelThroughputEstimation
    XPSImageModelServingSpecModelThroughputEstimation (..),
    newXPSImageModelServingSpecModelThroughputEstimation,

    -- ** XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
    XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType (..),

    -- ** XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
    XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType (..),

    -- ** XPSImageObjectDetectionEvaluationMetrics
    XPSImageObjectDetectionEvaluationMetrics (..),
    newXPSImageObjectDetectionEvaluationMetrics,

    -- ** XPSImageObjectDetectionModelSpec
    XPSImageObjectDetectionModelSpec (..),
    newXPSImageObjectDetectionModelSpec,

    -- ** XPSImageObjectDetectionModelSpec_StopReason
    XPSImageObjectDetectionModelSpec_StopReason (..),

    -- ** XPSImageSegmentationEvaluationMetrics
    XPSImageSegmentationEvaluationMetrics (..),
    newXPSImageSegmentationEvaluationMetrics,

    -- ** XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry
    XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry (..),
    newXPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry,

    -- ** XPSImageSegmentationTrainResponse
    XPSImageSegmentationTrainResponse (..),
    newXPSImageSegmentationTrainResponse,

    -- ** XPSImageSegmentationTrainResponse_StopReason
    XPSImageSegmentationTrainResponse_StopReason (..),

    -- ** XPSIntegratedGradientsAttribution
    XPSIntegratedGradientsAttribution (..),
    newXPSIntegratedGradientsAttribution,

    -- ** XPSMetricEntry
    XPSMetricEntry (..),
    newXPSMetricEntry,

    -- ** XPSMetricEntryLabel
    XPSMetricEntryLabel (..),
    newXPSMetricEntryLabel,

    -- ** XPSModelArtifactItem
    XPSModelArtifactItem (..),
    newXPSModelArtifactItem,

    -- ** XPSModelArtifactItem_ArtifactFormat
    XPSModelArtifactItem_ArtifactFormat (..),

    -- ** XPSPreprocessResponse
    XPSPreprocessResponse (..),
    newXPSPreprocessResponse,

    -- ** XPSRegressionEvaluationMetrics
    XPSRegressionEvaluationMetrics (..),
    newXPSRegressionEvaluationMetrics,

    -- ** XPSRegressionMetricsEntry
    XPSRegressionMetricsEntry (..),
    newXPSRegressionMetricsEntry,

    -- ** XPSReportingMetrics
    XPSReportingMetrics (..),
    newXPSReportingMetrics,

    -- ** XPSResponseExplanationMetadata
    XPSResponseExplanationMetadata (..),
    newXPSResponseExplanationMetadata,

    -- ** XPSResponseExplanationMetadata_Inputs
    XPSResponseExplanationMetadata_Inputs (..),
    newXPSResponseExplanationMetadata_Inputs,

    -- ** XPSResponseExplanationMetadata_Outputs
    XPSResponseExplanationMetadata_Outputs (..),
    newXPSResponseExplanationMetadata_Outputs,

    -- ** XPSResponseExplanationMetadataInputMetadata
    XPSResponseExplanationMetadataInputMetadata (..),
    newXPSResponseExplanationMetadataInputMetadata,

    -- ** XPSResponseExplanationMetadataInputMetadata_Modality
    XPSResponseExplanationMetadataInputMetadata_Modality (..),

    -- ** XPSResponseExplanationMetadataOutputMetadata
    XPSResponseExplanationMetadataOutputMetadata (..),
    newXPSResponseExplanationMetadataOutputMetadata,

    -- ** XPSResponseExplanationParameters
    XPSResponseExplanationParameters (..),
    newXPSResponseExplanationParameters,

    -- ** XPSResponseExplanationSpec
    XPSResponseExplanationSpec (..),
    newXPSResponseExplanationSpec,

    -- ** XPSRow
    XPSRow (..),
    newXPSRow,

    -- ** XPSSpeechEvaluationMetrics
    XPSSpeechEvaluationMetrics (..),
    newXPSSpeechEvaluationMetrics,

    -- ** XPSSpeechEvaluationMetricsSubModelEvaluationMetric
    XPSSpeechEvaluationMetricsSubModelEvaluationMetric (..),
    newXPSSpeechEvaluationMetricsSubModelEvaluationMetric,

    -- ** XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
    XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType (..),

    -- ** XPSSpeechModelSpec
    XPSSpeechModelSpec (..),
    newXPSSpeechModelSpec,

    -- ** XPSSpeechModelSpecSubModelSpec
    XPSSpeechModelSpecSubModelSpec (..),
    newXPSSpeechModelSpecSubModelSpec,

    -- ** XPSSpeechModelSpecSubModelSpec_BiasingModelType
    XPSSpeechModelSpecSubModelSpec_BiasingModelType (..),

    -- ** XPSSpeechPreprocessResponse
    XPSSpeechPreprocessResponse (..),
    newXPSSpeechPreprocessResponse,

    -- ** XPSSpeechPreprocessStats
    XPSSpeechPreprocessStats (..),
    newXPSSpeechPreprocessStats,

    -- ** XPSStringStats
    XPSStringStats (..),
    newXPSStringStats,

    -- ** XPSStringStatsUnigramStats
    XPSStringStatsUnigramStats (..),
    newXPSStringStatsUnigramStats,

    -- ** XPSStructStats
    XPSStructStats (..),
    newXPSStructStats,

    -- ** XPSStructStats_FieldStats
    XPSStructStats_FieldStats (..),
    newXPSStructStats_FieldStats,

    -- ** XPSStructType
    XPSStructType (..),
    newXPSStructType,

    -- ** XPSStructType_Fields
    XPSStructType_Fields (..),
    newXPSStructType_Fields,

    -- ** XPSTableSpec
    XPSTableSpec (..),
    newXPSTableSpec,

    -- ** XPSTableSpec_ColumnSpecs
    XPSTableSpec_ColumnSpecs (..),
    newXPSTableSpec_ColumnSpecs,

    -- ** XPSTablesClassificationMetrics
    XPSTablesClassificationMetrics (..),
    newXPSTablesClassificationMetrics,

    -- ** XPSTablesClassificationMetricsCurveMetrics
    XPSTablesClassificationMetricsCurveMetrics (..),
    newXPSTablesClassificationMetricsCurveMetrics,

    -- ** XPSTablesConfidenceMetricsEntry
    XPSTablesConfidenceMetricsEntry (..),
    newXPSTablesConfidenceMetricsEntry,

    -- ** XPSTablesDatasetMetadata
    XPSTablesDatasetMetadata (..),
    newXPSTablesDatasetMetadata,

    -- ** XPSTablesDatasetMetadata_TargetColumnCorrelations
    XPSTablesDatasetMetadata_TargetColumnCorrelations (..),
    newXPSTablesDatasetMetadata_TargetColumnCorrelations,

    -- ** XPSTablesEvaluationMetrics
    XPSTablesEvaluationMetrics (..),
    newXPSTablesEvaluationMetrics,

    -- ** XPSTablesModelColumnInfo
    XPSTablesModelColumnInfo (..),
    newXPSTablesModelColumnInfo,

    -- ** XPSTablesModelStructure
    XPSTablesModelStructure (..),
    newXPSTablesModelStructure,

    -- ** XPSTablesModelStructureModelParameters
    XPSTablesModelStructureModelParameters (..),
    newXPSTablesModelStructureModelParameters,

    -- ** XPSTablesModelStructureModelParametersParameter
    XPSTablesModelStructureModelParametersParameter (..),
    newXPSTablesModelStructureModelParametersParameter,

    -- ** XPSTablesPreprocessResponse
    XPSTablesPreprocessResponse (..),
    newXPSTablesPreprocessResponse,

    -- ** XPSTablesRegressionMetrics
    XPSTablesRegressionMetrics (..),
    newXPSTablesRegressionMetrics,

    -- ** XPSTablesTrainResponse
    XPSTablesTrainResponse (..),
    newXPSTablesTrainResponse,

    -- ** XPSTablesTrainingOperationMetadata
    XPSTablesTrainingOperationMetadata (..),
    newXPSTablesTrainingOperationMetadata,

    -- ** XPSTablesTrainingOperationMetadata_CreateModelStage
    XPSTablesTrainingOperationMetadata_CreateModelStage (..),

    -- ** XPSTextComponentModel
    XPSTextComponentModel (..),
    newXPSTextComponentModel,

    -- ** XPSTextComponentModel_Partition
    XPSTextComponentModel_Partition (..),

    -- ** XPSTextComponentModel_SubmodelType
    XPSTextComponentModel_SubmodelType (..),

    -- ** XPSTextExtractionEvaluationMetrics
    XPSTextExtractionEvaluationMetrics (..),
    newXPSTextExtractionEvaluationMetrics,

    -- ** XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
    XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics (..),
    newXPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics,

    -- ** XPSTextSentimentEvaluationMetrics
    XPSTextSentimentEvaluationMetrics (..),
    newXPSTextSentimentEvaluationMetrics,

    -- ** XPSTextToSpeechTrainResponse
    XPSTextToSpeechTrainResponse (..),
    newXPSTextToSpeechTrainResponse,

    -- ** XPSTextTrainResponse
    XPSTextTrainResponse (..),
    newXPSTextTrainResponse,

    -- ** XPSTfJsFormat
    XPSTfJsFormat (..),
    newXPSTfJsFormat,

    -- ** XPSTfLiteFormat
    XPSTfLiteFormat (..),
    newXPSTfLiteFormat,

    -- ** XPSTfSavedModelFormat
    XPSTfSavedModelFormat (..),
    newXPSTfSavedModelFormat,

    -- ** XPSTimestampStats
    XPSTimestampStats (..),
    newXPSTimestampStats,

    -- ** XPSTimestampStats_GranularStats
    XPSTimestampStats_GranularStats (..),
    newXPSTimestampStats_GranularStats,

    -- ** XPSTimestampStatsGranularStats
    XPSTimestampStatsGranularStats (..),
    newXPSTimestampStatsGranularStats,

    -- ** XPSTimestampStatsGranularStats_Buckets
    XPSTimestampStatsGranularStats_Buckets (..),
    newXPSTimestampStatsGranularStats_Buckets,

    -- ** XPSTrackMetricsEntry
    XPSTrackMetricsEntry (..),
    newXPSTrackMetricsEntry,

    -- ** XPSTrackMetricsEntryConfidenceMetricsEntry
    XPSTrackMetricsEntryConfidenceMetricsEntry (..),
    newXPSTrackMetricsEntryConfidenceMetricsEntry,

    -- ** XPSTrainResponse
    XPSTrainResponse (..),
    newXPSTrainResponse,

    -- ** XPSTrainingObjectivePoint
    XPSTrainingObjectivePoint (..),
    newXPSTrainingObjectivePoint,

    -- ** XPSTranslationEvaluationMetrics
    XPSTranslationEvaluationMetrics (..),
    newXPSTranslationEvaluationMetrics,

    -- ** XPSTranslationPreprocessResponse
    XPSTranslationPreprocessResponse (..),
    newXPSTranslationPreprocessResponse,

    -- ** XPSTranslationTrainResponse
    XPSTranslationTrainResponse (..),
    newXPSTranslationTrainResponse,

    -- ** XPSTranslationTrainResponse_ModelType
    XPSTranslationTrainResponse_ModelType (..),

    -- ** XPSTuningTrial
    XPSTuningTrial (..),
    newXPSTuningTrial,

    -- ** XPSVideoActionMetricsEntry
    XPSVideoActionMetricsEntry (..),
    newXPSVideoActionMetricsEntry,

    -- ** XPSVideoActionMetricsEntryConfidenceMetricsEntry
    XPSVideoActionMetricsEntryConfidenceMetricsEntry (..),
    newXPSVideoActionMetricsEntryConfidenceMetricsEntry,

    -- ** XPSVideoActionRecognitionEvaluationMetrics
    XPSVideoActionRecognitionEvaluationMetrics (..),
    newXPSVideoActionRecognitionEvaluationMetrics,

    -- ** XPSVideoActionRecognitionTrainResponse
    XPSVideoActionRecognitionTrainResponse (..),
    newXPSVideoActionRecognitionTrainResponse,

    -- ** XPSVideoBatchPredictOperationMetadata
    XPSVideoBatchPredictOperationMetadata (..),
    newXPSVideoBatchPredictOperationMetadata,

    -- ** XPSVideoClassificationTrainResponse
    XPSVideoClassificationTrainResponse (..),
    newXPSVideoClassificationTrainResponse,

    -- ** XPSVideoExportModelSpec
    XPSVideoExportModelSpec (..),
    newXPSVideoExportModelSpec,

    -- ** XPSVideoModelArtifactSpec
    XPSVideoModelArtifactSpec (..),
    newXPSVideoModelArtifactSpec,

    -- ** XPSVideoObjectTrackingEvaluationMetrics
    XPSVideoObjectTrackingEvaluationMetrics (..),
    newXPSVideoObjectTrackingEvaluationMetrics,

    -- ** XPSVideoObjectTrackingTrainResponse
    XPSVideoObjectTrackingTrainResponse (..),
    newXPSVideoObjectTrackingTrainResponse,

    -- ** XPSVideoTrainingOperationMetadata
    XPSVideoTrainingOperationMetadata (..),
    newXPSVideoTrainingOperationMetadata,

    -- ** XPSVisionErrorAnalysisConfig
    XPSVisionErrorAnalysisConfig (..),
    newXPSVisionErrorAnalysisConfig,

    -- ** XPSVisionErrorAnalysisConfig_QueryType
    XPSVisionErrorAnalysisConfig_QueryType (..),

    -- ** XPSVisionTrainingOperationMetadata
    XPSVisionTrainingOperationMetadata (..),
    newXPSVisionTrainingOperationMetadata,

    -- ** XPSVisualization
    XPSVisualization (..),
    newXPSVisualization,

    -- ** XPSVisualization_ColorMap
    XPSVisualization_ColorMap (..),

    -- ** XPSVisualization_OverlayType
    XPSVisualization_OverlayType (..),

    -- ** XPSVisualization_Polarity
    XPSVisualization_Polarity (..),

    -- ** XPSVisualization_Type
    XPSVisualization_Type (..),

    -- ** XPSXpsOperationMetadata
    XPSXpsOperationMetadata (..),
    newXPSXpsOperationMetadata,

    -- ** XPSXraiAttribution
    XPSXraiAttribution (..),
    newXPSXraiAttribution,
  )
where

import Gogol.Language.Documents.AnalyzeEntities
import Gogol.Language.Documents.AnalyzeSentiment
import Gogol.Language.Documents.AnnotateText
import Gogol.Language.Documents.ClassifyText
import Gogol.Language.Documents.ModerateText
import Gogol.Language.Types
