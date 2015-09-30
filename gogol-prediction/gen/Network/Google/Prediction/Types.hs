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

    -- * AnalyzeErrors
    , AnalyzeErrors
    , analyzeErrors

    -- * List
    , List
    , list
    , lNextPageToken
    , lKind
    , lItems
    , lSelfLink

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

    -- * AnalyzeDataDescriptionFeatures
    , AnalyzeDataDescriptionFeatures
    , analyzeDataDescriptionFeatures
    , addfText
    , addfNumeric
    , addfIndex
    , addfCategorical

    -- * AnalyzeDataDescriptionFeaturesText
    , AnalyzeDataDescriptionFeaturesText
    , analyzeDataDescriptionFeaturesText
    , addftCount

    -- * InputInput
    , InputInput
    , inputInput
    , iiCsvInstance

    -- * Input
    , Input
    , input
    , iInput

    -- * OutputOutputMulti
    , OutputOutputMulti
    , outputOutputMulti
    , oomScore
    , oomLabel

    -- * AnalyzeModelDescriptionConfusionMatrix
    , AnalyzeModelDescriptionConfusionMatrix
    , analyzeModelDescriptionConfusionMatrix

    -- * AnalyzeDataDescriptionOutputFeatureText
    , AnalyzeDataDescriptionOutputFeatureText
    , analyzeDataDescriptionOutputFeatureText
    , addoftValue
    , addoftCount

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

    -- * InsertUtility
    , InsertUtility
    , insertUtility

    -- * AnalyzeDataDescription
    , AnalyzeDataDescription
    , analyzeDataDescription
    , addOutputFeature
    , addFeatures

    -- * AnalyzeDataDescriptionOutputFeatureNumeric
    , AnalyzeDataDescriptionOutputFeatureNumeric
    , analyzeDataDescriptionOutputFeatureNumeric
    , addofnMean
    , addofnCount
    , addofnVariance

    -- * AnalyzeModelDescription
    , AnalyzeModelDescription
    , analyzeModelDescription
    , amdConfusionMatrixRowTotals
    , amdConfusionMatrix
    , amdModelinfo

    -- * InsertTrainingInstances
    , InsertTrainingInstances
    , insertTrainingInstances
    , itiCsvInstance
    , itiOutput

    -- * AnalyzeDataDescriptionFeaturesCategoricalValues
    , AnalyzeDataDescriptionFeaturesCategoricalValues
    , analyzeDataDescriptionFeaturesCategoricalValues
    , addfcvValue
    , addfcvCount

    -- * AnalyzeDataDescriptionFeaturesCategorical
    , AnalyzeDataDescriptionFeaturesCategorical
    , analyzeDataDescriptionFeaturesCategorical
    , addfcValues
    , addfcCount

    -- * AnalyzeDataDescriptionFeaturesNumeric
    , AnalyzeDataDescriptionFeaturesNumeric
    , analyzeDataDescriptionFeaturesNumeric
    , addfnMean
    , addfnCount
    , addfnVariance

    -- * Update
    , Update
    , update
    , uCsvInstance
    , uOutput

    -- * Alt
    , Alt (..)

    -- * AnalyzeDataDescriptionOutputFeature
    , AnalyzeDataDescriptionOutputFeature
    , analyzeDataDescriptionOutputFeature
    , addofText
    , addofNumeric
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
