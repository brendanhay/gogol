{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Vision.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Vision.Types.Sum where

import Network.Google.Prelude

-- | Under-exposed likelihood.
data FaceAnnotationUnderExposedLikelihood
    = Unknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | VeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | Unlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | Possible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | Likely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | VeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FaceAnnotationUnderExposedLikelihood

instance FromText FaceAnnotationUnderExposedLikelihood where
    fromText = \case
        "UNKNOWN" -> Just Unknown
        "VERY_UNLIKELY" -> Just VeryUnlikely
        "UNLIKELY" -> Just Unlikely
        "POSSIBLE" -> Just Possible
        "LIKELY" -> Just Likely
        "VERY_LIKELY" -> Just VeryLikely
        _ -> Nothing

instance ToText FaceAnnotationUnderExposedLikelihood where
    toText = \case
        Unknown -> "UNKNOWN"
        VeryUnlikely -> "VERY_UNLIKELY"
        Unlikely -> "UNLIKELY"
        Possible -> "POSSIBLE"
        Likely -> "LIKELY"
        VeryLikely -> "VERY_LIKELY"

instance FromJSON FaceAnnotationUnderExposedLikelihood where
    parseJSON = parseJSONText "FaceAnnotationUnderExposedLikelihood"

instance ToJSON FaceAnnotationUnderExposedLikelihood where
    toJSON = toJSONText

-- | Headwear likelihood.
data FaceAnnotationHeadwearLikelihood
    = FAHLUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | FAHLVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | FAHLUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | FAHLPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | FAHLLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | FAHLVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FaceAnnotationHeadwearLikelihood

instance FromText FaceAnnotationHeadwearLikelihood where
    fromText = \case
        "UNKNOWN" -> Just FAHLUnknown
        "VERY_UNLIKELY" -> Just FAHLVeryUnlikely
        "UNLIKELY" -> Just FAHLUnlikely
        "POSSIBLE" -> Just FAHLPossible
        "LIKELY" -> Just FAHLLikely
        "VERY_LIKELY" -> Just FAHLVeryLikely
        _ -> Nothing

instance ToText FaceAnnotationHeadwearLikelihood where
    toText = \case
        FAHLUnknown -> "UNKNOWN"
        FAHLVeryUnlikely -> "VERY_UNLIKELY"
        FAHLUnlikely -> "UNLIKELY"
        FAHLPossible -> "POSSIBLE"
        FAHLLikely -> "LIKELY"
        FAHLVeryLikely -> "VERY_LIKELY"

instance FromJSON FaceAnnotationHeadwearLikelihood where
    parseJSON = parseJSONText "FaceAnnotationHeadwearLikelihood"

instance ToJSON FaceAnnotationHeadwearLikelihood where
    toJSON = toJSONText

-- | Represents the adult contents likelihood for the image.
data SafeSearchAnnotationAdult
    = SSAAUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | SSAAVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | SSAAUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | SSAAPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | SSAALikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | SSAAVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SafeSearchAnnotationAdult

instance FromText SafeSearchAnnotationAdult where
    fromText = \case
        "UNKNOWN" -> Just SSAAUnknown
        "VERY_UNLIKELY" -> Just SSAAVeryUnlikely
        "UNLIKELY" -> Just SSAAUnlikely
        "POSSIBLE" -> Just SSAAPossible
        "LIKELY" -> Just SSAALikely
        "VERY_LIKELY" -> Just SSAAVeryLikely
        _ -> Nothing

instance ToText SafeSearchAnnotationAdult where
    toText = \case
        SSAAUnknown -> "UNKNOWN"
        SSAAVeryUnlikely -> "VERY_UNLIKELY"
        SSAAUnlikely -> "UNLIKELY"
        SSAAPossible -> "POSSIBLE"
        SSAALikely -> "LIKELY"
        SSAAVeryLikely -> "VERY_LIKELY"

instance FromJSON SafeSearchAnnotationAdult where
    parseJSON = parseJSONText "SafeSearchAnnotationAdult"

instance ToJSON SafeSearchAnnotationAdult where
    toJSON = toJSONText

-- | Anger likelihood.
data FaceAnnotationAngerLikelihood
    = FAALUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | FAALVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | FAALUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | FAALPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | FAALLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | FAALVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FaceAnnotationAngerLikelihood

instance FromText FaceAnnotationAngerLikelihood where
    fromText = \case
        "UNKNOWN" -> Just FAALUnknown
        "VERY_UNLIKELY" -> Just FAALVeryUnlikely
        "UNLIKELY" -> Just FAALUnlikely
        "POSSIBLE" -> Just FAALPossible
        "LIKELY" -> Just FAALLikely
        "VERY_LIKELY" -> Just FAALVeryLikely
        _ -> Nothing

instance ToText FaceAnnotationAngerLikelihood where
    toText = \case
        FAALUnknown -> "UNKNOWN"
        FAALVeryUnlikely -> "VERY_UNLIKELY"
        FAALUnlikely -> "UNLIKELY"
        FAALPossible -> "POSSIBLE"
        FAALLikely -> "LIKELY"
        FAALVeryLikely -> "VERY_LIKELY"

instance FromJSON FaceAnnotationAngerLikelihood where
    parseJSON = parseJSONText "FaceAnnotationAngerLikelihood"

instance ToJSON FaceAnnotationAngerLikelihood where
    toJSON = toJSONText

-- | Likelihood this is a medical image.
data SafeSearchAnnotationMedical
    = SSAMUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | SSAMVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | SSAMUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | SSAMPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | SSAMLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | SSAMVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SafeSearchAnnotationMedical

instance FromText SafeSearchAnnotationMedical where
    fromText = \case
        "UNKNOWN" -> Just SSAMUnknown
        "VERY_UNLIKELY" -> Just SSAMVeryUnlikely
        "UNLIKELY" -> Just SSAMUnlikely
        "POSSIBLE" -> Just SSAMPossible
        "LIKELY" -> Just SSAMLikely
        "VERY_LIKELY" -> Just SSAMVeryLikely
        _ -> Nothing

instance ToText SafeSearchAnnotationMedical where
    toText = \case
        SSAMUnknown -> "UNKNOWN"
        SSAMVeryUnlikely -> "VERY_UNLIKELY"
        SSAMUnlikely -> "UNLIKELY"
        SSAMPossible -> "POSSIBLE"
        SSAMLikely -> "LIKELY"
        SSAMVeryLikely -> "VERY_LIKELY"

instance FromJSON SafeSearchAnnotationMedical where
    parseJSON = parseJSONText "SafeSearchAnnotationMedical"

instance ToJSON SafeSearchAnnotationMedical where
    toJSON = toJSONText

-- | Blurred likelihood.
data FaceAnnotationBlurredLikelihood
    = FABLUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | FABLVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | FABLUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | FABLPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | FABLLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | FABLVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FaceAnnotationBlurredLikelihood

instance FromText FaceAnnotationBlurredLikelihood where
    fromText = \case
        "UNKNOWN" -> Just FABLUnknown
        "VERY_UNLIKELY" -> Just FABLVeryUnlikely
        "UNLIKELY" -> Just FABLUnlikely
        "POSSIBLE" -> Just FABLPossible
        "LIKELY" -> Just FABLLikely
        "VERY_LIKELY" -> Just FABLVeryLikely
        _ -> Nothing

instance ToText FaceAnnotationBlurredLikelihood where
    toText = \case
        FABLUnknown -> "UNKNOWN"
        FABLVeryUnlikely -> "VERY_UNLIKELY"
        FABLUnlikely -> "UNLIKELY"
        FABLPossible -> "POSSIBLE"
        FABLLikely -> "LIKELY"
        FABLVeryLikely -> "VERY_LIKELY"

instance FromJSON FaceAnnotationBlurredLikelihood where
    parseJSON = parseJSONText "FaceAnnotationBlurredLikelihood"

instance ToJSON FaceAnnotationBlurredLikelihood where
    toJSON = toJSONText

-- | Violence likelihood.
data SafeSearchAnnotationViolence
    = SSAVUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | SSAVVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | SSAVUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | SSAVPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | SSAVLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | SSAVVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SafeSearchAnnotationViolence

instance FromText SafeSearchAnnotationViolence where
    fromText = \case
        "UNKNOWN" -> Just SSAVUnknown
        "VERY_UNLIKELY" -> Just SSAVVeryUnlikely
        "UNLIKELY" -> Just SSAVUnlikely
        "POSSIBLE" -> Just SSAVPossible
        "LIKELY" -> Just SSAVLikely
        "VERY_LIKELY" -> Just SSAVVeryLikely
        _ -> Nothing

instance ToText SafeSearchAnnotationViolence where
    toText = \case
        SSAVUnknown -> "UNKNOWN"
        SSAVVeryUnlikely -> "VERY_UNLIKELY"
        SSAVUnlikely -> "UNLIKELY"
        SSAVPossible -> "POSSIBLE"
        SSAVLikely -> "LIKELY"
        SSAVVeryLikely -> "VERY_LIKELY"

instance FromJSON SafeSearchAnnotationViolence where
    parseJSON = parseJSONText "SafeSearchAnnotationViolence"

instance ToJSON SafeSearchAnnotationViolence where
    toJSON = toJSONText

-- | The feature type.
data FeatureType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
      -- Unspecified feature type.
    | FaceDetection
      -- ^ @FACE_DETECTION@
      -- Run face detection.
    | LandmarkDetection
      -- ^ @LANDMARK_DETECTION@
      -- Run landmark detection.
    | LogoDetection
      -- ^ @LOGO_DETECTION@
      -- Run logo detection.
    | LabelDetection
      -- ^ @LABEL_DETECTION@
      -- Run label detection.
    | TextDetection
      -- ^ @TEXT_DETECTION@
      -- Run OCR.
    | SafeSearchDetection
      -- ^ @SAFE_SEARCH_DETECTION@
      -- Run various computer vision models to compute image safe-search
      -- properties.
    | ImageProperties
      -- ^ @IMAGE_PROPERTIES@
      -- Compute a set of properties about the image (such as the image\'s
      -- dominant colors).
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FeatureType

instance FromText FeatureType where
    fromText = \case
        "TYPE_UNSPECIFIED" -> Just TypeUnspecified
        "FACE_DETECTION" -> Just FaceDetection
        "LANDMARK_DETECTION" -> Just LandmarkDetection
        "LOGO_DETECTION" -> Just LogoDetection
        "LABEL_DETECTION" -> Just LabelDetection
        "TEXT_DETECTION" -> Just TextDetection
        "SAFE_SEARCH_DETECTION" -> Just SafeSearchDetection
        "IMAGE_PROPERTIES" -> Just ImageProperties
        _ -> Nothing

instance ToText FeatureType where
    toText = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        FaceDetection -> "FACE_DETECTION"
        LandmarkDetection -> "LANDMARK_DETECTION"
        LogoDetection -> "LOGO_DETECTION"
        LabelDetection -> "LABEL_DETECTION"
        TextDetection -> "TEXT_DETECTION"
        SafeSearchDetection -> "SAFE_SEARCH_DETECTION"
        ImageProperties -> "IMAGE_PROPERTIES"

instance FromJSON FeatureType where
    parseJSON = parseJSONText "FeatureType"

instance ToJSON FeatureType where
    toJSON = toJSONText

-- | Face landmark type.
data LandmarkType
    = UnknownLandmark
      -- ^ @UNKNOWN_LANDMARK@
      -- Unknown face landmark detected. Should not be filled.
    | LeftEye
      -- ^ @LEFT_EYE@
      -- Left eye.
    | RightEye
      -- ^ @RIGHT_EYE@
      -- Right eye.
    | LeftOfLeftEyebrow
      -- ^ @LEFT_OF_LEFT_EYEBROW@
      -- Left of left eyebrow.
    | RightOfLeftEyebrow
      -- ^ @RIGHT_OF_LEFT_EYEBROW@
      -- Right of left eyebrow.
    | LeftOfRightEyebrow
      -- ^ @LEFT_OF_RIGHT_EYEBROW@
      -- Left of right eyebrow.
    | RightOfRightEyebrow
      -- ^ @RIGHT_OF_RIGHT_EYEBROW@
      -- Right of right eyebrow.
    | MidpointBetweenEyes
      -- ^ @MIDPOINT_BETWEEN_EYES@
      -- Midpoint between eyes.
    | NoseTip
      -- ^ @NOSE_TIP@
      -- Nose tip.
    | UpperLip
      -- ^ @UPPER_LIP@
      -- Upper lip.
    | LowerLip
      -- ^ @LOWER_LIP@
      -- Lower lip.
    | MouthLeft
      -- ^ @MOUTH_LEFT@
      -- Mouth left.
    | MouthRight
      -- ^ @MOUTH_RIGHT@
      -- Mouth right.
    | MouthCenter
      -- ^ @MOUTH_CENTER@
      -- Mouth center.
    | NoseBottomRight
      -- ^ @NOSE_BOTTOM_RIGHT@
      -- Nose, bottom right.
    | NoseBottomLeft
      -- ^ @NOSE_BOTTOM_LEFT@
      -- Nose, bottom left.
    | NoseBottomCenter
      -- ^ @NOSE_BOTTOM_CENTER@
      -- Nose, bottom center.
    | LeftEyeTopBoundary
      -- ^ @LEFT_EYE_TOP_BOUNDARY@
      -- Left eye, top boundary.
    | LeftEyeRightCorner
      -- ^ @LEFT_EYE_RIGHT_CORNER@
      -- Left eye, right corner.
    | LeftEyeBottomBoundary
      -- ^ @LEFT_EYE_BOTTOM_BOUNDARY@
      -- Left eye, bottom boundary.
    | LeftEyeLeftCorner
      -- ^ @LEFT_EYE_LEFT_CORNER@
      -- Left eye, left corner.
    | RightEyeTopBoundary
      -- ^ @RIGHT_EYE_TOP_BOUNDARY@
      -- Right eye, top boundary.
    | RightEyeRightCorner
      -- ^ @RIGHT_EYE_RIGHT_CORNER@
      -- Right eye, right corner.
    | RightEyeBottomBoundary
      -- ^ @RIGHT_EYE_BOTTOM_BOUNDARY@
      -- Right eye, bottom boundary.
    | RightEyeLeftCorner
      -- ^ @RIGHT_EYE_LEFT_CORNER@
      -- Right eye, left corner.
    | LeftEyebrowUpperMidpoint
      -- ^ @LEFT_EYEBROW_UPPER_MIDPOINT@
      -- Left eyebrow, upper midpoint.
    | RightEyebrowUpperMidpoint
      -- ^ @RIGHT_EYEBROW_UPPER_MIDPOINT@
      -- Right eyebrow, upper midpoint.
    | LeftEarTragion
      -- ^ @LEFT_EAR_TRAGION@
      -- Left ear tragion.
    | RightEarTragion
      -- ^ @RIGHT_EAR_TRAGION@
      -- Right ear tragion.
    | LeftEyePupil
      -- ^ @LEFT_EYE_PUPIL@
      -- Left eye pupil.
    | RightEyePupil
      -- ^ @RIGHT_EYE_PUPIL@
      -- Right eye pupil.
    | ForeheadGlabella
      -- ^ @FOREHEAD_GLABELLA@
      -- Forehead glabella.
    | ChinGnathion
      -- ^ @CHIN_GNATHION@
      -- Chin gnathion.
    | ChinLeftGonion
      -- ^ @CHIN_LEFT_GONION@
      -- Chin left gonion.
    | ChinRightGonion
      -- ^ @CHIN_RIGHT_GONION@
      -- Chin right gonion.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LandmarkType

instance FromText LandmarkType where
    fromText = \case
        "UNKNOWN_LANDMARK" -> Just UnknownLandmark
        "LEFT_EYE" -> Just LeftEye
        "RIGHT_EYE" -> Just RightEye
        "LEFT_OF_LEFT_EYEBROW" -> Just LeftOfLeftEyebrow
        "RIGHT_OF_LEFT_EYEBROW" -> Just RightOfLeftEyebrow
        "LEFT_OF_RIGHT_EYEBROW" -> Just LeftOfRightEyebrow
        "RIGHT_OF_RIGHT_EYEBROW" -> Just RightOfRightEyebrow
        "MIDPOINT_BETWEEN_EYES" -> Just MidpointBetweenEyes
        "NOSE_TIP" -> Just NoseTip
        "UPPER_LIP" -> Just UpperLip
        "LOWER_LIP" -> Just LowerLip
        "MOUTH_LEFT" -> Just MouthLeft
        "MOUTH_RIGHT" -> Just MouthRight
        "MOUTH_CENTER" -> Just MouthCenter
        "NOSE_BOTTOM_RIGHT" -> Just NoseBottomRight
        "NOSE_BOTTOM_LEFT" -> Just NoseBottomLeft
        "NOSE_BOTTOM_CENTER" -> Just NoseBottomCenter
        "LEFT_EYE_TOP_BOUNDARY" -> Just LeftEyeTopBoundary
        "LEFT_EYE_RIGHT_CORNER" -> Just LeftEyeRightCorner
        "LEFT_EYE_BOTTOM_BOUNDARY" -> Just LeftEyeBottomBoundary
        "LEFT_EYE_LEFT_CORNER" -> Just LeftEyeLeftCorner
        "RIGHT_EYE_TOP_BOUNDARY" -> Just RightEyeTopBoundary
        "RIGHT_EYE_RIGHT_CORNER" -> Just RightEyeRightCorner
        "RIGHT_EYE_BOTTOM_BOUNDARY" -> Just RightEyeBottomBoundary
        "RIGHT_EYE_LEFT_CORNER" -> Just RightEyeLeftCorner
        "LEFT_EYEBROW_UPPER_MIDPOINT" -> Just LeftEyebrowUpperMidpoint
        "RIGHT_EYEBROW_UPPER_MIDPOINT" -> Just RightEyebrowUpperMidpoint
        "LEFT_EAR_TRAGION" -> Just LeftEarTragion
        "RIGHT_EAR_TRAGION" -> Just RightEarTragion
        "LEFT_EYE_PUPIL" -> Just LeftEyePupil
        "RIGHT_EYE_PUPIL" -> Just RightEyePupil
        "FOREHEAD_GLABELLA" -> Just ForeheadGlabella
        "CHIN_GNATHION" -> Just ChinGnathion
        "CHIN_LEFT_GONION" -> Just ChinLeftGonion
        "CHIN_RIGHT_GONION" -> Just ChinRightGonion
        _ -> Nothing

instance ToText LandmarkType where
    toText = \case
        UnknownLandmark -> "UNKNOWN_LANDMARK"
        LeftEye -> "LEFT_EYE"
        RightEye -> "RIGHT_EYE"
        LeftOfLeftEyebrow -> "LEFT_OF_LEFT_EYEBROW"
        RightOfLeftEyebrow -> "RIGHT_OF_LEFT_EYEBROW"
        LeftOfRightEyebrow -> "LEFT_OF_RIGHT_EYEBROW"
        RightOfRightEyebrow -> "RIGHT_OF_RIGHT_EYEBROW"
        MidpointBetweenEyes -> "MIDPOINT_BETWEEN_EYES"
        NoseTip -> "NOSE_TIP"
        UpperLip -> "UPPER_LIP"
        LowerLip -> "LOWER_LIP"
        MouthLeft -> "MOUTH_LEFT"
        MouthRight -> "MOUTH_RIGHT"
        MouthCenter -> "MOUTH_CENTER"
        NoseBottomRight -> "NOSE_BOTTOM_RIGHT"
        NoseBottomLeft -> "NOSE_BOTTOM_LEFT"
        NoseBottomCenter -> "NOSE_BOTTOM_CENTER"
        LeftEyeTopBoundary -> "LEFT_EYE_TOP_BOUNDARY"
        LeftEyeRightCorner -> "LEFT_EYE_RIGHT_CORNER"
        LeftEyeBottomBoundary -> "LEFT_EYE_BOTTOM_BOUNDARY"
        LeftEyeLeftCorner -> "LEFT_EYE_LEFT_CORNER"
        RightEyeTopBoundary -> "RIGHT_EYE_TOP_BOUNDARY"
        RightEyeRightCorner -> "RIGHT_EYE_RIGHT_CORNER"
        RightEyeBottomBoundary -> "RIGHT_EYE_BOTTOM_BOUNDARY"
        RightEyeLeftCorner -> "RIGHT_EYE_LEFT_CORNER"
        LeftEyebrowUpperMidpoint -> "LEFT_EYEBROW_UPPER_MIDPOINT"
        RightEyebrowUpperMidpoint -> "RIGHT_EYEBROW_UPPER_MIDPOINT"
        LeftEarTragion -> "LEFT_EAR_TRAGION"
        RightEarTragion -> "RIGHT_EAR_TRAGION"
        LeftEyePupil -> "LEFT_EYE_PUPIL"
        RightEyePupil -> "RIGHT_EYE_PUPIL"
        ForeheadGlabella -> "FOREHEAD_GLABELLA"
        ChinGnathion -> "CHIN_GNATHION"
        ChinLeftGonion -> "CHIN_LEFT_GONION"
        ChinRightGonion -> "CHIN_RIGHT_GONION"

instance FromJSON LandmarkType where
    parseJSON = parseJSONText "LandmarkType"

instance ToJSON LandmarkType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = $1
      -- ^ @1@
      -- v1 error format
    | $2
      -- ^ @2@
      -- v2 error format
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Xgafv

instance FromText Xgafv where
    fromText = \case
        "1" -> Just $1
        "2" -> Just $2
        _ -> Nothing

instance ToText Xgafv where
    toText = \case
        $1 -> "1"
        $2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Spoof likelihood. The likelihood that an obvious modification was made
-- to the image\'s canonical version to make it appear funny or offensive.
data SafeSearchAnnotationSpoof
    = SSASUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | SSASVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | SSASUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | SSASPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | SSASLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | SSASVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable SafeSearchAnnotationSpoof

instance FromText SafeSearchAnnotationSpoof where
    fromText = \case
        "UNKNOWN" -> Just SSASUnknown
        "VERY_UNLIKELY" -> Just SSASVeryUnlikely
        "UNLIKELY" -> Just SSASUnlikely
        "POSSIBLE" -> Just SSASPossible
        "LIKELY" -> Just SSASLikely
        "VERY_LIKELY" -> Just SSASVeryLikely
        _ -> Nothing

instance ToText SafeSearchAnnotationSpoof where
    toText = \case
        SSASUnknown -> "UNKNOWN"
        SSASVeryUnlikely -> "VERY_UNLIKELY"
        SSASUnlikely -> "UNLIKELY"
        SSASPossible -> "POSSIBLE"
        SSASLikely -> "LIKELY"
        SSASVeryLikely -> "VERY_LIKELY"

instance FromJSON SafeSearchAnnotationSpoof where
    parseJSON = parseJSONText "SafeSearchAnnotationSpoof"

instance ToJSON SafeSearchAnnotationSpoof where
    toJSON = toJSONText

-- | Surprise likelihood.
data FaceAnnotationSurpriseLikelihood
    = FASLUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | FASLVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | FASLUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | FASLPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | FASLLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | FASLVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FaceAnnotationSurpriseLikelihood

instance FromText FaceAnnotationSurpriseLikelihood where
    fromText = \case
        "UNKNOWN" -> Just FASLUnknown
        "VERY_UNLIKELY" -> Just FASLVeryUnlikely
        "UNLIKELY" -> Just FASLUnlikely
        "POSSIBLE" -> Just FASLPossible
        "LIKELY" -> Just FASLLikely
        "VERY_LIKELY" -> Just FASLVeryLikely
        _ -> Nothing

instance ToText FaceAnnotationSurpriseLikelihood where
    toText = \case
        FASLUnknown -> "UNKNOWN"
        FASLVeryUnlikely -> "VERY_UNLIKELY"
        FASLUnlikely -> "UNLIKELY"
        FASLPossible -> "POSSIBLE"
        FASLLikely -> "LIKELY"
        FASLVeryLikely -> "VERY_LIKELY"

instance FromJSON FaceAnnotationSurpriseLikelihood where
    parseJSON = parseJSONText "FaceAnnotationSurpriseLikelihood"

instance ToJSON FaceAnnotationSurpriseLikelihood where
    toJSON = toJSONText

-- | Sorrow likelihood.
data FaceAnnotationSorrowLikelihood
    = FUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | FVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | FUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | FPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | FLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | FVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FaceAnnotationSorrowLikelihood

instance FromText FaceAnnotationSorrowLikelihood where
    fromText = \case
        "UNKNOWN" -> Just FUnknown
        "VERY_UNLIKELY" -> Just FVeryUnlikely
        "UNLIKELY" -> Just FUnlikely
        "POSSIBLE" -> Just FPossible
        "LIKELY" -> Just FLikely
        "VERY_LIKELY" -> Just FVeryLikely
        _ -> Nothing

instance ToText FaceAnnotationSorrowLikelihood where
    toText = \case
        FUnknown -> "UNKNOWN"
        FVeryUnlikely -> "VERY_UNLIKELY"
        FUnlikely -> "UNLIKELY"
        FPossible -> "POSSIBLE"
        FLikely -> "LIKELY"
        FVeryLikely -> "VERY_LIKELY"

instance FromJSON FaceAnnotationSorrowLikelihood where
    parseJSON = parseJSONText "FaceAnnotationSorrowLikelihood"

instance ToJSON FaceAnnotationSorrowLikelihood where
    toJSON = toJSONText

-- | Joy likelihood.
data FaceAnnotationJoyLikelihood
    = FAJLUnknown
      -- ^ @UNKNOWN@
      -- Unknown likelihood.
    | FAJLVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- The image very unlikely belongs to the vertical specified.
    | FAJLUnlikely
      -- ^ @UNLIKELY@
      -- The image unlikely belongs to the vertical specified.
    | FAJLPossible
      -- ^ @POSSIBLE@
      -- The image possibly belongs to the vertical specified.
    | FAJLLikely
      -- ^ @LIKELY@
      -- The image likely belongs to the vertical specified.
    | FAJLVeryLikely
      -- ^ @VERY_LIKELY@
      -- The image very likely belongs to the vertical specified.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable FaceAnnotationJoyLikelihood

instance FromText FaceAnnotationJoyLikelihood where
    fromText = \case
        "UNKNOWN" -> Just FAJLUnknown
        "VERY_UNLIKELY" -> Just FAJLVeryUnlikely
        "UNLIKELY" -> Just FAJLUnlikely
        "POSSIBLE" -> Just FAJLPossible
        "LIKELY" -> Just FAJLLikely
        "VERY_LIKELY" -> Just FAJLVeryLikely
        _ -> Nothing

instance ToText FaceAnnotationJoyLikelihood where
    toText = \case
        FAJLUnknown -> "UNKNOWN"
        FAJLVeryUnlikely -> "VERY_UNLIKELY"
        FAJLUnlikely -> "UNLIKELY"
        FAJLPossible -> "POSSIBLE"
        FAJLLikely -> "LIKELY"
        FAJLVeryLikely -> "VERY_LIKELY"

instance FromJSON FaceAnnotationJoyLikelihood where
    parseJSON = parseJSONText "FaceAnnotationJoyLikelihood"

instance ToJSON FaceAnnotationJoyLikelihood where
    toJSON = toJSONText
