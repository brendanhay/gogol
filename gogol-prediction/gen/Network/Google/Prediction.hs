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
    -- * REST Resources

    -- ** Prediction API
      Prediction
    , prediction
    , predictionURL

    -- ** prediction.hostedmodels.predict
    , module Network.Google.API.Prediction.Hostedmodels.Predict

    -- ** prediction.trainedmodels.analyze
    , module Network.Google.API.Prediction.Trainedmodels.Analyze

    -- ** prediction.trainedmodels.delete
    , module Network.Google.API.Prediction.Trainedmodels.Delete

    -- ** prediction.trainedmodels.get
    , module Network.Google.API.Prediction.Trainedmodels.Get

    -- ** prediction.trainedmodels.insert
    , module Network.Google.API.Prediction.Trainedmodels.Insert

    -- ** prediction.trainedmodels.list
    , module Network.Google.API.Prediction.Trainedmodels.List

    -- ** prediction.trainedmodels.predict
    , module Network.Google.API.Prediction.Trainedmodels.Predict

    -- ** prediction.trainedmodels.update
    , module Network.Google.API.Prediction.Trainedmodels.Update

    -- * Types

    -- ** Analyze
    , Analyze
    , analyze
    , aKind
    , aModelDescription
    , aSelfLink
    , aId
    , aErrors
    , aDataDescription

    -- ** AnalyzeConfusionMatrixRowTotalsModelDescription
    , AnalyzeConfusionMatrixRowTotalsModelDescription
    , analyzeConfusionMatrixRowTotalsModelDescription

    -- ** OutputItemOutputMulti
    , OutputItemOutputMulti
    , outputItemOutputMulti
    , oiomScore
    , oiomLabel

    -- ** Output
    , Output
    , output
    , oOutputValue
    , oKind
    , oOutputLabel
    , oSelfLink
    , oId
    , oOutputMulti

    -- ** AnalyzeItemTextOutputFeatureDataDescription
    , AnalyzeItemTextOutputFeatureDataDescription
    , analyzeItemTextOutputFeatureDataDescription
    , aitofddValue
    , aitofddCount

    -- ** Alt
    , Alt (..)

    -- ** List
    , List
    , list
    , lNextPageToken
    , lKind
    , lItems
    , lSelfLink

    -- ** AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    , AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    , analyzeItemValuesCategoricalItemFeaturesDataDescription
    , aivcifddValue
    , aivcifddCount

    -- ** AnalyzeItemFeaturesDataDescription
    , AnalyzeItemFeaturesDataDescription
    , analyzeItemFeaturesDataDescription
    , aifddText
    , aifddNumeric
    , aifddIndex
    , aifddCategorical

    -- ** Input
    , Input
    , input
    , iInput

    -- ** AnalyzeNumericOutputFeatureDataDescription
    , AnalyzeNumericOutputFeatureDataDescription
    , analyzeNumericOutputFeatureDataDescription
    , anofddMean
    , anofddCount
    , anofddVariance

    -- ** AnalyzeDataDescription
    , AnalyzeDataDescription
    , analyzeDataDescription
    , addOutputFeature
    , addFeatures

    -- ** Update
    , Update
    , update
    , uCsvInstance
    , uOutput

    -- ** Insert2ModelInfo
    , Insert2ModelInfo
    , insert2ModelInfo
    , imiModelType
    , imiClassWeightedAccuracy
    , imiClassificationAccuracy
    , imiMeanSquaredError
    , imiNumberLabels
    , imiNumberInstances

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

    -- ** AnalyzeConfusionMatrixModelDescription
    , AnalyzeConfusionMatrixModelDescription
    , analyzeConfusionMatrixModelDescription

    -- ** AnalyzeOutputFeatureDataDescription
    , AnalyzeOutputFeatureDataDescription
    , analyzeOutputFeatureDataDescription
    , aofddText
    , aofddNumeric

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

    -- ** AnalyzeCategoricalItemFeaturesDataDescription
    , AnalyzeCategoricalItemFeaturesDataDescription
    , analyzeCategoricalItemFeaturesDataDescription
    , acifddValues
    , acifddCount

    -- ** AnalyzeNumericItemFeaturesDataDescription
    , AnalyzeNumericItemFeaturesDataDescription
    , analyzeNumericItemFeaturesDataDescription
    , anifddMean
    , anifddCount
    , anifddVariance

    -- ** InputInput
    , InputInput
    , inputInput
    , iiCsvInstance

    -- ** InsertItemTrainingInstances
    , InsertItemTrainingInstances
    , insertItemTrainingInstances
    , iitiCsvInstance
    , iitiOutput

    -- ** AnalyzeTextItemFeaturesDataDescription
    , AnalyzeTextItemFeaturesDataDescription
    , analyzeTextItemFeaturesDataDescription
    , atifddCount

    -- ** AnalyzeModelDescription
    , AnalyzeModelDescription
    , analyzeModelDescription
    , amdConfusionMatrixRowTotals
    , amdConfusionMatrix
    , amdModelinfo

    -- ** AnalyzeItemErrors
    , AnalyzeItemErrors
    , analyzeItemErrors

    -- ** InsertItemUtility
    , InsertItemUtility
    , insertItemUtility
    ) where

import           Network.Google.API.Prediction.Hostedmodels.Predict
import           Network.Google.API.Prediction.Trainedmodels.Analyze
import           Network.Google.API.Prediction.Trainedmodels.Delete
import           Network.Google.API.Prediction.Trainedmodels.Get
import           Network.Google.API.Prediction.Trainedmodels.Insert
import           Network.Google.API.Prediction.Trainedmodels.List
import           Network.Google.API.Prediction.Trainedmodels.Predict
import           Network.Google.API.Prediction.Trainedmodels.Update
import           Network.Google.Prediction.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Prediction =
     TrainedmodelsListAPI :<|> HostedmodelsPredictAPI :<|>
       TrainedmodelsDeleteAPI
       :<|> TrainedmodelsPredictAPI
       :<|> TrainedmodelsAnalyzeAPI
       :<|> TrainedmodelsUpdateAPI
       :<|> TrainedmodelsInsertAPI
       :<|> TrainedmodelsGetAPI

prediction :: Proxy Prediction
prediction = Proxy
