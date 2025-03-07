{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Language.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Language.Internal.Product
  ( -- * AnalyzeEntitiesRequest
    AnalyzeEntitiesRequest (..),
    newAnalyzeEntitiesRequest,

    -- * AnalyzeEntitiesResponse
    AnalyzeEntitiesResponse (..),
    newAnalyzeEntitiesResponse,

    -- * AnalyzeSentimentRequest
    AnalyzeSentimentRequest (..),
    newAnalyzeSentimentRequest,

    -- * AnalyzeSentimentResponse
    AnalyzeSentimentResponse (..),
    newAnalyzeSentimentResponse,

    -- * AnnotateTextRequest
    AnnotateTextRequest (..),
    newAnnotateTextRequest,

    -- * AnnotateTextRequestFeatures
    AnnotateTextRequestFeatures (..),
    newAnnotateTextRequestFeatures,

    -- * AnnotateTextResponse
    AnnotateTextResponse (..),
    newAnnotateTextResponse,

    -- * ClassificationCategory
    ClassificationCategory (..),
    newClassificationCategory,

    -- * ClassifyTextRequest
    ClassifyTextRequest (..),
    newClassifyTextRequest,

    -- * ClassifyTextResponse
    ClassifyTextResponse (..),
    newClassifyTextResponse,

    -- * Color
    Color (..),
    newColor,

    -- * CpuMetric
    CpuMetric (..),
    newCpuMetric,

    -- * CpuMetric_TrackingLabels
    CpuMetric_TrackingLabels (..),
    newCpuMetric_TrackingLabels,

    -- * DiskMetric
    DiskMetric (..),
    newDiskMetric,

    -- * Document
    Document (..),
    newDocument,

    -- * Entity
    Entity (..),
    newEntity,

    -- * Entity_Metadata
    Entity_Metadata (..),
    newEntity_Metadata,

    -- * EntityMention
    EntityMention (..),
    newEntityMention,

    -- * GpuMetric
    GpuMetric (..),
    newGpuMetric,

    -- * GpuMetric_TrackingLabels
    GpuMetric_TrackingLabels (..),
    newGpuMetric_TrackingLabels,

    -- * InfraUsage
    InfraUsage (..),
    newInfraUsage,

    -- * ModerateTextRequest
    ModerateTextRequest (..),
    newModerateTextRequest,

    -- * ModerateTextResponse
    ModerateTextResponse (..),
    newModerateTextResponse,

    -- * RamMetric
    RamMetric (..),
    newRamMetric,

    -- * RamMetric_TrackingLabels
    RamMetric_TrackingLabels (..),
    newRamMetric_TrackingLabels,

    -- * Sentence
    Sentence (..),
    newSentence,

    -- * Sentiment
    Sentiment (..),
    newSentiment,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TextSpan
    TextSpan (..),
    newTextSpan,

    -- * TpuMetric
    TpuMetric (..),
    newTpuMetric,

    -- * XPSArrayStats
    XPSArrayStats (..),
    newXPSArrayStats,

    -- * XPSBatchPredictResponse
    XPSBatchPredictResponse (..),
    newXPSBatchPredictResponse,

    -- * XPSBoundingBoxMetricsEntry
    XPSBoundingBoxMetricsEntry (..),
    newXPSBoundingBoxMetricsEntry,

    -- * XPSBoundingBoxMetricsEntryConfidenceMetricsEntry
    XPSBoundingBoxMetricsEntryConfidenceMetricsEntry (..),
    newXPSBoundingBoxMetricsEntryConfidenceMetricsEntry,

    -- * XPSCategoryStats
    XPSCategoryStats (..),
    newXPSCategoryStats,

    -- * XPSCategoryStatsSingleCategoryStats
    XPSCategoryStatsSingleCategoryStats (..),
    newXPSCategoryStatsSingleCategoryStats,

    -- * XPSClassificationEvaluationMetrics
    XPSClassificationEvaluationMetrics (..),
    newXPSClassificationEvaluationMetrics,

    -- * XPSColorMap
    XPSColorMap (..),
    newXPSColorMap,

    -- * XPSColorMapIntColor
    XPSColorMapIntColor (..),
    newXPSColorMapIntColor,

    -- * XPSColumnSpec
    XPSColumnSpec (..),
    newXPSColumnSpec,

    -- * XPSColumnSpecCorrelatedColumn
    XPSColumnSpecCorrelatedColumn (..),
    newXPSColumnSpecCorrelatedColumn,

    -- * XPSColumnSpecForecastingMetadata
    XPSColumnSpecForecastingMetadata (..),
    newXPSColumnSpecForecastingMetadata,

    -- * XPSCommonStats
    XPSCommonStats (..),
    newXPSCommonStats,

    -- * XPSConfidenceMetricsEntry
    XPSConfidenceMetricsEntry (..),
    newXPSConfidenceMetricsEntry,

    -- * XPSConfusionMatrix
    XPSConfusionMatrix (..),
    newXPSConfusionMatrix,

    -- * XPSConfusionMatrixRow
    XPSConfusionMatrixRow (..),
    newXPSConfusionMatrixRow,

    -- * XPSCoreMlFormat
    XPSCoreMlFormat (..),
    newXPSCoreMlFormat,

    -- * XPSCorrelationStats
    XPSCorrelationStats (..),
    newXPSCorrelationStats,

    -- * XPSDataErrors
    XPSDataErrors (..),
    newXPSDataErrors,

    -- * XPSDataStats
    XPSDataStats (..),
    newXPSDataStats,

    -- * XPSDataType
    XPSDataType (..),
    newXPSDataType,

    -- * XPSDockerFormat
    XPSDockerFormat (..),
    newXPSDockerFormat,

    -- * XPSEdgeTpuTfLiteFormat
    XPSEdgeTpuTfLiteFormat (..),
    newXPSEdgeTpuTfLiteFormat,

    -- * XPSEvaluationMetrics
    XPSEvaluationMetrics (..),
    newXPSEvaluationMetrics,

    -- * XPSEvaluationMetricsSet
    XPSEvaluationMetricsSet (..),
    newXPSEvaluationMetricsSet,

    -- * XPSExampleSet
    XPSExampleSet (..),
    newXPSExampleSet,

    -- * XPSExportModelOutputConfig
    XPSExportModelOutputConfig (..),
    newXPSExportModelOutputConfig,

    -- * XPSFileSpec
    XPSFileSpec (..),
    newXPSFileSpec,

    -- * XPSFloat64Stats
    XPSFloat64Stats (..),
    newXPSFloat64Stats,

    -- * XPSFloat64StatsHistogramBucket
    XPSFloat64StatsHistogramBucket (..),
    newXPSFloat64StatsHistogramBucket,

    -- * XPSImageClassificationTrainResponse
    XPSImageClassificationTrainResponse (..),
    newXPSImageClassificationTrainResponse,

    -- * XPSImageExportModelSpec
    XPSImageExportModelSpec (..),
    newXPSImageExportModelSpec,

    -- * XPSImageModelArtifactSpec
    XPSImageModelArtifactSpec (..),
    newXPSImageModelArtifactSpec,

    -- * XPSImageModelServingSpec
    XPSImageModelServingSpec (..),
    newXPSImageModelServingSpec,

    -- * XPSImageModelServingSpecModelThroughputEstimation
    XPSImageModelServingSpecModelThroughputEstimation (..),
    newXPSImageModelServingSpecModelThroughputEstimation,

    -- * XPSImageObjectDetectionEvaluationMetrics
    XPSImageObjectDetectionEvaluationMetrics (..),
    newXPSImageObjectDetectionEvaluationMetrics,

    -- * XPSImageObjectDetectionModelSpec
    XPSImageObjectDetectionModelSpec (..),
    newXPSImageObjectDetectionModelSpec,

    -- * XPSImageSegmentationEvaluationMetrics
    XPSImageSegmentationEvaluationMetrics (..),
    newXPSImageSegmentationEvaluationMetrics,

    -- * XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry
    XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry (..),
    newXPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry,

    -- * XPSImageSegmentationTrainResponse
    XPSImageSegmentationTrainResponse (..),
    newXPSImageSegmentationTrainResponse,

    -- * XPSIntegratedGradientsAttribution
    XPSIntegratedGradientsAttribution (..),
    newXPSIntegratedGradientsAttribution,

    -- * XPSMetricEntry
    XPSMetricEntry (..),
    newXPSMetricEntry,

    -- * XPSMetricEntryLabel
    XPSMetricEntryLabel (..),
    newXPSMetricEntryLabel,

    -- * XPSModelArtifactItem
    XPSModelArtifactItem (..),
    newXPSModelArtifactItem,

    -- * XPSPreprocessResponse
    XPSPreprocessResponse (..),
    newXPSPreprocessResponse,

    -- * XPSRegressionEvaluationMetrics
    XPSRegressionEvaluationMetrics (..),
    newXPSRegressionEvaluationMetrics,

    -- * XPSRegressionMetricsEntry
    XPSRegressionMetricsEntry (..),
    newXPSRegressionMetricsEntry,

    -- * XPSReportingMetrics
    XPSReportingMetrics (..),
    newXPSReportingMetrics,

    -- * XPSResponseExplanationMetadata
    XPSResponseExplanationMetadata (..),
    newXPSResponseExplanationMetadata,

    -- * XPSResponseExplanationMetadata_Inputs
    XPSResponseExplanationMetadata_Inputs (..),
    newXPSResponseExplanationMetadata_Inputs,

    -- * XPSResponseExplanationMetadata_Outputs
    XPSResponseExplanationMetadata_Outputs (..),
    newXPSResponseExplanationMetadata_Outputs,

    -- * XPSResponseExplanationMetadataInputMetadata
    XPSResponseExplanationMetadataInputMetadata (..),
    newXPSResponseExplanationMetadataInputMetadata,

    -- * XPSResponseExplanationMetadataOutputMetadata
    XPSResponseExplanationMetadataOutputMetadata (..),
    newXPSResponseExplanationMetadataOutputMetadata,

    -- * XPSResponseExplanationParameters
    XPSResponseExplanationParameters (..),
    newXPSResponseExplanationParameters,

    -- * XPSResponseExplanationSpec
    XPSResponseExplanationSpec (..),
    newXPSResponseExplanationSpec,

    -- * XPSRow
    XPSRow (..),
    newXPSRow,

    -- * XPSSpeechEvaluationMetrics
    XPSSpeechEvaluationMetrics (..),
    newXPSSpeechEvaluationMetrics,

    -- * XPSSpeechEvaluationMetricsSubModelEvaluationMetric
    XPSSpeechEvaluationMetricsSubModelEvaluationMetric (..),
    newXPSSpeechEvaluationMetricsSubModelEvaluationMetric,

    -- * XPSSpeechModelSpec
    XPSSpeechModelSpec (..),
    newXPSSpeechModelSpec,

    -- * XPSSpeechModelSpecSubModelSpec
    XPSSpeechModelSpecSubModelSpec (..),
    newXPSSpeechModelSpecSubModelSpec,

    -- * XPSSpeechPreprocessResponse
    XPSSpeechPreprocessResponse (..),
    newXPSSpeechPreprocessResponse,

    -- * XPSSpeechPreprocessStats
    XPSSpeechPreprocessStats (..),
    newXPSSpeechPreprocessStats,

    -- * XPSStringStats
    XPSStringStats (..),
    newXPSStringStats,

    -- * XPSStringStatsUnigramStats
    XPSStringStatsUnigramStats (..),
    newXPSStringStatsUnigramStats,

    -- * XPSStructStats
    XPSStructStats (..),
    newXPSStructStats,

    -- * XPSStructStats_FieldStats
    XPSStructStats_FieldStats (..),
    newXPSStructStats_FieldStats,

    -- * XPSStructType
    XPSStructType (..),
    newXPSStructType,

    -- * XPSStructType_Fields
    XPSStructType_Fields (..),
    newXPSStructType_Fields,

    -- * XPSTableSpec
    XPSTableSpec (..),
    newXPSTableSpec,

    -- * XPSTableSpec_ColumnSpecs
    XPSTableSpec_ColumnSpecs (..),
    newXPSTableSpec_ColumnSpecs,

    -- * XPSTablesClassificationMetrics
    XPSTablesClassificationMetrics (..),
    newXPSTablesClassificationMetrics,

    -- * XPSTablesClassificationMetricsCurveMetrics
    XPSTablesClassificationMetricsCurveMetrics (..),
    newXPSTablesClassificationMetricsCurveMetrics,

    -- * XPSTablesConfidenceMetricsEntry
    XPSTablesConfidenceMetricsEntry (..),
    newXPSTablesConfidenceMetricsEntry,

    -- * XPSTablesDatasetMetadata
    XPSTablesDatasetMetadata (..),
    newXPSTablesDatasetMetadata,

    -- * XPSTablesDatasetMetadata_TargetColumnCorrelations
    XPSTablesDatasetMetadata_TargetColumnCorrelations (..),
    newXPSTablesDatasetMetadata_TargetColumnCorrelations,

    -- * XPSTablesEvaluationMetrics
    XPSTablesEvaluationMetrics (..),
    newXPSTablesEvaluationMetrics,

    -- * XPSTablesModelColumnInfo
    XPSTablesModelColumnInfo (..),
    newXPSTablesModelColumnInfo,

    -- * XPSTablesModelStructure
    XPSTablesModelStructure (..),
    newXPSTablesModelStructure,

    -- * XPSTablesModelStructureModelParameters
    XPSTablesModelStructureModelParameters (..),
    newXPSTablesModelStructureModelParameters,

    -- * XPSTablesModelStructureModelParametersParameter
    XPSTablesModelStructureModelParametersParameter (..),
    newXPSTablesModelStructureModelParametersParameter,

    -- * XPSTablesPreprocessResponse
    XPSTablesPreprocessResponse (..),
    newXPSTablesPreprocessResponse,

    -- * XPSTablesRegressionMetrics
    XPSTablesRegressionMetrics (..),
    newXPSTablesRegressionMetrics,

    -- * XPSTablesTrainResponse
    XPSTablesTrainResponse (..),
    newXPSTablesTrainResponse,

    -- * XPSTablesTrainingOperationMetadata
    XPSTablesTrainingOperationMetadata (..),
    newXPSTablesTrainingOperationMetadata,

    -- * XPSTextComponentModel
    XPSTextComponentModel (..),
    newXPSTextComponentModel,

    -- * XPSTextExtractionEvaluationMetrics
    XPSTextExtractionEvaluationMetrics (..),
    newXPSTextExtractionEvaluationMetrics,

    -- * XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
    XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics (..),
    newXPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics,

    -- * XPSTextSentimentEvaluationMetrics
    XPSTextSentimentEvaluationMetrics (..),
    newXPSTextSentimentEvaluationMetrics,

    -- * XPSTextToSpeechTrainResponse
    XPSTextToSpeechTrainResponse (..),
    newXPSTextToSpeechTrainResponse,

    -- * XPSTextTrainResponse
    XPSTextTrainResponse (..),
    newXPSTextTrainResponse,

    -- * XPSTfJsFormat
    XPSTfJsFormat (..),
    newXPSTfJsFormat,

    -- * XPSTfLiteFormat
    XPSTfLiteFormat (..),
    newXPSTfLiteFormat,

    -- * XPSTfSavedModelFormat
    XPSTfSavedModelFormat (..),
    newXPSTfSavedModelFormat,

    -- * XPSTimestampStats
    XPSTimestampStats (..),
    newXPSTimestampStats,

    -- * XPSTimestampStats_GranularStats
    XPSTimestampStats_GranularStats (..),
    newXPSTimestampStats_GranularStats,

    -- * XPSTimestampStatsGranularStats
    XPSTimestampStatsGranularStats (..),
    newXPSTimestampStatsGranularStats,

    -- * XPSTimestampStatsGranularStats_Buckets
    XPSTimestampStatsGranularStats_Buckets (..),
    newXPSTimestampStatsGranularStats_Buckets,

    -- * XPSTrackMetricsEntry
    XPSTrackMetricsEntry (..),
    newXPSTrackMetricsEntry,

    -- * XPSTrackMetricsEntryConfidenceMetricsEntry
    XPSTrackMetricsEntryConfidenceMetricsEntry (..),
    newXPSTrackMetricsEntryConfidenceMetricsEntry,

    -- * XPSTrainResponse
    XPSTrainResponse (..),
    newXPSTrainResponse,

    -- * XPSTrainingObjectivePoint
    XPSTrainingObjectivePoint (..),
    newXPSTrainingObjectivePoint,

    -- * XPSTranslationEvaluationMetrics
    XPSTranslationEvaluationMetrics (..),
    newXPSTranslationEvaluationMetrics,

    -- * XPSTranslationPreprocessResponse
    XPSTranslationPreprocessResponse (..),
    newXPSTranslationPreprocessResponse,

    -- * XPSTranslationTrainResponse
    XPSTranslationTrainResponse (..),
    newXPSTranslationTrainResponse,

    -- * XPSTuningTrial
    XPSTuningTrial (..),
    newXPSTuningTrial,

    -- * XPSVideoActionMetricsEntry
    XPSVideoActionMetricsEntry (..),
    newXPSVideoActionMetricsEntry,

    -- * XPSVideoActionMetricsEntryConfidenceMetricsEntry
    XPSVideoActionMetricsEntryConfidenceMetricsEntry (..),
    newXPSVideoActionMetricsEntryConfidenceMetricsEntry,

    -- * XPSVideoActionRecognitionEvaluationMetrics
    XPSVideoActionRecognitionEvaluationMetrics (..),
    newXPSVideoActionRecognitionEvaluationMetrics,

    -- * XPSVideoActionRecognitionTrainResponse
    XPSVideoActionRecognitionTrainResponse (..),
    newXPSVideoActionRecognitionTrainResponse,

    -- * XPSVideoBatchPredictOperationMetadata
    XPSVideoBatchPredictOperationMetadata (..),
    newXPSVideoBatchPredictOperationMetadata,

    -- * XPSVideoClassificationTrainResponse
    XPSVideoClassificationTrainResponse (..),
    newXPSVideoClassificationTrainResponse,

    -- * XPSVideoExportModelSpec
    XPSVideoExportModelSpec (..),
    newXPSVideoExportModelSpec,

    -- * XPSVideoModelArtifactSpec
    XPSVideoModelArtifactSpec (..),
    newXPSVideoModelArtifactSpec,

    -- * XPSVideoObjectTrackingEvaluationMetrics
    XPSVideoObjectTrackingEvaluationMetrics (..),
    newXPSVideoObjectTrackingEvaluationMetrics,

    -- * XPSVideoObjectTrackingTrainResponse
    XPSVideoObjectTrackingTrainResponse (..),
    newXPSVideoObjectTrackingTrainResponse,

    -- * XPSVideoTrainingOperationMetadata
    XPSVideoTrainingOperationMetadata (..),
    newXPSVideoTrainingOperationMetadata,

    -- * XPSVisionErrorAnalysisConfig
    XPSVisionErrorAnalysisConfig (..),
    newXPSVisionErrorAnalysisConfig,

    -- * XPSVisionTrainingOperationMetadata
    XPSVisionTrainingOperationMetadata (..),
    newXPSVisionTrainingOperationMetadata,

    -- * XPSVisualization
    XPSVisualization (..),
    newXPSVisualization,

    -- * XPSXpsOperationMetadata
    XPSXpsOperationMetadata (..),
    newXPSXpsOperationMetadata,

    -- * XPSXraiAttribution
    XPSXraiAttribution (..),
    newXPSXraiAttribution,
  )
where

import Gogol.Language.Internal.Sum
import Gogol.Prelude qualified as Core

-- | The entity analysis request message.
--
-- /See:/ 'newAnalyzeEntitiesRequest' smart constructor.
data AnalyzeEntitiesRequest = AnalyzeEntitiesRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | The encoding type used by the API to calculate offsets.
    encodingType :: (Core.Maybe AnalyzeEntitiesRequest_EncodingType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeEntitiesRequest' with the minimum fields required to make a request.
newAnalyzeEntitiesRequest ::
  AnalyzeEntitiesRequest
newAnalyzeEntitiesRequest =
  AnalyzeEntitiesRequest
    { document = Core.Nothing,
      encodingType = Core.Nothing
    }

instance Core.FromJSON AnalyzeEntitiesRequest where
  parseJSON =
    Core.withObject
      "AnalyzeEntitiesRequest"
      ( \o ->
          AnalyzeEntitiesRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "encodingType")
      )

instance Core.ToJSON AnalyzeEntitiesRequest where
  toJSON AnalyzeEntitiesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("encodingType" Core..=) Core.<$> encodingType
          ]
      )

-- | The entity analysis response message.
--
-- /See:/ 'newAnalyzeEntitiesResponse' smart constructor.
data AnalyzeEntitiesResponse = AnalyzeEntitiesResponse
  { -- | The recognized entities in the input document.
    entities :: (Core.Maybe [Entity]),
    -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language_code field for more details.
    languageCode :: (Core.Maybe Core.Text),
    -- | Whether the language is officially supported. The API may still return a response when the language is not supported, but it is on a best effort basis.
    languageSupported :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeEntitiesResponse' with the minimum fields required to make a request.
newAnalyzeEntitiesResponse ::
  AnalyzeEntitiesResponse
newAnalyzeEntitiesResponse =
  AnalyzeEntitiesResponse
    { entities = Core.Nothing,
      languageCode = Core.Nothing,
      languageSupported = Core.Nothing
    }

instance Core.FromJSON AnalyzeEntitiesResponse where
  parseJSON =
    Core.withObject
      "AnalyzeEntitiesResponse"
      ( \o ->
          AnalyzeEntitiesResponse
            Core.<$> (o Core..:? "entities")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "languageSupported")
      )

instance Core.ToJSON AnalyzeEntitiesResponse where
  toJSON AnalyzeEntitiesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("entities" Core..=) Core.<$> entities,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("languageSupported" Core..=) Core.<$> languageSupported
          ]
      )

-- | The sentiment analysis request message.
--
-- /See:/ 'newAnalyzeSentimentRequest' smart constructor.
data AnalyzeSentimentRequest = AnalyzeSentimentRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | The encoding type used by the API to calculate sentence offsets.
    encodingType :: (Core.Maybe AnalyzeSentimentRequest_EncodingType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeSentimentRequest' with the minimum fields required to make a request.
newAnalyzeSentimentRequest ::
  AnalyzeSentimentRequest
newAnalyzeSentimentRequest =
  AnalyzeSentimentRequest
    { document = Core.Nothing,
      encodingType = Core.Nothing
    }

instance Core.FromJSON AnalyzeSentimentRequest where
  parseJSON =
    Core.withObject
      "AnalyzeSentimentRequest"
      ( \o ->
          AnalyzeSentimentRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "encodingType")
      )

instance Core.ToJSON AnalyzeSentimentRequest where
  toJSON AnalyzeSentimentRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("encodingType" Core..=) Core.<$> encodingType
          ]
      )

-- | The sentiment analysis response message.
--
-- /See:/ 'newAnalyzeSentimentResponse' smart constructor.
data AnalyzeSentimentResponse = AnalyzeSentimentResponse
  { -- | The overall sentiment of the input document.
    documentSentiment :: (Core.Maybe Sentiment),
    -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language_code field for more details.
    languageCode :: (Core.Maybe Core.Text),
    -- | Whether the language is officially supported. The API may still return a response when the language is not supported, but it is on a best effort basis.
    languageSupported :: (Core.Maybe Core.Bool),
    -- | The sentiment for all the sentences in the document.
    sentences :: (Core.Maybe [Sentence])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyzeSentimentResponse' with the minimum fields required to make a request.
newAnalyzeSentimentResponse ::
  AnalyzeSentimentResponse
newAnalyzeSentimentResponse =
  AnalyzeSentimentResponse
    { documentSentiment = Core.Nothing,
      languageCode = Core.Nothing,
      languageSupported = Core.Nothing,
      sentences = Core.Nothing
    }

instance Core.FromJSON AnalyzeSentimentResponse where
  parseJSON =
    Core.withObject
      "AnalyzeSentimentResponse"
      ( \o ->
          AnalyzeSentimentResponse
            Core.<$> (o Core..:? "documentSentiment")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "languageSupported")
            Core.<*> (o Core..:? "sentences")
      )

instance Core.ToJSON AnalyzeSentimentResponse where
  toJSON AnalyzeSentimentResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("documentSentiment" Core..=) Core.<$> documentSentiment,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("languageSupported" Core..=) Core.<$> languageSupported,
            ("sentences" Core..=) Core.<$> sentences
          ]
      )

-- | The request message for the text annotation API, which can perform multiple analysis types in one call.
--
-- /See:/ 'newAnnotateTextRequest' smart constructor.
data AnnotateTextRequest = AnnotateTextRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | The encoding type used by the API to calculate offsets.
    encodingType :: (Core.Maybe AnnotateTextRequest_EncodingType),
    -- | Required. The enabled features.
    features :: (Core.Maybe AnnotateTextRequestFeatures)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotateTextRequest' with the minimum fields required to make a request.
newAnnotateTextRequest ::
  AnnotateTextRequest
newAnnotateTextRequest =
  AnnotateTextRequest
    { document = Core.Nothing,
      encodingType = Core.Nothing,
      features = Core.Nothing
    }

instance Core.FromJSON AnnotateTextRequest where
  parseJSON =
    Core.withObject
      "AnnotateTextRequest"
      ( \o ->
          AnnotateTextRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "encodingType")
            Core.<*> (o Core..:? "features")
      )

instance Core.ToJSON AnnotateTextRequest where
  toJSON AnnotateTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("encodingType" Core..=) Core.<$> encodingType,
            ("features" Core..=) Core.<$> features
          ]
      )

-- | All available features. Setting each one to true will enable that specific analysis for the input.
--
-- /See:/ 'newAnnotateTextRequestFeatures' smart constructor.
data AnnotateTextRequestFeatures = AnnotateTextRequestFeatures
  { -- | Optional. Classify the full document into categories.
    classifyText :: (Core.Maybe Core.Bool),
    -- | Optional. Extract document-level sentiment.
    extractDocumentSentiment :: (Core.Maybe Core.Bool),
    -- | Optional. Extract entities.
    extractEntities :: (Core.Maybe Core.Bool),
    -- | Optional. Moderate the document for harmful and sensitive categories.
    moderateText :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotateTextRequestFeatures' with the minimum fields required to make a request.
newAnnotateTextRequestFeatures ::
  AnnotateTextRequestFeatures
newAnnotateTextRequestFeatures =
  AnnotateTextRequestFeatures
    { classifyText = Core.Nothing,
      extractDocumentSentiment = Core.Nothing,
      extractEntities = Core.Nothing,
      moderateText = Core.Nothing
    }

instance Core.FromJSON AnnotateTextRequestFeatures where
  parseJSON =
    Core.withObject
      "AnnotateTextRequestFeatures"
      ( \o ->
          AnnotateTextRequestFeatures
            Core.<$> (o Core..:? "classifyText")
            Core.<*> (o Core..:? "extractDocumentSentiment")
            Core.<*> (o Core..:? "extractEntities")
            Core.<*> (o Core..:? "moderateText")
      )

instance Core.ToJSON AnnotateTextRequestFeatures where
  toJSON AnnotateTextRequestFeatures {..} =
    Core.object
      ( Core.catMaybes
          [ ("classifyText" Core..=) Core.<$> classifyText,
            ("extractDocumentSentiment" Core..=)
              Core.<$> extractDocumentSentiment,
            ("extractEntities" Core..=) Core.<$> extractEntities,
            ("moderateText" Core..=) Core.<$> moderateText
          ]
      )

-- | The text annotations response message.
--
-- /See:/ 'newAnnotateTextResponse' smart constructor.
data AnnotateTextResponse = AnnotateTextResponse
  { -- | Categories identified in the input document.
    categories :: (Core.Maybe [ClassificationCategory]),
    -- | The overall sentiment for the document. Populated if the user enables AnnotateTextRequest.Features.extract/document/sentiment.
    documentSentiment :: (Core.Maybe Sentiment),
    -- | Entities, along with their semantic information, in the input document. Populated if the user enables AnnotateTextRequest.Features.extract_entities .
    entities :: (Core.Maybe [Entity]),
    -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language_code field for more details.
    languageCode :: (Core.Maybe Core.Text),
    -- | Whether the language is officially supported by all requested features. The API may still return a response when the language is not supported, but it is on a best effort basis.
    languageSupported :: (Core.Maybe Core.Bool),
    -- | Harmful and sensitive categories identified in the input document.
    moderationCategories :: (Core.Maybe [ClassificationCategory]),
    -- | Sentences in the input document. Populated if the user enables AnnotateTextRequest.Features.extract/document/sentiment.
    sentences :: (Core.Maybe [Sentence])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnnotateTextResponse' with the minimum fields required to make a request.
newAnnotateTextResponse ::
  AnnotateTextResponse
newAnnotateTextResponse =
  AnnotateTextResponse
    { categories = Core.Nothing,
      documentSentiment = Core.Nothing,
      entities = Core.Nothing,
      languageCode = Core.Nothing,
      languageSupported = Core.Nothing,
      moderationCategories = Core.Nothing,
      sentences = Core.Nothing
    }

instance Core.FromJSON AnnotateTextResponse where
  parseJSON =
    Core.withObject
      "AnnotateTextResponse"
      ( \o ->
          AnnotateTextResponse
            Core.<$> (o Core..:? "categories")
            Core.<*> (o Core..:? "documentSentiment")
            Core.<*> (o Core..:? "entities")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "languageSupported")
            Core.<*> (o Core..:? "moderationCategories")
            Core.<*> (o Core..:? "sentences")
      )

instance Core.ToJSON AnnotateTextResponse where
  toJSON AnnotateTextResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("categories" Core..=) Core.<$> categories,
            ("documentSentiment" Core..=) Core.<$> documentSentiment,
            ("entities" Core..=) Core.<$> entities,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("languageSupported" Core..=) Core.<$> languageSupported,
            ("moderationCategories" Core..=) Core.<$> moderationCategories,
            ("sentences" Core..=) Core.<$> sentences
          ]
      )

-- | Represents a category returned from the text classifier.
--
-- /See:/ 'newClassificationCategory' smart constructor.
data ClassificationCategory = ClassificationCategory
  { -- | The classifier\'s confidence of the category. Number represents how certain the classifier is that this category represents the given text.
    confidence :: (Core.Maybe Core.Double),
    -- | The name of the category representing the document.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The classifier\'s severity of the category. This is only present when the ModerateTextRequest.ModelVersion is set to MODEL/VERSION/2, and the corresponding category has a severity score.
    severity :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassificationCategory' with the minimum fields required to make a request.
newClassificationCategory ::
  ClassificationCategory
newClassificationCategory =
  ClassificationCategory
    { confidence = Core.Nothing,
      name = Core.Nothing,
      severity = Core.Nothing
    }

instance Core.FromJSON ClassificationCategory where
  parseJSON =
    Core.withObject
      "ClassificationCategory"
      ( \o ->
          ClassificationCategory
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "severity")
      )

instance Core.ToJSON ClassificationCategory where
  toJSON ClassificationCategory {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("name" Core..=) Core.<$> name,
            ("severity" Core..=) Core.<$> severity
          ]
      )

-- | The document classification request message.
--
-- /See:/ 'newClassifyTextRequest' smart constructor.
newtype ClassifyTextRequest = ClassifyTextRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassifyTextRequest' with the minimum fields required to make a request.
newClassifyTextRequest ::
  ClassifyTextRequest
newClassifyTextRequest =
  ClassifyTextRequest {document = Core.Nothing}

instance Core.FromJSON ClassifyTextRequest where
  parseJSON =
    Core.withObject
      "ClassifyTextRequest"
      (\o -> ClassifyTextRequest Core.<$> (o Core..:? "document"))

instance Core.ToJSON ClassifyTextRequest where
  toJSON ClassifyTextRequest {..} =
    Core.object
      (Core.catMaybes [("document" Core..=) Core.<$> document])

-- | The document classification response message.
--
-- /See:/ 'newClassifyTextResponse' smart constructor.
data ClassifyTextResponse = ClassifyTextResponse
  { -- | Categories representing the input document.
    categories :: (Core.Maybe [ClassificationCategory]),
    -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language_code field for more details.
    languageCode :: (Core.Maybe Core.Text),
    -- | Whether the language is officially supported. The API may still return a response when the language is not supported, but it is on a best effort basis.
    languageSupported :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ClassifyTextResponse' with the minimum fields required to make a request.
newClassifyTextResponse ::
  ClassifyTextResponse
newClassifyTextResponse =
  ClassifyTextResponse
    { categories = Core.Nothing,
      languageCode = Core.Nothing,
      languageSupported = Core.Nothing
    }

instance Core.FromJSON ClassifyTextResponse where
  parseJSON =
    Core.withObject
      "ClassifyTextResponse"
      ( \o ->
          ClassifyTextResponse
            Core.<$> (o Core..:? "categories")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "languageSupported")
      )

instance Core.ToJSON ClassifyTextResponse where
  toJSON ClassifyTextResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("categories" Core..=) Core.<$> categories,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("languageSupported" Core..=) Core.<$> languageSupported
          ]
      )

-- | Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to and from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of @java.awt.Color@ in Java; it can also be trivially provided to UIColor\'s @+colorWithRed:green:blue:alpha@ method in iOS; and, with just a little work, it can be easily formatted into a CSS @rgba()@ string in JavaScript. This reference page doesn\'t have information about the absolute color space that should be used to interpret the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most @1e-5@. Example (Java): import com.google.type.Color; \/\/ ... public static java.awt.Color fromProto(Color
-- protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red \/ denominator) .setGreen(green \/ denominator) .setBlue(blue \/ denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); } return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/ ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha/wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha/wrapper != nil) { alpha = [alpha/wrapper value]; }
-- return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } \/\/ ... Example (JavaScript): \/\/ ... var protoToCssColor = function(rgb/color) { var redFrac = rgb/color.red || 0.0; var greenFrac = rgb/color.green || 0.0; var blueFrac = rgb/color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!(\'alpha\' in rgb/color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(\',\'); return [\'rgba(\', rgbParams, \',\', alphaFrac, \')\'].join(\'\'); }; var rgbToCssColor =
-- function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) | (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \< missingZeros; i++) { resultBuilder.push(\'0\'); } resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/ ...
--
-- /See:/ 'newColor' smart constructor.
data Color = Color
  { -- | The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: @pixel color = alpha * (this color) + (1.0 - alpha) * (background color)@ This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).
    alpha :: (Core.Maybe Core.Double),
    -- | The amount of blue in the color as a value in the interval [0, 1].
    blue :: (Core.Maybe Core.Double),
    -- | The amount of green in the color as a value in the interval [0, 1].
    green :: (Core.Maybe Core.Double),
    -- | The amount of red in the color as a value in the interval [0, 1].
    red :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Color' with the minimum fields required to make a request.
newColor ::
  Color
newColor =
  Color
    { alpha = Core.Nothing,
      blue = Core.Nothing,
      green = Core.Nothing,
      red = Core.Nothing
    }

instance Core.FromJSON Color where
  parseJSON =
    Core.withObject
      "Color"
      ( \o ->
          Color
            Core.<$> (o Core..:? "alpha")
            Core.<*> (o Core..:? "blue")
            Core.<*> (o Core..:? "green")
            Core.<*> (o Core..:? "red")
      )

instance Core.ToJSON Color where
  toJSON Color {..} =
    Core.object
      ( Core.catMaybes
          [ ("alpha" Core..=) Core.<$> alpha,
            ("blue" Core..=) Core.<$> blue,
            ("green" Core..=) Core.<$> green,
            ("red" Core..=) Core.<$> red
          ]
      )

-- | Metric for billing reports.
--
-- /See:/ 'newCpuMetric' smart constructor.
data CpuMetric = CpuMetric
  { -- | Required. Number of CPU cores.
    coreNumber :: (Core.Maybe Core.Int64),
    -- | Required. Total seconds of core usage, e.g. 4.
    coreSec :: (Core.Maybe Core.Int64),
    -- | Required. Type of cpu, e.g. N2.
    cpuType :: (Core.Maybe CpuMetric_CpuType),
    -- | Required. Machine spec, e.g. N1/STANDARD/4.
    machineSpec :: (Core.Maybe CpuMetric_MachineSpec),
    -- | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core Infra itself. Tracking labels\' keys are defined with special format: goog-[\\p{Ll}\\p{N}]+ E.g. \"key\": \"goog-k8s-cluster-name\",\"value\": \"us-east1-b4rk\"
    trackingLabels :: (Core.Maybe CpuMetric_TrackingLabels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CpuMetric' with the minimum fields required to make a request.
newCpuMetric ::
  CpuMetric
newCpuMetric =
  CpuMetric
    { coreNumber = Core.Nothing,
      coreSec = Core.Nothing,
      cpuType = Core.Nothing,
      machineSpec = Core.Nothing,
      trackingLabels = Core.Nothing
    }

instance Core.FromJSON CpuMetric where
  parseJSON =
    Core.withObject
      "CpuMetric"
      ( \o ->
          CpuMetric
            Core.<$> (o Core..:? "coreNumber" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "coreSec" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "cpuType")
            Core.<*> (o Core..:? "machineSpec")
            Core.<*> (o Core..:? "trackingLabels")
      )

instance Core.ToJSON CpuMetric where
  toJSON CpuMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("coreNumber" Core..=) Core.. Core.AsText Core.<$> coreNumber,
            ("coreSec" Core..=) Core.. Core.AsText Core.<$> coreSec,
            ("cpuType" Core..=) Core.<$> cpuType,
            ("machineSpec" Core..=) Core.<$> machineSpec,
            ("trackingLabels" Core..=) Core.<$> trackingLabels
          ]
      )

-- | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core Infra itself. Tracking labels\' keys are defined with special format: goog-[\\p{Ll}\\p{N}]+ E.g. \"key\": \"goog-k8s-cluster-name\",\"value\": \"us-east1-b4rk\"
--
-- /See:/ 'newCpuMetric_TrackingLabels' smart constructor.
newtype CpuMetric_TrackingLabels = CpuMetric_TrackingLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CpuMetric_TrackingLabels' with the minimum fields required to make a request.
newCpuMetric_TrackingLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  CpuMetric_TrackingLabels
newCpuMetric_TrackingLabels additional =
  CpuMetric_TrackingLabels {additional = additional}

instance Core.FromJSON CpuMetric_TrackingLabels where
  parseJSON =
    Core.withObject
      "CpuMetric_TrackingLabels"
      (\o -> CpuMetric_TrackingLabels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON CpuMetric_TrackingLabels where
  toJSON CpuMetric_TrackingLabels {..} = Core.toJSON additional

--
-- /See:/ 'newDiskMetric' smart constructor.
data DiskMetric = DiskMetric
  { -- | Required. Type of Disk, e.g. REGIONAL_SSD.
    diskType :: (Core.Maybe DiskMetric_DiskType),
    -- | Required. Seconds of physical disk usage, e.g. 3600.
    gibSec :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiskMetric' with the minimum fields required to make a request.
newDiskMetric ::
  DiskMetric
newDiskMetric =
  DiskMetric {diskType = Core.Nothing, gibSec = Core.Nothing}

instance Core.FromJSON DiskMetric where
  parseJSON =
    Core.withObject
      "DiskMetric"
      ( \o ->
          DiskMetric
            Core.<$> (o Core..:? "diskType")
            Core.<*> (o Core..:? "gibSec" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON DiskMetric where
  toJSON DiskMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskType" Core..=) Core.<$> diskType,
            ("gibSec" Core..=) Core.. Core.AsText Core.<$> gibSec
          ]
      )

-- | Represents the input to API methods.
--
-- /See:/ 'newDocument' smart constructor.
data Document = Document
  { -- | The content of the input in string format. Cloud audit logging exempt since it is based on user data.
    content :: (Core.Maybe Core.Text),
    -- | The Google Cloud Storage URI where the file content is located. This URI must be of the form: gs:\/\/bucket/name\/object/name. For more details, see https:\/\/cloud.google.com\/storage\/docs\/reference-uris. NOTE: Cloud Storage object versioning is not supported.
    gcsContentUri :: (Core.Maybe Core.Text),
    -- | Optional. The language of the document (if not specified, the language is automatically detected). Both ISO and BCP-47 language codes are accepted. <https://cloud.google.com/natural-language/docs/languages Language Support> lists currently supported languages for each API method. If the language (either specified by the caller or automatically detected) is not supported by the called API method, an @INVALID_ARGUMENT@ error is returned.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. If the type is not set or is @TYPE_UNSPECIFIED@, returns an @INVALID_ARGUMENT@ error.
    type' :: (Core.Maybe Document_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Document' with the minimum fields required to make a request.
newDocument ::
  Document
newDocument =
  Document
    { content = Core.Nothing,
      gcsContentUri = Core.Nothing,
      languageCode = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Document where
  parseJSON =
    Core.withObject
      "Document"
      ( \o ->
          Document
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "gcsContentUri")
            Core.<*> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Document where
  toJSON Document {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("gcsContentUri" Core..=) Core.<$> gcsContentUri,
            ("languageCode" Core..=) Core.<$> languageCode,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Represents a phrase in the text that is a known entity, such as a person, an organization, or location. The API associates information, such as probability and mentions, with entities.
--
-- /See:/ 'newEntity' smart constructor.
data Entity = Entity
  { -- | The mentions of this entity in the input document. The API currently supports proper noun mentions.
    mentions :: (Core.Maybe [EntityMention]),
    -- | Metadata associated with the entity. For the metadata associated with other entity types, see the Type table below.
    metadata :: (Core.Maybe Entity_Metadata),
    -- | The representative name for the entity.
    name :: (Core.Maybe Core.Text),
    -- | For calls to AnalyzeEntitySentiment this field will contain the aggregate sentiment expressed for this entity in the provided document.
    sentiment :: (Core.Maybe Sentiment),
    -- | The entity type.
    type' :: (Core.Maybe Entity_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
newEntity ::
  Entity
newEntity =
  Entity
    { mentions = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      sentiment = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Entity where
  parseJSON =
    Core.withObject
      "Entity"
      ( \o ->
          Entity
            Core.<$> (o Core..:? "mentions")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sentiment")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Entity where
  toJSON Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("mentions" Core..=) Core.<$> mentions,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("sentiment" Core..=) Core.<$> sentiment,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Metadata associated with the entity. For the metadata associated with other entity types, see the Type table below.
--
-- /See:/ 'newEntity_Metadata' smart constructor.
newtype Entity_Metadata = Entity_Metadata
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entity_Metadata' with the minimum fields required to make a request.
newEntity_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Entity_Metadata
newEntity_Metadata additional =
  Entity_Metadata {additional = additional}

instance Core.FromJSON Entity_Metadata where
  parseJSON =
    Core.withObject
      "Entity_Metadata"
      (\o -> Entity_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Entity_Metadata where
  toJSON Entity_Metadata {..} = Core.toJSON additional

-- | Represents a mention for an entity in the text. Currently, proper noun mentions are supported.
--
-- /See:/ 'newEntityMention' smart constructor.
data EntityMention = EntityMention
  { -- | Probability score associated with the entity. The score shows the probability of the entity mention being the entity type. The score is in (0, 1] range.
    probability :: (Core.Maybe Core.Double),
    -- | For calls to AnalyzeEntitySentiment this field will contain the sentiment expressed for this mention of the entity in the provided document.
    sentiment :: (Core.Maybe Sentiment),
    -- | The mention text.
    text :: (Core.Maybe TextSpan),
    -- | The type of the entity mention.
    type' :: (Core.Maybe EntityMention_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntityMention' with the minimum fields required to make a request.
newEntityMention ::
  EntityMention
newEntityMention =
  EntityMention
    { probability = Core.Nothing,
      sentiment = Core.Nothing,
      text = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON EntityMention where
  parseJSON =
    Core.withObject
      "EntityMention"
      ( \o ->
          EntityMention
            Core.<$> (o Core..:? "probability")
            Core.<*> (o Core..:? "sentiment")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON EntityMention where
  toJSON EntityMention {..} =
    Core.object
      ( Core.catMaybes
          [ ("probability" Core..=) Core.<$> probability,
            ("sentiment" Core..=) Core.<$> sentiment,
            ("text" Core..=) Core.<$> text,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newGpuMetric' smart constructor.
data GpuMetric = GpuMetric
  { -- | Required. Seconds of GPU usage, e.g. 3600.
    gpuSec :: (Core.Maybe Core.Int64),
    -- | Required. Type of GPU, e.g. NVIDIA/TESLA/V100.
    gpuType :: (Core.Maybe GpuMetric_GpuType),
    -- | Required. Machine spec, e.g. N1/STANDARD/4.
    machineSpec :: (Core.Maybe GpuMetric_MachineSpec),
    -- | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core Infra itself. Tracking labels\' keys are defined with special format: goog-[\\p{Ll}\\p{N}]+ E.g. \"key\": \"goog-k8s-cluster-name\",\"value\": \"us-east1-b4rk\"
    trackingLabels :: (Core.Maybe GpuMetric_TrackingLabels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GpuMetric' with the minimum fields required to make a request.
newGpuMetric ::
  GpuMetric
newGpuMetric =
  GpuMetric
    { gpuSec = Core.Nothing,
      gpuType = Core.Nothing,
      machineSpec = Core.Nothing,
      trackingLabels = Core.Nothing
    }

instance Core.FromJSON GpuMetric where
  parseJSON =
    Core.withObject
      "GpuMetric"
      ( \o ->
          GpuMetric
            Core.<$> (o Core..:? "gpuSec" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "gpuType")
            Core.<*> (o Core..:? "machineSpec")
            Core.<*> (o Core..:? "trackingLabels")
      )

instance Core.ToJSON GpuMetric where
  toJSON GpuMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("gpuSec" Core..=) Core.. Core.AsText Core.<$> gpuSec,
            ("gpuType" Core..=) Core.<$> gpuType,
            ("machineSpec" Core..=) Core.<$> machineSpec,
            ("trackingLabels" Core..=) Core.<$> trackingLabels
          ]
      )

-- | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core Infra itself. Tracking labels\' keys are defined with special format: goog-[\\p{Ll}\\p{N}]+ E.g. \"key\": \"goog-k8s-cluster-name\",\"value\": \"us-east1-b4rk\"
--
-- /See:/ 'newGpuMetric_TrackingLabels' smart constructor.
newtype GpuMetric_TrackingLabels = GpuMetric_TrackingLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GpuMetric_TrackingLabels' with the minimum fields required to make a request.
newGpuMetric_TrackingLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GpuMetric_TrackingLabels
newGpuMetric_TrackingLabels additional =
  GpuMetric_TrackingLabels {additional = additional}

instance Core.FromJSON GpuMetric_TrackingLabels where
  parseJSON =
    Core.withObject
      "GpuMetric_TrackingLabels"
      (\o -> GpuMetric_TrackingLabels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON GpuMetric_TrackingLabels where
  toJSON GpuMetric_TrackingLabels {..} = Core.toJSON additional

-- | Infra Usage of billing metrics.
--
-- /See:/ 'newInfraUsage' smart constructor.
data InfraUsage = InfraUsage
  { -- | Aggregated core metrics since requested start_time.
    cpuMetrics :: (Core.Maybe [CpuMetric]),
    -- | Aggregated persistent disk metrics since requested start_time.
    diskMetrics :: (Core.Maybe [DiskMetric]),
    -- | Aggregated gpu metrics since requested start_time.
    gpuMetrics :: (Core.Maybe [GpuMetric]),
    -- | Aggregated ram metrics since requested start_time.
    ramMetrics :: (Core.Maybe [RamMetric]),
    -- | Aggregated tpu metrics since requested start_time.
    tpuMetrics :: (Core.Maybe [TpuMetric])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InfraUsage' with the minimum fields required to make a request.
newInfraUsage ::
  InfraUsage
newInfraUsage =
  InfraUsage
    { cpuMetrics = Core.Nothing,
      diskMetrics = Core.Nothing,
      gpuMetrics = Core.Nothing,
      ramMetrics = Core.Nothing,
      tpuMetrics = Core.Nothing
    }

instance Core.FromJSON InfraUsage where
  parseJSON =
    Core.withObject
      "InfraUsage"
      ( \o ->
          InfraUsage
            Core.<$> (o Core..:? "cpuMetrics")
            Core.<*> (o Core..:? "diskMetrics")
            Core.<*> (o Core..:? "gpuMetrics")
            Core.<*> (o Core..:? "ramMetrics")
            Core.<*> (o Core..:? "tpuMetrics")
      )

instance Core.ToJSON InfraUsage where
  toJSON InfraUsage {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpuMetrics" Core..=) Core.<$> cpuMetrics,
            ("diskMetrics" Core..=) Core.<$> diskMetrics,
            ("gpuMetrics" Core..=) Core.<$> gpuMetrics,
            ("ramMetrics" Core..=) Core.<$> ramMetrics,
            ("tpuMetrics" Core..=) Core.<$> tpuMetrics
          ]
      )

-- | The document moderation request message.
--
-- /See:/ 'newModerateTextRequest' smart constructor.
data ModerateTextRequest = ModerateTextRequest
  { -- | Required. Input document.
    document :: (Core.Maybe Document),
    -- | Optional. The model version to use for ModerateText.
    modelVersion :: (Core.Maybe ModerateTextRequest_ModelVersion)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModerateTextRequest' with the minimum fields required to make a request.
newModerateTextRequest ::
  ModerateTextRequest
newModerateTextRequest =
  ModerateTextRequest
    { document = Core.Nothing,
      modelVersion = Core.Nothing
    }

instance Core.FromJSON ModerateTextRequest where
  parseJSON =
    Core.withObject
      "ModerateTextRequest"
      ( \o ->
          ModerateTextRequest
            Core.<$> (o Core..:? "document")
            Core.<*> (o Core..:? "modelVersion")
      )

instance Core.ToJSON ModerateTextRequest where
  toJSON ModerateTextRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("document" Core..=) Core.<$> document,
            ("modelVersion" Core..=) Core.<$> modelVersion
          ]
      )

-- | The document moderation response message.
--
-- /See:/ 'newModerateTextResponse' smart constructor.
data ModerateTextResponse = ModerateTextResponse
  { -- | The language of the text, which will be the same as the language specified in the request or, if not specified, the automatically-detected language. See Document.language_code field for more details.
    languageCode :: (Core.Maybe Core.Text),
    -- | Whether the language is officially supported. The API may still return a response when the language is not supported, but it is on a best effort basis.
    languageSupported :: (Core.Maybe Core.Bool),
    -- | Harmful and sensitive categories representing the input document.
    moderationCategories :: (Core.Maybe [ClassificationCategory])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModerateTextResponse' with the minimum fields required to make a request.
newModerateTextResponse ::
  ModerateTextResponse
newModerateTextResponse =
  ModerateTextResponse
    { languageCode = Core.Nothing,
      languageSupported = Core.Nothing,
      moderationCategories = Core.Nothing
    }

instance Core.FromJSON ModerateTextResponse where
  parseJSON =
    Core.withObject
      "ModerateTextResponse"
      ( \o ->
          ModerateTextResponse
            Core.<$> (o Core..:? "languageCode")
            Core.<*> (o Core..:? "languageSupported")
            Core.<*> (o Core..:? "moderationCategories")
      )

instance Core.ToJSON ModerateTextResponse where
  toJSON ModerateTextResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("languageCode" Core..=) Core.<$> languageCode,
            ("languageSupported" Core..=) Core.<$> languageSupported,
            ("moderationCategories" Core..=) Core.<$> moderationCategories
          ]
      )

--
-- /See:/ 'newRamMetric' smart constructor.
data RamMetric = RamMetric
  { -- | Required. VM memory in Gigabyte second, e.g. 3600. Using int64 type to match billing metrics definition.
    gibSec :: (Core.Maybe Core.Int64),
    -- | Required. Machine spec, e.g. N1/STANDARD/4.
    machineSpec :: (Core.Maybe RamMetric_MachineSpec),
    -- | Required. VM memory in gb.
    memories :: (Core.Maybe Core.Double),
    -- | Required. Type of ram.
    ramType :: (Core.Maybe RamMetric_RamType),
    -- | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core Infra itself. Tracking labels\' keys are defined with special format: goog-[\\p{Ll}\\p{N}]+ E.g. \"key\": \"goog-k8s-cluster-name\",\"value\": \"us-east1-b4rk\"
    trackingLabels :: (Core.Maybe RamMetric_TrackingLabels)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RamMetric' with the minimum fields required to make a request.
newRamMetric ::
  RamMetric
newRamMetric =
  RamMetric
    { gibSec = Core.Nothing,
      machineSpec = Core.Nothing,
      memories = Core.Nothing,
      ramType = Core.Nothing,
      trackingLabels = Core.Nothing
    }

instance Core.FromJSON RamMetric where
  parseJSON =
    Core.withObject
      "RamMetric"
      ( \o ->
          RamMetric
            Core.<$> (o Core..:? "gibSec" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "machineSpec")
            Core.<*> (o Core..:? "memories")
            Core.<*> (o Core..:? "ramType")
            Core.<*> (o Core..:? "trackingLabels")
      )

instance Core.ToJSON RamMetric where
  toJSON RamMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("gibSec" Core..=) Core.. Core.AsText Core.<$> gibSec,
            ("machineSpec" Core..=) Core.<$> machineSpec,
            ("memories" Core..=) Core.<$> memories,
            ("ramType" Core..=) Core.<$> ramType,
            ("trackingLabels" Core..=) Core.<$> trackingLabels
          ]
      )

-- | Billing tracking labels. They do not contain any user data but only the labels set by Vertex Core Infra itself. Tracking labels\' keys are defined with special format: goog-[\\p{Ll}\\p{N}]+ E.g. \"key\": \"goog-k8s-cluster-name\",\"value\": \"us-east1-b4rk\"
--
-- /See:/ 'newRamMetric_TrackingLabels' smart constructor.
newtype RamMetric_TrackingLabels = RamMetric_TrackingLabels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RamMetric_TrackingLabels' with the minimum fields required to make a request.
newRamMetric_TrackingLabels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  RamMetric_TrackingLabels
newRamMetric_TrackingLabels additional =
  RamMetric_TrackingLabels {additional = additional}

instance Core.FromJSON RamMetric_TrackingLabels where
  parseJSON =
    Core.withObject
      "RamMetric_TrackingLabels"
      (\o -> RamMetric_TrackingLabels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON RamMetric_TrackingLabels where
  toJSON RamMetric_TrackingLabels {..} = Core.toJSON additional

-- | Represents a sentence in the input document.
--
-- /See:/ 'newSentence' smart constructor.
data Sentence = Sentence
  { -- | For calls to AnalyzeSentiment or if AnnotateTextRequest.Features.extract/document/sentiment is set to true, this field will contain the sentiment for the sentence.
    sentiment :: (Core.Maybe Sentiment),
    -- | The sentence text.
    text :: (Core.Maybe TextSpan)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sentence' with the minimum fields required to make a request.
newSentence ::
  Sentence
newSentence =
  Sentence {sentiment = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON Sentence where
  parseJSON =
    Core.withObject
      "Sentence"
      ( \o ->
          Sentence
            Core.<$> (o Core..:? "sentiment")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Sentence where
  toJSON Sentence {..} =
    Core.object
      ( Core.catMaybes
          [ ("sentiment" Core..=) Core.<$> sentiment,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | Represents the feeling associated with the entire text or entities in the text.
--
-- /See:/ 'newSentiment' smart constructor.
data Sentiment = Sentiment
  { -- | A non-negative number in the [0, +inf] range, which represents the absolute magnitude of sentiment regardless of score (positive or negative).
    magnitude :: (Core.Maybe Core.Double),
    -- | Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
    score :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sentiment' with the minimum fields required to make a request.
newSentiment ::
  Sentiment
newSentiment =
  Sentiment {magnitude = Core.Nothing, score = Core.Nothing}

instance Core.FromJSON Sentiment where
  parseJSON =
    Core.withObject
      "Sentiment"
      ( \o ->
          Sentiment
            Core.<$> (o Core..:? "magnitude")
            Core.<*> (o Core..:? "score")
      )

instance Core.ToJSON Sentiment where
  toJSON Sentiment {..} =
    Core.object
      ( Core.catMaybes
          [ ("magnitude" Core..=) Core.<$> magnitude,
            ("score" Core..=) Core.<$> score
          ]
      )

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | Represents a text span in the input document.
--
-- /See:/ 'newTextSpan' smart constructor.
data TextSpan = TextSpan
  { -- | The API calculates the beginning offset of the content in the original document according to the EncodingType specified in the API request.
    beginOffset :: (Core.Maybe Core.Int32),
    -- | The content of the text span, which is a substring of the document.
    content :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextSpan' with the minimum fields required to make a request.
newTextSpan ::
  TextSpan
newTextSpan =
  TextSpan {beginOffset = Core.Nothing, content = Core.Nothing}

instance Core.FromJSON TextSpan where
  parseJSON =
    Core.withObject
      "TextSpan"
      ( \o ->
          TextSpan
            Core.<$> (o Core..:? "beginOffset")
            Core.<*> (o Core..:? "content")
      )

instance Core.ToJSON TextSpan where
  toJSON TextSpan {..} =
    Core.object
      ( Core.catMaybes
          [ ("beginOffset" Core..=) Core.<$> beginOffset,
            ("content" Core..=) Core.<$> content
          ]
      )

--
-- /See:/ 'newTpuMetric' smart constructor.
data TpuMetric = TpuMetric
  { -- | Required. Seconds of TPU usage, e.g. 3600.
    tpuSec :: (Core.Maybe Core.Int64),
    -- | Required. Type of TPU, e.g. TPU/V2, TPU/V3_POD.
    tpuType :: (Core.Maybe TpuMetric_TpuType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TpuMetric' with the minimum fields required to make a request.
newTpuMetric ::
  TpuMetric
newTpuMetric =
  TpuMetric {tpuSec = Core.Nothing, tpuType = Core.Nothing}

instance Core.FromJSON TpuMetric where
  parseJSON =
    Core.withObject
      "TpuMetric"
      ( \o ->
          TpuMetric
            Core.<$> (o Core..:? "tpuSec" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "tpuType")
      )

instance Core.ToJSON TpuMetric where
  toJSON TpuMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("tpuSec" Core..=) Core.. Core.AsText Core.<$> tpuSec,
            ("tpuType" Core..=) Core.<$> tpuType
          ]
      )

-- | The data statistics of a series of ARRAY values.
--
-- /See:/ 'newXPSArrayStats' smart constructor.
data XPSArrayStats = XPSArrayStats
  { commonStats :: (Core.Maybe XPSCommonStats),
    -- | Stats of all the values of all arrays, as if they were a single long series of data. The type depends on the element type of the array.
    memberStats :: (Core.Maybe XPSDataStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSArrayStats' with the minimum fields required to make a request.
newXPSArrayStats ::
  XPSArrayStats
newXPSArrayStats =
  XPSArrayStats
    { commonStats = Core.Nothing,
      memberStats = Core.Nothing
    }

instance Core.FromJSON XPSArrayStats where
  parseJSON =
    Core.withObject
      "XPSArrayStats"
      ( \o ->
          XPSArrayStats
            Core.<$> (o Core..:? "commonStats")
            Core.<*> (o Core..:? "memberStats")
      )

instance Core.ToJSON XPSArrayStats where
  toJSON XPSArrayStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonStats" Core..=) Core.<$> commonStats,
            ("memberStats" Core..=) Core.<$> memberStats
          ]
      )

--
-- /See:/ 'newXPSBatchPredictResponse' smart constructor.
newtype XPSBatchPredictResponse = XPSBatchPredictResponse
  { -- | Examples for batch prediction result. Under full API implementation, results are stored in shared RecordIO of AnnotatedExample protobufs, the annotations field of which is populated by XPS backend.
    exampleSet :: (Core.Maybe XPSExampleSet)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSBatchPredictResponse' with the minimum fields required to make a request.
newXPSBatchPredictResponse ::
  XPSBatchPredictResponse
newXPSBatchPredictResponse =
  XPSBatchPredictResponse {exampleSet = Core.Nothing}

instance Core.FromJSON XPSBatchPredictResponse where
  parseJSON =
    Core.withObject
      "XPSBatchPredictResponse"
      (\o -> XPSBatchPredictResponse Core.<$> (o Core..:? "exampleSet"))

instance Core.ToJSON XPSBatchPredictResponse where
  toJSON XPSBatchPredictResponse {..} =
    Core.object
      (Core.catMaybes [("exampleSet" Core..=) Core.<$> exampleSet])

-- | Bounding box matching model metrics for a single intersection-over-union threshold and multiple label match confidence thresholds.
--
-- /See:/ 'newXPSBoundingBoxMetricsEntry' smart constructor.
data XPSBoundingBoxMetricsEntry = XPSBoundingBoxMetricsEntry
  { -- | Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99.
    confidenceMetricsEntries :: (Core.Maybe [XPSBoundingBoxMetricsEntryConfidenceMetricsEntry]),
    -- | The intersection-over-union threshold value used to compute this metrics entry.
    iouThreshold :: (Core.Maybe Core.Double),
    -- | The mean average precision.
    meanAveragePrecision :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSBoundingBoxMetricsEntry' with the minimum fields required to make a request.
newXPSBoundingBoxMetricsEntry ::
  XPSBoundingBoxMetricsEntry
newXPSBoundingBoxMetricsEntry =
  XPSBoundingBoxMetricsEntry
    { confidenceMetricsEntries =
        Core.Nothing,
      iouThreshold = Core.Nothing,
      meanAveragePrecision = Core.Nothing
    }

instance Core.FromJSON XPSBoundingBoxMetricsEntry where
  parseJSON =
    Core.withObject
      "XPSBoundingBoxMetricsEntry"
      ( \o ->
          XPSBoundingBoxMetricsEntry
            Core.<$> (o Core..:? "confidenceMetricsEntries")
            Core.<*> (o Core..:? "iouThreshold")
            Core.<*> (o Core..:? "meanAveragePrecision")
      )

instance Core.ToJSON XPSBoundingBoxMetricsEntry where
  toJSON XPSBoundingBoxMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceMetricsEntries" Core..=)
              Core.<$> confidenceMetricsEntries,
            ("iouThreshold" Core..=) Core.<$> iouThreshold,
            ("meanAveragePrecision" Core..=) Core.<$> meanAveragePrecision
          ]
      )

-- | Metrics for a single confidence threshold.
--
-- /See:/ 'newXPSBoundingBoxMetricsEntryConfidenceMetricsEntry' smart constructor.
data XPSBoundingBoxMetricsEntryConfidenceMetricsEntry = XPSBoundingBoxMetricsEntryConfidenceMetricsEntry
  { -- | The confidence threshold value used to compute the metrics.
    confidenceThreshold :: (Core.Maybe Core.Double),
    -- | The harmonic mean of recall and precision.
    f1Score :: (Core.Maybe Core.Double),
    -- | Precision for the given confidence threshold.
    precision :: (Core.Maybe Core.Double),
    -- | Recall for the given confidence threshold.
    recall :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSBoundingBoxMetricsEntryConfidenceMetricsEntry' with the minimum fields required to make a request.
newXPSBoundingBoxMetricsEntryConfidenceMetricsEntry ::
  XPSBoundingBoxMetricsEntryConfidenceMetricsEntry
newXPSBoundingBoxMetricsEntryConfidenceMetricsEntry =
  XPSBoundingBoxMetricsEntryConfidenceMetricsEntry
    { confidenceThreshold =
        Core.Nothing,
      f1Score = Core.Nothing,
      precision = Core.Nothing,
      recall = Core.Nothing
    }

instance
  Core.FromJSON
    XPSBoundingBoxMetricsEntryConfidenceMetricsEntry
  where
  parseJSON =
    Core.withObject
      "XPSBoundingBoxMetricsEntryConfidenceMetricsEntry"
      ( \o ->
          XPSBoundingBoxMetricsEntryConfidenceMetricsEntry
            Core.<$> (o Core..:? "confidenceThreshold")
            Core.<*> (o Core..:? "f1Score")
            Core.<*> (o Core..:? "precision")
            Core.<*> (o Core..:? "recall")
      )

instance
  Core.ToJSON
    XPSBoundingBoxMetricsEntryConfidenceMetricsEntry
  where
  toJSON XPSBoundingBoxMetricsEntryConfidenceMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceThreshold" Core..=) Core.<$> confidenceThreshold,
            ("f1Score" Core..=) Core.<$> f1Score,
            ("precision" Core..=) Core.<$> precision,
            ("recall" Core..=) Core.<$> recall
          ]
      )

-- | The data statistics of a series of CATEGORY values.
--
-- /See:/ 'newXPSCategoryStats' smart constructor.
data XPSCategoryStats = XPSCategoryStats
  { commonStats :: (Core.Maybe XPSCommonStats),
    -- | The statistics of the top 20 CATEGORY values, ordered by CategoryStats.SingleCategoryStats.count.
    topCategoryStats :: (Core.Maybe [XPSCategoryStatsSingleCategoryStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSCategoryStats' with the minimum fields required to make a request.
newXPSCategoryStats ::
  XPSCategoryStats
newXPSCategoryStats =
  XPSCategoryStats
    { commonStats = Core.Nothing,
      topCategoryStats = Core.Nothing
    }

instance Core.FromJSON XPSCategoryStats where
  parseJSON =
    Core.withObject
      "XPSCategoryStats"
      ( \o ->
          XPSCategoryStats
            Core.<$> (o Core..:? "commonStats")
            Core.<*> (o Core..:? "topCategoryStats")
      )

instance Core.ToJSON XPSCategoryStats where
  toJSON XPSCategoryStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonStats" Core..=) Core.<$> commonStats,
            ("topCategoryStats" Core..=) Core.<$> topCategoryStats
          ]
      )

-- | The statistics of a single CATEGORY value.
--
-- /See:/ 'newXPSCategoryStatsSingleCategoryStats' smart constructor.
data XPSCategoryStatsSingleCategoryStats = XPSCategoryStatsSingleCategoryStats
  { -- | The number of occurrences of this value in the series.
    count :: (Core.Maybe Core.Int64),
    -- | The CATEGORY value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSCategoryStatsSingleCategoryStats' with the minimum fields required to make a request.
newXPSCategoryStatsSingleCategoryStats ::
  XPSCategoryStatsSingleCategoryStats
newXPSCategoryStatsSingleCategoryStats =
  XPSCategoryStatsSingleCategoryStats
    { count = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON XPSCategoryStatsSingleCategoryStats where
  parseJSON =
    Core.withObject
      "XPSCategoryStatsSingleCategoryStats"
      ( \o ->
          XPSCategoryStatsSingleCategoryStats
            Core.<$> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON XPSCategoryStatsSingleCategoryStats where
  toJSON XPSCategoryStatsSingleCategoryStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Model evaluation metrics for classification problems. It can be used for image and video classification. Next tag: 9.
--
-- /See:/ 'newXPSClassificationEvaluationMetrics' smart constructor.
data XPSClassificationEvaluationMetrics = XPSClassificationEvaluationMetrics
  { -- | The Area under precision recall curve metric.
    auPrc :: (Core.Maybe Core.Double),
    -- | The Area Under Receiver Operating Characteristic curve metric. Micro-averaged for the overall evaluation.
    auRoc :: (Core.Maybe Core.Double),
    -- | The Area under precision recall curve metric based on priors.
    baseAuPrc :: (Core.Maybe Core.Double),
    -- | Metrics that have confidence thresholds. Precision-recall curve can be derived from it.
    confidenceMetricsEntries :: (Core.Maybe [XPSConfidenceMetricsEntry]),
    -- | Confusion matrix of the evaluation. Only set for MULTICLASS classification problems where number of annotation specs is no more than 10. Only set for model level evaluation, not for evaluation per label.
    confusionMatrix :: (Core.Maybe XPSConfusionMatrix),
    -- | The number of examples used for model evaluation.
    evaluatedExamplesCount :: (Core.Maybe Core.Int32),
    -- | The Log Loss metric.
    logLoss :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSClassificationEvaluationMetrics' with the minimum fields required to make a request.
newXPSClassificationEvaluationMetrics ::
  XPSClassificationEvaluationMetrics
newXPSClassificationEvaluationMetrics =
  XPSClassificationEvaluationMetrics
    { auPrc = Core.Nothing,
      auRoc = Core.Nothing,
      baseAuPrc = Core.Nothing,
      confidenceMetricsEntries = Core.Nothing,
      confusionMatrix = Core.Nothing,
      evaluatedExamplesCount = Core.Nothing,
      logLoss = Core.Nothing
    }

instance Core.FromJSON XPSClassificationEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSClassificationEvaluationMetrics"
      ( \o ->
          XPSClassificationEvaluationMetrics
            Core.<$> (o Core..:? "auPrc")
            Core.<*> (o Core..:? "auRoc")
            Core.<*> (o Core..:? "baseAuPrc")
            Core.<*> (o Core..:? "confidenceMetricsEntries")
            Core.<*> (o Core..:? "confusionMatrix")
            Core.<*> (o Core..:? "evaluatedExamplesCount")
            Core.<*> (o Core..:? "logLoss")
      )

instance Core.ToJSON XPSClassificationEvaluationMetrics where
  toJSON XPSClassificationEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("auPrc" Core..=) Core.<$> auPrc,
            ("auRoc" Core..=) Core.<$> auRoc,
            ("baseAuPrc" Core..=) Core.<$> baseAuPrc,
            ("confidenceMetricsEntries" Core..=)
              Core.<$> confidenceMetricsEntries,
            ("confusionMatrix" Core..=) Core.<$> confusionMatrix,
            ("evaluatedExamplesCount" Core..=) Core.<$> evaluatedExamplesCount,
            ("logLoss" Core..=) Core.<$> logLoss
          ]
      )

-- | Map from color to display name. Will only be used by Image Segmentation for uCAIP.
--
-- /See:/ 'newXPSColorMap' smart constructor.
data XPSColorMap = XPSColorMap
  { -- | Should be used during training.
    annotationSpecIdToken :: (Core.Maybe Core.Text),
    -- | This type is deprecated in favor of the IntColor below. This is because google.type.Color represent color has a float which semantically does not reflect discrete classes\/categories concept. Moreover, to handle it well we need to have some tolerance when converting to a discretized color. As such, the recommendation is to have API surface still use google.type.Color while internally IntColor is used.
    color :: (Core.Maybe Color),
    -- | Should be used during preprocessing.
    displayName :: (Core.Maybe Core.Text),
    intColor :: (Core.Maybe XPSColorMapIntColor)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSColorMap' with the minimum fields required to make a request.
newXPSColorMap ::
  XPSColorMap
newXPSColorMap =
  XPSColorMap
    { annotationSpecIdToken = Core.Nothing,
      color = Core.Nothing,
      displayName = Core.Nothing,
      intColor = Core.Nothing
    }

instance Core.FromJSON XPSColorMap where
  parseJSON =
    Core.withObject
      "XPSColorMap"
      ( \o ->
          XPSColorMap
            Core.<$> (o Core..:? "annotationSpecIdToken")
            Core.<*> (o Core..:? "color")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "intColor")
      )

instance Core.ToJSON XPSColorMap where
  toJSON XPSColorMap {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotationSpecIdToken" Core..=) Core.<$> annotationSpecIdToken,
            ("color" Core..=) Core.<$> color,
            ("displayName" Core..=) Core.<$> displayName,
            ("intColor" Core..=) Core.<$> intColor
          ]
      )

-- | RGB color and each channel is represented by an integer.
--
-- /See:/ 'newXPSColorMapIntColor' smart constructor.
data XPSColorMapIntColor = XPSColorMapIntColor
  { -- | The value should be in range of [0, 255].
    blue :: (Core.Maybe Core.Int32),
    -- | The value should be in range of [0, 255].
    green :: (Core.Maybe Core.Int32),
    -- | The value should be in range of [0, 255].
    red :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSColorMapIntColor' with the minimum fields required to make a request.
newXPSColorMapIntColor ::
  XPSColorMapIntColor
newXPSColorMapIntColor =
  XPSColorMapIntColor
    { blue = Core.Nothing,
      green = Core.Nothing,
      red = Core.Nothing
    }

instance Core.FromJSON XPSColorMapIntColor where
  parseJSON =
    Core.withObject
      "XPSColorMapIntColor"
      ( \o ->
          XPSColorMapIntColor
            Core.<$> (o Core..:? "blue")
            Core.<*> (o Core..:? "green")
            Core.<*> (o Core..:? "red")
      )

instance Core.ToJSON XPSColorMapIntColor where
  toJSON XPSColorMapIntColor {..} =
    Core.object
      ( Core.catMaybes
          [ ("blue" Core..=) Core.<$> blue,
            ("green" Core..=) Core.<$> green,
            ("red" Core..=) Core.<$> red
          ]
      )

--
-- /See:/ 'newXPSColumnSpec' smart constructor.
data XPSColumnSpec = XPSColumnSpec
  { -- | The unique id of the column. When Preprocess, the Tables BE will popuate the order id of the column, which reflects the order of the column inside the table, i.e. 0 means the first column in the table, N-1 means the last column. AutoML BE will persist this order id in Spanner and set the order id here when calling RefreshTablesStats and Train. Note: it\'s different than the column/spec/id that is generated in AutoML BE.
    columnId :: (Core.Maybe Core.Int32),
    -- | The data stats of the column. It\'s outputed in RefreshTablesStats and a required input for Train.
    dataStats :: (Core.Maybe XPSDataStats),
    -- | The data type of the column. It\'s outputed in Preprocess rpc and a required input for RefreshTablesStats and Train.
    dataType :: (Core.Maybe XPSDataType),
    -- | The display name of the column. It\'s outputed in Preprocess and a required input for RefreshTablesStats and Train.
    displayName :: (Core.Maybe Core.Text),
    forecastingMetadata :: (Core.Maybe XPSColumnSpecForecastingMetadata),
    -- | It\'s outputed in RefreshTablesStats, and a required input in Train.
    topCorrelatedColumns :: (Core.Maybe [XPSColumnSpecCorrelatedColumn])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSColumnSpec' with the minimum fields required to make a request.
newXPSColumnSpec ::
  XPSColumnSpec
newXPSColumnSpec =
  XPSColumnSpec
    { columnId = Core.Nothing,
      dataStats = Core.Nothing,
      dataType = Core.Nothing,
      displayName = Core.Nothing,
      forecastingMetadata = Core.Nothing,
      topCorrelatedColumns = Core.Nothing
    }

instance Core.FromJSON XPSColumnSpec where
  parseJSON =
    Core.withObject
      "XPSColumnSpec"
      ( \o ->
          XPSColumnSpec
            Core.<$> (o Core..:? "columnId")
            Core.<*> (o Core..:? "dataStats")
            Core.<*> (o Core..:? "dataType")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "forecastingMetadata")
            Core.<*> (o Core..:? "topCorrelatedColumns")
      )

instance Core.ToJSON XPSColumnSpec where
  toJSON XPSColumnSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnId" Core..=) Core.<$> columnId,
            ("dataStats" Core..=) Core.<$> dataStats,
            ("dataType" Core..=) Core.<$> dataType,
            ("displayName" Core..=) Core.<$> displayName,
            ("forecastingMetadata" Core..=) Core.<$> forecastingMetadata,
            ("topCorrelatedColumns" Core..=) Core.<$> topCorrelatedColumns
          ]
      )

-- | Identifies a table\'s column, and its correlation with the column this ColumnSpec describes.
--
-- /See:/ 'newXPSColumnSpecCorrelatedColumn' smart constructor.
data XPSColumnSpecCorrelatedColumn = XPSColumnSpecCorrelatedColumn
  { columnId :: (Core.Maybe Core.Int32),
    correlationStats :: (Core.Maybe XPSCorrelationStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSColumnSpecCorrelatedColumn' with the minimum fields required to make a request.
newXPSColumnSpecCorrelatedColumn ::
  XPSColumnSpecCorrelatedColumn
newXPSColumnSpecCorrelatedColumn =
  XPSColumnSpecCorrelatedColumn
    { columnId = Core.Nothing,
      correlationStats = Core.Nothing
    }

instance Core.FromJSON XPSColumnSpecCorrelatedColumn where
  parseJSON =
    Core.withObject
      "XPSColumnSpecCorrelatedColumn"
      ( \o ->
          XPSColumnSpecCorrelatedColumn
            Core.<$> (o Core..:? "columnId")
            Core.<*> (o Core..:? "correlationStats")
      )

instance Core.ToJSON XPSColumnSpecCorrelatedColumn where
  toJSON XPSColumnSpecCorrelatedColumn {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnId" Core..=) Core.<$> columnId,
            ("correlationStats" Core..=) Core.<$> correlationStats
          ]
      )

--
-- /See:/ 'newXPSColumnSpecForecastingMetadata' smart constructor.
newtype XPSColumnSpecForecastingMetadata = XPSColumnSpecForecastingMetadata
  { -- | The type of the column for FORECASTING model training purposes.
    columnType :: (Core.Maybe XPSColumnSpecForecastingMetadata_ColumnType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSColumnSpecForecastingMetadata' with the minimum fields required to make a request.
newXPSColumnSpecForecastingMetadata ::
  XPSColumnSpecForecastingMetadata
newXPSColumnSpecForecastingMetadata =
  XPSColumnSpecForecastingMetadata {columnType = Core.Nothing}

instance Core.FromJSON XPSColumnSpecForecastingMetadata where
  parseJSON =
    Core.withObject
      "XPSColumnSpecForecastingMetadata"
      ( \o ->
          XPSColumnSpecForecastingMetadata
            Core.<$> (o Core..:? "columnType")
      )

instance Core.ToJSON XPSColumnSpecForecastingMetadata where
  toJSON XPSColumnSpecForecastingMetadata {..} =
    Core.object
      (Core.catMaybes [("columnType" Core..=) Core.<$> columnType])

-- | Common statistics for a column with a specified data type.
--
-- /See:/ 'newXPSCommonStats' smart constructor.
data XPSCommonStats = XPSCommonStats
  { distinctValueCount :: (Core.Maybe Core.Int64),
    nullValueCount :: (Core.Maybe Core.Int64),
    validValueCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSCommonStats' with the minimum fields required to make a request.
newXPSCommonStats ::
  XPSCommonStats
newXPSCommonStats =
  XPSCommonStats
    { distinctValueCount = Core.Nothing,
      nullValueCount = Core.Nothing,
      validValueCount = Core.Nothing
    }

instance Core.FromJSON XPSCommonStats where
  parseJSON =
    Core.withObject
      "XPSCommonStats"
      ( \o ->
          XPSCommonStats
            Core.<$> ( o
                         Core..:? "distinctValueCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "nullValueCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "validValueCount" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON XPSCommonStats where
  toJSON XPSCommonStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("distinctValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> distinctValueCount,
            ("nullValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> nullValueCount,
            ("validValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> validValueCount
          ]
      )

-- | ConfidenceMetricsEntry includes generic precision, recall, f1 score etc. Next tag: 16.
--
-- /See:/ 'newXPSConfidenceMetricsEntry' smart constructor.
data XPSConfidenceMetricsEntry = XPSConfidenceMetricsEntry
  { -- | Metrics are computed with an assumption that the model never return predictions with score lower than this value.
    confidenceThreshold :: (Core.Maybe Core.Double),
    -- | The harmonic mean of recall and precision.
    f1Score :: (Core.Maybe Core.Double),
    -- | The harmonic mean of recall/at1 and precision/at1.
    f1ScoreAt1 :: (Core.Maybe Core.Double),
    -- | The number of ground truth labels that are not matched by a model created label.
    falseNegativeCount :: (Core.Maybe Core.Int64),
    -- | The number of model created labels that do not match a ground truth label.
    falsePositiveCount :: (Core.Maybe Core.Int64),
    -- | False Positive Rate for the given confidence threshold.
    falsePositiveRate :: (Core.Maybe Core.Double),
    -- | The False Positive Rate when only considering the label that has the highest prediction score and not below the confidence threshold for each example.
    falsePositiveRateAt1 :: (Core.Maybe Core.Double),
    -- | Metrics are computed with an assumption that the model always returns at most this many predictions (ordered by their score, descendingly), but they all still need to meet the confidence_threshold.
    positionThreshold :: (Core.Maybe Core.Int32),
    -- | Precision for the given confidence threshold.
    precision :: (Core.Maybe Core.Double),
    -- | The precision when only considering the label that has the highest prediction score and not below the confidence threshold for each example.
    precisionAt1 :: (Core.Maybe Core.Double),
    -- | Recall (true positive rate) for the given confidence threshold.
    recall :: (Core.Maybe Core.Double),
    -- | The recall (true positive rate) when only considering the label that has the highest prediction score and not below the confidence threshold for each example.
    recallAt1 :: (Core.Maybe Core.Double),
    -- | The number of labels that were not created by the model, but if they would, they would not match a ground truth label.
    trueNegativeCount :: (Core.Maybe Core.Int64),
    -- | The number of model created labels that match a ground truth label.
    truePositiveCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSConfidenceMetricsEntry' with the minimum fields required to make a request.
newXPSConfidenceMetricsEntry ::
  XPSConfidenceMetricsEntry
newXPSConfidenceMetricsEntry =
  XPSConfidenceMetricsEntry
    { confidenceThreshold = Core.Nothing,
      f1Score = Core.Nothing,
      f1ScoreAt1 = Core.Nothing,
      falseNegativeCount = Core.Nothing,
      falsePositiveCount = Core.Nothing,
      falsePositiveRate = Core.Nothing,
      falsePositiveRateAt1 = Core.Nothing,
      positionThreshold = Core.Nothing,
      precision = Core.Nothing,
      precisionAt1 = Core.Nothing,
      recall = Core.Nothing,
      recallAt1 = Core.Nothing,
      trueNegativeCount = Core.Nothing,
      truePositiveCount = Core.Nothing
    }

instance Core.FromJSON XPSConfidenceMetricsEntry where
  parseJSON =
    Core.withObject
      "XPSConfidenceMetricsEntry"
      ( \o ->
          XPSConfidenceMetricsEntry
            Core.<$> (o Core..:? "confidenceThreshold")
            Core.<*> (o Core..:? "f1Score")
            Core.<*> (o Core..:? "f1ScoreAt1")
            Core.<*> ( o
                         Core..:? "falseNegativeCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "falsePositiveCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "falsePositiveRate")
            Core.<*> (o Core..:? "falsePositiveRateAt1")
            Core.<*> (o Core..:? "positionThreshold")
            Core.<*> (o Core..:? "precision")
            Core.<*> (o Core..:? "precisionAt1")
            Core.<*> (o Core..:? "recall")
            Core.<*> (o Core..:? "recallAt1")
            Core.<*> (o Core..:? "trueNegativeCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> ( o
                         Core..:? "truePositiveCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSConfidenceMetricsEntry where
  toJSON XPSConfidenceMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceThreshold" Core..=) Core.<$> confidenceThreshold,
            ("f1Score" Core..=) Core.<$> f1Score,
            ("f1ScoreAt1" Core..=) Core.<$> f1ScoreAt1,
            ("falseNegativeCount" Core..=)
              Core.. Core.AsText
              Core.<$> falseNegativeCount,
            ("falsePositiveCount" Core..=)
              Core.. Core.AsText
              Core.<$> falsePositiveCount,
            ("falsePositiveRate" Core..=) Core.<$> falsePositiveRate,
            ("falsePositiveRateAt1" Core..=) Core.<$> falsePositiveRateAt1,
            ("positionThreshold" Core..=) Core.<$> positionThreshold,
            ("precision" Core..=) Core.<$> precision,
            ("precisionAt1" Core..=) Core.<$> precisionAt1,
            ("recall" Core..=) Core.<$> recall,
            ("recallAt1" Core..=) Core.<$> recallAt1,
            ("trueNegativeCount" Core..=)
              Core.. Core.AsText
              Core.<$> trueNegativeCount,
            ("truePositiveCount" Core..=)
              Core.. Core.AsText
              Core.<$> truePositiveCount
          ]
      )

-- | Confusion matrix of the model running the classification.
--
-- /See:/ 'newXPSConfusionMatrix' smart constructor.
data XPSConfusionMatrix = XPSConfusionMatrix
  { -- | For the following three repeated fields, only one is intended to be set. annotation/spec/id_token is preferable to be set. ID tokens of the annotation specs used in the confusion matrix.
    annotationSpecIdToken :: (Core.Maybe [Core.Text]),
    -- | Category (mainly for segmentation). Set only for image segmentation models. Note: uCAIP Image Segmentation should use annotation/spec/id_token.
    category :: (Core.Maybe [Core.Int32]),
    -- | Rows in the confusion matrix. The number of rows is equal to the size of @annotation_spec_id_token@. @row[i].value[j]@ is the number of examples that have ground truth of the @annotation_spec_id_token[i]@ and are predicted as @annotation_spec_id_token[j]@ by the model being evaluated.
    row :: (Core.Maybe [XPSConfusionMatrixRow]),
    -- | Sentiment labels used in the confusion matrix. Set only for text sentiment models. For AutoML Text Revamp, use @annotation_spec_id_token@ instead and leave this field empty.
    sentimentLabel :: (Core.Maybe [Core.Int32])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSConfusionMatrix' with the minimum fields required to make a request.
newXPSConfusionMatrix ::
  XPSConfusionMatrix
newXPSConfusionMatrix =
  XPSConfusionMatrix
    { annotationSpecIdToken = Core.Nothing,
      category = Core.Nothing,
      row = Core.Nothing,
      sentimentLabel = Core.Nothing
    }

instance Core.FromJSON XPSConfusionMatrix where
  parseJSON =
    Core.withObject
      "XPSConfusionMatrix"
      ( \o ->
          XPSConfusionMatrix
            Core.<$> (o Core..:? "annotationSpecIdToken")
            Core.<*> (o Core..:? "category")
            Core.<*> (o Core..:? "row")
            Core.<*> (o Core..:? "sentimentLabel")
      )

instance Core.ToJSON XPSConfusionMatrix where
  toJSON XPSConfusionMatrix {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotationSpecIdToken" Core..=) Core.<$> annotationSpecIdToken,
            ("category" Core..=) Core.<$> category,
            ("row" Core..=) Core.<$> row,
            ("sentimentLabel" Core..=) Core.<$> sentimentLabel
          ]
      )

-- | A row in the confusion matrix.
--
-- /See:/ 'newXPSConfusionMatrixRow' smart constructor.
data XPSConfusionMatrixRow = XPSConfusionMatrixRow
  { -- | Same as above except intended to represent other counts (for e.g. for segmentation this is pixel count). NOTE(params): Only example_count or count is set (oneoff does not support repeated fields unless they are embedded inside another message).
    count :: (Core.Maybe [Core.Int64]),
    -- | Value of the specific cell in the confusion matrix. The number of values each row has (i.e. the length of the row) is equal to the length of the annotation/spec/id_token field.
    exampleCount :: (Core.Maybe [Core.Int32])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSConfusionMatrixRow' with the minimum fields required to make a request.
newXPSConfusionMatrixRow ::
  XPSConfusionMatrixRow
newXPSConfusionMatrixRow =
  XPSConfusionMatrixRow
    { count = Core.Nothing,
      exampleCount = Core.Nothing
    }

instance Core.FromJSON XPSConfusionMatrixRow where
  parseJSON =
    Core.withObject
      "XPSConfusionMatrixRow"
      ( \o ->
          XPSConfusionMatrixRow
            Core.<$> (o Core..:? "count" Core.<&> Core.fmap (Core.fmap Core.fromAsText))
            Core.<*> (o Core..:? "exampleCount")
      )

instance Core.ToJSON XPSConfusionMatrixRow where
  toJSON XPSConfusionMatrixRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.fmap Core.AsText Core.<$> count,
            ("exampleCount" Core..=) Core.<$> exampleCount
          ]
      )

-- | A model format used for iOS mobile devices.
--
-- /See:/ 'newXPSCoreMlFormat' smart constructor.
data XPSCoreMlFormat = XPSCoreMlFormat
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSCoreMlFormat' with the minimum fields required to make a request.
newXPSCoreMlFormat ::
  XPSCoreMlFormat
newXPSCoreMlFormat = XPSCoreMlFormat

instance Core.FromJSON XPSCoreMlFormat where
  parseJSON =
    Core.withObject
      "XPSCoreMlFormat"
      (\o -> Core.pure XPSCoreMlFormat)

instance Core.ToJSON XPSCoreMlFormat where
  toJSON = Core.const Core.emptyObject

-- | A correlation statistics between two series of DataType values. The series may have differing DataType-s, but within a single series the DataType must be the same.
--
-- /See:/ 'newXPSCorrelationStats' smart constructor.
newtype XPSCorrelationStats = XPSCorrelationStats
  { -- | The correlation value using the Cramer\'s V measure.
    cramersV :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSCorrelationStats' with the minimum fields required to make a request.
newXPSCorrelationStats ::
  XPSCorrelationStats
newXPSCorrelationStats =
  XPSCorrelationStats {cramersV = Core.Nothing}

instance Core.FromJSON XPSCorrelationStats where
  parseJSON =
    Core.withObject
      "XPSCorrelationStats"
      (\o -> XPSCorrelationStats Core.<$> (o Core..:? "cramersV"))

instance Core.ToJSON XPSCorrelationStats where
  toJSON XPSCorrelationStats {..} =
    Core.object
      (Core.catMaybes [("cramersV" Core..=) Core.<$> cramersV])

-- | Different types of errors and the stats associatesd with each error.
--
-- /See:/ 'newXPSDataErrors' smart constructor.
data XPSDataErrors = XPSDataErrors
  { -- | Number of records having errors associated with the enum.
    count :: (Core.Maybe Core.Int32),
    -- | Type of the error.
    errorType :: (Core.Maybe XPSDataErrors_ErrorType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSDataErrors' with the minimum fields required to make a request.
newXPSDataErrors ::
  XPSDataErrors
newXPSDataErrors =
  XPSDataErrors {count = Core.Nothing, errorType = Core.Nothing}

instance Core.FromJSON XPSDataErrors where
  parseJSON =
    Core.withObject
      "XPSDataErrors"
      ( \o ->
          XPSDataErrors
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "errorType")
      )

instance Core.ToJSON XPSDataErrors where
  toJSON XPSDataErrors {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("errorType" Core..=) Core.<$> errorType
          ]
      )

-- | The data statistics of a series of values that share the same DataType.
--
-- /See:/ 'newXPSDataStats' smart constructor.
data XPSDataStats = XPSDataStats
  { -- | The statistics for ARRAY DataType.
    arrayStats :: (Core.Maybe XPSArrayStats),
    -- | The statistics for CATEGORY DataType.
    categoryStats :: (Core.Maybe XPSCategoryStats),
    -- | The number of distinct values.
    distinctValueCount :: (Core.Maybe Core.Int64),
    -- | The statistics for FLOAT64 DataType.
    float64Stats :: (Core.Maybe XPSFloat64Stats),
    -- | The number of values that are null.
    nullValueCount :: (Core.Maybe Core.Int64),
    -- | The statistics for STRING DataType.
    stringStats :: (Core.Maybe XPSStringStats),
    -- | The statistics for STRUCT DataType.
    structStats :: (Core.Maybe XPSStructStats),
    -- | The statistics for TIMESTAMP DataType.
    timestampStats :: (Core.Maybe XPSTimestampStats),
    -- | The number of values that are valid.
    validValueCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSDataStats' with the minimum fields required to make a request.
newXPSDataStats ::
  XPSDataStats
newXPSDataStats =
  XPSDataStats
    { arrayStats = Core.Nothing,
      categoryStats = Core.Nothing,
      distinctValueCount = Core.Nothing,
      float64Stats = Core.Nothing,
      nullValueCount = Core.Nothing,
      stringStats = Core.Nothing,
      structStats = Core.Nothing,
      timestampStats = Core.Nothing,
      validValueCount = Core.Nothing
    }

instance Core.FromJSON XPSDataStats where
  parseJSON =
    Core.withObject
      "XPSDataStats"
      ( \o ->
          XPSDataStats
            Core.<$> (o Core..:? "arrayStats")
            Core.<*> (o Core..:? "categoryStats")
            Core.<*> ( o
                         Core..:? "distinctValueCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "float64Stats")
            Core.<*> (o Core..:? "nullValueCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "stringStats")
            Core.<*> (o Core..:? "structStats")
            Core.<*> (o Core..:? "timestampStats")
            Core.<*> (o Core..:? "validValueCount" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON XPSDataStats where
  toJSON XPSDataStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("arrayStats" Core..=) Core.<$> arrayStats,
            ("categoryStats" Core..=) Core.<$> categoryStats,
            ("distinctValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> distinctValueCount,
            ("float64Stats" Core..=) Core.<$> float64Stats,
            ("nullValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> nullValueCount,
            ("stringStats" Core..=) Core.<$> stringStats,
            ("structStats" Core..=) Core.<$> structStats,
            ("timestampStats" Core..=) Core.<$> timestampStats,
            ("validValueCount" Core..=)
              Core.. Core.AsText
              Core.<$> validValueCount
          ]
      )

-- | Indicated the type of data that can be stored in a structured data entity (e.g. a table).
--
-- /See:/ 'newXPSDataType' smart constructor.
data XPSDataType = XPSDataType
  { -- | The highly compatible data types to this data type.
    compatibleDataTypes :: (Core.Maybe [XPSDataType]),
    -- | If type_code == ARRAY, then @list_element_type@ is the type of the elements.
    listElementType :: (Core.Maybe XPSDataType),
    -- | If true, this DataType can also be @null@.
    nullable :: (Core.Maybe Core.Bool),
    -- | If type_code == STRUCT, then @struct_type@ provides type information for the struct\'s fields.
    structType :: (Core.Maybe XPSStructType),
    -- | If type/code == TIMESTAMP then @time_format@ provides the format in which that time field is expressed. The time/format must be written in @strftime@ syntax. If time_format is not set, then the default format as described on the field is used.
    timeFormat :: (Core.Maybe Core.Text),
    -- | Required. The TypeCode for this type.
    typeCode :: (Core.Maybe XPSDataType_TypeCode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSDataType' with the minimum fields required to make a request.
newXPSDataType ::
  XPSDataType
newXPSDataType =
  XPSDataType
    { compatibleDataTypes = Core.Nothing,
      listElementType = Core.Nothing,
      nullable = Core.Nothing,
      structType = Core.Nothing,
      timeFormat = Core.Nothing,
      typeCode = Core.Nothing
    }

instance Core.FromJSON XPSDataType where
  parseJSON =
    Core.withObject
      "XPSDataType"
      ( \o ->
          XPSDataType
            Core.<$> (o Core..:? "compatibleDataTypes")
            Core.<*> (o Core..:? "listElementType")
            Core.<*> (o Core..:? "nullable")
            Core.<*> (o Core..:? "structType")
            Core.<*> (o Core..:? "timeFormat")
            Core.<*> (o Core..:? "typeCode")
      )

instance Core.ToJSON XPSDataType where
  toJSON XPSDataType {..} =
    Core.object
      ( Core.catMaybes
          [ ("compatibleDataTypes" Core..=) Core.<$> compatibleDataTypes,
            ("listElementType" Core..=) Core.<$> listElementType,
            ("nullable" Core..=) Core.<$> nullable,
            ("structType" Core..=) Core.<$> structType,
            ("timeFormat" Core..=) Core.<$> timeFormat,
            ("typeCode" Core..=) Core.<$> typeCode
          ]
      )

-- | A model format used for Docker containers. Use the params field to customize the container. The container is verified to work correctly on ubuntu 16.04 operating system.
--
-- /See:/ 'newXPSDockerFormat' smart constructor.
data XPSDockerFormat = XPSDockerFormat
  { -- | Optional. Additional cpu information describing the requirements for the to be exported model files.
    cpuArchitecture :: (Core.Maybe XPSDockerFormat_CpuArchitecture),
    -- | Optional. Additional gpu information describing the requirements for the to be exported model files.
    gpuArchitecture :: (Core.Maybe XPSDockerFormat_GpuArchitecture)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSDockerFormat' with the minimum fields required to make a request.
newXPSDockerFormat ::
  XPSDockerFormat
newXPSDockerFormat =
  XPSDockerFormat
    { cpuArchitecture = Core.Nothing,
      gpuArchitecture = Core.Nothing
    }

instance Core.FromJSON XPSDockerFormat where
  parseJSON =
    Core.withObject
      "XPSDockerFormat"
      ( \o ->
          XPSDockerFormat
            Core.<$> (o Core..:? "cpuArchitecture")
            Core.<*> (o Core..:? "gpuArchitecture")
      )

instance Core.ToJSON XPSDockerFormat where
  toJSON XPSDockerFormat {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpuArchitecture" Core..=) Core.<$> cpuArchitecture,
            ("gpuArchitecture" Core..=) Core.<$> gpuArchitecture
          ]
      )

-- | A model format used for <https://cloud.google.com/edge-tpu/ Edge TPU> devices.
--
-- /See:/ 'newXPSEdgeTpuTfLiteFormat' smart constructor.
data XPSEdgeTpuTfLiteFormat = XPSEdgeTpuTfLiteFormat
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSEdgeTpuTfLiteFormat' with the minimum fields required to make a request.
newXPSEdgeTpuTfLiteFormat ::
  XPSEdgeTpuTfLiteFormat
newXPSEdgeTpuTfLiteFormat = XPSEdgeTpuTfLiteFormat

instance Core.FromJSON XPSEdgeTpuTfLiteFormat where
  parseJSON =
    Core.withObject
      "XPSEdgeTpuTfLiteFormat"
      (\o -> Core.pure XPSEdgeTpuTfLiteFormat)

instance Core.ToJSON XPSEdgeTpuTfLiteFormat where
  toJSON = Core.const Core.emptyObject

-- | Contains xPS-specific model evaluation metrics either for a single annotation spec (label), or for the model overall. Next tag: 18.
--
-- /See:/ 'newXPSEvaluationMetrics' smart constructor.
data XPSEvaluationMetrics = XPSEvaluationMetrics
  { -- | The annotation/spec for which this evaluation metrics instance had been created. Empty iff this is an overall model evaluation (like Tables evaluation metrics), i.e. aggregated across all labels. The value comes from the input annotations in AnnotatedExample. For MVP product or for text sentiment models where annotation/spec/id/token is not available, set label instead.
    annotationSpecIdToken :: (Core.Maybe Core.Text),
    -- | The integer category label for which this evaluation metric instance had been created. Valid categories are 0 or higher. Overall model evaluation should set this to negative values (rather than implicit zero). Only used for Image Segmentation (prefer to set annotation/spec/id/token instead). Note: uCAIP Image Segmentation should use annotation/spec/id/token.
    category :: (Core.Maybe Core.Int32),
    -- | The number of examples used to create this evaluation metrics instance.
    evaluatedExampleCount :: (Core.Maybe Core.Int32),
    imageClassificationEvalMetrics :: (Core.Maybe XPSClassificationEvaluationMetrics),
    imageObjectDetectionEvalMetrics :: (Core.Maybe XPSImageObjectDetectionEvaluationMetrics),
    imageSegmentationEvalMetrics :: (Core.Maybe XPSImageSegmentationEvaluationMetrics),
    -- | The label for which this evaluation metrics instance had been created. Empty iff this is an overall model evaluation (like Tables evaluation metrics), i.e. aggregated across all labels. The label maps to AnnotationSpec.display_name in Public API protos. Only used by MVP implementation and text sentiment FULL implementation.
    label :: (Core.Maybe Core.Text),
    regressionEvalMetrics :: (Core.Maybe XPSRegressionEvaluationMetrics),
    tablesClassificationEvalMetrics :: (Core.Maybe XPSClassificationEvaluationMetrics),
    tablesEvalMetrics :: (Core.Maybe XPSTablesEvaluationMetrics),
    textClassificationEvalMetrics :: (Core.Maybe XPSClassificationEvaluationMetrics),
    textExtractionEvalMetrics :: (Core.Maybe XPSTextExtractionEvaluationMetrics),
    textSentimentEvalMetrics :: (Core.Maybe XPSTextSentimentEvaluationMetrics),
    translationEvalMetrics :: (Core.Maybe XPSTranslationEvaluationMetrics),
    videoActionRecognitionEvalMetrics :: (Core.Maybe XPSVideoActionRecognitionEvaluationMetrics),
    videoClassificationEvalMetrics :: (Core.Maybe XPSClassificationEvaluationMetrics),
    videoObjectTrackingEvalMetrics :: (Core.Maybe XPSVideoObjectTrackingEvaluationMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSEvaluationMetrics' with the minimum fields required to make a request.
newXPSEvaluationMetrics ::
  XPSEvaluationMetrics
newXPSEvaluationMetrics =
  XPSEvaluationMetrics
    { annotationSpecIdToken = Core.Nothing,
      category = Core.Nothing,
      evaluatedExampleCount = Core.Nothing,
      imageClassificationEvalMetrics = Core.Nothing,
      imageObjectDetectionEvalMetrics = Core.Nothing,
      imageSegmentationEvalMetrics = Core.Nothing,
      label = Core.Nothing,
      regressionEvalMetrics = Core.Nothing,
      tablesClassificationEvalMetrics = Core.Nothing,
      tablesEvalMetrics = Core.Nothing,
      textClassificationEvalMetrics = Core.Nothing,
      textExtractionEvalMetrics = Core.Nothing,
      textSentimentEvalMetrics = Core.Nothing,
      translationEvalMetrics = Core.Nothing,
      videoActionRecognitionEvalMetrics = Core.Nothing,
      videoClassificationEvalMetrics = Core.Nothing,
      videoObjectTrackingEvalMetrics = Core.Nothing
    }

instance Core.FromJSON XPSEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSEvaluationMetrics"
      ( \o ->
          XPSEvaluationMetrics
            Core.<$> (o Core..:? "annotationSpecIdToken")
            Core.<*> (o Core..:? "category")
            Core.<*> (o Core..:? "evaluatedExampleCount")
            Core.<*> (o Core..:? "imageClassificationEvalMetrics")
            Core.<*> (o Core..:? "imageObjectDetectionEvalMetrics")
            Core.<*> (o Core..:? "imageSegmentationEvalMetrics")
            Core.<*> (o Core..:? "label")
            Core.<*> (o Core..:? "regressionEvalMetrics")
            Core.<*> (o Core..:? "tablesClassificationEvalMetrics")
            Core.<*> (o Core..:? "tablesEvalMetrics")
            Core.<*> (o Core..:? "textClassificationEvalMetrics")
            Core.<*> (o Core..:? "textExtractionEvalMetrics")
            Core.<*> (o Core..:? "textSentimentEvalMetrics")
            Core.<*> (o Core..:? "translationEvalMetrics")
            Core.<*> (o Core..:? "videoActionRecognitionEvalMetrics")
            Core.<*> (o Core..:? "videoClassificationEvalMetrics")
            Core.<*> (o Core..:? "videoObjectTrackingEvalMetrics")
      )

instance Core.ToJSON XPSEvaluationMetrics where
  toJSON XPSEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotationSpecIdToken" Core..=) Core.<$> annotationSpecIdToken,
            ("category" Core..=) Core.<$> category,
            ("evaluatedExampleCount" Core..=) Core.<$> evaluatedExampleCount,
            ("imageClassificationEvalMetrics" Core..=)
              Core.<$> imageClassificationEvalMetrics,
            ("imageObjectDetectionEvalMetrics" Core..=)
              Core.<$> imageObjectDetectionEvalMetrics,
            ("imageSegmentationEvalMetrics" Core..=)
              Core.<$> imageSegmentationEvalMetrics,
            ("label" Core..=) Core.<$> label,
            ("regressionEvalMetrics" Core..=) Core.<$> regressionEvalMetrics,
            ("tablesClassificationEvalMetrics" Core..=)
              Core.<$> tablesClassificationEvalMetrics,
            ("tablesEvalMetrics" Core..=) Core.<$> tablesEvalMetrics,
            ("textClassificationEvalMetrics" Core..=)
              Core.<$> textClassificationEvalMetrics,
            ("textExtractionEvalMetrics" Core..=)
              Core.<$> textExtractionEvalMetrics,
            ("textSentimentEvalMetrics" Core..=)
              Core.<$> textSentimentEvalMetrics,
            ("translationEvalMetrics" Core..=) Core.<$> translationEvalMetrics,
            ("videoActionRecognitionEvalMetrics" Core..=)
              Core.<$> videoActionRecognitionEvalMetrics,
            ("videoClassificationEvalMetrics" Core..=)
              Core.<$> videoClassificationEvalMetrics,
            ("videoObjectTrackingEvalMetrics" Core..=)
              Core.<$> videoObjectTrackingEvalMetrics
          ]
      )

-- | Specifies location of model evaluation metrics.
--
-- /See:/ 'newXPSEvaluationMetricsSet' smart constructor.
data XPSEvaluationMetricsSet = XPSEvaluationMetricsSet
  { -- | Inline EvaluationMetrics - should be relatively small. For passing large quantities of exhaustive metrics, use file_spec.
    evaluationMetrics :: (Core.Maybe [XPSEvaluationMetrics]),
    -- | File spec containing evaluation metrics of a model, must point to RecordIO file(s) of intelligence.cloud.automl.xps.EvaluationMetrics messages.
    fileSpec :: (Core.Maybe XPSFileSpec),
    -- | Number of the evaluation metrics (usually one per label plus overall).
    numEvaluationMetrics :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSEvaluationMetricsSet' with the minimum fields required to make a request.
newXPSEvaluationMetricsSet ::
  XPSEvaluationMetricsSet
newXPSEvaluationMetricsSet =
  XPSEvaluationMetricsSet
    { evaluationMetrics = Core.Nothing,
      fileSpec = Core.Nothing,
      numEvaluationMetrics = Core.Nothing
    }

instance Core.FromJSON XPSEvaluationMetricsSet where
  parseJSON =
    Core.withObject
      "XPSEvaluationMetricsSet"
      ( \o ->
          XPSEvaluationMetricsSet
            Core.<$> (o Core..:? "evaluationMetrics")
            Core.<*> (o Core..:? "fileSpec")
            Core.<*> ( o
                         Core..:? "numEvaluationMetrics"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSEvaluationMetricsSet where
  toJSON XPSEvaluationMetricsSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("evaluationMetrics" Core..=) Core.<$> evaluationMetrics,
            ("fileSpec" Core..=) Core.<$> fileSpec,
            ("numEvaluationMetrics" Core..=)
              Core.. Core.AsText
              Core.<$> numEvaluationMetrics
          ]
      )

-- | Set of examples or input sources.
--
-- /See:/ 'newXPSExampleSet' smart constructor.
data XPSExampleSet = XPSExampleSet
  { -- | File spec of the examples or input sources.
    fileSpec :: (Core.Maybe XPSFileSpec),
    -- | Fingerprint of the example set.
    fingerprint :: (Core.Maybe Core.Int64),
    -- | Number of examples.
    numExamples :: (Core.Maybe Core.Int64),
    -- | Number of input sources.
    numInputSources :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSExampleSet' with the minimum fields required to make a request.
newXPSExampleSet ::
  XPSExampleSet
newXPSExampleSet =
  XPSExampleSet
    { fileSpec = Core.Nothing,
      fingerprint = Core.Nothing,
      numExamples = Core.Nothing,
      numInputSources = Core.Nothing
    }

instance Core.FromJSON XPSExampleSet where
  parseJSON =
    Core.withObject
      "XPSExampleSet"
      ( \o ->
          XPSExampleSet
            Core.<$> (o Core..:? "fileSpec")
            Core.<*> (o Core..:? "fingerprint" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "numExamples" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "numInputSources" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON XPSExampleSet where
  toJSON XPSExampleSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileSpec" Core..=) Core.<$> fileSpec,
            ("fingerprint" Core..=) Core.. Core.AsText Core.<$> fingerprint,
            ("numExamples" Core..=) Core.. Core.AsText Core.<$> numExamples,
            ("numInputSources" Core..=)
              Core.. Core.AsText
              Core.<$> numInputSources
          ]
      )

--
-- /See:/ 'newXPSExportModelOutputConfig' smart constructor.
data XPSExportModelOutputConfig = XPSExportModelOutputConfig
  { coreMlFormat :: (Core.Maybe XPSCoreMlFormat),
    dockerFormat :: (Core.Maybe XPSDockerFormat),
    edgeTpuTfLiteFormat :: (Core.Maybe XPSEdgeTpuTfLiteFormat),
    -- | For any model and format: If true, will additionally export FirebaseExportedModelInfo in a firebase.txt file.
    exportFirebaseAuxiliaryInfo :: (Core.Maybe Core.Bool),
    -- | The Google Contained Registry path the exported files to be pushed to. This location is set if the exported format is DOCKDER.
    outputGcrUri :: (Core.Maybe Core.Text),
    -- | The Google Cloud Storage directory where XPS will output the exported models and related files. Format: gs:\/\/bucket\/directory
    outputGcsUri :: (Core.Maybe Core.Text),
    tfJsFormat :: (Core.Maybe XPSTfJsFormat),
    tfLiteFormat :: (Core.Maybe XPSTfLiteFormat),
    tfSavedModelFormat :: (Core.Maybe XPSTfSavedModelFormat)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSExportModelOutputConfig' with the minimum fields required to make a request.
newXPSExportModelOutputConfig ::
  XPSExportModelOutputConfig
newXPSExportModelOutputConfig =
  XPSExportModelOutputConfig
    { coreMlFormat = Core.Nothing,
      dockerFormat = Core.Nothing,
      edgeTpuTfLiteFormat = Core.Nothing,
      exportFirebaseAuxiliaryInfo = Core.Nothing,
      outputGcrUri = Core.Nothing,
      outputGcsUri = Core.Nothing,
      tfJsFormat = Core.Nothing,
      tfLiteFormat = Core.Nothing,
      tfSavedModelFormat = Core.Nothing
    }

instance Core.FromJSON XPSExportModelOutputConfig where
  parseJSON =
    Core.withObject
      "XPSExportModelOutputConfig"
      ( \o ->
          XPSExportModelOutputConfig
            Core.<$> (o Core..:? "coreMlFormat")
            Core.<*> (o Core..:? "dockerFormat")
            Core.<*> (o Core..:? "edgeTpuTfLiteFormat")
            Core.<*> (o Core..:? "exportFirebaseAuxiliaryInfo")
            Core.<*> (o Core..:? "outputGcrUri")
            Core.<*> (o Core..:? "outputGcsUri")
            Core.<*> (o Core..:? "tfJsFormat")
            Core.<*> (o Core..:? "tfLiteFormat")
            Core.<*> (o Core..:? "tfSavedModelFormat")
      )

instance Core.ToJSON XPSExportModelOutputConfig where
  toJSON XPSExportModelOutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("coreMlFormat" Core..=) Core.<$> coreMlFormat,
            ("dockerFormat" Core..=) Core.<$> dockerFormat,
            ("edgeTpuTfLiteFormat" Core..=) Core.<$> edgeTpuTfLiteFormat,
            ("exportFirebaseAuxiliaryInfo" Core..=)
              Core.<$> exportFirebaseAuxiliaryInfo,
            ("outputGcrUri" Core..=) Core.<$> outputGcrUri,
            ("outputGcsUri" Core..=) Core.<$> outputGcsUri,
            ("tfJsFormat" Core..=) Core.<$> tfJsFormat,
            ("tfLiteFormat" Core..=) Core.<$> tfLiteFormat,
            ("tfSavedModelFormat" Core..=) Core.<$> tfSavedModelFormat
          ]
      )

-- | Spec of input and output files, on external file systems (for example, Colossus Namespace System or Google Cloud Storage).
--
-- /See:/ 'newXPSFileSpec' smart constructor.
data XPSFileSpec = XPSFileSpec
  { -- | Deprecated. Use file_spec.
    directoryPath :: (Core.Maybe Core.Text),
    fileFormat :: (Core.Maybe XPSFileSpec_FileFormat),
    -- | Single file path, or file pattern of format \"\/path\/to\/file\@shard_count\". E.g. \/cns\/cell-d\/somewhere\/file\@2 is expanded to two files: \/cns\/cell-d\/somewhere\/file-00000-of-00002 and \/cns\/cell-d\/somewhere\/file-00001-of-00002.
    fileSpec :: (Core.Maybe Core.Text),
    -- | Deprecated. Use file_spec.
    singleFilePath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSFileSpec' with the minimum fields required to make a request.
newXPSFileSpec ::
  XPSFileSpec
newXPSFileSpec =
  XPSFileSpec
    { directoryPath = Core.Nothing,
      fileFormat = Core.Nothing,
      fileSpec = Core.Nothing,
      singleFilePath = Core.Nothing
    }

instance Core.FromJSON XPSFileSpec where
  parseJSON =
    Core.withObject
      "XPSFileSpec"
      ( \o ->
          XPSFileSpec
            Core.<$> (o Core..:? "directoryPath")
            Core.<*> (o Core..:? "fileFormat")
            Core.<*> (o Core..:? "fileSpec")
            Core.<*> (o Core..:? "singleFilePath")
      )

instance Core.ToJSON XPSFileSpec where
  toJSON XPSFileSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("directoryPath" Core..=) Core.<$> directoryPath,
            ("fileFormat" Core..=) Core.<$> fileFormat,
            ("fileSpec" Core..=) Core.<$> fileSpec,
            ("singleFilePath" Core..=) Core.<$> singleFilePath
          ]
      )

-- | The data statistics of a series of FLOAT64 values.
--
-- /See:/ 'newXPSFloat64Stats' smart constructor.
data XPSFloat64Stats = XPSFloat64Stats
  { commonStats :: (Core.Maybe XPSCommonStats),
    -- | Histogram buckets of the data series. Sorted by the min value of the bucket, ascendingly, and the number of the buckets is dynamically generated. The buckets are non-overlapping and completely cover whole FLOAT64 range with min of first bucket being @\"-Infinity\"@, and max of the last one being @\"Infinity\"@.
    histogramBuckets :: (Core.Maybe [XPSFloat64StatsHistogramBucket]),
    -- | The mean of the series.
    mean :: (Core.Maybe Core.Double),
    -- | Ordered from 0 to k k-quantile values of the data series of n values. The value at index i is, approximately, the i*n\/k-th smallest value in the series; for i = 0 and i = k these are, respectively, the min and max values.
    quantiles :: (Core.Maybe [Core.Double]),
    -- | The standard deviation of the series.
    standardDeviation :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSFloat64Stats' with the minimum fields required to make a request.
newXPSFloat64Stats ::
  XPSFloat64Stats
newXPSFloat64Stats =
  XPSFloat64Stats
    { commonStats = Core.Nothing,
      histogramBuckets = Core.Nothing,
      mean = Core.Nothing,
      quantiles = Core.Nothing,
      standardDeviation = Core.Nothing
    }

instance Core.FromJSON XPSFloat64Stats where
  parseJSON =
    Core.withObject
      "XPSFloat64Stats"
      ( \o ->
          XPSFloat64Stats
            Core.<$> (o Core..:? "commonStats")
            Core.<*> (o Core..:? "histogramBuckets")
            Core.<*> (o Core..:? "mean")
            Core.<*> (o Core..:? "quantiles")
            Core.<*> (o Core..:? "standardDeviation")
      )

instance Core.ToJSON XPSFloat64Stats where
  toJSON XPSFloat64Stats {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonStats" Core..=) Core.<$> commonStats,
            ("histogramBuckets" Core..=) Core.<$> histogramBuckets,
            ("mean" Core..=) Core.<$> mean,
            ("quantiles" Core..=) Core.<$> quantiles,
            ("standardDeviation" Core..=) Core.<$> standardDeviation
          ]
      )

-- | A bucket of a histogram.
--
-- /See:/ 'newXPSFloat64StatsHistogramBucket' smart constructor.
data XPSFloat64StatsHistogramBucket = XPSFloat64StatsHistogramBucket
  { -- | The number of data values that are in the bucket, i.e. are between min and max values.
    count :: (Core.Maybe Core.Int64),
    -- | The maximum value of the bucket, exclusive unless max = @\"Infinity\"@, in which case it\'s inclusive.
    max :: (Core.Maybe Core.Double),
    -- | The minimum value of the bucket, inclusive.
    min :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSFloat64StatsHistogramBucket' with the minimum fields required to make a request.
newXPSFloat64StatsHistogramBucket ::
  XPSFloat64StatsHistogramBucket
newXPSFloat64StatsHistogramBucket =
  XPSFloat64StatsHistogramBucket
    { count = Core.Nothing,
      max = Core.Nothing,
      min = Core.Nothing
    }

instance Core.FromJSON XPSFloat64StatsHistogramBucket where
  parseJSON =
    Core.withObject
      "XPSFloat64StatsHistogramBucket"
      ( \o ->
          XPSFloat64StatsHistogramBucket
            Core.<$> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "max")
            Core.<*> (o Core..:? "min")
      )

instance Core.ToJSON XPSFloat64StatsHistogramBucket where
  toJSON XPSFloat64StatsHistogramBucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("max" Core..=) Core.<$> max,
            ("min" Core..=) Core.<$> min
          ]
      )

--
-- /See:/ 'newXPSImageClassificationTrainResponse' smart constructor.
data XPSImageClassificationTrainResponse = XPSImageClassificationTrainResponse
  { -- | Total number of classes.
    classCount :: (Core.Maybe Core.Int64),
    -- | Information of downloadable models that are pre-generated as part of training flow and will be persisted in AutoMl backend. Populated for AutoMl requests.
    exportModelSpec :: (Core.Maybe XPSImageExportModelSpec),
    -- | == The fields below are only populated under uCAIP request scope.
    modelArtifactSpec :: (Core.Maybe XPSImageModelArtifactSpec),
    modelServingSpec :: (Core.Maybe XPSImageModelServingSpec),
    -- | Stop reason for training job, e.g. \'TRAIN/BUDGET/REACHED\', \'MODEL/CONVERGED\', \'MODEL/EARLY_STOPPED\'.
    stopReason :: (Core.Maybe XPSImageClassificationTrainResponse_StopReason),
    -- | The actual cost to create this model. - For edge type model, the cost is expressed in node hour. - For cloud type model,the cost is expressed in compute hour. - Populated for models created before GA. To be deprecated after GA.
    trainCostInNodeTime :: (Core.Maybe Core.Duration),
    -- | The actual training cost, expressed in node seconds. Populated for models trained in node time.
    trainCostNodeSeconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageClassificationTrainResponse' with the minimum fields required to make a request.
newXPSImageClassificationTrainResponse ::
  XPSImageClassificationTrainResponse
newXPSImageClassificationTrainResponse =
  XPSImageClassificationTrainResponse
    { classCount = Core.Nothing,
      exportModelSpec = Core.Nothing,
      modelArtifactSpec = Core.Nothing,
      modelServingSpec = Core.Nothing,
      stopReason = Core.Nothing,
      trainCostInNodeTime = Core.Nothing,
      trainCostNodeSeconds = Core.Nothing
    }

instance Core.FromJSON XPSImageClassificationTrainResponse where
  parseJSON =
    Core.withObject
      "XPSImageClassificationTrainResponse"
      ( \o ->
          XPSImageClassificationTrainResponse
            Core.<$> (o Core..:? "classCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "exportModelSpec")
            Core.<*> (o Core..:? "modelArtifactSpec")
            Core.<*> (o Core..:? "modelServingSpec")
            Core.<*> (o Core..:? "stopReason")
            Core.<*> (o Core..:? "trainCostInNodeTime")
            Core.<*> ( o
                         Core..:? "trainCostNodeSeconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSImageClassificationTrainResponse where
  toJSON XPSImageClassificationTrainResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("classCount" Core..=) Core.. Core.AsText Core.<$> classCount,
            ("exportModelSpec" Core..=) Core.<$> exportModelSpec,
            ("modelArtifactSpec" Core..=) Core.<$> modelArtifactSpec,
            ("modelServingSpec" Core..=) Core.<$> modelServingSpec,
            ("stopReason" Core..=) Core.<$> stopReason,
            ("trainCostInNodeTime" Core..=) Core.<$> trainCostInNodeTime,
            ("trainCostNodeSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> trainCostNodeSeconds
          ]
      )

-- | Information of downloadable models that are pre-generated as part of training flow and will be persisted in AutoMl backend. Upon receiving ExportModel request from user, AutoMl backend can serve the pre-generated models to user if exists (by copying the files from internal path to user provided location), otherwise, AutoMl backend will call xPS ExportModel API to generate the model on the fly with the requesting format.
--
-- /See:/ 'newXPSImageExportModelSpec' smart constructor.
newtype XPSImageExportModelSpec = XPSImageExportModelSpec
  { -- | Contains the model format and internal location of the model files to be exported\/downloaded. Use the Google Cloud Storage bucket name which is provided via TrainRequest.gcs/bucket/name to store the model files.
    exportModelOutputConfig :: (Core.Maybe [XPSExportModelOutputConfig])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageExportModelSpec' with the minimum fields required to make a request.
newXPSImageExportModelSpec ::
  XPSImageExportModelSpec
newXPSImageExportModelSpec =
  XPSImageExportModelSpec {exportModelOutputConfig = Core.Nothing}

instance Core.FromJSON XPSImageExportModelSpec where
  parseJSON =
    Core.withObject
      "XPSImageExportModelSpec"
      ( \o ->
          XPSImageExportModelSpec
            Core.<$> (o Core..:? "exportModelOutputConfig")
      )

instance Core.ToJSON XPSImageExportModelSpec where
  toJSON XPSImageExportModelSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("exportModelOutputConfig" Core..=)
              Core.<$> exportModelOutputConfig
          ]
      )

-- | Stores the locations and related metadata of the model artifacts. Populated for uCAIP requests only.
--
-- /See:/ 'newXPSImageModelArtifactSpec' smart constructor.
data XPSImageModelArtifactSpec = XPSImageModelArtifactSpec
  { -- | The Tensorflow checkpoint files. e.g. Used for resumable training.
    checkpointArtifact :: (Core.Maybe XPSModelArtifactItem),
    -- | The model binary files in different formats for model export.
    exportArtifact :: (Core.Maybe [XPSModelArtifactItem]),
    -- | Google Cloud Storage URI of decoded labels file for model export \'dict.txt\'.
    labelGcsUri :: (Core.Maybe Core.Text),
    -- | The default model binary file used for serving (e.g. online predict, batch predict) via public Cloud AI Platform API.
    servingArtifact :: (Core.Maybe XPSModelArtifactItem),
    -- | Google Cloud Storage URI prefix of Tensorflow JavaScript binary files \'groupX-shardXofX.bin\'. Deprecated.
    tfJsBinaryGcsPrefix :: (Core.Maybe Core.Text),
    -- | Google Cloud Storage URI of Tensorflow Lite metadata \'tflite_metadata.json\'.
    tfLiteMetadataGcsUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageModelArtifactSpec' with the minimum fields required to make a request.
newXPSImageModelArtifactSpec ::
  XPSImageModelArtifactSpec
newXPSImageModelArtifactSpec =
  XPSImageModelArtifactSpec
    { checkpointArtifact = Core.Nothing,
      exportArtifact = Core.Nothing,
      labelGcsUri = Core.Nothing,
      servingArtifact = Core.Nothing,
      tfJsBinaryGcsPrefix = Core.Nothing,
      tfLiteMetadataGcsUri = Core.Nothing
    }

instance Core.FromJSON XPSImageModelArtifactSpec where
  parseJSON =
    Core.withObject
      "XPSImageModelArtifactSpec"
      ( \o ->
          XPSImageModelArtifactSpec
            Core.<$> (o Core..:? "checkpointArtifact")
            Core.<*> (o Core..:? "exportArtifact")
            Core.<*> (o Core..:? "labelGcsUri")
            Core.<*> (o Core..:? "servingArtifact")
            Core.<*> (o Core..:? "tfJsBinaryGcsPrefix")
            Core.<*> (o Core..:? "tfLiteMetadataGcsUri")
      )

instance Core.ToJSON XPSImageModelArtifactSpec where
  toJSON XPSImageModelArtifactSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("checkpointArtifact" Core..=) Core.<$> checkpointArtifact,
            ("exportArtifact" Core..=) Core.<$> exportArtifact,
            ("labelGcsUri" Core..=) Core.<$> labelGcsUri,
            ("servingArtifact" Core..=) Core.<$> servingArtifact,
            ("tfJsBinaryGcsPrefix" Core..=) Core.<$> tfJsBinaryGcsPrefix,
            ("tfLiteMetadataGcsUri" Core..=) Core.<$> tfLiteMetadataGcsUri
          ]
      )

-- | Serving specification for image models.
--
-- /See:/ 'newXPSImageModelServingSpec' smart constructor.
data XPSImageModelServingSpec = XPSImageModelServingSpec
  { -- | Populate under uCAIP request scope.
    modelThroughputEstimation :: (Core.Maybe [XPSImageModelServingSpecModelThroughputEstimation]),
    -- | An estimated value of how much traffic a node can serve. Populated for AutoMl request only.
    nodeQps :: (Core.Maybe Core.Double),
    -- | == The fields below are only populated under uCAIP request scope. https:\/\/cloud.google.com\/ml-engine\/docs\/runtime-version-list
    tfRuntimeVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageModelServingSpec' with the minimum fields required to make a request.
newXPSImageModelServingSpec ::
  XPSImageModelServingSpec
newXPSImageModelServingSpec =
  XPSImageModelServingSpec
    { modelThroughputEstimation =
        Core.Nothing,
      nodeQps = Core.Nothing,
      tfRuntimeVersion = Core.Nothing
    }

instance Core.FromJSON XPSImageModelServingSpec where
  parseJSON =
    Core.withObject
      "XPSImageModelServingSpec"
      ( \o ->
          XPSImageModelServingSpec
            Core.<$> (o Core..:? "modelThroughputEstimation")
            Core.<*> (o Core..:? "nodeQps")
            Core.<*> (o Core..:? "tfRuntimeVersion")
      )

instance Core.ToJSON XPSImageModelServingSpec where
  toJSON XPSImageModelServingSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("modelThroughputEstimation" Core..=)
              Core.<$> modelThroughputEstimation,
            ("nodeQps" Core..=) Core.<$> nodeQps,
            ("tfRuntimeVersion" Core..=) Core.<$> tfRuntimeVersion
          ]
      )

--
-- /See:/ 'newXPSImageModelServingSpecModelThroughputEstimation' smart constructor.
data XPSImageModelServingSpecModelThroughputEstimation = XPSImageModelServingSpecModelThroughputEstimation
  { computeEngineAcceleratorType ::
      ( Core.Maybe
          XPSImageModelServingSpecModelThroughputEstimation_ComputeEngineAcceleratorType
      ),
    -- | Estimated latency.
    latencyInMilliseconds :: (Core.Maybe Core.Double),
    -- | The approximate qps a deployed node can serve.
    nodeQps :: (Core.Maybe Core.Double),
    servomaticPartitionType ::
      ( Core.Maybe
          XPSImageModelServingSpecModelThroughputEstimation_ServomaticPartitionType
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageModelServingSpecModelThroughputEstimation' with the minimum fields required to make a request.
newXPSImageModelServingSpecModelThroughputEstimation ::
  XPSImageModelServingSpecModelThroughputEstimation
newXPSImageModelServingSpecModelThroughputEstimation =
  XPSImageModelServingSpecModelThroughputEstimation
    { computeEngineAcceleratorType =
        Core.Nothing,
      latencyInMilliseconds = Core.Nothing,
      nodeQps = Core.Nothing,
      servomaticPartitionType = Core.Nothing
    }

instance
  Core.FromJSON
    XPSImageModelServingSpecModelThroughputEstimation
  where
  parseJSON =
    Core.withObject
      "XPSImageModelServingSpecModelThroughputEstimation"
      ( \o ->
          XPSImageModelServingSpecModelThroughputEstimation
            Core.<$> (o Core..:? "computeEngineAcceleratorType")
            Core.<*> (o Core..:? "latencyInMilliseconds")
            Core.<*> (o Core..:? "nodeQps")
            Core.<*> (o Core..:? "servomaticPartitionType")
      )

instance
  Core.ToJSON
    XPSImageModelServingSpecModelThroughputEstimation
  where
  toJSON XPSImageModelServingSpecModelThroughputEstimation {..} =
    Core.object
      ( Core.catMaybes
          [ ("computeEngineAcceleratorType" Core..=)
              Core.<$> computeEngineAcceleratorType,
            ("latencyInMilliseconds" Core..=) Core.<$> latencyInMilliseconds,
            ("nodeQps" Core..=) Core.<$> nodeQps,
            ("servomaticPartitionType" Core..=)
              Core.<$> servomaticPartitionType
          ]
      )

-- | Model evaluation metrics for image object detection problems. Evaluates prediction quality of labeled bounding boxes.
--
-- /See:/ 'newXPSImageObjectDetectionEvaluationMetrics' smart constructor.
data XPSImageObjectDetectionEvaluationMetrics = XPSImageObjectDetectionEvaluationMetrics
  { -- | The single metric for bounding boxes evaluation: the mean/average/precision averaged over all bounding/box/metrics_entries.
    boundingBoxMeanAveragePrecision :: (Core.Maybe Core.Double),
    -- | The bounding boxes match metrics for each Intersection-over-union threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 and each label confidence threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 pair.
    boundingBoxMetricsEntries :: (Core.Maybe [XPSBoundingBoxMetricsEntry]),
    -- | The total number of bounding boxes (i.e. summed over all images) the ground truth used to create this evaluation had.
    evaluatedBoundingBoxCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageObjectDetectionEvaluationMetrics' with the minimum fields required to make a request.
newXPSImageObjectDetectionEvaluationMetrics ::
  XPSImageObjectDetectionEvaluationMetrics
newXPSImageObjectDetectionEvaluationMetrics =
  XPSImageObjectDetectionEvaluationMetrics
    { boundingBoxMeanAveragePrecision =
        Core.Nothing,
      boundingBoxMetricsEntries = Core.Nothing,
      evaluatedBoundingBoxCount = Core.Nothing
    }

instance Core.FromJSON XPSImageObjectDetectionEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSImageObjectDetectionEvaluationMetrics"
      ( \o ->
          XPSImageObjectDetectionEvaluationMetrics
            Core.<$> (o Core..:? "boundingBoxMeanAveragePrecision")
            Core.<*> (o Core..:? "boundingBoxMetricsEntries")
            Core.<*> (o Core..:? "evaluatedBoundingBoxCount")
      )

instance Core.ToJSON XPSImageObjectDetectionEvaluationMetrics where
  toJSON XPSImageObjectDetectionEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBoxMeanAveragePrecision" Core..=)
              Core.<$> boundingBoxMeanAveragePrecision,
            ("boundingBoxMetricsEntries" Core..=)
              Core.<$> boundingBoxMetricsEntries,
            ("evaluatedBoundingBoxCount" Core..=)
              Core.<$> evaluatedBoundingBoxCount
          ]
      )

--
-- /See:/ 'newXPSImageObjectDetectionModelSpec' smart constructor.
data XPSImageObjectDetectionModelSpec = XPSImageObjectDetectionModelSpec
  { -- | Total number of classes.
    classCount :: (Core.Maybe Core.Int64),
    exportModelSpec :: (Core.Maybe XPSImageExportModelSpec),
    -- | Max number of bounding box.
    maxBoundingBoxCount :: (Core.Maybe Core.Int64),
    -- | == The fields below are only populated under uCAIP request scope.
    modelArtifactSpec :: (Core.Maybe XPSImageModelArtifactSpec),
    modelServingSpec :: (Core.Maybe XPSImageModelServingSpec),
    -- | Stop reason for training job, e.g. \'TRAIN/BUDGET/REACHED\', \'MODEL_CONVERGED\'.
    stopReason :: (Core.Maybe XPSImageObjectDetectionModelSpec_StopReason),
    -- | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this field means 1 node hour.
    trainCostNodeSeconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageObjectDetectionModelSpec' with the minimum fields required to make a request.
newXPSImageObjectDetectionModelSpec ::
  XPSImageObjectDetectionModelSpec
newXPSImageObjectDetectionModelSpec =
  XPSImageObjectDetectionModelSpec
    { classCount = Core.Nothing,
      exportModelSpec = Core.Nothing,
      maxBoundingBoxCount = Core.Nothing,
      modelArtifactSpec = Core.Nothing,
      modelServingSpec = Core.Nothing,
      stopReason = Core.Nothing,
      trainCostNodeSeconds = Core.Nothing
    }

instance Core.FromJSON XPSImageObjectDetectionModelSpec where
  parseJSON =
    Core.withObject
      "XPSImageObjectDetectionModelSpec"
      ( \o ->
          XPSImageObjectDetectionModelSpec
            Core.<$> (o Core..:? "classCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "exportModelSpec")
            Core.<*> ( o
                         Core..:? "maxBoundingBoxCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "modelArtifactSpec")
            Core.<*> (o Core..:? "modelServingSpec")
            Core.<*> (o Core..:? "stopReason")
            Core.<*> ( o
                         Core..:? "trainCostNodeSeconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSImageObjectDetectionModelSpec where
  toJSON XPSImageObjectDetectionModelSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("classCount" Core..=) Core.. Core.AsText Core.<$> classCount,
            ("exportModelSpec" Core..=) Core.<$> exportModelSpec,
            ("maxBoundingBoxCount" Core..=)
              Core.. Core.AsText
              Core.<$> maxBoundingBoxCount,
            ("modelArtifactSpec" Core..=) Core.<$> modelArtifactSpec,
            ("modelServingSpec" Core..=) Core.<$> modelServingSpec,
            ("stopReason" Core..=) Core.<$> stopReason,
            ("trainCostNodeSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> trainCostNodeSeconds
          ]
      )

-- | Model evaluation metrics for image segmentation problems. Next tag: 4.
--
-- /See:/ 'newXPSImageSegmentationEvaluationMetrics' smart constructor.
newtype XPSImageSegmentationEvaluationMetrics = XPSImageSegmentationEvaluationMetrics
  { -- | Metrics that have confidence thresholds. Precision-recall curve can be derived from it.
    confidenceMetricsEntries ::
      ( Core.Maybe
          [XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageSegmentationEvaluationMetrics' with the minimum fields required to make a request.
newXPSImageSegmentationEvaluationMetrics ::
  XPSImageSegmentationEvaluationMetrics
newXPSImageSegmentationEvaluationMetrics =
  XPSImageSegmentationEvaluationMetrics
    { confidenceMetricsEntries =
        Core.Nothing
    }

instance Core.FromJSON XPSImageSegmentationEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSImageSegmentationEvaluationMetrics"
      ( \o ->
          XPSImageSegmentationEvaluationMetrics
            Core.<$> (o Core..:? "confidenceMetricsEntries")
      )

instance Core.ToJSON XPSImageSegmentationEvaluationMetrics where
  toJSON XPSImageSegmentationEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceMetricsEntries" Core..=)
              Core.<$> confidenceMetricsEntries
          ]
      )

-- | Metrics for a single confidence threshold.
--
-- /See:/ 'newXPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry' smart constructor.
data XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry = XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry
  { -- | The confidence threshold value used to compute the metrics.
    confidenceThreshold :: (Core.Maybe Core.Double),
    -- | Confusion matrix of the per confidence_threshold evaluation. Pixel counts are set here. Only set for model level evaluation, not for evaluation per label.
    confusionMatrix :: (Core.Maybe XPSConfusionMatrix),
    -- | DSC or the F1 score: The harmonic mean of recall and precision.
    diceScoreCoefficient :: (Core.Maybe Core.Double),
    -- | IOU score.
    iouScore :: (Core.Maybe Core.Double),
    -- | Precision for the given confidence threshold.
    precision :: (Core.Maybe Core.Double),
    -- | Recall for the given confidence threshold.
    recall :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry' with the minimum fields required to make a request.
newXPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry ::
  XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry
newXPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry =
  XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry
    { confidenceThreshold =
        Core.Nothing,
      confusionMatrix = Core.Nothing,
      diceScoreCoefficient = Core.Nothing,
      iouScore = Core.Nothing,
      precision = Core.Nothing,
      recall = Core.Nothing
    }

instance
  Core.FromJSON
    XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry
  where
  parseJSON =
    Core.withObject
      "XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry"
      ( \o ->
          XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry
            Core.<$> (o Core..:? "confidenceThreshold")
            Core.<*> (o Core..:? "confusionMatrix")
            Core.<*> (o Core..:? "diceScoreCoefficient")
            Core.<*> (o Core..:? "iouScore")
            Core.<*> (o Core..:? "precision")
            Core.<*> (o Core..:? "recall")
      )

instance
  Core.ToJSON
    XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry
  where
  toJSON
    XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidenceThreshold" Core..=) Core.<$> confidenceThreshold,
              ("confusionMatrix" Core..=) Core.<$> confusionMatrix,
              ("diceScoreCoefficient" Core..=) Core.<$> diceScoreCoefficient,
              ("iouScore" Core..=) Core.<$> iouScore,
              ("precision" Core..=) Core.<$> precision,
              ("recall" Core..=) Core.<$> recall
            ]
        )

--
-- /See:/ 'newXPSImageSegmentationTrainResponse' smart constructor.
data XPSImageSegmentationTrainResponse = XPSImageSegmentationTrainResponse
  { -- | Color map of the model.
    colorMaps :: (Core.Maybe [XPSColorMap]),
    -- | NOTE: These fields are not used\/needed in EAP but will be set later.
    exportModelSpec :: (Core.Maybe XPSImageExportModelSpec),
    -- | == The fields below are only populated under uCAIP request scope. Model artifact spec stores and model gcs pathes and related metadata
    modelArtifactSpec :: (Core.Maybe XPSImageModelArtifactSpec),
    modelServingSpec :: (Core.Maybe XPSImageModelServingSpec),
    -- | Stop reason for training job, e.g. \'TRAIN/BUDGET/REACHED\', \'MODEL_CONVERGED\'.
    stopReason :: (Core.Maybe XPSImageSegmentationTrainResponse_StopReason),
    -- | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this field means 1 node hour.
    trainCostNodeSeconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSImageSegmentationTrainResponse' with the minimum fields required to make a request.
newXPSImageSegmentationTrainResponse ::
  XPSImageSegmentationTrainResponse
newXPSImageSegmentationTrainResponse =
  XPSImageSegmentationTrainResponse
    { colorMaps = Core.Nothing,
      exportModelSpec = Core.Nothing,
      modelArtifactSpec = Core.Nothing,
      modelServingSpec = Core.Nothing,
      stopReason = Core.Nothing,
      trainCostNodeSeconds = Core.Nothing
    }

instance Core.FromJSON XPSImageSegmentationTrainResponse where
  parseJSON =
    Core.withObject
      "XPSImageSegmentationTrainResponse"
      ( \o ->
          XPSImageSegmentationTrainResponse
            Core.<$> (o Core..:? "colorMaps")
            Core.<*> (o Core..:? "exportModelSpec")
            Core.<*> (o Core..:? "modelArtifactSpec")
            Core.<*> (o Core..:? "modelServingSpec")
            Core.<*> (o Core..:? "stopReason")
            Core.<*> ( o
                         Core..:? "trainCostNodeSeconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSImageSegmentationTrainResponse where
  toJSON XPSImageSegmentationTrainResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("colorMaps" Core..=) Core.<$> colorMaps,
            ("exportModelSpec" Core..=) Core.<$> exportModelSpec,
            ("modelArtifactSpec" Core..=) Core.<$> modelArtifactSpec,
            ("modelServingSpec" Core..=) Core.<$> modelServingSpec,
            ("stopReason" Core..=) Core.<$> stopReason,
            ("trainCostNodeSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> trainCostNodeSeconds
          ]
      )

-- | An attribution method that computes the Aumann-Shapley value taking advantage of the model\'s fully differentiable structure. Refer to this paper for more details: https:\/\/arxiv.org\/abs\/1703.01365
--
-- /See:/ 'newXPSIntegratedGradientsAttribution' smart constructor.
newtype XPSIntegratedGradientsAttribution = XPSIntegratedGradientsAttribution
  { -- | The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is within the desired error range. Valid range of its value is [1, 100], inclusively.
    stepCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSIntegratedGradientsAttribution' with the minimum fields required to make a request.
newXPSIntegratedGradientsAttribution ::
  XPSIntegratedGradientsAttribution
newXPSIntegratedGradientsAttribution =
  XPSIntegratedGradientsAttribution {stepCount = Core.Nothing}

instance Core.FromJSON XPSIntegratedGradientsAttribution where
  parseJSON =
    Core.withObject
      "XPSIntegratedGradientsAttribution"
      ( \o ->
          XPSIntegratedGradientsAttribution
            Core.<$> (o Core..:? "stepCount")
      )

instance Core.ToJSON XPSIntegratedGradientsAttribution where
  toJSON XPSIntegratedGradientsAttribution {..} =
    Core.object
      (Core.catMaybes [("stepCount" Core..=) Core.<$> stepCount])

--
-- /See:/ 'newXPSMetricEntry' smart constructor.
data XPSMetricEntry = XPSMetricEntry
  { -- | For billing metrics that are using legacy sku\'s, set the legacy billing metric id here. This will be sent to Chemist as the \"cloudbilling.googleapis.com\/argentum/metric/id\" label. Otherwise leave empty.
    argentumMetricId :: (Core.Maybe Core.Text),
    -- | A double value.
    doubleValue :: (Core.Maybe Core.Double),
    -- | A signed 64-bit integer value.
    int64Value :: (Core.Maybe Core.Int64),
    -- | The metric name defined in the service configuration.
    metricName :: (Core.Maybe Core.Text),
    -- | Billing system labels for this (metric, value) pair.
    systemLabels :: (Core.Maybe [XPSMetricEntryLabel])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSMetricEntry' with the minimum fields required to make a request.
newXPSMetricEntry ::
  XPSMetricEntry
newXPSMetricEntry =
  XPSMetricEntry
    { argentumMetricId = Core.Nothing,
      doubleValue = Core.Nothing,
      int64Value = Core.Nothing,
      metricName = Core.Nothing,
      systemLabels = Core.Nothing
    }

instance Core.FromJSON XPSMetricEntry where
  parseJSON =
    Core.withObject
      "XPSMetricEntry"
      ( \o ->
          XPSMetricEntry
            Core.<$> (o Core..:? "argentumMetricId")
            Core.<*> (o Core..:? "doubleValue")
            Core.<*> (o Core..:? "int64Value" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "metricName")
            Core.<*> (o Core..:? "systemLabels")
      )

instance Core.ToJSON XPSMetricEntry where
  toJSON XPSMetricEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("argentumMetricId" Core..=) Core.<$> argentumMetricId,
            ("doubleValue" Core..=) Core.<$> doubleValue,
            ("int64Value" Core..=) Core.. Core.AsText Core.<$> int64Value,
            ("metricName" Core..=) Core.<$> metricName,
            ("systemLabels" Core..=) Core.<$> systemLabels
          ]
      )

--
-- /See:/ 'newXPSMetricEntryLabel' smart constructor.
data XPSMetricEntryLabel = XPSMetricEntryLabel
  { -- | The name of the label.
    labelName :: (Core.Maybe Core.Text),
    -- | The value of the label.
    labelValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSMetricEntryLabel' with the minimum fields required to make a request.
newXPSMetricEntryLabel ::
  XPSMetricEntryLabel
newXPSMetricEntryLabel =
  XPSMetricEntryLabel
    { labelName = Core.Nothing,
      labelValue = Core.Nothing
    }

instance Core.FromJSON XPSMetricEntryLabel where
  parseJSON =
    Core.withObject
      "XPSMetricEntryLabel"
      ( \o ->
          XPSMetricEntryLabel
            Core.<$> (o Core..:? "labelName")
            Core.<*> (o Core..:? "labelValue")
      )

instance Core.ToJSON XPSMetricEntryLabel where
  toJSON XPSMetricEntryLabel {..} =
    Core.object
      ( Core.catMaybes
          [ ("labelName" Core..=) Core.<$> labelName,
            ("labelValue" Core..=) Core.<$> labelValue
          ]
      )

-- | A single model artifact item.
--
-- /See:/ 'newXPSModelArtifactItem' smart constructor.
data XPSModelArtifactItem = XPSModelArtifactItem
  { -- | The model artifact format.
    artifactFormat :: (Core.Maybe XPSModelArtifactItem_ArtifactFormat),
    -- | The Google Cloud Storage URI that stores the model binary files.
    gcsUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSModelArtifactItem' with the minimum fields required to make a request.
newXPSModelArtifactItem ::
  XPSModelArtifactItem
newXPSModelArtifactItem =
  XPSModelArtifactItem
    { artifactFormat = Core.Nothing,
      gcsUri = Core.Nothing
    }

instance Core.FromJSON XPSModelArtifactItem where
  parseJSON =
    Core.withObject
      "XPSModelArtifactItem"
      ( \o ->
          XPSModelArtifactItem
            Core.<$> (o Core..:? "artifactFormat")
            Core.<*> (o Core..:? "gcsUri")
      )

instance Core.ToJSON XPSModelArtifactItem where
  toJSON XPSModelArtifactItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("artifactFormat" Core..=) Core.<$> artifactFormat,
            ("gcsUri" Core..=) Core.<$> gcsUri
          ]
      )

--
-- /See:/ 'newXPSPreprocessResponse' smart constructor.
data XPSPreprocessResponse = XPSPreprocessResponse
  { -- | Preprocessed examples, that are to be imported into AutoML storage. This should point to RecordIO file(s) of PreprocessedExample messages. The PreprocessedExample.mvp/training/data-s returned here are later verbatim passed to Train() call in TrainExample.mvp/training/data.
    outputExampleSet :: (Core.Maybe XPSExampleSet),
    speechPreprocessResp :: (Core.Maybe XPSSpeechPreprocessResponse),
    tablesPreprocessResponse :: (Core.Maybe XPSTablesPreprocessResponse),
    translationPreprocessResp :: (Core.Maybe XPSTranslationPreprocessResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSPreprocessResponse' with the minimum fields required to make a request.
newXPSPreprocessResponse ::
  XPSPreprocessResponse
newXPSPreprocessResponse =
  XPSPreprocessResponse
    { outputExampleSet = Core.Nothing,
      speechPreprocessResp = Core.Nothing,
      tablesPreprocessResponse = Core.Nothing,
      translationPreprocessResp = Core.Nothing
    }

instance Core.FromJSON XPSPreprocessResponse where
  parseJSON =
    Core.withObject
      "XPSPreprocessResponse"
      ( \o ->
          XPSPreprocessResponse
            Core.<$> (o Core..:? "outputExampleSet")
            Core.<*> (o Core..:? "speechPreprocessResp")
            Core.<*> (o Core..:? "tablesPreprocessResponse")
            Core.<*> (o Core..:? "translationPreprocessResp")
      )

instance Core.ToJSON XPSPreprocessResponse where
  toJSON XPSPreprocessResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("outputExampleSet" Core..=) Core.<$> outputExampleSet,
            ("speechPreprocessResp" Core..=) Core.<$> speechPreprocessResp,
            ("tablesPreprocessResponse" Core..=)
              Core.<$> tablesPreprocessResponse,
            ("translationPreprocessResp" Core..=)
              Core.<$> translationPreprocessResp
          ]
      )

-- | Model evaluation metrics for regression problems. It can be used for Tables.
--
-- /See:/ 'newXPSRegressionEvaluationMetrics' smart constructor.
data XPSRegressionEvaluationMetrics = XPSRegressionEvaluationMetrics
  { -- | Mean Absolute Error (MAE).
    meanAbsoluteError :: (Core.Maybe Core.Double),
    -- | Mean absolute percentage error. Only set if all ground truth values are positive.
    meanAbsolutePercentageError :: (Core.Maybe Core.Double),
    -- | R squared.
    rSquared :: (Core.Maybe Core.Double),
    -- | A list of actual versus predicted points for the model being evaluated.
    regressionMetricsEntries :: (Core.Maybe [XPSRegressionMetricsEntry]),
    -- | Root Mean Squared Error (RMSE).
    rootMeanSquaredError :: (Core.Maybe Core.Double),
    -- | Root mean squared log error.
    rootMeanSquaredLogError :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSRegressionEvaluationMetrics' with the minimum fields required to make a request.
newXPSRegressionEvaluationMetrics ::
  XPSRegressionEvaluationMetrics
newXPSRegressionEvaluationMetrics =
  XPSRegressionEvaluationMetrics
    { meanAbsoluteError = Core.Nothing,
      meanAbsolutePercentageError = Core.Nothing,
      rSquared = Core.Nothing,
      regressionMetricsEntries = Core.Nothing,
      rootMeanSquaredError = Core.Nothing,
      rootMeanSquaredLogError = Core.Nothing
    }

instance Core.FromJSON XPSRegressionEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSRegressionEvaluationMetrics"
      ( \o ->
          XPSRegressionEvaluationMetrics
            Core.<$> (o Core..:? "meanAbsoluteError")
            Core.<*> (o Core..:? "meanAbsolutePercentageError")
            Core.<*> (o Core..:? "rSquared")
            Core.<*> (o Core..:? "regressionMetricsEntries")
            Core.<*> (o Core..:? "rootMeanSquaredError")
            Core.<*> (o Core..:? "rootMeanSquaredLogError")
      )

instance Core.ToJSON XPSRegressionEvaluationMetrics where
  toJSON XPSRegressionEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("meanAbsoluteError" Core..=) Core.<$> meanAbsoluteError,
            ("meanAbsolutePercentageError" Core..=)
              Core.<$> meanAbsolutePercentageError,
            ("rSquared" Core..=) Core.<$> rSquared,
            ("regressionMetricsEntries" Core..=)
              Core.<$> regressionMetricsEntries,
            ("rootMeanSquaredError" Core..=) Core.<$> rootMeanSquaredError,
            ("rootMeanSquaredLogError" Core..=)
              Core.<$> rootMeanSquaredLogError
          ]
      )

-- | A pair of actual & observed values for the model being evaluated.
--
-- /See:/ 'newXPSRegressionMetricsEntry' smart constructor.
data XPSRegressionMetricsEntry = XPSRegressionMetricsEntry
  { -- | The observed value for a row in the dataset.
    predictedValue :: (Core.Maybe Core.Double),
    -- | The actual target value for a row in the dataset.
    trueValue :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSRegressionMetricsEntry' with the minimum fields required to make a request.
newXPSRegressionMetricsEntry ::
  XPSRegressionMetricsEntry
newXPSRegressionMetricsEntry =
  XPSRegressionMetricsEntry
    { predictedValue = Core.Nothing,
      trueValue = Core.Nothing
    }

instance Core.FromJSON XPSRegressionMetricsEntry where
  parseJSON =
    Core.withObject
      "XPSRegressionMetricsEntry"
      ( \o ->
          XPSRegressionMetricsEntry
            Core.<$> (o Core..:? "predictedValue")
            Core.<*> (o Core..:? "trueValue")
      )

instance Core.ToJSON XPSRegressionMetricsEntry where
  toJSON XPSRegressionMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("predictedValue" Core..=) Core.<$> predictedValue,
            ("trueValue" Core..=) Core.<$> trueValue
          ]
      )

--
-- /See:/ 'newXPSReportingMetrics' smart constructor.
data XPSReportingMetrics = XPSReportingMetrics
  { -- | The effective time training used. If set, this is used for quota management and billing. Deprecated. AutoML BE doesn\'t use this. Don\'t set.
    effectiveTrainingDuration :: (Core.Maybe Core.Duration),
    -- | One entry per metric name. The values must be aggregated per metric name.
    metricEntries :: (Core.Maybe [XPSMetricEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSReportingMetrics' with the minimum fields required to make a request.
newXPSReportingMetrics ::
  XPSReportingMetrics
newXPSReportingMetrics =
  XPSReportingMetrics
    { effectiveTrainingDuration = Core.Nothing,
      metricEntries = Core.Nothing
    }

instance Core.FromJSON XPSReportingMetrics where
  parseJSON =
    Core.withObject
      "XPSReportingMetrics"
      ( \o ->
          XPSReportingMetrics
            Core.<$> (o Core..:? "effectiveTrainingDuration")
            Core.<*> (o Core..:? "metricEntries")
      )

instance Core.ToJSON XPSReportingMetrics where
  toJSON XPSReportingMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("effectiveTrainingDuration" Core..=)
              Core.<$> effectiveTrainingDuration,
            ("metricEntries" Core..=) Core.<$> metricEntries
          ]
      )

--
-- /See:/ 'newXPSResponseExplanationMetadata' smart constructor.
data XPSResponseExplanationMetadata = XPSResponseExplanationMetadata
  { -- | Metadata of the input.
    inputs :: (Core.Maybe XPSResponseExplanationMetadata_Inputs),
    -- | Metadata of the output.
    outputs :: (Core.Maybe XPSResponseExplanationMetadata_Outputs)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSResponseExplanationMetadata' with the minimum fields required to make a request.
newXPSResponseExplanationMetadata ::
  XPSResponseExplanationMetadata
newXPSResponseExplanationMetadata =
  XPSResponseExplanationMetadata
    { inputs = Core.Nothing,
      outputs = Core.Nothing
    }

instance Core.FromJSON XPSResponseExplanationMetadata where
  parseJSON =
    Core.withObject
      "XPSResponseExplanationMetadata"
      ( \o ->
          XPSResponseExplanationMetadata
            Core.<$> (o Core..:? "inputs")
            Core.<*> (o Core..:? "outputs")
      )

instance Core.ToJSON XPSResponseExplanationMetadata where
  toJSON XPSResponseExplanationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("inputs" Core..=) Core.<$> inputs,
            ("outputs" Core..=) Core.<$> outputs
          ]
      )

-- | Metadata of the input.
--
-- /See:/ 'newXPSResponseExplanationMetadata_Inputs' smart constructor.
newtype XPSResponseExplanationMetadata_Inputs = XPSResponseExplanationMetadata_Inputs
  { additional ::
      ( Core.HashMap
          Core.Text
          XPSResponseExplanationMetadataInputMetadata
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSResponseExplanationMetadata_Inputs' with the minimum fields required to make a request.
newXPSResponseExplanationMetadata_Inputs ::
  -- |  See 'additional'.
  Core.HashMap
    Core.Text
    XPSResponseExplanationMetadataInputMetadata ->
  XPSResponseExplanationMetadata_Inputs
newXPSResponseExplanationMetadata_Inputs additional =
  XPSResponseExplanationMetadata_Inputs {additional = additional}

instance Core.FromJSON XPSResponseExplanationMetadata_Inputs where
  parseJSON =
    Core.withObject
      "XPSResponseExplanationMetadata_Inputs"
      ( \o ->
          XPSResponseExplanationMetadata_Inputs
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON XPSResponseExplanationMetadata_Inputs where
  toJSON XPSResponseExplanationMetadata_Inputs {..} =
    Core.toJSON additional

-- | Metadata of the output.
--
-- /See:/ 'newXPSResponseExplanationMetadata_Outputs' smart constructor.
newtype XPSResponseExplanationMetadata_Outputs = XPSResponseExplanationMetadata_Outputs
  { additional ::
      ( Core.HashMap
          Core.Text
          XPSResponseExplanationMetadataOutputMetadata
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSResponseExplanationMetadata_Outputs' with the minimum fields required to make a request.
newXPSResponseExplanationMetadata_Outputs ::
  -- |  See 'additional'.
  Core.HashMap
    Core.Text
    XPSResponseExplanationMetadataOutputMetadata ->
  XPSResponseExplanationMetadata_Outputs
newXPSResponseExplanationMetadata_Outputs additional =
  XPSResponseExplanationMetadata_Outputs {additional = additional}

instance Core.FromJSON XPSResponseExplanationMetadata_Outputs where
  parseJSON =
    Core.withObject
      "XPSResponseExplanationMetadata_Outputs"
      ( \o ->
          XPSResponseExplanationMetadata_Outputs
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON XPSResponseExplanationMetadata_Outputs where
  toJSON XPSResponseExplanationMetadata_Outputs {..} =
    Core.toJSON additional

-- | Metadata of the input of a feature.
--
-- /See:/ 'newXPSResponseExplanationMetadataInputMetadata' smart constructor.
data XPSResponseExplanationMetadataInputMetadata = XPSResponseExplanationMetadataInputMetadata
  { -- | Name of the input tensor for this model. Only needed in train response.
    inputTensorName :: (Core.Maybe Core.Text),
    -- | Modality of the feature. Valid values are: numeric, image. Defaults to numeric.
    modality :: (Core.Maybe XPSResponseExplanationMetadataInputMetadata_Modality),
    -- | Visualization configurations for image explanation.
    visualizationConfig :: (Core.Maybe XPSVisualization)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSResponseExplanationMetadataInputMetadata' with the minimum fields required to make a request.
newXPSResponseExplanationMetadataInputMetadata ::
  XPSResponseExplanationMetadataInputMetadata
newXPSResponseExplanationMetadataInputMetadata =
  XPSResponseExplanationMetadataInputMetadata
    { inputTensorName =
        Core.Nothing,
      modality = Core.Nothing,
      visualizationConfig = Core.Nothing
    }

instance Core.FromJSON XPSResponseExplanationMetadataInputMetadata where
  parseJSON =
    Core.withObject
      "XPSResponseExplanationMetadataInputMetadata"
      ( \o ->
          XPSResponseExplanationMetadataInputMetadata
            Core.<$> (o Core..:? "inputTensorName")
            Core.<*> (o Core..:? "modality")
            Core.<*> (o Core..:? "visualizationConfig")
      )

instance Core.ToJSON XPSResponseExplanationMetadataInputMetadata where
  toJSON XPSResponseExplanationMetadataInputMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("inputTensorName" Core..=) Core.<$> inputTensorName,
            ("modality" Core..=) Core.<$> modality,
            ("visualizationConfig" Core..=) Core.<$> visualizationConfig
          ]
      )

-- | Metadata of the prediction output to be explained.
--
-- /See:/ 'newXPSResponseExplanationMetadataOutputMetadata' smart constructor.
newtype XPSResponseExplanationMetadataOutputMetadata = XPSResponseExplanationMetadataOutputMetadata
  { -- | Name of the output tensor. Only needed in train response.
    outputTensorName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSResponseExplanationMetadataOutputMetadata' with the minimum fields required to make a request.
newXPSResponseExplanationMetadataOutputMetadata ::
  XPSResponseExplanationMetadataOutputMetadata
newXPSResponseExplanationMetadataOutputMetadata =
  XPSResponseExplanationMetadataOutputMetadata
    { outputTensorName =
        Core.Nothing
    }

instance Core.FromJSON XPSResponseExplanationMetadataOutputMetadata where
  parseJSON =
    Core.withObject
      "XPSResponseExplanationMetadataOutputMetadata"
      ( \o ->
          XPSResponseExplanationMetadataOutputMetadata
            Core.<$> (o Core..:? "outputTensorName")
      )

instance Core.ToJSON XPSResponseExplanationMetadataOutputMetadata where
  toJSON XPSResponseExplanationMetadataOutputMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("outputTensorName" Core..=) Core.<$> outputTensorName]
      )

--
-- /See:/ 'newXPSResponseExplanationParameters' smart constructor.
data XPSResponseExplanationParameters = XPSResponseExplanationParameters
  { -- | An attribution method that computes Aumann-Shapley values taking advantage of the model\'s fully differentiable structure. Refer to this paper for more details: https:\/\/arxiv.org\/abs\/1703.01365
    integratedGradientsAttribution :: (Core.Maybe XPSIntegratedGradientsAttribution),
    -- | An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model\'s fully differentiable structure. Refer to this paper for more details: https:\/\/arxiv.org\/abs\/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
    xraiAttribution :: (Core.Maybe XPSXraiAttribution)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSResponseExplanationParameters' with the minimum fields required to make a request.
newXPSResponseExplanationParameters ::
  XPSResponseExplanationParameters
newXPSResponseExplanationParameters =
  XPSResponseExplanationParameters
    { integratedGradientsAttribution =
        Core.Nothing,
      xraiAttribution = Core.Nothing
    }

instance Core.FromJSON XPSResponseExplanationParameters where
  parseJSON =
    Core.withObject
      "XPSResponseExplanationParameters"
      ( \o ->
          XPSResponseExplanationParameters
            Core.<$> (o Core..:? "integratedGradientsAttribution")
            Core.<*> (o Core..:? "xraiAttribution")
      )

instance Core.ToJSON XPSResponseExplanationParameters where
  toJSON XPSResponseExplanationParameters {..} =
    Core.object
      ( Core.catMaybes
          [ ("integratedGradientsAttribution" Core..=)
              Core.<$> integratedGradientsAttribution,
            ("xraiAttribution" Core..=) Core.<$> xraiAttribution
          ]
      )

-- | Specification of Model explanation. Feature-based XAI in AutoML Vision ICN is deprecated.
--
-- /See:/ 'newXPSResponseExplanationSpec' smart constructor.
data XPSResponseExplanationSpec = XPSResponseExplanationSpec
  { -- | Explanation type. For AutoML Image Classification models, possible values are: * @image-integrated-gradients@ * @image-xrai@
    explanationType :: (Core.Maybe Core.Text),
    -- | Metadata describing the Model\'s input and output for explanation.
    metadata :: (Core.Maybe XPSResponseExplanationMetadata),
    -- | Parameters that configure explaining of the Model\'s predictions.
    parameters :: (Core.Maybe XPSResponseExplanationParameters)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSResponseExplanationSpec' with the minimum fields required to make a request.
newXPSResponseExplanationSpec ::
  XPSResponseExplanationSpec
newXPSResponseExplanationSpec =
  XPSResponseExplanationSpec
    { explanationType = Core.Nothing,
      metadata = Core.Nothing,
      parameters = Core.Nothing
    }

instance Core.FromJSON XPSResponseExplanationSpec where
  parseJSON =
    Core.withObject
      "XPSResponseExplanationSpec"
      ( \o ->
          XPSResponseExplanationSpec
            Core.<$> (o Core..:? "explanationType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "parameters")
      )

instance Core.ToJSON XPSResponseExplanationSpec where
  toJSON XPSResponseExplanationSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("explanationType" Core..=) Core.<$> explanationType,
            ("metadata" Core..=) Core.<$> metadata,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

--
-- /See:/ 'newXPSRow' smart constructor.
data XPSRow = XPSRow
  { -- | The ids of the columns. Note: The below @values@ field must match order of this field, if this field is set.
    columnIds :: (Core.Maybe [Core.Int32]),
    -- | The values of the row cells, given in the same order as the column/ids. If column/ids is not set, then in the same order as the input/feature/column_ids in TablesModelMetadata.
    values :: (Core.Maybe [Core.Value])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSRow' with the minimum fields required to make a request.
newXPSRow ::
  XPSRow
newXPSRow = XPSRow {columnIds = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON XPSRow where
  parseJSON =
    Core.withObject
      "XPSRow"
      ( \o ->
          XPSRow
            Core.<$> (o Core..:? "columnIds")
            Core.<*> (o Core..:? "values")
      )

instance Core.ToJSON XPSRow where
  toJSON XPSRow {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnIds" Core..=) Core.<$> columnIds,
            ("values" Core..=) Core.<$> values
          ]
      )

--
-- /See:/ 'newXPSSpeechEvaluationMetrics' smart constructor.
newtype XPSSpeechEvaluationMetrics = XPSSpeechEvaluationMetrics
  { -- | Evaluation metrics for all submodels contained in this model.
    subModelEvaluationMetrics :: (Core.Maybe [XPSSpeechEvaluationMetricsSubModelEvaluationMetric])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSSpeechEvaluationMetrics' with the minimum fields required to make a request.
newXPSSpeechEvaluationMetrics ::
  XPSSpeechEvaluationMetrics
newXPSSpeechEvaluationMetrics =
  XPSSpeechEvaluationMetrics
    { subModelEvaluationMetrics =
        Core.Nothing
    }

instance Core.FromJSON XPSSpeechEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSSpeechEvaluationMetrics"
      ( \o ->
          XPSSpeechEvaluationMetrics
            Core.<$> (o Core..:? "subModelEvaluationMetrics")
      )

instance Core.ToJSON XPSSpeechEvaluationMetrics where
  toJSON XPSSpeechEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("subModelEvaluationMetrics" Core..=)
              Core.<$> subModelEvaluationMetrics
          ]
      )

--
-- /See:/ 'newXPSSpeechEvaluationMetricsSubModelEvaluationMetric' smart constructor.
data XPSSpeechEvaluationMetricsSubModelEvaluationMetric = XPSSpeechEvaluationMetricsSubModelEvaluationMetric
  { -- | Type of the biasing model.
    biasingModelType ::
      ( Core.Maybe
          XPSSpeechEvaluationMetricsSubModelEvaluationMetric_BiasingModelType
      ),
    -- | If true then it means we have an enhanced version of the biasing models.
    isEnhancedModel :: (Core.Maybe Core.Bool),
    numDeletions :: (Core.Maybe Core.Int32),
    numInsertions :: (Core.Maybe Core.Int32),
    numSubstitutions :: (Core.Maybe Core.Int32),
    -- | Number of utterances used in the wer computation.
    numUtterances :: (Core.Maybe Core.Int32),
    -- | Number of words over which the word error rate was computed.
    numWords :: (Core.Maybe Core.Int32),
    -- | Below fields are used for debugging purposes
    sentenceAccuracy :: (Core.Maybe Core.Double),
    -- | Word error rate (standard error metric used for speech recognition).
    wer :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSSpeechEvaluationMetricsSubModelEvaluationMetric' with the minimum fields required to make a request.
newXPSSpeechEvaluationMetricsSubModelEvaluationMetric ::
  XPSSpeechEvaluationMetricsSubModelEvaluationMetric
newXPSSpeechEvaluationMetricsSubModelEvaluationMetric =
  XPSSpeechEvaluationMetricsSubModelEvaluationMetric
    { biasingModelType =
        Core.Nothing,
      isEnhancedModel = Core.Nothing,
      numDeletions = Core.Nothing,
      numInsertions = Core.Nothing,
      numSubstitutions = Core.Nothing,
      numUtterances = Core.Nothing,
      numWords = Core.Nothing,
      sentenceAccuracy = Core.Nothing,
      wer = Core.Nothing
    }

instance
  Core.FromJSON
    XPSSpeechEvaluationMetricsSubModelEvaluationMetric
  where
  parseJSON =
    Core.withObject
      "XPSSpeechEvaluationMetricsSubModelEvaluationMetric"
      ( \o ->
          XPSSpeechEvaluationMetricsSubModelEvaluationMetric
            Core.<$> (o Core..:? "biasingModelType")
            Core.<*> (o Core..:? "isEnhancedModel")
            Core.<*> (o Core..:? "numDeletions")
            Core.<*> (o Core..:? "numInsertions")
            Core.<*> (o Core..:? "numSubstitutions")
            Core.<*> (o Core..:? "numUtterances")
            Core.<*> (o Core..:? "numWords")
            Core.<*> (o Core..:? "sentenceAccuracy")
            Core.<*> (o Core..:? "wer")
      )

instance
  Core.ToJSON
    XPSSpeechEvaluationMetricsSubModelEvaluationMetric
  where
  toJSON XPSSpeechEvaluationMetricsSubModelEvaluationMetric {..} =
    Core.object
      ( Core.catMaybes
          [ ("biasingModelType" Core..=) Core.<$> biasingModelType,
            ("isEnhancedModel" Core..=) Core.<$> isEnhancedModel,
            ("numDeletions" Core..=) Core.<$> numDeletions,
            ("numInsertions" Core..=) Core.<$> numInsertions,
            ("numSubstitutions" Core..=) Core.<$> numSubstitutions,
            ("numUtterances" Core..=) Core.<$> numUtterances,
            ("numWords" Core..=) Core.<$> numWords,
            ("sentenceAccuracy" Core..=) Core.<$> sentenceAccuracy,
            ("wer" Core..=) Core.<$> wer
          ]
      )

--
-- /See:/ 'newXPSSpeechModelSpec' smart constructor.
data XPSSpeechModelSpec = XPSSpeechModelSpec
  { -- | Required for speech xps backend. Speech xps has to use dataset/id and model/id as the primary key in db so that speech API can query the db directly.
    datasetId :: (Core.Maybe Core.Int64),
    language :: (Core.Maybe Core.Text),
    -- | Model specs for all submodels contained in this model.
    subModelSpecs :: (Core.Maybe [XPSSpeechModelSpecSubModelSpec])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSSpeechModelSpec' with the minimum fields required to make a request.
newXPSSpeechModelSpec ::
  XPSSpeechModelSpec
newXPSSpeechModelSpec =
  XPSSpeechModelSpec
    { datasetId = Core.Nothing,
      language = Core.Nothing,
      subModelSpecs = Core.Nothing
    }

instance Core.FromJSON XPSSpeechModelSpec where
  parseJSON =
    Core.withObject
      "XPSSpeechModelSpec"
      ( \o ->
          XPSSpeechModelSpec
            Core.<$> (o Core..:? "datasetId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "language")
            Core.<*> (o Core..:? "subModelSpecs")
      )

instance Core.ToJSON XPSSpeechModelSpec where
  toJSON XPSSpeechModelSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("datasetId" Core..=) Core.. Core.AsText Core.<$> datasetId,
            ("language" Core..=) Core.<$> language,
            ("subModelSpecs" Core..=) Core.<$> subModelSpecs
          ]
      )

--
-- /See:/ 'newXPSSpeechModelSpecSubModelSpec' smart constructor.
data XPSSpeechModelSpecSubModelSpec = XPSSpeechModelSpecSubModelSpec
  { -- | Type of the biasing model.
    biasingModelType :: (Core.Maybe XPSSpeechModelSpecSubModelSpec_BiasingModelType),
    -- | In S3, Recognition ClientContextId.client_id
    clientId :: (Core.Maybe Core.Text),
    -- | In S3, Recognition ClientContextId.context_id
    contextId :: (Core.Maybe Core.Text),
    -- | If true then it means we have an enhanced version of the biasing models.
    isEnhancedModel :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSSpeechModelSpecSubModelSpec' with the minimum fields required to make a request.
newXPSSpeechModelSpecSubModelSpec ::
  XPSSpeechModelSpecSubModelSpec
newXPSSpeechModelSpecSubModelSpec =
  XPSSpeechModelSpecSubModelSpec
    { biasingModelType = Core.Nothing,
      clientId = Core.Nothing,
      contextId = Core.Nothing,
      isEnhancedModel = Core.Nothing
    }

instance Core.FromJSON XPSSpeechModelSpecSubModelSpec where
  parseJSON =
    Core.withObject
      "XPSSpeechModelSpecSubModelSpec"
      ( \o ->
          XPSSpeechModelSpecSubModelSpec
            Core.<$> (o Core..:? "biasingModelType")
            Core.<*> (o Core..:? "clientId")
            Core.<*> (o Core..:? "contextId")
            Core.<*> (o Core..:? "isEnhancedModel")
      )

instance Core.ToJSON XPSSpeechModelSpecSubModelSpec where
  toJSON XPSSpeechModelSpecSubModelSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("biasingModelType" Core..=) Core.<$> biasingModelType,
            ("clientId" Core..=) Core.<$> clientId,
            ("contextId" Core..=) Core.<$> contextId,
            ("isEnhancedModel" Core..=) Core.<$> isEnhancedModel
          ]
      )

--
-- /See:/ 'newXPSSpeechPreprocessResponse' smart constructor.
data XPSSpeechPreprocessResponse = XPSSpeechPreprocessResponse
  { -- | Location od shards of sstables (test data) of DataUtterance protos.
    cnsTestDataPath :: (Core.Maybe Core.Text),
    -- | Location of shards of sstables (training data) of DataUtterance protos.
    cnsTrainDataPath :: (Core.Maybe Core.Text),
    -- | The metrics for prebuilt speech models. They are included here because there is no prebuilt speech models stored in the AutoML.
    prebuiltModelEvaluationMetrics :: (Core.Maybe XPSSpeechEvaluationMetrics),
    -- | Stats associated with the data.
    speechPreprocessStats :: (Core.Maybe XPSSpeechPreprocessStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSSpeechPreprocessResponse' with the minimum fields required to make a request.
newXPSSpeechPreprocessResponse ::
  XPSSpeechPreprocessResponse
newXPSSpeechPreprocessResponse =
  XPSSpeechPreprocessResponse
    { cnsTestDataPath = Core.Nothing,
      cnsTrainDataPath = Core.Nothing,
      prebuiltModelEvaluationMetrics = Core.Nothing,
      speechPreprocessStats = Core.Nothing
    }

instance Core.FromJSON XPSSpeechPreprocessResponse where
  parseJSON =
    Core.withObject
      "XPSSpeechPreprocessResponse"
      ( \o ->
          XPSSpeechPreprocessResponse
            Core.<$> (o Core..:? "cnsTestDataPath")
            Core.<*> (o Core..:? "cnsTrainDataPath")
            Core.<*> (o Core..:? "prebuiltModelEvaluationMetrics")
            Core.<*> (o Core..:? "speechPreprocessStats")
      )

instance Core.ToJSON XPSSpeechPreprocessResponse where
  toJSON XPSSpeechPreprocessResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cnsTestDataPath" Core..=) Core.<$> cnsTestDataPath,
            ("cnsTrainDataPath" Core..=) Core.<$> cnsTrainDataPath,
            ("prebuiltModelEvaluationMetrics" Core..=)
              Core.<$> prebuiltModelEvaluationMetrics,
            ("speechPreprocessStats" Core..=) Core.<$> speechPreprocessStats
          ]
      )

--
-- /See:/ 'newXPSSpeechPreprocessStats' smart constructor.
data XPSSpeechPreprocessStats = XPSSpeechPreprocessStats
  { -- | Different types of data errors and the counts associated with them.
    dataErrors :: (Core.Maybe [XPSDataErrors]),
    -- | The number of rows marked HUMAN_LABELLED
    numHumanLabeledExamples :: (Core.Maybe Core.Int32),
    -- | The number of samples found in the previously recorded logs data.
    numLogsExamples :: (Core.Maybe Core.Int32),
    -- | The number of rows marked as MACHINE_TRANSCRIBED
    numMachineTranscribedExamples :: (Core.Maybe Core.Int32),
    -- | The number of examples labelled as TEST by Speech xps server.
    testExamplesCount :: (Core.Maybe Core.Int32),
    -- | The number of sentences in the test data set.
    testSentencesCount :: (Core.Maybe Core.Int32),
    -- | The number of words in the test data set.
    testWordsCount :: (Core.Maybe Core.Int32),
    -- | The number of examples labeled as TRAIN by Speech xps server.
    trainExamplesCount :: (Core.Maybe Core.Int32),
    -- | The number of sentences in the training data set.
    trainSentencesCount :: (Core.Maybe Core.Int32),
    -- | The number of words in the training data set.
    trainWordsCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSSpeechPreprocessStats' with the minimum fields required to make a request.
newXPSSpeechPreprocessStats ::
  XPSSpeechPreprocessStats
newXPSSpeechPreprocessStats =
  XPSSpeechPreprocessStats
    { dataErrors = Core.Nothing,
      numHumanLabeledExamples = Core.Nothing,
      numLogsExamples = Core.Nothing,
      numMachineTranscribedExamples = Core.Nothing,
      testExamplesCount = Core.Nothing,
      testSentencesCount = Core.Nothing,
      testWordsCount = Core.Nothing,
      trainExamplesCount = Core.Nothing,
      trainSentencesCount = Core.Nothing,
      trainWordsCount = Core.Nothing
    }

instance Core.FromJSON XPSSpeechPreprocessStats where
  parseJSON =
    Core.withObject
      "XPSSpeechPreprocessStats"
      ( \o ->
          XPSSpeechPreprocessStats
            Core.<$> (o Core..:? "dataErrors")
            Core.<*> (o Core..:? "numHumanLabeledExamples")
            Core.<*> (o Core..:? "numLogsExamples")
            Core.<*> (o Core..:? "numMachineTranscribedExamples")
            Core.<*> (o Core..:? "testExamplesCount")
            Core.<*> (o Core..:? "testSentencesCount")
            Core.<*> (o Core..:? "testWordsCount")
            Core.<*> (o Core..:? "trainExamplesCount")
            Core.<*> (o Core..:? "trainSentencesCount")
            Core.<*> (o Core..:? "trainWordsCount")
      )

instance Core.ToJSON XPSSpeechPreprocessStats where
  toJSON XPSSpeechPreprocessStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataErrors" Core..=) Core.<$> dataErrors,
            ("numHumanLabeledExamples" Core..=)
              Core.<$> numHumanLabeledExamples,
            ("numLogsExamples" Core..=) Core.<$> numLogsExamples,
            ("numMachineTranscribedExamples" Core..=)
              Core.<$> numMachineTranscribedExamples,
            ("testExamplesCount" Core..=) Core.<$> testExamplesCount,
            ("testSentencesCount" Core..=) Core.<$> testSentencesCount,
            ("testWordsCount" Core..=) Core.<$> testWordsCount,
            ("trainExamplesCount" Core..=) Core.<$> trainExamplesCount,
            ("trainSentencesCount" Core..=) Core.<$> trainSentencesCount,
            ("trainWordsCount" Core..=) Core.<$> trainWordsCount
          ]
      )

-- | The data statistics of a series of STRING values.
--
-- /See:/ 'newXPSStringStats' smart constructor.
data XPSStringStats = XPSStringStats
  { commonStats :: (Core.Maybe XPSCommonStats),
    -- | The statistics of the top 20 unigrams, ordered by StringStats.UnigramStats.count.
    topUnigramStats :: (Core.Maybe [XPSStringStatsUnigramStats])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSStringStats' with the minimum fields required to make a request.
newXPSStringStats ::
  XPSStringStats
newXPSStringStats =
  XPSStringStats
    { commonStats = Core.Nothing,
      topUnigramStats = Core.Nothing
    }

instance Core.FromJSON XPSStringStats where
  parseJSON =
    Core.withObject
      "XPSStringStats"
      ( \o ->
          XPSStringStats
            Core.<$> (o Core..:? "commonStats")
            Core.<*> (o Core..:? "topUnigramStats")
      )

instance Core.ToJSON XPSStringStats where
  toJSON XPSStringStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonStats" Core..=) Core.<$> commonStats,
            ("topUnigramStats" Core..=) Core.<$> topUnigramStats
          ]
      )

-- | The statistics of a unigram.
--
-- /See:/ 'newXPSStringStatsUnigramStats' smart constructor.
data XPSStringStatsUnigramStats = XPSStringStatsUnigramStats
  { -- | The number of occurrences of this unigram in the series.
    count :: (Core.Maybe Core.Int64),
    -- | The unigram.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSStringStatsUnigramStats' with the minimum fields required to make a request.
newXPSStringStatsUnigramStats ::
  XPSStringStatsUnigramStats
newXPSStringStatsUnigramStats =
  XPSStringStatsUnigramStats
    { count = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON XPSStringStatsUnigramStats where
  parseJSON =
    Core.withObject
      "XPSStringStatsUnigramStats"
      ( \o ->
          XPSStringStatsUnigramStats
            Core.<$> (o Core..:? "count" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON XPSStringStatsUnigramStats where
  toJSON XPSStringStatsUnigramStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | The data statistics of a series of STRUCT values.
--
-- /See:/ 'newXPSStructStats' smart constructor.
data XPSStructStats = XPSStructStats
  { commonStats :: (Core.Maybe XPSCommonStats),
    -- | Map from a field name of the struct to data stats aggregated over series of all data in that field across all the structs.
    fieldStats :: (Core.Maybe XPSStructStats_FieldStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSStructStats' with the minimum fields required to make a request.
newXPSStructStats ::
  XPSStructStats
newXPSStructStats =
  XPSStructStats
    { commonStats = Core.Nothing,
      fieldStats = Core.Nothing
    }

instance Core.FromJSON XPSStructStats where
  parseJSON =
    Core.withObject
      "XPSStructStats"
      ( \o ->
          XPSStructStats
            Core.<$> (o Core..:? "commonStats")
            Core.<*> (o Core..:? "fieldStats")
      )

instance Core.ToJSON XPSStructStats where
  toJSON XPSStructStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonStats" Core..=) Core.<$> commonStats,
            ("fieldStats" Core..=) Core.<$> fieldStats
          ]
      )

-- | Map from a field name of the struct to data stats aggregated over series of all data in that field across all the structs.
--
-- /See:/ 'newXPSStructStats_FieldStats' smart constructor.
newtype XPSStructStats_FieldStats = XPSStructStats_FieldStats
  { additional :: (Core.HashMap Core.Text XPSDataStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSStructStats_FieldStats' with the minimum fields required to make a request.
newXPSStructStats_FieldStats ::
  -- |  See 'additional'.
  Core.HashMap Core.Text XPSDataStats ->
  XPSStructStats_FieldStats
newXPSStructStats_FieldStats additional =
  XPSStructStats_FieldStats {additional = additional}

instance Core.FromJSON XPSStructStats_FieldStats where
  parseJSON =
    Core.withObject
      "XPSStructStats_FieldStats"
      ( \o ->
          XPSStructStats_FieldStats Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON XPSStructStats_FieldStats where
  toJSON XPSStructStats_FieldStats {..} = Core.toJSON additional

-- | @StructType@ defines the DataType-s of a STRUCT type.
--
-- /See:/ 'newXPSStructType' smart constructor.
newtype XPSStructType = XPSStructType
  { -- | Unordered map of struct field names to their data types.
    fields :: (Core.Maybe XPSStructType_Fields)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSStructType' with the minimum fields required to make a request.
newXPSStructType ::
  XPSStructType
newXPSStructType = XPSStructType {fields = Core.Nothing}

instance Core.FromJSON XPSStructType where
  parseJSON =
    Core.withObject
      "XPSStructType"
      (\o -> XPSStructType Core.<$> (o Core..:? "fields"))

instance Core.ToJSON XPSStructType where
  toJSON XPSStructType {..} =
    Core.object (Core.catMaybes [("fields" Core..=) Core.<$> fields])

-- | Unordered map of struct field names to their data types.
--
-- /See:/ 'newXPSStructType_Fields' smart constructor.
newtype XPSStructType_Fields = XPSStructType_Fields
  { additional :: (Core.HashMap Core.Text XPSDataType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSStructType_Fields' with the minimum fields required to make a request.
newXPSStructType_Fields ::
  -- |  See 'additional'.
  Core.HashMap Core.Text XPSDataType ->
  XPSStructType_Fields
newXPSStructType_Fields additional =
  XPSStructType_Fields {additional = additional}

instance Core.FromJSON XPSStructType_Fields where
  parseJSON =
    Core.withObject
      "XPSStructType_Fields"
      (\o -> XPSStructType_Fields Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON XPSStructType_Fields where
  toJSON XPSStructType_Fields {..} = Core.toJSON additional

--
-- /See:/ 'newXPSTableSpec' smart constructor.
data XPSTableSpec = XPSTableSpec
  { -- | Mapping from column id to column spec.
    columnSpecs :: (Core.Maybe XPSTableSpec_ColumnSpecs),
    -- | The total size of imported data of the table.
    importedDataSizeInBytes :: (Core.Maybe Core.Int64),
    -- | The number of rows in the table.
    rowCount :: (Core.Maybe Core.Int64),
    -- | The id of the time column.
    timeColumnId :: (Core.Maybe Core.Int32),
    -- | The number of valid rows.
    validRowCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTableSpec' with the minimum fields required to make a request.
newXPSTableSpec ::
  XPSTableSpec
newXPSTableSpec =
  XPSTableSpec
    { columnSpecs = Core.Nothing,
      importedDataSizeInBytes = Core.Nothing,
      rowCount = Core.Nothing,
      timeColumnId = Core.Nothing,
      validRowCount = Core.Nothing
    }

instance Core.FromJSON XPSTableSpec where
  parseJSON =
    Core.withObject
      "XPSTableSpec"
      ( \o ->
          XPSTableSpec
            Core.<$> (o Core..:? "columnSpecs")
            Core.<*> ( o
                         Core..:? "importedDataSizeInBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "rowCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "timeColumnId")
            Core.<*> (o Core..:? "validRowCount" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON XPSTableSpec where
  toJSON XPSTableSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnSpecs" Core..=) Core.<$> columnSpecs,
            ("importedDataSizeInBytes" Core..=)
              Core.. Core.AsText
              Core.<$> importedDataSizeInBytes,
            ("rowCount" Core..=) Core.. Core.AsText Core.<$> rowCount,
            ("timeColumnId" Core..=) Core.<$> timeColumnId,
            ("validRowCount" Core..=)
              Core.. Core.AsText
              Core.<$> validRowCount
          ]
      )

-- | Mapping from column id to column spec.
--
-- /See:/ 'newXPSTableSpec_ColumnSpecs' smart constructor.
newtype XPSTableSpec_ColumnSpecs = XPSTableSpec_ColumnSpecs
  { additional :: (Core.HashMap Core.Text XPSColumnSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTableSpec_ColumnSpecs' with the minimum fields required to make a request.
newXPSTableSpec_ColumnSpecs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text XPSColumnSpec ->
  XPSTableSpec_ColumnSpecs
newXPSTableSpec_ColumnSpecs additional =
  XPSTableSpec_ColumnSpecs {additional = additional}

instance Core.FromJSON XPSTableSpec_ColumnSpecs where
  parseJSON =
    Core.withObject
      "XPSTableSpec_ColumnSpecs"
      (\o -> XPSTableSpec_ColumnSpecs Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON XPSTableSpec_ColumnSpecs where
  toJSON XPSTableSpec_ColumnSpecs {..} = Core.toJSON additional

-- | Metrics for Tables classification problems.
--
-- /See:/ 'newXPSTablesClassificationMetrics' smart constructor.
newtype XPSTablesClassificationMetrics = XPSTablesClassificationMetrics
  { -- | Metrics building a curve.
    curveMetrics :: (Core.Maybe [XPSTablesClassificationMetricsCurveMetrics])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesClassificationMetrics' with the minimum fields required to make a request.
newXPSTablesClassificationMetrics ::
  XPSTablesClassificationMetrics
newXPSTablesClassificationMetrics =
  XPSTablesClassificationMetrics {curveMetrics = Core.Nothing}

instance Core.FromJSON XPSTablesClassificationMetrics where
  parseJSON =
    Core.withObject
      "XPSTablesClassificationMetrics"
      ( \o ->
          XPSTablesClassificationMetrics
            Core.<$> (o Core..:? "curveMetrics")
      )

instance Core.ToJSON XPSTablesClassificationMetrics where
  toJSON XPSTablesClassificationMetrics {..} =
    Core.object
      (Core.catMaybes [("curveMetrics" Core..=) Core.<$> curveMetrics])

-- | Metrics curve data point for a single value.
--
-- /See:/ 'newXPSTablesClassificationMetricsCurveMetrics' smart constructor.
data XPSTablesClassificationMetricsCurveMetrics = XPSTablesClassificationMetricsCurveMetrics
  { -- | The area under the precision-recall curve.
    aucPr :: (Core.Maybe Core.Double),
    -- | The area under receiver operating characteristic curve.
    aucRoc :: (Core.Maybe Core.Double),
    -- | Metrics that have confidence thresholds. Precision-recall curve and ROC curve can be derived from them.
    confidenceMetricsEntries :: (Core.Maybe [XPSTablesConfidenceMetricsEntry]),
    -- | The Log loss metric.
    logLoss :: (Core.Maybe Core.Double),
    -- | The position threshold value used to compute the metrics.
    positionThreshold :: (Core.Maybe Core.Int32),
    -- | The CATEGORY row value (for ARRAY unnested) the curve metrics are for.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesClassificationMetricsCurveMetrics' with the minimum fields required to make a request.
newXPSTablesClassificationMetricsCurveMetrics ::
  XPSTablesClassificationMetricsCurveMetrics
newXPSTablesClassificationMetricsCurveMetrics =
  XPSTablesClassificationMetricsCurveMetrics
    { aucPr = Core.Nothing,
      aucRoc = Core.Nothing,
      confidenceMetricsEntries = Core.Nothing,
      logLoss = Core.Nothing,
      positionThreshold = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON XPSTablesClassificationMetricsCurveMetrics where
  parseJSON =
    Core.withObject
      "XPSTablesClassificationMetricsCurveMetrics"
      ( \o ->
          XPSTablesClassificationMetricsCurveMetrics
            Core.<$> (o Core..:? "aucPr")
            Core.<*> (o Core..:? "aucRoc")
            Core.<*> (o Core..:? "confidenceMetricsEntries")
            Core.<*> (o Core..:? "logLoss")
            Core.<*> (o Core..:? "positionThreshold")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON XPSTablesClassificationMetricsCurveMetrics where
  toJSON XPSTablesClassificationMetricsCurveMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("aucPr" Core..=) Core.<$> aucPr,
            ("aucRoc" Core..=) Core.<$> aucRoc,
            ("confidenceMetricsEntries" Core..=)
              Core.<$> confidenceMetricsEntries,
            ("logLoss" Core..=) Core.<$> logLoss,
            ("positionThreshold" Core..=) Core.<$> positionThreshold,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Metrics for a single confidence threshold.
--
-- /See:/ 'newXPSTablesConfidenceMetricsEntry' smart constructor.
data XPSTablesConfidenceMetricsEntry = XPSTablesConfidenceMetricsEntry
  { -- | The confidence threshold value used to compute the metrics.
    confidenceThreshold :: (Core.Maybe Core.Double),
    -- | The harmonic mean of recall and precision. (2 * precision * recall) \/ (precision + recall)
    f1Score :: (Core.Maybe Core.Double),
    -- | False negative count.
    falseNegativeCount :: (Core.Maybe Core.Int64),
    -- | False positive count.
    falsePositiveCount :: (Core.Maybe Core.Int64),
    -- | FPR = #false positives \/ (#false positives + #true negatives)
    falsePositiveRate :: (Core.Maybe Core.Double),
    -- | Precision = #true positives \/ (#true positives + #false positives).
    precision :: (Core.Maybe Core.Double),
    -- | Recall = #true positives \/ (#true positives + #false negatives).
    recall :: (Core.Maybe Core.Double),
    -- | True negative count.
    trueNegativeCount :: (Core.Maybe Core.Int64),
    -- | True positive count.
    truePositiveCount :: (Core.Maybe Core.Int64),
    -- | TPR = #true positives \/ (#true positives + #false negatvies)
    truePositiveRate :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesConfidenceMetricsEntry' with the minimum fields required to make a request.
newXPSTablesConfidenceMetricsEntry ::
  XPSTablesConfidenceMetricsEntry
newXPSTablesConfidenceMetricsEntry =
  XPSTablesConfidenceMetricsEntry
    { confidenceThreshold =
        Core.Nothing,
      f1Score = Core.Nothing,
      falseNegativeCount = Core.Nothing,
      falsePositiveCount = Core.Nothing,
      falsePositiveRate = Core.Nothing,
      precision = Core.Nothing,
      recall = Core.Nothing,
      trueNegativeCount = Core.Nothing,
      truePositiveCount = Core.Nothing,
      truePositiveRate = Core.Nothing
    }

instance Core.FromJSON XPSTablesConfidenceMetricsEntry where
  parseJSON =
    Core.withObject
      "XPSTablesConfidenceMetricsEntry"
      ( \o ->
          XPSTablesConfidenceMetricsEntry
            Core.<$> (o Core..:? "confidenceThreshold")
            Core.<*> (o Core..:? "f1Score")
            Core.<*> ( o
                         Core..:? "falseNegativeCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "falsePositiveCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "falsePositiveRate")
            Core.<*> (o Core..:? "precision")
            Core.<*> (o Core..:? "recall")
            Core.<*> (o Core..:? "trueNegativeCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "truePositiveCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "truePositiveRate")
      )

instance Core.ToJSON XPSTablesConfidenceMetricsEntry where
  toJSON XPSTablesConfidenceMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceThreshold" Core..=) Core.<$> confidenceThreshold,
            ("f1Score" Core..=) Core.<$> f1Score,
            ("falseNegativeCount" Core..=)
              Core.. Core.AsText
              Core.<$> falseNegativeCount,
            ("falsePositiveCount" Core..=)
              Core.. Core.AsText
              Core.<$> falsePositiveCount,
            ("falsePositiveRate" Core..=) Core.<$> falsePositiveRate,
            ("precision" Core..=) Core.<$> precision,
            ("recall" Core..=) Core.<$> recall,
            ("trueNegativeCount" Core..=)
              Core.. Core.AsText
              Core.<$> trueNegativeCount,
            ("truePositiveCount" Core..=)
              Core.. Core.AsText
              Core.<$> truePositiveCount,
            ("truePositiveRate" Core..=) Core.<$> truePositiveRate
          ]
      )

-- | Metadata for a dataset used for AutoML Tables.
--
-- /See:/ 'newXPSTablesDatasetMetadata' smart constructor.
data XPSTablesDatasetMetadata = XPSTablesDatasetMetadata
  { -- | Id the column to split the table.
    mlUseColumnId :: (Core.Maybe Core.Int32),
    -- | Primary table.
    primaryTableSpec :: (Core.Maybe XPSTableSpec),
    -- | (the column id : its CorrelationStats with target column).
    targetColumnCorrelations :: (Core.Maybe XPSTablesDatasetMetadata_TargetColumnCorrelations),
    -- | Id of the primary table column that should be used as the training label.
    targetColumnId :: (Core.Maybe Core.Int32),
    -- | Id of the primary table column that should be used as the weight column.
    weightColumnId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesDatasetMetadata' with the minimum fields required to make a request.
newXPSTablesDatasetMetadata ::
  XPSTablesDatasetMetadata
newXPSTablesDatasetMetadata =
  XPSTablesDatasetMetadata
    { mlUseColumnId = Core.Nothing,
      primaryTableSpec = Core.Nothing,
      targetColumnCorrelations = Core.Nothing,
      targetColumnId = Core.Nothing,
      weightColumnId = Core.Nothing
    }

instance Core.FromJSON XPSTablesDatasetMetadata where
  parseJSON =
    Core.withObject
      "XPSTablesDatasetMetadata"
      ( \o ->
          XPSTablesDatasetMetadata
            Core.<$> (o Core..:? "mlUseColumnId")
            Core.<*> (o Core..:? "primaryTableSpec")
            Core.<*> (o Core..:? "targetColumnCorrelations")
            Core.<*> (o Core..:? "targetColumnId")
            Core.<*> (o Core..:? "weightColumnId")
      )

instance Core.ToJSON XPSTablesDatasetMetadata where
  toJSON XPSTablesDatasetMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("mlUseColumnId" Core..=) Core.<$> mlUseColumnId,
            ("primaryTableSpec" Core..=) Core.<$> primaryTableSpec,
            ("targetColumnCorrelations" Core..=)
              Core.<$> targetColumnCorrelations,
            ("targetColumnId" Core..=) Core.<$> targetColumnId,
            ("weightColumnId" Core..=) Core.<$> weightColumnId
          ]
      )

-- | (the column id : its CorrelationStats with target column).
--
-- /See:/ 'newXPSTablesDatasetMetadata_TargetColumnCorrelations' smart constructor.
newtype XPSTablesDatasetMetadata_TargetColumnCorrelations = XPSTablesDatasetMetadata_TargetColumnCorrelations
  { additional :: (Core.HashMap Core.Text XPSCorrelationStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesDatasetMetadata_TargetColumnCorrelations' with the minimum fields required to make a request.
newXPSTablesDatasetMetadata_TargetColumnCorrelations ::
  -- |  See 'additional'.
  Core.HashMap Core.Text XPSCorrelationStats ->
  XPSTablesDatasetMetadata_TargetColumnCorrelations
newXPSTablesDatasetMetadata_TargetColumnCorrelations additional =
  XPSTablesDatasetMetadata_TargetColumnCorrelations
    { additional =
        additional
    }

instance
  Core.FromJSON
    XPSTablesDatasetMetadata_TargetColumnCorrelations
  where
  parseJSON =
    Core.withObject
      "XPSTablesDatasetMetadata_TargetColumnCorrelations"
      ( \o ->
          XPSTablesDatasetMetadata_TargetColumnCorrelations
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    XPSTablesDatasetMetadata_TargetColumnCorrelations
  where
  toJSON XPSTablesDatasetMetadata_TargetColumnCorrelations {..} =
    Core.toJSON additional

--
-- /See:/ 'newXPSTablesEvaluationMetrics' smart constructor.
data XPSTablesEvaluationMetrics = XPSTablesEvaluationMetrics
  { -- | Classification metrics.
    classificationMetrics :: (Core.Maybe XPSTablesClassificationMetrics),
    -- | Regression metrics.
    regressionMetrics :: (Core.Maybe XPSTablesRegressionMetrics)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesEvaluationMetrics' with the minimum fields required to make a request.
newXPSTablesEvaluationMetrics ::
  XPSTablesEvaluationMetrics
newXPSTablesEvaluationMetrics =
  XPSTablesEvaluationMetrics
    { classificationMetrics = Core.Nothing,
      regressionMetrics = Core.Nothing
    }

instance Core.FromJSON XPSTablesEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSTablesEvaluationMetrics"
      ( \o ->
          XPSTablesEvaluationMetrics
            Core.<$> (o Core..:? "classificationMetrics")
            Core.<*> (o Core..:? "regressionMetrics")
      )

instance Core.ToJSON XPSTablesEvaluationMetrics where
  toJSON XPSTablesEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("classificationMetrics" Core..=) Core.<$> classificationMetrics,
            ("regressionMetrics" Core..=) Core.<$> regressionMetrics
          ]
      )

-- | An information specific to given column and Tables Model, in context of the Model and the predictions created by it.
--
-- /See:/ 'newXPSTablesModelColumnInfo' smart constructor.
data XPSTablesModelColumnInfo = XPSTablesModelColumnInfo
  { -- | The ID of the column.
    columnId :: (Core.Maybe Core.Int32),
    -- | When given as part of a Model: Measurement of how much model predictions correctness on the TEST data depend on values in this column. A value between 0 and 1, higher means higher influence. These values are normalized - for all input feature columns of a given model they add to 1. When given back by Predict or Batch Predict: Measurement of how impactful for the prediction returned for the given row the value in this column was. Specifically, the feature importance specifies the marginal contribution that the feature made to the prediction score compared to the baseline score. These values are computed using the Sampled Shapley method.
    featureImportance :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesModelColumnInfo' with the minimum fields required to make a request.
newXPSTablesModelColumnInfo ::
  XPSTablesModelColumnInfo
newXPSTablesModelColumnInfo =
  XPSTablesModelColumnInfo
    { columnId = Core.Nothing,
      featureImportance = Core.Nothing
    }

instance Core.FromJSON XPSTablesModelColumnInfo where
  parseJSON =
    Core.withObject
      "XPSTablesModelColumnInfo"
      ( \o ->
          XPSTablesModelColumnInfo
            Core.<$> (o Core..:? "columnId")
            Core.<*> (o Core..:? "featureImportance")
      )

instance Core.ToJSON XPSTablesModelColumnInfo where
  toJSON XPSTablesModelColumnInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnId" Core..=) Core.<$> columnId,
            ("featureImportance" Core..=) Core.<$> featureImportance
          ]
      )

-- | A description of Tables model structure.
--
-- /See:/ 'newXPSTablesModelStructure' smart constructor.
newtype XPSTablesModelStructure = XPSTablesModelStructure
  { -- | A list of models.
    modelParameters :: (Core.Maybe [XPSTablesModelStructureModelParameters])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesModelStructure' with the minimum fields required to make a request.
newXPSTablesModelStructure ::
  XPSTablesModelStructure
newXPSTablesModelStructure =
  XPSTablesModelStructure {modelParameters = Core.Nothing}

instance Core.FromJSON XPSTablesModelStructure where
  parseJSON =
    Core.withObject
      "XPSTablesModelStructure"
      ( \o ->
          XPSTablesModelStructure Core.<$> (o Core..:? "modelParameters")
      )

instance Core.ToJSON XPSTablesModelStructure where
  toJSON XPSTablesModelStructure {..} =
    Core.object
      ( Core.catMaybes
          [("modelParameters" Core..=) Core.<$> modelParameters]
      )

-- | Model hyper-parameters for a model.
--
-- /See:/ 'newXPSTablesModelStructureModelParameters' smart constructor.
newtype XPSTablesModelStructureModelParameters = XPSTablesModelStructureModelParameters
  { hyperparameters :: (Core.Maybe [XPSTablesModelStructureModelParametersParameter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesModelStructureModelParameters' with the minimum fields required to make a request.
newXPSTablesModelStructureModelParameters ::
  XPSTablesModelStructureModelParameters
newXPSTablesModelStructureModelParameters =
  XPSTablesModelStructureModelParameters
    { hyperparameters =
        Core.Nothing
    }

instance Core.FromJSON XPSTablesModelStructureModelParameters where
  parseJSON =
    Core.withObject
      "XPSTablesModelStructureModelParameters"
      ( \o ->
          XPSTablesModelStructureModelParameters
            Core.<$> (o Core..:? "hyperparameters")
      )

instance Core.ToJSON XPSTablesModelStructureModelParameters where
  toJSON XPSTablesModelStructureModelParameters {..} =
    Core.object
      ( Core.catMaybes
          [("hyperparameters" Core..=) Core.<$> hyperparameters]
      )

--
-- /See:/ 'newXPSTablesModelStructureModelParametersParameter' smart constructor.
data XPSTablesModelStructureModelParametersParameter = XPSTablesModelStructureModelParametersParameter
  { -- | Float type parameter value.
    floatValue :: (Core.Maybe Core.Double),
    -- | Integer type parameter value.
    intValue :: (Core.Maybe Core.Int64),
    -- | Parameter name.
    name :: (Core.Maybe Core.Text),
    -- | String type parameter value.
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesModelStructureModelParametersParameter' with the minimum fields required to make a request.
newXPSTablesModelStructureModelParametersParameter ::
  XPSTablesModelStructureModelParametersParameter
newXPSTablesModelStructureModelParametersParameter =
  XPSTablesModelStructureModelParametersParameter
    { floatValue =
        Core.Nothing,
      intValue = Core.Nothing,
      name = Core.Nothing,
      stringValue = Core.Nothing
    }

instance
  Core.FromJSON
    XPSTablesModelStructureModelParametersParameter
  where
  parseJSON =
    Core.withObject
      "XPSTablesModelStructureModelParametersParameter"
      ( \o ->
          XPSTablesModelStructureModelParametersParameter
            Core.<$> (o Core..:? "floatValue")
            Core.<*> (o Core..:? "intValue" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "stringValue")
      )

instance
  Core.ToJSON
    XPSTablesModelStructureModelParametersParameter
  where
  toJSON XPSTablesModelStructureModelParametersParameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("floatValue" Core..=) Core.<$> floatValue,
            ("intValue" Core..=) Core.. Core.AsText Core.<$> intValue,
            ("name" Core..=) Core.<$> name,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

--
-- /See:/ 'newXPSTablesPreprocessResponse' smart constructor.
newtype XPSTablesPreprocessResponse = XPSTablesPreprocessResponse
  { -- | The table\/column id, column_name and the DataTypes of the columns will be populated.
    tablesDatasetMetadata :: (Core.Maybe XPSTablesDatasetMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesPreprocessResponse' with the minimum fields required to make a request.
newXPSTablesPreprocessResponse ::
  XPSTablesPreprocessResponse
newXPSTablesPreprocessResponse =
  XPSTablesPreprocessResponse {tablesDatasetMetadata = Core.Nothing}

instance Core.FromJSON XPSTablesPreprocessResponse where
  parseJSON =
    Core.withObject
      "XPSTablesPreprocessResponse"
      ( \o ->
          XPSTablesPreprocessResponse
            Core.<$> (o Core..:? "tablesDatasetMetadata")
      )

instance Core.ToJSON XPSTablesPreprocessResponse where
  toJSON XPSTablesPreprocessResponse {..} =
    Core.object
      ( Core.catMaybes
          [("tablesDatasetMetadata" Core..=) Core.<$> tablesDatasetMetadata]
      )

-- | Metrics for Tables regression problems.
--
-- /See:/ 'newXPSTablesRegressionMetrics' smart constructor.
data XPSTablesRegressionMetrics = XPSTablesRegressionMetrics
  { -- | Mean absolute error.
    meanAbsoluteError :: (Core.Maybe Core.Double),
    -- | Mean absolute percentage error, only set if all of the target column\'s values are positive.
    meanAbsolutePercentageError :: (Core.Maybe Core.Double),
    -- | R squared.
    rSquared :: (Core.Maybe Core.Double),
    -- | A list of actual versus predicted points for the model being evaluated.
    regressionMetricsEntries :: (Core.Maybe [XPSRegressionMetricsEntry]),
    -- | Root mean squared error.
    rootMeanSquaredError :: (Core.Maybe Core.Double),
    -- | Root mean squared log error.
    rootMeanSquaredLogError :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesRegressionMetrics' with the minimum fields required to make a request.
newXPSTablesRegressionMetrics ::
  XPSTablesRegressionMetrics
newXPSTablesRegressionMetrics =
  XPSTablesRegressionMetrics
    { meanAbsoluteError = Core.Nothing,
      meanAbsolutePercentageError = Core.Nothing,
      rSquared = Core.Nothing,
      regressionMetricsEntries = Core.Nothing,
      rootMeanSquaredError = Core.Nothing,
      rootMeanSquaredLogError = Core.Nothing
    }

instance Core.FromJSON XPSTablesRegressionMetrics where
  parseJSON =
    Core.withObject
      "XPSTablesRegressionMetrics"
      ( \o ->
          XPSTablesRegressionMetrics
            Core.<$> (o Core..:? "meanAbsoluteError")
            Core.<*> (o Core..:? "meanAbsolutePercentageError")
            Core.<*> (o Core..:? "rSquared")
            Core.<*> (o Core..:? "regressionMetricsEntries")
            Core.<*> (o Core..:? "rootMeanSquaredError")
            Core.<*> (o Core..:? "rootMeanSquaredLogError")
      )

instance Core.ToJSON XPSTablesRegressionMetrics where
  toJSON XPSTablesRegressionMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("meanAbsoluteError" Core..=) Core.<$> meanAbsoluteError,
            ("meanAbsolutePercentageError" Core..=)
              Core.<$> meanAbsolutePercentageError,
            ("rSquared" Core..=) Core.<$> rSquared,
            ("regressionMetricsEntries" Core..=)
              Core.<$> regressionMetricsEntries,
            ("rootMeanSquaredError" Core..=) Core.<$> rootMeanSquaredError,
            ("rootMeanSquaredLogError" Core..=)
              Core.<$> rootMeanSquaredLogError
          ]
      )

--
-- /See:/ 'newXPSTablesTrainResponse' smart constructor.
data XPSTablesTrainResponse = XPSTablesTrainResponse
  { modelStructure :: (Core.Maybe XPSTablesModelStructure),
    -- | Sample rows from the dataset this model was trained.
    predictionSampleRows :: (Core.Maybe [XPSRow]),
    -- | Output only. Auxiliary information for each of the input/feature/column_specs, with respect to this particular model.
    tablesModelColumnInfo :: (Core.Maybe [XPSTablesModelColumnInfo]),
    -- | The actual training cost of the model, expressed in milli node hours, i.e. 1,000 value in this field means 1 node hour. Guaranteed to not exceed the train budget.
    trainCostMilliNodeHours :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesTrainResponse' with the minimum fields required to make a request.
newXPSTablesTrainResponse ::
  XPSTablesTrainResponse
newXPSTablesTrainResponse =
  XPSTablesTrainResponse
    { modelStructure = Core.Nothing,
      predictionSampleRows = Core.Nothing,
      tablesModelColumnInfo = Core.Nothing,
      trainCostMilliNodeHours = Core.Nothing
    }

instance Core.FromJSON XPSTablesTrainResponse where
  parseJSON =
    Core.withObject
      "XPSTablesTrainResponse"
      ( \o ->
          XPSTablesTrainResponse
            Core.<$> (o Core..:? "modelStructure")
            Core.<*> (o Core..:? "predictionSampleRows")
            Core.<*> (o Core..:? "tablesModelColumnInfo")
            Core.<*> ( o
                         Core..:? "trainCostMilliNodeHours"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSTablesTrainResponse where
  toJSON XPSTablesTrainResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("modelStructure" Core..=) Core.<$> modelStructure,
            ("predictionSampleRows" Core..=) Core.<$> predictionSampleRows,
            ("tablesModelColumnInfo" Core..=) Core.<$> tablesModelColumnInfo,
            ("trainCostMilliNodeHours" Core..=)
              Core.. Core.AsText
              Core.<$> trainCostMilliNodeHours
          ]
      )

--
-- /See:/ 'newXPSTablesTrainingOperationMetadata' smart constructor.
data XPSTablesTrainingOperationMetadata = XPSTablesTrainingOperationMetadata
  { -- | Current stage of creating model.
    createModelStage :: (Core.Maybe XPSTablesTrainingOperationMetadata_CreateModelStage),
    -- | The optimization objective for model.
    optimizationObjective :: (Core.Maybe Core.Text),
    -- | This field is for training. When the operation is terminated successfully, AutoML Backend post this field to operation metadata in spanner. If the metadata has no trials returned, the training operation is supposed to be a failure.
    topTrials :: (Core.Maybe [XPSTuningTrial]),
    -- | Creating model budget.
    trainBudgetMilliNodeHours :: (Core.Maybe Core.Int64),
    -- | This field records the training objective value with respect to time, giving insight into how the model architecture search is performing as training time elapses.
    trainingObjectivePoints :: (Core.Maybe [XPSTrainingObjectivePoint]),
    -- | Timestamp when training process starts.
    trainingStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTablesTrainingOperationMetadata' with the minimum fields required to make a request.
newXPSTablesTrainingOperationMetadata ::
  XPSTablesTrainingOperationMetadata
newXPSTablesTrainingOperationMetadata =
  XPSTablesTrainingOperationMetadata
    { createModelStage =
        Core.Nothing,
      optimizationObjective = Core.Nothing,
      topTrials = Core.Nothing,
      trainBudgetMilliNodeHours = Core.Nothing,
      trainingObjectivePoints = Core.Nothing,
      trainingStartTime = Core.Nothing
    }

instance Core.FromJSON XPSTablesTrainingOperationMetadata where
  parseJSON =
    Core.withObject
      "XPSTablesTrainingOperationMetadata"
      ( \o ->
          XPSTablesTrainingOperationMetadata
            Core.<$> (o Core..:? "createModelStage")
            Core.<*> (o Core..:? "optimizationObjective")
            Core.<*> (o Core..:? "topTrials")
            Core.<*> ( o
                         Core..:? "trainBudgetMilliNodeHours"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "trainingObjectivePoints")
            Core.<*> (o Core..:? "trainingStartTime")
      )

instance Core.ToJSON XPSTablesTrainingOperationMetadata where
  toJSON XPSTablesTrainingOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createModelStage" Core..=) Core.<$> createModelStage,
            ("optimizationObjective" Core..=) Core.<$> optimizationObjective,
            ("topTrials" Core..=) Core.<$> topTrials,
            ("trainBudgetMilliNodeHours" Core..=)
              Core.. Core.AsText
              Core.<$> trainBudgetMilliNodeHours,
            ("trainingObjectivePoints" Core..=)
              Core.<$> trainingObjectivePoints,
            ("trainingStartTime" Core..=) Core.<$> trainingStartTime
          ]
      )

-- | Component model.
--
-- /See:/ 'newXPSTextComponentModel' smart constructor.
data XPSTextComponentModel = XPSTextComponentModel
  { -- | The Cloud Storage resource path to hold batch prediction model.
    batchPredictionModelGcsUri :: (Core.Maybe Core.Text),
    -- | The Cloud Storage resource path to hold online prediction model.
    onlinePredictionModelGcsUri :: (Core.Maybe Core.Text),
    -- | The partition where the model is deployed. Populated by uCAIP BE as part of online PredictRequest.
    partition :: (Core.Maybe XPSTextComponentModel_Partition),
    -- | The default model binary file used for serving (e.g. online predict, batch predict) via public Cloud Ai Platform API.
    servingArtifact :: (Core.Maybe XPSModelArtifactItem),
    -- | The name of servo model. Populated by uCAIP BE as part of online PredictRequest.
    servoModelName :: (Core.Maybe Core.Text),
    -- | The name of the trained NL submodel.
    submodelName :: (Core.Maybe Core.Text),
    -- | The type of trained NL submodel
    submodelType :: (Core.Maybe XPSTextComponentModel_SubmodelType),
    -- | == The fields below are only populated under uCAIP request scope. https:\/\/cloud.google.com\/ml-engine\/docs\/runtime-version-list
    tfRuntimeVersion :: (Core.Maybe Core.Text),
    -- | The servomatic model version number. Populated by uCAIP BE as part of online PredictRequest.
    versionNumber :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTextComponentModel' with the minimum fields required to make a request.
newXPSTextComponentModel ::
  XPSTextComponentModel
newXPSTextComponentModel =
  XPSTextComponentModel
    { batchPredictionModelGcsUri = Core.Nothing,
      onlinePredictionModelGcsUri = Core.Nothing,
      partition = Core.Nothing,
      servingArtifact = Core.Nothing,
      servoModelName = Core.Nothing,
      submodelName = Core.Nothing,
      submodelType = Core.Nothing,
      tfRuntimeVersion = Core.Nothing,
      versionNumber = Core.Nothing
    }

instance Core.FromJSON XPSTextComponentModel where
  parseJSON =
    Core.withObject
      "XPSTextComponentModel"
      ( \o ->
          XPSTextComponentModel
            Core.<$> (o Core..:? "batchPredictionModelGcsUri")
            Core.<*> (o Core..:? "onlinePredictionModelGcsUri")
            Core.<*> (o Core..:? "partition")
            Core.<*> (o Core..:? "servingArtifact")
            Core.<*> (o Core..:? "servoModelName")
            Core.<*> (o Core..:? "submodelName")
            Core.<*> (o Core..:? "submodelType")
            Core.<*> (o Core..:? "tfRuntimeVersion")
            Core.<*> (o Core..:? "versionNumber" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON XPSTextComponentModel where
  toJSON XPSTextComponentModel {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchPredictionModelGcsUri" Core..=)
              Core.<$> batchPredictionModelGcsUri,
            ("onlinePredictionModelGcsUri" Core..=)
              Core.<$> onlinePredictionModelGcsUri,
            ("partition" Core..=) Core.<$> partition,
            ("servingArtifact" Core..=) Core.<$> servingArtifact,
            ("servoModelName" Core..=) Core.<$> servoModelName,
            ("submodelName" Core..=) Core.<$> submodelName,
            ("submodelType" Core..=) Core.<$> submodelType,
            ("tfRuntimeVersion" Core..=) Core.<$> tfRuntimeVersion,
            ("versionNumber" Core..=)
              Core.. Core.AsText
              Core.<$> versionNumber
          ]
      )

--
-- /See:/ 'newXPSTextExtractionEvaluationMetrics' smart constructor.
data XPSTextExtractionEvaluationMetrics = XPSTextExtractionEvaluationMetrics
  { -- | Values are at the highest F1 score on the precision-recall curve. Only confidence/threshold, recall, precision, and f1/score will be set.
    bestF1ConfidenceMetrics :: (Core.Maybe XPSConfidenceMetricsEntry),
    -- | If the enclosing EvaluationMetrics.label is empty, confidence/metrics/entries is an evaluation of the entire model across all labels. If the enclosing EvaluationMetrics.label is set, confidence/metrics/entries applies to that label.
    confidenceMetricsEntries :: (Core.Maybe [XPSConfidenceMetricsEntry]),
    -- | Confusion matrix of the model, at the default confidence threshold (0.0). Only set for whole-model evaluation, not for evaluation per label.
    confusionMatrix :: (Core.Maybe XPSConfusionMatrix),
    -- | Only recall, precision, and f1_score will be set.
    perLabelConfidenceMetrics ::
      ( Core.Maybe
          XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTextExtractionEvaluationMetrics' with the minimum fields required to make a request.
newXPSTextExtractionEvaluationMetrics ::
  XPSTextExtractionEvaluationMetrics
newXPSTextExtractionEvaluationMetrics =
  XPSTextExtractionEvaluationMetrics
    { bestF1ConfidenceMetrics =
        Core.Nothing,
      confidenceMetricsEntries = Core.Nothing,
      confusionMatrix = Core.Nothing,
      perLabelConfidenceMetrics = Core.Nothing
    }

instance Core.FromJSON XPSTextExtractionEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSTextExtractionEvaluationMetrics"
      ( \o ->
          XPSTextExtractionEvaluationMetrics
            Core.<$> (o Core..:? "bestF1ConfidenceMetrics")
            Core.<*> (o Core..:? "confidenceMetricsEntries")
            Core.<*> (o Core..:? "confusionMatrix")
            Core.<*> (o Core..:? "perLabelConfidenceMetrics")
      )

instance Core.ToJSON XPSTextExtractionEvaluationMetrics where
  toJSON XPSTextExtractionEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("bestF1ConfidenceMetrics" Core..=)
              Core.<$> bestF1ConfidenceMetrics,
            ("confidenceMetricsEntries" Core..=)
              Core.<$> confidenceMetricsEntries,
            ("confusionMatrix" Core..=) Core.<$> confusionMatrix,
            ("perLabelConfidenceMetrics" Core..=)
              Core.<$> perLabelConfidenceMetrics
          ]
      )

-- | Only recall, precision, and f1_score will be set.
--
-- /See:/ 'newXPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics' smart constructor.
newtype XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics = XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
  { additional :: (Core.HashMap Core.Text XPSConfidenceMetricsEntry)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics' with the minimum fields required to make a request.
newXPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics ::
  -- |  See 'additional'.
  Core.HashMap
    Core.Text
    XPSConfidenceMetricsEntry ->
  XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
newXPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
  additional =
    XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
      { additional =
          additional
      }

instance
  Core.FromJSON
    XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
  where
  parseJSON =
    Core.withObject
      "XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics"
      ( \o ->
          XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics
  where
  toJSON
    XPSTextExtractionEvaluationMetrics_PerLabelConfidenceMetrics {..} =
      Core.toJSON additional

-- | Model evaluation metrics for text sentiment problems.
--
-- /See:/ 'newXPSTextSentimentEvaluationMetrics' smart constructor.
data XPSTextSentimentEvaluationMetrics = XPSTextSentimentEvaluationMetrics
  { -- | Output only. Confusion matrix of the evaluation. Only set for the overall model evaluation, not for evaluation of a single annotation spec.
    confusionMatrix :: (Core.Maybe XPSConfusionMatrix),
    -- | Output only. The harmonic mean of recall and precision.
    f1Score :: (Core.Maybe Core.Double),
    -- | Output only. Linear weighted kappa. Only set for the overall model evaluation, not for evaluation of a single annotation spec.
    linearKappa :: (Core.Maybe Core.Double),
    -- | Output only. Mean absolute error. Only set for the overall model evaluation, not for evaluation of a single annotation spec.
    meanAbsoluteError :: (Core.Maybe Core.Double),
    -- | Output only. Mean squared error. Only set for the overall model evaluation, not for evaluation of a single annotation spec.
    meanSquaredError :: (Core.Maybe Core.Double),
    -- | Output only. Precision.
    precision :: (Core.Maybe Core.Double),
    -- | Output only. Quadratic weighted kappa. Only set for the overall model evaluation, not for evaluation of a single annotation spec.
    quadraticKappa :: (Core.Maybe Core.Double),
    -- | Output only. Recall.
    recall :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTextSentimentEvaluationMetrics' with the minimum fields required to make a request.
newXPSTextSentimentEvaluationMetrics ::
  XPSTextSentimentEvaluationMetrics
newXPSTextSentimentEvaluationMetrics =
  XPSTextSentimentEvaluationMetrics
    { confusionMatrix = Core.Nothing,
      f1Score = Core.Nothing,
      linearKappa = Core.Nothing,
      meanAbsoluteError = Core.Nothing,
      meanSquaredError = Core.Nothing,
      precision = Core.Nothing,
      quadraticKappa = Core.Nothing,
      recall = Core.Nothing
    }

instance Core.FromJSON XPSTextSentimentEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSTextSentimentEvaluationMetrics"
      ( \o ->
          XPSTextSentimentEvaluationMetrics
            Core.<$> (o Core..:? "confusionMatrix")
            Core.<*> (o Core..:? "f1Score")
            Core.<*> (o Core..:? "linearKappa")
            Core.<*> (o Core..:? "meanAbsoluteError")
            Core.<*> (o Core..:? "meanSquaredError")
            Core.<*> (o Core..:? "precision")
            Core.<*> (o Core..:? "quadraticKappa")
            Core.<*> (o Core..:? "recall")
      )

instance Core.ToJSON XPSTextSentimentEvaluationMetrics where
  toJSON XPSTextSentimentEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("confusionMatrix" Core..=) Core.<$> confusionMatrix,
            ("f1Score" Core..=) Core.<$> f1Score,
            ("linearKappa" Core..=) Core.<$> linearKappa,
            ("meanAbsoluteError" Core..=) Core.<$> meanAbsoluteError,
            ("meanSquaredError" Core..=) Core.<$> meanSquaredError,
            ("precision" Core..=) Core.<$> precision,
            ("quadraticKappa" Core..=) Core.<$> quadraticKappa,
            ("recall" Core..=) Core.<$> recall
          ]
      )

-- | TextToSpeech train response
--
-- /See:/ 'newXPSTextToSpeechTrainResponse' smart constructor.
data XPSTextToSpeechTrainResponse = XPSTextToSpeechTrainResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTextToSpeechTrainResponse' with the minimum fields required to make a request.
newXPSTextToSpeechTrainResponse ::
  XPSTextToSpeechTrainResponse
newXPSTextToSpeechTrainResponse = XPSTextToSpeechTrainResponse

instance Core.FromJSON XPSTextToSpeechTrainResponse where
  parseJSON =
    Core.withObject
      "XPSTextToSpeechTrainResponse"
      (\o -> Core.pure XPSTextToSpeechTrainResponse)

instance Core.ToJSON XPSTextToSpeechTrainResponse where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newXPSTextTrainResponse' smart constructor.
newtype XPSTextTrainResponse = XPSTextTrainResponse
  { -- | Component submodels.
    componentModel :: (Core.Maybe [XPSTextComponentModel])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTextTrainResponse' with the minimum fields required to make a request.
newXPSTextTrainResponse ::
  XPSTextTrainResponse
newXPSTextTrainResponse =
  XPSTextTrainResponse {componentModel = Core.Nothing}

instance Core.FromJSON XPSTextTrainResponse where
  parseJSON =
    Core.withObject
      "XPSTextTrainResponse"
      ( \o ->
          XPSTextTrainResponse Core.<$> (o Core..:? "componentModel")
      )

instance Core.ToJSON XPSTextTrainResponse where
  toJSON XPSTextTrainResponse {..} =
    Core.object
      ( Core.catMaybes
          [("componentModel" Core..=) Core.<$> componentModel]
      )

-- | A <https://www.tensorflow.org/js TensorFlow.js> model that can be used in the browser and in Node.js using JavaScript.
--
-- /See:/ 'newXPSTfJsFormat' smart constructor.
data XPSTfJsFormat = XPSTfJsFormat
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTfJsFormat' with the minimum fields required to make a request.
newXPSTfJsFormat ::
  XPSTfJsFormat
newXPSTfJsFormat = XPSTfJsFormat

instance Core.FromJSON XPSTfJsFormat where
  parseJSON =
    Core.withObject "XPSTfJsFormat" (\o -> Core.pure XPSTfJsFormat)

instance Core.ToJSON XPSTfJsFormat where
  toJSON = Core.const Core.emptyObject

-- | LINT.IfChange A model format used for mobile and IoT devices. See https:\/\/www.tensorflow.org\/lite.
--
-- /See:/ 'newXPSTfLiteFormat' smart constructor.
data XPSTfLiteFormat = XPSTfLiteFormat
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTfLiteFormat' with the minimum fields required to make a request.
newXPSTfLiteFormat ::
  XPSTfLiteFormat
newXPSTfLiteFormat = XPSTfLiteFormat

instance Core.FromJSON XPSTfLiteFormat where
  parseJSON =
    Core.withObject
      "XPSTfLiteFormat"
      (\o -> Core.pure XPSTfLiteFormat)

instance Core.ToJSON XPSTfLiteFormat where
  toJSON = Core.const Core.emptyObject

-- | A tensorflow model format in SavedModel format.
--
-- /See:/ 'newXPSTfSavedModelFormat' smart constructor.
data XPSTfSavedModelFormat = XPSTfSavedModelFormat
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTfSavedModelFormat' with the minimum fields required to make a request.
newXPSTfSavedModelFormat ::
  XPSTfSavedModelFormat
newXPSTfSavedModelFormat = XPSTfSavedModelFormat

instance Core.FromJSON XPSTfSavedModelFormat where
  parseJSON =
    Core.withObject
      "XPSTfSavedModelFormat"
      (\o -> Core.pure XPSTfSavedModelFormat)

instance Core.ToJSON XPSTfSavedModelFormat where
  toJSON = Core.const Core.emptyObject

-- | The data statistics of a series of TIMESTAMP values.
--
-- /See:/ 'newXPSTimestampStats' smart constructor.
data XPSTimestampStats = XPSTimestampStats
  { commonStats :: (Core.Maybe XPSCommonStats),
    -- | The string key is the pre-defined granularity. Currently supported: hour/of/day, day/of/week, month/of/year. Granularities finer that the granularity of timestamp data are not populated (e.g. if timestamps are at day granularity, then hour/of/day is not populated).
    granularStats :: (Core.Maybe XPSTimestampStats_GranularStats),
    medianTimestampNanos :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTimestampStats' with the minimum fields required to make a request.
newXPSTimestampStats ::
  XPSTimestampStats
newXPSTimestampStats =
  XPSTimestampStats
    { commonStats = Core.Nothing,
      granularStats = Core.Nothing,
      medianTimestampNanos = Core.Nothing
    }

instance Core.FromJSON XPSTimestampStats where
  parseJSON =
    Core.withObject
      "XPSTimestampStats"
      ( \o ->
          XPSTimestampStats
            Core.<$> (o Core..:? "commonStats")
            Core.<*> (o Core..:? "granularStats")
            Core.<*> ( o
                         Core..:? "medianTimestampNanos"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSTimestampStats where
  toJSON XPSTimestampStats {..} =
    Core.object
      ( Core.catMaybes
          [ ("commonStats" Core..=) Core.<$> commonStats,
            ("granularStats" Core..=) Core.<$> granularStats,
            ("medianTimestampNanos" Core..=)
              Core.. Core.AsText
              Core.<$> medianTimestampNanos
          ]
      )

-- | The string key is the pre-defined granularity. Currently supported: hour/of/day, day/of/week, month/of/year. Granularities finer that the granularity of timestamp data are not populated (e.g. if timestamps are at day granularity, then hour/of/day is not populated).
--
-- /See:/ 'newXPSTimestampStats_GranularStats' smart constructor.
newtype XPSTimestampStats_GranularStats = XPSTimestampStats_GranularStats
  { additional :: (Core.HashMap Core.Text XPSTimestampStatsGranularStats)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTimestampStats_GranularStats' with the minimum fields required to make a request.
newXPSTimestampStats_GranularStats ::
  -- |  See 'additional'.
  Core.HashMap Core.Text XPSTimestampStatsGranularStats ->
  XPSTimestampStats_GranularStats
newXPSTimestampStats_GranularStats additional =
  XPSTimestampStats_GranularStats {additional = additional}

instance Core.FromJSON XPSTimestampStats_GranularStats where
  parseJSON =
    Core.withObject
      "XPSTimestampStats_GranularStats"
      ( \o ->
          XPSTimestampStats_GranularStats Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON XPSTimestampStats_GranularStats where
  toJSON XPSTimestampStats_GranularStats {..} = Core.toJSON additional

-- | Stats split by a defined in context granularity.
--
-- /See:/ 'newXPSTimestampStatsGranularStats' smart constructor.
newtype XPSTimestampStatsGranularStats = XPSTimestampStatsGranularStats
  { -- | A map from granularity key to example count for that key. E.g. for hour/of/day @13@ means 1pm, or for month/of/year @5@ means May).
    buckets :: (Core.Maybe XPSTimestampStatsGranularStats_Buckets)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTimestampStatsGranularStats' with the minimum fields required to make a request.
newXPSTimestampStatsGranularStats ::
  XPSTimestampStatsGranularStats
newXPSTimestampStatsGranularStats =
  XPSTimestampStatsGranularStats {buckets = Core.Nothing}

instance Core.FromJSON XPSTimestampStatsGranularStats where
  parseJSON =
    Core.withObject
      "XPSTimestampStatsGranularStats"
      ( \o ->
          XPSTimestampStatsGranularStats Core.<$> (o Core..:? "buckets")
      )

instance Core.ToJSON XPSTimestampStatsGranularStats where
  toJSON XPSTimestampStatsGranularStats {..} =
    Core.object
      (Core.catMaybes [("buckets" Core..=) Core.<$> buckets])

-- | A map from granularity key to example count for that key. E.g. for hour/of/day @13@ means 1pm, or for month/of/year @5@ means May).
--
-- /See:/ 'newXPSTimestampStatsGranularStats_Buckets' smart constructor.
newtype XPSTimestampStatsGranularStats_Buckets = XPSTimestampStatsGranularStats_Buckets
  { additional :: (Core.HashMap Core.Text Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTimestampStatsGranularStats_Buckets' with the minimum fields required to make a request.
newXPSTimestampStatsGranularStats_Buckets ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Int64 ->
  XPSTimestampStatsGranularStats_Buckets
newXPSTimestampStatsGranularStats_Buckets additional =
  XPSTimestampStatsGranularStats_Buckets {additional = additional}

instance Core.FromJSON XPSTimestampStatsGranularStats_Buckets where
  parseJSON =
    Core.withObject
      "XPSTimestampStatsGranularStats_Buckets"
      ( \o ->
          XPSTimestampStatsGranularStats_Buckets
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON XPSTimestampStatsGranularStats_Buckets where
  toJSON XPSTimestampStatsGranularStats_Buckets {..} =
    Core.toJSON additional

-- | Track matching model metrics for a single track match threshold and multiple label match confidence thresholds. Next tag: 6.
--
-- /See:/ 'newXPSTrackMetricsEntry' smart constructor.
data XPSTrackMetricsEntry = XPSTrackMetricsEntry
  { -- | Output only. Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99. Precision-recall curve is derived from them.
    confidenceMetricsEntries :: (Core.Maybe [XPSTrackMetricsEntryConfidenceMetricsEntry]),
    -- | Output only. The intersection-over-union threshold value between bounding boxes across frames used to compute this metric entry.
    iouThreshold :: (Core.Maybe Core.Double),
    -- | Output only. The mean bounding box iou over all confidence thresholds.
    meanBoundingBoxIou :: (Core.Maybe Core.Double),
    -- | Output only. The mean mismatch rate over all confidence thresholds.
    meanMismatchRate :: (Core.Maybe Core.Double),
    -- | Output only. The mean average precision over all confidence thresholds.
    meanTrackingAveragePrecision :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTrackMetricsEntry' with the minimum fields required to make a request.
newXPSTrackMetricsEntry ::
  XPSTrackMetricsEntry
newXPSTrackMetricsEntry =
  XPSTrackMetricsEntry
    { confidenceMetricsEntries = Core.Nothing,
      iouThreshold = Core.Nothing,
      meanBoundingBoxIou = Core.Nothing,
      meanMismatchRate = Core.Nothing,
      meanTrackingAveragePrecision = Core.Nothing
    }

instance Core.FromJSON XPSTrackMetricsEntry where
  parseJSON =
    Core.withObject
      "XPSTrackMetricsEntry"
      ( \o ->
          XPSTrackMetricsEntry
            Core.<$> (o Core..:? "confidenceMetricsEntries")
            Core.<*> (o Core..:? "iouThreshold")
            Core.<*> (o Core..:? "meanBoundingBoxIou")
            Core.<*> (o Core..:? "meanMismatchRate")
            Core.<*> (o Core..:? "meanTrackingAveragePrecision")
      )

instance Core.ToJSON XPSTrackMetricsEntry where
  toJSON XPSTrackMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceMetricsEntries" Core..=)
              Core.<$> confidenceMetricsEntries,
            ("iouThreshold" Core..=) Core.<$> iouThreshold,
            ("meanBoundingBoxIou" Core..=) Core.<$> meanBoundingBoxIou,
            ("meanMismatchRate" Core..=) Core.<$> meanMismatchRate,
            ("meanTrackingAveragePrecision" Core..=)
              Core.<$> meanTrackingAveragePrecision
          ]
      )

-- | Metrics for a single confidence threshold. Next tag: 6.
--
-- /See:/ 'newXPSTrackMetricsEntryConfidenceMetricsEntry' smart constructor.
data XPSTrackMetricsEntryConfidenceMetricsEntry = XPSTrackMetricsEntryConfidenceMetricsEntry
  { -- | Output only. Bounding box intersection-over-union precision. Measures how well the bounding boxes overlap between each other (e.g. complete overlap or just barely above iou_threshold).
    boundingBoxIou :: (Core.Maybe Core.Double),
    -- | Output only. The confidence threshold value used to compute the metrics.
    confidenceThreshold :: (Core.Maybe Core.Double),
    -- | Output only. Mismatch rate, which measures the tracking consistency, i.e. correctness of instance ID continuity.
    mismatchRate :: (Core.Maybe Core.Double),
    -- | Output only. Tracking precision.
    trackingPrecision :: (Core.Maybe Core.Double),
    -- | Output only. Tracking recall.
    trackingRecall :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTrackMetricsEntryConfidenceMetricsEntry' with the minimum fields required to make a request.
newXPSTrackMetricsEntryConfidenceMetricsEntry ::
  XPSTrackMetricsEntryConfidenceMetricsEntry
newXPSTrackMetricsEntryConfidenceMetricsEntry =
  XPSTrackMetricsEntryConfidenceMetricsEntry
    { boundingBoxIou =
        Core.Nothing,
      confidenceThreshold = Core.Nothing,
      mismatchRate = Core.Nothing,
      trackingPrecision = Core.Nothing,
      trackingRecall = Core.Nothing
    }

instance Core.FromJSON XPSTrackMetricsEntryConfidenceMetricsEntry where
  parseJSON =
    Core.withObject
      "XPSTrackMetricsEntryConfidenceMetricsEntry"
      ( \o ->
          XPSTrackMetricsEntryConfidenceMetricsEntry
            Core.<$> (o Core..:? "boundingBoxIou")
            Core.<*> (o Core..:? "confidenceThreshold")
            Core.<*> (o Core..:? "mismatchRate")
            Core.<*> (o Core..:? "trackingPrecision")
            Core.<*> (o Core..:? "trackingRecall")
      )

instance Core.ToJSON XPSTrackMetricsEntryConfidenceMetricsEntry where
  toJSON XPSTrackMetricsEntryConfidenceMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBoxIou" Core..=) Core.<$> boundingBoxIou,
            ("confidenceThreshold" Core..=) Core.<$> confidenceThreshold,
            ("mismatchRate" Core..=) Core.<$> mismatchRate,
            ("trackingPrecision" Core..=) Core.<$> trackingPrecision,
            ("trackingRecall" Core..=) Core.<$> trackingRecall
          ]
      )

--
-- /See:/ 'newXPSTrainResponse' smart constructor.
data XPSTrainResponse = XPSTrainResponse
  { -- | Estimated model size in bytes once deployed.
    deployedModelSizeBytes :: (Core.Maybe Core.Int64),
    -- | Optional vision model error analysis configuration. The field is set when model error analysis is enabled in the training request. The results of error analysis will be binded together with evaluation results (in the format of AnnotatedExample).
    errorAnalysisConfigs :: (Core.Maybe [XPSVisionErrorAnalysisConfig]),
    -- | Examples used to evaluate the model (usually the test set), with the predicted annotations. The file/spec should point to recordio file(s) of AnnotatedExample. For each returned example, the example/id_token and annotations predicted by the model must be set. The example payload can and is recommended to be omitted.
    evaluatedExampleSet :: (Core.Maybe XPSExampleSet),
    -- | The trained model evaluation metrics. This can be optionally returned.
    evaluationMetricsSet :: (Core.Maybe XPSEvaluationMetricsSet),
    -- | VisionExplanationConfig for XAI on test set. Optional for when XAI is enable in training request.
    explanationConfigs :: (Core.Maybe [XPSResponseExplanationSpec]),
    imageClassificationTrainResp :: (Core.Maybe XPSImageClassificationTrainResponse),
    imageObjectDetectionTrainResp :: (Core.Maybe XPSImageObjectDetectionModelSpec),
    imageSegmentationTrainResp :: (Core.Maybe XPSImageSegmentationTrainResponse),
    -- | Token that represents the trained model. This is considered immutable and is persisted in AutoML. xPS can put their own proto in the byte string, to e.g. point to the model checkpoints. The token is passed to other xPS APIs to refer to the model.
    modelToken :: (Core.Maybe Core.Base64),
    speechTrainResp :: (Core.Maybe XPSSpeechModelSpec),
    tablesTrainResp :: (Core.Maybe XPSTablesTrainResponse),
    textToSpeechTrainResp :: (Core.Maybe XPSTextToSpeechTrainResponse),
    -- | Will only be needed for uCAIP from Beta.
    textTrainResp :: (Core.Maybe XPSTextTrainResponse),
    translationTrainResp :: (Core.Maybe XPSTranslationTrainResponse),
    videoActionRecognitionTrainResp :: (Core.Maybe XPSVideoActionRecognitionTrainResponse),
    videoClassificationTrainResp :: (Core.Maybe XPSVideoClassificationTrainResponse),
    videoObjectTrackingTrainResp :: (Core.Maybe XPSVideoObjectTrackingTrainResponse)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTrainResponse' with the minimum fields required to make a request.
newXPSTrainResponse ::
  XPSTrainResponse
newXPSTrainResponse =
  XPSTrainResponse
    { deployedModelSizeBytes = Core.Nothing,
      errorAnalysisConfigs = Core.Nothing,
      evaluatedExampleSet = Core.Nothing,
      evaluationMetricsSet = Core.Nothing,
      explanationConfigs = Core.Nothing,
      imageClassificationTrainResp = Core.Nothing,
      imageObjectDetectionTrainResp = Core.Nothing,
      imageSegmentationTrainResp = Core.Nothing,
      modelToken = Core.Nothing,
      speechTrainResp = Core.Nothing,
      tablesTrainResp = Core.Nothing,
      textToSpeechTrainResp = Core.Nothing,
      textTrainResp = Core.Nothing,
      translationTrainResp = Core.Nothing,
      videoActionRecognitionTrainResp = Core.Nothing,
      videoClassificationTrainResp = Core.Nothing,
      videoObjectTrackingTrainResp = Core.Nothing
    }

instance Core.FromJSON XPSTrainResponse where
  parseJSON =
    Core.withObject
      "XPSTrainResponse"
      ( \o ->
          XPSTrainResponse
            Core.<$> ( o
                         Core..:? "deployedModelSizeBytes"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "errorAnalysisConfigs")
            Core.<*> (o Core..:? "evaluatedExampleSet")
            Core.<*> (o Core..:? "evaluationMetricsSet")
            Core.<*> (o Core..:? "explanationConfigs")
            Core.<*> (o Core..:? "imageClassificationTrainResp")
            Core.<*> (o Core..:? "imageObjectDetectionTrainResp")
            Core.<*> (o Core..:? "imageSegmentationTrainResp")
            Core.<*> (o Core..:? "modelToken")
            Core.<*> (o Core..:? "speechTrainResp")
            Core.<*> (o Core..:? "tablesTrainResp")
            Core.<*> (o Core..:? "textToSpeechTrainResp")
            Core.<*> (o Core..:? "textTrainResp")
            Core.<*> (o Core..:? "translationTrainResp")
            Core.<*> (o Core..:? "videoActionRecognitionTrainResp")
            Core.<*> (o Core..:? "videoClassificationTrainResp")
            Core.<*> (o Core..:? "videoObjectTrackingTrainResp")
      )

instance Core.ToJSON XPSTrainResponse where
  toJSON XPSTrainResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("deployedModelSizeBytes" Core..=)
              Core.. Core.AsText
              Core.<$> deployedModelSizeBytes,
            ("errorAnalysisConfigs" Core..=) Core.<$> errorAnalysisConfigs,
            ("evaluatedExampleSet" Core..=) Core.<$> evaluatedExampleSet,
            ("evaluationMetricsSet" Core..=) Core.<$> evaluationMetricsSet,
            ("explanationConfigs" Core..=) Core.<$> explanationConfigs,
            ("imageClassificationTrainResp" Core..=)
              Core.<$> imageClassificationTrainResp,
            ("imageObjectDetectionTrainResp" Core..=)
              Core.<$> imageObjectDetectionTrainResp,
            ("imageSegmentationTrainResp" Core..=)
              Core.<$> imageSegmentationTrainResp,
            ("modelToken" Core..=) Core.<$> modelToken,
            ("speechTrainResp" Core..=) Core.<$> speechTrainResp,
            ("tablesTrainResp" Core..=) Core.<$> tablesTrainResp,
            ("textToSpeechTrainResp" Core..=) Core.<$> textToSpeechTrainResp,
            ("textTrainResp" Core..=) Core.<$> textTrainResp,
            ("translationTrainResp" Core..=) Core.<$> translationTrainResp,
            ("videoActionRecognitionTrainResp" Core..=)
              Core.<$> videoActionRecognitionTrainResp,
            ("videoClassificationTrainResp" Core..=)
              Core.<$> videoClassificationTrainResp,
            ("videoObjectTrackingTrainResp" Core..=)
              Core.<$> videoObjectTrackingTrainResp
          ]
      )

--
-- /See:/ 'newXPSTrainingObjectivePoint' smart constructor.
data XPSTrainingObjectivePoint = XPSTrainingObjectivePoint
  { -- | The time at which this point was recorded.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The objective value when this point was recorded.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTrainingObjectivePoint' with the minimum fields required to make a request.
newXPSTrainingObjectivePoint ::
  XPSTrainingObjectivePoint
newXPSTrainingObjectivePoint =
  XPSTrainingObjectivePoint
    { createTime = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON XPSTrainingObjectivePoint where
  parseJSON =
    Core.withObject
      "XPSTrainingObjectivePoint"
      ( \o ->
          XPSTrainingObjectivePoint
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON XPSTrainingObjectivePoint where
  toJSON XPSTrainingObjectivePoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Evaluation metrics for the dataset.
--
-- /See:/ 'newXPSTranslationEvaluationMetrics' smart constructor.
data XPSTranslationEvaluationMetrics = XPSTranslationEvaluationMetrics
  { -- | BLEU score for base model.
    baseBleuScore :: (Core.Maybe Core.Double),
    -- | BLEU score.
    bleuScore :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTranslationEvaluationMetrics' with the minimum fields required to make a request.
newXPSTranslationEvaluationMetrics ::
  XPSTranslationEvaluationMetrics
newXPSTranslationEvaluationMetrics =
  XPSTranslationEvaluationMetrics
    { baseBleuScore = Core.Nothing,
      bleuScore = Core.Nothing
    }

instance Core.FromJSON XPSTranslationEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSTranslationEvaluationMetrics"
      ( \o ->
          XPSTranslationEvaluationMetrics
            Core.<$> (o Core..:? "baseBleuScore")
            Core.<*> (o Core..:? "bleuScore")
      )

instance Core.ToJSON XPSTranslationEvaluationMetrics where
  toJSON XPSTranslationEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseBleuScore" Core..=) Core.<$> baseBleuScore,
            ("bleuScore" Core..=) Core.<$> bleuScore
          ]
      )

-- | Translation preprocess response.
--
-- /See:/ 'newXPSTranslationPreprocessResponse' smart constructor.
data XPSTranslationPreprocessResponse = XPSTranslationPreprocessResponse
  { -- | Total example count parsed.
    parsedExampleCount :: (Core.Maybe Core.Int64),
    -- | Total valid example count.
    validExampleCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTranslationPreprocessResponse' with the minimum fields required to make a request.
newXPSTranslationPreprocessResponse ::
  XPSTranslationPreprocessResponse
newXPSTranslationPreprocessResponse =
  XPSTranslationPreprocessResponse
    { parsedExampleCount =
        Core.Nothing,
      validExampleCount = Core.Nothing
    }

instance Core.FromJSON XPSTranslationPreprocessResponse where
  parseJSON =
    Core.withObject
      "XPSTranslationPreprocessResponse"
      ( \o ->
          XPSTranslationPreprocessResponse
            Core.<$> ( o
                         Core..:? "parsedExampleCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o
                         Core..:? "validExampleCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSTranslationPreprocessResponse where
  toJSON XPSTranslationPreprocessResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("parsedExampleCount" Core..=)
              Core.. Core.AsText
              Core.<$> parsedExampleCount,
            ("validExampleCount" Core..=)
              Core.. Core.AsText
              Core.<$> validExampleCount
          ]
      )

-- | Train response for translation.
--
-- /See:/ 'newXPSTranslationTrainResponse' smart constructor.
newtype XPSTranslationTrainResponse = XPSTranslationTrainResponse
  { -- | Type of the model.
    modelType :: (Core.Maybe XPSTranslationTrainResponse_ModelType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTranslationTrainResponse' with the minimum fields required to make a request.
newXPSTranslationTrainResponse ::
  XPSTranslationTrainResponse
newXPSTranslationTrainResponse =
  XPSTranslationTrainResponse {modelType = Core.Nothing}

instance Core.FromJSON XPSTranslationTrainResponse where
  parseJSON =
    Core.withObject
      "XPSTranslationTrainResponse"
      ( \o ->
          XPSTranslationTrainResponse Core.<$> (o Core..:? "modelType")
      )

instance Core.ToJSON XPSTranslationTrainResponse where
  toJSON XPSTranslationTrainResponse {..} =
    Core.object
      (Core.catMaybes [("modelType" Core..=) Core.<$> modelType])

-- | Metrics for a tuning job generated, will get forwarded to Stackdriver as model tuning logs. Setting this as a standalone message out of CreateModelMetadata to avoid confusion as we expose this message only to users.
--
-- /See:/ 'newXPSTuningTrial' smart constructor.
data XPSTuningTrial = XPSTuningTrial
  { -- | Model parameters for the trial.
    modelStructure :: (Core.Maybe XPSTablesModelStructure),
    -- | The optimization objective evaluation of the eval split data.
    trainingObjectivePoint :: (Core.Maybe XPSTrainingObjectivePoint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSTuningTrial' with the minimum fields required to make a request.
newXPSTuningTrial ::
  XPSTuningTrial
newXPSTuningTrial =
  XPSTuningTrial
    { modelStructure = Core.Nothing,
      trainingObjectivePoint = Core.Nothing
    }

instance Core.FromJSON XPSTuningTrial where
  parseJSON =
    Core.withObject
      "XPSTuningTrial"
      ( \o ->
          XPSTuningTrial
            Core.<$> (o Core..:? "modelStructure")
            Core.<*> (o Core..:? "trainingObjectivePoint")
      )

instance Core.ToJSON XPSTuningTrial where
  toJSON XPSTuningTrial {..} =
    Core.object
      ( Core.catMaybes
          [ ("modelStructure" Core..=) Core.<$> modelStructure,
            ("trainingObjectivePoint" Core..=)
              Core.<$> trainingObjectivePoint
          ]
      )

-- | The Evaluation metrics entry given a specific precision/window/length.
--
-- /See:/ 'newXPSVideoActionMetricsEntry' smart constructor.
data XPSVideoActionMetricsEntry = XPSVideoActionMetricsEntry
  { -- | Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99.
    confidenceMetricsEntries :: (Core.Maybe [XPSVideoActionMetricsEntryConfidenceMetricsEntry]),
    -- | The mean average precision.
    meanAveragePrecision :: (Core.Maybe Core.Double),
    -- | This VideoActionMetricsEntry is calculated based on this prediction window length. If the predicted action\'s timestamp is inside the time window whose center is the ground truth action\'s timestamp with this specific length, the prediction result is treated as a true positive.
    precisionWindowLength :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoActionMetricsEntry' with the minimum fields required to make a request.
newXPSVideoActionMetricsEntry ::
  XPSVideoActionMetricsEntry
newXPSVideoActionMetricsEntry =
  XPSVideoActionMetricsEntry
    { confidenceMetricsEntries =
        Core.Nothing,
      meanAveragePrecision = Core.Nothing,
      precisionWindowLength = Core.Nothing
    }

instance Core.FromJSON XPSVideoActionMetricsEntry where
  parseJSON =
    Core.withObject
      "XPSVideoActionMetricsEntry"
      ( \o ->
          XPSVideoActionMetricsEntry
            Core.<$> (o Core..:? "confidenceMetricsEntries")
            Core.<*> (o Core..:? "meanAveragePrecision")
            Core.<*> (o Core..:? "precisionWindowLength")
      )

instance Core.ToJSON XPSVideoActionMetricsEntry where
  toJSON XPSVideoActionMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceMetricsEntries" Core..=)
              Core.<$> confidenceMetricsEntries,
            ("meanAveragePrecision" Core..=) Core.<$> meanAveragePrecision,
            ("precisionWindowLength" Core..=) Core.<$> precisionWindowLength
          ]
      )

-- | Metrics for a single confidence threshold.
--
-- /See:/ 'newXPSVideoActionMetricsEntryConfidenceMetricsEntry' smart constructor.
data XPSVideoActionMetricsEntryConfidenceMetricsEntry = XPSVideoActionMetricsEntryConfidenceMetricsEntry
  { -- | Output only. The confidence threshold value used to compute the metrics.
    confidenceThreshold :: (Core.Maybe Core.Double),
    -- | Output only. The harmonic mean of recall and precision.
    f1Score :: (Core.Maybe Core.Double),
    -- | Output only. Precision for the given confidence threshold.
    precision :: (Core.Maybe Core.Double),
    -- | Output only. Recall for the given confidence threshold.
    recall :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoActionMetricsEntryConfidenceMetricsEntry' with the minimum fields required to make a request.
newXPSVideoActionMetricsEntryConfidenceMetricsEntry ::
  XPSVideoActionMetricsEntryConfidenceMetricsEntry
newXPSVideoActionMetricsEntryConfidenceMetricsEntry =
  XPSVideoActionMetricsEntryConfidenceMetricsEntry
    { confidenceThreshold =
        Core.Nothing,
      f1Score = Core.Nothing,
      precision = Core.Nothing,
      recall = Core.Nothing
    }

instance
  Core.FromJSON
    XPSVideoActionMetricsEntryConfidenceMetricsEntry
  where
  parseJSON =
    Core.withObject
      "XPSVideoActionMetricsEntryConfidenceMetricsEntry"
      ( \o ->
          XPSVideoActionMetricsEntryConfidenceMetricsEntry
            Core.<$> (o Core..:? "confidenceThreshold")
            Core.<*> (o Core..:? "f1Score")
            Core.<*> (o Core..:? "precision")
            Core.<*> (o Core..:? "recall")
      )

instance
  Core.ToJSON
    XPSVideoActionMetricsEntryConfidenceMetricsEntry
  where
  toJSON XPSVideoActionMetricsEntryConfidenceMetricsEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidenceThreshold" Core..=) Core.<$> confidenceThreshold,
            ("f1Score" Core..=) Core.<$> f1Score,
            ("precision" Core..=) Core.<$> precision,
            ("recall" Core..=) Core.<$> recall
          ]
      )

-- | Model evaluation metrics for video action recognition.
--
-- /See:/ 'newXPSVideoActionRecognitionEvaluationMetrics' smart constructor.
data XPSVideoActionRecognitionEvaluationMetrics = XPSVideoActionRecognitionEvaluationMetrics
  { -- | Output only. The number of ground truth actions used to create this evaluation.
    evaluatedActionCount :: (Core.Maybe Core.Int32),
    -- | Output only. The metric entries for precision window lengths: 1s,2s,3s,4s, 5s.
    videoActionMetricsEntries :: (Core.Maybe [XPSVideoActionMetricsEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoActionRecognitionEvaluationMetrics' with the minimum fields required to make a request.
newXPSVideoActionRecognitionEvaluationMetrics ::
  XPSVideoActionRecognitionEvaluationMetrics
newXPSVideoActionRecognitionEvaluationMetrics =
  XPSVideoActionRecognitionEvaluationMetrics
    { evaluatedActionCount =
        Core.Nothing,
      videoActionMetricsEntries = Core.Nothing
    }

instance Core.FromJSON XPSVideoActionRecognitionEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSVideoActionRecognitionEvaluationMetrics"
      ( \o ->
          XPSVideoActionRecognitionEvaluationMetrics
            Core.<$> (o Core..:? "evaluatedActionCount")
            Core.<*> (o Core..:? "videoActionMetricsEntries")
      )

instance Core.ToJSON XPSVideoActionRecognitionEvaluationMetrics where
  toJSON XPSVideoActionRecognitionEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("evaluatedActionCount" Core..=) Core.<$> evaluatedActionCount,
            ("videoActionMetricsEntries" Core..=)
              Core.<$> videoActionMetricsEntries
          ]
      )

--
-- /See:/ 'newXPSVideoActionRecognitionTrainResponse' smart constructor.
data XPSVideoActionRecognitionTrainResponse = XPSVideoActionRecognitionTrainResponse
  { -- | == The fields below are only populated under uCAIP request scope.
    modelArtifactSpec :: (Core.Maybe XPSVideoModelArtifactSpec),
    -- | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this field means 1 node hour.
    trainCostNodeSeconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoActionRecognitionTrainResponse' with the minimum fields required to make a request.
newXPSVideoActionRecognitionTrainResponse ::
  XPSVideoActionRecognitionTrainResponse
newXPSVideoActionRecognitionTrainResponse =
  XPSVideoActionRecognitionTrainResponse
    { modelArtifactSpec =
        Core.Nothing,
      trainCostNodeSeconds = Core.Nothing
    }

instance Core.FromJSON XPSVideoActionRecognitionTrainResponse where
  parseJSON =
    Core.withObject
      "XPSVideoActionRecognitionTrainResponse"
      ( \o ->
          XPSVideoActionRecognitionTrainResponse
            Core.<$> (o Core..:? "modelArtifactSpec")
            Core.<*> ( o
                         Core..:? "trainCostNodeSeconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSVideoActionRecognitionTrainResponse where
  toJSON XPSVideoActionRecognitionTrainResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("modelArtifactSpec" Core..=) Core.<$> modelArtifactSpec,
            ("trainCostNodeSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> trainCostNodeSeconds
          ]
      )

--
-- /See:/ 'newXPSVideoBatchPredictOperationMetadata' smart constructor.
newtype XPSVideoBatchPredictOperationMetadata = XPSVideoBatchPredictOperationMetadata
  { -- | All the partial batch prediction results that are completed at the moment. Output examples are sorted by completion time. The order will not be changed. Each output example should be the path of a single RecordIO file of AnnotatedExamples.
    outputExamples :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoBatchPredictOperationMetadata' with the minimum fields required to make a request.
newXPSVideoBatchPredictOperationMetadata ::
  XPSVideoBatchPredictOperationMetadata
newXPSVideoBatchPredictOperationMetadata =
  XPSVideoBatchPredictOperationMetadata
    { outputExamples =
        Core.Nothing
    }

instance Core.FromJSON XPSVideoBatchPredictOperationMetadata where
  parseJSON =
    Core.withObject
      "XPSVideoBatchPredictOperationMetadata"
      ( \o ->
          XPSVideoBatchPredictOperationMetadata
            Core.<$> (o Core..:? "outputExamples")
      )

instance Core.ToJSON XPSVideoBatchPredictOperationMetadata where
  toJSON XPSVideoBatchPredictOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("outputExamples" Core..=) Core.<$> outputExamples]
      )

--
-- /See:/ 'newXPSVideoClassificationTrainResponse' smart constructor.
data XPSVideoClassificationTrainResponse = XPSVideoClassificationTrainResponse
  { -- | == The fields below are only populated under uCAIP request scope.
    modelArtifactSpec :: (Core.Maybe XPSVideoModelArtifactSpec),
    -- | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this field means 1 node hour.
    trainCostNodeSeconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoClassificationTrainResponse' with the minimum fields required to make a request.
newXPSVideoClassificationTrainResponse ::
  XPSVideoClassificationTrainResponse
newXPSVideoClassificationTrainResponse =
  XPSVideoClassificationTrainResponse
    { modelArtifactSpec =
        Core.Nothing,
      trainCostNodeSeconds = Core.Nothing
    }

instance Core.FromJSON XPSVideoClassificationTrainResponse where
  parseJSON =
    Core.withObject
      "XPSVideoClassificationTrainResponse"
      ( \o ->
          XPSVideoClassificationTrainResponse
            Core.<$> (o Core..:? "modelArtifactSpec")
            Core.<*> ( o
                         Core..:? "trainCostNodeSeconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSVideoClassificationTrainResponse where
  toJSON XPSVideoClassificationTrainResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("modelArtifactSpec" Core..=) Core.<$> modelArtifactSpec,
            ("trainCostNodeSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> trainCostNodeSeconds
          ]
      )

-- | Information of downloadable models that are pre-generated as part of training flow and will be persisted in AutoMl backend. Upon receiving ExportModel request from user, AutoMl backend can serve the pre-generated models to user if exists (by copying the files from internal path to user provided location), otherwise, AutoMl backend will call xPS ExportModel API to generate the model on the fly with the requesting format.
--
-- /See:/ 'newXPSVideoExportModelSpec' smart constructor.
newtype XPSVideoExportModelSpec = XPSVideoExportModelSpec
  { -- | Contains the model format and internal location of the model files to be exported\/downloaded. Use the Google Cloud Storage bucket name which is provided via TrainRequest.gcs/bucket/name to store the model files.
    exportModelOutputConfig :: (Core.Maybe [XPSExportModelOutputConfig])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoExportModelSpec' with the minimum fields required to make a request.
newXPSVideoExportModelSpec ::
  XPSVideoExportModelSpec
newXPSVideoExportModelSpec =
  XPSVideoExportModelSpec {exportModelOutputConfig = Core.Nothing}

instance Core.FromJSON XPSVideoExportModelSpec where
  parseJSON =
    Core.withObject
      "XPSVideoExportModelSpec"
      ( \o ->
          XPSVideoExportModelSpec
            Core.<$> (o Core..:? "exportModelOutputConfig")
      )

instance Core.ToJSON XPSVideoExportModelSpec where
  toJSON XPSVideoExportModelSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("exportModelOutputConfig" Core..=)
              Core.<$> exportModelOutputConfig
          ]
      )

--
-- /See:/ 'newXPSVideoModelArtifactSpec' smart constructor.
data XPSVideoModelArtifactSpec = XPSVideoModelArtifactSpec
  { -- | The model binary files in different formats for model export.
    exportArtifact :: (Core.Maybe [XPSModelArtifactItem]),
    -- | The default model binary file used for serving (e.g. batch predict) via public Cloud AI Platform API.
    servingArtifact :: (Core.Maybe XPSModelArtifactItem)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoModelArtifactSpec' with the minimum fields required to make a request.
newXPSVideoModelArtifactSpec ::
  XPSVideoModelArtifactSpec
newXPSVideoModelArtifactSpec =
  XPSVideoModelArtifactSpec
    { exportArtifact = Core.Nothing,
      servingArtifact = Core.Nothing
    }

instance Core.FromJSON XPSVideoModelArtifactSpec where
  parseJSON =
    Core.withObject
      "XPSVideoModelArtifactSpec"
      ( \o ->
          XPSVideoModelArtifactSpec
            Core.<$> (o Core..:? "exportArtifact")
            Core.<*> (o Core..:? "servingArtifact")
      )

instance Core.ToJSON XPSVideoModelArtifactSpec where
  toJSON XPSVideoModelArtifactSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("exportArtifact" Core..=) Core.<$> exportArtifact,
            ("servingArtifact" Core..=) Core.<$> servingArtifact
          ]
      )

-- | Model evaluation metrics for ObjectTracking problems. Next tag: 10.
--
-- /See:/ 'newXPSVideoObjectTrackingEvaluationMetrics' smart constructor.
data XPSVideoObjectTrackingEvaluationMetrics = XPSVideoObjectTrackingEvaluationMetrics
  { -- | Output only. The single metric for bounding boxes evaluation: the mean/average/precision averaged over all bounding/box/metrics_entries.
    boundingBoxMeanAveragePrecision :: (Core.Maybe Core.Double),
    -- | Output only. The bounding boxes match metrics for each Intersection-over-union threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99.
    boundingBoxMetricsEntries :: (Core.Maybe [XPSBoundingBoxMetricsEntry]),
    -- | The number of bounding boxes used for model evaluation.
    evaluatedBoundingboxCount :: (Core.Maybe Core.Int32),
    -- | The number of video frames used for model evaluation.
    evaluatedFrameCount :: (Core.Maybe Core.Int32),
    -- | The number of tracks used for model evaluation.
    evaluatedTrackCount :: (Core.Maybe Core.Int32),
    -- | Output only. The single metric for tracks accuracy evaluation: the mean/average/precision averaged over all track/metrics/entries.
    trackMeanAveragePrecision :: (Core.Maybe Core.Double),
    -- | Output only. The single metric for tracks bounding box iou evaluation: the mean/bounding/box/iou averaged over all track/metrics_entries.
    trackMeanBoundingBoxIou :: (Core.Maybe Core.Double),
    -- | Output only. The single metric for tracking consistency evaluation: the mean/mismatch/rate averaged over all track/metrics/entries.
    trackMeanMismatchRate :: (Core.Maybe Core.Double),
    -- | Output only. The tracks match metrics for each Intersection-over-union threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99.
    trackMetricsEntries :: (Core.Maybe [XPSTrackMetricsEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoObjectTrackingEvaluationMetrics' with the minimum fields required to make a request.
newXPSVideoObjectTrackingEvaluationMetrics ::
  XPSVideoObjectTrackingEvaluationMetrics
newXPSVideoObjectTrackingEvaluationMetrics =
  XPSVideoObjectTrackingEvaluationMetrics
    { boundingBoxMeanAveragePrecision =
        Core.Nothing,
      boundingBoxMetricsEntries = Core.Nothing,
      evaluatedBoundingboxCount = Core.Nothing,
      evaluatedFrameCount = Core.Nothing,
      evaluatedTrackCount = Core.Nothing,
      trackMeanAveragePrecision = Core.Nothing,
      trackMeanBoundingBoxIou = Core.Nothing,
      trackMeanMismatchRate = Core.Nothing,
      trackMetricsEntries = Core.Nothing
    }

instance Core.FromJSON XPSVideoObjectTrackingEvaluationMetrics where
  parseJSON =
    Core.withObject
      "XPSVideoObjectTrackingEvaluationMetrics"
      ( \o ->
          XPSVideoObjectTrackingEvaluationMetrics
            Core.<$> (o Core..:? "boundingBoxMeanAveragePrecision")
            Core.<*> (o Core..:? "boundingBoxMetricsEntries")
            Core.<*> (o Core..:? "evaluatedBoundingboxCount")
            Core.<*> (o Core..:? "evaluatedFrameCount")
            Core.<*> (o Core..:? "evaluatedTrackCount")
            Core.<*> (o Core..:? "trackMeanAveragePrecision")
            Core.<*> (o Core..:? "trackMeanBoundingBoxIou")
            Core.<*> (o Core..:? "trackMeanMismatchRate")
            Core.<*> (o Core..:? "trackMetricsEntries")
      )

instance Core.ToJSON XPSVideoObjectTrackingEvaluationMetrics where
  toJSON XPSVideoObjectTrackingEvaluationMetrics {..} =
    Core.object
      ( Core.catMaybes
          [ ("boundingBoxMeanAveragePrecision" Core..=)
              Core.<$> boundingBoxMeanAveragePrecision,
            ("boundingBoxMetricsEntries" Core..=)
              Core.<$> boundingBoxMetricsEntries,
            ("evaluatedBoundingboxCount" Core..=)
              Core.<$> evaluatedBoundingboxCount,
            ("evaluatedFrameCount" Core..=) Core.<$> evaluatedFrameCount,
            ("evaluatedTrackCount" Core..=) Core.<$> evaluatedTrackCount,
            ("trackMeanAveragePrecision" Core..=)
              Core.<$> trackMeanAveragePrecision,
            ("trackMeanBoundingBoxIou" Core..=)
              Core.<$> trackMeanBoundingBoxIou,
            ("trackMeanMismatchRate" Core..=) Core.<$> trackMeanMismatchRate,
            ("trackMetricsEntries" Core..=) Core.<$> trackMetricsEntries
          ]
      )

--
-- /See:/ 'newXPSVideoObjectTrackingTrainResponse' smart constructor.
data XPSVideoObjectTrackingTrainResponse = XPSVideoObjectTrackingTrainResponse
  { -- | Populated for AutoML request only.
    exportModelSpec :: (Core.Maybe XPSVideoExportModelSpec),
    -- | == The fields below are only populated under uCAIP request scope.
    modelArtifactSpec :: (Core.Maybe XPSVideoModelArtifactSpec),
    -- | The actual train cost of creating this model, expressed in node seconds, i.e. 3,600 value in this field means 1 node hour.
    trainCostNodeSeconds :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoObjectTrackingTrainResponse' with the minimum fields required to make a request.
newXPSVideoObjectTrackingTrainResponse ::
  XPSVideoObjectTrackingTrainResponse
newXPSVideoObjectTrackingTrainResponse =
  XPSVideoObjectTrackingTrainResponse
    { exportModelSpec =
        Core.Nothing,
      modelArtifactSpec = Core.Nothing,
      trainCostNodeSeconds = Core.Nothing
    }

instance Core.FromJSON XPSVideoObjectTrackingTrainResponse where
  parseJSON =
    Core.withObject
      "XPSVideoObjectTrackingTrainResponse"
      ( \o ->
          XPSVideoObjectTrackingTrainResponse
            Core.<$> (o Core..:? "exportModelSpec")
            Core.<*> (o Core..:? "modelArtifactSpec")
            Core.<*> ( o
                         Core..:? "trainCostNodeSeconds"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSVideoObjectTrackingTrainResponse where
  toJSON XPSVideoObjectTrackingTrainResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("exportModelSpec" Core..=) Core.<$> exportModelSpec,
            ("modelArtifactSpec" Core..=) Core.<$> modelArtifactSpec,
            ("trainCostNodeSeconds" Core..=)
              Core.. Core.AsText
              Core.<$> trainCostNodeSeconds
          ]
      )

--
-- /See:/ 'newXPSVideoTrainingOperationMetadata' smart constructor.
newtype XPSVideoTrainingOperationMetadata = XPSVideoTrainingOperationMetadata
  { -- | This is an estimation of the node hours necessary for training a model, expressed in milli node hours (i.e. 1,000 value in this field means 1 node hour). A node hour represents the time a virtual machine spends running your training job. The cost of one node running for one hour is a node hour.
    trainCostMilliNodeHour :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVideoTrainingOperationMetadata' with the minimum fields required to make a request.
newXPSVideoTrainingOperationMetadata ::
  XPSVideoTrainingOperationMetadata
newXPSVideoTrainingOperationMetadata =
  XPSVideoTrainingOperationMetadata
    { trainCostMilliNodeHour =
        Core.Nothing
    }

instance Core.FromJSON XPSVideoTrainingOperationMetadata where
  parseJSON =
    Core.withObject
      "XPSVideoTrainingOperationMetadata"
      ( \o ->
          XPSVideoTrainingOperationMetadata
            Core.<$> ( o
                         Core..:? "trainCostMilliNodeHour"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON XPSVideoTrainingOperationMetadata where
  toJSON XPSVideoTrainingOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("trainCostMilliNodeHour" Core..=)
              Core.. Core.AsText
              Core.<$> trainCostMilliNodeHour
          ]
      )

-- | The vision model error analysis configuration. Next tag: 3
--
-- /See:/ 'newXPSVisionErrorAnalysisConfig' smart constructor.
data XPSVisionErrorAnalysisConfig = XPSVisionErrorAnalysisConfig
  { -- | The number of query examples in error analysis.
    exampleCount :: (Core.Maybe Core.Int32),
    -- | The query type used in retrieval. The enum values are frozen in the foreseeable future.
    queryType :: (Core.Maybe XPSVisionErrorAnalysisConfig_QueryType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVisionErrorAnalysisConfig' with the minimum fields required to make a request.
newXPSVisionErrorAnalysisConfig ::
  XPSVisionErrorAnalysisConfig
newXPSVisionErrorAnalysisConfig =
  XPSVisionErrorAnalysisConfig
    { exampleCount = Core.Nothing,
      queryType = Core.Nothing
    }

instance Core.FromJSON XPSVisionErrorAnalysisConfig where
  parseJSON =
    Core.withObject
      "XPSVisionErrorAnalysisConfig"
      ( \o ->
          XPSVisionErrorAnalysisConfig
            Core.<$> (o Core..:? "exampleCount")
            Core.<*> (o Core..:? "queryType")
      )

instance Core.ToJSON XPSVisionErrorAnalysisConfig where
  toJSON XPSVisionErrorAnalysisConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exampleCount" Core..=) Core.<$> exampleCount,
            ("queryType" Core..=) Core.<$> queryType
          ]
      )

--
-- /See:/ 'newXPSVisionTrainingOperationMetadata' smart constructor.
newtype XPSVisionTrainingOperationMetadata = XPSVisionTrainingOperationMetadata
  { -- | Aggregated infra usage within certain time period, for billing report purpose if XAI is enable in training request.
    explanationUsage :: (Core.Maybe InfraUsage)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVisionTrainingOperationMetadata' with the minimum fields required to make a request.
newXPSVisionTrainingOperationMetadata ::
  XPSVisionTrainingOperationMetadata
newXPSVisionTrainingOperationMetadata =
  XPSVisionTrainingOperationMetadata
    { explanationUsage =
        Core.Nothing
    }

instance Core.FromJSON XPSVisionTrainingOperationMetadata where
  parseJSON =
    Core.withObject
      "XPSVisionTrainingOperationMetadata"
      ( \o ->
          XPSVisionTrainingOperationMetadata
            Core.<$> (o Core..:? "explanationUsage")
      )

instance Core.ToJSON XPSVisionTrainingOperationMetadata where
  toJSON XPSVisionTrainingOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("explanationUsage" Core..=) Core.<$> explanationUsage]
      )

-- | Visualization configurations for image explanation.
--
-- /See:/ 'newXPSVisualization' smart constructor.
data XPSVisualization = XPSVisualization
  { -- | Excludes attributions below the specified percentile, from the highlighted areas. Defaults to 62.
    clipPercentLowerbound :: (Core.Maybe Core.Double),
    -- | Excludes attributions above the specified percentile from the highlighted areas. Using the clip/percent/upperbound and clip/percent/lowerbound together can be useful for filtering out noise and making it easier to see areas of strong attribution. Defaults to 99.9.
    clipPercentUpperbound :: (Core.Maybe Core.Double),
    -- | The color scheme used for the highlighted areas. Defaults to PINK_GREEN for Integrated Gradients attribution, which shows positive attributions in green and negative in pink. Defaults to VIRIDIS for XRAI attribution, which highlights the most influential regions in yellow and the least influential in blue.
    colorMap :: (Core.Maybe XPSVisualization_ColorMap),
    -- | How the original image is displayed in the visualization. Adjusting the overlay can help increase visual clarity if the original image makes it difficult to view the visualization. Defaults to NONE.
    overlayType :: (Core.Maybe XPSVisualization_OverlayType),
    -- | Whether to only highlight pixels with positive contributions, negative or both. Defaults to POSITIVE.
    polarity :: (Core.Maybe XPSVisualization_Polarity),
    -- | Type of the image visualization. Only applicable to Integrated Gradients attribution. OUTLINES shows regions of attribution, while PIXELS shows per-pixel attribution. Defaults to OUTLINES.
    type' :: (Core.Maybe XPSVisualization_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSVisualization' with the minimum fields required to make a request.
newXPSVisualization ::
  XPSVisualization
newXPSVisualization =
  XPSVisualization
    { clipPercentLowerbound = Core.Nothing,
      clipPercentUpperbound = Core.Nothing,
      colorMap = Core.Nothing,
      overlayType = Core.Nothing,
      polarity = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON XPSVisualization where
  parseJSON =
    Core.withObject
      "XPSVisualization"
      ( \o ->
          XPSVisualization
            Core.<$> (o Core..:? "clipPercentLowerbound")
            Core.<*> (o Core..:? "clipPercentUpperbound")
            Core.<*> (o Core..:? "colorMap")
            Core.<*> (o Core..:? "overlayType")
            Core.<*> (o Core..:? "polarity")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON XPSVisualization where
  toJSON XPSVisualization {..} =
    Core.object
      ( Core.catMaybes
          [ ("clipPercentLowerbound" Core..=) Core.<$> clipPercentLowerbound,
            ("clipPercentUpperbound" Core..=) Core.<$> clipPercentUpperbound,
            ("colorMap" Core..=) Core.<$> colorMap,
            ("overlayType" Core..=) Core.<$> overlayType,
            ("polarity" Core..=) Core.<$> polarity,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newXPSXpsOperationMetadata' smart constructor.
data XPSXpsOperationMetadata = XPSXpsOperationMetadata
  { -- | Optional. XPS server can opt to provide example count of the long running operation (e.g. training, data importing, batch prediction).
    exampleCount :: (Core.Maybe Core.Int64),
    -- | Metrics for the operation. By the time the operation is terminated (whether succeeded or failed) as returned from XPS, AutoML BE assumes the metrics are finalized. AutoML BE transparently posts the metrics to Chemist if it\'s not empty, regardless of the response content or error type. If user is supposed to be charged in case of cancellation\/error, this field should be set. In the case where the type of LRO doesn\'t require any billing, this field should be left unset.
    reportingMetrics :: (Core.Maybe XPSReportingMetrics),
    tablesTrainingOperationMetadata :: (Core.Maybe XPSTablesTrainingOperationMetadata),
    videoBatchPredictOperationMetadata :: (Core.Maybe XPSVideoBatchPredictOperationMetadata),
    videoTrainingOperationMetadata :: (Core.Maybe XPSVideoTrainingOperationMetadata),
    visionTrainingOperationMetadata :: (Core.Maybe XPSVisionTrainingOperationMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSXpsOperationMetadata' with the minimum fields required to make a request.
newXPSXpsOperationMetadata ::
  XPSXpsOperationMetadata
newXPSXpsOperationMetadata =
  XPSXpsOperationMetadata
    { exampleCount = Core.Nothing,
      reportingMetrics = Core.Nothing,
      tablesTrainingOperationMetadata = Core.Nothing,
      videoBatchPredictOperationMetadata = Core.Nothing,
      videoTrainingOperationMetadata = Core.Nothing,
      visionTrainingOperationMetadata = Core.Nothing
    }

instance Core.FromJSON XPSXpsOperationMetadata where
  parseJSON =
    Core.withObject
      "XPSXpsOperationMetadata"
      ( \o ->
          XPSXpsOperationMetadata
            Core.<$> (o Core..:? "exampleCount" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "reportingMetrics")
            Core.<*> (o Core..:? "tablesTrainingOperationMetadata")
            Core.<*> (o Core..:? "videoBatchPredictOperationMetadata")
            Core.<*> (o Core..:? "videoTrainingOperationMetadata")
            Core.<*> (o Core..:? "visionTrainingOperationMetadata")
      )

instance Core.ToJSON XPSXpsOperationMetadata where
  toJSON XPSXpsOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("exampleCount" Core..=) Core.. Core.AsText Core.<$> exampleCount,
            ("reportingMetrics" Core..=) Core.<$> reportingMetrics,
            ("tablesTrainingOperationMetadata" Core..=)
              Core.<$> tablesTrainingOperationMetadata,
            ("videoBatchPredictOperationMetadata" Core..=)
              Core.<$> videoBatchPredictOperationMetadata,
            ("videoTrainingOperationMetadata" Core..=)
              Core.<$> videoTrainingOperationMetadata,
            ("visionTrainingOperationMetadata" Core..=)
              Core.<$> visionTrainingOperationMetadata
          ]
      )

-- | An explanation method that redistributes Integrated Gradients attributions to segmented regions, taking advantage of the model\'s fully differentiable structure. Refer to this paper for more details: https:\/\/arxiv.org\/abs\/1906.02825 Only supports image Models (modality is IMAGE).
--
-- /See:/ 'newXPSXraiAttribution' smart constructor.
newtype XPSXraiAttribution = XPSXraiAttribution
  { -- | The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range. Valid range of its value is [1, 100], inclusively.
    stepCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'XPSXraiAttribution' with the minimum fields required to make a request.
newXPSXraiAttribution ::
  XPSXraiAttribution
newXPSXraiAttribution =
  XPSXraiAttribution {stepCount = Core.Nothing}

instance Core.FromJSON XPSXraiAttribution where
  parseJSON =
    Core.withObject
      "XPSXraiAttribution"
      (\o -> XPSXraiAttribution Core.<$> (o Core..:? "stepCount"))

instance Core.ToJSON XPSXraiAttribution where
  toJSON XPSXraiAttribution {..} =
    Core.object
      (Core.catMaybes [("stepCount" Core..=) Core.<$> stepCount])
