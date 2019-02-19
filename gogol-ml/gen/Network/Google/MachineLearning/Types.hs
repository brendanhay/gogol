{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MachineLearning.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MachineLearning.Types
    (
    -- * Service Configuration
      machineLearningService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * GoogleIAMV1__AuditConfig
    , GoogleIAMV1__AuditConfig
    , googleIAMV1__AuditConfig
    , givacService
    , givacAuditLogConfigs

    -- * GoogleCloudMlV1__Version
    , GoogleCloudMlV1__Version
    , googleCloudMlV1__Version
    , gcmvvFramework
    , gcmvvEtag
    , gcmvvState
    , gcmvvAutoScaling
    , gcmvvPythonVersion
    , gcmvvRuntimeVersion
    , gcmvvLastUseTime
    , gcmvvName
    , gcmvvDeploymentURI
    , gcmvvManualScaling
    , gcmvvMachineType
    , gcmvvLabels
    , gcmvvErrorMessage
    , gcmvvDescription
    , gcmvvCreateTime
    , gcmvvIsDefault

    -- * GoogleCloudMlV1__PredictionOutput
    , GoogleCloudMlV1__PredictionOutput
    , googleCloudMlV1__PredictionOutput
    , gcmvpoNodeHours
    , gcmvpoErrorCount
    , gcmvpoPredictionCount
    , gcmvpoOutputPath

    -- * GoogleCloudMlV1__HyperparameterOutputHyperparameters
    , GoogleCloudMlV1__HyperparameterOutputHyperparameters
    , googleCloudMlV1__HyperparameterOutputHyperparameters
    , gcmvhohAddtional

    -- * GoogleCloudMlV1__PredictRequest
    , GoogleCloudMlV1__PredictRequest
    , googleCloudMlV1__PredictRequest
    , gcmvprHTTPBody

    -- * GoogleCloudMlV1__ParameterSpecType
    , GoogleCloudMlV1__ParameterSpecType (..)

    -- * GoogleCloudMlV1__TrainingInputScaleTier
    , GoogleCloudMlV1__TrainingInputScaleTier (..)

    -- * GoogleLongrunning__OperationResponse
    , GoogleLongrunning__OperationResponse
    , googleLongrunning__OperationResponse
    , glorAddtional

    -- * GoogleCloudMlV1__ParameterSpecScaleType
    , GoogleCloudMlV1__ParameterSpecScaleType (..)

    -- * GoogleIAMV1__AuditLogConfig
    , GoogleIAMV1__AuditLogConfig
    , googleIAMV1__AuditLogConfig
    , givalcLogType
    , givalcExemptedMembers

    -- * GoogleCloudMlV1__VersionFramework
    , GoogleCloudMlV1__VersionFramework (..)

    -- * GoogleCloudMlV1__ListModelsResponse
    , GoogleCloudMlV1__ListModelsResponse
    , googleCloudMlV1__ListModelsResponse
    , gcmvlmrNextPageToken
    , gcmvlmrModels

    -- * GoogleCloudMlV1__VersionState
    , GoogleCloudMlV1__VersionState (..)

    -- * GoogleLongrunning__ListOperationsResponse
    , GoogleLongrunning__ListOperationsResponse
    , googleLongrunning__ListOperationsResponse
    , gllorNextPageToken
    , gllorOperations

    -- * GoogleCloudMlV1__AcceleratorConfig
    , GoogleCloudMlV1__AcceleratorConfig
    , googleCloudMlV1__AcceleratorConfig
    , gcmvacCount
    , gcmvacType

    -- * GoogleIAMV1__Policy
    , GoogleIAMV1__Policy
    , googleIAMV1__Policy
    , givpAuditConfigs
    , givpEtag
    , givpVersion
    , givpBindings

    -- * GoogleIAMV1__TestIAMPermissionsResponse
    , GoogleIAMV1__TestIAMPermissionsResponse
    , googleIAMV1__TestIAMPermissionsResponse
    , givtiprPermissions

    -- * GoogleCloudMlV1__HyperparameterSpecAlgorithm
    , GoogleCloudMlV1__HyperparameterSpecAlgorithm (..)

    -- * GoogleCloudMlV1__ListJobsResponse
    , GoogleCloudMlV1__ListJobsResponse
    , googleCloudMlV1__ListJobsResponse
    , gcmvljrNextPageToken
    , gcmvljrJobs

    -- * GoogleCloudMlV1__ListVersionsResponse
    , GoogleCloudMlV1__ListVersionsResponse
    , googleCloudMlV1__ListVersionsResponse
    , gcmvlvrNextPageToken
    , gcmvlvrVersions

    -- * GoogleType__Expr
    , GoogleType__Expr
    , googleType__Expr
    , gteLocation
    , gteExpression
    , gteTitle
    , gteDescription

    -- * GoogleCloudMlV1__JobState
    , GoogleCloudMlV1__JobState (..)

    -- * GoogleCloudMlV1__PredictionInputDataFormat
    , GoogleCloudMlV1__PredictionInputDataFormat (..)

    -- * GoogleCloudMlV1__CapabilityType
    , GoogleCloudMlV1__CapabilityType (..)

    -- * GoogleCloudMlV1__HyperparameterOutput
    , GoogleCloudMlV1__HyperparameterOutput
    , googleCloudMlV1__HyperparameterOutput
    , gcmvhoIsTrialStoppedEarly
    , gcmvhoAllMetrics
    , gcmvhoHyperparameters
    , gcmvhoTrialId
    , gcmvhoFinalMetric

    -- * GoogleCloudMlV1__GetConfigResponse
    , GoogleCloudMlV1__GetConfigResponse
    , googleCloudMlV1__GetConfigResponse
    , gcmvgcrConfig
    , gcmvgcrServiceAccount
    , gcmvgcrServiceAccountProject

    -- * GoogleCloudMlV1__PredictionInputOutputDataFormat
    , GoogleCloudMlV1__PredictionInputOutputDataFormat (..)

    -- * GoogleCloudMlV1__ManualScaling
    , GoogleCloudMlV1__ManualScaling
    , googleCloudMlV1__ManualScaling
    , gcmvmsNodes

    -- * GoogleLongrunning__Operation
    , GoogleLongrunning__Operation
    , googleLongrunning__Operation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- * GoogleCloudMlV1__Model
    , GoogleCloudMlV1__Model
    , googleCloudMlV1__Model
    , gcmvmEtag
    , gcmvmRegions
    , gcmvmDefaultVersion
    , gcmvmName
    , gcmvmLabels
    , gcmvmDescription
    , gcmvmOnlinePredictionLogging

    -- * GoogleCloudMlV1__Job
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

    -- * GoogleCloudMlV1__HyperparameterSpecGoal
    , GoogleCloudMlV1__HyperparameterSpecGoal (..)

    -- * GoogleCloudMlV1__SetDefaultVersionRequest
    , GoogleCloudMlV1__SetDefaultVersionRequest
    , googleCloudMlV1__SetDefaultVersionRequest

    -- * GoogleCloudMlV1__ModelLabels
    , GoogleCloudMlV1__ModelLabels
    , googleCloudMlV1__ModelLabels
    , gcmvmlAddtional

    -- * GoogleIAMV1__AuditLogConfigLogType
    , GoogleIAMV1__AuditLogConfigLogType (..)

    -- * GoogleCloudMlV1__JobLabels
    , GoogleCloudMlV1__JobLabels
    , googleCloudMlV1__JobLabels
    , gcmvjlAddtional

    -- * GoogleRpc__Status
    , GoogleRpc__Status
    , googleRpc__Status
    , grsDetails
    , grsCode
    , grsMessage

    -- * GoogleCloudMlV1__Config
    , GoogleCloudMlV1__Config
    , googleCloudMlV1__Config
    , gcmvcTpuServiceAccount

    -- * GoogleCloudMlV1__HyperparameterSpec
    , GoogleCloudMlV1__HyperparameterSpec
    , googleCloudMlV1__HyperparameterSpec
    , gcmvhsResumePreviousJobId
    , gcmvhsParams
    , gcmvhsAlgorithm
    , gcmvhsGoal
    , gcmvhsMaxTrials
    , gcmvhsEnableTrialEarlyStopping
    , gcmvhsMaxParallelTrials
    , gcmvhsHyperparameterMetricTag

    -- * GoogleCloudMlV1__AutoScaling
    , GoogleCloudMlV1__AutoScaling
    , googleCloudMlV1__AutoScaling
    , gcmvasMinNodes

    -- * GoogleLongrunning__OperationMetadata
    , GoogleLongrunning__OperationMetadata
    , googleLongrunning__OperationMetadata
    , glomAddtional

    -- * GoogleCloudMlV1__ParameterSpec
    , GoogleCloudMlV1__ParameterSpec
    , googleCloudMlV1__ParameterSpec
    , gcmvpsMaxValue
    , gcmvpsScaleType
    , gcmvpsType
    , gcmvpsDiscreteValues
    , gcmvpsParameterName
    , gcmvpsCategoricalValues
    , gcmvpsMinValue

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleIAMV1__Binding
    , GoogleIAMV1__Binding
    , googleIAMV1__Binding
    , givbMembers
    , givbRole
    , givbCondition

    -- * GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    , GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    , googleCloudMlV1_HyperparameterOutput_HyperparameterMetric
    , gcmvhohmTrainingStep
    , gcmvhohmObjectiveValue

    -- * GoogleIAMV1__SetIAMPolicyRequest
    , GoogleIAMV1__SetIAMPolicyRequest
    , googleIAMV1__SetIAMPolicyRequest
    , givsiprUpdateMask
    , givsiprPolicy

    -- * GoogleCloudMlV1__PredictionInput
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
    , gcmvpiAccelerator
    , gcmvpiOutputPath
    , gcmvpiRegion
    , gcmvpiInputPaths
    , gcmvpiSignatureName

    -- * GoogleCloudMlV1__TrainingInput
    , GoogleCloudMlV1__TrainingInput
    , googleCloudMlV1__TrainingInput
    , gcmvtiMasterType
    , gcmvtiParameterServerCount
    , gcmvtiArgs
    , gcmvtiWorkerCount
    , gcmvtiJobDir
    , gcmvtiPythonVersion
    , gcmvtiRuntimeVersion
    , gcmvtiWorkerType
    , gcmvtiPythonModule
    , gcmvtiParameterServerType
    , gcmvtiHyperparameters
    , gcmvtiPackageURIs
    , gcmvtiScaleTier
    , gcmvtiRegion

    -- * GoogleRpc__StatusDetailsItem
    , GoogleRpc__StatusDetailsItem
    , googleRpc__StatusDetailsItem
    , grsdiAddtional

    -- * GoogleCloudMlV1__OperationMetadataOperationType
    , GoogleCloudMlV1__OperationMetadataOperationType (..)

    -- * GoogleProtobuf__Empty
    , GoogleProtobuf__Empty
    , googleProtobuf__Empty

    -- * GoogleCloudMlV1__Location
    , GoogleCloudMlV1__Location
    , googleCloudMlV1__Location
    , gcmvlName
    , gcmvlCapabilities

    -- * GoogleCloudMlV1__OperationMetadataLabels
    , GoogleCloudMlV1__OperationMetadataLabels
    , googleCloudMlV1__OperationMetadataLabels
    , gcmvomlAddtional

    -- * GoogleCloudMlV1__AcceleratorConfigType
    , GoogleCloudMlV1__AcceleratorConfigType (..)

    -- * GoogleCloudMlV1__Capability
    , GoogleCloudMlV1__Capability
    , googleCloudMlV1__Capability
    , gcmvcAvailableAccelerators
    , gcmvcType

    -- * GoogleCloudMlV1__OperationMetadata
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

    -- * GoogleAPI__HTTPBodyExtensionsItem
    , GoogleAPI__HTTPBodyExtensionsItem
    , googleAPI__HTTPBodyExtensionsItem
    , gahttpbeiAddtional

    -- * GoogleCloudMlV1__CancelJobRequest
    , GoogleCloudMlV1__CancelJobRequest
    , googleCloudMlV1__CancelJobRequest

    -- * GoogleCloudMlV1__TrainingOutput
    , GoogleCloudMlV1__TrainingOutput
    , googleCloudMlV1__TrainingOutput
    , gcmvtoIsHyperparameterTuningJob
    , gcmvtoCompletedTrialCount
    , gcmvtoConsumedMLUnits
    , gcmvtoTrials

    -- * GoogleAPI__HTTPBody
    , GoogleAPI__HTTPBody
    , googleAPI__HTTPBody
    , gahttpbExtensions
    , gahttpbData
    , gahttpbContentType

    -- * GoogleIAMV1__TestIAMPermissionsRequest
    , GoogleIAMV1__TestIAMPermissionsRequest
    , googleIAMV1__TestIAMPermissionsRequest
    , giamvtiamprPermissions

    -- * GoogleCloudMlV1__ListLocationsResponse
    , GoogleCloudMlV1__ListLocationsResponse
    , googleCloudMlV1__ListLocationsResponse
    , gcmvllrNextPageToken
    , gcmvllrLocations

    -- * GoogleCloudMlV1__VersionLabels
    , GoogleCloudMlV1__VersionLabels
    , googleCloudMlV1__VersionLabels
    , gcmvvlAddtional
    ) where

import           Network.Google.MachineLearning.Types.Product
import           Network.Google.MachineLearning.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Machine Learning Engine. This contains the host and root path used as a starting point for constructing service requests.
machineLearningService :: ServiceConfig
machineLearningService
  = defaultService (ServiceId "ml:v1")
      "ml.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
