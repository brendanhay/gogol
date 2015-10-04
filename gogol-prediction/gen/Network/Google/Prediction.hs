{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Prediction
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you access a cloud hosted machine learning service that makes it
-- easy to build smart apps
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference>
module Network.Google.Prediction
    (
    -- * API
      PredictionAPI
    , predictionAPI
    , predictionURL

    -- * Service Methods

    -- * REST Resources

    -- ** PredictionHostedModelsPredict
    , module Network.Google.Resource.Prediction.HostedModels.Predict

    -- ** PredictionTrainedModelsAnalyze
    , module Network.Google.Resource.Prediction.TrainedModels.Analyze

    -- ** PredictionTrainedModelsDelete
    , module Network.Google.Resource.Prediction.TrainedModels.Delete

    -- ** PredictionTrainedModelsGet
    , module Network.Google.Resource.Prediction.TrainedModels.Get

    -- ** PredictionTrainedModelsInsert
    , module Network.Google.Resource.Prediction.TrainedModels.Insert

    -- ** PredictionTrainedModelsList
    , module Network.Google.Resource.Prediction.TrainedModels.List

    -- ** PredictionTrainedModelsPredict
    , module Network.Google.Resource.Prediction.TrainedModels.Predict

    -- ** PredictionTrainedModelsUpdate
    , module Network.Google.Resource.Prediction.TrainedModels.Update

    -- * Types

    -- ** Insert2ModelInfo
    , Insert2ModelInfo
    , insert2ModelInfo
    , imiModelType
    , imiClassWeightedAccuracy
    , imiClassificationAccuracy
    , imiMeanSquaredError
    , imiNumberLabels
    , imiNumberInstances

    -- ** AnalyzeModelDescriptionConfusionMatrixRowTotals
    , AnalyzeModelDescriptionConfusionMatrixRowTotals
    , analyzeModelDescriptionConfusionMatrixRowTotals

    -- ** Insert
    , Insert
    , insert
    , iStorageDataLocation
    , iModelType
    , iTrainingInstances
    , iUtility
    , iStoragePMMLModelLocation
    , iSourceModel
    , iId
    , iStoragePMMLLocation

    -- ** List
    , List
    , list
    , lNextPageToken
    , lKind
    , lItems
    , lSelfLink

    -- ** InsertUtilityItem
    , InsertUtilityItem
    , insertUtilityItem

    -- ** Insert2
    , Insert2
    , insert2
    , insStorageDataLocation
    , insModelType
    , insKind
    , insCreated
    , insTrainingComplete
    , insSelfLink
    , insTrainingStatus
    , insStoragePMMLModelLocation
    , insId
    , insStoragePMMLLocation
    , insModelInfo

    -- ** InsertTrainingInstancesItem
    , InsertTrainingInstancesItem
    , insertTrainingInstancesItem
    , itiiCSVInstance
    , itiiOutput

    -- ** InputInput
    , InputInput
    , inputInput
    , iiCSVInstance

    -- ** AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem
    , AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem
    , analyzeDataDescriptionFeaturesItemCategoricalValuesItem
    , addficviValue
    , addficviCount

    -- ** AnalyzeDataDescriptionFeaturesItemNumeric
    , AnalyzeDataDescriptionFeaturesItemNumeric
    , analyzeDataDescriptionFeaturesItemNumeric
    , addfinMean
    , addfinCount
    , addfinVariance

    -- ** Input
    , Input
    , input
    , iInput

    -- ** AnalyzeDataDescriptionFeaturesItemCategorical
    , AnalyzeDataDescriptionFeaturesItemCategorical
    , analyzeDataDescriptionFeaturesItemCategorical
    , addficValues
    , addficCount

    -- ** AnalyzeDataDescriptionOutputFeatureTextItem
    , AnalyzeDataDescriptionOutputFeatureTextItem
    , analyzeDataDescriptionOutputFeatureTextItem
    , addoftiValue
    , addoftiCount

    -- ** OutputOutputMultiItem
    , OutputOutputMultiItem
    , outputOutputMultiItem
    , oomiScore
    , oomiLabel

    -- ** Analyze
    , Analyze
    , analyze
    , aKind
    , aModelDescription
    , aSelfLink
    , aId
    , aErrors
    , aDataDescription

    -- ** AnalyzeModelDescriptionConfusionMatrix
    , AnalyzeModelDescriptionConfusionMatrix
    , analyzeModelDescriptionConfusionMatrix

    -- ** Output
    , Output
    , output
    , oOutputValue
    , oKind
    , oOutputLabel
    , oSelfLink
    , oId
    , oOutputMulti

    -- ** AnalyzeDataDescriptionOutputFeatureNumeric
    , AnalyzeDataDescriptionOutputFeatureNumeric
    , analyzeDataDescriptionOutputFeatureNumeric
    , addofnMean
    , addofnCount
    , addofnVariance

    -- ** AnalyzeErrorsItem
    , AnalyzeErrorsItem
    , analyzeErrorsItem

    -- ** AnalyzeDataDescription
    , AnalyzeDataDescription
    , analyzeDataDescription
    , addOutputFeature
    , addFeatures

    -- ** AnalyzeModelDescription
    , AnalyzeModelDescription
    , analyzeModelDescription
    , amdConfusionMatrixRowTotals
    , amdConfusionMatrix
    , amdModelInfo

    -- ** AnalyzeDataDescriptionFeaturesItemText
    , AnalyzeDataDescriptionFeaturesItemText
    , analyzeDataDescriptionFeaturesItemText
    , addfitCount

    -- ** AnalyzeDataDescriptionFeaturesItem
    , AnalyzeDataDescriptionFeaturesItem
    , analyzeDataDescriptionFeaturesItem
    , addfiText
    , addfiNumeric
    , addfiIndex
    , addfiCategorical

    -- ** Update
    , Update
    , update
    , uCSVInstance
    , uOutput

    -- ** AnalyzeDataDescriptionOutputFeature
    , AnalyzeDataDescriptionOutputFeature
    , analyzeDataDescriptionOutputFeature
    , addofText
    , addofNumeric
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Prediction.HostedModels.Predict
import           Network.Google.Resource.Prediction.TrainedModels.Analyze
import           Network.Google.Resource.Prediction.TrainedModels.Delete
import           Network.Google.Resource.Prediction.TrainedModels.Get
import           Network.Google.Resource.Prediction.TrainedModels.Insert
import           Network.Google.Resource.Prediction.TrainedModels.List
import           Network.Google.Resource.Prediction.TrainedModels.Predict
import           Network.Google.Resource.Prediction.TrainedModels.Update

{- $resources
TODO
-}

type PredictionAPI =
     TrainedModelsInsertResource :<|>
       TrainedModelsListResource
       :<|> TrainedModelsGetResource
       :<|> TrainedModelsAnalyzeResource
       :<|> TrainedModelsPredictResource
       :<|> TrainedModelsDeleteResource
       :<|> TrainedModelsUpdateResource
       :<|> HostedModelsPredictResource

predictionAPI :: Proxy PredictionAPI
predictionAPI = Proxy
