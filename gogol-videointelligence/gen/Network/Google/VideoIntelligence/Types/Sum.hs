{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.VideoIntelligence.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.VideoIntelligence.Types.Sum where

import           Network.Google.Prelude hiding (Bytes)

-- | Likelihood of the pornography content..
data GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood
    = LikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Unspecified likelihood.
    | VeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Very unlikely.
    | Unlikely
      -- ^ @UNLIKELY@
      -- Unlikely.
    | Possible
      -- ^ @POSSIBLE@
      -- Possible.
    | Likely
      -- ^ @LIKELY@
      -- Likely.
    | VeryLikely
      -- ^ @VERY_LIKELY@
      -- Very likely.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right LikelihoodUnspecified
        "VERY_UNLIKELY" -> Right VeryUnlikely
        "UNLIKELY" -> Right Unlikely
        "POSSIBLE" -> Right Possible
        "LIKELY" -> Right Likely
        "VERY_LIKELY" -> Right VeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        LikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        VeryUnlikely -> "VERY_UNLIKELY"
        Unlikely -> "UNLIKELY"
        Possible -> "POSSIBLE"
        Likely -> "LIKELY"
        VeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText

-- | Likelihood of the pornography content..
data GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood
    = GCVVECFPLLikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Unspecified likelihood.
    | GCVVECFPLVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Very unlikely.
    | GCVVECFPLUnlikely
      -- ^ @UNLIKELY@
      -- Unlikely.
    | GCVVECFPLPossible
      -- ^ @POSSIBLE@
      -- Possible.
    | GCVVECFPLLikely
      -- ^ @LIKELY@
      -- Likely.
    | GCVVECFPLVeryLikely
      -- ^ @VERY_LIKELY@
      -- Very likely.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GCVVECFPLLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GCVVECFPLVeryUnlikely
        "UNLIKELY" -> Right GCVVECFPLUnlikely
        "POSSIBLE" -> Right GCVVECFPLPossible
        "LIKELY" -> Right GCVVECFPLLikely
        "VERY_LIKELY" -> Right GCVVECFPLVeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        GCVVECFPLLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GCVVECFPLVeryUnlikely -> "VERY_UNLIKELY"
        GCVVECFPLUnlikely -> "UNLIKELY"
        GCVVECFPLPossible -> "POSSIBLE"
        GCVVECFPLLikely -> "LIKELY"
        GCVVECFPLVeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText

-- | What labels should be detected with LABEL_DETECTION, in addition to
-- video-level labels or segment-level labels. If unspecified, defaults to
-- \`SHOT_MODE\`.
data GoogleCloudVideointelligenceV1p1beta1_LabelDetectionConfigLabelDetectionMode
    = LabelDetectionModeUnspecified
      -- ^ @LABEL_DETECTION_MODE_UNSPECIFIED@
      -- Unspecified.
    | ShotMode
      -- ^ @SHOT_MODE@
      -- Detect shot-level labels.
    | FrameMode
      -- ^ @FRAME_MODE@
      -- Detect frame-level labels.
    | ShotAndFrameMode
      -- ^ @SHOT_AND_FRAME_MODE@
      -- Detect both shot-level and frame-level labels.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1p1beta1_LabelDetectionConfigLabelDetectionMode

instance FromHttpApiData GoogleCloudVideointelligenceV1p1beta1_LabelDetectionConfigLabelDetectionMode where
    parseQueryParam = \case
        "LABEL_DETECTION_MODE_UNSPECIFIED" -> Right LabelDetectionModeUnspecified
        "SHOT_MODE" -> Right ShotMode
        "FRAME_MODE" -> Right FrameMode
        "SHOT_AND_FRAME_MODE" -> Right ShotAndFrameMode
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p1beta1_LabelDetectionConfigLabelDetectionMode from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p1beta1_LabelDetectionConfigLabelDetectionMode where
    toQueryParam = \case
        LabelDetectionModeUnspecified -> "LABEL_DETECTION_MODE_UNSPECIFIED"
        ShotMode -> "SHOT_MODE"
        FrameMode -> "FRAME_MODE"
        ShotAndFrameMode -> "SHOT_AND_FRAME_MODE"

instance FromJSON GoogleCloudVideointelligenceV1p1beta1_LabelDetectionConfigLabelDetectionMode where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p1beta1_LabelDetectionConfigLabelDetectionMode"

instance ToJSON GoogleCloudVideointelligenceV1p1beta1_LabelDetectionConfigLabelDetectionMode where
    toJSON = toJSONText

-- | Likelihood of the pornography content..
data GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood
    = GLikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Unspecified likelihood.
    | GVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Very unlikely.
    | GUnlikely
      -- ^ @UNLIKELY@
      -- Unlikely.
    | GPossible
      -- ^ @POSSIBLE@
      -- Possible.
    | GLikely
      -- ^ @LIKELY@
      -- Likely.
    | GVeryLikely
      -- ^ @VERY_LIKELY@
      -- Very likely.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GVeryUnlikely
        "UNLIKELY" -> Right GUnlikely
        "POSSIBLE" -> Right GPossible
        "LIKELY" -> Right GLikely
        "VERY_LIKELY" -> Right GVeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        GLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GVeryUnlikely -> "VERY_UNLIKELY"
        GUnlikely -> "UNLIKELY"
        GPossible -> "POSSIBLE"
        GLikely -> "LIKELY"
        GVeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Likelihood of the pornography content..
data GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood
    = GOOLikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Unspecified likelihood.
    | GOOVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Very unlikely.
    | GOOUnlikely
      -- ^ @UNLIKELY@
      -- Unlikely.
    | GOOPossible
      -- ^ @POSSIBLE@
      -- Possible.
    | GOOLikely
      -- ^ @LIKELY@
      -- Likely.
    | GOOVeryLikely
      -- ^ @VERY_LIKELY@
      -- Very likely.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GOOLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GOOVeryUnlikely
        "UNLIKELY" -> Right GOOUnlikely
        "POSSIBLE" -> Right GOOPossible
        "LIKELY" -> Right GOOLikely
        "VERY_LIKELY" -> Right GOOVeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        GOOLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GOOVeryUnlikely -> "VERY_UNLIKELY"
        GOOUnlikely -> "UNLIKELY"
        GOOPossible -> "POSSIBLE"
        GOOLikely -> "LIKELY"
        GOOVeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText
