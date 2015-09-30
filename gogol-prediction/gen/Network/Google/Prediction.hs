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
    , module Prediction.Hostedmodels.Predict

    -- ** PredictionTrainedmodelsAnalyze
    , module Prediction.Trainedmodels.Analyze

    -- ** PredictionTrainedmodelsDelete
    , module Prediction.Trainedmodels.Delete

    -- ** PredictionTrainedmodelsGet
    , module Prediction.Trainedmodels.Get

    -- ** PredictionTrainedmodelsInsert
    , module Prediction.Trainedmodels.Insert

    -- ** PredictionTrainedmodelsList
    , module Prediction.Trainedmodels.List

    -- ** PredictionTrainedmodelsPredict
    , module Prediction.Trainedmodels.Predict

    -- ** PredictionTrainedmodelsUpdate
    , module Prediction.Trainedmodels.Update

    -- * Types

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

    -- ** Input
    , Input
    , input
    , iInput

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

    -- ** Update
    , Update
    , update
    , uCsvInstance
    , uOutput
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

type PredictionAPI = Trainedmodels :<|> Hostedmodels

predictionAPI :: Proxy PredictionAPI
predictionAPI = Proxy
