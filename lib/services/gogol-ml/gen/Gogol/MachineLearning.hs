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
-- Module      : Gogol.MachineLearning
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API to enable creating and using machine learning models.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference>
module Gogol.MachineLearning
  ( -- * Configuration
    machineLearningService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    CloudPlatform'ReadOnly,

    -- * Resources

    -- ** ml.projects.explain
    MlProjectsExplainResource,
    MlProjectsExplain (..),
    newMlProjectsExplain,

    -- ** ml.projects.getConfig
    MlProjectsGetConfigResource,
    MlProjectsGetConfig (..),
    newMlProjectsGetConfig,

    -- ** ml.projects.jobs.cancel
    MlProjectsJobsCancelResource,
    MlProjectsJobsCancel (..),
    newMlProjectsJobsCancel,

    -- ** ml.projects.jobs.create
    MlProjectsJobsCreateResource,
    MlProjectsJobsCreate (..),
    newMlProjectsJobsCreate,

    -- ** ml.projects.jobs.get
    MlProjectsJobsGetResource,
    MlProjectsJobsGet (..),
    newMlProjectsJobsGet,

    -- ** ml.projects.jobs.getIamPolicy
    MlProjectsJobsGetIamPolicyResource,
    MlProjectsJobsGetIamPolicy (..),
    newMlProjectsJobsGetIamPolicy,

    -- ** ml.projects.jobs.list
    MlProjectsJobsListResource,
    MlProjectsJobsList (..),
    newMlProjectsJobsList,

    -- ** ml.projects.jobs.patch
    MlProjectsJobsPatchResource,
    MlProjectsJobsPatch (..),
    newMlProjectsJobsPatch,

    -- ** ml.projects.jobs.setIamPolicy
    MlProjectsJobsSetIamPolicyResource,
    MlProjectsJobsSetIamPolicy (..),
    newMlProjectsJobsSetIamPolicy,

    -- ** ml.projects.jobs.testIamPermissions
    MlProjectsJobsTestIamPermissionsResource,
    MlProjectsJobsTestIamPermissions (..),
    newMlProjectsJobsTestIamPermissions,

    -- ** ml.projects.locations.get
    MlProjectsLocationsGetResource,
    MlProjectsLocationsGet (..),
    newMlProjectsLocationsGet,

    -- ** ml.projects.locations.list
    MlProjectsLocationsListResource,
    MlProjectsLocationsList (..),
    newMlProjectsLocationsList,

    -- ** ml.projects.locations.operations.cancel
    MlProjectsLocationsOperationsCancelResource,
    MlProjectsLocationsOperationsCancel (..),
    newMlProjectsLocationsOperationsCancel,

    -- ** ml.projects.locations.operations.get
    MlProjectsLocationsOperationsGetResource,
    MlProjectsLocationsOperationsGet (..),
    newMlProjectsLocationsOperationsGet,

    -- ** ml.projects.locations.studies.create
    MlProjectsLocationsStudiesCreateResource,
    MlProjectsLocationsStudiesCreate (..),
    newMlProjectsLocationsStudiesCreate,

    -- ** ml.projects.locations.studies.delete
    MlProjectsLocationsStudiesDeleteResource,
    MlProjectsLocationsStudiesDelete (..),
    newMlProjectsLocationsStudiesDelete,

    -- ** ml.projects.locations.studies.get
    MlProjectsLocationsStudiesGetResource,
    MlProjectsLocationsStudiesGet (..),
    newMlProjectsLocationsStudiesGet,

    -- ** ml.projects.locations.studies.list
    MlProjectsLocationsStudiesListResource,
    MlProjectsLocationsStudiesList (..),
    newMlProjectsLocationsStudiesList,

    -- ** ml.projects.locations.studies.trials.addMeasurement
    MlProjectsLocationsStudiesTrialsAddMeasurementResource,
    MlProjectsLocationsStudiesTrialsAddMeasurement (..),
    newMlProjectsLocationsStudiesTrialsAddMeasurement,

    -- ** ml.projects.locations.studies.trials.checkEarlyStoppingState
    MlProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource,
    MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState (..),
    newMlProjectsLocationsStudiesTrialsCheckEarlyStoppingState,

    -- ** ml.projects.locations.studies.trials.complete
    MlProjectsLocationsStudiesTrialsCompleteResource,
    MlProjectsLocationsStudiesTrialsComplete (..),
    newMlProjectsLocationsStudiesTrialsComplete,

    -- ** ml.projects.locations.studies.trials.create
    MlProjectsLocationsStudiesTrialsCreateResource,
    MlProjectsLocationsStudiesTrialsCreate (..),
    newMlProjectsLocationsStudiesTrialsCreate,

    -- ** ml.projects.locations.studies.trials.delete
    MlProjectsLocationsStudiesTrialsDeleteResource,
    MlProjectsLocationsStudiesTrialsDelete (..),
    newMlProjectsLocationsStudiesTrialsDelete,

    -- ** ml.projects.locations.studies.trials.get
    MlProjectsLocationsStudiesTrialsGetResource,
    MlProjectsLocationsStudiesTrialsGet (..),
    newMlProjectsLocationsStudiesTrialsGet,

    -- ** ml.projects.locations.studies.trials.list
    MlProjectsLocationsStudiesTrialsListResource,
    MlProjectsLocationsStudiesTrialsList (..),
    newMlProjectsLocationsStudiesTrialsList,

    -- ** ml.projects.locations.studies.trials.listOptimalTrials
    MlProjectsLocationsStudiesTrialsListOptimalTrialsResource,
    MlProjectsLocationsStudiesTrialsListOptimalTrials (..),
    newMlProjectsLocationsStudiesTrialsListOptimalTrials,

    -- ** ml.projects.locations.studies.trials.stop
    MlProjectsLocationsStudiesTrialsStopResource,
    MlProjectsLocationsStudiesTrialsStop (..),
    newMlProjectsLocationsStudiesTrialsStop,

    -- ** ml.projects.locations.studies.trials.suggest
    MlProjectsLocationsStudiesTrialsSuggestResource,
    MlProjectsLocationsStudiesTrialsSuggest (..),
    newMlProjectsLocationsStudiesTrialsSuggest,

    -- ** ml.projects.models.create
    MlProjectsModelsCreateResource,
    MlProjectsModelsCreate (..),
    newMlProjectsModelsCreate,

    -- ** ml.projects.models.delete
    MlProjectsModelsDeleteResource,
    MlProjectsModelsDelete (..),
    newMlProjectsModelsDelete,

    -- ** ml.projects.models.get
    MlProjectsModelsGetResource,
    MlProjectsModelsGet (..),
    newMlProjectsModelsGet,

    -- ** ml.projects.models.getIamPolicy
    MlProjectsModelsGetIamPolicyResource,
    MlProjectsModelsGetIamPolicy (..),
    newMlProjectsModelsGetIamPolicy,

    -- ** ml.projects.models.list
    MlProjectsModelsListResource,
    MlProjectsModelsList (..),
    newMlProjectsModelsList,

    -- ** ml.projects.models.patch
    MlProjectsModelsPatchResource,
    MlProjectsModelsPatch (..),
    newMlProjectsModelsPatch,

    -- ** ml.projects.models.setIamPolicy
    MlProjectsModelsSetIamPolicyResource,
    MlProjectsModelsSetIamPolicy (..),
    newMlProjectsModelsSetIamPolicy,

    -- ** ml.projects.models.testIamPermissions
    MlProjectsModelsTestIamPermissionsResource,
    MlProjectsModelsTestIamPermissions (..),
    newMlProjectsModelsTestIamPermissions,

    -- ** ml.projects.models.versions.create
    MlProjectsModelsVersionsCreateResource,
    MlProjectsModelsVersionsCreate (..),
    newMlProjectsModelsVersionsCreate,

    -- ** ml.projects.models.versions.delete
    MlProjectsModelsVersionsDeleteResource,
    MlProjectsModelsVersionsDelete (..),
    newMlProjectsModelsVersionsDelete,

    -- ** ml.projects.models.versions.get
    MlProjectsModelsVersionsGetResource,
    MlProjectsModelsVersionsGet (..),
    newMlProjectsModelsVersionsGet,

    -- ** ml.projects.models.versions.list
    MlProjectsModelsVersionsListResource,
    MlProjectsModelsVersionsList (..),
    newMlProjectsModelsVersionsList,

    -- ** ml.projects.models.versions.patch
    MlProjectsModelsVersionsPatchResource,
    MlProjectsModelsVersionsPatch (..),
    newMlProjectsModelsVersionsPatch,

    -- ** ml.projects.models.versions.setDefault
    MlProjectsModelsVersionsSetDefaultResource,
    MlProjectsModelsVersionsSetDefault (..),
    newMlProjectsModelsVersionsSetDefault,

    -- ** ml.projects.operations.cancel
    MlProjectsOperationsCancelResource,
    MlProjectsOperationsCancel (..),
    newMlProjectsOperationsCancel,

    -- ** ml.projects.operations.get
    MlProjectsOperationsGetResource,
    MlProjectsOperationsGet (..),
    newMlProjectsOperationsGet,

    -- ** ml.projects.operations.list
    MlProjectsOperationsListResource,
    MlProjectsOperationsList (..),
    newMlProjectsOperationsList,

    -- ** ml.projects.predict
    MlProjectsPredictResource,
    MlProjectsPredict (..),
    newMlProjectsPredict,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleApi__HttpBody
    GoogleApi__HttpBody (..),
    newGoogleApi__HttpBody,

    -- ** GoogleApi__HttpBody_ExtensionsItem
    GoogleApi__HttpBody_ExtensionsItem (..),
    newGoogleApi__HttpBody_ExtensionsItem,

    -- ** GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
    GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig (..),
    newGoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig,

    -- ** GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
    GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig (..),
    newGoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig,

    -- ** GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric (..),
    newGoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric,

    -- ** GoogleCloudMlV1_Measurement_Metric
    GoogleCloudMlV1_Measurement_Metric (..),
    newGoogleCloudMlV1_Measurement_Metric,

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec,

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec,

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec,

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec,

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec,

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec,

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec (..),
    newGoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec,

    -- ** GoogleCloudMlV1_StudyConfig_MetricSpec
    GoogleCloudMlV1_StudyConfig_MetricSpec (..),
    newGoogleCloudMlV1_StudyConfig_MetricSpec,

    -- ** GoogleCloudMlV1_StudyConfig_MetricSpec_Goal
    GoogleCloudMlV1_StudyConfig_MetricSpec_Goal (..),

    -- ** GoogleCloudMlV1_StudyConfig_ParameterSpec
    GoogleCloudMlV1_StudyConfig_ParameterSpec (..),
    newGoogleCloudMlV1_StudyConfig_ParameterSpec,

    -- ** GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType
    GoogleCloudMlV1_StudyConfig_ParameterSpec_ScaleType (..),

    -- ** GoogleCloudMlV1_StudyConfig_ParameterSpec_Type
    GoogleCloudMlV1_StudyConfig_ParameterSpec_Type (..),

    -- ** GoogleCloudMlV1_Trial_Parameter
    GoogleCloudMlV1_Trial_Parameter (..),
    newGoogleCloudMlV1_Trial_Parameter,

    -- ** GoogleCloudMlV1__AcceleratorConfig
    GoogleCloudMlV1__AcceleratorConfig (..),
    newGoogleCloudMlV1__AcceleratorConfig,

    -- ** GoogleCloudMlV1__AcceleratorConfig_Type
    GoogleCloudMlV1__AcceleratorConfig_Type (..),

    -- ** GoogleCloudMlV1__AddTrialMeasurementRequest
    GoogleCloudMlV1__AddTrialMeasurementRequest (..),
    newGoogleCloudMlV1__AddTrialMeasurementRequest,

    -- ** GoogleCloudMlV1__AutoScaling
    GoogleCloudMlV1__AutoScaling (..),
    newGoogleCloudMlV1__AutoScaling,

    -- ** GoogleCloudMlV1__AutomatedStoppingConfig
    GoogleCloudMlV1__AutomatedStoppingConfig (..),
    newGoogleCloudMlV1__AutomatedStoppingConfig,

    -- ** GoogleCloudMlV1__BuiltInAlgorithmOutput
    GoogleCloudMlV1__BuiltInAlgorithmOutput (..),
    newGoogleCloudMlV1__BuiltInAlgorithmOutput,

    -- ** GoogleCloudMlV1__CancelJobRequest
    GoogleCloudMlV1__CancelJobRequest (..),
    newGoogleCloudMlV1__CancelJobRequest,

    -- ** GoogleCloudMlV1__Capability
    GoogleCloudMlV1__Capability (..),
    newGoogleCloudMlV1__Capability,

    -- ** GoogleCloudMlV1__Capability_AvailableAcceleratorsItem
    GoogleCloudMlV1__Capability_AvailableAcceleratorsItem (..),

    -- ** GoogleCloudMlV1__Capability_Type
    GoogleCloudMlV1__Capability_Type (..),

    -- ** GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata (..),
    newGoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata,

    -- ** GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest (..),
    newGoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest,

    -- ** GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse (..),
    newGoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse,

    -- ** GoogleCloudMlV1__CompleteTrialRequest
    GoogleCloudMlV1__CompleteTrialRequest (..),
    newGoogleCloudMlV1__CompleteTrialRequest,

    -- ** GoogleCloudMlV1__Config
    GoogleCloudMlV1__Config (..),
    newGoogleCloudMlV1__Config,

    -- ** GoogleCloudMlV1__ContainerPort
    GoogleCloudMlV1__ContainerPort (..),
    newGoogleCloudMlV1__ContainerPort,

    -- ** GoogleCloudMlV1__ContainerSpec
    GoogleCloudMlV1__ContainerSpec (..),
    newGoogleCloudMlV1__ContainerSpec,

    -- ** GoogleCloudMlV1__DiskConfig
    GoogleCloudMlV1__DiskConfig (..),
    newGoogleCloudMlV1__DiskConfig,

    -- ** GoogleCloudMlV1__EncryptionConfig
    GoogleCloudMlV1__EncryptionConfig (..),
    newGoogleCloudMlV1__EncryptionConfig,

    -- ** GoogleCloudMlV1__EnvVar
    GoogleCloudMlV1__EnvVar (..),
    newGoogleCloudMlV1__EnvVar,

    -- ** GoogleCloudMlV1__ExplainRequest
    GoogleCloudMlV1__ExplainRequest (..),
    newGoogleCloudMlV1__ExplainRequest,

    -- ** GoogleCloudMlV1__ExplanationConfig
    GoogleCloudMlV1__ExplanationConfig (..),
    newGoogleCloudMlV1__ExplanationConfig,

    -- ** GoogleCloudMlV1__GetConfigResponse
    GoogleCloudMlV1__GetConfigResponse (..),
    newGoogleCloudMlV1__GetConfigResponse,

    -- ** GoogleCloudMlV1__HyperparameterOutput
    GoogleCloudMlV1__HyperparameterOutput (..),
    newGoogleCloudMlV1__HyperparameterOutput,

    -- ** GoogleCloudMlV1__HyperparameterOutput_Hyperparameters
    GoogleCloudMlV1__HyperparameterOutput_Hyperparameters (..),
    newGoogleCloudMlV1__HyperparameterOutput_Hyperparameters,

    -- ** GoogleCloudMlV1__HyperparameterOutput_State
    GoogleCloudMlV1__HyperparameterOutput_State (..),

    -- ** GoogleCloudMlV1__HyperparameterOutput_WebAccessUris
    GoogleCloudMlV1__HyperparameterOutput_WebAccessUris (..),
    newGoogleCloudMlV1__HyperparameterOutput_WebAccessUris,

    -- ** GoogleCloudMlV1__HyperparameterSpec
    GoogleCloudMlV1__HyperparameterSpec (..),
    newGoogleCloudMlV1__HyperparameterSpec,

    -- ** GoogleCloudMlV1__HyperparameterSpec_Algorithm
    GoogleCloudMlV1__HyperparameterSpec_Algorithm (..),

    -- ** GoogleCloudMlV1__HyperparameterSpec_Goal
    GoogleCloudMlV1__HyperparameterSpec_Goal (..),

    -- ** GoogleCloudMlV1__IntegratedGradientsAttribution
    GoogleCloudMlV1__IntegratedGradientsAttribution (..),
    newGoogleCloudMlV1__IntegratedGradientsAttribution,

    -- ** GoogleCloudMlV1__Job
    GoogleCloudMlV1__Job (..),
    newGoogleCloudMlV1__Job,

    -- ** GoogleCloudMlV1__Job_Labels
    GoogleCloudMlV1__Job_Labels (..),
    newGoogleCloudMlV1__Job_Labels,

    -- ** GoogleCloudMlV1__Job_State
    GoogleCloudMlV1__Job_State (..),

    -- ** GoogleCloudMlV1__ListJobsResponse
    GoogleCloudMlV1__ListJobsResponse (..),
    newGoogleCloudMlV1__ListJobsResponse,

    -- ** GoogleCloudMlV1__ListLocationsResponse
    GoogleCloudMlV1__ListLocationsResponse (..),
    newGoogleCloudMlV1__ListLocationsResponse,

    -- ** GoogleCloudMlV1__ListModelsResponse
    GoogleCloudMlV1__ListModelsResponse (..),
    newGoogleCloudMlV1__ListModelsResponse,

    -- ** GoogleCloudMlV1__ListOptimalTrialsRequest
    GoogleCloudMlV1__ListOptimalTrialsRequest (..),
    newGoogleCloudMlV1__ListOptimalTrialsRequest,

    -- ** GoogleCloudMlV1__ListOptimalTrialsResponse
    GoogleCloudMlV1__ListOptimalTrialsResponse (..),
    newGoogleCloudMlV1__ListOptimalTrialsResponse,

    -- ** GoogleCloudMlV1__ListStudiesResponse
    GoogleCloudMlV1__ListStudiesResponse (..),
    newGoogleCloudMlV1__ListStudiesResponse,

    -- ** GoogleCloudMlV1__ListTrialsResponse
    GoogleCloudMlV1__ListTrialsResponse (..),
    newGoogleCloudMlV1__ListTrialsResponse,

    -- ** GoogleCloudMlV1__ListVersionsResponse
    GoogleCloudMlV1__ListVersionsResponse (..),
    newGoogleCloudMlV1__ListVersionsResponse,

    -- ** GoogleCloudMlV1__Location
    GoogleCloudMlV1__Location (..),
    newGoogleCloudMlV1__Location,

    -- ** GoogleCloudMlV1__ManualScaling
    GoogleCloudMlV1__ManualScaling (..),
    newGoogleCloudMlV1__ManualScaling,

    -- ** GoogleCloudMlV1__Measurement
    GoogleCloudMlV1__Measurement (..),
    newGoogleCloudMlV1__Measurement,

    -- ** GoogleCloudMlV1__MetricSpec
    GoogleCloudMlV1__MetricSpec (..),
    newGoogleCloudMlV1__MetricSpec,

    -- ** GoogleCloudMlV1__MetricSpec_Name
    GoogleCloudMlV1__MetricSpec_Name (..),

    -- ** GoogleCloudMlV1__Model
    GoogleCloudMlV1__Model (..),
    newGoogleCloudMlV1__Model,

    -- ** GoogleCloudMlV1__Model_Labels
    GoogleCloudMlV1__Model_Labels (..),
    newGoogleCloudMlV1__Model_Labels,

    -- ** GoogleCloudMlV1__OperationMetadata
    GoogleCloudMlV1__OperationMetadata (..),
    newGoogleCloudMlV1__OperationMetadata,

    -- ** GoogleCloudMlV1__OperationMetadata_Labels
    GoogleCloudMlV1__OperationMetadata_Labels (..),
    newGoogleCloudMlV1__OperationMetadata_Labels,

    -- ** GoogleCloudMlV1__OperationMetadata_OperationType
    GoogleCloudMlV1__OperationMetadata_OperationType (..),

    -- ** GoogleCloudMlV1__ParameterSpec
    GoogleCloudMlV1__ParameterSpec (..),
    newGoogleCloudMlV1__ParameterSpec,

    -- ** GoogleCloudMlV1__ParameterSpec_ScaleType
    GoogleCloudMlV1__ParameterSpec_ScaleType (..),

    -- ** GoogleCloudMlV1__ParameterSpec_Type
    GoogleCloudMlV1__ParameterSpec_Type (..),

    -- ** GoogleCloudMlV1__PredictRequest
    GoogleCloudMlV1__PredictRequest (..),
    newGoogleCloudMlV1__PredictRequest,

    -- ** GoogleCloudMlV1__PredictionInput
    GoogleCloudMlV1__PredictionInput (..),
    newGoogleCloudMlV1__PredictionInput,

    -- ** GoogleCloudMlV1__PredictionInput_DataFormat
    GoogleCloudMlV1__PredictionInput_DataFormat (..),

    -- ** GoogleCloudMlV1__PredictionInput_OutputDataFormat
    GoogleCloudMlV1__PredictionInput_OutputDataFormat (..),

    -- ** GoogleCloudMlV1__PredictionOutput
    GoogleCloudMlV1__PredictionOutput (..),
    newGoogleCloudMlV1__PredictionOutput,

    -- ** GoogleCloudMlV1__ReplicaConfig
    GoogleCloudMlV1__ReplicaConfig (..),
    newGoogleCloudMlV1__ReplicaConfig,

    -- ** GoogleCloudMlV1__RequestLoggingConfig
    GoogleCloudMlV1__RequestLoggingConfig (..),
    newGoogleCloudMlV1__RequestLoggingConfig,

    -- ** GoogleCloudMlV1__RouteMap
    GoogleCloudMlV1__RouteMap (..),
    newGoogleCloudMlV1__RouteMap,

    -- ** GoogleCloudMlV1__SampledShapleyAttribution
    GoogleCloudMlV1__SampledShapleyAttribution (..),
    newGoogleCloudMlV1__SampledShapleyAttribution,

    -- ** GoogleCloudMlV1__Scheduling
    GoogleCloudMlV1__Scheduling (..),
    newGoogleCloudMlV1__Scheduling,

    -- ** GoogleCloudMlV1__SetDefaultVersionRequest
    GoogleCloudMlV1__SetDefaultVersionRequest (..),
    newGoogleCloudMlV1__SetDefaultVersionRequest,

    -- ** GoogleCloudMlV1__StopTrialRequest
    GoogleCloudMlV1__StopTrialRequest (..),
    newGoogleCloudMlV1__StopTrialRequest,

    -- ** GoogleCloudMlV1__Study
    GoogleCloudMlV1__Study (..),
    newGoogleCloudMlV1__Study,

    -- ** GoogleCloudMlV1__Study_State
    GoogleCloudMlV1__Study_State (..),

    -- ** GoogleCloudMlV1__StudyConfig
    GoogleCloudMlV1__StudyConfig (..),
    newGoogleCloudMlV1__StudyConfig,

    -- ** GoogleCloudMlV1__StudyConfig_Algorithm
    GoogleCloudMlV1__StudyConfig_Algorithm (..),

    -- ** GoogleCloudMlV1__SuggestTrialsMetadata
    GoogleCloudMlV1__SuggestTrialsMetadata (..),
    newGoogleCloudMlV1__SuggestTrialsMetadata,

    -- ** GoogleCloudMlV1__SuggestTrialsRequest
    GoogleCloudMlV1__SuggestTrialsRequest (..),
    newGoogleCloudMlV1__SuggestTrialsRequest,

    -- ** GoogleCloudMlV1__SuggestTrialsResponse
    GoogleCloudMlV1__SuggestTrialsResponse (..),
    newGoogleCloudMlV1__SuggestTrialsResponse,

    -- ** GoogleCloudMlV1__SuggestTrialsResponse_StudyState
    GoogleCloudMlV1__SuggestTrialsResponse_StudyState (..),

    -- ** GoogleCloudMlV1__TrainingInput
    GoogleCloudMlV1__TrainingInput (..),
    newGoogleCloudMlV1__TrainingInput,

    -- ** GoogleCloudMlV1__TrainingInput_ScaleTier
    GoogleCloudMlV1__TrainingInput_ScaleTier (..),

    -- ** GoogleCloudMlV1__TrainingOutput
    GoogleCloudMlV1__TrainingOutput (..),
    newGoogleCloudMlV1__TrainingOutput,

    -- ** GoogleCloudMlV1__TrainingOutput_WebAccessUris
    GoogleCloudMlV1__TrainingOutput_WebAccessUris (..),
    newGoogleCloudMlV1__TrainingOutput_WebAccessUris,

    -- ** GoogleCloudMlV1__Trial
    GoogleCloudMlV1__Trial (..),
    newGoogleCloudMlV1__Trial,

    -- ** GoogleCloudMlV1__Trial_State
    GoogleCloudMlV1__Trial_State (..),

    -- ** GoogleCloudMlV1__Version
    GoogleCloudMlV1__Version (..),
    newGoogleCloudMlV1__Version,

    -- ** GoogleCloudMlV1__Version_Framework
    GoogleCloudMlV1__Version_Framework (..),

    -- ** GoogleCloudMlV1__Version_Labels
    GoogleCloudMlV1__Version_Labels (..),
    newGoogleCloudMlV1__Version_Labels,

    -- ** GoogleCloudMlV1__Version_State
    GoogleCloudMlV1__Version_State (..),

    -- ** GoogleCloudMlV1__XraiAttribution
    GoogleCloudMlV1__XraiAttribution (..),
    newGoogleCloudMlV1__XraiAttribution,

    -- ** GoogleIamV1__AuditConfig
    GoogleIamV1__AuditConfig (..),
    newGoogleIamV1__AuditConfig,

    -- ** GoogleIamV1__AuditLogConfig
    GoogleIamV1__AuditLogConfig (..),
    newGoogleIamV1__AuditLogConfig,

    -- ** GoogleIamV1__AuditLogConfig_LogType
    GoogleIamV1__AuditLogConfig_LogType (..),

    -- ** GoogleIamV1__Binding
    GoogleIamV1__Binding (..),
    newGoogleIamV1__Binding,

    -- ** GoogleIamV1__Policy
    GoogleIamV1__Policy (..),
    newGoogleIamV1__Policy,

    -- ** GoogleIamV1__SetIamPolicyRequest
    GoogleIamV1__SetIamPolicyRequest (..),
    newGoogleIamV1__SetIamPolicyRequest,

    -- ** GoogleIamV1__TestIamPermissionsRequest
    GoogleIamV1__TestIamPermissionsRequest (..),
    newGoogleIamV1__TestIamPermissionsRequest,

    -- ** GoogleIamV1__TestIamPermissionsResponse
    GoogleIamV1__TestIamPermissionsResponse (..),
    newGoogleIamV1__TestIamPermissionsResponse,

    -- ** GoogleLongrunning__ListOperationsResponse
    GoogleLongrunning__ListOperationsResponse (..),
    newGoogleLongrunning__ListOperationsResponse,

    -- ** GoogleLongrunning__Operation
    GoogleLongrunning__Operation (..),
    newGoogleLongrunning__Operation,

    -- ** GoogleLongrunning__Operation_Metadata
    GoogleLongrunning__Operation_Metadata (..),
    newGoogleLongrunning__Operation_Metadata,

    -- ** GoogleLongrunning__Operation_Response
    GoogleLongrunning__Operation_Response (..),
    newGoogleLongrunning__Operation_Response,

    -- ** GoogleProtobuf__Empty
    GoogleProtobuf__Empty (..),
    newGoogleProtobuf__Empty,

    -- ** GoogleRpc__Status
    GoogleRpc__Status (..),
    newGoogleRpc__Status,

    -- ** GoogleRpc__Status_DetailsItem
    GoogleRpc__Status_DetailsItem (..),
    newGoogleRpc__Status_DetailsItem,

    -- ** GoogleType__Expr
    GoogleType__Expr (..),
    newGoogleType__Expr,
  )
