{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.MachineLearning
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API to enable creating and using machine learning models.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference>
module Network.Google.MachineLearning
    (
    -- * Service Configuration
      machineLearningService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * API Declaration
    , MachineLearningAPI

    -- * Resources

    -- ** ml.projects.explain
    , module Network.Google.Resource.Ml.Projects.Explain

    -- ** ml.projects.getConfig
    , module Network.Google.Resource.Ml.Projects.GetConfig

    -- ** ml.projects.jobs.cancel
    , module Network.Google.Resource.Ml.Projects.Jobs.Cancel

    -- ** ml.projects.jobs.create
    , module Network.Google.Resource.Ml.Projects.Jobs.Create

    -- ** ml.projects.jobs.get
    , module Network.Google.Resource.Ml.Projects.Jobs.Get

    -- ** ml.projects.jobs.getIamPolicy
    , module Network.Google.Resource.Ml.Projects.Jobs.GetIAMPolicy

    -- ** ml.projects.jobs.list
    , module Network.Google.Resource.Ml.Projects.Jobs.List

    -- ** ml.projects.jobs.patch
    , module Network.Google.Resource.Ml.Projects.Jobs.Patch

    -- ** ml.projects.jobs.setIamPolicy
    , module Network.Google.Resource.Ml.Projects.Jobs.SetIAMPolicy

    -- ** ml.projects.jobs.testIamPermissions
    , module Network.Google.Resource.Ml.Projects.Jobs.TestIAMPermissions

    -- ** ml.projects.locations.get
    , module Network.Google.Resource.Ml.Projects.Locations.Get

    -- ** ml.projects.locations.list
    , module Network.Google.Resource.Ml.Projects.Locations.List

    -- ** ml.projects.locations.operations.cancel
    , module Network.Google.Resource.Ml.Projects.Locations.Operations.Cancel

    -- ** ml.projects.locations.operations.get
    , module Network.Google.Resource.Ml.Projects.Locations.Operations.Get

    -- ** ml.projects.locations.studies.create
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Create

    -- ** ml.projects.locations.studies.delete
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Delete

    -- ** ml.projects.locations.studies.get
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Get

    -- ** ml.projects.locations.studies.list
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.List

    -- ** ml.projects.locations.studies.trials.addMeasurement
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.AddMeasurement

    -- ** ml.projects.locations.studies.trials.checkEarlyStoppingState
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.CheckEarlyStoppingState

    -- ** ml.projects.locations.studies.trials.complete
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Complete

    -- ** ml.projects.locations.studies.trials.create
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Create

    -- ** ml.projects.locations.studies.trials.delete
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Delete

    -- ** ml.projects.locations.studies.trials.get
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Get

    -- ** ml.projects.locations.studies.trials.list
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.List

    -- ** ml.projects.locations.studies.trials.listOptimalTrials
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.ListOptimalTrials

    -- ** ml.projects.locations.studies.trials.stop
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Stop

    -- ** ml.projects.locations.studies.trials.suggest
    , module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Suggest

    -- ** ml.projects.models.create
    , module Network.Google.Resource.Ml.Projects.Models.Create

    -- ** ml.projects.models.delete
    , module Network.Google.Resource.Ml.Projects.Models.Delete

    -- ** ml.projects.models.get
    , module Network.Google.Resource.Ml.Projects.Models.Get

    -- ** ml.projects.models.getIamPolicy
    , module Network.Google.Resource.Ml.Projects.Models.GetIAMPolicy

    -- ** ml.projects.models.list
    , module Network.Google.Resource.Ml.Projects.Models.List

    -- ** ml.projects.models.patch
    , module Network.Google.Resource.Ml.Projects.Models.Patch

    -- ** ml.projects.models.setIamPolicy
    , module Network.Google.Resource.Ml.Projects.Models.SetIAMPolicy

    -- ** ml.projects.models.testIamPermissions
    , module Network.Google.Resource.Ml.Projects.Models.TestIAMPermissions

    -- ** ml.projects.models.versions.create
    , module Network.Google.Resource.Ml.Projects.Models.Versions.Create

    -- ** ml.projects.models.versions.delete
    , module Network.Google.Resource.Ml.Projects.Models.Versions.Delete

    -- ** ml.projects.models.versions.get
    , module Network.Google.Resource.Ml.Projects.Models.Versions.Get

    -- ** ml.projects.models.versions.list
    , module Network.Google.Resource.Ml.Projects.Models.Versions.List

    -- ** ml.projects.models.versions.patch
    , module Network.Google.Resource.Ml.Projects.Models.Versions.Patch

    -- ** ml.projects.models.versions.setDefault
    , module Network.Google.Resource.Ml.Projects.Models.Versions.SetDefault

    -- ** ml.projects.operations.cancel
    , module Network.Google.Resource.Ml.Projects.Operations.Cancel

    -- ** ml.projects.operations.get
    , module Network.Google.Resource.Ml.Projects.Operations.Get

    -- ** ml.projects.operations.list
    , module Network.Google.Resource.Ml.Projects.Operations.List

    -- ** ml.projects.predict
    , module Network.Google.Resource.Ml.Projects.Predict

    -- * Types

    -- ** GoogleIAMV1__AuditConfig
    , GoogleIAMV1__AuditConfig
    , googleIAMV1__AuditConfig
    , givacService
    , givacAuditLogConfigs

    -- ** GoogleCloudMlV1__Measurement
    , GoogleCloudMlV1__Measurement
    , googleCloudMlV1__Measurement
    , gcmvmMetrics
    , gcmvmElapsedTime
    , gcmvmStepCount

    -- ** GoogleCloudMlV1__Version
    , GoogleCloudMlV1__Version
    , googleCloudMlV1__Version
    , gcmvvFramework
    , gcmvvEtag
    , gcmvvState
    , gcmvvRoutes
    , gcmvvAutoScaling
    , gcmvvPythonVersion
    , gcmvvRuntimeVersion
    , gcmvvExplanationConfig
    , gcmvvLastMigrationModelId
    , gcmvvLastUseTime
    , gcmvvServiceAccount
    , gcmvvName
    , gcmvvPackageURIs
    , gcmvvContainer
    , gcmvvDeploymentURI
    , gcmvvManualScaling
    , gcmvvAcceleratorConfig
    , gcmvvMachineType
    , gcmvvLabels
    , gcmvvRequestLoggingConfig
    , gcmvvPredictionClass
    , gcmvvLastMigrationTime
    , gcmvvErrorMessage
    , gcmvvDescription
    , gcmvvCreateTime
    , gcmvvIsDefault

    -- ** GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
    , GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
    , googleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig
    , gcmvascmascUseElapsedTime

    -- ** GoogleCloudMlV1__PredictionOutput
    , GoogleCloudMlV1__PredictionOutput
    , googleCloudMlV1__PredictionOutput
    , gcmvpoNodeHours
    , gcmvpoErrorCount
    , gcmvpoPredictionCount
    , gcmvpoOutputPath

    -- ** GoogleCloudMlV1__StudyConfigAlgorithm
    , GoogleCloudMlV1__StudyConfigAlgorithm (..)

    -- ** GoogleCloudMlV1__SampledShapleyAttribution
    , GoogleCloudMlV1__SampledShapleyAttribution
    , googleCloudMlV1__SampledShapleyAttribution
    , gcmvssaNumPaths

    -- ** GoogleCloudMlV1__HyperparameterOutputWebAccessURIs
    , GoogleCloudMlV1__HyperparameterOutputWebAccessURIs
    , googleCloudMlV1__HyperparameterOutputWebAccessURIs
    , gcmvhowauAddtional

    -- ** GoogleCloudMlV1__BuiltInAlgorithmOutput
    , GoogleCloudMlV1__BuiltInAlgorithmOutput
    , googleCloudMlV1__BuiltInAlgorithmOutput
    , gcmvbiaoFramework
    , gcmvbiaoPythonVersion
    , gcmvbiaoRuntimeVersion
    , gcmvbiaoModelPath

    -- ** GoogleCloudMlV1_StudyConfig_ParameterSpecType
    , GoogleCloudMlV1_StudyConfig_ParameterSpecType (..)

    -- ** GoogleCloudMlV1__HyperparameterOutputHyperparameters
    , GoogleCloudMlV1__HyperparameterOutputHyperparameters
    , googleCloudMlV1__HyperparameterOutputHyperparameters
    , gcmvhohAddtional

    -- ** GoogleCloudMlV1__AutomatedStoppingConfig
    , GoogleCloudMlV1__AutomatedStoppingConfig
    , googleCloudMlV1__AutomatedStoppingConfig
    , gcmvascDecayCurveStoppingConfig
    , gcmvascMedianAutomatedStoppingConfig

    -- ** GoogleCloudMlV1__PredictRequest
    , GoogleCloudMlV1__PredictRequest
    , googleCloudMlV1__PredictRequest
    , gcmvprHTTPBody

    -- ** GoogleCloudMlV1__SuggestTrialsRequest
    , GoogleCloudMlV1__SuggestTrialsRequest
    , googleCloudMlV1__SuggestTrialsRequest
    , gcmvstrClientId
    , gcmvstrSuggestionCount

    -- ** GoogleCloudMlV1__ParameterSpecType
    , GoogleCloudMlV1__ParameterSpecType (..)

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
    , GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
    , googleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec
    , gcmvscpsdvsValues

    -- ** GoogleCloudMlV1_StudyConfig_MetricSpec
    , GoogleCloudMlV1_StudyConfig_MetricSpec
    , googleCloudMlV1_StudyConfig_MetricSpec
    , gcmvscmsMetric
    , gcmvscmsGoal

    -- ** GoogleCloudMlV1__TrainingInputScaleTier
    , GoogleCloudMlV1__TrainingInputScaleTier (..)

    -- ** GoogleLongrunning__OperationResponse
    , GoogleLongrunning__OperationResponse
    , googleLongrunning__OperationResponse
    , glorAddtional

    -- ** GoogleCloudMlV1__ParameterSpecScaleType
    , GoogleCloudMlV1__ParameterSpecScaleType (..)

    -- ** GoogleCloudMlV1__XraiAttribution
    , GoogleCloudMlV1__XraiAttribution
    , googleCloudMlV1__XraiAttribution
    , gcmvxaNumIntegralSteps

    -- ** GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
    , GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse
    , googleCloudMlV1__CheckTrialEarlyStoppingStateResponse
    , gcmvctessrStartTime
    , gcmvctessrShouldStop
    , gcmvctessrEndTime

    -- ** GoogleIAMV1__AuditLogConfig
    , GoogleIAMV1__AuditLogConfig
    , googleIAMV1__AuditLogConfig
    , givalcLogType
    , givalcExemptedMembers

    -- ** GoogleCloudMlV1__VersionFramework
    , GoogleCloudMlV1__VersionFramework (..)

    -- ** GoogleCloudMlV1__SuggestTrialsResponse
    , GoogleCloudMlV1__SuggestTrialsResponse
    , googleCloudMlV1__SuggestTrialsResponse
    , gcmvstrStartTime
    , gcmvstrStudyState
    , gcmvstrEndTime
    , gcmvstrTrials

    -- ** GoogleCloudMlV1__MetricSpecName
    , GoogleCloudMlV1__MetricSpecName (..)

    -- ** GoogleCloudMlV1__SuggestTrialsResponseStudyState
    , GoogleCloudMlV1__SuggestTrialsResponseStudyState (..)

    -- ** GoogleCloudMlV1_Measurement_Metric
    , GoogleCloudMlV1_Measurement_Metric
    , googleCloudMlV1_Measurement_Metric
    , gcmvmmValue
    , gcmvmmMetric

    -- ** GoogleCloudMlV1__ExplainRequest
    , GoogleCloudMlV1__ExplainRequest
    , googleCloudMlV1__ExplainRequest
    , gcmverHTTPBody

    -- ** GoogleCloudMlV1__ListModelsResponse
    , GoogleCloudMlV1__ListModelsResponse
    , googleCloudMlV1__ListModelsResponse
    , gcmvlmrNextPageToken
    , gcmvlmrModels

    -- ** GoogleCloudMlV1__VersionState
    , GoogleCloudMlV1__VersionState (..)

    -- ** GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
    , GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
    , googleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig
    , gcmvascdcascUseElapsedTime

    -- ** GoogleLongrunning__ListOperationsResponse
    , GoogleLongrunning__ListOperationsResponse
    , googleLongrunning__ListOperationsResponse
    , gllorNextPageToken
    , gllorOperations

    -- ** GoogleCloudMlV1__AcceleratorConfig
    , GoogleCloudMlV1__AcceleratorConfig
    , googleCloudMlV1__AcceleratorConfig
    , gcmvacCount
    , gcmvacType

    -- ** GoogleIAMV1__Policy
    , GoogleIAMV1__Policy
    , googleIAMV1__Policy
    , givpAuditConfigs
    , givpEtag
    , givpVersion
    , givpBindings

    -- ** GoogleIAMV1__TestIAMPermissionsResponse
    , GoogleIAMV1__TestIAMPermissionsResponse
    , googleIAMV1__TestIAMPermissionsResponse
    , givtiprPermissions

    -- ** GoogleCloudMlV1__EncryptionConfig
    , GoogleCloudMlV1__EncryptionConfig
    , googleCloudMlV1__EncryptionConfig
    , gcmvecKmsKeyName

    -- ** GoogleCloudMlV1__HyperparameterSpecAlgorithm
    , GoogleCloudMlV1__HyperparameterSpecAlgorithm (..)

    -- ** GoogleCloudMlV1__ListJobsResponse
    , GoogleCloudMlV1__ListJobsResponse
    , googleCloudMlV1__ListJobsResponse
    , gcmvljrNextPageToken
    , gcmvljrJobs

    -- ** GoogleCloudMlV1__StudyConfig
    , GoogleCloudMlV1__StudyConfig
    , googleCloudMlV1__StudyConfig
    , gcmvscMetrics
    , gcmvscAutomatedStoppingConfig
    , gcmvscAlgorithm
    , gcmvscParameters

    -- ** GoogleCloudMlV1__SuggestTrialsMetadata
    , GoogleCloudMlV1__SuggestTrialsMetadata
    , googleCloudMlV1__SuggestTrialsMetadata
    , gcmvstmClientId
    , gcmvstmSuggestionCount
    , gcmvstmStudy
    , gcmvstmCreateTime

    -- ** GoogleCloudMlV1__ListVersionsResponse
    , GoogleCloudMlV1__ListVersionsResponse
    , googleCloudMlV1__ListVersionsResponse
    , gcmvlvrNextPageToken
    , gcmvlvrVersions

    -- ** GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem
    , GoogleCloudMlV1__CapabilityAvailableAcceleratorsItem (..)

    -- ** GoogleType__Expr
    , GoogleType__Expr
    , googleType__Expr
    , gteLocation
    , gteExpression
    , gteTitle
    , gteDescription

    -- ** GoogleCloudMlV1__ListOptimalTrialsRequest
    , GoogleCloudMlV1__ListOptimalTrialsRequest
    , googleCloudMlV1__ListOptimalTrialsRequest

    -- ** GoogleCloudMlV1__JobState
    , GoogleCloudMlV1__JobState (..)

    -- ** GoogleCloudMlV1__PredictionInputDataFormat
    , GoogleCloudMlV1__PredictionInputDataFormat (..)

    -- ** GoogleCloudMlV1__ListStudiesResponse
    , GoogleCloudMlV1__ListStudiesResponse
    , googleCloudMlV1__ListStudiesResponse
    , gcmvlsrStudies

    -- ** GoogleCloudMlV1__CapabilityType
    , GoogleCloudMlV1__CapabilityType (..)

    -- ** GoogleCloudMlV1__HyperparameterOutput
    , GoogleCloudMlV1__HyperparameterOutput
    , googleCloudMlV1__HyperparameterOutput
    , gcmvhoState
    , gcmvhoIsTrialStoppedEarly
    , gcmvhoStartTime
    , gcmvhoAllMetrics
    , gcmvhoHyperparameters
    , gcmvhoTrialId
    , gcmvhoEndTime
    , gcmvhoFinalMetric
    , gcmvhoBuiltInAlgorithmOutput
    , gcmvhoWebAccessURIs

    -- ** GoogleCloudMlV1__StudyState
    , GoogleCloudMlV1__StudyState (..)

    -- ** GoogleCloudMlV1__GetConfigResponse
    , GoogleCloudMlV1__GetConfigResponse
    , googleCloudMlV1__GetConfigResponse
    , gcmvgcrConfig
    , gcmvgcrServiceAccount
    , gcmvgcrServiceAccountProject

    -- ** GoogleCloudMlV1__PredictionInputOutputDataFormat
    , GoogleCloudMlV1__PredictionInputOutputDataFormat (..)

    -- ** GoogleCloudMlV1__Study
    , GoogleCloudMlV1__Study
    , googleCloudMlV1__Study
    , gcmvsState
    , gcmvsName
    , gcmvsInactiveReason
    , gcmvsStudyConfig
    , gcmvsCreateTime

    -- ** GoogleCloudMlV1__ManualScaling
    , GoogleCloudMlV1__ManualScaling
    , googleCloudMlV1__ManualScaling
    , gcmvmsNodes

    -- ** GoogleLongrunning__Operation
    , GoogleLongrunning__Operation
    , googleLongrunning__Operation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- ** GoogleCloudMlV1__Model
    , GoogleCloudMlV1__Model
    , googleCloudMlV1__Model
    , gcmvmEtag
    , gcmvmRegions
    , gcmvmDefaultVersion
    , gcmvmName
    , gcmvmLabels
    , gcmvmOnlinePredictionConsoleLogging
    , gcmvmDescription
    , gcmvmOnlinePredictionLogging

    -- ** GoogleCloudMlV1__Job
    , GoogleCloudMlV1__Job
    , googleCloudMlV1__Job
    , gcmvjEtag
    , gcmvjState
    , gcmvjTrainingOutput
    , gcmvjJobId
    , gcmvjStartTime
    , gcmvjPredictionInput
    , gcmvjEndTime
    , gcmvjPredictionOutput
    , gcmvjLabels
    , gcmvjErrorMessage
    , gcmvjTrainingInput
    , gcmvjCreateTime

    -- ** GoogleCloudMlV1__HyperparameterSpecGoal
    , GoogleCloudMlV1__HyperparameterSpecGoal (..)

    -- ** GoogleCloudMlV1__SetDefaultVersionRequest
    , GoogleCloudMlV1__SetDefaultVersionRequest
    , googleCloudMlV1__SetDefaultVersionRequest

    -- ** GoogleCloudMlV1__ModelLabels
    , GoogleCloudMlV1__ModelLabels
    , googleCloudMlV1__ModelLabels
    , gcmvmlAddtional

    -- ** GoogleIAMV1__AuditLogConfigLogType
    , GoogleIAMV1__AuditLogConfigLogType (..)

    -- ** GoogleCloudMlV1__JobLabels
    , GoogleCloudMlV1__JobLabels
    , googleCloudMlV1__JobLabels
    , gcmvjlAddtional

    -- ** GoogleCloudMlV1__ListOptimalTrialsResponse
    , GoogleCloudMlV1__ListOptimalTrialsResponse
    , googleCloudMlV1__ListOptimalTrialsResponse
    , gcmvlotrTrials

    -- ** GoogleRpc__Status
    , GoogleRpc__Status
    , googleRpc__Status
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GoogleCloudMlV1__ReplicaConfig
    , GoogleCloudMlV1__ReplicaConfig
    , googleCloudMlV1__ReplicaConfig
    , gcmvrcDiskConfig
    , gcmvrcContainerCommand
    , gcmvrcImageURI
    , gcmvrcAcceleratorConfig
    , gcmvrcContainerArgs
    , gcmvrcTpuTfVersion

    -- ** GoogleCloudMlV1__Config
    , GoogleCloudMlV1__Config
    , googleCloudMlV1__Config
    , gcmvcTpuServiceAccount

    -- ** GoogleCloudMlV1__HyperparameterSpec
    , GoogleCloudMlV1__HyperparameterSpec
    , googleCloudMlV1__HyperparameterSpec
    , gcmvhsResumePreviousJobId
    , gcmvhsParams
    , gcmvhsAlgorithm
    , gcmvhsGoal
    , gcmvhsMaxTrials
    , gcmvhsEnableTrialEarlyStopping
    , gcmvhsMaxParallelTrials
    , gcmvhsMaxFailedTrials
    , gcmvhsHyperparameterMetricTag

    -- ** GoogleCloudMlV1__CompleteTrialRequest
    , GoogleCloudMlV1__CompleteTrialRequest
    , googleCloudMlV1__CompleteTrialRequest
    , gcmvctrFinalMeasurement
    , gcmvctrInfeasibleReason
    , gcmvctrTrialInfeasible

    -- ** GoogleCloudMlV1__Trial
    , GoogleCloudMlV1__Trial
    , googleCloudMlV1__Trial
    , gcmvtClientId
    , gcmvtState
    , gcmvtStartTime
    , gcmvtFinalMeasurement
    , gcmvtMeasurements
    , gcmvtName
    , gcmvtEndTime
    , gcmvtParameters
    , gcmvtInfeasibleReason
    , gcmvtTrialInfeasible

    -- ** GoogleCloudMlV1__AutoScaling
    , GoogleCloudMlV1__AutoScaling
    , googleCloudMlV1__AutoScaling
    , gcmvasMetrics
    , gcmvasMinNodes
    , gcmvasMaxNodes

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
    , GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
    , googleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec
    , gcmvscpsdvsMaxValue
    , gcmvscpsdvsMinValue

    -- ** GoogleCloudMlV1__ContainerSpec
    , GoogleCloudMlV1__ContainerSpec
    , googleCloudMlV1__ContainerSpec
    , gcmvcsImage
    , gcmvcsCommand
    , gcmvcsArgs
    , gcmvcsEnv
    , gcmvcsPorts

    -- ** GoogleLongrunning__OperationMetadata
    , GoogleLongrunning__OperationMetadata
    , googleLongrunning__OperationMetadata
    , glomAddtional

    -- ** GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
    , GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
    , googleCloudMlV1__CheckTrialEarlyStoppingStateRequest

    -- ** GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType
    , GoogleCloudMlV1_StudyConfig_ParameterSpecScaleType (..)

    -- ** GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData
    , GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatData
    , googleCloudMlV1__CheckTrialEarlyStoppingStateMetatData
    , gcmvctessmdTrial
    , gcmvctessmdStudy
    , gcmvctessmdCreateTime

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
    , GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
    , googleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec
    , gcmvscpscvsValues

    -- ** GoogleCloudMlV1_StudyConfig_ParameterSpec
    , GoogleCloudMlV1_StudyConfig_ParameterSpec
    , googleCloudMlV1_StudyConfig_ParameterSpec
    , gcmvscpsParentCategoricalValues
    , gcmvscpsDoubleValueSpec
    , gcmvscpsParentIntValues
    , gcmvscpsParentDiscreteValues
    , gcmvscpsChildParameterSpecs
    , gcmvscpsDiscreteValueSpec
    , gcmvscpsScaleType
    , gcmvscpsIntegerValueSpec
    , gcmvscpsCategoricalValueSpec
    , gcmvscpsType
    , gcmvscpsParameter

    -- ** GoogleCloudMlV1_StudyConfig_MetricSpecGoal
    , GoogleCloudMlV1_StudyConfig_MetricSpecGoal (..)

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
    , GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
    , googleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec
    , gcmvscpsivsMaxValue
    , gcmvscpsivsMinValue

    -- ** GoogleCloudMlV1__ExplanationConfig
    , GoogleCloudMlV1__ExplanationConfig
    , googleCloudMlV1__ExplanationConfig
    , gcmvecIntegratedGradientsAttribution
    , gcmvecXraiAttribution
    , gcmvecSampledShapleyAttribution

    -- ** GoogleCloudMlV1__MetricSpec
    , GoogleCloudMlV1__MetricSpec
    , googleCloudMlV1__MetricSpec
    , gcmvmsName
    , gcmvmsTarget

    -- ** GoogleCloudMlV1__ParameterSpec
    , GoogleCloudMlV1__ParameterSpec
    , googleCloudMlV1__ParameterSpec
    , gcmvpsMaxValue
    , gcmvpsScaleType
    , gcmvpsType
    , gcmvpsDiscreteValues
    , gcmvpsParameterName
    , gcmvpsCategoricalValues
    , gcmvpsMinValue

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleIAMV1__Binding
    , GoogleIAMV1__Binding
    , googleIAMV1__Binding
    , givbMembers
    , givbRole
    , givbCondition

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
    , GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
    , googleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec
    , gcmvscpsmpdvsValues

    -- ** GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    , GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    , googleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    , gcmvhohmTrainingStep
    , gcmvhohmObjectiveValue

    -- ** GoogleCloudMlV1__StopTrialRequest
    , GoogleCloudMlV1__StopTrialRequest
    , googleCloudMlV1__StopTrialRequest

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
    , GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
    , googleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec
    , gcmvscpsmpivsValues

    -- ** GoogleCloudMlV1_Trial_Parameter
    , GoogleCloudMlV1_Trial_Parameter
    , googleCloudMlV1_Trial_Parameter
    , gcmvtpIntValue
    , gcmvtpStringValue
    , gcmvtpFloatValue
    , gcmvtpParameter

    -- ** GoogleIAMV1__SetIAMPolicyRequest
    , GoogleIAMV1__SetIAMPolicyRequest
    , googleIAMV1__SetIAMPolicyRequest
    , givsiprUpdateMask
    , givsiprPolicy

    -- ** GoogleCloudMlV1__PredictionInput
    , GoogleCloudMlV1__PredictionInput
    , googleCloudMlV1__PredictionInput
    , gcmvpiVersionName
    , gcmvpiModelName
    , gcmvpiDataFormat
    , gcmvpiURI
    , gcmvpiRuntimeVersion
    , gcmvpiBatchSize
    , gcmvpiMaxWorkerCount
    , gcmvpiOutputDataFormat
    , gcmvpiOutputPath
    , gcmvpiRegion
    , gcmvpiInputPaths
    , gcmvpiSignatureName

    -- ** GoogleCloudMlV1__IntegratedGradientsAttribution
    , GoogleCloudMlV1__IntegratedGradientsAttribution
    , googleCloudMlV1__IntegratedGradientsAttribution
    , gcmvigaNumIntegralSteps

    -- ** GoogleCloudMlV1__TrainingOutputWebAccessURIs
    , GoogleCloudMlV1__TrainingOutputWebAccessURIs
    , googleCloudMlV1__TrainingOutputWebAccessURIs
    , gcmvtowauAddtional

    -- ** GoogleCloudMlV1__ContainerPort
    , GoogleCloudMlV1__ContainerPort
    , googleCloudMlV1__ContainerPort
    , gcmvcpContainerPort

    -- ** GoogleCloudMlV1__TrainingInput
    , GoogleCloudMlV1__TrainingInput
    , googleCloudMlV1__TrainingInput
    , gcmvtiMasterType
    , gcmvtiWorkerConfig
    , gcmvtiParameterServerCount
    , gcmvtiArgs
    , gcmvtiEnableWebAccess
    , gcmvtiUseChiefInTfConfig
    , gcmvtiWorkerCount
    , gcmvtiJobDir
    , gcmvtiEvaluatorCount
    , gcmvtiEvaluatorType
    , gcmvtiNetwork
    , gcmvtiPythonVersion
    , gcmvtiRuntimeVersion
    , gcmvtiWorkerType
    , gcmvtiMasterConfig
    , gcmvtiPythonModule
    , gcmvtiParameterServerType
    , gcmvtiServiceAccount
    , gcmvtiHyperparameters
    , gcmvtiPackageURIs
    , gcmvtiScaleTier
    , gcmvtiEncryptionConfig
    , gcmvtiRegion
    , gcmvtiScheduling
    , gcmvtiParameterServerConfig
    , gcmvtiEvaluatorConfig

    -- ** GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
    , GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
    , googleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec
    , gcmvscpsmpcvsValues

    -- ** GoogleCloudMlV1__RouteMap
    , GoogleCloudMlV1__RouteMap
    , googleCloudMlV1__RouteMap
    , gcmvrmHealth
    , gcmvrmPredict

    -- ** GoogleRpc__StatusDetailsItem
    , GoogleRpc__StatusDetailsItem
    , googleRpc__StatusDetailsItem
    , grsdiAddtional

    -- ** GoogleCloudMlV1__OperationMetadataOperationType
    , GoogleCloudMlV1__OperationMetadataOperationType (..)

    -- ** GoogleProtobuf__Empty
    , GoogleProtobuf__Empty
    , googleProtobuf__Empty

    -- ** GoogleCloudMlV1__TrialState
    , GoogleCloudMlV1__TrialState (..)

    -- ** GoogleCloudMlV1__Location
    , GoogleCloudMlV1__Location
    , googleCloudMlV1__Location
    , gcmvlName
    , gcmvlCapabilities

    -- ** GoogleCloudMlV1__OperationMetadataLabels
    , GoogleCloudMlV1__OperationMetadataLabels
    , googleCloudMlV1__OperationMetadataLabels
    , gcmvomlAddtional

    -- ** GoogleCloudMlV1__AcceleratorConfigType
    , GoogleCloudMlV1__AcceleratorConfigType (..)

    -- ** GoogleCloudMlV1__Capability
    , GoogleCloudMlV1__Capability
    , googleCloudMlV1__Capability
    , gcmvcAvailableAccelerators
    , gcmvcType

    -- ** GoogleCloudMlV1__OperationMetadata
    , GoogleCloudMlV1__OperationMetadata
    , googleCloudMlV1__OperationMetadata
    , gcmvomStartTime
    , gcmvomModelName
    , gcmvomProjectNumber
    , gcmvomVersion
    , gcmvomEndTime
    , gcmvomIsCancellationRequested
    , gcmvomLabels
    , gcmvomOperationType
    , gcmvomCreateTime

    -- ** GoogleCloudMlV1__EnvVar
    , GoogleCloudMlV1__EnvVar
    , googleCloudMlV1__EnvVar
    , gcmvevValue
    , gcmvevName

    -- ** GoogleCloudMlV1__ListTrialsResponse
    , GoogleCloudMlV1__ListTrialsResponse
    , googleCloudMlV1__ListTrialsResponse
    , gcmvltrTrials

    -- ** GoogleCloudMlV1__AddTrialMeasurementRequest
    , GoogleCloudMlV1__AddTrialMeasurementRequest
    , googleCloudMlV1__AddTrialMeasurementRequest
    , gcmvatmrMeasurement

    -- ** GoogleCloudMlV1__RequestLoggingConfig
    , GoogleCloudMlV1__RequestLoggingConfig
    , googleCloudMlV1__RequestLoggingConfig
    , gcmvrlcSamplingPercentage
    , gcmvrlcBigQueryTableName

    -- ** GoogleAPI__HTTPBodyExtensionsItem
    , GoogleAPI__HTTPBodyExtensionsItem
    , googleAPI__HTTPBodyExtensionsItem
    , gahttpbeiAddtional

    -- ** GoogleCloudMlV1__CancelJobRequest
    , GoogleCloudMlV1__CancelJobRequest
    , googleCloudMlV1__CancelJobRequest

    -- ** GoogleCloudMlV1__Scheduling
    , GoogleCloudMlV1__Scheduling
    , googleCloudMlV1__Scheduling
    , gcmvsMaxWaitTime
    , gcmvsPriority
    , gcmvsMaxRunningTime

    -- ** GoogleCloudMlV1__TrainingOutput
    , GoogleCloudMlV1__TrainingOutput
    , googleCloudMlV1__TrainingOutput
    , gcmvtoIsHyperparameterTuningJob
    , gcmvtoIsBuiltInAlgorithmJob
    , gcmvtoCompletedTrialCount
    , gcmvtoConsumedMLUnits
    , gcmvtoBuiltInAlgorithmOutput
    , gcmvtoHyperparameterMetricTag
    , gcmvtoWebAccessURIs
    , gcmvtoTrials

    -- ** GoogleAPI__HTTPBody
    , GoogleAPI__HTTPBody
    , googleAPI__HTTPBody
    , gahttpbExtensions
    , gahttpbData
    , gahttpbContentType

    -- ** GoogleIAMV1__TestIAMPermissionsRequest
    , GoogleIAMV1__TestIAMPermissionsRequest
    , googleIAMV1__TestIAMPermissionsRequest
    , giamvtiamprPermissions

    -- ** GoogleCloudMlV1__ListLocationsResponse
    , GoogleCloudMlV1__ListLocationsResponse
    , googleCloudMlV1__ListLocationsResponse
    , gcmvllrNextPageToken
    , gcmvllrLocations

    -- ** GoogleCloudMlV1__DiskConfig
    , GoogleCloudMlV1__DiskConfig
    , googleCloudMlV1__DiskConfig
    , gcmvdcBootDiskType
    , gcmvdcBootDiskSizeGb

    -- ** GoogleCloudMlV1__VersionLabels
    , GoogleCloudMlV1__VersionLabels
    , googleCloudMlV1__VersionLabels
    , gcmvvlAddtional

    -- ** GoogleCloudMlV1__HyperparameterOutputState
    , GoogleCloudMlV1__HyperparameterOutputState (..)
    ) where

import Network.Google.Prelude
import Network.Google.MachineLearning.Types
import Network.Google.Resource.Ml.Projects.Explain
import Network.Google.Resource.Ml.Projects.GetConfig
import Network.Google.Resource.Ml.Projects.Jobs.Cancel
import Network.Google.Resource.Ml.Projects.Jobs.Create
import Network.Google.Resource.Ml.Projects.Jobs.Get
import Network.Google.Resource.Ml.Projects.Jobs.GetIAMPolicy
import Network.Google.Resource.Ml.Projects.Jobs.List
import Network.Google.Resource.Ml.Projects.Jobs.Patch
import Network.Google.Resource.Ml.Projects.Jobs.SetIAMPolicy
import Network.Google.Resource.Ml.Projects.Jobs.TestIAMPermissions
import Network.Google.Resource.Ml.Projects.Locations.Get
import Network.Google.Resource.Ml.Projects.Locations.List
import Network.Google.Resource.Ml.Projects.Locations.Operations.Cancel
import Network.Google.Resource.Ml.Projects.Locations.Operations.Get
import Network.Google.Resource.Ml.Projects.Locations.Studies.Create
import Network.Google.Resource.Ml.Projects.Locations.Studies.Delete
import Network.Google.Resource.Ml.Projects.Locations.Studies.Get
import Network.Google.Resource.Ml.Projects.Locations.Studies.List
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.AddMeasurement
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.CheckEarlyStoppingState
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Complete
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Create
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Delete
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Get
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.List
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.ListOptimalTrials
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Stop
import Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Suggest
import Network.Google.Resource.Ml.Projects.Models.Create
import Network.Google.Resource.Ml.Projects.Models.Delete
import Network.Google.Resource.Ml.Projects.Models.Get
import Network.Google.Resource.Ml.Projects.Models.GetIAMPolicy
import Network.Google.Resource.Ml.Projects.Models.List
import Network.Google.Resource.Ml.Projects.Models.Patch
import Network.Google.Resource.Ml.Projects.Models.SetIAMPolicy
import Network.Google.Resource.Ml.Projects.Models.TestIAMPermissions
import Network.Google.Resource.Ml.Projects.Models.Versions.Create
import Network.Google.Resource.Ml.Projects.Models.Versions.Delete
import Network.Google.Resource.Ml.Projects.Models.Versions.Get
import Network.Google.Resource.Ml.Projects.Models.Versions.List
import Network.Google.Resource.Ml.Projects.Models.Versions.Patch
import Network.Google.Resource.Ml.Projects.Models.Versions.SetDefault
import Network.Google.Resource.Ml.Projects.Operations.Cancel
import Network.Google.Resource.Ml.Projects.Operations.Get
import Network.Google.Resource.Ml.Projects.Operations.List
import Network.Google.Resource.Ml.Projects.Predict

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the AI Platform Training & Prediction API service.
type MachineLearningAPI =
     ProjectsModelsVersionsListResource :<|>
       ProjectsModelsVersionsPatchResource
       :<|> ProjectsModelsVersionsGetResource
       :<|> ProjectsModelsVersionsSetDefaultResource
       :<|> ProjectsModelsVersionsCreateResource
       :<|> ProjectsModelsVersionsDeleteResource
       :<|> ProjectsModelsListResource
       :<|> ProjectsModelsGetIAMPolicyResource
       :<|> ProjectsModelsPatchResource
       :<|> ProjectsModelsGetResource
       :<|> ProjectsModelsCreateResource
       :<|> ProjectsModelsSetIAMPolicyResource
       :<|> ProjectsModelsTestIAMPermissionsResource
       :<|> ProjectsModelsDeleteResource
       :<|> ProjectsJobsListResource
       :<|> ProjectsJobsGetIAMPolicyResource
       :<|> ProjectsJobsPatchResource
       :<|> ProjectsJobsGetResource
       :<|> ProjectsJobsCreateResource
       :<|> ProjectsJobsSetIAMPolicyResource
       :<|> ProjectsJobsTestIAMPermissionsResource
       :<|> ProjectsJobsCancelResource
       :<|> ProjectsOperationsListResource
       :<|> ProjectsOperationsGetResource
       :<|> ProjectsOperationsCancelResource
       :<|> ProjectsLocationsStudiesTrialsSuggestResource
       :<|> ProjectsLocationsStudiesTrialsListResource
       :<|>
       ProjectsLocationsStudiesTrialsAddMeasurementResource
       :<|> ProjectsLocationsStudiesTrialsGetResource
       :<|>
       ProjectsLocationsStudiesTrialsListOptimalTrialsResource
       :<|> ProjectsLocationsStudiesTrialsCreateResource
       :<|>
       ProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource
       :<|> ProjectsLocationsStudiesTrialsStopResource
       :<|> ProjectsLocationsStudiesTrialsDeleteResource
       :<|> ProjectsLocationsStudiesTrialsCompleteResource
       :<|> ProjectsLocationsStudiesListResource
       :<|> ProjectsLocationsStudiesGetResource
       :<|> ProjectsLocationsStudiesCreateResource
       :<|> ProjectsLocationsStudiesDeleteResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource
       :<|> ProjectsGetConfigResource
       :<|> ProjectsExplainResource
       :<|> ProjectsPredictResource
