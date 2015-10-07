{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    -- * Service Request
      predictionRequest

    -- * Insert2ModelInfo
    , Insert2ModelInfo
    , insert2ModelInfo
    , imiModelType
    , imiClassWeightedAccuracy
    , imiClassificationAccuracy
    , imiMeanSquaredError
    , imiNumberLabels
    , imiNumberInstances

    -- * AnalyzeModelDescriptionConfusionMatrixRowTotals
    , AnalyzeModelDescriptionConfusionMatrixRowTotals
    , analyzeModelDescriptionConfusionMatrixRowTotals

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

    -- * InsertUtilityItem
    , InsertUtilityItem
    , insertUtilityItem

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

    -- * InsertTrainingInstancesItem
    , InsertTrainingInstancesItem
    , insertTrainingInstancesItem
    , itiiCSVInstance
    , itiiOutput

    -- * InputInput
    , InputInput
    , inputInput
    , iiCSVInstance

    -- * AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem
    , AnalyzeDataDescriptionFeaturesItemCategoricalValuesItem
    , analyzeDataDescriptionFeaturesItemCategoricalValuesItem
    , addficviValue
    , addficviCount

    -- * AnalyzeDataDescriptionFeaturesItemNumeric
    , AnalyzeDataDescriptionFeaturesItemNumeric
    , analyzeDataDescriptionFeaturesItemNumeric
    , addfinMean
    , addfinCount
    , addfinVariance

    -- * Input
    , Input
    , input
    , iInput

    -- * AnalyzeDataDescriptionFeaturesItemCategorical
    , AnalyzeDataDescriptionFeaturesItemCategorical
    , analyzeDataDescriptionFeaturesItemCategorical
    , addficValues
    , addficCount

    -- * AnalyzeDataDescriptionOutputFeatureTextItem
    , AnalyzeDataDescriptionOutputFeatureTextItem
    , analyzeDataDescriptionOutputFeatureTextItem
    , addoftiValue
    , addoftiCount

    -- * OutputOutputMultiItem
    , OutputOutputMultiItem
    , outputOutputMultiItem
    , oomiScore
    , oomiLabel

    -- * Analyze
    , Analyze
    , analyze
    , aKind
    , aModelDescription
    , aSelfLink
    , aId
    , aErrors
    , aDataDescription

    -- * AnalyzeModelDescriptionConfusionMatrix
    , AnalyzeModelDescriptionConfusionMatrix
    , analyzeModelDescriptionConfusionMatrix

    -- * Output
    , Output
    , output
    , oOutputValue
    , oKind
    , oOutputLabel
    , oSelfLink
    , oId
    , oOutputMulti

    -- * AnalyzeDataDescriptionOutputFeatureNumeric
    , AnalyzeDataDescriptionOutputFeatureNumeric
    , analyzeDataDescriptionOutputFeatureNumeric
    , addofnMean
    , addofnCount
    , addofnVariance

    -- * AnalyzeErrorsItem
    , AnalyzeErrorsItem
    , analyzeErrorsItem

    -- * AnalyzeDataDescription
    , AnalyzeDataDescription
    , analyzeDataDescription
    , addOutputFeature
    , addFeatures

    -- * AnalyzeModelDescription
    , AnalyzeModelDescription
    , analyzeModelDescription
    , amdConfusionMatrixRowTotals
    , amdConfusionMatrix
    , amdModelInfo

    -- * AnalyzeDataDescriptionFeaturesItemText
    , AnalyzeDataDescriptionFeaturesItemText
    , analyzeDataDescriptionFeaturesItemText
    , addfitCount

    -- * AnalyzeDataDescriptionFeaturesItem
    , AnalyzeDataDescriptionFeaturesItem
    , analyzeDataDescriptionFeaturesItem
    , addfiText
    , addfiNumeric
    , addfiIndex
    , addfiCategorical

    -- * Update
    , Update
    , update
    , uCSVInstance
    , uOutput

    -- * AnalyzeDataDescriptionOutputFeature
    , AnalyzeDataDescriptionOutputFeature
    , analyzeDataDescriptionOutputFeature
    , addofText
    , addofNumeric
    ) where

import           Network.Google.Prediction.Types.Product
import           Network.Google.Prediction.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1.6' of the Prediction API. This contains the host and root path used as a starting point for constructing service requests.
predictionRequest :: RequestBuilder
predictionRequest
  = defaultRequest "https://www.googleapis.com/"
      "prediction/v1.6/projects/"
