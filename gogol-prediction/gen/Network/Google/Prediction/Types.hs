{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Prediction.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Prediction.Types
    (
    -- * Service URL
      predictionURL

    -- * FeaturesItemText
    , FeaturesItemText
    , featuresItemText
    , fitCount

    -- * Insert
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

    -- * List
    , List
    , list
    , lNextPageToken
    , lKind
    , lItems
    , lSelfLink

    -- * FeaturesItem
    , FeaturesItem
    , featuresItem
    , fiText
    , fiNumeric
    , fiIndex
    , fiCategorical

    -- * Insert2
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

    -- * OutputFeature
    , OutputFeature
    , outputFeature
    , ofText
    , ofNumeric

    -- * Input
    , Input
    , input
    , iCSVInstance

    -- * Input
    , Input
    , input
    , iInput

    -- * ModelDescription
    , ModelDescription
    , modelDescription
    , mdConfusionMatrixRowTotals
    , mdConfusionMatrix
    , mdModelInfo

    -- * Analyze
    , Analyze
    , analyze
    , aKind
    , aModelDescription
    , aSelfLink
    , aId
    , aErrors
    , aDataDescription

    -- * Output
    , Output
    , output
    , oOutputValue
    , oKind
    , oOutputLabel
    , oSelfLink
    , oId
    , oOutputMulti

    -- * TrainingInstancesItem
    , TrainingInstancesItem
    , trainingInstancesItem
    , tiiCSVInstance
    , tiiOutput

    -- * ConfusionMatrixRowTotals
    , ConfusionMatrixRowTotals
    , confusionMatrixRowTotals

    -- * ValuesItem
    , ValuesItem
    , valuesItem
    , viValue
    , viCount

    -- * UtilityItem
    , UtilityItem
    , utilityItem

    -- * TextItem
    , TextItem
    , textItem
    , tiValue
    , tiCount

    -- * Numeric
    , Numeric
    , numeric
    , nMean
    , nCount
    , nVariance

    -- * OutputMultiItem
    , OutputMultiItem
    , outputMultiItem
    , omiScore
    , omiLabel

    -- * ErrorsItem
    , ErrorsItem
    , errorsItem

    -- * DataDescription
    , DataDescription
    , dataDescription
    , ddOutputFeature
    , ddFeatures

    -- * Categorical
    , Categorical
    , categorical
    , cValues
    , cCount

    -- * ConfusionMatrix
    , ConfusionMatrix
    , confusionMatrix

    -- * ModelInfo
    , ModelInfo
    , modelInfo
    , miModelType
    , miClassWeightedAccuracy
    , miClassificationAccuracy
    , miMeanSquaredError
    , miNumberLabels
    , miNumberInstances

    -- * FeaturesItemNumeric
    , FeaturesItemNumeric
    , featuresItemNumeric
    , finMean
    , finCount
    , finVariance

    -- * Update
    , Update
    , update
    , uCSVInstance
    , uOutput
    ) where

import           Network.Google.Prediction.Types.Product
import           Network.Google.Prediction.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1.6' of the Prediction API.
predictionURL :: BaseUrl
predictionURL
  = BaseUrl Https
      "https://www.googleapis.com/prediction/v1.6/projects/"
      443