where

import Gogol.MachineLearning.Ml.Projects.Explain
import Gogol.MachineLearning.Ml.Projects.GetConfig
import Gogol.MachineLearning.Ml.Projects.Jobs.Cancel
import Gogol.MachineLearning.Ml.Projects.Jobs.Create
import Gogol.MachineLearning.Ml.Projects.Jobs.Get
import Gogol.MachineLearning.Ml.Projects.Jobs.GetIamPolicy
import Gogol.MachineLearning.Ml.Projects.Jobs.List
import Gogol.MachineLearning.Ml.Projects.Jobs.Patch
import Gogol.MachineLearning.Ml.Projects.Jobs.SetIamPolicy
import Gogol.MachineLearning.Ml.Projects.Jobs.TestIamPermissions
import Gogol.MachineLearning.Ml.Projects.Locations.Get
import Gogol.MachineLearning.Ml.Projects.Locations.List
import Gogol.MachineLearning.Ml.Projects.Locations.Operations.Cancel
import Gogol.MachineLearning.Ml.Projects.Locations.Operations.Get
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Create
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Delete
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Get
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.List
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.AddMeasurement
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.CheckEarlyStoppingState
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Complete
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Create
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Delete
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Get
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.List
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.ListOptimalTrials
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Stop
import Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Suggest
import Gogol.MachineLearning.Ml.Projects.Models.Create
import Gogol.MachineLearning.Ml.Projects.Models.Delete
import Gogol.MachineLearning.Ml.Projects.Models.Get
import Gogol.MachineLearning.Ml.Projects.Models.GetIamPolicy
import Gogol.MachineLearning.Ml.Projects.Models.List
import Gogol.MachineLearning.Ml.Projects.Models.Patch
import Gogol.MachineLearning.Ml.Projects.Models.SetIamPolicy
import Gogol.MachineLearning.Ml.Projects.Models.TestIamPermissions
import Gogol.MachineLearning.Ml.Projects.Models.Versions.Create
import Gogol.MachineLearning.Ml.Projects.Models.Versions.Delete
import Gogol.MachineLearning.Ml.Projects.Models.Versions.Get
import Gogol.MachineLearning.Ml.Projects.Models.Versions.List
import Gogol.MachineLearning.Ml.Projects.Models.Versions.Patch
import Gogol.MachineLearning.Ml.Projects.Models.Versions.SetDefault
import Gogol.MachineLearning.Ml.Projects.Operations.Cancel
import Gogol.MachineLearning.Ml.Projects.Operations.Get
import Gogol.MachineLearning.Ml.Projects.Operations.List
import Gogol.MachineLearning.Ml.Projects.Predict
import Gogol.MachineLearning.Types
