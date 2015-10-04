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

    -- ** FeaturesItemText
    , FeaturesItemText
    , featuresItemText
    , fitCount

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

    -- ** FeaturesItem
    , FeaturesItem
    , featuresItem
    , fiText
    , fiNumeric
    , fiIndex
    , fiCategorical

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

    -- ** OutputFeature
    , OutputFeature
    , outputFeature
    , ofText
    , ofNumeric

    -- ** Input
    , Input
    , input
    , iCSVInstance

    -- ** Input
    , Input
    , input
    , iInput

    -- ** ModelDescription
    , ModelDescription
    , modelDescription
    , mdConfusionMatrixRowTotals
    , mdConfusionMatrix
    , mdModelInfo

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

    -- ** TrainingInstancesItem
    , TrainingInstancesItem
    , trainingInstancesItem
    , tiiCSVInstance
    , tiiOutput

    -- ** ConfusionMatrixRowTotals
    , ConfusionMatrixRowTotals
    , confusionMatrixRowTotals

    -- ** ValuesItem
    , ValuesItem
    , valuesItem
    , viValue
    , viCount

    -- ** UtilityItem
    , UtilityItem
    , utilityItem

    -- ** TextItem
    , TextItem
    , textItem
    , tiValue
    , tiCount

    -- ** Numeric
    , Numeric
    , numeric
    , nMean
    , nCount
    , nVariance

    -- ** OutputMultiItem
    , OutputMultiItem
    , outputMultiItem
    , omiScore
    , omiLabel

    -- ** ErrorsItem
    , ErrorsItem
    , errorsItem

    -- ** DataDescription
    , DataDescription
    , dataDescription
    , ddOutputFeature
    , ddFeatures

    -- ** Categorical
    , Categorical
    , categorical
    , cValues
    , cCount

    -- ** ConfusionMatrix
    , ConfusionMatrix
    , confusionMatrix

    -- ** ModelInfo
    , ModelInfo
    , modelInfo
    , miModelType
    , miClassWeightedAccuracy
    , miClassificationAccuracy
    , miMeanSquaredError
    , miNumberLabels
    , miNumberInstances

    -- ** FeaturesItemNumeric
    , FeaturesItemNumeric
    , featuresItemNumeric
    , finMean
    , finCount
    , finVariance

    -- ** Update
    , Update
    , update
    , uCSVInstance
    , uOutput
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
