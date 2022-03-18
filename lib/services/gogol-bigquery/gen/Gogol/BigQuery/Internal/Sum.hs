{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.BigQuery.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.BigQuery.Internal.Sum
  (

    -- * Argument_ArgumentKind
    Argument_ArgumentKind
      (
        Argument_ArgumentKind_ARGUMENTKINDUNSPECIFIED,
        Argument_ArgumentKind_FIXEDTYPE,
        Argument_ArgumentKind_ANYTYPE,
        ..
      ),

    -- * Argument_Mode
    Argument_Mode
      (
        Argument_Mode_MODEUNSPECIFIED,
        Argument_Mode_IN,
        Argument_Mode_Out,
        Argument_Mode_Inout,
        ..
      ),

    -- * ArimaForecastingMetrics_SeasonalPeriodsItem
    ArimaForecastingMetrics_SeasonalPeriodsItem
      (
        ArimaForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
        ArimaForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Daily,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Weekly,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Monthly,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Quarterly,
        ArimaForecastingMetrics_SeasonalPeriodsItem_Yearly,
        ..
      ),

    -- * ArimaModelInfo_SeasonalPeriodsItem
    ArimaModelInfo_SeasonalPeriodsItem
      (
        ArimaModelInfo_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
        ArimaModelInfo_SeasonalPeriodsItem_NOSEASONALITY,
        ArimaModelInfo_SeasonalPeriodsItem_Daily,
        ArimaModelInfo_SeasonalPeriodsItem_Weekly,
        ArimaModelInfo_SeasonalPeriodsItem_Monthly,
        ArimaModelInfo_SeasonalPeriodsItem_Quarterly,
        ArimaModelInfo_SeasonalPeriodsItem_Yearly,
        ..
      ),

    -- * ArimaResult_SeasonalPeriodsItem
    ArimaResult_SeasonalPeriodsItem
      (
        ArimaResult_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
        ArimaResult_SeasonalPeriodsItem_NOSEASONALITY,
        ArimaResult_SeasonalPeriodsItem_Daily,
        ArimaResult_SeasonalPeriodsItem_Weekly,
        ArimaResult_SeasonalPeriodsItem_Monthly,
        ArimaResult_SeasonalPeriodsItem_Quarterly,
        ArimaResult_SeasonalPeriodsItem_Yearly,
        ..
      ),

    -- * ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
    ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
      (
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Daily,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Weekly,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Monthly,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Quarterly,
        ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Yearly,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      (
        AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * DatasetAccessEntry_TargetTypesItem
    DatasetAccessEntry_TargetTypesItem
      (
        DatasetAccessEntry_TargetTypesItem_TARGETTYPEUNSPECIFIED,
        DatasetAccessEntry_TargetTypesItem_Views,
        ..
      ),

    -- * HparamTuningTrial_Status
    HparamTuningTrial_Status
      (
        HparamTuningTrial_Status_TRIALSTATUSUNSPECIFIED,
        HparamTuningTrial_Status_NOTSTARTED,
        HparamTuningTrial_Status_Running,
        HparamTuningTrial_Status_Succeeded,
        HparamTuningTrial_Status_Failed,
        HparamTuningTrial_Status_Infeasible,
        HparamTuningTrial_Status_STOPPEDEARLY,
        ..
      ),

    -- * Model_ModelType
    Model_ModelType
      (
        Model_ModelType_MODELTYPEUNSPECIFIED,
        Model_ModelType_LINEARREGRESSION,
        Model_ModelType_LOGISTICREGRESSION,
        Model_ModelType_Kmeans,
        Model_ModelType_MATRIXFACTORIZATION,
        Model_ModelType_DNNCLASSIFIER,
        Model_ModelType_Tensorflow,
        Model_ModelType_DNNREGRESSOR,
        Model_ModelType_BOOSTEDTREEREGRESSOR,
        Model_ModelType_BOOSTEDTREECLASSIFIER,
        Model_ModelType_Arima,
        Model_ModelType_AUTOMLREGRESSOR,
        Model_ModelType_AUTOMLCLASSIFIER,
        Model_ModelType_Pca,
        Model_ModelType_Autoencoder,
        Model_ModelType_ARIMAPLUS,
        ..
      ),

    -- * Routine_DeterminismLevel
    Routine_DeterminismLevel
      (
        Routine_DeterminismLevel_DETERMINISMLEVELUNSPECIFIED,
        Routine_DeterminismLevel_Deterministic,
        Routine_DeterminismLevel_NOTDETERMINISTIC,
        ..
      ),

    -- * Routine_Language
    Routine_Language
      (
        Routine_Language_LANGUAGEUNSPECIFIED,
        Routine_Language_Sql,
        Routine_Language_Javascript,
        ..
      ),

    -- * Routine_RoutineType
    Routine_RoutineType
      (
        Routine_RoutineType_ROUTINETYPEUNSPECIFIED,
        Routine_RoutineType_SCALARFUNCTION,
        Routine_RoutineType_Procedure,
        Routine_RoutineType_TABLEVALUEDFUNCTION,
        ..
      ),

    -- * StandardSqlDataType_TypeKind
    StandardSqlDataType_TypeKind
      (
        StandardSqlDataType_TypeKind_TYPEKINDUNSPECIFIED,
        StandardSqlDataType_TypeKind_INT64,
        StandardSqlDataType_TypeKind_Bool,
        StandardSqlDataType_TypeKind_FLOAT64,
        StandardSqlDataType_TypeKind_String,
        StandardSqlDataType_TypeKind_Bytes,
        StandardSqlDataType_TypeKind_Timestamp,
        StandardSqlDataType_TypeKind_Date,
        StandardSqlDataType_TypeKind_Time,
        StandardSqlDataType_TypeKind_Datetime,
        StandardSqlDataType_TypeKind_Interval,
        StandardSqlDataType_TypeKind_Geography,
        StandardSqlDataType_TypeKind_Numeric,
        StandardSqlDataType_TypeKind_Bignumeric,
        StandardSqlDataType_TypeKind_Json,
        StandardSqlDataType_TypeKind_Array,
        StandardSqlDataType_TypeKind_Struct,
        ..
      ),

    -- * TrainingOptions_BoosterType
    TrainingOptions_BoosterType
      (
        TrainingOptions_BoosterType_BOOSTERTYPEUNSPECIFIED,
        TrainingOptions_BoosterType_Gbtree,
        TrainingOptions_BoosterType_Dart,
        ..
      ),

    -- * TrainingOptions_DartNormalizeType
    TrainingOptions_DartNormalizeType
      (
        TrainingOptions_DartNormalizeType_DARTNORMALIZETYPEUNSPECIFIED,
        TrainingOptions_DartNormalizeType_Tree,
        TrainingOptions_DartNormalizeType_Forest,
        ..
      ),

    -- * TrainingOptions_DataFrequency
    TrainingOptions_DataFrequency
      (
        TrainingOptions_DataFrequency_DATAFREQUENCYUNSPECIFIED,
        TrainingOptions_DataFrequency_AUTOFREQUENCY,
        TrainingOptions_DataFrequency_Yearly,
        TrainingOptions_DataFrequency_Quarterly,
        TrainingOptions_DataFrequency_Monthly,
        TrainingOptions_DataFrequency_Weekly,
        TrainingOptions_DataFrequency_Daily,
        TrainingOptions_DataFrequency_Hourly,
        TrainingOptions_DataFrequency_PERMINUTE,
        ..
      ),

    -- * TrainingOptions_DataSplitMethod
    TrainingOptions_DataSplitMethod
      (
        TrainingOptions_DataSplitMethod_DATASPLITMETHODUNSPECIFIED,
        TrainingOptions_DataSplitMethod_Random,
        TrainingOptions_DataSplitMethod_Custom,
        TrainingOptions_DataSplitMethod_Sequential,
        TrainingOptions_DataSplitMethod_NOSPLIT,
        TrainingOptions_DataSplitMethod_AUTOSPLIT,
        ..
      ),

    -- * TrainingOptions_DistanceType
    TrainingOptions_DistanceType
      (
        TrainingOptions_DistanceType_DISTANCETYPEUNSPECIFIED,
        TrainingOptions_DistanceType_Euclidean,
        TrainingOptions_DistanceType_Cosine,
        ..
      ),

    -- * TrainingOptions_FeedbackType
    TrainingOptions_FeedbackType
      (
        TrainingOptions_FeedbackType_FEEDBACKTYPEUNSPECIFIED,
        TrainingOptions_FeedbackType_Implicit,
        TrainingOptions_FeedbackType_Explicit,
        ..
      ),

    -- * TrainingOptions_HolidayRegion
    TrainingOptions_HolidayRegion
      (
        TrainingOptions_HolidayRegion_HOLIDAYREGIONUNSPECIFIED,
        TrainingOptions_HolidayRegion_Global,
        TrainingOptions_HolidayRegion_NA,
        TrainingOptions_HolidayRegion_Japac,
        TrainingOptions_HolidayRegion_Emea,
        TrainingOptions_HolidayRegion_Lac,
        TrainingOptions_HolidayRegion_AE,
        TrainingOptions_HolidayRegion_AR,
        TrainingOptions_HolidayRegion_AT,
        TrainingOptions_HolidayRegion_AU,
        TrainingOptions_HolidayRegion_BE,
        TrainingOptions_HolidayRegion_BR,
        TrainingOptions_HolidayRegion_CA,
        TrainingOptions_HolidayRegion_CH,
        TrainingOptions_HolidayRegion_CL,
        TrainingOptions_HolidayRegion_CN,
        TrainingOptions_HolidayRegion_CO,
        TrainingOptions_HolidayRegion_CS,
        TrainingOptions_HolidayRegion_CZ,
        TrainingOptions_HolidayRegion_DE,
        TrainingOptions_HolidayRegion_DK,
        TrainingOptions_HolidayRegion_DZ,
        TrainingOptions_HolidayRegion_EC,
        TrainingOptions_HolidayRegion_EE,
        TrainingOptions_HolidayRegion_EG,
        TrainingOptions_HolidayRegion_ES,
        TrainingOptions_HolidayRegion_FI,
        TrainingOptions_HolidayRegion_FR,
        TrainingOptions_HolidayRegion_GB,
        TrainingOptions_HolidayRegion_GR,
        TrainingOptions_HolidayRegion_HK,
        TrainingOptions_HolidayRegion_HU,
        TrainingOptions_HolidayRegion_ID,
        TrainingOptions_HolidayRegion_IE,
        TrainingOptions_HolidayRegion_IL,
        TrainingOptions_HolidayRegion_IN,
        TrainingOptions_HolidayRegion_IR,
        TrainingOptions_HolidayRegion_IT,
        TrainingOptions_HolidayRegion_JP,
        TrainingOptions_HolidayRegion_KR,
        TrainingOptions_HolidayRegion_LV,
        TrainingOptions_HolidayRegion_MA,
        TrainingOptions_HolidayRegion_MX,
        TrainingOptions_HolidayRegion_MY,
        TrainingOptions_HolidayRegion_NG,
        TrainingOptions_HolidayRegion_NL,
        TrainingOptions_HolidayRegion_NO,
        TrainingOptions_HolidayRegion_NZ,
        TrainingOptions_HolidayRegion_PE,
        TrainingOptions_HolidayRegion_PH,
        TrainingOptions_HolidayRegion_PK,
        TrainingOptions_HolidayRegion_PL,
        TrainingOptions_HolidayRegion_PT,
        TrainingOptions_HolidayRegion_RO,
        TrainingOptions_HolidayRegion_RS,
        TrainingOptions_HolidayRegion_RU,
        TrainingOptions_HolidayRegion_SA,
        TrainingOptions_HolidayRegion_SE,
        TrainingOptions_HolidayRegion_SG,
        TrainingOptions_HolidayRegion_SI,
        TrainingOptions_HolidayRegion_SK,
        TrainingOptions_HolidayRegion_TH,
        TrainingOptions_HolidayRegion_TR,
        TrainingOptions_HolidayRegion_TW,
        TrainingOptions_HolidayRegion_UA,
        TrainingOptions_HolidayRegion_US,
        TrainingOptions_HolidayRegion_VE,
        TrainingOptions_HolidayRegion_VN,
        TrainingOptions_HolidayRegion_ZA,
        ..
      ),

    -- * TrainingOptions_HparamTuningObjectivesItem
    TrainingOptions_HparamTuningObjectivesItem
      (
        TrainingOptions_HparamTuningObjectivesItem_HPARAMTUNINGOBJECTIVEUNSPECIFIED,
        TrainingOptions_HparamTuningObjectivesItem_MEANABSOLUTEERROR,
        TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDERROR,
        TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDLOGERROR,
        TrainingOptions_HparamTuningObjectivesItem_MEDIANABSOLUTEERROR,
        TrainingOptions_HparamTuningObjectivesItem_RSQUARED,
        TrainingOptions_HparamTuningObjectivesItem_EXPLAINEDVARIANCE,
        TrainingOptions_HparamTuningObjectivesItem_Precision,
        TrainingOptions_HparamTuningObjectivesItem_Recall,
        TrainingOptions_HparamTuningObjectivesItem_Accuracy,
        TrainingOptions_HparamTuningObjectivesItem_F1SCORE,
        TrainingOptions_HparamTuningObjectivesItem_LOGLOSS,
        TrainingOptions_HparamTuningObjectivesItem_ROCAUC,
        TrainingOptions_HparamTuningObjectivesItem_DAVIESBOULDININDEX,
        TrainingOptions_HparamTuningObjectivesItem_MEANAVERAGEPRECISION,
        TrainingOptions_HparamTuningObjectivesItem_NORMALIZEDDISCOUNTEDCUMULATIVEGAIN,
        TrainingOptions_HparamTuningObjectivesItem_AVERAGERANK,
        ..
      ),

    -- * TrainingOptions_KmeansInitializationMethod
    TrainingOptions_KmeansInitializationMethod
      (
        TrainingOptions_KmeansInitializationMethod_KMEANSINITIALIZATIONMETHODUNSPECIFIED,
        TrainingOptions_KmeansInitializationMethod_Random,
        TrainingOptions_KmeansInitializationMethod_Custom,
        TrainingOptions_KmeansInitializationMethod_KMEANSPLUSPLUS,
        ..
      ),

    -- * TrainingOptions_LearnRateStrategy
    TrainingOptions_LearnRateStrategy
      (
        TrainingOptions_LearnRateStrategy_LEARNRATESTRATEGYUNSPECIFIED,
        TrainingOptions_LearnRateStrategy_LINESEARCH,
        TrainingOptions_LearnRateStrategy_Constant,
        ..
      ),

    -- * TrainingOptions_LossType
    TrainingOptions_LossType
      (
        TrainingOptions_LossType_LOSSTYPEUNSPECIFIED,
        TrainingOptions_LossType_MEANSQUAREDLOSS,
        TrainingOptions_LossType_MEANLOGLOSS,
        ..
      ),

    -- * TrainingOptions_OptimizationStrategy
    TrainingOptions_OptimizationStrategy
      (
        TrainingOptions_OptimizationStrategy_OPTIMIZATIONSTRATEGYUNSPECIFIED,
        TrainingOptions_OptimizationStrategy_BATCHGRADIENTDESCENT,
        TrainingOptions_OptimizationStrategy_NORMALEQUATION,
        ..
      ),

    -- * TrainingOptions_TreeMethod
    TrainingOptions_TreeMethod
      (
        TrainingOptions_TreeMethod_TREEMETHODUNSPECIFIED,
        TrainingOptions_TreeMethod_Auto,
        TrainingOptions_TreeMethod_Exact,
        TrainingOptions_TreeMethod_Approx,
        TrainingOptions_TreeMethod_Hist,
        ..
      ),

    -- * JobsListProjection
    JobsListProjection
      (
        JobsListProjection_Full,
        JobsListProjection_Minimal,
        ..
      ),

    -- * JobsListStateFilter
    JobsListStateFilter
      (
        JobsListStateFilter_Done,
        JobsListStateFilter_Pending,
        JobsListStateFilter_Running,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | Optional. Defaults to FIXED_TYPE.
newtype Argument_ArgumentKind = Argument_ArgumentKind { fromArgument_ArgumentKind :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Argument_ArgumentKind_ARGUMENTKINDUNSPECIFIED :: Argument_ArgumentKind
pattern Argument_ArgumentKind_ARGUMENTKINDUNSPECIFIED = Argument_ArgumentKind "ARGUMENT_KIND_UNSPECIFIED"

-- | The argument is a variable with fully specified type, which can be a struct or an array, but not a table.
pattern Argument_ArgumentKind_FIXEDTYPE :: Argument_ArgumentKind
pattern Argument_ArgumentKind_FIXEDTYPE = Argument_ArgumentKind "FIXED_TYPE"

-- | The argument is any type, including struct or array, but not a table. To be added: FIXED/TABLE, ANY/TABLE
pattern Argument_ArgumentKind_ANYTYPE :: Argument_ArgumentKind
pattern Argument_ArgumentKind_ANYTYPE = Argument_ArgumentKind "ANY_TYPE"

{-# COMPLETE
  Argument_ArgumentKind_ARGUMENTKINDUNSPECIFIED,
  Argument_ArgumentKind_FIXEDTYPE,
  Argument_ArgumentKind_ANYTYPE,
  Argument_ArgumentKind #-}

-- | Optional. Specifies whether the argument is input or output. Can be set for procedures only.
newtype Argument_Mode = Argument_Mode { fromArgument_Mode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Argument_Mode_MODEUNSPECIFIED :: Argument_Mode
pattern Argument_Mode_MODEUNSPECIFIED = Argument_Mode "MODE_UNSPECIFIED"

-- | The argument is input-only.
pattern Argument_Mode_IN :: Argument_Mode
pattern Argument_Mode_IN = Argument_Mode "IN"

-- | The argument is output-only.
pattern Argument_Mode_Out :: Argument_Mode
pattern Argument_Mode_Out = Argument_Mode "OUT"

-- | The argument is both an input and an output.
pattern Argument_Mode_Inout :: Argument_Mode
pattern Argument_Mode_Inout = Argument_Mode "INOUT"

{-# COMPLETE
  Argument_Mode_MODEUNSPECIFIED,
  Argument_Mode_IN,
  Argument_Mode_Out,
  Argument_Mode_Inout,
  Argument_Mode #-}

newtype ArimaForecastingMetrics_SeasonalPeriodsItem = ArimaForecastingMetrics_SeasonalPeriodsItem { fromArimaForecastingMetrics_SeasonalPeriodsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified seasonal period.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED = ArimaForecastingMetrics_SeasonalPeriodsItem "SEASONAL_PERIOD_TYPE_UNSPECIFIED"

-- | No seasonality
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY = ArimaForecastingMetrics_SeasonalPeriodsItem "NO_SEASONALITY"

-- | Daily period, 24 hours.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Daily :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Daily = ArimaForecastingMetrics_SeasonalPeriodsItem "DAILY"

-- | Weekly period, 7 days.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Weekly :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Weekly = ArimaForecastingMetrics_SeasonalPeriodsItem "WEEKLY"

-- | Monthly period, 30 days or irregular.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Monthly :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Monthly = ArimaForecastingMetrics_SeasonalPeriodsItem "MONTHLY"

-- | Quarterly period, 90 days or irregular.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Quarterly :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Quarterly = ArimaForecastingMetrics_SeasonalPeriodsItem "QUARTERLY"

-- | Yearly period, 365 days or irregular.
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Yearly :: ArimaForecastingMetrics_SeasonalPeriodsItem
pattern ArimaForecastingMetrics_SeasonalPeriodsItem_Yearly = ArimaForecastingMetrics_SeasonalPeriodsItem "YEARLY"

{-# COMPLETE
  ArimaForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
  ArimaForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Daily,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Weekly,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Monthly,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Quarterly,
  ArimaForecastingMetrics_SeasonalPeriodsItem_Yearly,
  ArimaForecastingMetrics_SeasonalPeriodsItem #-}

newtype ArimaModelInfo_SeasonalPeriodsItem = ArimaModelInfo_SeasonalPeriodsItem { fromArimaModelInfo_SeasonalPeriodsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified seasonal period.
pattern ArimaModelInfo_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED = ArimaModelInfo_SeasonalPeriodsItem "SEASONAL_PERIOD_TYPE_UNSPECIFIED"

-- | No seasonality
pattern ArimaModelInfo_SeasonalPeriodsItem_NOSEASONALITY :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_NOSEASONALITY = ArimaModelInfo_SeasonalPeriodsItem "NO_SEASONALITY"

-- | Daily period, 24 hours.
pattern ArimaModelInfo_SeasonalPeriodsItem_Daily :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Daily = ArimaModelInfo_SeasonalPeriodsItem "DAILY"

-- | Weekly period, 7 days.
pattern ArimaModelInfo_SeasonalPeriodsItem_Weekly :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Weekly = ArimaModelInfo_SeasonalPeriodsItem "WEEKLY"

-- | Monthly period, 30 days or irregular.
pattern ArimaModelInfo_SeasonalPeriodsItem_Monthly :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Monthly = ArimaModelInfo_SeasonalPeriodsItem "MONTHLY"

-- | Quarterly period, 90 days or irregular.
pattern ArimaModelInfo_SeasonalPeriodsItem_Quarterly :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Quarterly = ArimaModelInfo_SeasonalPeriodsItem "QUARTERLY"

-- | Yearly period, 365 days or irregular.
pattern ArimaModelInfo_SeasonalPeriodsItem_Yearly :: ArimaModelInfo_SeasonalPeriodsItem
pattern ArimaModelInfo_SeasonalPeriodsItem_Yearly = ArimaModelInfo_SeasonalPeriodsItem "YEARLY"

{-# COMPLETE
  ArimaModelInfo_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
  ArimaModelInfo_SeasonalPeriodsItem_NOSEASONALITY,
  ArimaModelInfo_SeasonalPeriodsItem_Daily,
  ArimaModelInfo_SeasonalPeriodsItem_Weekly,
  ArimaModelInfo_SeasonalPeriodsItem_Monthly,
  ArimaModelInfo_SeasonalPeriodsItem_Quarterly,
  ArimaModelInfo_SeasonalPeriodsItem_Yearly,
  ArimaModelInfo_SeasonalPeriodsItem #-}

newtype ArimaResult_SeasonalPeriodsItem = ArimaResult_SeasonalPeriodsItem { fromArimaResult_SeasonalPeriodsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified seasonal period.
pattern ArimaResult_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED = ArimaResult_SeasonalPeriodsItem "SEASONAL_PERIOD_TYPE_UNSPECIFIED"

-- | No seasonality
pattern ArimaResult_SeasonalPeriodsItem_NOSEASONALITY :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_NOSEASONALITY = ArimaResult_SeasonalPeriodsItem "NO_SEASONALITY"

-- | Daily period, 24 hours.
pattern ArimaResult_SeasonalPeriodsItem_Daily :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Daily = ArimaResult_SeasonalPeriodsItem "DAILY"

-- | Weekly period, 7 days.
pattern ArimaResult_SeasonalPeriodsItem_Weekly :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Weekly = ArimaResult_SeasonalPeriodsItem "WEEKLY"

-- | Monthly period, 30 days or irregular.
pattern ArimaResult_SeasonalPeriodsItem_Monthly :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Monthly = ArimaResult_SeasonalPeriodsItem "MONTHLY"

-- | Quarterly period, 90 days or irregular.
pattern ArimaResult_SeasonalPeriodsItem_Quarterly :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Quarterly = ArimaResult_SeasonalPeriodsItem "QUARTERLY"

-- | Yearly period, 365 days or irregular.
pattern ArimaResult_SeasonalPeriodsItem_Yearly :: ArimaResult_SeasonalPeriodsItem
pattern ArimaResult_SeasonalPeriodsItem_Yearly = ArimaResult_SeasonalPeriodsItem "YEARLY"

{-# COMPLETE
  ArimaResult_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
  ArimaResult_SeasonalPeriodsItem_NOSEASONALITY,
  ArimaResult_SeasonalPeriodsItem_Daily,
  ArimaResult_SeasonalPeriodsItem_Weekly,
  ArimaResult_SeasonalPeriodsItem_Monthly,
  ArimaResult_SeasonalPeriodsItem_Quarterly,
  ArimaResult_SeasonalPeriodsItem_Yearly,
  ArimaResult_SeasonalPeriodsItem #-}

newtype ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem { fromArimaSingleModelForecastingMetrics_SeasonalPeriodsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified seasonal period.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "SEASONAL_PERIOD_TYPE_UNSPECIFIED"

-- | No seasonality
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "NO_SEASONALITY"

-- | Daily period, 24 hours.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Daily :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Daily = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "DAILY"

-- | Weekly period, 7 days.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Weekly :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Weekly = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "WEEKLY"

-- | Monthly period, 30 days or irregular.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Monthly :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Monthly = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "MONTHLY"

-- | Quarterly period, 90 days or irregular.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Quarterly :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Quarterly = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "QUARTERLY"

-- | Yearly period, 365 days or irregular.
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Yearly :: ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem
pattern ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Yearly = ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem "YEARLY"

{-# COMPLETE
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_SEASONALPERIODTYPEUNSPECIFIED,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_NOSEASONALITY,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Daily,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Weekly,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Monthly,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Quarterly,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem_Yearly,
  ArimaSingleModelForecastingMetrics_SeasonalPeriodsItem #-}

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType { fromAuditLogConfig_LogType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType #-}

newtype DatasetAccessEntry_TargetTypesItem = DatasetAccessEntry_TargetTypesItem { fromDatasetAccessEntry_TargetTypesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use. You must set a target type explicitly.
pattern DatasetAccessEntry_TargetTypesItem_TARGETTYPEUNSPECIFIED :: DatasetAccessEntry_TargetTypesItem
pattern DatasetAccessEntry_TargetTypesItem_TARGETTYPEUNSPECIFIED = DatasetAccessEntry_TargetTypesItem "TARGET_TYPE_UNSPECIFIED"

-- | This entry applies to views in the dataset.
pattern DatasetAccessEntry_TargetTypesItem_Views :: DatasetAccessEntry_TargetTypesItem
pattern DatasetAccessEntry_TargetTypesItem_Views = DatasetAccessEntry_TargetTypesItem "VIEWS"

{-# COMPLETE
  DatasetAccessEntry_TargetTypesItem_TARGETTYPEUNSPECIFIED,
  DatasetAccessEntry_TargetTypesItem_Views,
  DatasetAccessEntry_TargetTypesItem #-}

-- | The status of the trial.
newtype HparamTuningTrial_Status = HparamTuningTrial_Status { fromHparamTuningTrial_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern HparamTuningTrial_Status_TRIALSTATUSUNSPECIFIED :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_TRIALSTATUSUNSPECIFIED = HparamTuningTrial_Status "TRIAL_STATUS_UNSPECIFIED"

-- | Scheduled but not started.
pattern HparamTuningTrial_Status_NOTSTARTED :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_NOTSTARTED = HparamTuningTrial_Status "NOT_STARTED"

-- | Running state.
pattern HparamTuningTrial_Status_Running :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_Running = HparamTuningTrial_Status "RUNNING"

-- | The trial succeeded.
pattern HparamTuningTrial_Status_Succeeded :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_Succeeded = HparamTuningTrial_Status "SUCCEEDED"

-- | The trial failed.
pattern HparamTuningTrial_Status_Failed :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_Failed = HparamTuningTrial_Status "FAILED"

-- | The trial is infeasible due to the invalid params.
pattern HparamTuningTrial_Status_Infeasible :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_Infeasible = HparamTuningTrial_Status "INFEASIBLE"

-- | Trial stopped early because it\'s not promising.
pattern HparamTuningTrial_Status_STOPPEDEARLY :: HparamTuningTrial_Status
pattern HparamTuningTrial_Status_STOPPEDEARLY = HparamTuningTrial_Status "STOPPED_EARLY"

{-# COMPLETE
  HparamTuningTrial_Status_TRIALSTATUSUNSPECIFIED,
  HparamTuningTrial_Status_NOTSTARTED,
  HparamTuningTrial_Status_Running,
  HparamTuningTrial_Status_Succeeded,
  HparamTuningTrial_Status_Failed,
  HparamTuningTrial_Status_Infeasible,
  HparamTuningTrial_Status_STOPPEDEARLY,
  HparamTuningTrial_Status #-}

-- | Output only. Type of the model resource.
newtype Model_ModelType = Model_ModelType { fromModel_ModelType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Model_ModelType_MODELTYPEUNSPECIFIED :: Model_ModelType
pattern Model_ModelType_MODELTYPEUNSPECIFIED = Model_ModelType "MODEL_TYPE_UNSPECIFIED"

-- | Linear regression model.
pattern Model_ModelType_LINEARREGRESSION :: Model_ModelType
pattern Model_ModelType_LINEARREGRESSION = Model_ModelType "LINEAR_REGRESSION"

-- | Logistic regression based classification model.
pattern Model_ModelType_LOGISTICREGRESSION :: Model_ModelType
pattern Model_ModelType_LOGISTICREGRESSION = Model_ModelType "LOGISTIC_REGRESSION"

-- | K-means clustering model.
pattern Model_ModelType_Kmeans :: Model_ModelType
pattern Model_ModelType_Kmeans = Model_ModelType "KMEANS"

-- | Matrix factorization model.
pattern Model_ModelType_MATRIXFACTORIZATION :: Model_ModelType
pattern Model_ModelType_MATRIXFACTORIZATION = Model_ModelType "MATRIX_FACTORIZATION"

-- | DNN classifier model.
pattern Model_ModelType_DNNCLASSIFIER :: Model_ModelType
pattern Model_ModelType_DNNCLASSIFIER = Model_ModelType "DNN_CLASSIFIER"

-- | An imported TensorFlow model.
pattern Model_ModelType_Tensorflow :: Model_ModelType
pattern Model_ModelType_Tensorflow = Model_ModelType "TENSORFLOW"

-- | DNN regressor model.
pattern Model_ModelType_DNNREGRESSOR :: Model_ModelType
pattern Model_ModelType_DNNREGRESSOR = Model_ModelType "DNN_REGRESSOR"

-- | Boosted tree regressor model.
pattern Model_ModelType_BOOSTEDTREEREGRESSOR :: Model_ModelType
pattern Model_ModelType_BOOSTEDTREEREGRESSOR = Model_ModelType "BOOSTED_TREE_REGRESSOR"

-- | Boosted tree classifier model.
pattern Model_ModelType_BOOSTEDTREECLASSIFIER :: Model_ModelType
pattern Model_ModelType_BOOSTEDTREECLASSIFIER = Model_ModelType "BOOSTED_TREE_CLASSIFIER"

-- | ARIMA model.
pattern Model_ModelType_Arima :: Model_ModelType
pattern Model_ModelType_Arima = Model_ModelType "ARIMA"

-- | AutoML Tables regression model.
pattern Model_ModelType_AUTOMLREGRESSOR :: Model_ModelType
pattern Model_ModelType_AUTOMLREGRESSOR = Model_ModelType "AUTOML_REGRESSOR"

-- | AutoML Tables classification model.
pattern Model_ModelType_AUTOMLCLASSIFIER :: Model_ModelType
pattern Model_ModelType_AUTOMLCLASSIFIER = Model_ModelType "AUTOML_CLASSIFIER"

-- | Prinpical Component Analysis model.
pattern Model_ModelType_Pca :: Model_ModelType
pattern Model_ModelType_Pca = Model_ModelType "PCA"

-- | Autoencoder model.
pattern Model_ModelType_Autoencoder :: Model_ModelType
pattern Model_ModelType_Autoencoder = Model_ModelType "AUTOENCODER"

-- | New name for the ARIMA model.
pattern Model_ModelType_ARIMAPLUS :: Model_ModelType
pattern Model_ModelType_ARIMAPLUS = Model_ModelType "ARIMA_PLUS"

{-# COMPLETE
  Model_ModelType_MODELTYPEUNSPECIFIED,
  Model_ModelType_LINEARREGRESSION,
  Model_ModelType_LOGISTICREGRESSION,
  Model_ModelType_Kmeans,
  Model_ModelType_MATRIXFACTORIZATION,
  Model_ModelType_DNNCLASSIFIER,
  Model_ModelType_Tensorflow,
  Model_ModelType_DNNREGRESSOR,
  Model_ModelType_BOOSTEDTREEREGRESSOR,
  Model_ModelType_BOOSTEDTREECLASSIFIER,
  Model_ModelType_Arima,
  Model_ModelType_AUTOMLREGRESSOR,
  Model_ModelType_AUTOMLCLASSIFIER,
  Model_ModelType_Pca,
  Model_ModelType_Autoencoder,
  Model_ModelType_ARIMAPLUS,
  Model_ModelType #-}

-- | Optional. The determinism level of the JavaScript UDF, if defined.
newtype Routine_DeterminismLevel = Routine_DeterminismLevel { fromRoutine_DeterminismLevel :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The determinism of the UDF is unspecified.
pattern Routine_DeterminismLevel_DETERMINISMLEVELUNSPECIFIED :: Routine_DeterminismLevel
pattern Routine_DeterminismLevel_DETERMINISMLEVELUNSPECIFIED = Routine_DeterminismLevel "DETERMINISM_LEVEL_UNSPECIFIED"

-- | The UDF is deterministic, meaning that 2 function calls with the same inputs always produce the same result, even across 2 query runs.
pattern Routine_DeterminismLevel_Deterministic :: Routine_DeterminismLevel
pattern Routine_DeterminismLevel_Deterministic = Routine_DeterminismLevel "DETERMINISTIC"

-- | The UDF is not deterministic.
pattern Routine_DeterminismLevel_NOTDETERMINISTIC :: Routine_DeterminismLevel
pattern Routine_DeterminismLevel_NOTDETERMINISTIC = Routine_DeterminismLevel "NOT_DETERMINISTIC"

{-# COMPLETE
  Routine_DeterminismLevel_DETERMINISMLEVELUNSPECIFIED,
  Routine_DeterminismLevel_Deterministic,
  Routine_DeterminismLevel_NOTDETERMINISTIC,
  Routine_DeterminismLevel #-}

-- | Optional. Defaults to \"SQL\".
newtype Routine_Language = Routine_Language { fromRoutine_Language :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Routine_Language_LANGUAGEUNSPECIFIED :: Routine_Language
pattern Routine_Language_LANGUAGEUNSPECIFIED = Routine_Language "LANGUAGE_UNSPECIFIED"

-- | SQL language.
pattern Routine_Language_Sql :: Routine_Language
pattern Routine_Language_Sql = Routine_Language "SQL"

-- | JavaScript language.
pattern Routine_Language_Javascript :: Routine_Language
pattern Routine_Language_Javascript = Routine_Language "JAVASCRIPT"

{-# COMPLETE
  Routine_Language_LANGUAGEUNSPECIFIED,
  Routine_Language_Sql,
  Routine_Language_Javascript,
  Routine_Language #-}

-- | Required. The type of routine.
newtype Routine_RoutineType = Routine_RoutineType { fromRoutine_RoutineType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Routine_RoutineType_ROUTINETYPEUNSPECIFIED :: Routine_RoutineType
pattern Routine_RoutineType_ROUTINETYPEUNSPECIFIED = Routine_RoutineType "ROUTINE_TYPE_UNSPECIFIED"

-- | Non-builtin permanent scalar function.
pattern Routine_RoutineType_SCALARFUNCTION :: Routine_RoutineType
pattern Routine_RoutineType_SCALARFUNCTION = Routine_RoutineType "SCALAR_FUNCTION"

-- | Stored procedure.
pattern Routine_RoutineType_Procedure :: Routine_RoutineType
pattern Routine_RoutineType_Procedure = Routine_RoutineType "PROCEDURE"

-- | Non-builtin permanent TVF.
pattern Routine_RoutineType_TABLEVALUEDFUNCTION :: Routine_RoutineType
pattern Routine_RoutineType_TABLEVALUEDFUNCTION = Routine_RoutineType "TABLE_VALUED_FUNCTION"

{-# COMPLETE
  Routine_RoutineType_ROUTINETYPEUNSPECIFIED,
  Routine_RoutineType_SCALARFUNCTION,
  Routine_RoutineType_Procedure,
  Routine_RoutineType_TABLEVALUEDFUNCTION,
  Routine_RoutineType #-}

-- | Required. The top level type of this field. Can be any standard SQL data type (e.g., \"INT64\", \"DATE\", \"ARRAY\").
newtype StandardSqlDataType_TypeKind = StandardSqlDataType_TypeKind { fromStandardSqlDataType_TypeKind :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Invalid type.
pattern StandardSqlDataType_TypeKind_TYPEKINDUNSPECIFIED :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_TYPEKINDUNSPECIFIED = StandardSqlDataType_TypeKind "TYPE_KIND_UNSPECIFIED"

-- | Encoded as a string in decimal format.
pattern StandardSqlDataType_TypeKind_INT64 :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_INT64 = StandardSqlDataType_TypeKind "INT64"

-- | Encoded as a boolean \"false\" or \"true\".
pattern StandardSqlDataType_TypeKind_Bool :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Bool = StandardSqlDataType_TypeKind "BOOL"

-- | Encoded as a number, or string \"NaN\", \"Infinity\" or \"-Infinity\".
pattern StandardSqlDataType_TypeKind_FLOAT64 :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_FLOAT64 = StandardSqlDataType_TypeKind "FLOAT64"

-- | Encoded as a string value.
pattern StandardSqlDataType_TypeKind_String :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_String = StandardSqlDataType_TypeKind "STRING"

-- | Encoded as a base64 string per RFC 4648, section 4.
pattern StandardSqlDataType_TypeKind_Bytes :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Bytes = StandardSqlDataType_TypeKind "BYTES"

-- | Encoded as an RFC 3339 timestamp with mandatory \"Z\" time zone string: 1985-04-12T23:20:50.52Z
pattern StandardSqlDataType_TypeKind_Timestamp :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Timestamp = StandardSqlDataType_TypeKind "TIMESTAMP"

-- | Encoded as RFC 3339 full-date format string: 1985-04-12
pattern StandardSqlDataType_TypeKind_Date :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Date = StandardSqlDataType_TypeKind "DATE"

-- | Encoded as RFC 3339 partial-time format string: 23:20:50.52
pattern StandardSqlDataType_TypeKind_Time :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Time = StandardSqlDataType_TypeKind "TIME"

-- | Encoded as RFC 3339 full-date \"T\" partial-time: 1985-04-12T23:20:50.52
pattern StandardSqlDataType_TypeKind_Datetime :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Datetime = StandardSqlDataType_TypeKind "DATETIME"

-- | Encoded as fully qualified 3 part: 0-5 15 2:30:45.6
pattern StandardSqlDataType_TypeKind_Interval :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Interval = StandardSqlDataType_TypeKind "INTERVAL"

-- | Encoded as WKT
pattern StandardSqlDataType_TypeKind_Geography :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Geography = StandardSqlDataType_TypeKind "GEOGRAPHY"

-- | Encoded as a decimal string.
pattern StandardSqlDataType_TypeKind_Numeric :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Numeric = StandardSqlDataType_TypeKind "NUMERIC"

-- | Encoded as a decimal string.
pattern StandardSqlDataType_TypeKind_Bignumeric :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Bignumeric = StandardSqlDataType_TypeKind "BIGNUMERIC"

-- | Encoded as a string.
pattern StandardSqlDataType_TypeKind_Json :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Json = StandardSqlDataType_TypeKind "JSON"

-- | Encoded as a list with types matching Type.array_type.
pattern StandardSqlDataType_TypeKind_Array :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Array = StandardSqlDataType_TypeKind "ARRAY"

-- | Encoded as a list with fields of type Type.struct_type[i]. List is used because a JSON object cannot have duplicate field names.
pattern StandardSqlDataType_TypeKind_Struct :: StandardSqlDataType_TypeKind
pattern StandardSqlDataType_TypeKind_Struct = StandardSqlDataType_TypeKind "STRUCT"

{-# COMPLETE
  StandardSqlDataType_TypeKind_TYPEKINDUNSPECIFIED,
  StandardSqlDataType_TypeKind_INT64,
  StandardSqlDataType_TypeKind_Bool,
  StandardSqlDataType_TypeKind_FLOAT64,
  StandardSqlDataType_TypeKind_String,
  StandardSqlDataType_TypeKind_Bytes,
  StandardSqlDataType_TypeKind_Timestamp,
  StandardSqlDataType_TypeKind_Date,
  StandardSqlDataType_TypeKind_Time,
  StandardSqlDataType_TypeKind_Datetime,
  StandardSqlDataType_TypeKind_Interval,
  StandardSqlDataType_TypeKind_Geography,
  StandardSqlDataType_TypeKind_Numeric,
  StandardSqlDataType_TypeKind_Bignumeric,
  StandardSqlDataType_TypeKind_Json,
  StandardSqlDataType_TypeKind_Array,
  StandardSqlDataType_TypeKind_Struct,
  StandardSqlDataType_TypeKind #-}

-- | Booster type for boosted tree models.
newtype TrainingOptions_BoosterType = TrainingOptions_BoosterType { fromTrainingOptions_BoosterType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified booster type.
pattern TrainingOptions_BoosterType_BOOSTERTYPEUNSPECIFIED :: TrainingOptions_BoosterType
pattern TrainingOptions_BoosterType_BOOSTERTYPEUNSPECIFIED = TrainingOptions_BoosterType "BOOSTER_TYPE_UNSPECIFIED"

-- | Gbtree booster.
pattern TrainingOptions_BoosterType_Gbtree :: TrainingOptions_BoosterType
pattern TrainingOptions_BoosterType_Gbtree = TrainingOptions_BoosterType "GBTREE"

-- | Dart booster.
pattern TrainingOptions_BoosterType_Dart :: TrainingOptions_BoosterType
pattern TrainingOptions_BoosterType_Dart = TrainingOptions_BoosterType "DART"

{-# COMPLETE
  TrainingOptions_BoosterType_BOOSTERTYPEUNSPECIFIED,
  TrainingOptions_BoosterType_Gbtree,
  TrainingOptions_BoosterType_Dart,
  TrainingOptions_BoosterType #-}

-- | Type of normalization algorithm for boosted tree models using dart booster.
newtype TrainingOptions_DartNormalizeType = TrainingOptions_DartNormalizeType { fromTrainingOptions_DartNormalizeType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified dart normalize type.
pattern TrainingOptions_DartNormalizeType_DARTNORMALIZETYPEUNSPECIFIED :: TrainingOptions_DartNormalizeType
pattern TrainingOptions_DartNormalizeType_DARTNORMALIZETYPEUNSPECIFIED = TrainingOptions_DartNormalizeType "DART_NORMALIZE_TYPE_UNSPECIFIED"

-- | New trees have the same weight of each of dropped trees.
pattern TrainingOptions_DartNormalizeType_Tree :: TrainingOptions_DartNormalizeType
pattern TrainingOptions_DartNormalizeType_Tree = TrainingOptions_DartNormalizeType "TREE"

-- | New trees have the same weight of sum of dropped trees.
pattern TrainingOptions_DartNormalizeType_Forest :: TrainingOptions_DartNormalizeType
pattern TrainingOptions_DartNormalizeType_Forest = TrainingOptions_DartNormalizeType "FOREST"

{-# COMPLETE
  TrainingOptions_DartNormalizeType_DARTNORMALIZETYPEUNSPECIFIED,
  TrainingOptions_DartNormalizeType_Tree,
  TrainingOptions_DartNormalizeType_Forest,
  TrainingOptions_DartNormalizeType #-}

-- | The data frequency of a time series.
newtype TrainingOptions_DataFrequency = TrainingOptions_DataFrequency { fromTrainingOptions_DataFrequency :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TrainingOptions_DataFrequency_DATAFREQUENCYUNSPECIFIED :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_DATAFREQUENCYUNSPECIFIED = TrainingOptions_DataFrequency "DATA_FREQUENCY_UNSPECIFIED"

-- | Automatically inferred from timestamps.
pattern TrainingOptions_DataFrequency_AUTOFREQUENCY :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_AUTOFREQUENCY = TrainingOptions_DataFrequency "AUTO_FREQUENCY"

-- | Yearly data.
pattern TrainingOptions_DataFrequency_Yearly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Yearly = TrainingOptions_DataFrequency "YEARLY"

-- | Quarterly data.
pattern TrainingOptions_DataFrequency_Quarterly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Quarterly = TrainingOptions_DataFrequency "QUARTERLY"

-- | Monthly data.
pattern TrainingOptions_DataFrequency_Monthly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Monthly = TrainingOptions_DataFrequency "MONTHLY"

-- | Weekly data.
pattern TrainingOptions_DataFrequency_Weekly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Weekly = TrainingOptions_DataFrequency "WEEKLY"

-- | Daily data.
pattern TrainingOptions_DataFrequency_Daily :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Daily = TrainingOptions_DataFrequency "DAILY"

-- | Hourly data.
pattern TrainingOptions_DataFrequency_Hourly :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_Hourly = TrainingOptions_DataFrequency "HOURLY"

-- | Per-minute data.
pattern TrainingOptions_DataFrequency_PERMINUTE :: TrainingOptions_DataFrequency
pattern TrainingOptions_DataFrequency_PERMINUTE = TrainingOptions_DataFrequency "PER_MINUTE"

{-# COMPLETE
  TrainingOptions_DataFrequency_DATAFREQUENCYUNSPECIFIED,
  TrainingOptions_DataFrequency_AUTOFREQUENCY,
  TrainingOptions_DataFrequency_Yearly,
  TrainingOptions_DataFrequency_Quarterly,
  TrainingOptions_DataFrequency_Monthly,
  TrainingOptions_DataFrequency_Weekly,
  TrainingOptions_DataFrequency_Daily,
  TrainingOptions_DataFrequency_Hourly,
  TrainingOptions_DataFrequency_PERMINUTE,
  TrainingOptions_DataFrequency #-}

-- | The data split type for training and evaluation, e.g. RANDOM.
newtype TrainingOptions_DataSplitMethod = TrainingOptions_DataSplitMethod { fromTrainingOptions_DataSplitMethod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TrainingOptions_DataSplitMethod_DATASPLITMETHODUNSPECIFIED :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_DATASPLITMETHODUNSPECIFIED = TrainingOptions_DataSplitMethod "DATA_SPLIT_METHOD_UNSPECIFIED"

-- | Splits data randomly.
pattern TrainingOptions_DataSplitMethod_Random :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_Random = TrainingOptions_DataSplitMethod "RANDOM"

-- | Splits data with the user provided tags.
pattern TrainingOptions_DataSplitMethod_Custom :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_Custom = TrainingOptions_DataSplitMethod "CUSTOM"

-- | Splits data sequentially.
pattern TrainingOptions_DataSplitMethod_Sequential :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_Sequential = TrainingOptions_DataSplitMethod "SEQUENTIAL"

-- | Data split will be skipped.
pattern TrainingOptions_DataSplitMethod_NOSPLIT :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_NOSPLIT = TrainingOptions_DataSplitMethod "NO_SPLIT"

-- | Splits data automatically: Uses NO_SPLIT if the data size is small. Otherwise uses RANDOM.
pattern TrainingOptions_DataSplitMethod_AUTOSPLIT :: TrainingOptions_DataSplitMethod
pattern TrainingOptions_DataSplitMethod_AUTOSPLIT = TrainingOptions_DataSplitMethod "AUTO_SPLIT"

{-# COMPLETE
  TrainingOptions_DataSplitMethod_DATASPLITMETHODUNSPECIFIED,
  TrainingOptions_DataSplitMethod_Random,
  TrainingOptions_DataSplitMethod_Custom,
  TrainingOptions_DataSplitMethod_Sequential,
  TrainingOptions_DataSplitMethod_NOSPLIT,
  TrainingOptions_DataSplitMethod_AUTOSPLIT,
  TrainingOptions_DataSplitMethod #-}

-- | Distance type for clustering models.
newtype TrainingOptions_DistanceType = TrainingOptions_DistanceType { fromTrainingOptions_DistanceType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TrainingOptions_DistanceType_DISTANCETYPEUNSPECIFIED :: TrainingOptions_DistanceType
pattern TrainingOptions_DistanceType_DISTANCETYPEUNSPECIFIED = TrainingOptions_DistanceType "DISTANCE_TYPE_UNSPECIFIED"

-- | Eculidean distance.
pattern TrainingOptions_DistanceType_Euclidean :: TrainingOptions_DistanceType
pattern TrainingOptions_DistanceType_Euclidean = TrainingOptions_DistanceType "EUCLIDEAN"

-- | Cosine distance.
pattern TrainingOptions_DistanceType_Cosine :: TrainingOptions_DistanceType
pattern TrainingOptions_DistanceType_Cosine = TrainingOptions_DistanceType "COSINE"

{-# COMPLETE
  TrainingOptions_DistanceType_DISTANCETYPEUNSPECIFIED,
  TrainingOptions_DistanceType_Euclidean,
  TrainingOptions_DistanceType_Cosine,
  TrainingOptions_DistanceType #-}

-- | Feedback type that specifies which algorithm to run for matrix factorization.
newtype TrainingOptions_FeedbackType = TrainingOptions_FeedbackType { fromTrainingOptions_FeedbackType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TrainingOptions_FeedbackType_FEEDBACKTYPEUNSPECIFIED :: TrainingOptions_FeedbackType
pattern TrainingOptions_FeedbackType_FEEDBACKTYPEUNSPECIFIED = TrainingOptions_FeedbackType "FEEDBACK_TYPE_UNSPECIFIED"

-- | Use weighted-als for implicit feedback problems.
pattern TrainingOptions_FeedbackType_Implicit :: TrainingOptions_FeedbackType
pattern TrainingOptions_FeedbackType_Implicit = TrainingOptions_FeedbackType "IMPLICIT"

-- | Use nonweighted-als for explicit feedback problems.
pattern TrainingOptions_FeedbackType_Explicit :: TrainingOptions_FeedbackType
pattern TrainingOptions_FeedbackType_Explicit = TrainingOptions_FeedbackType "EXPLICIT"

{-# COMPLETE
  TrainingOptions_FeedbackType_FEEDBACKTYPEUNSPECIFIED,
  TrainingOptions_FeedbackType_Implicit,
  TrainingOptions_FeedbackType_Explicit,
  TrainingOptions_FeedbackType #-}

-- | The geographical region based on which the holidays are considered in time series modeling. If a valid value is specified, then holiday effects modeling is enabled.
newtype TrainingOptions_HolidayRegion = TrainingOptions_HolidayRegion { fromTrainingOptions_HolidayRegion :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Holiday region unspecified.
pattern TrainingOptions_HolidayRegion_HOLIDAYREGIONUNSPECIFIED :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_HOLIDAYREGIONUNSPECIFIED = TrainingOptions_HolidayRegion "HOLIDAY_REGION_UNSPECIFIED"

-- | Global.
pattern TrainingOptions_HolidayRegion_Global :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_Global = TrainingOptions_HolidayRegion "GLOBAL"

-- | North America.
pattern TrainingOptions_HolidayRegion_NA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NA = TrainingOptions_HolidayRegion "NA"

-- | Japan and Asia Pacific: Korea, Greater China, India, Australia, and New Zealand.
pattern TrainingOptions_HolidayRegion_Japac :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_Japac = TrainingOptions_HolidayRegion "JAPAC"

-- | Europe, the Middle East and Africa.
pattern TrainingOptions_HolidayRegion_Emea :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_Emea = TrainingOptions_HolidayRegion "EMEA"

-- | Latin America and the Caribbean.
pattern TrainingOptions_HolidayRegion_Lac :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_Lac = TrainingOptions_HolidayRegion "LAC"

-- | United Arab Emirates
pattern TrainingOptions_HolidayRegion_AE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_AE = TrainingOptions_HolidayRegion "AE"

-- | Argentina
pattern TrainingOptions_HolidayRegion_AR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_AR = TrainingOptions_HolidayRegion "AR"

-- | Austria
pattern TrainingOptions_HolidayRegion_AT :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_AT = TrainingOptions_HolidayRegion "AT"

-- | Australia
pattern TrainingOptions_HolidayRegion_AU :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_AU = TrainingOptions_HolidayRegion "AU"

-- | Belgium
pattern TrainingOptions_HolidayRegion_BE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_BE = TrainingOptions_HolidayRegion "BE"

-- | Brazil
pattern TrainingOptions_HolidayRegion_BR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_BR = TrainingOptions_HolidayRegion "BR"

-- | Canada
pattern TrainingOptions_HolidayRegion_CA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CA = TrainingOptions_HolidayRegion "CA"

-- | Switzerland
pattern TrainingOptions_HolidayRegion_CH :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CH = TrainingOptions_HolidayRegion "CH"

-- | Chile
pattern TrainingOptions_HolidayRegion_CL :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CL = TrainingOptions_HolidayRegion "CL"

-- | China
pattern TrainingOptions_HolidayRegion_CN :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CN = TrainingOptions_HolidayRegion "CN"

-- | Colombia
pattern TrainingOptions_HolidayRegion_CO :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CO = TrainingOptions_HolidayRegion "CO"

-- | Czechoslovakia
pattern TrainingOptions_HolidayRegion_CS :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CS = TrainingOptions_HolidayRegion "CS"

-- | Czech Republic
pattern TrainingOptions_HolidayRegion_CZ :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_CZ = TrainingOptions_HolidayRegion "CZ"

-- | Germany
pattern TrainingOptions_HolidayRegion_DE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_DE = TrainingOptions_HolidayRegion "DE"

-- | Denmark
pattern TrainingOptions_HolidayRegion_DK :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_DK = TrainingOptions_HolidayRegion "DK"

-- | Algeria
pattern TrainingOptions_HolidayRegion_DZ :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_DZ = TrainingOptions_HolidayRegion "DZ"

-- | Ecuador
pattern TrainingOptions_HolidayRegion_EC :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_EC = TrainingOptions_HolidayRegion "EC"

-- | Estonia
pattern TrainingOptions_HolidayRegion_EE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_EE = TrainingOptions_HolidayRegion "EE"

-- | Egypt
pattern TrainingOptions_HolidayRegion_EG :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_EG = TrainingOptions_HolidayRegion "EG"

-- | Spain
pattern TrainingOptions_HolidayRegion_ES :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_ES = TrainingOptions_HolidayRegion "ES"

-- | Finland
pattern TrainingOptions_HolidayRegion_FI :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_FI = TrainingOptions_HolidayRegion "FI"

-- | France
pattern TrainingOptions_HolidayRegion_FR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_FR = TrainingOptions_HolidayRegion "FR"

-- | Great Britain (United Kingdom)
pattern TrainingOptions_HolidayRegion_GB :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_GB = TrainingOptions_HolidayRegion "GB"

-- | Greece
pattern TrainingOptions_HolidayRegion_GR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_GR = TrainingOptions_HolidayRegion "GR"

-- | Hong Kong
pattern TrainingOptions_HolidayRegion_HK :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_HK = TrainingOptions_HolidayRegion "HK"

-- | Hungary
pattern TrainingOptions_HolidayRegion_HU :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_HU = TrainingOptions_HolidayRegion "HU"

-- | Indonesia
pattern TrainingOptions_HolidayRegion_ID :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_ID = TrainingOptions_HolidayRegion "ID"

-- | Ireland
pattern TrainingOptions_HolidayRegion_IE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IE = TrainingOptions_HolidayRegion "IE"

-- | Israel
pattern TrainingOptions_HolidayRegion_IL :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IL = TrainingOptions_HolidayRegion "IL"

-- | India
pattern TrainingOptions_HolidayRegion_IN :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IN = TrainingOptions_HolidayRegion "IN"

-- | Iran
pattern TrainingOptions_HolidayRegion_IR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IR = TrainingOptions_HolidayRegion "IR"

-- | Italy
pattern TrainingOptions_HolidayRegion_IT :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_IT = TrainingOptions_HolidayRegion "IT"

-- | Japan
pattern TrainingOptions_HolidayRegion_JP :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_JP = TrainingOptions_HolidayRegion "JP"

-- | Korea (South)
pattern TrainingOptions_HolidayRegion_KR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_KR = TrainingOptions_HolidayRegion "KR"

-- | Latvia
pattern TrainingOptions_HolidayRegion_LV :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_LV = TrainingOptions_HolidayRegion "LV"

-- | Morocco
pattern TrainingOptions_HolidayRegion_MA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_MA = TrainingOptions_HolidayRegion "MA"

-- | Mexico
pattern TrainingOptions_HolidayRegion_MX :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_MX = TrainingOptions_HolidayRegion "MX"

-- | Malaysia
pattern TrainingOptions_HolidayRegion_MY :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_MY = TrainingOptions_HolidayRegion "MY"

-- | Nigeria
pattern TrainingOptions_HolidayRegion_NG :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NG = TrainingOptions_HolidayRegion "NG"

-- | Netherlands
pattern TrainingOptions_HolidayRegion_NL :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NL = TrainingOptions_HolidayRegion "NL"

-- | Norway
pattern TrainingOptions_HolidayRegion_NO :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NO = TrainingOptions_HolidayRegion "NO"

-- | New Zealand
pattern TrainingOptions_HolidayRegion_NZ :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_NZ = TrainingOptions_HolidayRegion "NZ"

-- | Peru
pattern TrainingOptions_HolidayRegion_PE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PE = TrainingOptions_HolidayRegion "PE"

-- | Philippines
pattern TrainingOptions_HolidayRegion_PH :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PH = TrainingOptions_HolidayRegion "PH"

-- | Pakistan
pattern TrainingOptions_HolidayRegion_PK :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PK = TrainingOptions_HolidayRegion "PK"

-- | Poland
pattern TrainingOptions_HolidayRegion_PL :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PL = TrainingOptions_HolidayRegion "PL"

-- | Portugal
pattern TrainingOptions_HolidayRegion_PT :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_PT = TrainingOptions_HolidayRegion "PT"

-- | Romania
pattern TrainingOptions_HolidayRegion_RO :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_RO = TrainingOptions_HolidayRegion "RO"

-- | Serbia
pattern TrainingOptions_HolidayRegion_RS :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_RS = TrainingOptions_HolidayRegion "RS"

-- | Russian Federation
pattern TrainingOptions_HolidayRegion_RU :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_RU = TrainingOptions_HolidayRegion "RU"

-- | Saudi Arabia
pattern TrainingOptions_HolidayRegion_SA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SA = TrainingOptions_HolidayRegion "SA"

-- | Sweden
pattern TrainingOptions_HolidayRegion_SE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SE = TrainingOptions_HolidayRegion "SE"

-- | Singapore
pattern TrainingOptions_HolidayRegion_SG :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SG = TrainingOptions_HolidayRegion "SG"

-- | Slovenia
pattern TrainingOptions_HolidayRegion_SI :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SI = TrainingOptions_HolidayRegion "SI"

-- | Slovakia
pattern TrainingOptions_HolidayRegion_SK :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_SK = TrainingOptions_HolidayRegion "SK"

-- | Thailand
pattern TrainingOptions_HolidayRegion_TH :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_TH = TrainingOptions_HolidayRegion "TH"

-- | Turkey
pattern TrainingOptions_HolidayRegion_TR :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_TR = TrainingOptions_HolidayRegion "TR"

-- | Taiwan
pattern TrainingOptions_HolidayRegion_TW :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_TW = TrainingOptions_HolidayRegion "TW"

-- | Ukraine
pattern TrainingOptions_HolidayRegion_UA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_UA = TrainingOptions_HolidayRegion "UA"

-- | United States
pattern TrainingOptions_HolidayRegion_US :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_US = TrainingOptions_HolidayRegion "US"

-- | Venezuela
pattern TrainingOptions_HolidayRegion_VE :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_VE = TrainingOptions_HolidayRegion "VE"

-- | Viet Nam
pattern TrainingOptions_HolidayRegion_VN :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_VN = TrainingOptions_HolidayRegion "VN"

-- | South Africa
pattern TrainingOptions_HolidayRegion_ZA :: TrainingOptions_HolidayRegion
pattern TrainingOptions_HolidayRegion_ZA = TrainingOptions_HolidayRegion "ZA"

{-# COMPLETE
  TrainingOptions_HolidayRegion_HOLIDAYREGIONUNSPECIFIED,
  TrainingOptions_HolidayRegion_Global,
  TrainingOptions_HolidayRegion_NA,
  TrainingOptions_HolidayRegion_Japac,
  TrainingOptions_HolidayRegion_Emea,
  TrainingOptions_HolidayRegion_Lac,
  TrainingOptions_HolidayRegion_AE,
  TrainingOptions_HolidayRegion_AR,
  TrainingOptions_HolidayRegion_AT,
  TrainingOptions_HolidayRegion_AU,
  TrainingOptions_HolidayRegion_BE,
  TrainingOptions_HolidayRegion_BR,
  TrainingOptions_HolidayRegion_CA,
  TrainingOptions_HolidayRegion_CH,
  TrainingOptions_HolidayRegion_CL,
  TrainingOptions_HolidayRegion_CN,
  TrainingOptions_HolidayRegion_CO,
  TrainingOptions_HolidayRegion_CS,
  TrainingOptions_HolidayRegion_CZ,
  TrainingOptions_HolidayRegion_DE,
  TrainingOptions_HolidayRegion_DK,
  TrainingOptions_HolidayRegion_DZ,
  TrainingOptions_HolidayRegion_EC,
  TrainingOptions_HolidayRegion_EE,
  TrainingOptions_HolidayRegion_EG,
  TrainingOptions_HolidayRegion_ES,
  TrainingOptions_HolidayRegion_FI,
  TrainingOptions_HolidayRegion_FR,
  TrainingOptions_HolidayRegion_GB,
  TrainingOptions_HolidayRegion_GR,
  TrainingOptions_HolidayRegion_HK,
  TrainingOptions_HolidayRegion_HU,
  TrainingOptions_HolidayRegion_ID,
  TrainingOptions_HolidayRegion_IE,
  TrainingOptions_HolidayRegion_IL,
  TrainingOptions_HolidayRegion_IN,
  TrainingOptions_HolidayRegion_IR,
  TrainingOptions_HolidayRegion_IT,
  TrainingOptions_HolidayRegion_JP,
  TrainingOptions_HolidayRegion_KR,
  TrainingOptions_HolidayRegion_LV,
  TrainingOptions_HolidayRegion_MA,
  TrainingOptions_HolidayRegion_MX,
  TrainingOptions_HolidayRegion_MY,
  TrainingOptions_HolidayRegion_NG,
  TrainingOptions_HolidayRegion_NL,
  TrainingOptions_HolidayRegion_NO,
  TrainingOptions_HolidayRegion_NZ,
  TrainingOptions_HolidayRegion_PE,
  TrainingOptions_HolidayRegion_PH,
  TrainingOptions_HolidayRegion_PK,
  TrainingOptions_HolidayRegion_PL,
  TrainingOptions_HolidayRegion_PT,
  TrainingOptions_HolidayRegion_RO,
  TrainingOptions_HolidayRegion_RS,
  TrainingOptions_HolidayRegion_RU,
  TrainingOptions_HolidayRegion_SA,
  TrainingOptions_HolidayRegion_SE,
  TrainingOptions_HolidayRegion_SG,
  TrainingOptions_HolidayRegion_SI,
  TrainingOptions_HolidayRegion_SK,
  TrainingOptions_HolidayRegion_TH,
  TrainingOptions_HolidayRegion_TR,
  TrainingOptions_HolidayRegion_TW,
  TrainingOptions_HolidayRegion_UA,
  TrainingOptions_HolidayRegion_US,
  TrainingOptions_HolidayRegion_VE,
  TrainingOptions_HolidayRegion_VN,
  TrainingOptions_HolidayRegion_ZA,
  TrainingOptions_HolidayRegion #-}

newtype TrainingOptions_HparamTuningObjectivesItem = TrainingOptions_HparamTuningObjectivesItem { fromTrainingOptions_HparamTuningObjectivesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified evaluation metric.
pattern TrainingOptions_HparamTuningObjectivesItem_HPARAMTUNINGOBJECTIVEUNSPECIFIED :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_HPARAMTUNINGOBJECTIVEUNSPECIFIED = TrainingOptions_HparamTuningObjectivesItem "HPARAM_TUNING_OBJECTIVE_UNSPECIFIED"

-- | Mean absolute error. mean/absolute/error = AVG(ABS(label - predicted))
pattern TrainingOptions_HparamTuningObjectivesItem_MEANABSOLUTEERROR :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEANABSOLUTEERROR = TrainingOptions_HparamTuningObjectivesItem "MEAN_ABSOLUTE_ERROR"

-- | Mean squared error. mean/squared/error = AVG(POW(label - predicted, 2))
pattern TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDERROR :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDERROR = TrainingOptions_HparamTuningObjectivesItem "MEAN_SQUARED_ERROR"

-- | Mean squared log error. mean/squared/log_error = AVG(POW(LN(1 + label) - LN(1 + predicted), 2))
pattern TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDLOGERROR :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDLOGERROR = TrainingOptions_HparamTuningObjectivesItem "MEAN_SQUARED_LOG_ERROR"

-- | Mean absolute error. median/absolute/error = APPROX/QUANTILES(absolute/error, 2)[OFFSET(1)]
pattern TrainingOptions_HparamTuningObjectivesItem_MEDIANABSOLUTEERROR :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEDIANABSOLUTEERROR = TrainingOptions_HparamTuningObjectivesItem "MEDIAN_ABSOLUTE_ERROR"

-- | R^2 score. This corresponds to r2/score in ML.EVALUATE. r/squared = 1 - SUM(squared_error)\/(COUNT(label)*VAR_POP(label))
pattern TrainingOptions_HparamTuningObjectivesItem_RSQUARED :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_RSQUARED = TrainingOptions_HparamTuningObjectivesItem "R_SQUARED"

-- | Explained variance. explained/variance = 1 - VAR/POP(label/error)\/VAR/POP(label)
pattern TrainingOptions_HparamTuningObjectivesItem_EXPLAINEDVARIANCE :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_EXPLAINEDVARIANCE = TrainingOptions_HparamTuningObjectivesItem "EXPLAINED_VARIANCE"

-- | Precision is the fraction of actual positive predictions that had positive actual labels. For multiclass this is a macro-averaged metric treating each class as a binary classifier.
pattern TrainingOptions_HparamTuningObjectivesItem_Precision :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_Precision = TrainingOptions_HparamTuningObjectivesItem "PRECISION"

-- | Recall is the fraction of actual positive labels that were given a positive prediction. For multiclass this is a macro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_Recall :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_Recall = TrainingOptions_HparamTuningObjectivesItem "RECALL"

-- | Accuracy is the fraction of predictions given the correct label. For multiclass this is a globally micro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_Accuracy :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_Accuracy = TrainingOptions_HparamTuningObjectivesItem "ACCURACY"

-- | The F1 score is an average of recall and precision. For multiclass this is a macro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_F1SCORE :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_F1SCORE = TrainingOptions_HparamTuningObjectivesItem "F1_SCORE"

-- | Logorithmic Loss. For multiclass this is a macro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_LOGLOSS :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_LOGLOSS = TrainingOptions_HparamTuningObjectivesItem "LOG_LOSS"

-- | Area Under an ROC Curve. For multiclass this is a macro-averaged metric.
pattern TrainingOptions_HparamTuningObjectivesItem_ROCAUC :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_ROCAUC = TrainingOptions_HparamTuningObjectivesItem "ROC_AUC"

-- | Davies-Bouldin Index.
pattern TrainingOptions_HparamTuningObjectivesItem_DAVIESBOULDININDEX :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_DAVIESBOULDININDEX = TrainingOptions_HparamTuningObjectivesItem "DAVIES_BOULDIN_INDEX"

-- | Mean Average Precision.
pattern TrainingOptions_HparamTuningObjectivesItem_MEANAVERAGEPRECISION :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_MEANAVERAGEPRECISION = TrainingOptions_HparamTuningObjectivesItem "MEAN_AVERAGE_PRECISION"

-- | Normalized Discounted Cumulative Gain.
pattern TrainingOptions_HparamTuningObjectivesItem_NORMALIZEDDISCOUNTEDCUMULATIVEGAIN :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_NORMALIZEDDISCOUNTEDCUMULATIVEGAIN = TrainingOptions_HparamTuningObjectivesItem "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN"

-- | Average Rank.
pattern TrainingOptions_HparamTuningObjectivesItem_AVERAGERANK :: TrainingOptions_HparamTuningObjectivesItem
pattern TrainingOptions_HparamTuningObjectivesItem_AVERAGERANK = TrainingOptions_HparamTuningObjectivesItem "AVERAGE_RANK"

{-# COMPLETE
  TrainingOptions_HparamTuningObjectivesItem_HPARAMTUNINGOBJECTIVEUNSPECIFIED,
  TrainingOptions_HparamTuningObjectivesItem_MEANABSOLUTEERROR,
  TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDERROR,
  TrainingOptions_HparamTuningObjectivesItem_MEANSQUAREDLOGERROR,
  TrainingOptions_HparamTuningObjectivesItem_MEDIANABSOLUTEERROR,
  TrainingOptions_HparamTuningObjectivesItem_RSQUARED,
  TrainingOptions_HparamTuningObjectivesItem_EXPLAINEDVARIANCE,
  TrainingOptions_HparamTuningObjectivesItem_Precision,
  TrainingOptions_HparamTuningObjectivesItem_Recall,
  TrainingOptions_HparamTuningObjectivesItem_Accuracy,
  TrainingOptions_HparamTuningObjectivesItem_F1SCORE,
  TrainingOptions_HparamTuningObjectivesItem_LOGLOSS,
  TrainingOptions_HparamTuningObjectivesItem_ROCAUC,
  TrainingOptions_HparamTuningObjectivesItem_DAVIESBOULDININDEX,
  TrainingOptions_HparamTuningObjectivesItem_MEANAVERAGEPRECISION,
  TrainingOptions_HparamTuningObjectivesItem_NORMALIZEDDISCOUNTEDCUMULATIVEGAIN,
  TrainingOptions_HparamTuningObjectivesItem_AVERAGERANK,
  TrainingOptions_HparamTuningObjectivesItem #-}

-- | The method used to initialize the centroids for kmeans algorithm.
newtype TrainingOptions_KmeansInitializationMethod = TrainingOptions_KmeansInitializationMethod { fromTrainingOptions_KmeansInitializationMethod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified initialization method.
pattern TrainingOptions_KmeansInitializationMethod_KMEANSINITIALIZATIONMETHODUNSPECIFIED :: TrainingOptions_KmeansInitializationMethod
pattern TrainingOptions_KmeansInitializationMethod_KMEANSINITIALIZATIONMETHODUNSPECIFIED = TrainingOptions_KmeansInitializationMethod "KMEANS_INITIALIZATION_METHOD_UNSPECIFIED"

-- | Initializes the centroids randomly.
pattern TrainingOptions_KmeansInitializationMethod_Random :: TrainingOptions_KmeansInitializationMethod
pattern TrainingOptions_KmeansInitializationMethod_Random = TrainingOptions_KmeansInitializationMethod "RANDOM"

-- | Initializes the centroids using data specified in kmeans/initialization/column.
pattern TrainingOptions_KmeansInitializationMethod_Custom :: TrainingOptions_KmeansInitializationMethod
pattern TrainingOptions_KmeansInitializationMethod_Custom = TrainingOptions_KmeansInitializationMethod "CUSTOM"

-- | Initializes with kmeans++.
pattern TrainingOptions_KmeansInitializationMethod_KMEANSPLUSPLUS :: TrainingOptions_KmeansInitializationMethod
pattern TrainingOptions_KmeansInitializationMethod_KMEANSPLUSPLUS = TrainingOptions_KmeansInitializationMethod "KMEANS_PLUS_PLUS"

{-# COMPLETE
  TrainingOptions_KmeansInitializationMethod_KMEANSINITIALIZATIONMETHODUNSPECIFIED,
  TrainingOptions_KmeansInitializationMethod_Random,
  TrainingOptions_KmeansInitializationMethod_Custom,
  TrainingOptions_KmeansInitializationMethod_KMEANSPLUSPLUS,
  TrainingOptions_KmeansInitializationMethod #-}

-- | The strategy to determine learn rate for the current iteration.
newtype TrainingOptions_LearnRateStrategy = TrainingOptions_LearnRateStrategy { fromTrainingOptions_LearnRateStrategy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TrainingOptions_LearnRateStrategy_LEARNRATESTRATEGYUNSPECIFIED :: TrainingOptions_LearnRateStrategy
pattern TrainingOptions_LearnRateStrategy_LEARNRATESTRATEGYUNSPECIFIED = TrainingOptions_LearnRateStrategy "LEARN_RATE_STRATEGY_UNSPECIFIED"

-- | Use line search to determine learning rate.
pattern TrainingOptions_LearnRateStrategy_LINESEARCH :: TrainingOptions_LearnRateStrategy
pattern TrainingOptions_LearnRateStrategy_LINESEARCH = TrainingOptions_LearnRateStrategy "LINE_SEARCH"

-- | Use a constant learning rate.
pattern TrainingOptions_LearnRateStrategy_Constant :: TrainingOptions_LearnRateStrategy
pattern TrainingOptions_LearnRateStrategy_Constant = TrainingOptions_LearnRateStrategy "CONSTANT"

{-# COMPLETE
  TrainingOptions_LearnRateStrategy_LEARNRATESTRATEGYUNSPECIFIED,
  TrainingOptions_LearnRateStrategy_LINESEARCH,
  TrainingOptions_LearnRateStrategy_Constant,
  TrainingOptions_LearnRateStrategy #-}

-- | Type of loss function used during training run.
newtype TrainingOptions_LossType = TrainingOptions_LossType { fromTrainingOptions_LossType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TrainingOptions_LossType_LOSSTYPEUNSPECIFIED :: TrainingOptions_LossType
pattern TrainingOptions_LossType_LOSSTYPEUNSPECIFIED = TrainingOptions_LossType "LOSS_TYPE_UNSPECIFIED"

-- | Mean squared loss, used for linear regression.
pattern TrainingOptions_LossType_MEANSQUAREDLOSS :: TrainingOptions_LossType
pattern TrainingOptions_LossType_MEANSQUAREDLOSS = TrainingOptions_LossType "MEAN_SQUARED_LOSS"

-- | Mean log loss, used for logistic regression.
pattern TrainingOptions_LossType_MEANLOGLOSS :: TrainingOptions_LossType
pattern TrainingOptions_LossType_MEANLOGLOSS = TrainingOptions_LossType "MEAN_LOG_LOSS"

{-# COMPLETE
  TrainingOptions_LossType_LOSSTYPEUNSPECIFIED,
  TrainingOptions_LossType_MEANSQUAREDLOSS,
  TrainingOptions_LossType_MEANLOGLOSS,
  TrainingOptions_LossType #-}

-- | Optimization strategy for training linear regression models.
newtype TrainingOptions_OptimizationStrategy = TrainingOptions_OptimizationStrategy { fromTrainingOptions_OptimizationStrategy :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern TrainingOptions_OptimizationStrategy_OPTIMIZATIONSTRATEGYUNSPECIFIED :: TrainingOptions_OptimizationStrategy
pattern TrainingOptions_OptimizationStrategy_OPTIMIZATIONSTRATEGYUNSPECIFIED = TrainingOptions_OptimizationStrategy "OPTIMIZATION_STRATEGY_UNSPECIFIED"

-- | Uses an iterative batch gradient descent algorithm.
pattern TrainingOptions_OptimizationStrategy_BATCHGRADIENTDESCENT :: TrainingOptions_OptimizationStrategy
pattern TrainingOptions_OptimizationStrategy_BATCHGRADIENTDESCENT = TrainingOptions_OptimizationStrategy "BATCH_GRADIENT_DESCENT"

-- | Uses a normal equation to solve linear regression problem.
pattern TrainingOptions_OptimizationStrategy_NORMALEQUATION :: TrainingOptions_OptimizationStrategy
pattern TrainingOptions_OptimizationStrategy_NORMALEQUATION = TrainingOptions_OptimizationStrategy "NORMAL_EQUATION"

{-# COMPLETE
  TrainingOptions_OptimizationStrategy_OPTIMIZATIONSTRATEGYUNSPECIFIED,
  TrainingOptions_OptimizationStrategy_BATCHGRADIENTDESCENT,
  TrainingOptions_OptimizationStrategy_NORMALEQUATION,
  TrainingOptions_OptimizationStrategy #-}

-- | Tree construction algorithm for boosted tree models.
newtype TrainingOptions_TreeMethod = TrainingOptions_TreeMethod { fromTrainingOptions_TreeMethod :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified tree method.
pattern TrainingOptions_TreeMethod_TREEMETHODUNSPECIFIED :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_TREEMETHODUNSPECIFIED = TrainingOptions_TreeMethod "TREE_METHOD_UNSPECIFIED"

-- | Use heuristic to choose the fastest method.
pattern TrainingOptions_TreeMethod_Auto :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_Auto = TrainingOptions_TreeMethod "AUTO"

-- | Exact greedy algorithm.
pattern TrainingOptions_TreeMethod_Exact :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_Exact = TrainingOptions_TreeMethod "EXACT"

-- | Approximate greedy algorithm using quantile sketch and gradient histogram.
pattern TrainingOptions_TreeMethod_Approx :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_Approx = TrainingOptions_TreeMethod "APPROX"

-- | Fast histogram optimized approximate greedy algorithm.
pattern TrainingOptions_TreeMethod_Hist :: TrainingOptions_TreeMethod
pattern TrainingOptions_TreeMethod_Hist = TrainingOptions_TreeMethod "HIST"

{-# COMPLETE
  TrainingOptions_TreeMethod_TREEMETHODUNSPECIFIED,
  TrainingOptions_TreeMethod_Auto,
  TrainingOptions_TreeMethod_Exact,
  TrainingOptions_TreeMethod_Approx,
  TrainingOptions_TreeMethod_Hist,
  TrainingOptions_TreeMethod #-}

-- | Restrict information returned to a set of selected fields
newtype JobsListProjection = JobsListProjection { fromJobsListProjection :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Includes all job data
pattern JobsListProjection_Full :: JobsListProjection
pattern JobsListProjection_Full = JobsListProjection "full"

-- | Does not include the job configuration
pattern JobsListProjection_Minimal :: JobsListProjection
pattern JobsListProjection_Minimal = JobsListProjection "minimal"

{-# COMPLETE
  JobsListProjection_Full,
  JobsListProjection_Minimal,
  JobsListProjection #-}

-- | Filter for job state
newtype JobsListStateFilter = JobsListStateFilter { fromJobsListStateFilter :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Finished jobs
pattern JobsListStateFilter_Done :: JobsListStateFilter
pattern JobsListStateFilter_Done = JobsListStateFilter "done"

-- | Pending jobs
pattern JobsListStateFilter_Pending :: JobsListStateFilter
pattern JobsListStateFilter_Pending = JobsListStateFilter "pending"

-- | Running jobs
pattern JobsListStateFilter_Running :: JobsListStateFilter
pattern JobsListStateFilter_Running = JobsListStateFilter "running"

{-# COMPLETE
  JobsListStateFilter_Done,
  JobsListStateFilter_Pending,
  JobsListStateFilter_Running,
  JobsListStateFilter #-}
