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
-- Module      : Network.Google.MachineLearning
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API to enable creating and using machine learning models.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference>
module Network.Google.MachineLearning
  ( -- * Configuration
    machineLearningService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,

    -- * Resources

    -- ** ml.projects.explain
    MlProjectsExplainResource,
    newMlProjectsExplain,
    MlProjectsExplain,

    -- ** ml.projects.getConfig
    MlProjectsGetConfigResource,
    newMlProjectsGetConfig,
    MlProjectsGetConfig,

    -- ** ml.projects.jobs.cancel
    MlProjectsJobsCancelResource,
    newMlProjectsJobsCancel,
    MlProjectsJobsCancel,

    -- ** ml.projects.jobs.create
    MlProjectsJobsCreateResource,
    newMlProjectsJobsCreate,
    MlProjectsJobsCreate,

    -- ** ml.projects.jobs.get
    MlProjectsJobsGetResource,
    newMlProjectsJobsGet,
    MlProjectsJobsGet,

    -- ** ml.projects.jobs.getIamPolicy
    MlProjectsJobsGetIamPolicyResource,
    newMlProjectsJobsGetIamPolicy,
    MlProjectsJobsGetIamPolicy,

    -- ** ml.projects.jobs.list
    MlProjectsJobsListResource,
    newMlProjectsJobsList,
    MlProjectsJobsList,

    -- ** ml.projects.jobs.patch
    MlProjectsJobsPatchResource,
    newMlProjectsJobsPatch,
    MlProjectsJobsPatch,

    -- ** ml.projects.jobs.setIamPolicy
    MlProjectsJobsSetIamPolicyResource,
    newMlProjectsJobsSetIamPolicy,
    MlProjectsJobsSetIamPolicy,

    -- ** ml.projects.jobs.testIamPermissions
    MlProjectsJobsTestIamPermissionsResource,
    newMlProjectsJobsTestIamPermissions,
    MlProjectsJobsTestIamPermissions,

    -- ** ml.projects.locations.get
    MlProjectsLocationsGetResource,
    newMlProjectsLocationsGet,
    MlProjectsLocationsGet,

    -- ** ml.projects.locations.list
    MlProjectsLocationsListResource,
    newMlProjectsLocationsList,
    MlProjectsLocationsList,

    -- ** ml.projects.locations.operations.cancel
    MlProjectsLocationsOperationsCancelResource,
    newMlProjectsLocationsOperationsCancel,
    MlProjectsLocationsOperationsCancel,

    -- ** ml.projects.locations.operations.get
    MlProjectsLocationsOperationsGetResource,
    newMlProjectsLocationsOperationsGet,
    MlProjectsLocationsOperationsGet,

    -- ** ml.projects.locations.studies.create
    MlProjectsLocationsStudiesCreateResource,
    newMlProjectsLocationsStudiesCreate,
    MlProjectsLocationsStudiesCreate,

    -- ** ml.projects.locations.studies.delete
    MlProjectsLocationsStudiesDeleteResource,
    newMlProjectsLocationsStudiesDelete,
    MlProjectsLocationsStudiesDelete,

    -- ** ml.projects.locations.studies.get
    MlProjectsLocationsStudiesGetResource,
    newMlProjectsLocationsStudiesGet,
    MlProjectsLocationsStudiesGet,

    -- ** ml.projects.locations.studies.list
    MlProjectsLocationsStudiesListResource,
    newMlProjectsLocationsStudiesList,
    MlProjectsLocationsStudiesList,

    -- ** ml.projects.locations.studies.trials.addMeasurement
    MlProjectsLocationsStudiesTrialsAddMeasurementResource,
    newMlProjectsLocationsStudiesTrialsAddMeasurement,
    MlProjectsLocationsStudiesTrialsAddMeasurement,

    -- ** ml.projects.locations.studies.trials.checkEarlyStoppingState
    MlProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource,
    newMlProjectsLocationsStudiesTrialsCheckEarlyStoppingState,
    MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState,

    -- ** ml.projects.locations.studies.trials.complete
    MlProjectsLocationsStudiesTrialsCompleteResource,
    newMlProjectsLocationsStudiesTrialsComplete,
    MlProjectsLocationsStudiesTrialsComplete,

    -- ** ml.projects.locations.studies.trials.create
    MlProjectsLocationsStudiesTrialsCreateResource,
    newMlProjectsLocationsStudiesTrialsCreate,
    MlProjectsLocationsStudiesTrialsCreate,

    -- ** ml.projects.locations.studies.trials.delete
    MlProjectsLocationsStudiesTrialsDeleteResource,
    newMlProjectsLocationsStudiesTrialsDelete,
    MlProjectsLocationsStudiesTrialsDelete,

    -- ** ml.projects.locations.studies.trials.get
    MlProjectsLocationsStudiesTrialsGetResource,
    newMlProjectsLocationsStudiesTrialsGet,
    MlProjectsLocationsStudiesTrialsGet,

    -- ** ml.projects.locations.studies.trials.list
    MlProjectsLocationsStudiesTrialsListResource,
    newMlProjectsLocationsStudiesTrialsList,
    MlProjectsLocationsStudiesTrialsList,

    -- ** ml.projects.locations.studies.trials.listOptimalTrials
    MlProjectsLocationsStudiesTrialsListOptimalTrialsResource,
    newMlProjectsLocationsStudiesTrialsListOptimalTrials,
    MlProjectsLocationsStudiesTrialsListOptimalTrials,

    -- ** ml.projects.locations.studies.trials.stop
    MlProjectsLocationsStudiesTrialsStopResource,
    newMlProjectsLocationsStudiesTrialsStop,
    MlProjectsLocationsStudiesTrialsStop,

    -- ** ml.projects.locations.studies.trials.suggest
    MlProjectsLocationsStudiesTrialsSuggestResource,
    newMlProjectsLocationsStudiesTrialsSuggest,
    MlProjectsLocationsStudiesTrialsSuggest,

    -- ** ml.projects.models.create
    MlProjectsModelsCreateResource,
    newMlProjectsModelsCreate,
    MlProjectsModelsCreate,

    -- ** ml.projects.models.delete
    MlProjectsModelsDeleteResource,
    newMlProjectsModelsDelete,
    MlProjectsModelsDelete,

    -- ** ml.projects.models.get
    MlProjectsModelsGetResource,
    newMlProjectsModelsGet,
    MlProjectsModelsGet,

    -- ** ml.projects.models.getIamPolicy
    MlProjectsModelsGetIamPolicyResource,
    newMlProjectsModelsGetIamPolicy,
    MlProjectsModelsGetIamPolicy,

    -- ** ml.projects.models.list
    MlProjectsModelsListResource,
    newMlProjectsModelsList,
    MlProjectsModelsList,

    -- ** ml.projects.models.patch
    MlProjectsModelsPatchResource,
    newMlProjectsModelsPatch,
    MlProjectsModelsPatch,

    -- ** ml.projects.models.setIamPolicy
    MlProjectsModelsSetIamPolicyResource,
    newMlProjectsModelsSetIamPolicy,
    MlProjectsModelsSetIamPolicy,

    -- ** ml.projects.models.testIamPermissions
    MlProjectsModelsTestIamPermissionsResource,
    newMlProjectsModelsTestIamPermissions,
    MlProjectsModelsTestIamPermissions,

    -- ** ml.projects.models.versions.create
    MlProjectsModelsVersionsCreateResource,
    newMlProjectsModelsVersionsCreate,
    MlProjectsModelsVersionsCreate,

    -- ** ml.projects.models.versions.delete
    MlProjectsModelsVersionsDeleteResource,
    newMlProjectsModelsVersionsDelete,
    MlProjectsModelsVersionsDelete,

    -- ** ml.projects.models.versions.get
    MlProjectsModelsVersionsGetResource,
    newMlProjectsModelsVersionsGet,
    MlProjectsModelsVersionsGet,

    -- ** ml.projects.models.versions.list
    MlProjectsModelsVersionsListResource,
    newMlProjectsModelsVersionsList,
    MlProjectsModelsVersionsList,

    -- ** ml.projects.models.versions.patch
    MlProjectsModelsVersionsPatchResource,
    newMlProjectsModelsVersionsPatch,
    MlProjectsModelsVersionsPatch,

    -- ** ml.projects.models.versions.setDefault
    MlProjectsModelsVersionsSetDefaultResource,
    newMlProjectsModelsVersionsSetDefault,
    MlProjectsModelsVersionsSetDefault,

    -- ** ml.projects.operations.cancel
    MlProjectsOperationsCancelResource,
    newMlProjectsOperationsCancel,
    MlProjectsOperationsCancel,

    -- ** ml.projects.operations.get
    MlProjectsOperationsGetResource,
    newMlProjectsOperationsGet,
    MlProjectsOperationsGet,

    -- ** ml.projects.operations.list
    MlProjectsOperationsListResource,
    newMlProjectsOperationsList,
    MlProjectsOperationsList,

    -- ** ml.projects.predict
    MlProjectsPredictResource,
    newMlProjectsPredict,
    MlProjectsPredict,

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

import Network.Google.MachineLearning.Ml.Projects.Explain
import Network.Google.MachineLearning.Ml.Projects.GetConfig
import Network.Google.MachineLearning.Ml.Projects.Jobs.Cancel
import Network.Google.MachineLearning.Ml.Projects.Jobs.Create
import Network.Google.MachineLearning.Ml.Projects.Jobs.Get
import Network.Google.MachineLearning.Ml.Projects.Jobs.GetIamPolicy
import Network.Google.MachineLearning.Ml.Projects.Jobs.List
import Network.Google.MachineLearning.Ml.Projects.Jobs.Patch
import Network.Google.MachineLearning.Ml.Projects.Jobs.SetIamPolicy
import Network.Google.MachineLearning.Ml.Projects.Jobs.TestIamPermissions
import Network.Google.MachineLearning.Ml.Projects.Locations.Get
import Network.Google.MachineLearning.Ml.Projects.Locations.List
import Network.Google.MachineLearning.Ml.Projects.Locations.Operations.Cancel
import Network.Google.MachineLearning.Ml.Projects.Locations.Operations.Get
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Create
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Delete
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Get
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.List
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.AddMeasurement
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.CheckEarlyStoppingState
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.Complete
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.Create
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.Delete
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.Get
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.List
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.ListOptimalTrials
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.Stop
import Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.Suggest
import Network.Google.MachineLearning.Ml.Projects.Models.Create
import Network.Google.MachineLearning.Ml.Projects.Models.Delete
import Network.Google.MachineLearning.Ml.Projects.Models.Get
import Network.Google.MachineLearning.Ml.Projects.Models.GetIamPolicy
import Network.Google.MachineLearning.Ml.Projects.Models.List
import Network.Google.MachineLearning.Ml.Projects.Models.Patch
import Network.Google.MachineLearning.Ml.Projects.Models.SetIamPolicy
import Network.Google.MachineLearning.Ml.Projects.Models.TestIamPermissions
import Network.Google.MachineLearning.Ml.Projects.Models.Versions.Create
import Network.Google.MachineLearning.Ml.Projects.Models.Versions.Delete
import Network.Google.MachineLearning.Ml.Projects.Models.Versions.Get
import Network.Google.MachineLearning.Ml.Projects.Models.Versions.List
import Network.Google.MachineLearning.Ml.Projects.Models.Versions.Patch
import Network.Google.MachineLearning.Ml.Projects.Models.Versions.SetDefault
import Network.Google.MachineLearning.Ml.Projects.Operations.Cancel
import Network.Google.MachineLearning.Ml.Projects.Operations.Get
import Network.Google.MachineLearning.Ml.Projects.Operations.List
import Network.Google.MachineLearning.Ml.Projects.Predict
import Network.Google.MachineLearning.Types
