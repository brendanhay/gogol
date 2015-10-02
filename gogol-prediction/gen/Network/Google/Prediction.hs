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

    -- ** AnalyzeErrors
    , AnalyzeErrors
    , analyzeErrors

    -- ** List
    , List
    , list
    , lNextPageToken
    , lKind
    , lItems
    , lSelfLink

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

    -- ** AnalyzeDataDescriptionFeatures
    , AnalyzeDataDescriptionFeatures
    , analyzeDataDescriptionFeatures
    , addfText
    , addfNumeric
    , addfIndex
    , addfCategorical

    -- ** AnalyzeDataDescriptionFeaturesText
    , AnalyzeDataDescriptionFeaturesText
    , analyzeDataDescriptionFeaturesText
    , addftCount

    -- ** InputInput
    , InputInput
    , inputInput
    , iiCSVInstance

    -- ** Input
    , Input
    , input
    , iInput

    -- ** OutputOutputMulti
    , OutputOutputMulti
    , outputOutputMulti
    , oomScore
    , oomLabel

    -- ** AnalyzeModelDescriptionConfusionMatrix
    , AnalyzeModelDescriptionConfusionMatrix
    , analyzeModelDescriptionConfusionMatrix

    -- ** AnalyzeDataDescriptionOutputFeatureText
    , AnalyzeDataDescriptionOutputFeatureText
    , analyzeDataDescriptionOutputFeatureText
    , addoftValue
    , addoftCount

    -- ** Analyze
    , Analyze
    , analyze
    , aKind
    , aModelDescription
    , aSelfLink
    , aId
    , aErrors
    , aDataDescription

    -- ** Output
    , Output
    , output
    , oOutputValue
    , oKind
    , oOutputLabel
    , oSelfLink
    , oId
    , oOutputMulti

    -- ** InsertUtility
    , InsertUtility
    , insertUtility

    -- ** AnalyzeDataDescription
    , AnalyzeDataDescription
    , analyzeDataDescription
    , addOutputFeature
    , addFeatures

    -- ** AnalyzeDataDescriptionOutputFeatureNumeric
    , AnalyzeDataDescriptionOutputFeatureNumeric
    , analyzeDataDescriptionOutputFeatureNumeric
    , addofnMean
    , addofnCount
    , addofnVariance

    -- ** AnalyzeModelDescription
    , AnalyzeModelDescription
    , analyzeModelDescription
    , amdConfusionMatrixRowTotals
    , amdConfusionMatrix
    , amdModelInfo

    -- ** InsertTrainingInstances
    , InsertTrainingInstances
    , insertTrainingInstances
    , itiCSVInstance
    , itiOutput

    -- ** AnalyzeDataDescriptionFeaturesCategoricalValues
    , AnalyzeDataDescriptionFeaturesCategoricalValues
    , analyzeDataDescriptionFeaturesCategoricalValues
    , addfcvValue
    , addfcvCount

    -- ** AnalyzeDataDescriptionFeaturesCategorical
    , AnalyzeDataDescriptionFeaturesCategorical
    , analyzeDataDescriptionFeaturesCategorical
    , addfcValues
    , addfcCount

    -- ** AnalyzeDataDescriptionFeaturesNumeric
    , AnalyzeDataDescriptionFeaturesNumeric
    , analyzeDataDescriptionFeaturesNumeric
    , addfnMean
    , addfnCount
    , addfnVariance

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
