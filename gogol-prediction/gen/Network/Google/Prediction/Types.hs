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

    -- * Analyze
    , Analyze
    , analyze
    , aKind
    , aModelDescription
    , aSelfLink
    , aId
    , aErrors
    , aDataDescription

    -- * AnalyzeConfusionMatrixRowTotalsModelDescription
    , AnalyzeConfusionMatrixRowTotalsModelDescription
    , analyzeConfusionMatrixRowTotalsModelDescription

    -- * OutputItemOutputMulti
    , OutputItemOutputMulti
    , outputItemOutputMulti
    , oiomScore
    , oiomLabel

    -- * Output
    , Output
    , output
    , oOutputValue
    , oKind
    , oOutputLabel
    , oSelfLink
    , oId
    , oOutputMulti

    -- * AnalyzeItemTextOutputFeatureDataDescription
    , AnalyzeItemTextOutputFeatureDataDescription
    , analyzeItemTextOutputFeatureDataDescription
    , aitofddValue
    , aitofddCount

    -- * Alt
    , Alt (..)

    -- * List
    , List
    , list
    , lNextPageToken
    , lKind
    , lItems
    , lSelfLink

    -- * AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    , AnalyzeItemValuesCategoricalItemFeaturesDataDescription
    , analyzeItemValuesCategoricalItemFeaturesDataDescription
    , aivcifddValue
    , aivcifddCount

    -- * AnalyzeItemFeaturesDataDescription
    , AnalyzeItemFeaturesDataDescription
    , analyzeItemFeaturesDataDescription
    , aifddText
    , aifddNumeric
    , aifddIndex
    , aifddCategorical

    -- * Input
    , Input
    , input
    , iInput

    -- * AnalyzeNumericOutputFeatureDataDescription
    , AnalyzeNumericOutputFeatureDataDescription
    , analyzeNumericOutputFeatureDataDescription
    , anofddMean
    , anofddCount
    , anofddVariance

    -- * AnalyzeDataDescription
    , AnalyzeDataDescription
    , analyzeDataDescription
    , addOutputFeature
    , addFeatures

    -- * Update
    , Update
    , update
    , uCsvInstance
    , uOutput

    -- * Insert2ModelInfo
    , Insert2ModelInfo
    , insert2ModelInfo
    , imiModelType
    , imiClassWeightedAccuracy
    , imiClassificationAccuracy
    , imiMeanSquaredError
    , imiNumberLabels
    , imiNumberInstances

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

    -- * AnalyzeConfusionMatrixModelDescription
    , AnalyzeConfusionMatrixModelDescription
    , analyzeConfusionMatrixModelDescription

    -- * AnalyzeOutputFeatureDataDescription
    , AnalyzeOutputFeatureDataDescription
    , analyzeOutputFeatureDataDescription
    , aofddText
    , aofddNumeric

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

    -- * AnalyzeCategoricalItemFeaturesDataDescription
    , AnalyzeCategoricalItemFeaturesDataDescription
    , analyzeCategoricalItemFeaturesDataDescription
    , acifddValues
    , acifddCount

    -- * AnalyzeNumericItemFeaturesDataDescription
    , AnalyzeNumericItemFeaturesDataDescription
    , analyzeNumericItemFeaturesDataDescription
    , anifddMean
    , anifddCount
    , anifddVariance

    -- * InputInput
    , InputInput
    , inputInput
    , iiCsvInstance

    -- * InsertItemTrainingInstances
    , InsertItemTrainingInstances
    , insertItemTrainingInstances
    , iitiCsvInstance
    , iitiOutput

    -- * AnalyzeTextItemFeaturesDataDescription
    , AnalyzeTextItemFeaturesDataDescription
    , analyzeTextItemFeaturesDataDescription
    , atifddCount

    -- * AnalyzeModelDescription
    , AnalyzeModelDescription
    , analyzeModelDescription
    , amdConfusionMatrixRowTotals
    , amdConfusionMatrix
    , amdModelinfo

    -- * AnalyzeItemErrors
    , AnalyzeItemErrors
    , analyzeItemErrors

    -- * InsertItemUtility
    , InsertItemUtility
    , insertItemUtility
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
