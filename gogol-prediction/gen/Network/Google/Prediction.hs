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
    -- * Resources
      Prediction
    , TrainedmodelsAPI
    , TrainedmodelsInsert
    , TrainedmodelsList
    , TrainedmodelsGet
    , TrainedmodelsAnalyze
    , TrainedmodelsPredict
    , TrainedmodelsDelete
    , TrainedmodelsUpdate
    , HostedmodelsAPI
    , HostedmodelsPredict

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

    -- ** AnalyzeCategoricalItemFeaturesDataDescription
    , AnalyzeCategoricalItemFeaturesDataDescription
    , analyzeCategoricalItemFeaturesDataDescription
    , acifddValues
    , acifddCount

    -- ** AnalyzeConfusionMatrixModelDescription
    , AnalyzeConfusionMatrixModelDescription
    , analyzeConfusionMatrixModelDescription

    -- ** AnalyzeConfusionMatrixRowTotalsModelDescription
    , AnalyzeConfusionMatrixRowTotalsModelDescription
    , analyzeConfusionMatrixRowTotalsModelDescription

    -- ** AnalyzeDataDescription
    , AnalyzeDataDescription
    , analyzeDataDescription
    , addOutputFeature
    , addFeatures

    -- ** AnalyzeItemErrors
    , AnalyzeItemErrors
    , analyzeItemErrors

    -- ** AnalyzeItemFeaturesDataDescription
    , AnalyzeItemFeaturesDataDescription
    , analyzeItemFeaturesDataDescription
    , aifddText
    , aifddNumeric
    , aifddIndex
    , aifddCategorical

    -- ** AnalyzeItemTextOutputFeatureDataDescription
    , AnalyzeItemTextOutputFeatureDataDescription
    , analyzeItemTextOutputFeatureDataDescription
    , aitofddValue
    , aitofddCount

    -- ** AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    , AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    , analyzeItemValuesCategoricalItemFeaturesDataDescription
    , aivcifddValue
    , aivcifddCount

    -- ** AnalyzeModelDescription
    , AnalyzeModelDescription
    , analyzeModelDescription
    , amdConfusionMatrixRowTotals
    , amdConfusionMatrix
    , amdModelinfo

    -- ** AnalyzeNumericItemFeaturesDataDescription
    , AnalyzeNumericItemFeaturesDataDescription
    , analyzeNumericItemFeaturesDataDescription
    , anifddMean
    , anifddCount
    , anifddVariance

    -- ** AnalyzeNumericOutputFeatureDataDescription
    , AnalyzeNumericOutputFeatureDataDescription
    , analyzeNumericOutputFeatureDataDescription
    , anofddMean
    , anofddCount
    , anofddVariance

    -- ** AnalyzeOutputFeatureDataDescription
    , AnalyzeOutputFeatureDataDescription
    , analyzeOutputFeatureDataDescription
    , aofddText
    , aofddNumeric

    -- ** AnalyzeTextItemFeaturesDataDescription
    , AnalyzeTextItemFeaturesDataDescription
    , analyzeTextItemFeaturesDataDescription
    , atifddCount

    -- ** Input
    , Input
    , input
    , iInput

    -- ** InputInput
    , InputInput
    , inputInput
    , iiCsvInstance

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

    -- ** Insert2ModelInfo
    , Insert2ModelInfo
    , insert2ModelInfo
    , imiModelType
    , imiClassWeightedAccuracy
    , imiClassificationAccuracy
    , imiMeanSquaredError
    , imiNumberLabels
    , imiNumberInstances

    -- ** InsertItemTrainingInstances
    , InsertItemTrainingInstances
    , insertItemTrainingInstances
    , iitiCsvInstance
    , iitiOutput

    -- ** InsertItemUtility
    , InsertItemUtility
    , insertItemUtility

    -- ** List
    , List
    , list
    , lNextPageToken
    , lKind
    , lItems
    , lSelfLink

    -- ** Output
    , Output
    , output
    , oOutputValue
    , oKind
    , oOutputLabel
    , oSelfLink
    , oId
    , oOutputMulti

    -- ** OutputItemOutputMulti
    , OutputItemOutputMulti
    , outputItemOutputMulti
    , oiomScore
    , oiomLabel

    -- ** Update
    , Update
    , update
    , uCsvInstance
    , uOutput
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Prediction =
     TrainedmodelsAPI :<|> HostedmodelsAPI

type TrainedmodelsAPI =
     TrainedmodelsInsert :<|> TrainedmodelsList :<|>
       TrainedmodelsGet
       :<|> TrainedmodelsAnalyze
       :<|> TrainedmodelsPredict
       :<|> TrainedmodelsDelete
       :<|> TrainedmodelsUpdate

-- | Train a Prediction API model.
type TrainedmodelsInsert =
     "prediction" :> "v1.6" :> "projects" :>
       Capture "project" Text
       :> "trainedmodels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | List available models.
type TrainedmodelsList =
     "prediction" :> "v1.6" :> "projects" :>
       Capture "project" Text
       :> "trainedmodels"
       :> "list"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Check training status of your model.
type TrainedmodelsGet =
     "prediction" :> "v1.6" :> "projects" :>
       Capture "project" Text
       :> "trainedmodels"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Get analysis of the model and the data the model was trained on.
type TrainedmodelsAnalyze =
     "prediction" :> "v1.6" :> "projects" :>
       Capture "project" Text
       :> "trainedmodels"
       :> Capture "id" Text
       :> "analyze"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Submit model id and request a prediction.
type TrainedmodelsPredict =
     "prediction" :> "v1.6" :> "projects" :>
       Capture "project" Text
       :> "trainedmodels"
       :> Capture "id" Text
       :> "predict"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Delete a trained model.
type TrainedmodelsDelete =
     "prediction" :> "v1.6" :> "projects" :>
       Capture "project" Text
       :> "trainedmodels"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Add new data to a trained model.
type TrainedmodelsUpdate =
     "prediction" :> "v1.6" :> "projects" :>
       Capture "project" Text
       :> "trainedmodels"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type HostedmodelsAPI = HostedmodelsPredict

-- | Submit input and request an output against a hosted model.
type HostedmodelsPredict =
     "prediction" :> "v1.6" :> "projects" :>
       Capture "project" Text
       :> "hostedmodels"
       :> Capture "hostedModelName" Text
       :> "predict"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
