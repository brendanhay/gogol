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
-- Module      : Gogol.MachineLearning.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.MachineLearning.Internal.Product
  ( -- * GoogleApi__HttpBody
    GoogleApi__HttpBody (..),
    newGoogleApi__HttpBody,

    -- * GoogleApi__HttpBody_ExtensionsItem
    GoogleApi__HttpBody_ExtensionsItem (..),
    newGoogleApi__HttpBody_ExtensionsItem,

    -- * GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
    GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig (..),
    newGoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig,

    -- * GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
    GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig (..),
    newGoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig,

    -- * GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric (..),
    newGoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric,

    -- * GoogleCloudMlV1_Measurement_Metric
    GoogleCloudMlV1_Measurement_Metric (..),
    newGoogleCloudMlV1_Measurement_Metric,

    -- * GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec,

    -- * GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec,

    -- * GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec,

    -- * GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec,

    -- * GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec,

    -- * GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec,

    -- * GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec,

    -- * GoogleCloudMlV1_StudyConfig_MetricSpec
    GoogleCloudMlV1_StudyConfig_MetricSpec (..),
    newGoogleCloudMlV1_StudyConfig_MetricSpec,

    -- * GoogleCloudMlV1_StudyConfig_ParameterSpec
    GoogleCloudMlV1_StudyConfig_ParameterSpec (..),
    newGoogleCloudMlV1_StudyConfig_ParameterSpec,

    -- * GoogleCloudMlV1_Trial_Parameter
    GoogleCloudMlV1_Trial_Parameter (..),
    newGoogleCloudMlV1_Trial_Parameter,

    -- * GoogleCloudMlV1__AcceleratorConfig
    GoogleCloudMlV1__AcceleratorConfig (..),
    newGoogleCloudMlV1__AcceleratorConfig,

    -- * GoogleCloudMlV1__AddTrialMeasurementRequest
    GoogleCloudMlV1__AddTrialMeasurementRequest (..),
    newGoogleCloudMlV1__AddTrialMeasurementRequest,

    -- * GoogleCloudMlV1__AutoScaling
    GoogleCloudMlV1__AutoScaling (..),
    newGoogleCloudMlV1__AutoScaling,

    -- * GoogleCloudMlV1__AutomatedStoppingConfig
    GoogleCloudMlV1__AutomatedStoppingConfig (..),
    newGoogleCloudMlV1__AutomatedStoppingConfig,

    -- * GoogleCloudMlV1__BuiltInAlgorithmOutput
    GoogleCloudMlV1__BuiltInAlgorithmOutput (..),
    newGoogleCloudMlV1__BuiltInAlgorithmOutput,

    -- * GoogleCloudMlV1__CancelJobRequest
    GoogleCloudMlV1__CancelJobRequest (..),
    newGoogleCloudMlV1__CancelJobRequest,

    -- * GoogleCloudMlV1__Capability
    GoogleCloudMlV1__Capability (..),
    newGoogleCloudMlV1__Capability,

    -- * GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata (..),
    newGoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata,

    -- * GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest (..),
    newGoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest,

    -- * GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse (..),
    newGoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse,

    -- * GoogleCloudMlV1__CompleteTrialRequest
    GoogleCloudMlV1__CompleteTrialRequest (..),
    newGoogleCloudMlV1__CompleteTrialRequest,

    -- * GoogleCloudMlV1__Config
    GoogleCloudMlV1__Config (..),
    newGoogleCloudMlV1__Config,

    -- * GoogleCloudMlV1__ContainerPort
    GoogleCloudMlV1__ContainerPort (..),
    newGoogleCloudMlV1__ContainerPort,

    -- * GoogleCloudMlV1__ContainerSpec
    GoogleCloudMlV1__ContainerSpec (..),
    newGoogleCloudMlV1__ContainerSpec,

    -- * GoogleCloudMlV1__DiskConfig
    GoogleCloudMlV1__DiskConfig (..),
    newGoogleCloudMlV1__DiskConfig,

    -- * GoogleCloudMlV1__EncryptionConfig
    GoogleCloudMlV1__EncryptionConfig (..),
    newGoogleCloudMlV1__EncryptionConfig,

    -- * GoogleCloudMlV1__EnvVar
    GoogleCloudMlV1__EnvVar (..),
    newGoogleCloudMlV1__EnvVar,

    -- * GoogleCloudMlV1__ExplainRequest
    GoogleCloudMlV1__ExplainRequest (..),
    newGoogleCloudMlV1__ExplainRequest,

    -- * GoogleCloudMlV1__ExplanationConfig
    GoogleCloudMlV1__ExplanationConfig (..),
    newGoogleCloudMlV1__ExplanationConfig,

    -- * GoogleCloudMlV1__GetConfigResponse
    GoogleCloudMlV1__GetConfigResponse (..),
    newGoogleCloudMlV1__GetConfigResponse,

    -- * GoogleCloudMlV1__HyperparameterOutput
    GoogleCloudMlV1__HyperparameterOutput (..),
    newGoogleCloudMlV1__HyperparameterOutput,

    -- * GoogleCloudMlV1__HyperparameterOutput_Hyperparameters
    GoogleCloudMlV1__HyperparameterOutput_Hyperparameters (..),
    newGoogleCloudMlV1__HyperparameterOutput_Hyperparameters,

    -- * GoogleCloudMlV1__HyperparameterOutput_WebAccessUris
    GoogleCloudMlV1__HyperparameterOutput_WebAccessUris (..),
    newGoogleCloudMlV1__HyperparameterOutput_WebAccessUris,

    -- * GoogleCloudMlV1__HyperparameterSpec
    GoogleCloudMlV1__HyperparameterSpec (..),
    newGoogleCloudMlV1__HyperparameterSpec,

    -- * GoogleCloudMlV1__IntegratedGradientsAttribution
    GoogleCloudMlV1__IntegratedGradientsAttribution (..),
    newGoogleCloudMlV1__IntegratedGradientsAttribution,

    -- * GoogleCloudMlV1__Job
    GoogleCloudMlV1__Job (..),
    newGoogleCloudMlV1__Job,

    -- * GoogleCloudMlV1__Job_Labels
    GoogleCloudMlV1__Job_Labels (..),
    newGoogleCloudMlV1__Job_Labels,

    -- * GoogleCloudMlV1__ListJobsResponse
    GoogleCloudMlV1__ListJobsResponse (..),
    newGoogleCloudMlV1__ListJobsResponse,

    -- * GoogleCloudMlV1__ListLocationsResponse
    GoogleCloudMlV1__ListLocationsResponse (..),
    newGoogleCloudMlV1__ListLocationsResponse,

    -- * GoogleCloudMlV1__ListModelsResponse
    GoogleCloudMlV1__ListModelsResponse (..),
    newGoogleCloudMlV1__ListModelsResponse,

    -- * GoogleCloudMlV1__ListOptimalTrialsRequest
    GoogleCloudMlV1__ListOptimalTrialsRequest (..),
    newGoogleCloudMlV1__ListOptimalTrialsRequest,

    -- * GoogleCloudMlV1__ListOptimalTrialsResponse
    GoogleCloudMlV1__ListOptimalTrialsResponse (..),
    newGoogleCloudMlV1__ListOptimalTrialsResponse,

    -- * GoogleCloudMlV1__ListStudiesResponse
    GoogleCloudMlV1__ListStudiesResponse (..),
    newGoogleCloudMlV1__ListStudiesResponse,

    -- * GoogleCloudMlV1__ListTrialsResponse
    GoogleCloudMlV1__ListTrialsResponse (..),
    newGoogleCloudMlV1__ListTrialsResponse,

    -- * GoogleCloudMlV1__ListVersionsResponse
    GoogleCloudMlV1__ListVersionsResponse (..),
    newGoogleCloudMlV1__ListVersionsResponse,

    -- * GoogleCloudMlV1__Location
    GoogleCloudMlV1__Location (..),
    newGoogleCloudMlV1__Location,

    -- * GoogleCloudMlV1__ManualScaling
    GoogleCloudMlV1__ManualScaling (..),
    newGoogleCloudMlV1__ManualScaling,

    -- * GoogleCloudMlV1__Measurement
    GoogleCloudMlV1__Measurement (..),
    newGoogleCloudMlV1__Measurement,

    -- * GoogleCloudMlV1__MetricSpec
    GoogleCloudMlV1__MetricSpec (..),
    newGoogleCloudMlV1__MetricSpec,

    -- * GoogleCloudMlV1__Model
    GoogleCloudMlV1__Model (..),
    newGoogleCloudMlV1__Model,

    -- * GoogleCloudMlV1__Model_Labels
    GoogleCloudMlV1__Model_Labels (..),
    newGoogleCloudMlV1__Model_Labels,

    -- * GoogleCloudMlV1__OperationMetadata
    GoogleCloudMlV1__OperationMetadata (..),
    newGoogleCloudMlV1__OperationMetadata,

    -- * GoogleCloudMlV1__OperationMetadata_Labels
    GoogleCloudMlV1__OperationMetadata_Labels (..),
    newGoogleCloudMlV1__OperationMetadata_Labels,

    -- * GoogleCloudMlV1__ParameterSpec
    GoogleCloudMlV1__ParameterSpec (..),
    newGoogleCloudMlV1__ParameterSpec,

    -- * GoogleCloudMlV1__PredictRequest
    GoogleCloudMlV1__PredictRequest (..),
    newGoogleCloudMlV1__PredictRequest,

    -- * GoogleCloudMlV1__PredictionInput
    GoogleCloudMlV1__PredictionInput (..),
    newGoogleCloudMlV1__PredictionInput,

    -- * GoogleCloudMlV1__PredictionOutput
    GoogleCloudMlV1__PredictionOutput (..),
    newGoogleCloudMlV1__PredictionOutput,

    -- * GoogleCloudMlV1__ReplicaConfig
    GoogleCloudMlV1__ReplicaConfig (..),
    newGoogleCloudMlV1__ReplicaConfig,

    -- * GoogleCloudMlV1__RequestLoggingConfig
    GoogleCloudMlV1__RequestLoggingConfig (..),
    newGoogleCloudMlV1__RequestLoggingConfig,

    -- * GoogleCloudMlV1__RouteMap
    GoogleCloudMlV1__RouteMap (..),
    newGoogleCloudMlV1__RouteMap,

    -- * GoogleCloudMlV1__SampledShapleyAttribution
    GoogleCloudMlV1__SampledShapleyAttribution (..),
    newGoogleCloudMlV1__SampledShapleyAttribution,

    -- * GoogleCloudMlV1__Scheduling
    GoogleCloudMlV1__Scheduling (..),
    newGoogleCloudMlV1__Scheduling,

    -- * GoogleCloudMlV1__SetDefaultVersionRequest
    GoogleCloudMlV1__SetDefaultVersionRequest (..),
    newGoogleCloudMlV1__SetDefaultVersionRequest,

    -- * GoogleCloudMlV1__StopTrialRequest
    GoogleCloudMlV1__StopTrialRequest (..),
    newGoogleCloudMlV1__StopTrialRequest,

    -- * GoogleCloudMlV1__Study
    GoogleCloudMlV1__Study (..),
    newGoogleCloudMlV1__Study,

    -- * GoogleCloudMlV1__StudyConfig
    GoogleCloudMlV1__StudyConfig (..),
    newGoogleCloudMlV1__StudyConfig,

    -- * GoogleCloudMlV1__SuggestTrialsMetadata
    GoogleCloudMlV1__SuggestTrialsMetadata (..),
    newGoogleCloudMlV1__SuggestTrialsMetadata,

    -- * GoogleCloudMlV1__SuggestTrialsRequest
    GoogleCloudMlV1__SuggestTrialsRequest (..),
    newGoogleCloudMlV1__SuggestTrialsRequest,

    -- * GoogleCloudMlV1__SuggestTrialsResponse
    GoogleCloudMlV1__SuggestTrialsResponse (..),
    newGoogleCloudMlV1__SuggestTrialsResponse,

    -- * GoogleCloudMlV1__TrainingInput
    GoogleCloudMlV1__TrainingInput (..),
    newGoogleCloudMlV1__TrainingInput,

    -- * GoogleCloudMlV1__TrainingOutput
    GoogleCloudMlV1__TrainingOutput (..),
    newGoogleCloudMlV1__TrainingOutput,

    -- * GoogleCloudMlV1__TrainingOutput_WebAccessUris
    GoogleCloudMlV1__TrainingOutput_WebAccessUris (..),
    newGoogleCloudMlV1__TrainingOutput_WebAccessUris,

    -- * GoogleCloudMlV1__Trial
    GoogleCloudMlV1__Trial (..),
    newGoogleCloudMlV1__Trial,

    -- * GoogleCloudMlV1__Version
    GoogleCloudMlV1__Version (..),
    newGoogleCloudMlV1__Version,

    -- * GoogleCloudMlV1__Version_Labels
    GoogleCloudMlV1__Version_Labels (..),
    newGoogleCloudMlV1__Version_Labels,

    -- * GoogleCloudMlV1__XraiAttribution
    GoogleCloudMlV1__XraiAttribution (..),
    newGoogleCloudMlV1__XraiAttribution,

    -- * GoogleIamV1__AuditConfig
    GoogleIamV1__AuditConfig (..),
    newGoogleIamV1__AuditConfig,

    -- * GoogleIamV1__AuditLogConfig
    GoogleIamV1__AuditLogConfig (..),
    newGoogleIamV1__AuditLogConfig,

    -- * GoogleIamV1__Binding
    GoogleIamV1__Binding (..),
    newGoogleIamV1__Binding,

    -- * GoogleIamV1__Policy
    GoogleIamV1__Policy (..),
    newGoogleIamV1__Policy,

    -- * GoogleIamV1__SetIamPolicyRequest
    GoogleIamV1__SetIamPolicyRequest (..),
    newGoogleIamV1__SetIamPolicyRequest,

    -- * GoogleIamV1__TestIamPermissionsRequest
    GoogleIamV1__TestIamPermissionsRequest (..),
    newGoogleIamV1__TestIamPermissionsRequest,

    -- * GoogleIamV1__TestIamPermissionsResponse
    GoogleIamV1__TestIamPermissionsResponse (..),
    newGoogleIamV1__TestIamPermissionsResponse,

    -- * GoogleLongrunning__ListOperationsResponse
    GoogleLongrunning__ListOperationsResponse (..),
    newGoogleLongrunning__ListOperationsResponse,

    -- * GoogleLongrunning__Operation
    GoogleLongrunning__Operation (..),
    newGoogleLongrunning__Operation,

    -- * GoogleLongrunning__Operation_Metadata
    GoogleLongrunning__Operation_Metadata (..),
    newGoogleLongrunning__Operation_Metadata,

    -- * GoogleLongrunning__Operation_Response
    GoogleLongrunning__Operation_Response (..),
    newGoogleLongrunning__Operation_Response,

    -- * GoogleProtobuf__Empty
    GoogleProtobuf__Empty (..),
    newGoogleProtobuf__Empty,

    -- * GoogleRpc__Status
    GoogleRpc__Status (..),
    newGoogleRpc__Status,

    -- * GoogleRpc__Status_DetailsItem
    GoogleRpc__Status_DetailsItem (..),
    newGoogleRpc__Status_DetailsItem,

    -- * GoogleType__Expr
    GoogleType__Expr (..),
    newGoogleType__Expr,
  )
where

