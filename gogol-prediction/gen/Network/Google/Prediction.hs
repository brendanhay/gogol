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
-- -- | Lets you access a cloud hosted machine learning service that makes it
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

    -- ** PredictionHostedmodelsPredict
    , module Network.Google.Resource.Prediction.Hostedmodels.Predict

    -- ** PredictionTrainedmodelsAnalyze
    , module Network.Google.Resource.Prediction.Trainedmodels.Analyze

    -- ** PredictionTrainedmodelsDelete
    , module Network.Google.Resource.Prediction.Trainedmodels.Delete

    -- ** PredictionTrainedmodelsGet
    , module Network.Google.Resource.Prediction.Trainedmodels.Get

    -- ** PredictionTrainedmodelsInsert
    , module Network.Google.Resource.Prediction.Trainedmodels.Insert

    -- ** PredictionTrainedmodelsList
    , module Network.Google.Resource.Prediction.Trainedmodels.List

    -- ** PredictionTrainedmodelsPredict
    , module Network.Google.Resource.Prediction.Trainedmodels.Predict

    -- ** PredictionTrainedmodelsUpdate
    , module Network.Google.Resource.Prediction.Trainedmodels.Update

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
    , iiCsvInstance

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
    , amdModelinfo

    -- ** InsertTrainingInstances
    , InsertTrainingInstances
    , insertTrainingInstances
    , itiCsvInstance
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
    , uCsvInstance
    , uOutput

    -- ** Alt
    , Alt (..)

    -- ** AnalyzeDataDescriptionOutputFeature
    , AnalyzeDataDescriptionOutputFeature
    , analyzeDataDescriptionOutputFeature
    , addofText
    , addofNumeric
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Prediction.Hostedmodels.Predict
import           Network.Google.Resource.Prediction.Trainedmodels.Analyze
import           Network.Google.Resource.Prediction.Trainedmodels.Delete
import           Network.Google.Resource.Prediction.Trainedmodels.Get
import           Network.Google.Resource.Prediction.Trainedmodels.Insert
import           Network.Google.Resource.Prediction.Trainedmodels.List
import           Network.Google.Resource.Prediction.Trainedmodels.Predict
import           Network.Google.Resource.Prediction.Trainedmodels.Update

{- $resources
TODO
-}

type PredictionAPI =
     TrainedmodelsInsertResource :<|>
       TrainedmodelsListResource
       :<|> TrainedmodelsGetResource
       :<|> TrainedmodelsAnalyzeResource
       :<|> TrainedmodelsPredictResource
       :<|> TrainedmodelsDeleteResource
       :<|> TrainedmodelsUpdateResource
       :<|> HostedmodelsPredictResource

predictionAPI :: Proxy PredictionAPI
predictionAPI = Proxy
