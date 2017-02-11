{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.MachineLearning
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API to enable creating and using machine learning models.
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference>
module Network.Google.MachineLearning
    (
    -- * Service Configuration
      machineLearningService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , MachineLearningAPI

    -- * Resources

    -- ** ml.projects.getConfig
    , module Network.Google.Resource.Ml.Projects.GetConfig

    -- ** ml.projects.jobs.cancel
    , module Network.Google.Resource.Ml.Projects.Jobs.Cancel

    -- ** ml.projects.jobs.create
    , module Network.Google.Resource.Ml.Projects.Jobs.Create

    -- ** ml.projects.jobs.get
    , module Network.Google.Resource.Ml.Projects.Jobs.Get

    -- ** ml.projects.jobs.list
    , module Network.Google.Resource.Ml.Projects.Jobs.List

    -- ** ml.projects.models.create
    , module Network.Google.Resource.Ml.Projects.Models.Create

    -- ** ml.projects.models.delete
    , module Network.Google.Resource.Ml.Projects.Models.Delete

    -- ** ml.projects.models.get
    , module Network.Google.Resource.Ml.Projects.Models.Get

    -- ** ml.projects.models.list
    , module Network.Google.Resource.Ml.Projects.Models.List

    -- ** ml.projects.models.versions.create
    , module Network.Google.Resource.Ml.Projects.Models.Versions.Create

    -- ** ml.projects.models.versions.delete
    , module Network.Google.Resource.Ml.Projects.Models.Versions.Delete

    -- ** ml.projects.models.versions.get
    , module Network.Google.Resource.Ml.Projects.Models.Versions.Get

    -- ** ml.projects.models.versions.list
    , module Network.Google.Resource.Ml.Projects.Models.Versions.List

    -- ** ml.projects.models.versions.setDefault
    , module Network.Google.Resource.Ml.Projects.Models.Versions.SetDefault

    -- ** ml.projects.operations.cancel
    , module Network.Google.Resource.Ml.Projects.Operations.Cancel

    -- ** ml.projects.operations.delete
    , module Network.Google.Resource.Ml.Projects.Operations.Delete

    -- ** ml.projects.operations.get
    , module Network.Google.Resource.Ml.Projects.Operations.Get

    -- ** ml.projects.operations.list
    , module Network.Google.Resource.Ml.Projects.Operations.List

    -- ** ml.projects.predict
    , module Network.Google.Resource.Ml.Projects.Predict

    -- * Types

    -- ** GoogleCloudMlV1beta1__SetDefaultVersionRequest
    , GoogleCloudMlV1beta1__SetDefaultVersionRequest
    , googleCloudMlV1beta1__SetDefaultVersionRequest

    -- ** GoogleCloudMlV1beta1__Version
    , GoogleCloudMlV1beta1__Version
    , googleCloudMlV1beta1__Version
    , gcmvvRuntimeVersion
    , gcmvvLastUseTime
    , gcmvvName
    , gcmvvDeploymentURI
    , gcmvvDescription
    , gcmvvCreateTime
    , gcmvvOnlinePredictionLogging
    , gcmvvIsDefault

    -- ** GoogleCloudMlV1beta1__HyperparameterSpec
    , GoogleCloudMlV1beta1__HyperparameterSpec
    , googleCloudMlV1beta1__HyperparameterSpec
    , gcmvhsParams
    , gcmvhsGoal
    , gcmvhsMaxTrials
    , gcmvhsMaxParallelTrials

    -- ** GoogleCloudMlV1beta1__GetConfigResponse
    , GoogleCloudMlV1beta1__GetConfigResponse
    , googleCloudMlV1beta1__GetConfigResponse
    , gcmvgcrServiceAccount
    , gcmvgcrServiceAccountProject

    -- ** GoogleCloudMlV1beta1__Job
    , GoogleCloudMlV1beta1__Job
    , googleCloudMlV1beta1__Job
    , gcmvjState
    , gcmvjTrainingOutput
    , gcmvjJobId
    , gcmvjStartTime
    , gcmvjPredictionInput
    , gcmvjEndTime
    , gcmvjPredictionOutput
    , gcmvjErrorMessage
    , gcmvjTrainingInput
    , gcmvjCreateTime

    -- ** GoogleCloudMlV1beta1__TrainingOutput
    , GoogleCloudMlV1beta1__TrainingOutput
    , googleCloudMlV1beta1__TrainingOutput
    , gcmvtoIsHyperparameterTuningJob
    , gcmvtoCompletedTrialCount
    , gcmvtoConsumedMLUnits
    , gcmvtoTrials

    -- ** GoogleCloudMlV1beta1__Model
    , GoogleCloudMlV1beta1__Model
    , googleCloudMlV1beta1__Model
    , gcmvmRegions
    , gcmvmDefaultVersion
    , gcmvmName
    , gcmvmDescription

    -- ** GoogleLongrunning__OperationResponse
    , GoogleLongrunning__OperationResponse
    , googleLongrunning__OperationResponse
    , glorAddtional

    -- ** GoogleCloudMlV1beta1__JobState
    , GoogleCloudMlV1beta1__JobState (..)

    -- ** GoogleCloudMlV1beta1__OperationMetadata
    , GoogleCloudMlV1beta1__OperationMetadata
    , googleCloudMlV1beta1__OperationMetadata
    , gcmvomStartTime
    , gcmvomModelName
    , gcmvomVersion
    , gcmvomEndTime
    , gcmvomIsCancellationRequested
    , gcmvomOperationType
    , gcmvomCreateTime

    -- ** GoogleCloudMlV1beta1__HyperparameterOutput
    , GoogleCloudMlV1beta1__HyperparameterOutput
    , googleCloudMlV1beta1__HyperparameterOutput
    , gcmvhoAllMetrics
    , gcmvhoHyperparameters
    , gcmvhoTrialId
    , gcmvhoFinalMetric

    -- ** GoogleCloudMlV1beta1__ListVersionsResponse
    , GoogleCloudMlV1beta1__ListVersionsResponse
    , googleCloudMlV1beta1__ListVersionsResponse
    , gcmvlvrNextPageToken
    , gcmvlvrVersions

    -- ** GoogleCloudMlV1beta1__OperationMetadataOperationType
    , GoogleCloudMlV1beta1__OperationMetadataOperationType (..)

    -- ** GoogleLongrunning__ListOperationsResponse
    , GoogleLongrunning__ListOperationsResponse
    , googleLongrunning__ListOperationsResponse
    , gllorNextPageToken
    , gllorOperations

    -- ** GoogleCloudMlV1beta1__PredictionInput
    , GoogleCloudMlV1beta1__PredictionInput
    , googleCloudMlV1beta1__PredictionInput
    , gcmvpiVersionName
    , gcmvpiModelName
    , gcmvpiDataFormat
    , gcmvpiRuntimeVersion
    , gcmvpiMaxWorkerCount
    , gcmvpiOutputPath
    , gcmvpiRegion
    , gcmvpiInputPaths

    -- ** GoogleLongrunning__Operation
    , GoogleLongrunning__Operation
    , googleLongrunning__Operation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- ** GoogleCloudMlV1beta1__ParameterSpecType
    , GoogleCloudMlV1beta1__ParameterSpecType (..)

    -- ** GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters
    , GoogleCloudMlV1beta1__HyperparameterOutputHyperparameters
    , googleCloudMlV1beta1__HyperparameterOutputHyperparameters
    , gcmvhohAddtional

    -- ** GoogleRpc__Status
    , GoogleRpc__Status
    , googleRpc__Status
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GoogleLongrunning__OperationMetadata
    , GoogleLongrunning__OperationMetadata
    , googleLongrunning__OperationMetadata
    , glomAddtional

    -- ** GoogleCloudMlV1beta1__PredictionOutput
    , GoogleCloudMlV1beta1__PredictionOutput
    , googleCloudMlV1beta1__PredictionOutput
    , gcmvpoNodeHours
    , gcmvpoErrorCount
    , gcmvpoPredictionCount
    , gcmvpoOutputPath

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudMlV1beta1__HyperparameterSpecGoal
    , GoogleCloudMlV1beta1__HyperparameterSpecGoal (..)

    -- ** GoogleCloudMlV1beta1__PredictionInputDataFormat
    , GoogleCloudMlV1beta1__PredictionInputDataFormat (..)

    -- ** GoogleCloudMlV1beta1__CancelJobRequest
    , GoogleCloudMlV1beta1__CancelJobRequest
    , googleCloudMlV1beta1__CancelJobRequest

    -- ** GoogleCloudMlV1beta1__ListModelsResponse
    , GoogleCloudMlV1beta1__ListModelsResponse
    , googleCloudMlV1beta1__ListModelsResponse
    , gcmvlmrNextPageToken
    , gcmvlmrModels

    -- ** GoogleCloudMlV1beta1__ListJobsResponse
    , GoogleCloudMlV1beta1__ListJobsResponse
    , googleCloudMlV1beta1__ListJobsResponse
    , gcmvljrNextPageToken
    , gcmvljrJobs

    -- ** GoogleCloudMlV1beta1__TrainingInput
    , GoogleCloudMlV1beta1__TrainingInput
    , googleCloudMlV1beta1__TrainingInput
    , gcmvtiMasterType
    , gcmvtiParameterServerCount
    , gcmvtiArgs
    , gcmvtiWorkerCount
    , gcmvtiRuntimeVersion
    , gcmvtiWorkerType
    , gcmvtiPythonModule
    , gcmvtiParameterServerType
    , gcmvtiHyperparameters
    , gcmvtiPackageURIs
    , gcmvtiScaleTier
    , gcmvtiRegion

    -- ** GoogleRpc__StatusDetailsItem
    , GoogleRpc__StatusDetailsItem
    , googleRpc__StatusDetailsItem
    , grsdiAddtional

    -- ** GoogleProtobuf__Empty
    , GoogleProtobuf__Empty
    , googleProtobuf__Empty

    -- ** GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric
    , GoogleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric
    , googleCloudMlV1beta1_HyperparameterOutput_HyperparameterMetric
    , gcmvhohmTrainingStep
    , gcmvhohmObjectiveValue

    -- ** GoogleCloudMlV1beta1__ParameterSpecScaleType
    , GoogleCloudMlV1beta1__ParameterSpecScaleType (..)

    -- ** GoogleAPI__HTTPBody
    , GoogleAPI__HTTPBody
    , googleAPI__HTTPBody
    , gahttpbData
    , gahttpbContentType

    -- ** GoogleCloudMlV1beta1__PredictRequest
    , GoogleCloudMlV1beta1__PredictRequest
    , googleCloudMlV1beta1__PredictRequest
    , gcmvprHTTPBody

    -- ** GoogleCloudMlV1beta1__ParameterSpec
    , GoogleCloudMlV1beta1__ParameterSpec
    , googleCloudMlV1beta1__ParameterSpec
    , gcmvpsMaxValue
    , gcmvpsScaleType
    , gcmvpsType
    , gcmvpsDiscreteValues
    , gcmvpsParameterName
    , gcmvpsCategoricalValues
    , gcmvpsMinValue

    -- ** GoogleCloudMlV1beta1__TrainingInputScaleTier
    , GoogleCloudMlV1beta1__TrainingInputScaleTier (..)
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Ml.Projects.GetConfig
import           Network.Google.Resource.Ml.Projects.Jobs.Cancel
import           Network.Google.Resource.Ml.Projects.Jobs.Create
import           Network.Google.Resource.Ml.Projects.Jobs.Get
import           Network.Google.Resource.Ml.Projects.Jobs.List
import           Network.Google.Resource.Ml.Projects.Models.Create
import           Network.Google.Resource.Ml.Projects.Models.Delete
import           Network.Google.Resource.Ml.Projects.Models.Get
import           Network.Google.Resource.Ml.Projects.Models.List
import           Network.Google.Resource.Ml.Projects.Models.Versions.Create
import           Network.Google.Resource.Ml.Projects.Models.Versions.Delete
import           Network.Google.Resource.Ml.Projects.Models.Versions.Get
import           Network.Google.Resource.Ml.Projects.Models.Versions.List
import           Network.Google.Resource.Ml.Projects.Models.Versions.SetDefault
import           Network.Google.Resource.Ml.Projects.Operations.Cancel
import           Network.Google.Resource.Ml.Projects.Operations.Delete
import           Network.Google.Resource.Ml.Projects.Operations.Get
import           Network.Google.Resource.Ml.Projects.Operations.List
import           Network.Google.Resource.Ml.Projects.Predict

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Machine Learning service.
type MachineLearningAPI =
     ProjectsModelsVersionsListResource :<|>
       ProjectsModelsVersionsGetResource
       :<|> ProjectsModelsVersionsSetDefaultResource
       :<|> ProjectsModelsVersionsCreateResource
       :<|> ProjectsModelsVersionsDeleteResource
       :<|> ProjectsModelsListResource
       :<|> ProjectsModelsGetResource
       :<|> ProjectsModelsCreateResource
       :<|> ProjectsModelsDeleteResource
       :<|> ProjectsJobsListResource
       :<|> ProjectsJobsGetResource
       :<|> ProjectsJobsCreateResource
       :<|> ProjectsJobsCancelResource
       :<|> ProjectsOperationsListResource
       :<|> ProjectsOperationsGetResource
       :<|> ProjectsOperationsCancelResource
       :<|> ProjectsOperationsDeleteResource
       :<|> ProjectsGetConfigResource
       :<|> ProjectsPredictResource