import Gogol.MachineLearning.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Message that represents an arbitrary HTTP body. It should only be used for payload formats that can\'t be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { \/\/ A unique request id. string request/id = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody http/body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.
--
-- /See:/ 'newGoogleApi__HttpBody' smart constructor.
data GoogleApi__HttpBody = GoogleApi__HttpBody
  { -- | The HTTP Content-Type header value specifying the content type of the body.
    contentType :: (Core.Maybe Core.Text),
    -- | The HTTP request\/response body as raw binary.
    data' :: (Core.Maybe Core.Base64),
    -- | Application specific response metadata. Must be set in the first response for streaming APIs.
    extensions :: (Core.Maybe [GoogleApi__HttpBody_ExtensionsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleApi__HttpBody' with the minimum fields required to make a request.
newGoogleApi__HttpBody ::
  GoogleApi__HttpBody
newGoogleApi__HttpBody =
  GoogleApi__HttpBody
    { contentType = Core.Nothing,
      data' = Core.Nothing,
      extensions = Core.Nothing
    }

instance Core.FromJSON GoogleApi__HttpBody where
  parseJSON =
    Core.withObject
      "GoogleApi__HttpBody"
      ( \o ->
          GoogleApi__HttpBody
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "extensions")
      )

instance Core.ToJSON GoogleApi__HttpBody where
  toJSON GoogleApi__HttpBody {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("data" Core..=) Core.<$> data',
            ("extensions" Core..=) Core.<$> extensions
          ]
      )

--
-- /See:/ 'newGoogleApi__HttpBody_ExtensionsItem' smart constructor.
newtype GoogleApi__HttpBody_ExtensionsItem = GoogleApi__HttpBody_ExtensionsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleApi__HttpBody_ExtensionsItem' with the minimum fields required to make a request.
newGoogleApi__HttpBody_ExtensionsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleApi__HttpBody_ExtensionsItem
newGoogleApi__HttpBody_ExtensionsItem additional =
  GoogleApi__HttpBody_ExtensionsItem {additional = additional}

instance
  Core.FromJSON
    GoogleApi__HttpBody_ExtensionsItem
  where
  parseJSON =
    Core.withObject
      "GoogleApi__HttpBody_ExtensionsItem"
      ( \o ->
          GoogleApi__HttpBody_ExtensionsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleApi__HttpBody_ExtensionsItem
  where
  toJSON GoogleApi__HttpBody_ExtensionsItem {..} =
    Core.toJSON additional

--
-- /See:/ 'newGoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig' smart constructor.
newtype GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig = GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
  { -- | If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.
    useElapsedTime :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig ::
  GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
newGoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig =
  GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
    { useElapsedTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig"
      ( \o ->
          GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
            Core.<$> (o Core..:? "useElapsedTime")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
  where
  toJSON
    GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig {..} =
      Core.object
        ( Core.catMaybes
            [("useElapsedTime" Core..=) Core.<$> useElapsedTime]
        )

-- | The median automated stopping rule stops a pending trial if the trial\'s best objective_value is strictly below the median \'performance\' of all completed trials reported up to the trial\'s last measurement. Currently, \'performance\' refers to the running average of the objective values reported by the trial in each measurement.
--
-- /See:/ 'newGoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig' smart constructor.
newtype GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig = GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
  { -- | If true, the median automated stopping rule applies to measurement.use/elapsed/time, which means the elapsed_time field of the current trial\'s latest measurement is used to compute the median objective value for each completed trial.
    useElapsedTime :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig ::
  GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
newGoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig =
  GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
    { useElapsedTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig"
      ( \o ->
          GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
            Core.<$> (o Core..:? "useElapsedTime")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
  where
  toJSON
    GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig {..} =
      Core.object
        ( Core.catMaybes
            [("useElapsedTime" Core..=) Core.<$> useElapsedTime]
        )

-- | An observed value of a metric.
--
-- /See:/ 'newGoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric' smart constructor.
data GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric = GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
  { -- | The objective value at this training step.
    objectiveValue :: (Core.Maybe Core.Double),
    -- | The global training step for this metric.
    trainingStep :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric' with the minimum fields required to make a request.
newGoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric ::
  GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
newGoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric =
  GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    { objectiveValue = Core.Nothing,
      trainingStep = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric"
      ( \o ->
          GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
            Core.<$> (o Core..:? "objectiveValue")
              Core.<*> ( o Core..:? "trainingStep"
                           Core.<&> Core.fmap Core.fromAsText
                       )
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
  where
  toJSON
    GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric {..} =
      Core.object
        ( Core.catMaybes
            [ ("objectiveValue" Core..=) Core.<$> objectiveValue,
              ("trainingStep" Core..=) Core.. Core.AsText
                Core.<$> trainingStep
            ]
        )

-- | A message representing a metric in the measurement.
--
-- /See:/ 'newGoogleCloudMlV1_Measurement_Metric' smart constructor.
data GoogleCloudMlV1_Measurement_Metric = GoogleCloudMlV1_Measurement_Metric
  { -- | Required. Metric name.
    metric :: (Core.Maybe Core.Text),
    -- | Required. The value for this metric.
    value :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_Measurement_Metric' with the minimum fields required to make a request.
newGoogleCloudMlV1_Measurement_Metric ::
  GoogleCloudMlV1_Measurement_Metric
newGoogleCloudMlV1_Measurement_Metric =
  GoogleCloudMlV1_Measurement_Metric
    { metric = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_Measurement_Metric
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_Measurement_Metric"
      ( \o ->
          GoogleCloudMlV1_Measurement_Metric
            Core.<$> (o Core..:? "metric") Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_Measurement_Metric
  where
  toJSON GoogleCloudMlV1_Measurement_Metric {..} =
    Core.object
      ( Core.catMaybes
          [ ("metric" Core..=) Core.<$> metric,
            ("value" Core..=) Core.<$> value
          ]
      )

--
-- /See:/ 'newGoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec = GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
  { -- | Must be specified if type is @CATEGORICAL@. The list of possible categories.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec ::
  GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
newGoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
    { values = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
            Core.<$> (o Core..:? "values")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
  where
  toJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec {..} =
      Core.object
        (Core.catMaybes [("values" Core..=) Core.<$> values])

--
-- /See:/ 'newGoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec = GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
  { -- | Must be specified if type is @DISCRETE@. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
    values :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec ::
  GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
newGoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
    { values = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
            Core.<$> (o Core..:? "values")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
  where
  toJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec {..} =
      Core.object
        (Core.catMaybes [("values" Core..=) Core.<$> values])

--
-- /See:/ 'newGoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec' smart constructor.
data GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec = GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
  { -- | Must be specified if type is @DOUBLE@. Maximum value of the parameter.
    maxValue :: (Core.Maybe Core.Double),
    -- | Must be specified if type is @DOUBLE@. Minimum value of the parameter.
    minValue :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec ::
  GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
newGoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
    { maxValue = Core.Nothing,
      minValue = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
            Core.<$> (o Core..:? "maxValue")
              Core.<*> (o Core..:? "minValue")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
  where
  toJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec {..} =
      Core.object
        ( Core.catMaybes
            [ ("maxValue" Core..=) Core.<$> maxValue,
              ("minValue" Core..=) Core.<$> minValue
            ]
        )

--
-- /See:/ 'newGoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec' smart constructor.
data GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec = GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
  { -- | Must be specified if type is @INTEGER@. Maximum value of the parameter.
    maxValue :: (Core.Maybe Core.Int64),
    -- | Must be specified if type is @INTEGER@. Minimum value of the parameter.
    minValue :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec ::
  GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
newGoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
    { maxValue = Core.Nothing,
      minValue = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
            Core.<$> ( o Core..:? "maxValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
              Core.<*> ( o Core..:? "minValue"
                           Core.<&> Core.fmap Core.fromAsText
                       )
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
  where
  toJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec {..} =
      Core.object
        ( Core.catMaybes
            [ ("maxValue" Core..=) Core.. Core.AsText
                Core.<$> maxValue,
              ("minValue" Core..=) Core.. Core.AsText
                Core.<$> minValue
            ]
        )

-- | Represents the spec to match categorical values from parent parameter.
--
-- /See:/ 'newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec = GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
  { -- | Matches values of the parent parameter with type \'CATEGORICAL\'. All values must exist in @categorical_value_spec@ of parent parameter.
    values :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec ::
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
    { values = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
            Core.<$> (o Core..:? "values")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
  where
  toJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec {..} =
      Core.object
        (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Represents the spec to match discrete values from parent parameter.
--
-- /See:/ 'newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec = GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
  { -- | Matches values of the parent parameter with type \'DISCRETE\'. All values must exist in @discrete_value_spec@ of parent parameter.
    values :: (Core.Maybe [Core.Double])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec ::
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
    { values = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
            Core.<$> (o Core..:? "values")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
  where
  toJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec {..} =
      Core.object
        (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Represents the spec to match integer values from parent parameter.
--
-- /See:/ 'newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec' smart constructor.
newtype GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec = GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
  { -- | Matches values of the parent parameter with type \'INTEGER\'. All values must lie in @integer_value_spec@ of parent parameter.
    values :: (Core.Maybe [Core.Int64])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec ::
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec =
  GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
    { values = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
            Core.<$> (o Core..:? "values")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
  where
  toJSON
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec {..} =
      Core.object
        (Core.catMaybes [("values" Core..=) Core.<$> values])

-- | Represents a metric to optimize.
--
-- /See:/ 'newGoogleCloudMlV1_StudyConfig_MetricSpec' smart constructor.
data GoogleCloudMlV1_StudyConfig_MetricSpec = GoogleCloudMlV1_StudyConfig_MetricSpec
  { -- | Required. The optimization goal of the metric.
    goal :: (Core.Maybe GoogleCloudMlV1_StudyConfig_MetricSpec_Goal),
    -- | Required. The name of the metric.
    metric :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfig_MetricSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfig_MetricSpec ::
  GoogleCloudMlV1_StudyConfig_MetricSpec
newGoogleCloudMlV1_StudyConfig_MetricSpec =
  GoogleCloudMlV1_StudyConfig_MetricSpec
    { goal = Core.Nothing,
      metric = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfig_MetricSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfig_MetricSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfig_MetricSpec
            Core.<$> (o Core..:? "goal") Core.<*> (o Core..:? "metric")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfig_MetricSpec
  where
  toJSON GoogleCloudMlV1_StudyConfig_MetricSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("goal" Core..=) Core.<$> goal,
            ("metric" Core..=) Core.<$> metric
          ]
      )

-- | Represents a single parameter to optimize.
--
-- /See:/ 'newGoogleCloudMlV1_StudyConfig_ParameterSpec' smart constructor.
data GoogleCloudMlV1_StudyConfig_ParameterSpec = GoogleCloudMlV1_StudyConfig_ParameterSpec
  { -- | The value spec for a \'CATEGORICAL\' parameter.
    categoricalValueSpec ::
      ( Core.Maybe
          GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
      ),
    -- | A child node is active if the parameter\'s value matches the child node\'s matching/parent/values. If two items in child/parameter/specs have the same name, they must have disjoint matching/parent/values.
    childParameterSpecs :: (Core.Maybe [GoogleCloudMlV1_StudyConfig_ParameterSpec]),
    -- | The value spec for a \'DISCRETE\' parameter.
    discreteValueSpec ::
      ( Core.Maybe
          GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
      ),
    -- | The value spec for a \'DOUBLE\' parameter.
    doubleValueSpec ::
      ( Core.Maybe
          GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
      ),
    -- | The value spec for an \'INTEGER\' parameter.
    integerValueSpec ::
      ( Core.Maybe
          GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
      ),
    -- | Required. The parameter name must be unique amongst all ParameterSpecs.
    parameter :: (Core.Maybe Core.Text),
    -- |
    parentCategoricalValues ::
      ( Core.Maybe
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
      ),
    -- |
    parentDiscreteValues ::
      ( Core.Maybe
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
      ),
    -- |
    parentIntValues ::
      ( Core.Maybe
          GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
      ),
    -- | How the parameter should be scaled. Leave unset for categorical parameters.
    scaleType :: (Core.Maybe GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType),
    -- | Required. The type of the parameter.
    type' :: (Core.Maybe GoogleCloudMlV1_StudyConfig_ParameterSpec_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_StudyConfig_ParameterSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1_StudyConfig_ParameterSpec ::
  GoogleCloudMlV1_StudyConfig_ParameterSpec
newGoogleCloudMlV1_StudyConfig_ParameterSpec =
  GoogleCloudMlV1_StudyConfig_ParameterSpec
    { categoricalValueSpec = Core.Nothing,
      childParameterSpecs = Core.Nothing,
      discreteValueSpec = Core.Nothing,
      doubleValueSpec = Core.Nothing,
      integerValueSpec = Core.Nothing,
      parameter = Core.Nothing,
      parentCategoricalValues = Core.Nothing,
      parentDiscreteValues = Core.Nothing,
      parentIntValues = Core.Nothing,
      scaleType = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_StudyConfig_ParameterSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_StudyConfig_ParameterSpec"
      ( \o ->
          GoogleCloudMlV1_StudyConfig_ParameterSpec
            Core.<$> (o Core..:? "categoricalValueSpec")
            Core.<*> (o Core..:? "childParameterSpecs")
            Core.<*> (o Core..:? "discreteValueSpec")
            Core.<*> (o Core..:? "doubleValueSpec")
            Core.<*> (o Core..:? "integerValueSpec")
            Core.<*> (o Core..:? "parameter")
            Core.<*> (o Core..:? "parentCategoricalValues")
            Core.<*> (o Core..:? "parentDiscreteValues")
            Core.<*> (o Core..:? "parentIntValues")
            Core.<*> (o Core..:? "scaleType")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1_StudyConfig_ParameterSpec
  where
  toJSON GoogleCloudMlV1_StudyConfig_ParameterSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("categoricalValueSpec" Core..=)
              Core.<$> categoricalValueSpec,
            ("childParameterSpecs" Core..=)
              Core.<$> childParameterSpecs,
            ("discreteValueSpec" Core..=)
              Core.<$> discreteValueSpec,
            ("doubleValueSpec" Core..=) Core.<$> doubleValueSpec,
            ("integerValueSpec" Core..=)
              Core.<$> integerValueSpec,
            ("parameter" Core..=) Core.<$> parameter,
            ("parentCategoricalValues" Core..=)
              Core.<$> parentCategoricalValues,
            ("parentDiscreteValues" Core..=)
              Core.<$> parentDiscreteValues,
            ("parentIntValues" Core..=) Core.<$> parentIntValues,
            ("scaleType" Core..=) Core.<$> scaleType,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | A message representing a parameter to be tuned. Contains the name of the parameter and the suggested value to use for this trial.
--
-- /See:/ 'newGoogleCloudMlV1_Trial_Parameter' smart constructor.
data GoogleCloudMlV1_Trial_Parameter = GoogleCloudMlV1_Trial_Parameter
  { -- | Must be set if ParameterType is DOUBLE or DISCRETE.
    floatValue :: (Core.Maybe Core.Double),
    -- | Must be set if ParameterType is INTEGER
    intValue :: (Core.Maybe Core.Int64),
    -- | The name of the parameter.
    parameter :: (Core.Maybe Core.Text),
    -- | Must be set if ParameterTypeis CATEGORICAL
    stringValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1_Trial_Parameter' with the minimum fields required to make a request.
newGoogleCloudMlV1_Trial_Parameter ::
  GoogleCloudMlV1_Trial_Parameter
newGoogleCloudMlV1_Trial_Parameter =
  GoogleCloudMlV1_Trial_Parameter
    { floatValue = Core.Nothing,
      intValue = Core.Nothing,
      parameter = Core.Nothing,
      stringValue = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1_Trial_Parameter
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1_Trial_Parameter"
      ( \o ->
          GoogleCloudMlV1_Trial_Parameter
            Core.<$> (o Core..:? "floatValue")
            Core.<*> ( o Core..:? "intValue"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "parameter")
            Core.<*> (o Core..:? "stringValue")
      )

instance Core.ToJSON GoogleCloudMlV1_Trial_Parameter where
  toJSON GoogleCloudMlV1_Trial_Parameter {..} =
    Core.object
      ( Core.catMaybes
          [ ("floatValue" Core..=) Core.<$> floatValue,
            ("intValue" Core..=) Core.. Core.AsText
              Core.<$> intValue,
            ("parameter" Core..=) Core.<$> parameter,
            ("stringValue" Core..=) Core.<$> stringValue
          ]
      )

-- | Represents a hardware accelerator request config. Note that the AcceleratorConfig can be used in both Jobs and Versions. Learn more about </ml-engine/docs/using-gpus accelerators for training> and </ml-engine/docs/machine-types-online-prediction#gpus accelerators for online prediction>.
--
-- /See:/ 'newGoogleCloudMlV1__AcceleratorConfig' smart constructor.
data GoogleCloudMlV1__AcceleratorConfig = GoogleCloudMlV1__AcceleratorConfig
  { -- | The number of accelerators to attach to each machine running the job.
    count :: (Core.Maybe Core.Int64),
    -- | The type of accelerator to use.
    type' :: (Core.Maybe GoogleCloudMlV1__AcceleratorConfig_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__AcceleratorConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1__AcceleratorConfig ::
  GoogleCloudMlV1__AcceleratorConfig
newGoogleCloudMlV1__AcceleratorConfig =
  GoogleCloudMlV1__AcceleratorConfig
    { count = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__AcceleratorConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__AcceleratorConfig"
      ( \o ->
          GoogleCloudMlV1__AcceleratorConfig
            Core.<$> ( o Core..:? "count"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__AcceleratorConfig
  where
  toJSON GoogleCloudMlV1__AcceleratorConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.. Core.AsText Core.<$> count,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The request message for the AddTrialMeasurement service method.
--
-- /See:/ 'newGoogleCloudMlV1__AddTrialMeasurementRequest' smart constructor.
newtype GoogleCloudMlV1__AddTrialMeasurementRequest = GoogleCloudMlV1__AddTrialMeasurementRequest
  { -- | Required. The measurement to be added to a trial.
    measurement :: (Core.Maybe GoogleCloudMlV1__Measurement)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__AddTrialMeasurementRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__AddTrialMeasurementRequest ::
  GoogleCloudMlV1__AddTrialMeasurementRequest
newGoogleCloudMlV1__AddTrialMeasurementRequest =
  GoogleCloudMlV1__AddTrialMeasurementRequest {measurement = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__AddTrialMeasurementRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__AddTrialMeasurementRequest"
      ( \o ->
          GoogleCloudMlV1__AddTrialMeasurementRequest
            Core.<$> (o Core..:? "measurement")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__AddTrialMeasurementRequest
  where
  toJSON
    GoogleCloudMlV1__AddTrialMeasurementRequest {..} =
      Core.object
        ( Core.catMaybes
            [("measurement" Core..=) Core.<$> measurement]
        )

-- | Options for automatically scaling a model.
--
-- /See:/ 'newGoogleCloudMlV1__AutoScaling' smart constructor.
data GoogleCloudMlV1__AutoScaling = GoogleCloudMlV1__AutoScaling
  { -- | The maximum number of nodes to scale this model under load. The actual value will depend on resource quota and availability.
    maxNodes :: (Core.Maybe Core.Int32),
    -- | MetricSpec contains the specifications to use to calculate the desired nodes count.
    metrics :: (Core.Maybe [GoogleCloudMlV1__MetricSpec]),
    -- | Optional. The minimum number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed. Therefore, the cost of operating this model will be at least @rate@ * @min_nodes@ * number of hours since last billing cycle, where @rate@ is the cost per node-hour as documented in the </ml-engine/docs/pricing pricing guide>, even if no predictions are performed. There is additional cost for each prediction performed. Unlike manual scaling, if the load gets too heavy for the nodes that are up, the service will automatically add nodes to handle the increased load as well as scale back as traffic drops, always maintaining at least @min_nodes@. You will be charged for the time in which additional nodes are used. If @min_nodes@ is not specified and AutoScaling is used with a </ml-engine/docs/machine-types-online-prediction legacy (MLS1) machine type>, @min_nodes@ defaults to 0, in which case, when traffic to a model stops (and after a cool-down period), nodes will be shut
    -- down and no charges will be incurred until traffic to the model resumes. If @min_nodes@ is not specified and AutoScaling is used with a </ml-engine/docs/machine-types-online-prediction Compute Engine (N1) machine type>, @min_nodes@ defaults to 1. @min_nodes@ must be at least 1 for use with a Compute Engine machine type. You can set @min_nodes@ when creating the model version, and you can also update @min_nodes@ for an existing version: update_body.json: { \'autoScaling\': { \'minNodes\': 5 } } HTTP request: PATCH https:\/\/ml.googleapis.com\/v1\/{name=projects\//\/models\//\/versions\/*}?update/mask=autoScaling.minNodes -d \@.\/update/body.json
    minNodes :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__AutoScaling' with the minimum fields required to make a request.
newGoogleCloudMlV1__AutoScaling ::
  GoogleCloudMlV1__AutoScaling
newGoogleCloudMlV1__AutoScaling =
  GoogleCloudMlV1__AutoScaling
    { maxNodes = Core.Nothing,
      metrics = Core.Nothing,
      minNodes = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__AutoScaling where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__AutoScaling"
      ( \o ->
          GoogleCloudMlV1__AutoScaling
            Core.<$> (o Core..:? "maxNodes")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "minNodes")
      )

instance Core.ToJSON GoogleCloudMlV1__AutoScaling where
  toJSON GoogleCloudMlV1__AutoScaling {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxNodes" Core..=) Core.<$> maxNodes,
            ("metrics" Core..=) Core.<$> metrics,
            ("minNodes" Core..=) Core.<$> minNodes
          ]
      )

-- | Configuration for Automated Early Stopping of Trials. If no implementation_config is set, automated early stopping will not be run.
--
-- /See:/ 'newGoogleCloudMlV1__AutomatedStoppingConfig' smart constructor.
data GoogleCloudMlV1__AutomatedStoppingConfig = GoogleCloudMlV1__AutomatedStoppingConfig
  { -- |
    decayCurveStoppingConfig ::
      ( Core.Maybe
          GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
      ),
    -- |
    medianAutomatedStoppingConfig ::
      ( Core.Maybe
          GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__AutomatedStoppingConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1__AutomatedStoppingConfig ::
  GoogleCloudMlV1__AutomatedStoppingConfig
newGoogleCloudMlV1__AutomatedStoppingConfig =
  GoogleCloudMlV1__AutomatedStoppingConfig
    { decayCurveStoppingConfig = Core.Nothing,
      medianAutomatedStoppingConfig = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__AutomatedStoppingConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__AutomatedStoppingConfig"
      ( \o ->
          GoogleCloudMlV1__AutomatedStoppingConfig
            Core.<$> (o Core..:? "decayCurveStoppingConfig")
            Core.<*> (o Core..:? "medianAutomatedStoppingConfig")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__AutomatedStoppingConfig
  where
  toJSON GoogleCloudMlV1__AutomatedStoppingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("decayCurveStoppingConfig" Core..=)
              Core.<$> decayCurveStoppingConfig,
            ("medianAutomatedStoppingConfig" Core..=)
              Core.<$> medianAutomatedStoppingConfig
          ]
      )

-- | Represents output related to a built-in algorithm Job.
--
-- /See:/ 'newGoogleCloudMlV1__BuiltInAlgorithmOutput' smart constructor.
data GoogleCloudMlV1__BuiltInAlgorithmOutput = GoogleCloudMlV1__BuiltInAlgorithmOutput
  { -- | Framework on which the built-in algorithm was trained.
    framework :: (Core.Maybe Core.Text),
    -- | The Cloud Storage path to the @model\/@ directory where the training job saves the trained model. Only set for successful jobs that don\'t use hyperparameter tuning.
    modelPath :: (Core.Maybe Core.Text),
    -- | Python version on which the built-in algorithm was trained.
    pythonVersion :: (Core.Maybe Core.Text),
    -- | AI Platform runtime version on which the built-in algorithm was trained.
    runtimeVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__BuiltInAlgorithmOutput' with the minimum fields required to make a request.
newGoogleCloudMlV1__BuiltInAlgorithmOutput ::
  GoogleCloudMlV1__BuiltInAlgorithmOutput
newGoogleCloudMlV1__BuiltInAlgorithmOutput =
  GoogleCloudMlV1__BuiltInAlgorithmOutput
    { framework = Core.Nothing,
      modelPath = Core.Nothing,
      pythonVersion = Core.Nothing,
      runtimeVersion = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__BuiltInAlgorithmOutput
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__BuiltInAlgorithmOutput"
      ( \o ->
          GoogleCloudMlV1__BuiltInAlgorithmOutput
            Core.<$> (o Core..:? "framework")
            Core.<*> (o Core..:? "modelPath")
            Core.<*> (o Core..:? "pythonVersion")
            Core.<*> (o Core..:? "runtimeVersion")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__BuiltInAlgorithmOutput
  where
  toJSON GoogleCloudMlV1__BuiltInAlgorithmOutput {..} =
    Core.object
      ( Core.catMaybes
          [ ("framework" Core..=) Core.<$> framework,
            ("modelPath" Core..=) Core.<$> modelPath,
            ("pythonVersion" Core..=) Core.<$> pythonVersion,
            ("runtimeVersion" Core..=) Core.<$> runtimeVersion
          ]
      )

-- | Request message for the CancelJob method.
--
-- /See:/ 'newGoogleCloudMlV1__CancelJobRequest' smart constructor.
data GoogleCloudMlV1__CancelJobRequest = GoogleCloudMlV1__CancelJobRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__CancelJobRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__CancelJobRequest ::
  GoogleCloudMlV1__CancelJobRequest
newGoogleCloudMlV1__CancelJobRequest = GoogleCloudMlV1__CancelJobRequest

instance
  Core.FromJSON
    GoogleCloudMlV1__CancelJobRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__CancelJobRequest"
      (\o -> Core.pure GoogleCloudMlV1__CancelJobRequest)

instance
  Core.ToJSON
    GoogleCloudMlV1__CancelJobRequest
  where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newGoogleCloudMlV1__Capability' smart constructor.
data GoogleCloudMlV1__Capability = GoogleCloudMlV1__Capability
  { -- | Available accelerators for the capability.
    availableAccelerators ::
      ( Core.Maybe
          [GoogleCloudMlV1__Capability_AvailableAcceleratorsItem]
      ),
    -- |
    type' :: (Core.Maybe GoogleCloudMlV1__Capability_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Capability' with the minimum fields required to make a request.
newGoogleCloudMlV1__Capability ::
  GoogleCloudMlV1__Capability
newGoogleCloudMlV1__Capability =
  GoogleCloudMlV1__Capability
    { availableAccelerators = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__Capability where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Capability"
      ( \o ->
          GoogleCloudMlV1__Capability
            Core.<$> (o Core..:? "availableAccelerators")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GoogleCloudMlV1__Capability where
  toJSON GoogleCloudMlV1__Capability {..} =
    Core.object
      ( Core.catMaybes
          [ ("availableAccelerators" Core..=)
              Core.<$> availableAccelerators,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | This message will be placed in the metadata field of a google.longrunning.Operation associated with a CheckTrialEarlyStoppingState request.
--
-- /See:/ 'newGoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata' smart constructor.
data GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata = GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata
  { -- | The time at which the operation was submitted.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The name of the study that the trial belongs to.
    study :: (Core.Maybe Core.Text),
    -- | The trial name.
    trial :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata' with the minimum fields required to make a request.
newGoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata ::
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata
newGoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata
    { createTime = Core.Nothing,
      study = Core.Nothing,
      trial = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata"
      ( \o ->
          GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata
            Core.<$> (o Core..:? "createTime")
              Core.<*> (o Core..:? "study")
              Core.<*> (o Core..:? "trial")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata
  where
  toJSON
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata {..} =
      Core.object
        ( Core.catMaybes
            [ ("createTime" Core..=) Core.<$> createTime,
              ("study" Core..=) Core.<$> study,
              ("trial" Core..=) Core.<$> trial
            ]
        )

-- | The request message for the CheckTrialEarlyStoppingState service method.
--
-- /See:/ 'newGoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest' smart constructor.
data GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest = GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest ::
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
newGoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest

instance
  Core.FromJSON
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest"
      ( \o ->
          Core.pure
            GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
  where
  toJSON = Core.const Core.emptyObject

-- | The message will be placed in the response field of a completed google.longrunning.Operation associated with a CheckTrialEarlyStoppingState request.
--
-- /See:/ 'newGoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse' smart constructor.
data GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse = GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
  { -- | The time at which operation processing completed.
    endTime :: (Core.Maybe Core.DateTime),
    -- | True if the Trial should stop.
    shouldStop :: (Core.Maybe Core.Bool),
    -- | The time at which the operation was started.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse ::
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
newGoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse =
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
    { endTime = Core.Nothing,
      shouldStop = Core.Nothing,
      startTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse"
      ( \o ->
          GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
            Core.<$> (o Core..:? "endTime")
              Core.<*> (o Core..:? "shouldStop")
              Core.<*> (o Core..:? "startTime")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
  where
  toJSON
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("endTime" Core..=) Core.<$> endTime,
              ("shouldStop" Core..=) Core.<$> shouldStop,
              ("startTime" Core..=) Core.<$> startTime
            ]
        )

-- | The request message for the CompleteTrial service method.
--
-- /See:/ 'newGoogleCloudMlV1__CompleteTrialRequest' smart constructor.
data GoogleCloudMlV1__CompleteTrialRequest = GoogleCloudMlV1__CompleteTrialRequest
  { -- | Optional. If provided, it will be used as the completed trial\'s final_measurement; Otherwise, the service will auto-select a previously reported measurement as the final-measurement
    finalMeasurement :: (Core.Maybe GoogleCloudMlV1__Measurement),
    -- | Optional. A human readable reason why the trial was infeasible. This should only be provided if @trial_infeasible@ is true.
    infeasibleReason :: (Core.Maybe Core.Text),
    -- | Optional. True if the trial cannot be run with the given Parameter, and final_measurement will be ignored.
    trialInfeasible :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__CompleteTrialRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__CompleteTrialRequest ::
  GoogleCloudMlV1__CompleteTrialRequest
newGoogleCloudMlV1__CompleteTrialRequest =
  GoogleCloudMlV1__CompleteTrialRequest
    { finalMeasurement = Core.Nothing,
      infeasibleReason = Core.Nothing,
      trialInfeasible = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__CompleteTrialRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__CompleteTrialRequest"
      ( \o ->
          GoogleCloudMlV1__CompleteTrialRequest
            Core.<$> (o Core..:? "finalMeasurement")
            Core.<*> (o Core..:? "infeasibleReason")
            Core.<*> (o Core..:? "trialInfeasible")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__CompleteTrialRequest
  where
  toJSON GoogleCloudMlV1__CompleteTrialRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("finalMeasurement" Core..=)
              Core.<$> finalMeasurement,
            ("infeasibleReason" Core..=)
              Core.<$> infeasibleReason,
            ("trialInfeasible" Core..=)
              Core.<$> trialInfeasible
          ]
      )

--
-- /See:/ 'newGoogleCloudMlV1__Config' smart constructor.
newtype GoogleCloudMlV1__Config = GoogleCloudMlV1__Config
  { -- | The service account Cloud ML uses to run on TPU node.
    tpuServiceAccount :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Config' with the minimum fields required to make a request.
newGoogleCloudMlV1__Config ::
  GoogleCloudMlV1__Config
newGoogleCloudMlV1__Config =
  GoogleCloudMlV1__Config {tpuServiceAccount = Core.Nothing}

instance Core.FromJSON GoogleCloudMlV1__Config where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Config"
      ( \o ->
          GoogleCloudMlV1__Config
            Core.<$> (o Core..:? "tpuServiceAccount")
      )

instance Core.ToJSON GoogleCloudMlV1__Config where
  toJSON GoogleCloudMlV1__Config {..} =
    Core.object
      ( Core.catMaybes
          [ ("tpuServiceAccount" Core..=)
              Core.<$> tpuServiceAccount
          ]
      )

-- | Represents a network port in a single container. This message is a subset of the <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#containerport-v1-core Kubernetes ContainerPort v1 core specification>.
--
-- /See:/ 'newGoogleCloudMlV1__ContainerPort' smart constructor.
newtype GoogleCloudMlV1__ContainerPort = GoogleCloudMlV1__ContainerPort
  { -- | Number of the port to expose on the container. This must be a valid port number: 0 \< PORT_NUMBER \< 65536.
    containerPort :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ContainerPort' with the minimum fields required to make a request.
newGoogleCloudMlV1__ContainerPort ::
  GoogleCloudMlV1__ContainerPort
newGoogleCloudMlV1__ContainerPort =
  GoogleCloudMlV1__ContainerPort {containerPort = Core.Nothing}

instance Core.FromJSON GoogleCloudMlV1__ContainerPort where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ContainerPort"
      ( \o ->
          GoogleCloudMlV1__ContainerPort
            Core.<$> (o Core..:? "containerPort")
      )

instance Core.ToJSON GoogleCloudMlV1__ContainerPort where
  toJSON GoogleCloudMlV1__ContainerPort {..} =
    Core.object
      ( Core.catMaybes
          [("containerPort" Core..=) Core.<$> containerPort]
      )

-- | Specification of a custom container for serving predictions. This message is a subset of the <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core Kubernetes Container v1 core specification>.
--
-- /See:/ 'newGoogleCloudMlV1__ContainerSpec' smart constructor.
data GoogleCloudMlV1__ContainerSpec = GoogleCloudMlV1__ContainerSpec
  { -- | Immutable. Specifies arguments for the command that runs when the container starts. This overrides the container\'s <https://docs.docker.com/engine/reference/builder/#cmd CMD>. Specify this field as an array of executable and arguments, similar to a Docker @CMD@\'s \"default parameters\" form. If you don\'t specify this field but do specify the command field, then the command from the @command@ field runs without any additional arguments. See the <https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes Kubernetes documentation about how the command and args fields interact with a container\'s ENTRYPOINT and CMD>. If you don\'t specify this field and don\'t specify the @commmand@ field, then the container\'s <https://docs.docker.com/engine/reference/builder/#cmd ENTRYPOINT> and @CMD@ determine what runs based on their default behavior. See the
    -- <https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact Docker documentation about how CMD and ENTRYPOINT interact>. In this field, you can reference </ai-platform/prediction/docs/custom-container-requirements#aip-variables environment variables set by AI Platform Prediction> and environment variables set in the env field. You cannot reference environment variables set in the Docker image. In order for environment variables to be expanded, reference them by using the following syntax: $( VARIABLE/NAME) Note that this differs from Bash variable expansion, which does not use parentheses. If a variable cannot be resolved, the reference in the input string is used unchanged. To avoid variable expansion, you can escape this syntax with @$$@; for example: $$(VARIABLE/NAME) This field corresponds to the @args@ field of the <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core Kubernetes Containers v1 core API>.
    args :: (Core.Maybe [Core.Text]),
    -- | Immutable. Specifies the command that runs when the container starts. This overrides the container\'s <https://docs.docker.com/engine/reference/builder/#entrypoint ENTRYPOINT>. Specify this field as an array of executable and arguments, similar to a Docker @ENTRYPOINT@\'s \"exec\" form, not its \"shell\" form. If you do not specify this field, then the container\'s @ENTRYPOINT@ runs, in conjunction with the args field or the container\'s <https://docs.docker.com/engine/reference/builder/#cmd CMD>, if either exists. If this field is not specified and the container does not have an @ENTRYPOINT@, then refer to the <https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact Docker documentation about how CMD and ENTRYPOINT interact>. If you specify this field, then you can also specify the @args@ field to provide additional arguments for this command. However, if you specify this field, then the container\'s @CMD@ is ignored. See the
    -- <https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes Kubernetes documentation about how the command and args fields interact with a container\'s ENTRYPOINT and CMD>. In this field, you can reference </ai-platform/prediction/docs/custom-container-requirements#aip-variables environment variables set by AI Platform Prediction> and environment variables set in the env field. You cannot reference environment variables set in the Docker image. In order for environment variables to be expanded, reference them by using the following syntax: $( VARIABLE/NAME) Note that this differs from Bash variable expansion, which does not use parentheses. If a variable cannot be resolved, the reference in the input string is used unchanged. To avoid variable expansion, you can escape this syntax with @$$@; for example: $$(VARIABLE/NAME) This field corresponds to the @command@ field of the
    -- <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core Kubernetes Containers v1 core API>.
    command :: (Core.Maybe [Core.Text]),
    -- | Immutable. List of environment variables to set in the container. After the container starts running, code running in the container can read these environment variables. Additionally, the command and args fields can reference these variables. Later entries in this list can also reference earlier entries. For example, the following example sets the variable @VAR_2@ to have the value @foo bar@: @json [ { \"name\": \"VAR_1\", \"value\": \"foo\" }, { \"name\": \"VAR_2\", \"value\": \"$(VAR_1) bar\" } ]@ If you switch the order of the variables in the example, then the expansion does not occur. This field corresponds to the @env@ field of the <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core Kubernetes Containers v1 core API>.
    env :: (Core.Maybe [GoogleCloudMlV1__EnvVar]),
    -- | URI of the Docker image to be used as the custom container for serving predictions. This URI must identify </artifact-registry/docs/overview an image in Artifact Registry> and begin with the hostname @{REGION}-docker.pkg.dev@, where @{REGION}@ is replaced by the region that matches AI Platform Prediction </ai-platform/prediction/docs/regional-endpoints regional endpoint> that you are using. For example, if you are using the @us-central1-ml.googleapis.com@ endpoint, then this URI must begin with @us-central1-docker.pkg.dev@. To use a custom container, the </ai-platform/prediction/docs/custom-service-account#default AI Platform Google-managed service account> must have permission to pull (read) the Docker image at this URI. The AI Platform Google-managed service account has the following format: @service-{PROJECT_NUMBER}\@cloud-ml.google.com.iam.gserviceaccount.com@ {PROJECT_NUMBER} is replaced by your Google Cloud project number. By default, this service account has necessary permissions to pull an Artifact
    -- Registry image in the same Google Cloud project where you are using AI Platform Prediction. In this case, no configuration is necessary. If you want to use an image from a different Google Cloud project, learn how to </artifact-registry/docs/access-control#grant-repo grant the Artifact Registry Reader (roles\/artifactregistry.reader) role for a repository> to your projet\'s AI Platform Google-managed service account. To learn about the requirements for the Docker image itself, read </ai-platform/prediction/docs/custom-container-requirements Custom container requirements>.
    image :: (Core.Maybe Core.Text),
    -- | Immutable. List of ports to expose from the container. AI Platform Prediction sends any prediction requests that it receives to the first port on this list. AI Platform Prediction also sends </ai-platform/prediction/docs/custom-container-requirements#health liveness and health checks> to this port. If you do not specify this field, it defaults to following value: @json [ { \"containerPort\": 8080 } ]@ AI Platform Prediction does not use ports other than the first one listed. This field corresponds to the @ports@ field of the <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core Kubernetes Containers v1 core API>.
    ports :: (Core.Maybe [GoogleCloudMlV1__ContainerPort])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ContainerSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1__ContainerSpec ::
  GoogleCloudMlV1__ContainerSpec
newGoogleCloudMlV1__ContainerSpec =
  GoogleCloudMlV1__ContainerSpec
    { args = Core.Nothing,
      command = Core.Nothing,
      env = Core.Nothing,
      image = Core.Nothing,
      ports = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__ContainerSpec where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ContainerSpec"
      ( \o ->
          GoogleCloudMlV1__ContainerSpec
            Core.<$> (o Core..:? "args")
            Core.<*> (o Core..:? "command")
            Core.<*> (o Core..:? "env")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "ports")
      )

instance Core.ToJSON GoogleCloudMlV1__ContainerSpec where
  toJSON GoogleCloudMlV1__ContainerSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("command" Core..=) Core.<$> command,
            ("env" Core..=) Core.<$> env,
            ("image" Core..=) Core.<$> image,
            ("ports" Core..=) Core.<$> ports
          ]
      )

-- | Represents the config of disk options.
--
-- /See:/ 'newGoogleCloudMlV1__DiskConfig' smart constructor.
data GoogleCloudMlV1__DiskConfig = GoogleCloudMlV1__DiskConfig
  { -- | Size in GB of the boot disk (default is 100GB).
    bootDiskSizeGb :: (Core.Maybe Core.Int32),
    -- | Type of the boot disk (default is \"pd-ssd\"). Valid values: \"pd-ssd\" (Persistent Disk Solid State Drive) or \"pd-standard\" (Persistent Disk Hard Disk Drive).
    bootDiskType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__DiskConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1__DiskConfig ::
  GoogleCloudMlV1__DiskConfig
newGoogleCloudMlV1__DiskConfig =
  GoogleCloudMlV1__DiskConfig
    { bootDiskSizeGb = Core.Nothing,
      bootDiskType = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__DiskConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__DiskConfig"
      ( \o ->
          GoogleCloudMlV1__DiskConfig
            Core.<$> (o Core..:? "bootDiskSizeGb")
            Core.<*> (o Core..:? "bootDiskType")
      )

instance Core.ToJSON GoogleCloudMlV1__DiskConfig where
  toJSON GoogleCloudMlV1__DiskConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bootDiskSizeGb" Core..=) Core.<$> bootDiskSizeGb,
            ("bootDiskType" Core..=) Core.<$> bootDiskType
          ]
      )

-- | Represents a custom encryption key configuration that can be applied to a resource.
--
-- /See:/ 'newGoogleCloudMlV1__EncryptionConfig' smart constructor.
newtype GoogleCloudMlV1__EncryptionConfig = GoogleCloudMlV1__EncryptionConfig
  { -- | The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a training job. It has the following format: @projects\/{PROJECT_ID}\/locations\/{REGION}\/keyRings\/{KEY_RING_NAME}\/cryptoKeys\/{KEY_NAME}@
    kmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__EncryptionConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1__EncryptionConfig ::
  GoogleCloudMlV1__EncryptionConfig
newGoogleCloudMlV1__EncryptionConfig =
  GoogleCloudMlV1__EncryptionConfig {kmsKeyName = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__EncryptionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__EncryptionConfig"
      ( \o ->
          GoogleCloudMlV1__EncryptionConfig
            Core.<$> (o Core..:? "kmsKeyName")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__EncryptionConfig
  where
  toJSON GoogleCloudMlV1__EncryptionConfig {..} =
    Core.object
      ( Core.catMaybes
          [("kmsKeyName" Core..=) Core.<$> kmsKeyName]
      )

-- | Represents an environment variable to be made available in a container. This message is a subset of the <https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#envvar-v1-core Kubernetes EnvVar v1 core specification>.
--
-- /See:/ 'newGoogleCloudMlV1__EnvVar' smart constructor.
data GoogleCloudMlV1__EnvVar = GoogleCloudMlV1__EnvVar
  { -- | Name of the environment variable. Must be a <https://github.com/kubernetes/kubernetes/blob/v1.18.8/staging/src/k8s.io/apimachinery/pkg/util/validation/validation.go#L258 valid C identifier> and must not begin with the prefix @AIP_@.
    name :: (Core.Maybe Core.Text),
    -- | Value of the environment variable. Defaults to an empty string. In this field, you can reference </ai-platform/prediction/docs/custom-container-requirements#aip-variables environment variables set by AI Platform Prediction> and environment variables set earlier in the same env field as where this message occurs. You cannot reference environment variables set in the Docker image. In order for environment variables to be expanded, reference them by using the following syntax: $(VARIABLE/NAME) Note that this differs from Bash variable expansion, which does not use parentheses. If a variable cannot be resolved, the reference in the input string is used unchanged. To avoid variable expansion, you can escape this syntax with @$$@; for example: $$(VARIABLE/NAME)
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__EnvVar' with the minimum fields required to make a request.
newGoogleCloudMlV1__EnvVar ::
  GoogleCloudMlV1__EnvVar
newGoogleCloudMlV1__EnvVar =
  GoogleCloudMlV1__EnvVar {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON GoogleCloudMlV1__EnvVar where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__EnvVar"
      ( \o ->
          GoogleCloudMlV1__EnvVar
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GoogleCloudMlV1__EnvVar where
  toJSON GoogleCloudMlV1__EnvVar {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Request for explanations to be issued against a trained model.
--
-- /See:/ 'newGoogleCloudMlV1__ExplainRequest' smart constructor.
newtype GoogleCloudMlV1__ExplainRequest = GoogleCloudMlV1__ExplainRequest
  { -- | Required. The explanation request body.
    httpBody :: (Core.Maybe GoogleApi__HttpBody)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ExplainRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__ExplainRequest ::
  GoogleCloudMlV1__ExplainRequest
newGoogleCloudMlV1__ExplainRequest =
  GoogleCloudMlV1__ExplainRequest {httpBody = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__ExplainRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ExplainRequest"
      ( \o ->
          GoogleCloudMlV1__ExplainRequest
            Core.<$> (o Core..:? "httpBody")
      )

instance Core.ToJSON GoogleCloudMlV1__ExplainRequest where
  toJSON GoogleCloudMlV1__ExplainRequest {..} =
    Core.object
      ( Core.catMaybes
          [("httpBody" Core..=) Core.<$> httpBody]
      )

-- | Message holding configuration options for explaining model predictions. There are three feature attribution methods supported for TensorFlow models: integrated gradients, sampled Shapley, and XRAI. </ai-platform/prediction/docs/ai-explanations/overview Learn more about feature attributions.>
--
-- /See:/ 'newGoogleCloudMlV1__ExplanationConfig' smart constructor.
data GoogleCloudMlV1__ExplanationConfig = GoogleCloudMlV1__ExplanationConfig
  { -- | Attributes credit by computing the Aumann-Shapley value taking advantage of the model\'s fully differentiable structure. Refer to this paper for more details: https:\/\/arxiv.org\/abs\/1703.01365
    integratedGradientsAttribution :: (Core.Maybe GoogleCloudMlV1__IntegratedGradientsAttribution),
    -- | An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
    sampledShapleyAttribution :: (Core.Maybe GoogleCloudMlV1__SampledShapleyAttribution),
    -- | Attributes credit by computing the XRAI taking advantage of the model\'s fully differentiable structure. Refer to this paper for more details: https:\/\/arxiv.org\/abs\/1906.02825 Currently only implemented for models with natural image inputs.
    xraiAttribution :: (Core.Maybe GoogleCloudMlV1__XraiAttribution)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ExplanationConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1__ExplanationConfig ::
  GoogleCloudMlV1__ExplanationConfig
newGoogleCloudMlV1__ExplanationConfig =
  GoogleCloudMlV1__ExplanationConfig
    { integratedGradientsAttribution = Core.Nothing,
      sampledShapleyAttribution = Core.Nothing,
      xraiAttribution = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__ExplanationConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ExplanationConfig"
      ( \o ->
          GoogleCloudMlV1__ExplanationConfig
            Core.<$> (o Core..:? "integratedGradientsAttribution")
            Core.<*> (o Core..:? "sampledShapleyAttribution")
            Core.<*> (o Core..:? "xraiAttribution")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ExplanationConfig
  where
  toJSON GoogleCloudMlV1__ExplanationConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("integratedGradientsAttribution" Core..=)
              Core.<$> integratedGradientsAttribution,
            ("sampledShapleyAttribution" Core..=)
              Core.<$> sampledShapleyAttribution,
            ("xraiAttribution" Core..=)
              Core.<$> xraiAttribution
          ]
      )

-- | Returns service account information associated with a project.
--
-- /See:/ 'newGoogleCloudMlV1__GetConfigResponse' smart constructor.
data GoogleCloudMlV1__GetConfigResponse = GoogleCloudMlV1__GetConfigResponse
  { -- |
    config :: (Core.Maybe GoogleCloudMlV1__Config),
    -- | The service account Cloud ML uses to access resources in the project.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | The project number for @service_account@.
    serviceAccountProject :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__GetConfigResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__GetConfigResponse ::
  GoogleCloudMlV1__GetConfigResponse
newGoogleCloudMlV1__GetConfigResponse =
  GoogleCloudMlV1__GetConfigResponse
    { config = Core.Nothing,
      serviceAccount = Core.Nothing,
      serviceAccountProject = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__GetConfigResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__GetConfigResponse"
      ( \o ->
          GoogleCloudMlV1__GetConfigResponse
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> ( o Core..:? "serviceAccountProject"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__GetConfigResponse
  where
  toJSON GoogleCloudMlV1__GetConfigResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("serviceAccountProject" Core..=) Core.. Core.AsText
              Core.<$> serviceAccountProject
          ]
      )

-- | Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.
--
-- /See:/ 'newGoogleCloudMlV1__HyperparameterOutput' smart constructor.
data GoogleCloudMlV1__HyperparameterOutput = GoogleCloudMlV1__HyperparameterOutput
  { -- | All recorded object metrics for this trial. This field is not currently populated.
    allMetrics ::
      ( Core.Maybe
          [GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric]
      ),
    -- | Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.
    builtInAlgorithmOutput :: (Core.Maybe GoogleCloudMlV1__BuiltInAlgorithmOutput),
    -- | Output only. End time for the trial.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The final objective metric seen for this trial.
    finalMetric ::
      ( Core.Maybe
          GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
      ),
    -- | The hyperparameters given to this trial.
    hyperparameters :: (Core.Maybe GoogleCloudMlV1__HyperparameterOutput_Hyperparameters),
    -- | True if the trial is stopped early.
    isTrialStoppedEarly :: (Core.Maybe Core.Bool),
    -- | Output only. Start time for the trial.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The detailed state of the trial.
    state :: (Core.Maybe GoogleCloudMlV1__HyperparameterOutput_State),
    -- | The trial id for these results.
    trialId :: (Core.Maybe Core.Text),
    -- | URIs for accessing <https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell interactive shells> (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job\'s training/input.enable/web_access is @true@. The keys are names of each node in the training job; for example, @master-replica-0@ for the master node, @worker-replica-0@ for the first worker, and @ps-replica-0@ for the first parameter server. The values are the URIs for each node\'s interactive shell.
    webAccessUris :: (Core.Maybe GoogleCloudMlV1__HyperparameterOutput_WebAccessUris)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__HyperparameterOutput' with the minimum fields required to make a request.
newGoogleCloudMlV1__HyperparameterOutput ::
  GoogleCloudMlV1__HyperparameterOutput
newGoogleCloudMlV1__HyperparameterOutput =
  GoogleCloudMlV1__HyperparameterOutput
    { allMetrics = Core.Nothing,
      builtInAlgorithmOutput = Core.Nothing,
      endTime = Core.Nothing,
      finalMetric = Core.Nothing,
      hyperparameters = Core.Nothing,
      isTrialStoppedEarly = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      trialId = Core.Nothing,
      webAccessUris = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__HyperparameterOutput
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__HyperparameterOutput"
      ( \o ->
          GoogleCloudMlV1__HyperparameterOutput
            Core.<$> (o Core..:? "allMetrics")
            Core.<*> (o Core..:? "builtInAlgorithmOutput")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "finalMetric")
            Core.<*> (o Core..:? "hyperparameters")
            Core.<*> (o Core..:? "isTrialStoppedEarly")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "trialId")
            Core.<*> (o Core..:? "webAccessUris")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__HyperparameterOutput
  where
  toJSON GoogleCloudMlV1__HyperparameterOutput {..} =
    Core.object
      ( Core.catMaybes
          [ ("allMetrics" Core..=) Core.<$> allMetrics,
            ("builtInAlgorithmOutput" Core..=)
              Core.<$> builtInAlgorithmOutput,
            ("endTime" Core..=) Core.<$> endTime,
            ("finalMetric" Core..=) Core.<$> finalMetric,
            ("hyperparameters" Core..=) Core.<$> hyperparameters,
            ("isTrialStoppedEarly" Core..=)
              Core.<$> isTrialStoppedEarly,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("trialId" Core..=) Core.<$> trialId,
            ("webAccessUris" Core..=) Core.<$> webAccessUris
          ]
      )

-- | The hyperparameters given to this trial.
--
-- /See:/ 'newGoogleCloudMlV1__HyperparameterOutput_Hyperparameters' smart constructor.
newtype GoogleCloudMlV1__HyperparameterOutput_Hyperparameters = GoogleCloudMlV1__HyperparameterOutput_Hyperparameters
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__HyperparameterOutput_Hyperparameters' with the minimum fields required to make a request.
newGoogleCloudMlV1__HyperparameterOutput_Hyperparameters ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudMlV1__HyperparameterOutput_Hyperparameters
newGoogleCloudMlV1__HyperparameterOutput_Hyperparameters additional =
  GoogleCloudMlV1__HyperparameterOutput_Hyperparameters
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__HyperparameterOutput_Hyperparameters
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__HyperparameterOutput_Hyperparameters"
      ( \o ->
          GoogleCloudMlV1__HyperparameterOutput_Hyperparameters
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__HyperparameterOutput_Hyperparameters
  where
  toJSON
    GoogleCloudMlV1__HyperparameterOutput_Hyperparameters {..} =
      Core.toJSON additional

-- | URIs for accessing <https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell interactive shells> (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job\'s training/input.enable/web_access is @true@. The keys are names of each node in the training job; for example, @master-replica-0@ for the master node, @worker-replica-0@ for the first worker, and @ps-replica-0@ for the first parameter server. The values are the URIs for each node\'s interactive shell.
--
-- /See:/ 'newGoogleCloudMlV1__HyperparameterOutput_WebAccessUris' smart constructor.
newtype GoogleCloudMlV1__HyperparameterOutput_WebAccessUris = GoogleCloudMlV1__HyperparameterOutput_WebAccessUris
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__HyperparameterOutput_WebAccessUris' with the minimum fields required to make a request.
newGoogleCloudMlV1__HyperparameterOutput_WebAccessUris ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudMlV1__HyperparameterOutput_WebAccessUris
newGoogleCloudMlV1__HyperparameterOutput_WebAccessUris additional =
  GoogleCloudMlV1__HyperparameterOutput_WebAccessUris {additional = additional}

instance
  Core.FromJSON
    GoogleCloudMlV1__HyperparameterOutput_WebAccessUris
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__HyperparameterOutput_WebAccessUris"
      ( \o ->
          GoogleCloudMlV1__HyperparameterOutput_WebAccessUris
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__HyperparameterOutput_WebAccessUris
  where
  toJSON
    GoogleCloudMlV1__HyperparameterOutput_WebAccessUris {..} =
      Core.toJSON additional

-- | Represents a set of hyperparameters to optimize.
--
-- /See:/ 'newGoogleCloudMlV1__HyperparameterSpec' smart constructor.
data GoogleCloudMlV1__HyperparameterSpec = GoogleCloudMlV1__HyperparameterSpec
  { -- | Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.
    algorithm :: (Core.Maybe GoogleCloudMlV1__HyperparameterSpec_Algorithm),
    -- | Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping.
    enableTrialEarlyStopping :: (Core.Maybe Core.Bool),
    -- | Required. The type of goal to use for tuning. Available types are @MAXIMIZE@ and @MINIMIZE@. Defaults to @MAXIMIZE@.
    goal :: (Core.Maybe GoogleCloudMlV1__HyperparameterSpec_Goal),
    -- | Optional. The TensorFlow summary tag name to use for optimizing trials. For current versions of TensorFlow, this tag name should exactly match what is shown in TensorBoard, including all scopes. For versions of TensorFlow prior to 0.12, this should be only the tag passed to tf.Summary. By default, \"training\/hptuning\/metric\" will be used.
    hyperparameterMetricTag :: (Core.Maybe Core.Text),
    -- | Optional. The number of failed trials that need to be seen before failing the hyperparameter tuning job. You can specify this field to override the default failing criteria for AI Platform hyperparameter tuning jobs. Defaults to zero, which means the service decides when a hyperparameter job should fail.
    maxFailedTrials :: (Core.Maybe Core.Int32),
    -- | Optional. The number of training trials to run concurrently. You can reduce the time it takes to perform hyperparameter tuning by adding trials in parallel. However, each trail only benefits from the information gained in completed trials. That means that a trial does not get access to the results of trials running at the same time, which could reduce the quality of the overall optimization. Each trial will use the same scale tier and machine types. Defaults to one.
    maxParallelTrials :: (Core.Maybe Core.Int32),
    -- | Optional. How many training trials should be attempted to optimize the specified hyperparameters. Defaults to one.
    maxTrials :: (Core.Maybe Core.Int32),
    -- | Required. The set of parameters to tune.
    params :: (Core.Maybe [GoogleCloudMlV1__ParameterSpec]),
    -- | Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id will be used to find the corresponding vizier study guid and resume the study.
    resumePreviousJobId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__HyperparameterSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1__HyperparameterSpec ::
  GoogleCloudMlV1__HyperparameterSpec
newGoogleCloudMlV1__HyperparameterSpec =
  GoogleCloudMlV1__HyperparameterSpec
    { algorithm = Core.Nothing,
      enableTrialEarlyStopping = Core.Nothing,
      goal = Core.Nothing,
      hyperparameterMetricTag = Core.Nothing,
      maxFailedTrials = Core.Nothing,
      maxParallelTrials = Core.Nothing,
      maxTrials = Core.Nothing,
      params = Core.Nothing,
      resumePreviousJobId = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__HyperparameterSpec
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__HyperparameterSpec"
      ( \o ->
          GoogleCloudMlV1__HyperparameterSpec
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "enableTrialEarlyStopping")
            Core.<*> (o Core..:? "goal")
            Core.<*> (o Core..:? "hyperparameterMetricTag")
            Core.<*> (o Core..:? "maxFailedTrials")
            Core.<*> (o Core..:? "maxParallelTrials")
            Core.<*> (o Core..:? "maxTrials")
            Core.<*> (o Core..:? "params")
            Core.<*> (o Core..:? "resumePreviousJobId")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__HyperparameterSpec
  where
  toJSON GoogleCloudMlV1__HyperparameterSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("enableTrialEarlyStopping" Core..=)
              Core.<$> enableTrialEarlyStopping,
            ("goal" Core..=) Core.<$> goal,
            ("hyperparameterMetricTag" Core..=)
              Core.<$> hyperparameterMetricTag,
            ("maxFailedTrials" Core..=) Core.<$> maxFailedTrials,
            ("maxParallelTrials" Core..=)
              Core.<$> maxParallelTrials,
            ("maxTrials" Core..=) Core.<$> maxTrials,
            ("params" Core..=) Core.<$> params,
            ("resumePreviousJobId" Core..=)
              Core.<$> resumePreviousJobId
          ]
      )

-- | Attributes credit by computing the Aumann-Shapley value taking advantage of the model\'s fully differentiable structure. Refer to this paper for more details: https:\/\/arxiv.org\/abs\/1703.01365
--
-- /See:/ 'newGoogleCloudMlV1__IntegratedGradientsAttribution' smart constructor.
newtype GoogleCloudMlV1__IntegratedGradientsAttribution = GoogleCloudMlV1__IntegratedGradientsAttribution
  { -- | Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
    numIntegralSteps :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__IntegratedGradientsAttribution' with the minimum fields required to make a request.
newGoogleCloudMlV1__IntegratedGradientsAttribution ::
  GoogleCloudMlV1__IntegratedGradientsAttribution
newGoogleCloudMlV1__IntegratedGradientsAttribution =
  GoogleCloudMlV1__IntegratedGradientsAttribution
    { numIntegralSteps = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__IntegratedGradientsAttribution
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__IntegratedGradientsAttribution"
      ( \o ->
          GoogleCloudMlV1__IntegratedGradientsAttribution
            Core.<$> (o Core..:? "numIntegralSteps")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__IntegratedGradientsAttribution
  where
  toJSON
    GoogleCloudMlV1__IntegratedGradientsAttribution {..} =
      Core.object
        ( Core.catMaybes
            [ ("numIntegralSteps" Core..=)
                Core.<$> numIntegralSteps
            ]
        )

-- | Represents a training or prediction job.
--
-- /See:/ 'newGoogleCloudMlV1__Job' smart constructor.
data GoogleCloudMlV1__Job = GoogleCloudMlV1__Job
  { -- | Output only. When the job was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. When the job processing was completed.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The details of a failure or a cancellation.
    errorMessage :: (Core.Maybe Core.Text),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform job updates in order to avoid race conditions: An @etag@ is returned in the response to @GetJob@, and systems are expected to put that etag in the request to @UpdateJob@ to ensure that their change will be applied to the same version of the job.
    etag :: (Core.Maybe Core.Base64),
    -- | Required. The user-specified id of the job.
    jobId :: (Core.Maybe Core.Text),
    -- | Output only. It\'s only effect when the job is in QUEUED state. If it\'s positive, it indicates the job\'s position in the job scheduler. It\'s 0 when the job is already scheduled.
    jobPosition :: (Core.Maybe Core.Int64),
    -- | Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
    labels :: (Core.Maybe GoogleCloudMlV1__Job_Labels),
    -- | Input parameters to create a prediction job.
    predictionInput :: (Core.Maybe GoogleCloudMlV1__PredictionInput),
    -- | The current prediction job result.
    predictionOutput :: (Core.Maybe GoogleCloudMlV1__PredictionOutput),
    -- | Output only. When the job processing was started.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The detailed state of a job.
    state :: (Core.Maybe GoogleCloudMlV1__Job_State),
    -- | Input parameters to create a training job.
    trainingInput :: (Core.Maybe GoogleCloudMlV1__TrainingInput),
    -- | The current training job result.
    trainingOutput :: (Core.Maybe GoogleCloudMlV1__TrainingOutput)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Job' with the minimum fields required to make a request.
newGoogleCloudMlV1__Job ::
  GoogleCloudMlV1__Job
newGoogleCloudMlV1__Job =
  GoogleCloudMlV1__Job
    { createTime = Core.Nothing,
      endTime = Core.Nothing,
      errorMessage = Core.Nothing,
      etag = Core.Nothing,
      jobId = Core.Nothing,
      jobPosition = Core.Nothing,
      labels = Core.Nothing,
      predictionInput = Core.Nothing,
      predictionOutput = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      trainingInput = Core.Nothing,
      trainingOutput = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__Job where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Job"
      ( \o ->
          GoogleCloudMlV1__Job
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "jobId")
            Core.<*> ( o Core..:? "jobPosition"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "predictionInput")
            Core.<*> (o Core..:? "predictionOutput")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "trainingInput")
            Core.<*> (o Core..:? "trainingOutput")
      )

instance Core.ToJSON GoogleCloudMlV1__Job where
  toJSON GoogleCloudMlV1__Job {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("etag" Core..=) Core.<$> etag,
            ("jobId" Core..=) Core.<$> jobId,
            ("jobPosition" Core..=) Core.. Core.AsText
              Core.<$> jobPosition,
            ("labels" Core..=) Core.<$> labels,
            ("predictionInput" Core..=) Core.<$> predictionInput,
            ("predictionOutput" Core..=)
              Core.<$> predictionOutput,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("trainingInput" Core..=) Core.<$> trainingInput,
            ("trainingOutput" Core..=) Core.<$> trainingOutput
          ]
      )

-- | Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
--
-- /See:/ 'newGoogleCloudMlV1__Job_Labels' smart constructor.
newtype GoogleCloudMlV1__Job_Labels = GoogleCloudMlV1__Job_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Job_Labels' with the minimum fields required to make a request.
newGoogleCloudMlV1__Job_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudMlV1__Job_Labels
newGoogleCloudMlV1__Job_Labels additional =
  GoogleCloudMlV1__Job_Labels {additional = additional}

instance Core.FromJSON GoogleCloudMlV1__Job_Labels where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Job_Labels"
      ( \o ->
          GoogleCloudMlV1__Job_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleCloudMlV1__Job_Labels where
  toJSON GoogleCloudMlV1__Job_Labels {..} =
    Core.toJSON additional

-- | Response message for the ListJobs method.
--
-- /See:/ 'newGoogleCloudMlV1__ListJobsResponse' smart constructor.
data GoogleCloudMlV1__ListJobsResponse = GoogleCloudMlV1__ListJobsResponse
  { -- | The list of jobs.
    jobs :: (Core.Maybe [GoogleCloudMlV1__Job]),
    -- | Optional. Pass this token as the @page_token@ field of the request for a subsequent call.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListJobsResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__ListJobsResponse ::
  GoogleCloudMlV1__ListJobsResponse
newGoogleCloudMlV1__ListJobsResponse =
  GoogleCloudMlV1__ListJobsResponse
    { jobs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__ListJobsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ListJobsResponse"
      ( \o ->
          GoogleCloudMlV1__ListJobsResponse
            Core.<$> (o Core..:? "jobs")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ListJobsResponse
  where
  toJSON GoogleCloudMlV1__ListJobsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("jobs" Core..=) Core.<$> jobs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newGoogleCloudMlV1__ListLocationsResponse' smart constructor.
data GoogleCloudMlV1__ListLocationsResponse = GoogleCloudMlV1__ListLocationsResponse
  { -- | Locations where at least one type of CMLE capability is available.
    locations :: (Core.Maybe [GoogleCloudMlV1__Location]),
    -- | Optional. Pass this token as the @page_token@ field of the request for a subsequent call.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListLocationsResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__ListLocationsResponse ::
  GoogleCloudMlV1__ListLocationsResponse
newGoogleCloudMlV1__ListLocationsResponse =
  GoogleCloudMlV1__ListLocationsResponse
    { locations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__ListLocationsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ListLocationsResponse"
      ( \o ->
          GoogleCloudMlV1__ListLocationsResponse
            Core.<$> (o Core..:? "locations")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ListLocationsResponse
  where
  toJSON GoogleCloudMlV1__ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response message for the ListModels method.
--
-- /See:/ 'newGoogleCloudMlV1__ListModelsResponse' smart constructor.
data GoogleCloudMlV1__ListModelsResponse = GoogleCloudMlV1__ListModelsResponse
  { -- | The list of models.
    models :: (Core.Maybe [GoogleCloudMlV1__Model]),
    -- | Optional. Pass this token as the @page_token@ field of the request for a subsequent call.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListModelsResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__ListModelsResponse ::
  GoogleCloudMlV1__ListModelsResponse
newGoogleCloudMlV1__ListModelsResponse =
  GoogleCloudMlV1__ListModelsResponse
    { models = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__ListModelsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ListModelsResponse"
      ( \o ->
          GoogleCloudMlV1__ListModelsResponse
            Core.<$> (o Core..:? "models")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ListModelsResponse
  where
  toJSON GoogleCloudMlV1__ListModelsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("models" Core..=) Core.<$> models,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The request message for the ListTrials service method.
--
-- /See:/ 'newGoogleCloudMlV1__ListOptimalTrialsRequest' smart constructor.
data GoogleCloudMlV1__ListOptimalTrialsRequest = GoogleCloudMlV1__ListOptimalTrialsRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListOptimalTrialsRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__ListOptimalTrialsRequest ::
  GoogleCloudMlV1__ListOptimalTrialsRequest
newGoogleCloudMlV1__ListOptimalTrialsRequest =
  GoogleCloudMlV1__ListOptimalTrialsRequest

instance
  Core.FromJSON
    GoogleCloudMlV1__ListOptimalTrialsRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ListOptimalTrialsRequest"
      ( \o ->
          Core.pure GoogleCloudMlV1__ListOptimalTrialsRequest
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ListOptimalTrialsRequest
  where
  toJSON = Core.const Core.emptyObject

-- | The response message for the ListOptimalTrials method.
--
-- /See:/ 'newGoogleCloudMlV1__ListOptimalTrialsResponse' smart constructor.
newtype GoogleCloudMlV1__ListOptimalTrialsResponse = GoogleCloudMlV1__ListOptimalTrialsResponse
  { -- | The pareto-optimal trials for multiple objective study or the optimal trial for single objective study. The definition of pareto-optimal can be checked in wiki page. https:\/\/en.wikipedia.org\/wiki\/Pareto_efficiency
    trials :: (Core.Maybe [GoogleCloudMlV1__Trial])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListOptimalTrialsResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__ListOptimalTrialsResponse ::
  GoogleCloudMlV1__ListOptimalTrialsResponse
newGoogleCloudMlV1__ListOptimalTrialsResponse =
  GoogleCloudMlV1__ListOptimalTrialsResponse {trials = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__ListOptimalTrialsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ListOptimalTrialsResponse"
      ( \o ->
          GoogleCloudMlV1__ListOptimalTrialsResponse
            Core.<$> (o Core..:? "trials")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ListOptimalTrialsResponse
  where
  toJSON GoogleCloudMlV1__ListOptimalTrialsResponse {..} =
    Core.object
      (Core.catMaybes [("trials" Core..=) Core.<$> trials])

--
-- /See:/ 'newGoogleCloudMlV1__ListStudiesResponse' smart constructor.
newtype GoogleCloudMlV1__ListStudiesResponse = GoogleCloudMlV1__ListStudiesResponse
  { -- | The studies associated with the project.
    studies :: (Core.Maybe [GoogleCloudMlV1__Study])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListStudiesResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__ListStudiesResponse ::
  GoogleCloudMlV1__ListStudiesResponse
newGoogleCloudMlV1__ListStudiesResponse =
  GoogleCloudMlV1__ListStudiesResponse {studies = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__ListStudiesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ListStudiesResponse"
      ( \o ->
          GoogleCloudMlV1__ListStudiesResponse
            Core.<$> (o Core..:? "studies")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ListStudiesResponse
  where
  toJSON GoogleCloudMlV1__ListStudiesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("studies" Core..=) Core.<$> studies]
      )

-- | The response message for the ListTrials method.
--
-- /See:/ 'newGoogleCloudMlV1__ListTrialsResponse' smart constructor.
newtype GoogleCloudMlV1__ListTrialsResponse = GoogleCloudMlV1__ListTrialsResponse
  { -- | The trials associated with the study.
    trials :: (Core.Maybe [GoogleCloudMlV1__Trial])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListTrialsResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__ListTrialsResponse ::
  GoogleCloudMlV1__ListTrialsResponse
newGoogleCloudMlV1__ListTrialsResponse =
  GoogleCloudMlV1__ListTrialsResponse {trials = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__ListTrialsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ListTrialsResponse"
      ( \o ->
          GoogleCloudMlV1__ListTrialsResponse
            Core.<$> (o Core..:? "trials")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ListTrialsResponse
  where
  toJSON GoogleCloudMlV1__ListTrialsResponse {..} =
    Core.object
      (Core.catMaybes [("trials" Core..=) Core.<$> trials])

-- | Response message for the ListVersions method.
--
-- /See:/ 'newGoogleCloudMlV1__ListVersionsResponse' smart constructor.
data GoogleCloudMlV1__ListVersionsResponse = GoogleCloudMlV1__ListVersionsResponse
  { -- | Optional. Pass this token as the @page_token@ field of the request for a subsequent call.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of versions.
    versions :: (Core.Maybe [GoogleCloudMlV1__Version])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ListVersionsResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__ListVersionsResponse ::
  GoogleCloudMlV1__ListVersionsResponse
newGoogleCloudMlV1__ListVersionsResponse =
  GoogleCloudMlV1__ListVersionsResponse
    { nextPageToken = Core.Nothing,
      versions = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__ListVersionsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ListVersionsResponse"
      ( \o ->
          GoogleCloudMlV1__ListVersionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "versions")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__ListVersionsResponse
  where
  toJSON GoogleCloudMlV1__ListVersionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("versions" Core..=) Core.<$> versions
          ]
      )

--
-- /See:/ 'newGoogleCloudMlV1__Location' smart constructor.
data GoogleCloudMlV1__Location = GoogleCloudMlV1__Location
  { -- | Capabilities available in the location.
    capabilities :: (Core.Maybe [GoogleCloudMlV1__Capability]),
    -- |
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Location' with the minimum fields required to make a request.
newGoogleCloudMlV1__Location ::
  GoogleCloudMlV1__Location
newGoogleCloudMlV1__Location =
  GoogleCloudMlV1__Location {capabilities = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON GoogleCloudMlV1__Location where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Location"
      ( \o ->
          GoogleCloudMlV1__Location
            Core.<$> (o Core..:? "capabilities")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON GoogleCloudMlV1__Location where
  toJSON GoogleCloudMlV1__Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("capabilities" Core..=) Core.<$> capabilities,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Options for manually scaling a model.
--
-- /See:/ 'newGoogleCloudMlV1__ManualScaling' smart constructor.
newtype GoogleCloudMlV1__ManualScaling = GoogleCloudMlV1__ManualScaling
  { -- | The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed, so the cost of operating this model will be proportional to @nodes@ * number of hours since last billing cycle plus the cost for each prediction performed.
    nodes :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ManualScaling' with the minimum fields required to make a request.
newGoogleCloudMlV1__ManualScaling ::
  GoogleCloudMlV1__ManualScaling
newGoogleCloudMlV1__ManualScaling =
  GoogleCloudMlV1__ManualScaling {nodes = Core.Nothing}

instance Core.FromJSON GoogleCloudMlV1__ManualScaling where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ManualScaling"
      ( \o ->
          GoogleCloudMlV1__ManualScaling
            Core.<$> (o Core..:? "nodes")
      )

instance Core.ToJSON GoogleCloudMlV1__ManualScaling where
  toJSON GoogleCloudMlV1__ManualScaling {..} =
    Core.object
      (Core.catMaybes [("nodes" Core..=) Core.<$> nodes])

-- | A message representing a measurement.
--
-- /See:/ 'newGoogleCloudMlV1__Measurement' smart constructor.
data GoogleCloudMlV1__Measurement = GoogleCloudMlV1__Measurement
  { -- | Output only. Time that the trial has been running at the point of this measurement.
    elapsedTime :: (Core.Maybe Core.Duration),
    -- | Provides a list of metrics that act as inputs into the objective function.
    metrics :: (Core.Maybe [GoogleCloudMlV1_Measurement_Metric]),
    -- | The number of steps a machine learning model has been trained for. Must be non-negative.
    stepCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Measurement' with the minimum fields required to make a request.
newGoogleCloudMlV1__Measurement ::
  GoogleCloudMlV1__Measurement
newGoogleCloudMlV1__Measurement =
  GoogleCloudMlV1__Measurement
    { elapsedTime = Core.Nothing,
      metrics = Core.Nothing,
      stepCount = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__Measurement where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Measurement"
      ( \o ->
          GoogleCloudMlV1__Measurement
            Core.<$> (o Core..:? "elapsedTime")
            Core.<*> (o Core..:? "metrics")
            Core.<*> ( o Core..:? "stepCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON GoogleCloudMlV1__Measurement where
  toJSON GoogleCloudMlV1__Measurement {..} =
    Core.object
      ( Core.catMaybes
          [ ("elapsedTime" Core..=) Core.<$> elapsedTime,
            ("metrics" Core..=) Core.<$> metrics,
            ("stepCount" Core..=) Core.. Core.AsText
              Core.<$> stepCount
          ]
      )

-- | MetricSpec contains the specifications to use to calculate the desired nodes count when autoscaling is enabled.
--
-- /See:/ 'newGoogleCloudMlV1__MetricSpec' smart constructor.
data GoogleCloudMlV1__MetricSpec = GoogleCloudMlV1__MetricSpec
  { -- | metric name.
    name :: (Core.Maybe GoogleCloudMlV1__MetricSpec_Name),
    -- | Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.
    target :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__MetricSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1__MetricSpec ::
  GoogleCloudMlV1__MetricSpec
newGoogleCloudMlV1__MetricSpec =
  GoogleCloudMlV1__MetricSpec {name = Core.Nothing, target = Core.Nothing}

instance Core.FromJSON GoogleCloudMlV1__MetricSpec where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__MetricSpec"
      ( \o ->
          GoogleCloudMlV1__MetricSpec
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "target")
      )

instance Core.ToJSON GoogleCloudMlV1__MetricSpec where
  toJSON GoogleCloudMlV1__MetricSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("target" Core..=) Core.<$> target
          ]
      )

-- | Represents a machine learning solution. A model can have multiple versions, each of which is a deployed, trained model ready to receive prediction requests. The model itself is just a container.
--
-- /See:/ 'newGoogleCloudMlV1__Model' smart constructor.
data GoogleCloudMlV1__Model = GoogleCloudMlV1__Model
  { -- | Output only. The default version of the model. This version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.models.versions.setDefault.
    defaultVersion :: (Core.Maybe GoogleCloudMlV1__Version),
    -- | Optional. The description specified for the model when it was created.
    description :: (Core.Maybe Core.Text),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform model updates in order to avoid race conditions: An @etag@ is returned in the response to @GetModel@, and systems are expected to put that etag in the request to @UpdateModel@ to ensure that their change will be applied to the model as intended.
    etag :: (Core.Maybe Core.Base64),
    -- | Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
    labels :: (Core.Maybe GoogleCloudMlV1__Model_Labels),
    -- | Required. The name specified for the model when it was created. The model name must be unique within the project it is created in.
    name :: (Core.Maybe Core.Text),
    -- | Optional. If true, online prediction nodes send @stderr@ and @stdout@ streams to Cloud Logging. These can be more verbose than the standard access logs (see @onlinePredictionLogging@) and can incur higher cost. However, they are helpful for debugging. Note that </stackdriver/pricing logs may incur a cost>, especially if your project receives prediction requests at a high QPS. Estimate your costs before enabling this option. Default is false.
    onlinePredictionConsoleLogging :: (Core.Maybe Core.Bool),
    -- | Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each request. Note that </stackdriver/pricing logs may incur a cost>, especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option. Default is false.
    onlinePredictionLogging :: (Core.Maybe Core.Bool),
    -- | Optional. The list of regions where the model is going to be deployed. Only one region per model is supported. Defaults to \'us-central1\' if nothing is set. See the available regions for AI Platform services. Note: * No matter where a model is deployed, it can always be accessed by users from anywhere, both for online and batch prediction. * The region for a batch prediction job is set by the region field when submitting the batch prediction job and does not take its value from this field.
    regions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Model' with the minimum fields required to make a request.
newGoogleCloudMlV1__Model ::
  GoogleCloudMlV1__Model
newGoogleCloudMlV1__Model =
  GoogleCloudMlV1__Model
    { defaultVersion = Core.Nothing,
      description = Core.Nothing,
      etag = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      onlinePredictionConsoleLogging = Core.Nothing,
      onlinePredictionLogging = Core.Nothing,
      regions = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__Model where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Model"
      ( \o ->
          GoogleCloudMlV1__Model
            Core.<$> (o Core..:? "defaultVersion")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "onlinePredictionConsoleLogging")
            Core.<*> (o Core..:? "onlinePredictionLogging")
            Core.<*> (o Core..:? "regions")
      )

instance Core.ToJSON GoogleCloudMlV1__Model where
  toJSON GoogleCloudMlV1__Model {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultVersion" Core..=) Core.<$> defaultVersion,
            ("description" Core..=) Core.<$> description,
            ("etag" Core..=) Core.<$> etag,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("onlinePredictionConsoleLogging" Core..=)
              Core.<$> onlinePredictionConsoleLogging,
            ("onlinePredictionLogging" Core..=)
              Core.<$> onlinePredictionLogging,
            ("regions" Core..=) Core.<$> regions
          ]
      )

-- | Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
--
-- /See:/ 'newGoogleCloudMlV1__Model_Labels' smart constructor.
newtype GoogleCloudMlV1__Model_Labels = GoogleCloudMlV1__Model_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Model_Labels' with the minimum fields required to make a request.
newGoogleCloudMlV1__Model_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudMlV1__Model_Labels
newGoogleCloudMlV1__Model_Labels additional =
  GoogleCloudMlV1__Model_Labels {additional = additional}

instance Core.FromJSON GoogleCloudMlV1__Model_Labels where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Model_Labels"
      ( \o ->
          GoogleCloudMlV1__Model_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleCloudMlV1__Model_Labels where
  toJSON GoogleCloudMlV1__Model_Labels {..} =
    Core.toJSON additional

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'newGoogleCloudMlV1__OperationMetadata' smart constructor.
data GoogleCloudMlV1__OperationMetadata = GoogleCloudMlV1__OperationMetadata
  { -- | The time the operation was submitted.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The time operation processing completed.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Indicates whether a request to cancel this operation has been made.
    isCancellationRequested :: (Core.Maybe Core.Bool),
    -- | The user labels, inherited from the model or the model version being operated on.
    labels :: (Core.Maybe GoogleCloudMlV1__OperationMetadata_Labels),
    -- | Contains the name of the model associated with the operation.
    modelName :: (Core.Maybe Core.Text),
    -- | The operation type.
    operationType :: (Core.Maybe GoogleCloudMlV1__OperationMetadata_OperationType),
    -- | Contains the project number associated with the operation.
    projectNumber :: (Core.Maybe Core.Int64),
    -- | The time operation processing started.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Contains the version associated with the operation.
    version :: (Core.Maybe GoogleCloudMlV1__Version)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__OperationMetadata' with the minimum fields required to make a request.
newGoogleCloudMlV1__OperationMetadata ::
  GoogleCloudMlV1__OperationMetadata
newGoogleCloudMlV1__OperationMetadata =
  GoogleCloudMlV1__OperationMetadata
    { createTime = Core.Nothing,
      endTime = Core.Nothing,
      isCancellationRequested = Core.Nothing,
      labels = Core.Nothing,
      modelName = Core.Nothing,
      operationType = Core.Nothing,
      projectNumber = Core.Nothing,
      startTime = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__OperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__OperationMetadata"
      ( \o ->
          GoogleCloudMlV1__OperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "isCancellationRequested")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "modelName")
            Core.<*> (o Core..:? "operationType")
            Core.<*> ( o Core..:? "projectNumber"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__OperationMetadata
  where
  toJSON GoogleCloudMlV1__OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("isCancellationRequested" Core..=)
              Core.<$> isCancellationRequested,
            ("labels" Core..=) Core.<$> labels,
            ("modelName" Core..=) Core.<$> modelName,
            ("operationType" Core..=) Core.<$> operationType,
            ("projectNumber" Core..=) Core.. Core.AsText
              Core.<$> projectNumber,
            ("startTime" Core..=) Core.<$> startTime,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | The user labels, inherited from the model or the model version being operated on.
--
-- /See:/ 'newGoogleCloudMlV1__OperationMetadata_Labels' smart constructor.
newtype GoogleCloudMlV1__OperationMetadata_Labels = GoogleCloudMlV1__OperationMetadata_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__OperationMetadata_Labels' with the minimum fields required to make a request.
newGoogleCloudMlV1__OperationMetadata_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudMlV1__OperationMetadata_Labels
newGoogleCloudMlV1__OperationMetadata_Labels additional =
  GoogleCloudMlV1__OperationMetadata_Labels {additional = additional}

instance
  Core.FromJSON
    GoogleCloudMlV1__OperationMetadata_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__OperationMetadata_Labels"
      ( \o ->
          GoogleCloudMlV1__OperationMetadata_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__OperationMetadata_Labels
  where
  toJSON GoogleCloudMlV1__OperationMetadata_Labels {..} =
    Core.toJSON additional

-- | Represents a single hyperparameter to optimize.
--
-- /See:/ 'newGoogleCloudMlV1__ParameterSpec' smart constructor.
data GoogleCloudMlV1__ParameterSpec = GoogleCloudMlV1__ParameterSpec
  { -- | Required if type is @CATEGORICAL@. The list of possible categories.
    categoricalValues :: (Core.Maybe [Core.Text]),
    -- | Required if type is @DISCRETE@. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
    discreteValues :: (Core.Maybe [Core.Double]),
    -- | Required if type is @DOUBLE@ or @INTEGER@. This field should be unset if type is @CATEGORICAL@. This value should be integers if type is @INTEGER@.
    maxValue :: (Core.Maybe Core.Double),
    -- | Required if type is @DOUBLE@ or @INTEGER@. This field should be unset if type is @CATEGORICAL@. This value should be integers if type is INTEGER.
    minValue :: (Core.Maybe Core.Double),
    -- | Required. The parameter name must be unique amongst all ParameterConfigs in a HyperparameterSpec message. E.g., \"learning_rate\".
    parameterName :: (Core.Maybe Core.Text),
    -- | Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parameters. Some kind of scaling is strongly recommended for real or integral parameters (e.g., @UNIT_LINEAR_SCALE@).
    scaleType :: (Core.Maybe GoogleCloudMlV1__ParameterSpec_ScaleType),
    -- | Required. The type of the parameter.
    type' :: (Core.Maybe GoogleCloudMlV1__ParameterSpec_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ParameterSpec' with the minimum fields required to make a request.
newGoogleCloudMlV1__ParameterSpec ::
  GoogleCloudMlV1__ParameterSpec
newGoogleCloudMlV1__ParameterSpec =
  GoogleCloudMlV1__ParameterSpec
    { categoricalValues = Core.Nothing,
      discreteValues = Core.Nothing,
      maxValue = Core.Nothing,
      minValue = Core.Nothing,
      parameterName = Core.Nothing,
      scaleType = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__ParameterSpec where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ParameterSpec"
      ( \o ->
          GoogleCloudMlV1__ParameterSpec
            Core.<$> (o Core..:? "categoricalValues")
            Core.<*> (o Core..:? "discreteValues")
            Core.<*> (o Core..:? "maxValue")
            Core.<*> (o Core..:? "minValue")
            Core.<*> (o Core..:? "parameterName")
            Core.<*> (o Core..:? "scaleType")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON GoogleCloudMlV1__ParameterSpec where
  toJSON GoogleCloudMlV1__ParameterSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("categoricalValues" Core..=)
              Core.<$> categoricalValues,
            ("discreteValues" Core..=) Core.<$> discreteValues,
            ("maxValue" Core..=) Core.<$> maxValue,
            ("minValue" Core..=) Core.<$> minValue,
            ("parameterName" Core..=) Core.<$> parameterName,
            ("scaleType" Core..=) Core.<$> scaleType,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Request for predictions to be issued against a trained model.
--
-- /See:/ 'newGoogleCloudMlV1__PredictRequest' smart constructor.
newtype GoogleCloudMlV1__PredictRequest = GoogleCloudMlV1__PredictRequest
  { -- | Required. The prediction request body. Refer to the <#request-body-details request body details section> for more information on how to structure your request.
    httpBody :: (Core.Maybe GoogleApi__HttpBody)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__PredictRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__PredictRequest ::
  GoogleCloudMlV1__PredictRequest
newGoogleCloudMlV1__PredictRequest =
  GoogleCloudMlV1__PredictRequest {httpBody = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__PredictRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__PredictRequest"
      ( \o ->
          GoogleCloudMlV1__PredictRequest
            Core.<$> (o Core..:? "httpBody")
      )

instance Core.ToJSON GoogleCloudMlV1__PredictRequest where
  toJSON GoogleCloudMlV1__PredictRequest {..} =
    Core.object
      ( Core.catMaybes
          [("httpBody" Core..=) Core.<$> httpBody]
      )

-- | Represents input parameters for a prediction job.
--
-- /See:/ 'newGoogleCloudMlV1__PredictionInput' smart constructor.
data GoogleCloudMlV1__PredictionInput = GoogleCloudMlV1__PredictionInput
  { -- | Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number of records in memory before invoking one Tensorflow prediction call internally. So take the record size and memory available into consideration when setting this parameter.
    batchSize :: (Core.Maybe Core.Int64),
    -- | Required. The format of the input data files.
    dataFormat :: (Core.Maybe GoogleCloudMlV1__PredictionInput_DataFormat),
    -- | Required. The Cloud Storage location of the input data files. May contain wildcards.
    inputPaths :: (Core.Maybe [Core.Text]),
    -- | Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not specified.
    maxWorkerCount :: (Core.Maybe Core.Int64),
    -- | Use this field if you want to use the default version for the specified model. The string must use the following format: @\"projects\/YOUR_PROJECT\/models\/YOUR_MODEL\"@
    modelName :: (Core.Maybe Core.Text),
    -- | Optional. Format of the output data files, defaults to JSON.
    outputDataFormat :: (Core.Maybe GoogleCloudMlV1__PredictionInput_OutputDataFormat),
    -- | Required. The output Google Cloud Storage location.
    outputPath :: (Core.Maybe Core.Text),
    -- | Required. The Google Compute Engine region to run the prediction job in. See the available regions for AI Platform services.
    region :: (Core.Maybe Core.Text),
    -- | Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platform will pick the runtime version used during the CreateVersion request for this model version, or choose the latest stable version when model version information is not available such as when the model is specified by uri.
    runtimeVersion :: (Core.Maybe Core.Text),
    -- | Optional. The name of the signature defined in the SavedModel to use for this job. Please refer to <https://tensorflow.github.io/serving/serving_basic.html SavedModel> for information about how to use signatures. Defaults to <https://www.tensorflow.org/api_docs/python/tf/saved_model/signature_constants DEFAULTSERVINGSIGNATUREDEFKEY> , which is \"serving_default\".
    signatureName :: (Core.Maybe Core.Text),
    -- | Use this field if you want to specify a Google Cloud Storage path for the model to use.
    uri :: (Core.Maybe Core.Text),
    -- | Use this field if you want to specify a version of the model to use. The string is formatted the same way as @model_version@, with the addition of the version information: @\"projects\/YOUR_PROJECT\/models\/YOUR_MODEL\/versions\/YOUR_VERSION\"@
    versionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__PredictionInput' with the minimum fields required to make a request.
newGoogleCloudMlV1__PredictionInput ::
  GoogleCloudMlV1__PredictionInput
newGoogleCloudMlV1__PredictionInput =
  GoogleCloudMlV1__PredictionInput
    { batchSize = Core.Nothing,
      dataFormat = Core.Nothing,
      inputPaths = Core.Nothing,
      maxWorkerCount = Core.Nothing,
      modelName = Core.Nothing,
      outputDataFormat = Core.Nothing,
      outputPath = Core.Nothing,
      region = Core.Nothing,
      runtimeVersion = Core.Nothing,
      signatureName = Core.Nothing,
      uri = Core.Nothing,
      versionName = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__PredictionInput
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__PredictionInput"
      ( \o ->
          GoogleCloudMlV1__PredictionInput
            Core.<$> ( o Core..:? "batchSize"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "dataFormat")
            Core.<*> (o Core..:? "inputPaths")
            Core.<*> ( o Core..:? "maxWorkerCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "modelName")
            Core.<*> (o Core..:? "outputDataFormat")
            Core.<*> (o Core..:? "outputPath")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "runtimeVersion")
            Core.<*> (o Core..:? "signatureName")
            Core.<*> (o Core..:? "uri")
            Core.<*> (o Core..:? "versionName")
      )

instance Core.ToJSON GoogleCloudMlV1__PredictionInput where
  toJSON GoogleCloudMlV1__PredictionInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("batchSize" Core..=) Core.. Core.AsText
              Core.<$> batchSize,
            ("dataFormat" Core..=) Core.<$> dataFormat,
            ("inputPaths" Core..=) Core.<$> inputPaths,
            ("maxWorkerCount" Core..=) Core.. Core.AsText
              Core.<$> maxWorkerCount,
            ("modelName" Core..=) Core.<$> modelName,
            ("outputDataFormat" Core..=)
              Core.<$> outputDataFormat,
            ("outputPath" Core..=) Core.<$> outputPath,
            ("region" Core..=) Core.<$> region,
            ("runtimeVersion" Core..=) Core.<$> runtimeVersion,
            ("signatureName" Core..=) Core.<$> signatureName,
            ("uri" Core..=) Core.<$> uri,
            ("versionName" Core..=) Core.<$> versionName
          ]
      )

-- | Represents results of a prediction job.
--
-- /See:/ 'newGoogleCloudMlV1__PredictionOutput' smart constructor.
data GoogleCloudMlV1__PredictionOutput = GoogleCloudMlV1__PredictionOutput
  { -- | The number of data instances which resulted in errors.
    errorCount :: (Core.Maybe Core.Int64),
    -- | Node hours used by the batch prediction job.
    nodeHours :: (Core.Maybe Core.Double),
    -- | The output Google Cloud Storage location provided at the job creation time.
    outputPath :: (Core.Maybe Core.Text),
    -- | The number of generated predictions.
    predictionCount :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__PredictionOutput' with the minimum fields required to make a request.
newGoogleCloudMlV1__PredictionOutput ::
  GoogleCloudMlV1__PredictionOutput
newGoogleCloudMlV1__PredictionOutput =
  GoogleCloudMlV1__PredictionOutput
    { errorCount = Core.Nothing,
      nodeHours = Core.Nothing,
      outputPath = Core.Nothing,
      predictionCount = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__PredictionOutput
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__PredictionOutput"
      ( \o ->
          GoogleCloudMlV1__PredictionOutput
            Core.<$> ( o Core..:? "errorCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "nodeHours")
            Core.<*> (o Core..:? "outputPath")
            Core.<*> ( o Core..:? "predictionCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__PredictionOutput
  where
  toJSON GoogleCloudMlV1__PredictionOutput {..} =
    Core.object
      ( Core.catMaybes
          [ ("errorCount" Core..=) Core.. Core.AsText
              Core.<$> errorCount,
            ("nodeHours" Core..=) Core.<$> nodeHours,
            ("outputPath" Core..=) Core.<$> outputPath,
            ("predictionCount" Core..=) Core.. Core.AsText
              Core.<$> predictionCount
          ]
      )

-- | Represents the configuration for a replica in a cluster.
--
-- /See:/ 'newGoogleCloudMlV1__ReplicaConfig' smart constructor.
data GoogleCloudMlV1__ReplicaConfig = GoogleCloudMlV1__ReplicaConfig
  { -- | Represents the type and number of accelerators used by the replica. </ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu Learn about restrictions on accelerator configurations for training.>
    acceleratorConfig :: (Core.Maybe GoogleCloudMlV1__AcceleratorConfig),
    -- | Arguments to the entrypoint command. The following rules apply for container/command and container/args: - If you do not supply command or args: The defaults defined in the Docker image are used. - If you supply a command but no args: The default EntryPoint and the default Cmd defined in the Docker image are ignored. Your command is run without any arguments. - If you supply only args: The default Entrypoint defined in the Docker image is run with the args that you supplied. - If you supply a command and args: The default Entrypoint and the default Cmd defined in the Docker image are ignored. Your command is run with your args. It cannot be set if custom container image is not provided. Note that this field and [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at the same time.
    containerArgs :: (Core.Maybe [Core.Text]),
    -- | The command with which the replica\'s custom container is run. If provided, it will override default ENTRYPOINT of the docker image. If not provided, the docker image\'s ENTRYPOINT is used. It cannot be set if custom container image is not provided. Note that this field and [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at the same time.
    containerCommand :: (Core.Maybe [Core.Text]),
    -- | Represents the configuration of disk options.
    diskConfig :: (Core.Maybe GoogleCloudMlV1__DiskConfig),
    -- | The Docker image to run on the replica. This image must be in Container Registry. Learn more about </ai-platform/training/docs/distributed-training-containers configuring custom containers>.
    imageUri :: (Core.Maybe Core.Text),
    -- | The AI Platform runtime version that includes a TensorFlow version matching the one used in the custom container. This field is required if the replica is a TPU worker that uses a custom container. Otherwise, do not specify this field. This must be a </ml-engine/docs/tensorflow/runtime-version-list#tpu-support runtime version that currently supports training with TPUs>. Note that the version of TensorFlow included in a runtime version may differ from the numbering of the runtime version itself, because it may have a different <https://www.tensorflow.org/guide/version_compat#semantic_versioning_20 patch version>. In this field, you must specify the runtime version (TensorFlow minor version). For example, if your custom container runs TensorFlow @1.x.y@, specify @1.x@.
    tpuTfVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__ReplicaConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1__ReplicaConfig ::
  GoogleCloudMlV1__ReplicaConfig
newGoogleCloudMlV1__ReplicaConfig =
  GoogleCloudMlV1__ReplicaConfig
    { acceleratorConfig = Core.Nothing,
      containerArgs = Core.Nothing,
      containerCommand = Core.Nothing,
      diskConfig = Core.Nothing,
      imageUri = Core.Nothing,
      tpuTfVersion = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__ReplicaConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__ReplicaConfig"
      ( \o ->
          GoogleCloudMlV1__ReplicaConfig
            Core.<$> (o Core..:? "acceleratorConfig")
            Core.<*> (o Core..:? "containerArgs")
            Core.<*> (o Core..:? "containerCommand")
            Core.<*> (o Core..:? "diskConfig")
            Core.<*> (o Core..:? "imageUri")
            Core.<*> (o Core..:? "tpuTfVersion")
      )

instance Core.ToJSON GoogleCloudMlV1__ReplicaConfig where
  toJSON GoogleCloudMlV1__ReplicaConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorConfig" Core..=)
              Core.<$> acceleratorConfig,
            ("containerArgs" Core..=) Core.<$> containerArgs,
            ("containerCommand" Core..=)
              Core.<$> containerCommand,
            ("diskConfig" Core..=) Core.<$> diskConfig,
            ("imageUri" Core..=) Core.<$> imageUri,
            ("tpuTfVersion" Core..=) Core.<$> tpuTfVersion
          ]
      )

-- | Configuration for logging request-response pairs to a BigQuery table. Online prediction requests to a model version and the responses to these requests are converted to raw strings and saved to the specified BigQuery table. Logging is constrained by </bigquery/quotas BigQuery quotas and limits>. If your project exceeds BigQuery quotas or limits, AI Platform Prediction does not log request-response pairs, but it continues to serve predictions. If you are using </ml-engine/docs/continuous-evaluation/ continuous evaluation>, you do not need to specify this configuration manually. Setting up continuous evaluation automatically enables logging of request-response pairs.
--
-- /See:/ 'newGoogleCloudMlV1__RequestLoggingConfig' smart constructor.
data GoogleCloudMlV1__RequestLoggingConfig = GoogleCloudMlV1__RequestLoggingConfig
  { -- | Required. Fully qualified BigQuery table name in the following format: \" project/id.dataset/name.table/name\" The specified table must already exist, and the \"Cloud ML Service Agent\" for your project must have permission to write to it. The table must have the following </bigquery/docs/schemas schema>: Field nameType Mode model STRING REQUIRED model/version STRING REQUIRED time TIMESTAMP REQUIRED raw/data STRING REQUIRED raw/prediction STRING NULLABLE groundtruth STRING NULLABLE
    bigqueryTableName :: (Core.Maybe Core.Text),
    -- | Percentage of requests to be logged, expressed as a fraction from 0 to 1. For example, if you want to log 10% of requests, enter @0.1@. The sampling window is the lifetime of the model version. Defaults to 0.
    samplingPercentage :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__RequestLoggingConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1__RequestLoggingConfig ::
  GoogleCloudMlV1__RequestLoggingConfig
newGoogleCloudMlV1__RequestLoggingConfig =
  GoogleCloudMlV1__RequestLoggingConfig
    { bigqueryTableName = Core.Nothing,
      samplingPercentage = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__RequestLoggingConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__RequestLoggingConfig"
      ( \o ->
          GoogleCloudMlV1__RequestLoggingConfig
            Core.<$> (o Core..:? "bigqueryTableName")
            Core.<*> (o Core..:? "samplingPercentage")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__RequestLoggingConfig
  where
  toJSON GoogleCloudMlV1__RequestLoggingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bigqueryTableName" Core..=)
              Core.<$> bigqueryTableName,
            ("samplingPercentage" Core..=)
              Core.<$> samplingPercentage
          ]
      )

-- | Specifies HTTP paths served by a custom container. AI Platform Prediction sends requests to these paths on the container; the custom container must run an HTTP server that responds to these requests with appropriate responses. Read </ai-platform/prediction/docs/custom-container-requirements Custom container requirements> for details on how to create your container image to meet these requirements.
--
-- /See:/ 'newGoogleCloudMlV1__RouteMap' smart constructor.
data GoogleCloudMlV1__RouteMap = GoogleCloudMlV1__RouteMap
  { -- | HTTP path on the container to send health checkss to. AI Platform Prediction intermittently sends GET requests to this path on the container\'s IP address and port to check that the container is healthy. Read more about </ai-platform/prediction/docs/custom-container-requirements#checks health checks>. For example, if you set this field to @\/bar@, then AI Platform Prediction intermittently sends a GET request to the @\/bar@ path on the port of your container specified by the first value of Version.container.ports. If you don\'t specify this field, it defaults to the following value: \/v1\/models\/ MODEL\/versions\/VERSION The placeholders in this value are replaced as follows: * MODEL: The name of the parent Model. This does not include the \"projects\/PROJECT/ID\/models\/\" prefix that the API returns in output; it is the bare model name, as provided to projects.models.create. * VERSION: The name of the model version. This does not include the \"projects\/PROJECT/ID \/models\/MODEL\/versions\/\" prefix that
    -- the API returns in output; it is the bare version name, as provided to projects.models.versions.create.
    health :: (Core.Maybe Core.Text),
    -- | HTTP path on the container to send prediction requests to. AI Platform Prediction forwards requests sent using projects.predict to this path on the container\'s IP address and port. AI Platform Prediction then returns the container\'s response in the API response. For example, if you set this field to @\/foo@, then when AI Platform Prediction receives a prediction request, it forwards the request body in a POST request to the @\/foo@ path on the port of your container specified by the first value of Version.container.ports. If you don\'t specify this field, it defaults to the following value: \/v1\/models\/MODEL\/versions\/VERSION:predict The placeholders in this value are replaced as follows: * MODEL: The name of the parent Model. This does not include the \"projects\/PROJECT/ID\/models\/\" prefix that the API returns in output; it is the bare model name, as provided to projects.models.create. * VERSION: The name of the model version. This does not include the
    -- \"projects\/PROJECT/ID\/models\/MODEL\/versions\/\" prefix that the API returns in output; it is the bare version name, as provided to projects.models.versions.create.
    predict :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__RouteMap' with the minimum fields required to make a request.
newGoogleCloudMlV1__RouteMap ::
  GoogleCloudMlV1__RouteMap
newGoogleCloudMlV1__RouteMap =
  GoogleCloudMlV1__RouteMap {health = Core.Nothing, predict = Core.Nothing}

instance Core.FromJSON GoogleCloudMlV1__RouteMap where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__RouteMap"
      ( \o ->
          GoogleCloudMlV1__RouteMap
            Core.<$> (o Core..:? "health")
            Core.<*> (o Core..:? "predict")
      )

instance Core.ToJSON GoogleCloudMlV1__RouteMap where
  toJSON GoogleCloudMlV1__RouteMap {..} =
    Core.object
      ( Core.catMaybes
          [ ("health" Core..=) Core.<$> health,
            ("predict" Core..=) Core.<$> predict
          ]
      )

-- | An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
--
-- /See:/ 'newGoogleCloudMlV1__SampledShapleyAttribution' smart constructor.
newtype GoogleCloudMlV1__SampledShapleyAttribution = GoogleCloudMlV1__SampledShapleyAttribution
  { -- | The number of feature permutations to consider when approximating the Shapley values.
    numPaths :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__SampledShapleyAttribution' with the minimum fields required to make a request.
newGoogleCloudMlV1__SampledShapleyAttribution ::
  GoogleCloudMlV1__SampledShapleyAttribution
newGoogleCloudMlV1__SampledShapleyAttribution =
  GoogleCloudMlV1__SampledShapleyAttribution {numPaths = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__SampledShapleyAttribution
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__SampledShapleyAttribution"
      ( \o ->
          GoogleCloudMlV1__SampledShapleyAttribution
            Core.<$> (o Core..:? "numPaths")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__SampledShapleyAttribution
  where
  toJSON GoogleCloudMlV1__SampledShapleyAttribution {..} =
    Core.object
      ( Core.catMaybes
          [("numPaths" Core..=) Core.<$> numPaths]
      )

-- | All parameters related to scheduling of training jobs.
--
-- /See:/ 'newGoogleCloudMlV1__Scheduling' smart constructor.
data GoogleCloudMlV1__Scheduling = GoogleCloudMlV1__Scheduling
  { -- | Optional. The maximum job running time, expressed in seconds. The field can contain up to nine fractional digits, terminated by @s@. If not specified, this field defaults to @604800s@ (seven days). If the training job is still running after this duration, AI Platform Training cancels it. The duration is measured from when the job enters the @RUNNING@ state; therefore it does not overlap with the duration limited by Scheduling.max/wait/time. For example, if you want to ensure your job runs for no more than 2 hours, set this field to @7200s@ (2 hours * 60 minutes \/ hour * 60 seconds \/ minute). If you submit your training job using the @gcloud@ tool, you can </ai-platform/training/docs/training-jobs#formatting_your_configuration_parameters specify this field in a config.yaml file>. For example: @yaml trainingInput: scheduling: maxRunningTime: 7200s@
    maxRunningTime :: (Core.Maybe Core.Duration),
    -- | Optional. The maximum job wait time, expressed in seconds. The field can contain up to nine fractional digits, terminated by @s@. If not specified, there is no limit to the wait time. The minimum for this field is @1800s@ (30 minutes). If the training job has not entered the @RUNNING@ state after this duration, AI Platform Training cancels it. After the job begins running, it can no longer be cancelled due to the maximum wait time. Therefore the duration limited by this field does not overlap with the duration limited by Scheduling.max/running/time. For example, if the job temporarily stops running and retries due to a </ai-platform/training/docs/overview#restarts VM restart>, this cannot lead to a maximum wait time cancellation. However, independently of this constraint, AI Platform Training might stop a job if there are too many retries due to exhausted resources in a region. The following example describes how you might use this field: To cancel your job if it doesn\'t start running within 1 hour, set this
    -- field to @3600s@ (1 hour * 60 minutes \/ hour * 60 seconds \/ minute). If the job is still in the @QUEUED@ or @PREPARING@ state after an hour of waiting, AI Platform Training cancels the job. If you submit your training job using the @gcloud@ tool, you can </ai-platform/training/docs/training-jobs#formatting_your_configuration_parameters specify this field in a config.yaml file>. For example: @yaml trainingInput: scheduling: maxWaitTime: 3600s@
    maxWaitTime :: (Core.Maybe Core.Duration),
    -- | Optional. Job scheduling will be based on this priority, which in the range [0, 1000]. The bigger the number, the higher the priority. Default to 0 if not set. If there are multiple jobs requesting same type of accelerators, the high priority job will be scheduled prior to ones with low priority.
    priority :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Scheduling' with the minimum fields required to make a request.
newGoogleCloudMlV1__Scheduling ::
  GoogleCloudMlV1__Scheduling
newGoogleCloudMlV1__Scheduling =
  GoogleCloudMlV1__Scheduling
    { maxRunningTime = Core.Nothing,
      maxWaitTime = Core.Nothing,
      priority = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__Scheduling where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Scheduling"
      ( \o ->
          GoogleCloudMlV1__Scheduling
            Core.<$> (o Core..:? "maxRunningTime")
            Core.<*> (o Core..:? "maxWaitTime")
            Core.<*> (o Core..:? "priority")
      )

instance Core.ToJSON GoogleCloudMlV1__Scheduling where
  toJSON GoogleCloudMlV1__Scheduling {..} =
    Core.object
      ( Core.catMaybes
          [ ("maxRunningTime" Core..=) Core.<$> maxRunningTime,
            ("maxWaitTime" Core..=) Core.<$> maxWaitTime,
            ("priority" Core..=) Core.<$> priority
          ]
      )

-- | Request message for the SetDefaultVersion request.
--
-- /See:/ 'newGoogleCloudMlV1__SetDefaultVersionRequest' smart constructor.
data GoogleCloudMlV1__SetDefaultVersionRequest = GoogleCloudMlV1__SetDefaultVersionRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__SetDefaultVersionRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__SetDefaultVersionRequest ::
  GoogleCloudMlV1__SetDefaultVersionRequest
newGoogleCloudMlV1__SetDefaultVersionRequest =
  GoogleCloudMlV1__SetDefaultVersionRequest

instance
  Core.FromJSON
    GoogleCloudMlV1__SetDefaultVersionRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__SetDefaultVersionRequest"
      ( \o ->
          Core.pure GoogleCloudMlV1__SetDefaultVersionRequest
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__SetDefaultVersionRequest
  where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newGoogleCloudMlV1__StopTrialRequest' smart constructor.
data GoogleCloudMlV1__StopTrialRequest = GoogleCloudMlV1__StopTrialRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__StopTrialRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__StopTrialRequest ::
  GoogleCloudMlV1__StopTrialRequest
newGoogleCloudMlV1__StopTrialRequest = GoogleCloudMlV1__StopTrialRequest

instance
  Core.FromJSON
    GoogleCloudMlV1__StopTrialRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__StopTrialRequest"
      (\o -> Core.pure GoogleCloudMlV1__StopTrialRequest)

instance
  Core.ToJSON
    GoogleCloudMlV1__StopTrialRequest
  where
  toJSON = Core.const Core.emptyObject

-- | A message representing a Study.
--
-- /See:/ 'newGoogleCloudMlV1__Study' smart constructor.
data GoogleCloudMlV1__Study = GoogleCloudMlV1__Study
  { -- | Output only. Time at which the study was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.
    inactiveReason :: (Core.Maybe Core.Text),
    -- | Output only. The name of a study.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The detailed state of a study.
    state :: (Core.Maybe GoogleCloudMlV1__Study_State),
    -- | Required. Configuration of the study.
    studyConfig :: (Core.Maybe GoogleCloudMlV1__StudyConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Study' with the minimum fields required to make a request.
newGoogleCloudMlV1__Study ::
  GoogleCloudMlV1__Study
newGoogleCloudMlV1__Study =
  GoogleCloudMlV1__Study
    { createTime = Core.Nothing,
      inactiveReason = Core.Nothing,
      name = Core.Nothing,
      state = Core.Nothing,
      studyConfig = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__Study where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Study"
      ( \o ->
          GoogleCloudMlV1__Study
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "inactiveReason")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "studyConfig")
      )

instance Core.ToJSON GoogleCloudMlV1__Study where
  toJSON GoogleCloudMlV1__Study {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("inactiveReason" Core..=) Core.<$> inactiveReason,
            ("name" Core..=) Core.<$> name,
            ("state" Core..=) Core.<$> state,
            ("studyConfig" Core..=) Core.<$> studyConfig
          ]
      )

-- | Represents configuration of a study.
--
-- /See:/ 'newGoogleCloudMlV1__StudyConfig' smart constructor.
data GoogleCloudMlV1__StudyConfig = GoogleCloudMlV1__StudyConfig
  { -- | The search algorithm specified for the study.
    algorithm :: (Core.Maybe GoogleCloudMlV1__StudyConfig_Algorithm),
    -- | Configuration for automated stopping of unpromising Trials.
    automatedStoppingConfig :: (Core.Maybe GoogleCloudMlV1__AutomatedStoppingConfig),
    -- | Metric specs for the study.
    metrics :: (Core.Maybe [GoogleCloudMlV1_StudyConfig_MetricSpec]),
    -- | Required. The set of parameters to tune.
    parameters :: (Core.Maybe [GoogleCloudMlV1_StudyConfig_ParameterSpec])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__StudyConfig' with the minimum fields required to make a request.
newGoogleCloudMlV1__StudyConfig ::
  GoogleCloudMlV1__StudyConfig
newGoogleCloudMlV1__StudyConfig =
  GoogleCloudMlV1__StudyConfig
    { algorithm = Core.Nothing,
      automatedStoppingConfig = Core.Nothing,
      metrics = Core.Nothing,
      parameters = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__StudyConfig where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__StudyConfig"
      ( \o ->
          GoogleCloudMlV1__StudyConfig
            Core.<$> (o Core..:? "algorithm")
            Core.<*> (o Core..:? "automatedStoppingConfig")
            Core.<*> (o Core..:? "metrics")
            Core.<*> (o Core..:? "parameters")
      )

instance Core.ToJSON GoogleCloudMlV1__StudyConfig where
  toJSON GoogleCloudMlV1__StudyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("algorithm" Core..=) Core.<$> algorithm,
            ("automatedStoppingConfig" Core..=)
              Core.<$> automatedStoppingConfig,
            ("metrics" Core..=) Core.<$> metrics,
            ("parameters" Core..=) Core.<$> parameters
          ]
      )

-- | Metadata field of a google.longrunning.Operation associated with a SuggestTrialsRequest.
--
-- /See:/ 'newGoogleCloudMlV1__SuggestTrialsMetadata' smart constructor.
data GoogleCloudMlV1__SuggestTrialsMetadata = GoogleCloudMlV1__SuggestTrialsMetadata
  { -- | The identifier of the client that is requesting the suggestion.
    clientId :: (Core.Maybe Core.Text),
    -- | The time operation was submitted.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The name of the study that the trial belongs to.
    study :: (Core.Maybe Core.Text),
    -- | The number of suggestions requested.
    suggestionCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__SuggestTrialsMetadata' with the minimum fields required to make a request.
newGoogleCloudMlV1__SuggestTrialsMetadata ::
  GoogleCloudMlV1__SuggestTrialsMetadata
newGoogleCloudMlV1__SuggestTrialsMetadata =
  GoogleCloudMlV1__SuggestTrialsMetadata
    { clientId = Core.Nothing,
      createTime = Core.Nothing,
      study = Core.Nothing,
      suggestionCount = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__SuggestTrialsMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__SuggestTrialsMetadata"
      ( \o ->
          GoogleCloudMlV1__SuggestTrialsMetadata
            Core.<$> (o Core..:? "clientId")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "study")
            Core.<*> (o Core..:? "suggestionCount")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__SuggestTrialsMetadata
  where
  toJSON GoogleCloudMlV1__SuggestTrialsMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientId" Core..=) Core.<$> clientId,
            ("createTime" Core..=) Core.<$> createTime,
            ("study" Core..=) Core.<$> study,
            ("suggestionCount" Core..=)
              Core.<$> suggestionCount
          ]
      )

-- | The request message for the SuggestTrial service method.
--
-- /See:/ 'newGoogleCloudMlV1__SuggestTrialsRequest' smart constructor.
data GoogleCloudMlV1__SuggestTrialsRequest = GoogleCloudMlV1__SuggestTrialsRequest
  { -- | Required. The identifier of the client that is requesting the suggestion. If multiple SuggestTrialsRequests have the same @client_id@, the service will return the identical suggested trial if the trial is pending, and provide a new trial if the last suggested trial was completed.
    clientId :: (Core.Maybe Core.Text),
    -- | Required. The number of suggestions requested.
    suggestionCount :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__SuggestTrialsRequest' with the minimum fields required to make a request.
newGoogleCloudMlV1__SuggestTrialsRequest ::
  GoogleCloudMlV1__SuggestTrialsRequest
newGoogleCloudMlV1__SuggestTrialsRequest =
  GoogleCloudMlV1__SuggestTrialsRequest
    { clientId = Core.Nothing,
      suggestionCount = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__SuggestTrialsRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__SuggestTrialsRequest"
      ( \o ->
          GoogleCloudMlV1__SuggestTrialsRequest
            Core.<$> (o Core..:? "clientId")
            Core.<*> (o Core..:? "suggestionCount")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__SuggestTrialsRequest
  where
  toJSON GoogleCloudMlV1__SuggestTrialsRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientId" Core..=) Core.<$> clientId,
            ("suggestionCount" Core..=)
              Core.<$> suggestionCount
          ]
      )

-- | This message will be placed in the response field of a completed google.longrunning.Operation associated with a SuggestTrials request.
--
-- /See:/ 'newGoogleCloudMlV1__SuggestTrialsResponse' smart constructor.
data GoogleCloudMlV1__SuggestTrialsResponse = GoogleCloudMlV1__SuggestTrialsResponse
  { -- | The time at which operation processing completed.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The time at which the operation was started.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The state of the study.
    studyState :: (Core.Maybe GoogleCloudMlV1__SuggestTrialsResponse_StudyState),
    -- | A list of trials.
    trials :: (Core.Maybe [GoogleCloudMlV1__Trial])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__SuggestTrialsResponse' with the minimum fields required to make a request.
newGoogleCloudMlV1__SuggestTrialsResponse ::
  GoogleCloudMlV1__SuggestTrialsResponse
newGoogleCloudMlV1__SuggestTrialsResponse =
  GoogleCloudMlV1__SuggestTrialsResponse
    { endTime = Core.Nothing,
      startTime = Core.Nothing,
      studyState = Core.Nothing,
      trials = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__SuggestTrialsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__SuggestTrialsResponse"
      ( \o ->
          GoogleCloudMlV1__SuggestTrialsResponse
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "studyState")
            Core.<*> (o Core..:? "trials")
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__SuggestTrialsResponse
  where
  toJSON GoogleCloudMlV1__SuggestTrialsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime,
            ("studyState" Core..=) Core.<$> studyState,
            ("trials" Core..=) Core.<$> trials
          ]
      )

-- | Represents input parameters for a training job. When using the gcloud command to submit your training job, you can specify the input parameters as command-line arguments and\/or in a YAML configuration file referenced from the --config command-line argument. For details, see the guide to </ai-platform/training/docs/training-jobs submitting a training job>.
--
-- /See:/ 'newGoogleCloudMlV1__TrainingInput' smart constructor.
data GoogleCloudMlV1__TrainingInput = GoogleCloudMlV1__TrainingInput
  { -- | Optional. Command-line arguments passed to the training application when it starts. If your job uses a custom container, then the arguments are passed to the container\'s @ENTRYPOINT@ command.
    args :: (Core.Maybe [Core.Text]),
    -- | Optional. Whether you want AI Platform Training to enable <https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell interactive shell access> to training containers. If set to @true@, you can access interactive shells at the URIs given by TrainingOutput.web/access/uris or HyperparameterOutput.web/access/uris (within TrainingOutput.trials).
    enableWebAccess :: (Core.Maybe Core.Bool),
    -- | Optional. Options for using customer-managed encryption keys (CMEK) to protect resources created by a training job, instead of using Google\'s default encryption. If this is set, then all resources created by the training job will be encrypted with the customer-managed encryption key that you specify. </ai-platform/training/docs/cmek Learn how and when to use CMEK with AI Platform Training>.
    encryptionConfig :: (Core.Maybe GoogleCloudMlV1__EncryptionConfig),
    -- | Optional. The configuration for evaluators. You should only set @evaluatorConfig.acceleratorConfig@ if @evaluatorType@ is set to a Compute Engine machine type. </ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu Learn about restrictions on accelerator configurations for training.> Set @evaluatorConfig.imageUri@ only if you build a custom image for your evaluator. If @evaluatorConfig.imageUri@ has not been set, AI Platform uses the value of @masterConfig.imageUri@. Learn more about </ai-platform/training/docs/distributed-training-containers configuring custom containers>.
    evaluatorConfig :: (Core.Maybe GoogleCloudMlV1__ReplicaConfig),
    -- | Optional. The number of evaluator replicas to use for the training job. Each replica in the cluster will be of the type specified in @evaluator_type@. This value can only be used when @scale_tier@ is set to @CUSTOM@. If you set this value, you must also set @evaluator_type@. The default value is zero.
    evaluatorCount :: (Core.Maybe Core.Int64),
    -- | Optional. Specifies the type of virtual machine to use for your training job\'s evaluator nodes. The supported values are the same as those described in the entry for @masterType@. This value must be consistent with the category of machine type that @masterType@ uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. This value must be present when @scaleTier@ is set to @CUSTOM@ and @evaluatorCount@ is greater than zero.
    evaluatorType :: (Core.Maybe Core.Text),
    -- | Optional. The set of Hyperparameters to tune.
    hyperparameters :: (Core.Maybe GoogleCloudMlV1__HyperparameterSpec),
    -- | Optional. A Google Cloud Storage path in which to store training outputs and other data needed for training. This path is passed to your TensorFlow program as the \'--job-dir\' command-line argument. The benefit of specifying this field is that Cloud ML validates the path for use in training.
    jobDir :: (Core.Maybe Core.Text),
    -- | Optional. The configuration for your master worker. You should only set @masterConfig.acceleratorConfig@ if @masterType@ is set to a Compute Engine machine type. Learn about </ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu restrictions on accelerator configurations for training.> Set @masterConfig.imageUri@ only if you build a custom image. Only one of @masterConfig.imageUri@ and @runtimeVersion@ should be set. Learn more about </ai-platform/training/docs/distributed-training-containers configuring custom containers>.
    masterConfig :: (Core.Maybe GoogleCloudMlV1__ReplicaConfig),
    -- | Optional. Specifies the type of virtual machine to use for your training job\'s master worker. You must specify this field when @scaleTier@ is set to @CUSTOM@. You can use certain Compute Engine machine types directly in this field. See the </ai-platform/training/docs/machine-types#compute-engine-machine-types list of compatible Compute Engine machine types>. Alternatively, you can use the certain legacy machine types in this field. See the </ai-platform/training/docs/machine-types#legacy-machine-types list of legacy machine types>. Finally, if you want to use a TPU for training, specify @cloud_tpu@ in this field. Learn more about the </ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine special configuration options for training with TPUs>.
    masterType :: (Core.Maybe Core.Text),
    -- | Optional. The full name of the </vpc/docs/vpc Compute Engine network> to which the Job is peered. For example, @projects\/12345\/global\/networks\/myVPC@. The format of this field is @projects\/{project}\/global\/networks\/{network}@, where {project} is a project number (like @12345@) and {network} is network name. Private services access must already be configured for the network. If left unspecified, the Job is not peered with any network. </ai-platform/training/docs/vpc-peering Learn about using VPC Network Peering.>.
    network :: (Core.Maybe Core.Text),
    -- | Required. The Google Cloud Storage location of the packages with the training program and any additional dependencies. The maximum number of package URIs is 100.
    packageUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The configuration for parameter servers. You should only set @parameterServerConfig.acceleratorConfig@ if @parameterServerType@ is set to a Compute Engine machine type. </ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu Learn about restrictions on accelerator configurations for training.> Set @parameterServerConfig.imageUri@ only if you build a custom image for your parameter server. If @parameterServerConfig.imageUri@ has not been set, AI Platform uses the value of @masterConfig.imageUri@. Learn more about </ai-platform/training/docs/distributed-training-containers configuring custom containers>.
    parameterServerConfig :: (Core.Maybe GoogleCloudMlV1__ReplicaConfig),
    -- | Optional. The number of parameter server replicas to use for the training job. Each replica in the cluster will be of the type specified in @parameter_server_type@. This value can only be used when @scale_tier@ is set to @CUSTOM@. If you set this value, you must also set @parameter_server_type@. The default value is zero.
    parameterServerCount :: (Core.Maybe Core.Int64),
    -- | Optional. Specifies the type of virtual machine to use for your training job\'s parameter server. The supported values are the same as those described in the entry for @master_type@. This value must be consistent with the category of machine type that @masterType@ uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. This value must be present when @scaleTier@ is set to @CUSTOM@ and @parameter_server_count@ is greater than zero.
    parameterServerType :: (Core.Maybe Core.Text),
    -- | Required. The Python module name to run after installing the packages.
    pythonModule :: (Core.Maybe Core.Text),
    -- | Optional. The version of Python used in training. You must either specify this field or specify @masterConfig.imageUri@. The following Python versions are available: * Python \'3.7\' is available when @runtime_version@ is set to \'1.15\' or later. * Python \'3.5\' is available when @runtime_version@ is set to a version from \'1.4\' to \'1.14\'. * Python \'2.7\' is available when @runtime_version@ is set to \'1.15\' or earlier. Read more about the Python versions available for </ml-engine/docs/runtime-version-list each runtime version>.
    pythonVersion :: (Core.Maybe Core.Text),
    -- | Required. The region to run the training job in. See the </ai-platform/training/docs/regions available regions> for AI Platform Training.
    region :: (Core.Maybe Core.Text),
    -- | Optional. The AI Platform runtime version to use for training. You must either specify this field or specify @masterConfig.imageUri@. For more information, see the </ai-platform/training/docs/runtime-version-list runtime version list> and learn </ai-platform/training/docs/versioning how to manage runtime versions>.
    runtimeVersion :: (Core.Maybe Core.Text),
    -- | Required. Specifies the machine types, the number of replicas for workers and parameter servers.
    scaleTier :: (Core.Maybe GoogleCloudMlV1__TrainingInput_ScaleTier),
    -- | Optional. Scheduling options for a training job.
    scheduling :: (Core.Maybe GoogleCloudMlV1__Scheduling),
    -- | Optional. The email address of a service account to use when running the training appplication. You must have the @iam.serviceAccounts.actAs@ permission for the specified service account. In addition, the AI Platform Training Google-managed service account must have the @roles\/iam.serviceAccountAdmin@ role for the specified service account. </ai-platform/training/docs/custom-service-account Learn more about configuring a service account.> If not specified, the AI Platform Training Google-managed service account is used by default.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Optional. Use @chief@ instead of @master@ in the @TF_CONFIG@ environment variable when training with a custom container. Defaults to @false@. </ai-platform/training/docs/distributed-training-details#chief-versus-master Learn more about this field.> This field has no effect for training jobs that don\'t use a custom container.
    useChiefInTfConfig :: (Core.Maybe Core.Bool),
    -- | Optional. The configuration for workers. You should only set @workerConfig.acceleratorConfig@ if @workerType@ is set to a Compute Engine machine type. </ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu Learn about restrictions on accelerator configurations for training.> Set @workerConfig.imageUri@ only if you build a custom image for your worker. If @workerConfig.imageUri@ has not been set, AI Platform uses the value of @masterConfig.imageUri@. Learn more about </ai-platform/training/docs/distributed-training-containers configuring custom containers>.
    workerConfig :: (Core.Maybe GoogleCloudMlV1__ReplicaConfig),
    -- | Optional. The number of worker replicas to use for the training job. Each replica in the cluster will be of the type specified in @worker_type@. This value can only be used when @scale_tier@ is set to @CUSTOM@. If you set this value, you must also set @worker_type@. The default value is zero.
    workerCount :: (Core.Maybe Core.Int64),
    -- | Optional. Specifies the type of virtual machine to use for your training job\'s worker nodes. The supported values are the same as those described in the entry for @masterType@. This value must be consistent with the category of machine type that @masterType@ uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. If you use @cloud_tpu@ for this value, see special instructions for </ml-engine/docs/tensorflow/using-tpus#configuring_a_custom_tpu_machine configuring a custom TPU machine>. This value must be present when @scaleTier@ is set to @CUSTOM@ and @workerCount@ is greater than zero.
    workerType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__TrainingInput' with the minimum fields required to make a request.
newGoogleCloudMlV1__TrainingInput ::
  GoogleCloudMlV1__TrainingInput
newGoogleCloudMlV1__TrainingInput =
  GoogleCloudMlV1__TrainingInput
    { args = Core.Nothing,
      enableWebAccess = Core.Nothing,
      encryptionConfig = Core.Nothing,
      evaluatorConfig = Core.Nothing,
      evaluatorCount = Core.Nothing,
      evaluatorType = Core.Nothing,
      hyperparameters = Core.Nothing,
      jobDir = Core.Nothing,
      masterConfig = Core.Nothing,
      masterType = Core.Nothing,
      network = Core.Nothing,
      packageUris = Core.Nothing,
      parameterServerConfig = Core.Nothing,
      parameterServerCount = Core.Nothing,
      parameterServerType = Core.Nothing,
      pythonModule = Core.Nothing,
      pythonVersion = Core.Nothing,
      region = Core.Nothing,
      runtimeVersion = Core.Nothing,
      scaleTier = Core.Nothing,
      scheduling = Core.Nothing,
      serviceAccount = Core.Nothing,
      useChiefInTfConfig = Core.Nothing,
      workerConfig = Core.Nothing,
      workerCount = Core.Nothing,
      workerType = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__TrainingInput where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__TrainingInput"
      ( \o ->
          GoogleCloudMlV1__TrainingInput
            Core.<$> (o Core..:? "args")
            Core.<*> (o Core..:? "enableWebAccess")
            Core.<*> (o Core..:? "encryptionConfig")
            Core.<*> (o Core..:? "evaluatorConfig")
            Core.<*> ( o Core..:? "evaluatorCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "evaluatorType")
            Core.<*> (o Core..:? "hyperparameters")
            Core.<*> (o Core..:? "jobDir")
            Core.<*> (o Core..:? "masterConfig")
            Core.<*> (o Core..:? "masterType")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "packageUris")
            Core.<*> (o Core..:? "parameterServerConfig")
            Core.<*> ( o Core..:? "parameterServerCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "parameterServerType")
            Core.<*> (o Core..:? "pythonModule")
            Core.<*> (o Core..:? "pythonVersion")
            Core.<*> (o Core..:? "region")
            Core.<*> (o Core..:? "runtimeVersion")
            Core.<*> (o Core..:? "scaleTier")
            Core.<*> (o Core..:? "scheduling")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "useChiefInTfConfig")
            Core.<*> (o Core..:? "workerConfig")
            Core.<*> ( o Core..:? "workerCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "workerType")
      )

instance Core.ToJSON GoogleCloudMlV1__TrainingInput where
  toJSON GoogleCloudMlV1__TrainingInput {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("enableWebAccess" Core..=) Core.<$> enableWebAccess,
            ("encryptionConfig" Core..=)
              Core.<$> encryptionConfig,
            ("evaluatorConfig" Core..=) Core.<$> evaluatorConfig,
            ("evaluatorCount" Core..=) Core.. Core.AsText
              Core.<$> evaluatorCount,
            ("evaluatorType" Core..=) Core.<$> evaluatorType,
            ("hyperparameters" Core..=) Core.<$> hyperparameters,
            ("jobDir" Core..=) Core.<$> jobDir,
            ("masterConfig" Core..=) Core.<$> masterConfig,
            ("masterType" Core..=) Core.<$> masterType,
            ("network" Core..=) Core.<$> network,
            ("packageUris" Core..=) Core.<$> packageUris,
            ("parameterServerConfig" Core..=)
              Core.<$> parameterServerConfig,
            ("parameterServerCount" Core..=) Core.. Core.AsText
              Core.<$> parameterServerCount,
            ("parameterServerType" Core..=)
              Core.<$> parameterServerType,
            ("pythonModule" Core..=) Core.<$> pythonModule,
            ("pythonVersion" Core..=) Core.<$> pythonVersion,
            ("region" Core..=) Core.<$> region,
            ("runtimeVersion" Core..=) Core.<$> runtimeVersion,
            ("scaleTier" Core..=) Core.<$> scaleTier,
            ("scheduling" Core..=) Core.<$> scheduling,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("useChiefInTfConfig" Core..=)
              Core.<$> useChiefInTfConfig,
            ("workerConfig" Core..=) Core.<$> workerConfig,
            ("workerCount" Core..=) Core.. Core.AsText
              Core.<$> workerCount,
            ("workerType" Core..=) Core.<$> workerType
          ]
      )

-- | Represents results of a training job. Output only.
--
-- /See:/ 'newGoogleCloudMlV1__TrainingOutput' smart constructor.
data GoogleCloudMlV1__TrainingOutput = GoogleCloudMlV1__TrainingOutput
  { -- | Details related to built-in algorithms jobs. Only set for built-in algorithms jobs.
    builtInAlgorithmOutput :: (Core.Maybe GoogleCloudMlV1__BuiltInAlgorithmOutput),
    -- | The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs.
    completedTrialCount :: (Core.Maybe Core.Int64),
    -- | The amount of ML units consumed by the job.
    consumedMLUnits :: (Core.Maybe Core.Double),
    -- | The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See <#HyperparameterSpec.FIELDS.hyperparameter_metric_tag HyperparameterSpec.hyperparameterMetricTag> for more information. Only set for hyperparameter tuning jobs.
    hyperparameterMetricTag :: (Core.Maybe Core.Text),
    -- | Whether this job is a built-in Algorithm job.
    isBuiltInAlgorithmJob :: (Core.Maybe Core.Bool),
    -- | Whether this job is a hyperparameter tuning job.
    isHyperparameterTuningJob :: (Core.Maybe Core.Bool),
    -- | Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs.
    trials :: (Core.Maybe [GoogleCloudMlV1__HyperparameterOutput]),
    -- | Output only. URIs for accessing <https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell interactive shells> (one URI for each training node). Only available if training/input.enable/web_access is @true@. The keys are names of each node in the training job; for example, @master-replica-0@ for the master node, @worker-replica-0@ for the first worker, and @ps-replica-0@ for the first parameter server. The values are the URIs for each node\'s interactive shell.
    webAccessUris :: (Core.Maybe GoogleCloudMlV1__TrainingOutput_WebAccessUris)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__TrainingOutput' with the minimum fields required to make a request.
newGoogleCloudMlV1__TrainingOutput ::
  GoogleCloudMlV1__TrainingOutput
newGoogleCloudMlV1__TrainingOutput =
  GoogleCloudMlV1__TrainingOutput
    { builtInAlgorithmOutput = Core.Nothing,
      completedTrialCount = Core.Nothing,
      consumedMLUnits = Core.Nothing,
      hyperparameterMetricTag = Core.Nothing,
      isBuiltInAlgorithmJob = Core.Nothing,
      isHyperparameterTuningJob = Core.Nothing,
      trials = Core.Nothing,
      webAccessUris = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudMlV1__TrainingOutput
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__TrainingOutput"
      ( \o ->
          GoogleCloudMlV1__TrainingOutput
            Core.<$> (o Core..:? "builtInAlgorithmOutput")
            Core.<*> ( o Core..:? "completedTrialCount"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "consumedMLUnits")
            Core.<*> (o Core..:? "hyperparameterMetricTag")
            Core.<*> (o Core..:? "isBuiltInAlgorithmJob")
            Core.<*> (o Core..:? "isHyperparameterTuningJob")
            Core.<*> (o Core..:? "trials")
            Core.<*> (o Core..:? "webAccessUris")
      )

instance Core.ToJSON GoogleCloudMlV1__TrainingOutput where
  toJSON GoogleCloudMlV1__TrainingOutput {..} =
    Core.object
      ( Core.catMaybes
          [ ("builtInAlgorithmOutput" Core..=)
              Core.<$> builtInAlgorithmOutput,
            ("completedTrialCount" Core..=) Core.. Core.AsText
              Core.<$> completedTrialCount,
            ("consumedMLUnits" Core..=) Core.<$> consumedMLUnits,
            ("hyperparameterMetricTag" Core..=)
              Core.<$> hyperparameterMetricTag,
            ("isBuiltInAlgorithmJob" Core..=)
              Core.<$> isBuiltInAlgorithmJob,
            ("isHyperparameterTuningJob" Core..=)
              Core.<$> isHyperparameterTuningJob,
            ("trials" Core..=) Core.<$> trials,
            ("webAccessUris" Core..=) Core.<$> webAccessUris
          ]
      )

-- | Output only. URIs for accessing <https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell interactive shells> (one URI for each training node). Only available if training/input.enable/web_access is @true@. The keys are names of each node in the training job; for example, @master-replica-0@ for the master node, @worker-replica-0@ for the first worker, and @ps-replica-0@ for the first parameter server. The values are the URIs for each node\'s interactive shell.
--
-- /See:/ 'newGoogleCloudMlV1__TrainingOutput_WebAccessUris' smart constructor.
newtype GoogleCloudMlV1__TrainingOutput_WebAccessUris = GoogleCloudMlV1__TrainingOutput_WebAccessUris
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__TrainingOutput_WebAccessUris' with the minimum fields required to make a request.
newGoogleCloudMlV1__TrainingOutput_WebAccessUris ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudMlV1__TrainingOutput_WebAccessUris
newGoogleCloudMlV1__TrainingOutput_WebAccessUris additional =
  GoogleCloudMlV1__TrainingOutput_WebAccessUris {additional = additional}

instance
  Core.FromJSON
    GoogleCloudMlV1__TrainingOutput_WebAccessUris
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__TrainingOutput_WebAccessUris"
      ( \o ->
          GoogleCloudMlV1__TrainingOutput_WebAccessUris
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudMlV1__TrainingOutput_WebAccessUris
  where
  toJSON
    GoogleCloudMlV1__TrainingOutput_WebAccessUris {..} =
      Core.toJSON additional

-- | A message representing a trial.
--
-- /See:/ 'newGoogleCloudMlV1__Trial' smart constructor.
data GoogleCloudMlV1__Trial = GoogleCloudMlV1__Trial
  { -- | Output only. The identifier of the client that originally requested this trial.
    clientId :: (Core.Maybe Core.Text),
    -- | Output only. Time at which the trial\'s status changed to COMPLETED.
    endTime :: (Core.Maybe Core.DateTime),
    -- | The final measurement containing the objective value.
    finalMeasurement :: (Core.Maybe GoogleCloudMlV1__Measurement),
    -- | Output only. A human readable string describing why the trial is infeasible. This should only be set if trial_infeasible is true.
    infeasibleReason :: (Core.Maybe Core.Text),
    -- | A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.
    measurements :: (Core.Maybe [GoogleCloudMlV1__Measurement]),
    -- | Output only. Name of the trial assigned by the service.
    name :: (Core.Maybe Core.Text),
    -- | The parameters of the trial.
    parameters :: (Core.Maybe [GoogleCloudMlV1_Trial_Parameter]),
    -- | Output only. Time at which the trial was started.
    startTime :: (Core.Maybe Core.DateTime),
    -- | The detailed state of a trial.
    state :: (Core.Maybe GoogleCloudMlV1__Trial_State),
    -- | Output only. If true, the parameters in this trial are not attempted again.
    trialInfeasible :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Trial' with the minimum fields required to make a request.
newGoogleCloudMlV1__Trial ::
  GoogleCloudMlV1__Trial
newGoogleCloudMlV1__Trial =
  GoogleCloudMlV1__Trial
    { clientId = Core.Nothing,
      endTime = Core.Nothing,
      finalMeasurement = Core.Nothing,
      infeasibleReason = Core.Nothing,
      measurements = Core.Nothing,
      name = Core.Nothing,
      parameters = Core.Nothing,
      startTime = Core.Nothing,
      state = Core.Nothing,
      trialInfeasible = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__Trial where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Trial"
      ( \o ->
          GoogleCloudMlV1__Trial
            Core.<$> (o Core..:? "clientId")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "finalMeasurement")
            Core.<*> (o Core..:? "infeasibleReason")
            Core.<*> (o Core..:? "measurements")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "trialInfeasible")
      )

instance Core.ToJSON GoogleCloudMlV1__Trial where
  toJSON GoogleCloudMlV1__Trial {..} =
    Core.object
      ( Core.catMaybes
          [ ("clientId" Core..=) Core.<$> clientId,
            ("endTime" Core..=) Core.<$> endTime,
            ("finalMeasurement" Core..=)
              Core.<$> finalMeasurement,
            ("infeasibleReason" Core..=)
              Core.<$> infeasibleReason,
            ("measurements" Core..=) Core.<$> measurements,
            ("name" Core..=) Core.<$> name,
            ("parameters" Core..=) Core.<$> parameters,
            ("startTime" Core..=) Core.<$> startTime,
            ("state" Core..=) Core.<$> state,
            ("trialInfeasible" Core..=)
              Core.<$> trialInfeasible
          ]
      )

-- | Represents a version of the model. Each version is a trained model deployed in the cloud, ready to handle prediction requests. A model can have multiple versions. You can get information about all of the versions of a given model by calling projects.models.versions.list.
--
-- /See:/ 'newGoogleCloudMlV1__Version' smart constructor.
data GoogleCloudMlV1__Version = GoogleCloudMlV1__Version
  { -- | Optional. Accelerator config for using GPUs for online prediction (beta). Only specify this field if you have specified a Compute Engine (N1) machine type in the @machineType@ field. Learn more about </ml-engine/docs/machine-types-online-prediction#gpus using GPUs for online prediction>.
    acceleratorConfig :: (Core.Maybe GoogleCloudMlV1__AcceleratorConfig),
    -- | Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model\'s ability to scale or you will start seeing increases in latency and 429 response codes.
    autoScaling :: (Core.Maybe GoogleCloudMlV1__AutoScaling),
    -- | Optional. Specifies a custom container to use for serving predictions. If you specify this field, then @machineType@ is required. If you specify this field, then @deploymentUri@ is optional. If you specify this field, then you must not specify @runtimeVersion@, @packageUris@, @framework@, @pythonVersion@, or @predictionClass@.
    container :: (Core.Maybe GoogleCloudMlV1__ContainerSpec),
    -- | Output only. The time the version was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The Cloud Storage URI of a directory containing trained model artifacts to be used to create the model version. See the </ai-platform/prediction/docs/deploying-models guide to deploying models> for more information. The total number of files under this directory must not exceed 1000. During projects.models.versions.create, AI Platform Prediction copies all files from the specified directory to a location managed by the service. From then on, AI Platform Prediction uses these copies of the model artifacts to serve predictions, not the original files in Cloud Storage, so this location is useful only as a historical record. If you specify container, then this field is optional. Otherwise, it is required. Learn </ai-platform/prediction/docs/custom-container-requirements#artifacts how to use this field with a custom container>.
    deploymentUri :: (Core.Maybe Core.Text),
    -- | Optional. The description specified for the version when it was created.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The details of a failure or a cancellation.
    errorMessage :: (Core.Maybe Core.Text),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform model updates in order to avoid race conditions: An @etag@ is returned in the response to @GetVersion@, and systems are expected to put that etag in the request to @UpdateVersion@ to ensure that their change will be applied to the model as intended.
    etag :: (Core.Maybe Core.Base64),
    -- | Optional. Configures explainability features on the model\'s version. Some explanation features require additional metadata to be loaded as part of the model payload.
    explanationConfig :: (Core.Maybe GoogleCloudMlV1__ExplanationConfig),
    -- | Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are @TENSORFLOW@, @SCIKIT_LEARN@, @XGBOOST@. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose @SCIKIT_LEARN@ or @XGBOOST@, you must also set the runtime version of the model to 1.4 or greater. Do __not__ specify a framework if you\'re deploying a </ai-platform/prediction/docs/custom-prediction-routines custom prediction routine> or if you\'re using a </ai-platform/prediction/docs/use-custom-container custom container>.
    framework :: (Core.Maybe GoogleCloudMlV1__Version_Framework),
    -- | Output only. If true, this version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.methods.versions.setDefault.
    isDefault :: (Core.Maybe Core.Bool),
    -- | Optional. One or more labels that you can add, to organize your model versions. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
    labels :: (Core.Maybe GoogleCloudMlV1__Version_Labels),
    -- | Output only. The <https://cloud.google.com/ai-platform-unified/docs/reference/rest/v1beta1/projects.locations.models AI Platform (Unified) Model> ID for the last <https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified model migration>.
    lastMigrationModelId :: (Core.Maybe Core.Text),
    -- | Output only. The last time this version was successfully <https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified migrated to AI Platform (Unified)>.
    lastMigrationTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the version was last used for prediction.
    lastUseTime :: (Core.Maybe Core.DateTime),
    -- | Optional. The type of machine on which to serve the model. Currently only applies to online prediction service. To learn about valid values for this field, read </ai-platform/prediction/docs/machine-types-online-prediction Choosing a machine type for online prediction>. If this field is not specified and you are using a </ai-platform/prediction/docs/regional-endpoints regional endpoint>, then the machine type defaults to @n1-standard-2@. If this field is not specified and you are using the global endpoint (@ml.googleapis.com@), then the machine type defaults to @mls1-c1-m2@.
    machineType :: (Core.Maybe Core.Text),
    -- | Manually select the number of nodes to use for serving the model. You should generally use @auto_scaling@ with an appropriate @min_nodes@ instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes.
    manualScaling :: (Core.Maybe GoogleCloudMlV1__ManualScaling),
    -- | Required. The name specified for the version when it was created. The version name must be unique within the model it is created in.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Cloud Storage paths (@gs:\/\/…@) of packages for </ml-engine/docs/tensorflow/custom-prediction-routines custom prediction routines> or </ml-engine/docs/scikit/exporting-for-prediction#custom-pipeline-code scikit-learn pipelines with custom code>. For a custom prediction routine, one of these packages must contain your Predictor class (see <#Version.FIELDS.prediction_class predictionClass>). Additionally, include any dependencies used by your Predictor or scikit-learn pipeline uses that are not already included in your selected </ml-engine/docs/tensorflow/runtime-version-list runtime version>. If you specify this field, you must also set <#Version.FIELDS.runtime_version runtimeVersion> to 1.4 or greater.
    packageUris :: (Core.Maybe [Core.Text]),
    -- | Optional. The fully qualified name (module/name.class/name) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the <#Version.FIELDS.package_uris packageUris field>. Specify this field if and only if you are deploying a </ml-engine/docs/tensorflow/custom-prediction-routines custom prediction routine (beta)>. If you specify this field, you must set <#Version.FIELDS.runtime_version runtimeVersion> to 1.4 or greater and you must set @machineType@ to a </ml-engine/docs/machine-types-online-prediction legacy (MLS1) machine type>. The following code sample provides the Predictor interface: class Predictor(object): \"\"\"Interface for constructing custom predictors.\"\"\" def predict(self, instances, __kwargs): \"\"\"Performs custom prediction. Instances are the decoded values from the request. They have already been deserialized from JSON. Args: instances: A list of prediction input instances. __kwargs: A
    -- dictionary of keyword args provided as additional fields on the predict request body. Returns: A list of outputs containing the prediction results. This list must be JSON serializable. \"\"\" raise NotImplementedError() \@classmethod def from/path(cls, model/dir): \"\"\"Creates an instance of Predictor using the given path. Loading of the predictor should be done in this method. Args: model_dir: The local directory that contains the exported model file along with any additional files uploaded when creating the version resource. Returns: An instance implementing this Predictor class. \"\"\" raise NotImplementedError() Learn more about </ml-engine/docs/tensorflow/custom-prediction-routines the Predictor interface and custom prediction routines>.
    predictionClass :: (Core.Maybe Core.Text),
    -- | Required. The version of Python used in prediction. The following Python versions are available: * Python \'3.7\' is available when @runtime_version@ is set to \'1.15\' or later. * Python \'3.5\' is available when @runtime_version@ is set to a version from \'1.4\' to \'1.14\'. * Python \'2.7\' is available when @runtime_version@ is set to \'1.15\' or earlier. Read more about the Python versions available for </ml-engine/docs/runtime-version-list each runtime version>.
    pythonVersion :: (Core.Maybe Core.Text),
    -- | Optional. /Only/ specify this field in a projects.models.versions.patch request. Specifying it in a projects.models.versions.create request has no effect. Configures the request-response pair logging on predictions from this Version.
    requestLoggingConfig :: (Core.Maybe GoogleCloudMlV1__RequestLoggingConfig),
    -- | Optional. Specifies paths on a custom container\'s HTTP server where AI Platform Prediction sends certain requests. If you specify this field, then you must also specify the @container@ field. If you specify the @container@ field and do not specify this field, it defaults to the following: @json { \"predict\": \"\/v1\/models\/MODEL\/versions\/VERSION:predict\", \"health\": \"\/v1\/models\/MODEL\/versions\/VERSION\" }@ See RouteMap for more details about these default values.
    routes :: (Core.Maybe GoogleCloudMlV1__RouteMap),
    -- | Required. The AI Platform runtime version to use for this deployment. For more information, see the </ml-engine/docs/runtime-version-list runtime version list> and </ml-engine/docs/versioning how to manage runtime versions>.
    runtimeVersion :: (Core.Maybe Core.Text),
    -- | Optional. Specifies the service account for resource access control. If you specify this field, then you must also specify either the @containerSpec@ or the @predictionClass@ field. Learn more about </ai-platform/prediction/docs/custom-service-account using a custom service account>.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Output only. The state of a version.
    state :: (Core.Maybe GoogleCloudMlV1__Version_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Version' with the minimum fields required to make a request.
newGoogleCloudMlV1__Version ::
  GoogleCloudMlV1__Version
newGoogleCloudMlV1__Version =
  GoogleCloudMlV1__Version
    { acceleratorConfig = Core.Nothing,
      autoScaling = Core.Nothing,
      container = Core.Nothing,
      createTime = Core.Nothing,
      deploymentUri = Core.Nothing,
      description = Core.Nothing,
      errorMessage = Core.Nothing,
      etag = Core.Nothing,
      explanationConfig = Core.Nothing,
      framework = Core.Nothing,
      isDefault = Core.Nothing,
      labels = Core.Nothing,
      lastMigrationModelId = Core.Nothing,
      lastMigrationTime = Core.Nothing,
      lastUseTime = Core.Nothing,
      machineType = Core.Nothing,
      manualScaling = Core.Nothing,
      name = Core.Nothing,
      packageUris = Core.Nothing,
      predictionClass = Core.Nothing,
      pythonVersion = Core.Nothing,
      requestLoggingConfig = Core.Nothing,
      routes = Core.Nothing,
      runtimeVersion = Core.Nothing,
      serviceAccount = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON GoogleCloudMlV1__Version where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Version"
      ( \o ->
          GoogleCloudMlV1__Version
            Core.<$> (o Core..:? "acceleratorConfig")
            Core.<*> (o Core..:? "autoScaling")
            Core.<*> (o Core..:? "container")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "deploymentUri")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "errorMessage")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "explanationConfig")
            Core.<*> (o Core..:? "framework")
            Core.<*> (o Core..:? "isDefault")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "lastMigrationModelId")
            Core.<*> (o Core..:? "lastMigrationTime")
            Core.<*> (o Core..:? "lastUseTime")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "manualScaling")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "packageUris")
            Core.<*> (o Core..:? "predictionClass")
            Core.<*> (o Core..:? "pythonVersion")
            Core.<*> (o Core..:? "requestLoggingConfig")
            Core.<*> (o Core..:? "routes")
            Core.<*> (o Core..:? "runtimeVersion")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON GoogleCloudMlV1__Version where
  toJSON GoogleCloudMlV1__Version {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorConfig" Core..=)
              Core.<$> acceleratorConfig,
            ("autoScaling" Core..=) Core.<$> autoScaling,
            ("container" Core..=) Core.<$> container,
            ("createTime" Core..=) Core.<$> createTime,
            ("deploymentUri" Core..=) Core.<$> deploymentUri,
            ("description" Core..=) Core.<$> description,
            ("errorMessage" Core..=) Core.<$> errorMessage,
            ("etag" Core..=) Core.<$> etag,
            ("explanationConfig" Core..=)
              Core.<$> explanationConfig,
            ("framework" Core..=) Core.<$> framework,
            ("isDefault" Core..=) Core.<$> isDefault,
            ("labels" Core..=) Core.<$> labels,
            ("lastMigrationModelId" Core..=)
              Core.<$> lastMigrationModelId,
            ("lastMigrationTime" Core..=)
              Core.<$> lastMigrationTime,
            ("lastUseTime" Core..=) Core.<$> lastUseTime,
            ("machineType" Core..=) Core.<$> machineType,
            ("manualScaling" Core..=) Core.<$> manualScaling,
            ("name" Core..=) Core.<$> name,
            ("packageUris" Core..=) Core.<$> packageUris,
            ("predictionClass" Core..=) Core.<$> predictionClass,
            ("pythonVersion" Core..=) Core.<$> pythonVersion,
            ("requestLoggingConfig" Core..=)
              Core.<$> requestLoggingConfig,
            ("routes" Core..=) Core.<$> routes,
            ("runtimeVersion" Core..=) Core.<$> runtimeVersion,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Optional. One or more labels that you can add, to organize your model versions. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
--
-- /See:/ 'newGoogleCloudMlV1__Version_Labels' smart constructor.
newtype GoogleCloudMlV1__Version_Labels = GoogleCloudMlV1__Version_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__Version_Labels' with the minimum fields required to make a request.
newGoogleCloudMlV1__Version_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  GoogleCloudMlV1__Version_Labels
newGoogleCloudMlV1__Version_Labels additional =
  GoogleCloudMlV1__Version_Labels {additional = additional}

instance
  Core.FromJSON
    GoogleCloudMlV1__Version_Labels
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__Version_Labels"
      ( \o ->
          GoogleCloudMlV1__Version_Labels
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleCloudMlV1__Version_Labels where
  toJSON GoogleCloudMlV1__Version_Labels {..} =
    Core.toJSON additional

-- | Attributes credit by computing the XRAI taking advantage of the model\'s fully differentiable structure. Refer to this paper for more details: https:\/\/arxiv.org\/abs\/1906.02825 Currently only implemented for models with natural image inputs.
--
-- /See:/ 'newGoogleCloudMlV1__XraiAttribution' smart constructor.
newtype GoogleCloudMlV1__XraiAttribution = GoogleCloudMlV1__XraiAttribution
  { -- | Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
    numIntegralSteps :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudMlV1__XraiAttribution' with the minimum fields required to make a request.
newGoogleCloudMlV1__XraiAttribution ::
  GoogleCloudMlV1__XraiAttribution
newGoogleCloudMlV1__XraiAttribution =
  GoogleCloudMlV1__XraiAttribution {numIntegralSteps = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudMlV1__XraiAttribution
  where
  parseJSON =
    Core.withObject
      "GoogleCloudMlV1__XraiAttribution"
      ( \o ->
          GoogleCloudMlV1__XraiAttribution
            Core.<$> (o Core..:? "numIntegralSteps")
      )

instance Core.ToJSON GoogleCloudMlV1__XraiAttribution where
  toJSON GoogleCloudMlV1__XraiAttribution {..} =
    Core.object
      ( Core.catMaybes
          [ ("numIntegralSteps" Core..=)
              Core.<$> numIntegralSteps
          ]
      )

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit/configs\": [ { \"service\": \"allServices\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" }, { \"log/type\": \"ADMIN/READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\" }, { \"log/type\": \"DATA/WRITE\", \"exempted/members\": [ \"user:aliya\@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA/READ, DATA/WRITE and
-- ADMIN/READ logging. It also exempts jose\@example.com from DATA/READ logging, and aliya\@example.com from DATA/WRITE logging.
--
-- /See:/ 'newGoogleIamV1__AuditConfig' smart constructor.
data GoogleIamV1__AuditConfig = GoogleIamV1__AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [GoogleIamV1__AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__AuditConfig' with the minimum fields required to make a request.
newGoogleIamV1__AuditConfig ::
  GoogleIamV1__AuditConfig
newGoogleIamV1__AuditConfig =
  GoogleIamV1__AuditConfig
    { auditLogConfigs = Core.Nothing,
      service = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1__AuditConfig where
  parseJSON =
    Core.withObject
      "GoogleIamV1__AuditConfig"
      ( \o ->
          GoogleIamV1__AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs")
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON GoogleIamV1__AuditConfig where
  toJSON GoogleIamV1__AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example: { \"audit/log/configs\": [ { \"log/type\": \"DATA/READ\", \"exempted/members\": [ \"user:jose\@example.com\" ] }, { \"log/type\": \"DATA/WRITE\" } ] } This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA/READ logging.
--
-- /See:/ 'newGoogleIamV1__AuditLogConfig' smart constructor.
data GoogleIamV1__AuditLogConfig = GoogleIamV1__AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe GoogleIamV1__AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__AuditLogConfig' with the minimum fields required to make a request.
newGoogleIamV1__AuditLogConfig ::
  GoogleIamV1__AuditLogConfig
newGoogleIamV1__AuditLogConfig =
  GoogleIamV1__AuditLogConfig
    { exemptedMembers = Core.Nothing,
      logType = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1__AuditLogConfig where
  parseJSON =
    Core.withObject
      "GoogleIamV1__AuditLogConfig"
      ( \o ->
          GoogleIamV1__AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers")
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON GoogleIamV1__AuditLogConfig where
  toJSON GoogleIamV1__AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Associates @members@, or principals, with a @role@.
--
-- /See:/ 'newGoogleIamV1__Binding' smart constructor.
data GoogleIamV1__Binding = GoogleIamV1__Binding
  { -- | The condition that is associated with this binding. If the condition evaluates to @true@, then this binding applies to the current request. If the condition evaluates to @false@, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    condition :: (Core.Maybe GoogleType__Expr),
    -- | Specifies the principals requesting access for a Cloud Platform resource. @members@ can have the following values: * @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account. * @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account. * @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ . * @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@. * @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@. * @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains
    -- the role in the binding. * @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding. * @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding. * @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to the list of @members@, or principals. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__Binding' with the minimum fields required to make a request.
newGoogleIamV1__Binding ::
  GoogleIamV1__Binding
newGoogleIamV1__Binding =
  GoogleIamV1__Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1__Binding where
  parseJSON =
    Core.withObject
      "GoogleIamV1__Binding"
      ( \o ->
          GoogleIamV1__Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members")
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON GoogleIamV1__Binding where
  toJSON GoogleIamV1__Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@, or principals, to a single @role@. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a @binding@ can also specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>. __JSON example:__ { \"bindings\": [ { \"role\": \"roles\/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike\@example.com\",
-- \"group:admins\@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id\@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [ \"user:eve\@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time \< timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } __YAML example:__ bindings: - members: - user:mike\@example.com - group:admins\@example.com - domain:google.com - serviceAccount:my-project-id\@appspot.gserviceaccount.com role: roles\/resourcemanager.organizationAdmin - members: - user:eve\@example.com role: roles\/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time \< timestamp(\'2020-10-01T00:00:00.000Z\') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the
-- <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newGoogleIamV1__Policy' smart constructor.
data GoogleIamV1__Policy = GoogleIamV1__Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [GoogleIamV1__AuditConfig]),
    -- | Associates a list of @members@, or principals, with a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one principal. The @bindings@ in a @Policy@ can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the @bindings@ grant 50 different roles to @user:alice\@example.com@, and not to any other principal, then you can add another 1,450 principals to the @bindings@ in the @Policy@.
    bindings :: (Core.Maybe [GoogleIamV1__Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy. __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy. Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the
    -- <https://cloud.google.com/iam/help/conditions/resource-policies IAM documentation>.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__Policy' with the minimum fields required to make a request.
newGoogleIamV1__Policy ::
  GoogleIamV1__Policy
newGoogleIamV1__Policy =
  GoogleIamV1__Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1__Policy where
  parseJSON =
    Core.withObject
      "GoogleIamV1__Policy"
      ( \o ->
          GoogleIamV1__Policy
            Core.<$> (o Core..:? "auditConfigs")
            Core.<*> (o Core..:? "bindings")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON GoogleIamV1__Policy where
  toJSON GoogleIamV1__Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newGoogleIamV1__SetIamPolicyRequest' smart constructor.
data GoogleIamV1__SetIamPolicyRequest = GoogleIamV1__SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe GoogleIamV1__Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: @paths: \"bindings, etag\"@
    updateMask :: (Core.Maybe Core.FieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__SetIamPolicyRequest' with the minimum fields required to make a request.
newGoogleIamV1__SetIamPolicyRequest ::
  GoogleIamV1__SetIamPolicyRequest
newGoogleIamV1__SetIamPolicyRequest =
  GoogleIamV1__SetIamPolicyRequest
    { policy = Core.Nothing,
      updateMask = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleIamV1__SetIamPolicyRequest
  where
  parseJSON =
    Core.withObject
      "GoogleIamV1__SetIamPolicyRequest"
      ( \o ->
          GoogleIamV1__SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON GoogleIamV1__SetIamPolicyRequest where
  toJSON GoogleIamV1__SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1__TestIamPermissionsRequest' smart constructor.
newtype GoogleIamV1__TestIamPermissionsRequest = GoogleIamV1__TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__TestIamPermissionsRequest' with the minimum fields required to make a request.
newGoogleIamV1__TestIamPermissionsRequest ::
  GoogleIamV1__TestIamPermissionsRequest
newGoogleIamV1__TestIamPermissionsRequest =
  GoogleIamV1__TestIamPermissionsRequest {permissions = Core.Nothing}

instance
  Core.FromJSON
    GoogleIamV1__TestIamPermissionsRequest
  where
  parseJSON =
    Core.withObject
      "GoogleIamV1__TestIamPermissionsRequest"
      ( \o ->
          GoogleIamV1__TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions")
      )

instance
  Core.ToJSON
    GoogleIamV1__TestIamPermissionsRequest
  where
  toJSON GoogleIamV1__TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1__TestIamPermissionsResponse' smart constructor.
newtype GoogleIamV1__TestIamPermissionsResponse = GoogleIamV1__TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1__TestIamPermissionsResponse' with the minimum fields required to make a request.
newGoogleIamV1__TestIamPermissionsResponse ::
  GoogleIamV1__TestIamPermissionsResponse
newGoogleIamV1__TestIamPermissionsResponse =
  GoogleIamV1__TestIamPermissionsResponse {permissions = Core.Nothing}

instance
  Core.FromJSON
    GoogleIamV1__TestIamPermissionsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleIamV1__TestIamPermissionsResponse"
      ( \o ->
          GoogleIamV1__TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions")
      )

instance
  Core.ToJSON
    GoogleIamV1__TestIamPermissionsResponse
  where
  toJSON GoogleIamV1__TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newGoogleLongrunning__ListOperationsResponse' smart constructor.
data GoogleLongrunning__ListOperationsResponse = GoogleLongrunning__ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [GoogleLongrunning__Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunning__ListOperationsResponse' with the minimum fields required to make a request.
newGoogleLongrunning__ListOperationsResponse ::
  GoogleLongrunning__ListOperationsResponse
newGoogleLongrunning__ListOperationsResponse =
  GoogleLongrunning__ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleLongrunning__ListOperationsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunning__ListOperationsResponse"
      ( \o ->
          GoogleLongrunning__ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations")
      )

instance
  Core.ToJSON
    GoogleLongrunning__ListOperationsResponse
  where
  toJSON GoogleLongrunning__ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunning__Operation' smart constructor.
data GoogleLongrunning__Operation = GoogleLongrunning__Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe GoogleRpc__Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe GoogleLongrunning__Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe GoogleLongrunning__Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunning__Operation' with the minimum fields required to make a request.
newGoogleLongrunning__Operation ::
  GoogleLongrunning__Operation
newGoogleLongrunning__Operation =
  GoogleLongrunning__Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunning__Operation where
  parseJSON =
    Core.withObject
      "GoogleLongrunning__Operation"
      ( \o ->
          GoogleLongrunning__Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON GoogleLongrunning__Operation where
  toJSON GoogleLongrunning__Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newGoogleLongrunning__Operation_Metadata' smart constructor.
newtype GoogleLongrunning__Operation_Metadata = GoogleLongrunning__Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunning__Operation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunning__Operation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunning__Operation_Metadata
newGoogleLongrunning__Operation_Metadata additional =
  GoogleLongrunning__Operation_Metadata {additional = additional}

instance
  Core.FromJSON
    GoogleLongrunning__Operation_Metadata
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunning__Operation_Metadata"
      ( \o ->
          GoogleLongrunning__Operation_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunning__Operation_Metadata
  where
  toJSON GoogleLongrunning__Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunning__Operation_Response' smart constructor.
newtype GoogleLongrunning__Operation_Response = GoogleLongrunning__Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunning__Operation_Response' with the minimum fields required to make a request.
newGoogleLongrunning__Operation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunning__Operation_Response
newGoogleLongrunning__Operation_Response additional =
  GoogleLongrunning__Operation_Response {additional = additional}

instance
  Core.FromJSON
    GoogleLongrunning__Operation_Response
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunning__Operation_Response"
      ( \o ->
          GoogleLongrunning__Operation_Response
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunning__Operation_Response
  where
  toJSON GoogleLongrunning__Operation_Response {..} =
    Core.toJSON additional

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newGoogleProtobuf__Empty' smart constructor.
data GoogleProtobuf__Empty = GoogleProtobuf__Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleProtobuf__Empty' with the minimum fields required to make a request.
newGoogleProtobuf__Empty ::
  GoogleProtobuf__Empty
newGoogleProtobuf__Empty = GoogleProtobuf__Empty

instance Core.FromJSON GoogleProtobuf__Empty where
  parseJSON =
    Core.withObject
      "GoogleProtobuf__Empty"
      (\o -> Core.pure GoogleProtobuf__Empty)

instance Core.ToJSON GoogleProtobuf__Empty where
  toJSON = Core.const Core.emptyObject

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpc__Status' smart constructor.
data GoogleRpc__Status = GoogleRpc__Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [GoogleRpc__Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpc__Status' with the minimum fields required to make a request.
newGoogleRpc__Status ::
  GoogleRpc__Status
newGoogleRpc__Status =
  GoogleRpc__Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON GoogleRpc__Status where
  parseJSON =
    Core.withObject
      "GoogleRpc__Status"
      ( \o ->
          GoogleRpc__Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON GoogleRpc__Status where
  toJSON GoogleRpc__Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newGoogleRpc__Status_DetailsItem' smart constructor.
newtype GoogleRpc__Status_DetailsItem = GoogleRpc__Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpc__Status_DetailsItem' with the minimum fields required to make a request.
newGoogleRpc__Status_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleRpc__Status_DetailsItem
newGoogleRpc__Status_DetailsItem additional =
  GoogleRpc__Status_DetailsItem {additional = additional}

instance Core.FromJSON GoogleRpc__Status_DetailsItem where
  parseJSON =
    Core.withObject
      "GoogleRpc__Status_DetailsItem"
      ( \o ->
          GoogleRpc__Status_DetailsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleRpc__Status_DetailsItem where
  toJSON GoogleRpc__Status_DetailsItem {..} =
    Core.toJSON additional

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() \< 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != \'private\' && document.type != \'internal\'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"\'New message received at \' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are
-- determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newGoogleType__Expr' smart constructor.
data GoogleType__Expr = GoogleType__Expr
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

-- | Creates a value of 'GoogleType__Expr' with the minimum fields required to make a request.
newGoogleType__Expr ::
  GoogleType__Expr
newGoogleType__Expr =
  GoogleType__Expr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON GoogleType__Expr where
  parseJSON =
    Core.withObject
      "GoogleType__Expr"
      ( \o ->
          GoogleType__Expr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON GoogleType__Expr where
  toJSON GoogleType__Expr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )
