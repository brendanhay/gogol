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
-- Module      : Gogol.MachineLearning.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.MachineLearning.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleCloudMlV1_StudyConfig_MetricSpec_Goal
    GoogleCloudMlV1_StudyConfig_MetricSpec_Goal
      ( GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_GOALTYPEUNSPECIFIED,
        GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_Maximize,
        GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_Minimize,
        ..
      ),

    -- * GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType
    GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType
      ( GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_SCALETYPEUNSPECIFIED,
        GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITLINEARSCALE,
        GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITLOGSCALE,
        GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITREVERSELOGSCALE,
        ..
      ),

    -- * GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
    GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
      ( GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_PARAMETERTYPEUNSPECIFIED,
        GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Double,
        GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Integer,
        GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Categorical,
        GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Discrete,
        ..
      ),

    -- * GoogleCloudMlV1__AcceleratorConfig_Type
    GoogleCloudMlV1__AcceleratorConfig_Type
      ( GoogleCloudMlV1__AcceleratorConfig_Type_ACCELERATORTYPEUNSPECIFIED,
        GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_K80,
        GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_P100,
        GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_V100,
        GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_P4,
        GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_T4,
        GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_A100,
        GoogleCloudMlV1__AcceleratorConfig_Type_TPU_V2,
        GoogleCloudMlV1__AcceleratorConfig_Type_TPU_V3,
        GoogleCloudMlV1__AcceleratorConfig_Type_TPUV2POD,
        GoogleCloudMlV1__AcceleratorConfig_Type_TPUV3POD,
        GoogleCloudMlV1__AcceleratorConfig_Type_TPUV4POD,
        ..
      ),

    -- * GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
    GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
      ( GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_ACCELERATORTYPEUNSPECIFIED,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_K80,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_P100,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_V100,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_P4,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_T4,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_A100,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPU_V2,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPU_V3,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV2POD,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV3POD,
        GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV4POD,
        ..
      ),

    -- * GoogleCloudMlV1__Capability_Type
    GoogleCloudMlV1__Capability_Type
      ( GoogleCloudMlV1__Capability_Type_TYPEUNSPECIFIED,
        GoogleCloudMlV1__Capability_Type_Training,
        GoogleCloudMlV1__Capability_Type_BATCHPREDICTION,
        GoogleCloudMlV1__Capability_Type_ONLINEPREDICTION,
        ..
      ),

    -- * GoogleCloudMlV1__HyperparameterOutput_State
    GoogleCloudMlV1__HyperparameterOutput_State
      ( GoogleCloudMlV1__HyperparameterOutput_State_STATEUNSPECIFIED,
        GoogleCloudMlV1__HyperparameterOutput_State_Queued,
        GoogleCloudMlV1__HyperparameterOutput_State_Preparing,
        GoogleCloudMlV1__HyperparameterOutput_State_Running,
        GoogleCloudMlV1__HyperparameterOutput_State_Succeeded,
        GoogleCloudMlV1__HyperparameterOutput_State_Failed,
        GoogleCloudMlV1__HyperparameterOutput_State_Cancelling,
        GoogleCloudMlV1__HyperparameterOutput_State_Cancelled,
        ..
      ),

    -- * GoogleCloudMlV1__HyperparameterSpec_Algorithm
    GoogleCloudMlV1__HyperparameterSpec_Algorithm
      ( GoogleCloudMlV1__HyperparameterSpec_Algorithm_ALGORITHMUNSPECIFIED,
        GoogleCloudMlV1__HyperparameterSpec_Algorithm_GRIDSEARCH,
        GoogleCloudMlV1__HyperparameterSpec_Algorithm_RANDOMSEARCH,
        ..
      ),

    -- * GoogleCloudMlV1__HyperparameterSpec_Goal
    GoogleCloudMlV1__HyperparameterSpec_Goal
      ( GoogleCloudMlV1__HyperparameterSpec_Goal_GOALTYPEUNSPECIFIED,
        GoogleCloudMlV1__HyperparameterSpec_Goal_Maximize,
        GoogleCloudMlV1__HyperparameterSpec_Goal_Minimize,
        ..
      ),

    -- * GoogleCloudMlV1__Job_State
    GoogleCloudMlV1__Job_State
      ( GoogleCloudMlV1__Job_State_STATEUNSPECIFIED,
        GoogleCloudMlV1__Job_State_Queued,
        GoogleCloudMlV1__Job_State_Preparing,
        GoogleCloudMlV1__Job_State_Running,
        GoogleCloudMlV1__Job_State_Succeeded,
        GoogleCloudMlV1__Job_State_Failed,
        GoogleCloudMlV1__Job_State_Cancelling,
        GoogleCloudMlV1__Job_State_Cancelled,
        ..
      ),

    -- * GoogleCloudMlV1__MetricSpec_Name
    GoogleCloudMlV1__MetricSpec_Name
      ( GoogleCloudMlV1__MetricSpec_Name_METRICNAMEUNSPECIFIED,
        GoogleCloudMlV1__MetricSpec_Name_CPUUSAGE,
        GoogleCloudMlV1__MetricSpec_Name_GPUDUTYCYCLE,
        ..
      ),

    -- * GoogleCloudMlV1__OperationMetadata_OperationType
    GoogleCloudMlV1__OperationMetadata_OperationType
      ( GoogleCloudMlV1__OperationMetadata_OperationType_OPERATIONTYPEUNSPECIFIED,
        GoogleCloudMlV1__OperationMetadata_OperationType_CREATEVERSION,
        GoogleCloudMlV1__OperationMetadata_OperationType_DELETEVERSION,
        GoogleCloudMlV1__OperationMetadata_OperationType_DELETEMODEL,
        GoogleCloudMlV1__OperationMetadata_OperationType_UPDATEMODEL,
        GoogleCloudMlV1__OperationMetadata_OperationType_UPDATEVERSION,
        GoogleCloudMlV1__OperationMetadata_OperationType_UPDATECONFIG,
        ..
      ),

    -- * GoogleCloudMlV1__ParameterSpec_ScaleType
    GoogleCloudMlV1__ParameterSpec_ScaleType
      ( GoogleCloudMlV1__ParameterSpec_ScaleType_None,
        GoogleCloudMlV1__ParameterSpec_ScaleType_UNITLINEARSCALE,
        GoogleCloudMlV1__ParameterSpec_ScaleType_UNITLOGSCALE,
        GoogleCloudMlV1__ParameterSpec_ScaleType_UNITREVERSELOGSCALE,
        ..
      ),

    -- * GoogleCloudMlV1__ParameterSpec_Type
    GoogleCloudMlV1__ParameterSpec_Type
      ( GoogleCloudMlV1__ParameterSpec_Type_PARAMETERTYPEUNSPECIFIED,
        GoogleCloudMlV1__ParameterSpec_Type_Double,
        GoogleCloudMlV1__ParameterSpec_Type_Integer,
        GoogleCloudMlV1__ParameterSpec_Type_Categorical,
        GoogleCloudMlV1__ParameterSpec_Type_Discrete,
        ..
      ),

    -- * GoogleCloudMlV1__PredictionInput_DataFormat
    GoogleCloudMlV1__PredictionInput_DataFormat
      ( GoogleCloudMlV1__PredictionInput_DataFormat_DATAFORMATUNSPECIFIED,
        GoogleCloudMlV1__PredictionInput_DataFormat_Json,
        GoogleCloudMlV1__PredictionInput_DataFormat_Text,
        GoogleCloudMlV1__PredictionInput_DataFormat_TFRECORD,
        GoogleCloudMlV1__PredictionInput_DataFormat_TFRECORDGZIP,
        GoogleCloudMlV1__PredictionInput_DataFormat_Csv,
        ..
      ),

    -- * GoogleCloudMlV1__PredictionInput_OutputDataFormat
    GoogleCloudMlV1__PredictionInput_OutputDataFormat
      ( GoogleCloudMlV1__PredictionInput_OutputDataFormat_DATAFORMATUNSPECIFIED,
        GoogleCloudMlV1__PredictionInput_OutputDataFormat_Json,
        GoogleCloudMlV1__PredictionInput_OutputDataFormat_Text,
        GoogleCloudMlV1__PredictionInput_OutputDataFormat_TFRECORD,
        GoogleCloudMlV1__PredictionInput_OutputDataFormat_TFRECORDGZIP,
        GoogleCloudMlV1__PredictionInput_OutputDataFormat_Csv,
        ..
      ),

    -- * GoogleCloudMlV1__Study_State
    GoogleCloudMlV1__Study_State
      ( GoogleCloudMlV1__Study_State_STATEUNSPECIFIED,
        GoogleCloudMlV1__Study_State_Active,
        GoogleCloudMlV1__Study_State_Inactive,
        GoogleCloudMlV1__Study_State_Completed,
        ..
      ),

    -- * GoogleCloudMlV1__StudyConfig_Algorithm
    GoogleCloudMlV1__StudyConfig_Algorithm
      ( GoogleCloudMlV1__StudyConfig_Algorithm_ALGORITHMUNSPECIFIED,
        GoogleCloudMlV1__StudyConfig_Algorithm_GAUSSIANPROCESSBANDIT,
        GoogleCloudMlV1__StudyConfig_Algorithm_GRIDSEARCH,
        GoogleCloudMlV1__StudyConfig_Algorithm_RANDOMSEARCH,
        ..
      ),

    -- * GoogleCloudMlV1__SuggestTrialsResponse_StudyState
    GoogleCloudMlV1__SuggestTrialsResponse_StudyState
      ( GoogleCloudMlV1__SuggestTrialsResponse_StudyState_STATEUNSPECIFIED,
        GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Active,
        GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Inactive,
        GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Completed,
        ..
      ),

    -- * GoogleCloudMlV1__TrainingInput_ScaleTier
    GoogleCloudMlV1__TrainingInput_ScaleTier
      ( GoogleCloudMlV1__TrainingInput_ScaleTier_Basic,
        GoogleCloudMlV1__TrainingInput_ScaleTier_STANDARD_1,
        GoogleCloudMlV1__TrainingInput_ScaleTier_PREMIUM_1,
        GoogleCloudMlV1__TrainingInput_ScaleTier_BASICGPU,
        GoogleCloudMlV1__TrainingInput_ScaleTier_BASICTPU,
        GoogleCloudMlV1__TrainingInput_ScaleTier_Custom,
        ..
      ),

    -- * GoogleCloudMlV1__Trial_State
    GoogleCloudMlV1__Trial_State
      ( GoogleCloudMlV1__Trial_State_STATEUNSPECIFIED,
        GoogleCloudMlV1__Trial_State_Requested,
        GoogleCloudMlV1__Trial_State_Active,
        GoogleCloudMlV1__Trial_State_Completed,
        GoogleCloudMlV1__Trial_State_Stopping,
        ..
      ),

    -- * GoogleCloudMlV1__Version_Framework
    GoogleCloudMlV1__Version_Framework
      ( GoogleCloudMlV1__Version_Framework_FRAMEWORKUNSPECIFIED,
        GoogleCloudMlV1__Version_Framework_Tensorflow,
        GoogleCloudMlV1__Version_Framework_SCIKITLEARN,
        GoogleCloudMlV1__Version_Framework_Xgboost,
        ..
      ),

    -- * GoogleCloudMlV1__Version_State
    GoogleCloudMlV1__Version_State
      ( GoogleCloudMlV1__Version_State_Unknown,
        GoogleCloudMlV1__Version_State_Ready,
        GoogleCloudMlV1__Version_State_Creating,
        GoogleCloudMlV1__Version_State_Failed,
        GoogleCloudMlV1__Version_State_Deleting,
        GoogleCloudMlV1__Version_State_Updating,
        ..
      ),

    -- * GoogleIamV1__AuditLogConfig_LogType
    GoogleIamV1__AuditLogConfig_LogType
      ( GoogleIamV1__AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        GoogleIamV1__AuditLogConfig_LogType_ADMINREAD,
        GoogleIamV1__AuditLogConfig_LogType_DATAWRITE,
        GoogleIamV1__AuditLogConfig_LogType_DATAREAD,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Required. The optimization goal of the metric.
newtype GoogleCloudMlV1_StudyConfig_MetricSpec_Goal = GoogleCloudMlV1_StudyConfig_MetricSpec_Goal {fromGoogleCloudMlV1_StudyConfig_MetricSpec_Goal :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Goal Type will default to maximize.
pattern GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_GOALTYPEUNSPECIFIED :: GoogleCloudMlV1_StudyConfig_MetricSpec_Goal
pattern GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_GOALTYPEUNSPECIFIED = GoogleCloudMlV1_StudyConfig_MetricSpec_Goal "GOAL_TYPE_UNSPECIFIED"

-- | Maximize the goal metric.
pattern GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_Maximize :: GoogleCloudMlV1_StudyConfig_MetricSpec_Goal
pattern GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_Maximize = GoogleCloudMlV1_StudyConfig_MetricSpec_Goal "MAXIMIZE"

-- | Minimize the goal metric.
pattern GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_Minimize :: GoogleCloudMlV1_StudyConfig_MetricSpec_Goal
pattern GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_Minimize = GoogleCloudMlV1_StudyConfig_MetricSpec_Goal "MINIMIZE"

{-# COMPLETE
  GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_GOALTYPEUNSPECIFIED,
  GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_Maximize,
  GoogleCloudMlV1_StudyConfig_MetricSpec_Goal_Minimize,
  GoogleCloudMlV1_StudyConfig_MetricSpec_Goal
  #-}

-- | How the parameter should be scaled. Leave unset for categorical parameters.
newtype GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType = GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType {fromGoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | By default, no scaling is applied.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_SCALETYPEUNSPECIFIED :: GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_SCALETYPEUNSPECIFIED = GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType "SCALE_TYPE_UNSPECIFIED"

-- | Scales the feasible space to (0, 1) linearly.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITLINEARSCALE :: GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITLINEARSCALE = GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType "UNIT_LINEAR_SCALE"

-- | Scales the feasible space logarithmically to (0, 1). The entire feasible space must be strictly positive.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITLOGSCALE :: GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITLOGSCALE = GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType "UNIT_LOG_SCALE"

-- | Scales the feasible space \"reverse\" logarithmically to (0, 1). The result is that values close to the top of the feasible space are spread out more than points near the bottom. The entire feasible space must be strictly positive.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITREVERSELOGSCALE :: GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITREVERSELOGSCALE = GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType "UNIT_REVERSE_LOG_SCALE"

{-# COMPLETE
  GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_SCALETYPEUNSPECIFIED,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITLINEARSCALE,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITLOGSCALE,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType_UNITREVERSELOGSCALE,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType
  #-}

-- | Required. The type of the parameter.
newtype GoogleCloudMlV1_StudyConfig_ParameterSpec_Type = GoogleCloudMlV1_StudyConfig_ParameterSpec_Type {fromGoogleCloudMlV1_StudyConfig_ParameterSpec_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | You must specify a valid type. Using this unspecified type will result in an error.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_PARAMETERTYPEUNSPECIFIED :: GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_PARAMETERTYPEUNSPECIFIED = GoogleCloudMlV1_StudyConfig_ParameterSpec_Type "PARAMETER_TYPE_UNSPECIFIED"

-- | Type for real-valued parameters.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Double :: GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Double = GoogleCloudMlV1_StudyConfig_ParameterSpec_Type "DOUBLE"

-- | Type for integral parameters.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Integer :: GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Integer = GoogleCloudMlV1_StudyConfig_ParameterSpec_Type "INTEGER"

-- | The parameter is categorical, with a value chosen from the categories field.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Categorical :: GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Categorical = GoogleCloudMlV1_StudyConfig_ParameterSpec_Type "CATEGORICAL"

-- | The parameter is real valued, with a fixed set of feasible points. If @type==DISCRETE@, feasible_points must be provided, and {@min_value@, @max_value@} will be ignored.
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Discrete :: GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
pattern GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Discrete = GoogleCloudMlV1_StudyConfig_ParameterSpec_Type "DISCRETE"

{-# COMPLETE
  GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_PARAMETERTYPEUNSPECIFIED,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Double,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Integer,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Categorical,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_Type_Discrete,
  GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
  #-}

-- | The type of accelerator to use.
newtype GoogleCloudMlV1__AcceleratorConfig_Type = GoogleCloudMlV1__AcceleratorConfig_Type {fromGoogleCloudMlV1__AcceleratorConfig_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified accelerator type. Default to no GPU.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_ACCELERATORTYPEUNSPECIFIED :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_ACCELERATORTYPEUNSPECIFIED = GoogleCloudMlV1__AcceleratorConfig_Type "ACCELERATOR_TYPE_UNSPECIFIED"

-- | Nvidia Tesla K80 GPU.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_K80 :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_K80 = GoogleCloudMlV1__AcceleratorConfig_Type "NVIDIA_TESLA_K80"

-- | Nvidia Tesla P100 GPU.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_P100 :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_P100 = GoogleCloudMlV1__AcceleratorConfig_Type "NVIDIA_TESLA_P100"

-- | Nvidia V100 GPU.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_V100 :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_V100 = GoogleCloudMlV1__AcceleratorConfig_Type "NVIDIA_TESLA_V100"

-- | Nvidia Tesla P4 GPU.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_P4 :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_P4 = GoogleCloudMlV1__AcceleratorConfig_Type "NVIDIA_TESLA_P4"

-- | Nvidia T4 GPU.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_T4 :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_T4 = GoogleCloudMlV1__AcceleratorConfig_Type "NVIDIA_TESLA_T4"

-- | Nvidia A100 GPU.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_A100 :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_A100 = GoogleCloudMlV1__AcceleratorConfig_Type "NVIDIA_TESLA_A100"

-- | TPU v2.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPU_V2 :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPU_V2 = GoogleCloudMlV1__AcceleratorConfig_Type "TPU_V2"

-- | TPU v3.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPU_V3 :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPU_V3 = GoogleCloudMlV1__AcceleratorConfig_Type "TPU_V3"

-- | TPU v2 POD.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPUV2POD :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPUV2POD = GoogleCloudMlV1__AcceleratorConfig_Type "TPU_V2_POD"

-- | TPU v3 POD.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPUV3POD :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPUV3POD = GoogleCloudMlV1__AcceleratorConfig_Type "TPU_V3_POD"

-- | TPU v4 POD.
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPUV4POD :: GoogleCloudMlV1__AcceleratorConfig_Type
pattern GoogleCloudMlV1__AcceleratorConfig_Type_TPUV4POD = GoogleCloudMlV1__AcceleratorConfig_Type "TPU_V4_POD"

{-# COMPLETE
  GoogleCloudMlV1__AcceleratorConfig_Type_ACCELERATORTYPEUNSPECIFIED,
  GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_K80,
  GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_P100,
  GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_V100,
  GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_P4,
  GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_T4,
  GoogleCloudMlV1__AcceleratorConfig_Type_NVIDIA_TESLA_A100,
  GoogleCloudMlV1__AcceleratorConfig_Type_TPU_V2,
  GoogleCloudMlV1__AcceleratorConfig_Type_TPU_V3,
  GoogleCloudMlV1__AcceleratorConfig_Type_TPUV2POD,
  GoogleCloudMlV1__AcceleratorConfig_Type_TPUV3POD,
  GoogleCloudMlV1__AcceleratorConfig_Type_TPUV4POD,
  GoogleCloudMlV1__AcceleratorConfig_Type
  #-}

newtype GoogleCloudMlV1__Capability_AvailableAcceleratorsItem = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem {fromGoogleCloudMlV1__Capability_AvailableAcceleratorsItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified accelerator type. Default to no GPU.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_ACCELERATORTYPEUNSPECIFIED :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_ACCELERATORTYPEUNSPECIFIED = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "ACCELERATOR_TYPE_UNSPECIFIED"

-- | Nvidia Tesla K80 GPU.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_K80 :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_K80 = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "NVIDIA_TESLA_K80"

-- | Nvidia Tesla P100 GPU.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_P100 :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_P100 = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "NVIDIA_TESLA_P100"

-- | Nvidia V100 GPU.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_V100 :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_V100 = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "NVIDIA_TESLA_V100"

-- | Nvidia Tesla P4 GPU.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_P4 :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_P4 = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "NVIDIA_TESLA_P4"

-- | Nvidia T4 GPU.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_T4 :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_T4 = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "NVIDIA_TESLA_T4"

-- | Nvidia A100 GPU.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_A100 :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_A100 = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "NVIDIA_TESLA_A100"

-- | TPU v2.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPU_V2 :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPU_V2 = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "TPU_V2"

-- | TPU v3.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPU_V3 :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPU_V3 = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "TPU_V3"

-- | TPU v2 POD.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV2POD :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV2POD = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "TPU_V2_POD"

-- | TPU v3 POD.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV3POD :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV3POD = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "TPU_V3_POD"

-- | TPU v4 POD.
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV4POD :: GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
pattern GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV4POD = GoogleCloudMlV1__Capability_AvailableAcceleratorsItem "TPU_V4_POD"

{-# COMPLETE
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_ACCELERATORTYPEUNSPECIFIED,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_K80,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_P100,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_V100,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_P4,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_T4,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_NVIDIA_TESLA_A100,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPU_V2,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPU_V3,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV2POD,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV3POD,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem_TPUV4POD,
  GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
  #-}

newtype GoogleCloudMlV1__Capability_Type = GoogleCloudMlV1__Capability_Type {fromGoogleCloudMlV1__Capability_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern GoogleCloudMlV1__Capability_Type_TYPEUNSPECIFIED :: GoogleCloudMlV1__Capability_Type
pattern GoogleCloudMlV1__Capability_Type_TYPEUNSPECIFIED = GoogleCloudMlV1__Capability_Type "TYPE_UNSPECIFIED"

pattern GoogleCloudMlV1__Capability_Type_Training :: GoogleCloudMlV1__Capability_Type
pattern GoogleCloudMlV1__Capability_Type_Training = GoogleCloudMlV1__Capability_Type "TRAINING"

pattern GoogleCloudMlV1__Capability_Type_BATCHPREDICTION :: GoogleCloudMlV1__Capability_Type
pattern GoogleCloudMlV1__Capability_Type_BATCHPREDICTION = GoogleCloudMlV1__Capability_Type "BATCH_PREDICTION"

pattern GoogleCloudMlV1__Capability_Type_ONLINEPREDICTION :: GoogleCloudMlV1__Capability_Type
pattern GoogleCloudMlV1__Capability_Type_ONLINEPREDICTION = GoogleCloudMlV1__Capability_Type "ONLINE_PREDICTION"

{-# COMPLETE
  GoogleCloudMlV1__Capability_Type_TYPEUNSPECIFIED,
  GoogleCloudMlV1__Capability_Type_Training,
  GoogleCloudMlV1__Capability_Type_BATCHPREDICTION,
  GoogleCloudMlV1__Capability_Type_ONLINEPREDICTION,
  GoogleCloudMlV1__Capability_Type
  #-}

-- | Output only. The detailed state of the trial.
newtype GoogleCloudMlV1__HyperparameterOutput_State = GoogleCloudMlV1__HyperparameterOutput_State {fromGoogleCloudMlV1__HyperparameterOutput_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job state is unspecified.
pattern GoogleCloudMlV1__HyperparameterOutput_State_STATEUNSPECIFIED :: GoogleCloudMlV1__HyperparameterOutput_State
pattern GoogleCloudMlV1__HyperparameterOutput_State_STATEUNSPECIFIED = GoogleCloudMlV1__HyperparameterOutput_State "STATE_UNSPECIFIED"

-- | The job has been just created and processing has not yet begun.
pattern GoogleCloudMlV1__HyperparameterOutput_State_Queued :: GoogleCloudMlV1__HyperparameterOutput_State
pattern GoogleCloudMlV1__HyperparameterOutput_State_Queued = GoogleCloudMlV1__HyperparameterOutput_State "QUEUED"

-- | The service is preparing to run the job.
pattern GoogleCloudMlV1__HyperparameterOutput_State_Preparing :: GoogleCloudMlV1__HyperparameterOutput_State
pattern GoogleCloudMlV1__HyperparameterOutput_State_Preparing = GoogleCloudMlV1__HyperparameterOutput_State "PREPARING"

-- | The job is in progress.
pattern GoogleCloudMlV1__HyperparameterOutput_State_Running :: GoogleCloudMlV1__HyperparameterOutput_State
pattern GoogleCloudMlV1__HyperparameterOutput_State_Running = GoogleCloudMlV1__HyperparameterOutput_State "RUNNING"

-- | The job completed successfully.
pattern GoogleCloudMlV1__HyperparameterOutput_State_Succeeded :: GoogleCloudMlV1__HyperparameterOutput_State
pattern GoogleCloudMlV1__HyperparameterOutput_State_Succeeded = GoogleCloudMlV1__HyperparameterOutput_State "SUCCEEDED"

-- | The job failed. @error_message@ should contain the details of the failure.
pattern GoogleCloudMlV1__HyperparameterOutput_State_Failed :: GoogleCloudMlV1__HyperparameterOutput_State
pattern GoogleCloudMlV1__HyperparameterOutput_State_Failed = GoogleCloudMlV1__HyperparameterOutput_State "FAILED"

-- | The job is being cancelled. @error_message@ should describe the reason for the cancellation.
pattern GoogleCloudMlV1__HyperparameterOutput_State_Cancelling :: GoogleCloudMlV1__HyperparameterOutput_State
pattern GoogleCloudMlV1__HyperparameterOutput_State_Cancelling = GoogleCloudMlV1__HyperparameterOutput_State "CANCELLING"

-- | The job has been cancelled. @error_message@ should describe the reason for the cancellation.
pattern GoogleCloudMlV1__HyperparameterOutput_State_Cancelled :: GoogleCloudMlV1__HyperparameterOutput_State
pattern GoogleCloudMlV1__HyperparameterOutput_State_Cancelled = GoogleCloudMlV1__HyperparameterOutput_State "CANCELLED"

{-# COMPLETE
  GoogleCloudMlV1__HyperparameterOutput_State_STATEUNSPECIFIED,
  GoogleCloudMlV1__HyperparameterOutput_State_Queued,
  GoogleCloudMlV1__HyperparameterOutput_State_Preparing,
  GoogleCloudMlV1__HyperparameterOutput_State_Running,
  GoogleCloudMlV1__HyperparameterOutput_State_Succeeded,
  GoogleCloudMlV1__HyperparameterOutput_State_Failed,
  GoogleCloudMlV1__HyperparameterOutput_State_Cancelling,
  GoogleCloudMlV1__HyperparameterOutput_State_Cancelled,
  GoogleCloudMlV1__HyperparameterOutput_State
  #-}

-- | Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.
newtype GoogleCloudMlV1__HyperparameterSpec_Algorithm = GoogleCloudMlV1__HyperparameterSpec_Algorithm {fromGoogleCloudMlV1__HyperparameterSpec_Algorithm :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default algorithm used by the hyperparameter tuning service. This is a Bayesian optimization algorithm.
pattern GoogleCloudMlV1__HyperparameterSpec_Algorithm_ALGORITHMUNSPECIFIED :: GoogleCloudMlV1__HyperparameterSpec_Algorithm
pattern GoogleCloudMlV1__HyperparameterSpec_Algorithm_ALGORITHMUNSPECIFIED = GoogleCloudMlV1__HyperparameterSpec_Algorithm "ALGORITHM_UNSPECIFIED"

-- | Simple grid search within the feasible space. To use grid search, all parameters must be @INTEGER@, @CATEGORICAL@, or @DISCRETE@.
pattern GoogleCloudMlV1__HyperparameterSpec_Algorithm_GRIDSEARCH :: GoogleCloudMlV1__HyperparameterSpec_Algorithm
pattern GoogleCloudMlV1__HyperparameterSpec_Algorithm_GRIDSEARCH = GoogleCloudMlV1__HyperparameterSpec_Algorithm "GRID_SEARCH"

-- | Simple random search within the feasible space.
pattern GoogleCloudMlV1__HyperparameterSpec_Algorithm_RANDOMSEARCH :: GoogleCloudMlV1__HyperparameterSpec_Algorithm
pattern GoogleCloudMlV1__HyperparameterSpec_Algorithm_RANDOMSEARCH = GoogleCloudMlV1__HyperparameterSpec_Algorithm "RANDOM_SEARCH"

{-# COMPLETE
  GoogleCloudMlV1__HyperparameterSpec_Algorithm_ALGORITHMUNSPECIFIED,
  GoogleCloudMlV1__HyperparameterSpec_Algorithm_GRIDSEARCH,
  GoogleCloudMlV1__HyperparameterSpec_Algorithm_RANDOMSEARCH,
  GoogleCloudMlV1__HyperparameterSpec_Algorithm
  #-}

-- | Required. The type of goal to use for tuning. Available types are @MAXIMIZE@ and @MINIMIZE@. Defaults to @MAXIMIZE@.
newtype GoogleCloudMlV1__HyperparameterSpec_Goal = GoogleCloudMlV1__HyperparameterSpec_Goal {fromGoogleCloudMlV1__HyperparameterSpec_Goal :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Goal Type will default to maximize.
pattern GoogleCloudMlV1__HyperparameterSpec_Goal_GOALTYPEUNSPECIFIED :: GoogleCloudMlV1__HyperparameterSpec_Goal
pattern GoogleCloudMlV1__HyperparameterSpec_Goal_GOALTYPEUNSPECIFIED = GoogleCloudMlV1__HyperparameterSpec_Goal "GOAL_TYPE_UNSPECIFIED"

-- | Maximize the goal metric.
pattern GoogleCloudMlV1__HyperparameterSpec_Goal_Maximize :: GoogleCloudMlV1__HyperparameterSpec_Goal
pattern GoogleCloudMlV1__HyperparameterSpec_Goal_Maximize = GoogleCloudMlV1__HyperparameterSpec_Goal "MAXIMIZE"

-- | Minimize the goal metric.
pattern GoogleCloudMlV1__HyperparameterSpec_Goal_Minimize :: GoogleCloudMlV1__HyperparameterSpec_Goal
pattern GoogleCloudMlV1__HyperparameterSpec_Goal_Minimize = GoogleCloudMlV1__HyperparameterSpec_Goal "MINIMIZE"

{-# COMPLETE
  GoogleCloudMlV1__HyperparameterSpec_Goal_GOALTYPEUNSPECIFIED,
  GoogleCloudMlV1__HyperparameterSpec_Goal_Maximize,
  GoogleCloudMlV1__HyperparameterSpec_Goal_Minimize,
  GoogleCloudMlV1__HyperparameterSpec_Goal
  #-}

-- | Output only. The detailed state of a job.
newtype GoogleCloudMlV1__Job_State = GoogleCloudMlV1__Job_State {fromGoogleCloudMlV1__Job_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The job state is unspecified.
pattern GoogleCloudMlV1__Job_State_STATEUNSPECIFIED :: GoogleCloudMlV1__Job_State
pattern GoogleCloudMlV1__Job_State_STATEUNSPECIFIED = GoogleCloudMlV1__Job_State "STATE_UNSPECIFIED"

-- | The job has been just created and processing has not yet begun.
pattern GoogleCloudMlV1__Job_State_Queued :: GoogleCloudMlV1__Job_State
pattern GoogleCloudMlV1__Job_State_Queued = GoogleCloudMlV1__Job_State "QUEUED"

-- | The service is preparing to run the job.
pattern GoogleCloudMlV1__Job_State_Preparing :: GoogleCloudMlV1__Job_State
pattern GoogleCloudMlV1__Job_State_Preparing = GoogleCloudMlV1__Job_State "PREPARING"

-- | The job is in progress.
pattern GoogleCloudMlV1__Job_State_Running :: GoogleCloudMlV1__Job_State
pattern GoogleCloudMlV1__Job_State_Running = GoogleCloudMlV1__Job_State "RUNNING"

-- | The job completed successfully.
pattern GoogleCloudMlV1__Job_State_Succeeded :: GoogleCloudMlV1__Job_State
pattern GoogleCloudMlV1__Job_State_Succeeded = GoogleCloudMlV1__Job_State "SUCCEEDED"

-- | The job failed. @error_message@ should contain the details of the failure.
pattern GoogleCloudMlV1__Job_State_Failed :: GoogleCloudMlV1__Job_State
pattern GoogleCloudMlV1__Job_State_Failed = GoogleCloudMlV1__Job_State "FAILED"

-- | The job is being cancelled. @error_message@ should describe the reason for the cancellation.
pattern GoogleCloudMlV1__Job_State_Cancelling :: GoogleCloudMlV1__Job_State
pattern GoogleCloudMlV1__Job_State_Cancelling = GoogleCloudMlV1__Job_State "CANCELLING"

-- | The job has been cancelled. @error_message@ should describe the reason for the cancellation.
pattern GoogleCloudMlV1__Job_State_Cancelled :: GoogleCloudMlV1__Job_State
pattern GoogleCloudMlV1__Job_State_Cancelled = GoogleCloudMlV1__Job_State "CANCELLED"

{-# COMPLETE
  GoogleCloudMlV1__Job_State_STATEUNSPECIFIED,
  GoogleCloudMlV1__Job_State_Queued,
  GoogleCloudMlV1__Job_State_Preparing,
  GoogleCloudMlV1__Job_State_Running,
  GoogleCloudMlV1__Job_State_Succeeded,
  GoogleCloudMlV1__Job_State_Failed,
  GoogleCloudMlV1__Job_State_Cancelling,
  GoogleCloudMlV1__Job_State_Cancelled,
  GoogleCloudMlV1__Job_State
  #-}

-- | metric name.
newtype GoogleCloudMlV1__MetricSpec_Name = GoogleCloudMlV1__MetricSpec_Name {fromGoogleCloudMlV1__MetricSpec_Name :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified MetricName.
pattern GoogleCloudMlV1__MetricSpec_Name_METRICNAMEUNSPECIFIED :: GoogleCloudMlV1__MetricSpec_Name
pattern GoogleCloudMlV1__MetricSpec_Name_METRICNAMEUNSPECIFIED = GoogleCloudMlV1__MetricSpec_Name "METRIC_NAME_UNSPECIFIED"

-- | CPU usage.
pattern GoogleCloudMlV1__MetricSpec_Name_CPUUSAGE :: GoogleCloudMlV1__MetricSpec_Name
pattern GoogleCloudMlV1__MetricSpec_Name_CPUUSAGE = GoogleCloudMlV1__MetricSpec_Name "CPU_USAGE"

-- | GPU duty cycle.
pattern GoogleCloudMlV1__MetricSpec_Name_GPUDUTYCYCLE :: GoogleCloudMlV1__MetricSpec_Name
pattern GoogleCloudMlV1__MetricSpec_Name_GPUDUTYCYCLE = GoogleCloudMlV1__MetricSpec_Name "GPU_DUTY_CYCLE"

{-# COMPLETE
  GoogleCloudMlV1__MetricSpec_Name_METRICNAMEUNSPECIFIED,
  GoogleCloudMlV1__MetricSpec_Name_CPUUSAGE,
  GoogleCloudMlV1__MetricSpec_Name_GPUDUTYCYCLE,
  GoogleCloudMlV1__MetricSpec_Name
  #-}

-- | The operation type.
newtype GoogleCloudMlV1__OperationMetadata_OperationType = GoogleCloudMlV1__OperationMetadata_OperationType {fromGoogleCloudMlV1__OperationMetadata_OperationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified operation type.
pattern GoogleCloudMlV1__OperationMetadata_OperationType_OPERATIONTYPEUNSPECIFIED :: GoogleCloudMlV1__OperationMetadata_OperationType
pattern GoogleCloudMlV1__OperationMetadata_OperationType_OPERATIONTYPEUNSPECIFIED = GoogleCloudMlV1__OperationMetadata_OperationType "OPERATION_TYPE_UNSPECIFIED"

-- | An operation to create a new version.
pattern GoogleCloudMlV1__OperationMetadata_OperationType_CREATEVERSION :: GoogleCloudMlV1__OperationMetadata_OperationType
pattern GoogleCloudMlV1__OperationMetadata_OperationType_CREATEVERSION = GoogleCloudMlV1__OperationMetadata_OperationType "CREATE_VERSION"

-- | An operation to delete an existing version.
pattern GoogleCloudMlV1__OperationMetadata_OperationType_DELETEVERSION :: GoogleCloudMlV1__OperationMetadata_OperationType
pattern GoogleCloudMlV1__OperationMetadata_OperationType_DELETEVERSION = GoogleCloudMlV1__OperationMetadata_OperationType "DELETE_VERSION"

-- | An operation to delete an existing model.
pattern GoogleCloudMlV1__OperationMetadata_OperationType_DELETEMODEL :: GoogleCloudMlV1__OperationMetadata_OperationType
pattern GoogleCloudMlV1__OperationMetadata_OperationType_DELETEMODEL = GoogleCloudMlV1__OperationMetadata_OperationType "DELETE_MODEL"

-- | An operation to update an existing model.
pattern GoogleCloudMlV1__OperationMetadata_OperationType_UPDATEMODEL :: GoogleCloudMlV1__OperationMetadata_OperationType
pattern GoogleCloudMlV1__OperationMetadata_OperationType_UPDATEMODEL = GoogleCloudMlV1__OperationMetadata_OperationType "UPDATE_MODEL"

-- | An operation to update an existing version.
pattern GoogleCloudMlV1__OperationMetadata_OperationType_UPDATEVERSION :: GoogleCloudMlV1__OperationMetadata_OperationType
pattern GoogleCloudMlV1__OperationMetadata_OperationType_UPDATEVERSION = GoogleCloudMlV1__OperationMetadata_OperationType "UPDATE_VERSION"

-- | An operation to update project configuration.
pattern GoogleCloudMlV1__OperationMetadata_OperationType_UPDATECONFIG :: GoogleCloudMlV1__OperationMetadata_OperationType
pattern GoogleCloudMlV1__OperationMetadata_OperationType_UPDATECONFIG = GoogleCloudMlV1__OperationMetadata_OperationType "UPDATE_CONFIG"

{-# COMPLETE
  GoogleCloudMlV1__OperationMetadata_OperationType_OPERATIONTYPEUNSPECIFIED,
  GoogleCloudMlV1__OperationMetadata_OperationType_CREATEVERSION,
  GoogleCloudMlV1__OperationMetadata_OperationType_DELETEVERSION,
  GoogleCloudMlV1__OperationMetadata_OperationType_DELETEMODEL,
  GoogleCloudMlV1__OperationMetadata_OperationType_UPDATEMODEL,
  GoogleCloudMlV1__OperationMetadata_OperationType_UPDATEVERSION,
  GoogleCloudMlV1__OperationMetadata_OperationType_UPDATECONFIG,
  GoogleCloudMlV1__OperationMetadata_OperationType
  #-}

-- | Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parameters. Some kind of scaling is strongly recommended for real or integral parameters (e.g., @UNIT_LINEAR_SCALE@).
newtype GoogleCloudMlV1__ParameterSpec_ScaleType = GoogleCloudMlV1__ParameterSpec_ScaleType {fromGoogleCloudMlV1__ParameterSpec_ScaleType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | By default, no scaling is applied.
pattern GoogleCloudMlV1__ParameterSpec_ScaleType_None :: GoogleCloudMlV1__ParameterSpec_ScaleType
pattern GoogleCloudMlV1__ParameterSpec_ScaleType_None = GoogleCloudMlV1__ParameterSpec_ScaleType "NONE"

-- | Scales the feasible space to (0, 1) linearly.
pattern GoogleCloudMlV1__ParameterSpec_ScaleType_UNITLINEARSCALE :: GoogleCloudMlV1__ParameterSpec_ScaleType
pattern GoogleCloudMlV1__ParameterSpec_ScaleType_UNITLINEARSCALE = GoogleCloudMlV1__ParameterSpec_ScaleType "UNIT_LINEAR_SCALE"

-- | Scales the feasible space logarithmically to (0, 1). The entire feasible space must be strictly positive.
pattern GoogleCloudMlV1__ParameterSpec_ScaleType_UNITLOGSCALE :: GoogleCloudMlV1__ParameterSpec_ScaleType
pattern GoogleCloudMlV1__ParameterSpec_ScaleType_UNITLOGSCALE = GoogleCloudMlV1__ParameterSpec_ScaleType "UNIT_LOG_SCALE"

-- | Scales the feasible space \"reverse\" logarithmically to (0, 1). The result is that values close to the top of the feasible space are spread out more than points near the bottom. The entire feasible space must be strictly positive.
pattern GoogleCloudMlV1__ParameterSpec_ScaleType_UNITREVERSELOGSCALE :: GoogleCloudMlV1__ParameterSpec_ScaleType
pattern GoogleCloudMlV1__ParameterSpec_ScaleType_UNITREVERSELOGSCALE = GoogleCloudMlV1__ParameterSpec_ScaleType "UNIT_REVERSE_LOG_SCALE"

{-# COMPLETE
  GoogleCloudMlV1__ParameterSpec_ScaleType_None,
  GoogleCloudMlV1__ParameterSpec_ScaleType_UNITLINEARSCALE,
  GoogleCloudMlV1__ParameterSpec_ScaleType_UNITLOGSCALE,
  GoogleCloudMlV1__ParameterSpec_ScaleType_UNITREVERSELOGSCALE,
  GoogleCloudMlV1__ParameterSpec_ScaleType
  #-}

-- | Required. The type of the parameter.
newtype GoogleCloudMlV1__ParameterSpec_Type = GoogleCloudMlV1__ParameterSpec_Type {fromGoogleCloudMlV1__ParameterSpec_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | You must specify a valid type. Using this unspecified type will result in an error.
pattern GoogleCloudMlV1__ParameterSpec_Type_PARAMETERTYPEUNSPECIFIED :: GoogleCloudMlV1__ParameterSpec_Type
pattern GoogleCloudMlV1__ParameterSpec_Type_PARAMETERTYPEUNSPECIFIED = GoogleCloudMlV1__ParameterSpec_Type "PARAMETER_TYPE_UNSPECIFIED"

-- | Type for real-valued parameters.
pattern GoogleCloudMlV1__ParameterSpec_Type_Double :: GoogleCloudMlV1__ParameterSpec_Type
pattern GoogleCloudMlV1__ParameterSpec_Type_Double = GoogleCloudMlV1__ParameterSpec_Type "DOUBLE"

-- | Type for integral parameters.
pattern GoogleCloudMlV1__ParameterSpec_Type_Integer :: GoogleCloudMlV1__ParameterSpec_Type
pattern GoogleCloudMlV1__ParameterSpec_Type_Integer = GoogleCloudMlV1__ParameterSpec_Type "INTEGER"

-- | The parameter is categorical, with a value chosen from the categories field.
pattern GoogleCloudMlV1__ParameterSpec_Type_Categorical :: GoogleCloudMlV1__ParameterSpec_Type
pattern GoogleCloudMlV1__ParameterSpec_Type_Categorical = GoogleCloudMlV1__ParameterSpec_Type "CATEGORICAL"

-- | The parameter is real valued, with a fixed set of feasible points. If @type==DISCRETE@, feasible_points must be provided, and {@min_value@, @max_value@} will be ignored.
pattern GoogleCloudMlV1__ParameterSpec_Type_Discrete :: GoogleCloudMlV1__ParameterSpec_Type
pattern GoogleCloudMlV1__ParameterSpec_Type_Discrete = GoogleCloudMlV1__ParameterSpec_Type "DISCRETE"

{-# COMPLETE
  GoogleCloudMlV1__ParameterSpec_Type_PARAMETERTYPEUNSPECIFIED,
  GoogleCloudMlV1__ParameterSpec_Type_Double,
  GoogleCloudMlV1__ParameterSpec_Type_Integer,
  GoogleCloudMlV1__ParameterSpec_Type_Categorical,
  GoogleCloudMlV1__ParameterSpec_Type_Discrete,
  GoogleCloudMlV1__ParameterSpec_Type
  #-}

-- | Required. The format of the input data files.
newtype GoogleCloudMlV1__PredictionInput_DataFormat = GoogleCloudMlV1__PredictionInput_DataFormat {fromGoogleCloudMlV1__PredictionInput_DataFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified format.
pattern GoogleCloudMlV1__PredictionInput_DataFormat_DATAFORMATUNSPECIFIED :: GoogleCloudMlV1__PredictionInput_DataFormat
pattern GoogleCloudMlV1__PredictionInput_DataFormat_DATAFORMATUNSPECIFIED = GoogleCloudMlV1__PredictionInput_DataFormat "DATA_FORMAT_UNSPECIFIED"

-- | Each line of the file is a JSON dictionary representing one record.
pattern GoogleCloudMlV1__PredictionInput_DataFormat_Json :: GoogleCloudMlV1__PredictionInput_DataFormat
pattern GoogleCloudMlV1__PredictionInput_DataFormat_Json = GoogleCloudMlV1__PredictionInput_DataFormat "JSON"

-- | Deprecated. Use JSON instead.
pattern GoogleCloudMlV1__PredictionInput_DataFormat_Text :: GoogleCloudMlV1__PredictionInput_DataFormat
pattern GoogleCloudMlV1__PredictionInput_DataFormat_Text = GoogleCloudMlV1__PredictionInput_DataFormat "TEXT"

-- | The source file is a TFRecord file. Currently available only for input data.
pattern GoogleCloudMlV1__PredictionInput_DataFormat_TFRECORD :: GoogleCloudMlV1__PredictionInput_DataFormat
pattern GoogleCloudMlV1__PredictionInput_DataFormat_TFRECORD = GoogleCloudMlV1__PredictionInput_DataFormat "TF_RECORD"

-- | The source file is a GZIP-compressed TFRecord file. Currently available only for input data.
pattern GoogleCloudMlV1__PredictionInput_DataFormat_TFRECORDGZIP :: GoogleCloudMlV1__PredictionInput_DataFormat
pattern GoogleCloudMlV1__PredictionInput_DataFormat_TFRECORDGZIP = GoogleCloudMlV1__PredictionInput_DataFormat "TF_RECORD_GZIP"

-- | Values are comma-separated rows, with keys in a separate file. Currently available only for output data.
pattern GoogleCloudMlV1__PredictionInput_DataFormat_Csv :: GoogleCloudMlV1__PredictionInput_DataFormat
pattern GoogleCloudMlV1__PredictionInput_DataFormat_Csv = GoogleCloudMlV1__PredictionInput_DataFormat "CSV"

{-# COMPLETE
  GoogleCloudMlV1__PredictionInput_DataFormat_DATAFORMATUNSPECIFIED,
  GoogleCloudMlV1__PredictionInput_DataFormat_Json,
  GoogleCloudMlV1__PredictionInput_DataFormat_Text,
  GoogleCloudMlV1__PredictionInput_DataFormat_TFRECORD,
  GoogleCloudMlV1__PredictionInput_DataFormat_TFRECORDGZIP,
  GoogleCloudMlV1__PredictionInput_DataFormat_Csv,
  GoogleCloudMlV1__PredictionInput_DataFormat
  #-}

-- | Optional. Format of the output data files, defaults to JSON.
newtype GoogleCloudMlV1__PredictionInput_OutputDataFormat = GoogleCloudMlV1__PredictionInput_OutputDataFormat {fromGoogleCloudMlV1__PredictionInput_OutputDataFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified format.
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_DATAFORMATUNSPECIFIED :: GoogleCloudMlV1__PredictionInput_OutputDataFormat
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_DATAFORMATUNSPECIFIED = GoogleCloudMlV1__PredictionInput_OutputDataFormat "DATA_FORMAT_UNSPECIFIED"

-- | Each line of the file is a JSON dictionary representing one record.
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_Json :: GoogleCloudMlV1__PredictionInput_OutputDataFormat
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_Json = GoogleCloudMlV1__PredictionInput_OutputDataFormat "JSON"

-- | Deprecated. Use JSON instead.
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_Text :: GoogleCloudMlV1__PredictionInput_OutputDataFormat
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_Text = GoogleCloudMlV1__PredictionInput_OutputDataFormat "TEXT"

-- | The source file is a TFRecord file. Currently available only for input data.
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_TFRECORD :: GoogleCloudMlV1__PredictionInput_OutputDataFormat
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_TFRECORD = GoogleCloudMlV1__PredictionInput_OutputDataFormat "TF_RECORD"

-- | The source file is a GZIP-compressed TFRecord file. Currently available only for input data.
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_TFRECORDGZIP :: GoogleCloudMlV1__PredictionInput_OutputDataFormat
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_TFRECORDGZIP = GoogleCloudMlV1__PredictionInput_OutputDataFormat "TF_RECORD_GZIP"

-- | Values are comma-separated rows, with keys in a separate file. Currently available only for output data.
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_Csv :: GoogleCloudMlV1__PredictionInput_OutputDataFormat
pattern GoogleCloudMlV1__PredictionInput_OutputDataFormat_Csv = GoogleCloudMlV1__PredictionInput_OutputDataFormat "CSV"

{-# COMPLETE
  GoogleCloudMlV1__PredictionInput_OutputDataFormat_DATAFORMATUNSPECIFIED,
  GoogleCloudMlV1__PredictionInput_OutputDataFormat_Json,
  GoogleCloudMlV1__PredictionInput_OutputDataFormat_Text,
  GoogleCloudMlV1__PredictionInput_OutputDataFormat_TFRECORD,
  GoogleCloudMlV1__PredictionInput_OutputDataFormat_TFRECORDGZIP,
  GoogleCloudMlV1__PredictionInput_OutputDataFormat_Csv,
  GoogleCloudMlV1__PredictionInput_OutputDataFormat
  #-}

-- | Output only. The detailed state of a study.
newtype GoogleCloudMlV1__Study_State = GoogleCloudMlV1__Study_State {fromGoogleCloudMlV1__Study_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The study state is unspecified.
pattern GoogleCloudMlV1__Study_State_STATEUNSPECIFIED :: GoogleCloudMlV1__Study_State
pattern GoogleCloudMlV1__Study_State_STATEUNSPECIFIED = GoogleCloudMlV1__Study_State "STATE_UNSPECIFIED"

-- | The study is active.
pattern GoogleCloudMlV1__Study_State_Active :: GoogleCloudMlV1__Study_State
pattern GoogleCloudMlV1__Study_State_Active = GoogleCloudMlV1__Study_State "ACTIVE"

-- | The study is stopped due to an internal error.
pattern GoogleCloudMlV1__Study_State_Inactive :: GoogleCloudMlV1__Study_State
pattern GoogleCloudMlV1__Study_State_Inactive = GoogleCloudMlV1__Study_State "INACTIVE"

-- | The study is done when the service exhausts the parameter search space or max/trial/count is reached.
pattern GoogleCloudMlV1__Study_State_Completed :: GoogleCloudMlV1__Study_State
pattern GoogleCloudMlV1__Study_State_Completed = GoogleCloudMlV1__Study_State "COMPLETED"

{-# COMPLETE
  GoogleCloudMlV1__Study_State_STATEUNSPECIFIED,
  GoogleCloudMlV1__Study_State_Active,
  GoogleCloudMlV1__Study_State_Inactive,
  GoogleCloudMlV1__Study_State_Completed,
  GoogleCloudMlV1__Study_State
  #-}

-- | The search algorithm specified for the study.
newtype GoogleCloudMlV1__StudyConfig_Algorithm = GoogleCloudMlV1__StudyConfig_Algorithm {fromGoogleCloudMlV1__StudyConfig_Algorithm :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The default algorithm used by the Cloud AI Platform Vizier service.
pattern GoogleCloudMlV1__StudyConfig_Algorithm_ALGORITHMUNSPECIFIED :: GoogleCloudMlV1__StudyConfig_Algorithm
pattern GoogleCloudMlV1__StudyConfig_Algorithm_ALGORITHMUNSPECIFIED = GoogleCloudMlV1__StudyConfig_Algorithm "ALGORITHM_UNSPECIFIED"

-- | Gaussian Process Bandit.
pattern GoogleCloudMlV1__StudyConfig_Algorithm_GAUSSIANPROCESSBANDIT :: GoogleCloudMlV1__StudyConfig_Algorithm
pattern GoogleCloudMlV1__StudyConfig_Algorithm_GAUSSIANPROCESSBANDIT = GoogleCloudMlV1__StudyConfig_Algorithm "GAUSSIAN_PROCESS_BANDIT"

-- | Simple grid search within the feasible space. To use grid search, all parameters must be @INTEGER@, @CATEGORICAL@, or @DISCRETE@.
pattern GoogleCloudMlV1__StudyConfig_Algorithm_GRIDSEARCH :: GoogleCloudMlV1__StudyConfig_Algorithm
pattern GoogleCloudMlV1__StudyConfig_Algorithm_GRIDSEARCH = GoogleCloudMlV1__StudyConfig_Algorithm "GRID_SEARCH"

-- | Simple random search within the feasible space.
pattern GoogleCloudMlV1__StudyConfig_Algorithm_RANDOMSEARCH :: GoogleCloudMlV1__StudyConfig_Algorithm
pattern GoogleCloudMlV1__StudyConfig_Algorithm_RANDOMSEARCH = GoogleCloudMlV1__StudyConfig_Algorithm "RANDOM_SEARCH"

{-# COMPLETE
  GoogleCloudMlV1__StudyConfig_Algorithm_ALGORITHMUNSPECIFIED,
  GoogleCloudMlV1__StudyConfig_Algorithm_GAUSSIANPROCESSBANDIT,
  GoogleCloudMlV1__StudyConfig_Algorithm_GRIDSEARCH,
  GoogleCloudMlV1__StudyConfig_Algorithm_RANDOMSEARCH,
  GoogleCloudMlV1__StudyConfig_Algorithm
  #-}

-- | The state of the study.
newtype GoogleCloudMlV1__SuggestTrialsResponse_StudyState = GoogleCloudMlV1__SuggestTrialsResponse_StudyState {fromGoogleCloudMlV1__SuggestTrialsResponse_StudyState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The study state is unspecified.
pattern GoogleCloudMlV1__SuggestTrialsResponse_StudyState_STATEUNSPECIFIED :: GoogleCloudMlV1__SuggestTrialsResponse_StudyState
pattern GoogleCloudMlV1__SuggestTrialsResponse_StudyState_STATEUNSPECIFIED = GoogleCloudMlV1__SuggestTrialsResponse_StudyState "STATE_UNSPECIFIED"

-- | The study is active.
pattern GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Active :: GoogleCloudMlV1__SuggestTrialsResponse_StudyState
pattern GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Active = GoogleCloudMlV1__SuggestTrialsResponse_StudyState "ACTIVE"

-- | The study is stopped due to an internal error.
pattern GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Inactive :: GoogleCloudMlV1__SuggestTrialsResponse_StudyState
pattern GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Inactive = GoogleCloudMlV1__SuggestTrialsResponse_StudyState "INACTIVE"

-- | The study is done when the service exhausts the parameter search space or max/trial/count is reached.
pattern GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Completed :: GoogleCloudMlV1__SuggestTrialsResponse_StudyState
pattern GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Completed = GoogleCloudMlV1__SuggestTrialsResponse_StudyState "COMPLETED"

{-# COMPLETE
  GoogleCloudMlV1__SuggestTrialsResponse_StudyState_STATEUNSPECIFIED,
  GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Active,
  GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Inactive,
  GoogleCloudMlV1__SuggestTrialsResponse_StudyState_Completed,
  GoogleCloudMlV1__SuggestTrialsResponse_StudyState
  #-}

-- | Required. Specifies the machine types, the number of replicas for workers and parameter servers.
newtype GoogleCloudMlV1__TrainingInput_ScaleTier = GoogleCloudMlV1__TrainingInput_ScaleTier {fromGoogleCloudMlV1__TrainingInput_ScaleTier :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | A single worker instance. This tier is suitable for learning how to use Cloud ML, and for experimenting with new models using small datasets.
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_Basic :: GoogleCloudMlV1__TrainingInput_ScaleTier
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_Basic = GoogleCloudMlV1__TrainingInput_ScaleTier "BASIC"

-- | Many workers and a few parameter servers.
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_STANDARD_1 :: GoogleCloudMlV1__TrainingInput_ScaleTier
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_STANDARD_1 = GoogleCloudMlV1__TrainingInput_ScaleTier "STANDARD_1"

-- | A large number of workers with many parameter servers.
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_PREMIUM_1 :: GoogleCloudMlV1__TrainingInput_ScaleTier
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_PREMIUM_1 = GoogleCloudMlV1__TrainingInput_ScaleTier "PREMIUM_1"

-- | A single worker instance </ai-platform/training/docs/using-gpus with a GPU>.
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_BASICGPU :: GoogleCloudMlV1__TrainingInput_ScaleTier
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_BASICGPU = GoogleCloudMlV1__TrainingInput_ScaleTier "BASIC_GPU"

-- | A single worker instance with a </ml-engine/docs/tensorflow/using-tpus Cloud TPU>.
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_BASICTPU :: GoogleCloudMlV1__TrainingInput_ScaleTier
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_BASICTPU = GoogleCloudMlV1__TrainingInput_ScaleTier "BASIC_TPU"

-- | The CUSTOM tier is not a set tier, but rather enables you to use your own cluster specification. When you use this tier, set values to configure your processing cluster according to these guidelines: * You /must/ set @TrainingInput.masterType@ to specify the type of machine to use for your master node. This is the only required setting. * You /may/ set @TrainingInput.workerCount@ to specify the number of workers to use. If you specify one or more workers, you /must/ also set @TrainingInput.workerType@ to specify the type of machine to use for your worker nodes. * You /may/ set @TrainingInput.parameterServerCount@ to specify the number of parameter servers to use. If you specify one or more parameter servers, you /must/ also set @TrainingInput.parameterServerType@ to specify the type of machine to use for your parameter servers. Note that all of your workers must use the same machine type, which can be different from your parameter server type and master type. Your parameter servers must likewise use the same
-- machine type, which can be different from your worker type and master type.
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_Custom :: GoogleCloudMlV1__TrainingInput_ScaleTier
pattern GoogleCloudMlV1__TrainingInput_ScaleTier_Custom = GoogleCloudMlV1__TrainingInput_ScaleTier "CUSTOM"

{-# COMPLETE
  GoogleCloudMlV1__TrainingInput_ScaleTier_Basic,
  GoogleCloudMlV1__TrainingInput_ScaleTier_STANDARD_1,
  GoogleCloudMlV1__TrainingInput_ScaleTier_PREMIUM_1,
  GoogleCloudMlV1__TrainingInput_ScaleTier_BASICGPU,
  GoogleCloudMlV1__TrainingInput_ScaleTier_BASICTPU,
  GoogleCloudMlV1__TrainingInput_ScaleTier_Custom,
  GoogleCloudMlV1__TrainingInput_ScaleTier
  #-}

-- | The detailed state of a trial.
newtype GoogleCloudMlV1__Trial_State = GoogleCloudMlV1__Trial_State {fromGoogleCloudMlV1__Trial_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The trial state is unspecified.
pattern GoogleCloudMlV1__Trial_State_STATEUNSPECIFIED :: GoogleCloudMlV1__Trial_State
pattern GoogleCloudMlV1__Trial_State_STATEUNSPECIFIED = GoogleCloudMlV1__Trial_State "STATE_UNSPECIFIED"

-- | Indicates that a specific trial has been requested, but it has not yet been suggested by the service.
pattern GoogleCloudMlV1__Trial_State_Requested :: GoogleCloudMlV1__Trial_State
pattern GoogleCloudMlV1__Trial_State_Requested = GoogleCloudMlV1__Trial_State "REQUESTED"

-- | Indicates that the trial has been suggested.
pattern GoogleCloudMlV1__Trial_State_Active :: GoogleCloudMlV1__Trial_State
pattern GoogleCloudMlV1__Trial_State_Active = GoogleCloudMlV1__Trial_State "ACTIVE"

-- | Indicates that the trial is done, and either has a final/measurement set, or is marked as trial/infeasible.
pattern GoogleCloudMlV1__Trial_State_Completed :: GoogleCloudMlV1__Trial_State
pattern GoogleCloudMlV1__Trial_State_Completed = GoogleCloudMlV1__Trial_State "COMPLETED"

-- | Indicates that the trial should stop according to the service.
pattern GoogleCloudMlV1__Trial_State_Stopping :: GoogleCloudMlV1__Trial_State
pattern GoogleCloudMlV1__Trial_State_Stopping = GoogleCloudMlV1__Trial_State "STOPPING"

{-# COMPLETE
  GoogleCloudMlV1__Trial_State_STATEUNSPECIFIED,
  GoogleCloudMlV1__Trial_State_Requested,
  GoogleCloudMlV1__Trial_State_Active,
  GoogleCloudMlV1__Trial_State_Completed,
  GoogleCloudMlV1__Trial_State_Stopping,
  GoogleCloudMlV1__Trial_State
  #-}

-- | Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are @TENSORFLOW@, @SCIKIT_LEARN@, @XGBOOST@. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose @SCIKIT_LEARN@ or @XGBOOST@, you must also set the runtime version of the model to 1.4 or greater. Do __not__ specify a framework if you\'re deploying a </ai-platform/prediction/docs/custom-prediction-routines custom prediction routine> or if you\'re using a </ai-platform/prediction/docs/use-custom-container custom container>.
newtype GoogleCloudMlV1__Version_Framework = GoogleCloudMlV1__Version_Framework {fromGoogleCloudMlV1__Version_Framework :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified framework. Assigns a value based on the file suffix.
pattern GoogleCloudMlV1__Version_Framework_FRAMEWORKUNSPECIFIED :: GoogleCloudMlV1__Version_Framework
pattern GoogleCloudMlV1__Version_Framework_FRAMEWORKUNSPECIFIED = GoogleCloudMlV1__Version_Framework "FRAMEWORK_UNSPECIFIED"

-- | Tensorflow framework.
pattern GoogleCloudMlV1__Version_Framework_Tensorflow :: GoogleCloudMlV1__Version_Framework
pattern GoogleCloudMlV1__Version_Framework_Tensorflow = GoogleCloudMlV1__Version_Framework "TENSORFLOW"

-- | Scikit-learn framework.
pattern GoogleCloudMlV1__Version_Framework_SCIKITLEARN :: GoogleCloudMlV1__Version_Framework
pattern GoogleCloudMlV1__Version_Framework_SCIKITLEARN = GoogleCloudMlV1__Version_Framework "SCIKIT_LEARN"

-- | XGBoost framework.
pattern GoogleCloudMlV1__Version_Framework_Xgboost :: GoogleCloudMlV1__Version_Framework
pattern GoogleCloudMlV1__Version_Framework_Xgboost = GoogleCloudMlV1__Version_Framework "XGBOOST"

{-# COMPLETE
  GoogleCloudMlV1__Version_Framework_FRAMEWORKUNSPECIFIED,
  GoogleCloudMlV1__Version_Framework_Tensorflow,
  GoogleCloudMlV1__Version_Framework_SCIKITLEARN,
  GoogleCloudMlV1__Version_Framework_Xgboost,
  GoogleCloudMlV1__Version_Framework
  #-}

-- | Output only. The state of a version.
newtype GoogleCloudMlV1__Version_State = GoogleCloudMlV1__Version_State {fromGoogleCloudMlV1__Version_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The version state is unspecified.
pattern GoogleCloudMlV1__Version_State_Unknown :: GoogleCloudMlV1__Version_State
pattern GoogleCloudMlV1__Version_State_Unknown = GoogleCloudMlV1__Version_State "UNKNOWN"

-- | The version is ready for prediction.
pattern GoogleCloudMlV1__Version_State_Ready :: GoogleCloudMlV1__Version_State
pattern GoogleCloudMlV1__Version_State_Ready = GoogleCloudMlV1__Version_State "READY"

-- | The version is being created. New UpdateVersion and DeleteVersion requests will fail if a version is in the CREATING state.
pattern GoogleCloudMlV1__Version_State_Creating :: GoogleCloudMlV1__Version_State
pattern GoogleCloudMlV1__Version_State_Creating = GoogleCloudMlV1__Version_State "CREATING"

-- | The version failed to be created, possibly cancelled. @error_message@ should contain the details of the failure.
pattern GoogleCloudMlV1__Version_State_Failed :: GoogleCloudMlV1__Version_State
pattern GoogleCloudMlV1__Version_State_Failed = GoogleCloudMlV1__Version_State "FAILED"

-- | The version is being deleted. New UpdateVersion and DeleteVersion requests will fail if a version is in the DELETING state.
pattern GoogleCloudMlV1__Version_State_Deleting :: GoogleCloudMlV1__Version_State
pattern GoogleCloudMlV1__Version_State_Deleting = GoogleCloudMlV1__Version_State "DELETING"

-- | The version is being updated. New UpdateVersion and DeleteVersion requests will fail if a version is in the UPDATING state.
pattern GoogleCloudMlV1__Version_State_Updating :: GoogleCloudMlV1__Version_State
pattern GoogleCloudMlV1__Version_State_Updating = GoogleCloudMlV1__Version_State "UPDATING"

{-# COMPLETE
  GoogleCloudMlV1__Version_State_Unknown,
  GoogleCloudMlV1__Version_State_Ready,
  GoogleCloudMlV1__Version_State_Creating,
  GoogleCloudMlV1__Version_State_Failed,
  GoogleCloudMlV1__Version_State_Deleting,
  GoogleCloudMlV1__Version_State_Updating,
  GoogleCloudMlV1__Version_State
  #-}

-- | The log type that this config enables.
newtype GoogleIamV1__AuditLogConfig_LogType = GoogleIamV1__AuditLogConfig_LogType {fromGoogleIamV1__AuditLogConfig_LogType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default case. Should never be this.
pattern GoogleIamV1__AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: GoogleIamV1__AuditLogConfig_LogType
pattern GoogleIamV1__AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = GoogleIamV1__AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern GoogleIamV1__AuditLogConfig_LogType_ADMINREAD :: GoogleIamV1__AuditLogConfig_LogType
pattern GoogleIamV1__AuditLogConfig_LogType_ADMINREAD = GoogleIamV1__AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern GoogleIamV1__AuditLogConfig_LogType_DATAWRITE :: GoogleIamV1__AuditLogConfig_LogType
pattern GoogleIamV1__AuditLogConfig_LogType_DATAWRITE = GoogleIamV1__AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern GoogleIamV1__AuditLogConfig_LogType_DATAREAD :: GoogleIamV1__AuditLogConfig_LogType
pattern GoogleIamV1__AuditLogConfig_LogType_DATAREAD = GoogleIamV1__AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  GoogleIamV1__AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  GoogleIamV1__AuditLogConfig_LogType_ADMINREAD,
  GoogleIamV1__AuditLogConfig_LogType_DATAWRITE,
  GoogleIamV1__AuditLogConfig_LogType_DATAREAD,
  GoogleIamV1__AuditLogConfig_LogType
  #-}
