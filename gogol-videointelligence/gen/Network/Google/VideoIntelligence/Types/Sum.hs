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

import Network.Google.Prelude hiding (Bytes)

-- | Likelihood of the pornography content..
data GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood
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

instance Hashable GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right LikelihoodUnspecified
        "VERY_UNLIKELY" -> Right VeryUnlikely
        "UNLIKELY" -> Right Unlikely
        "POSSIBLE" -> Right Possible
        "LIKELY" -> Right Likely
        "VERY_LIKELY" -> Right VeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        LikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        VeryUnlikely -> "VERY_UNLIKELY"
        Unlikely -> "UNLIKELY"
        Possible -> "POSSIBLE"
        Likely -> "LIKELY"
        VeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText

-- | What labels should be detected with LABEL_DETECTION, in addition to
-- video-level labels or segment-level labels. If unspecified, defaults to
-- \`SHOT_MODE\`.
data GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode
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

instance Hashable GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode

instance FromHttpApiData GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode where
    parseQueryParam = \case
        "LABEL_DETECTION_MODE_UNSPECIFIED" -> Right LabelDetectionModeUnspecified
        "SHOT_MODE" -> Right ShotMode
        "FRAME_MODE" -> Right FrameMode
        "SHOT_AND_FRAME_MODE" -> Right ShotAndFrameMode
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode where
    toQueryParam = \case
        LabelDetectionModeUnspecified -> "LABEL_DETECTION_MODE_UNSPECIFIED"
        ShotMode -> "SHOT_MODE"
        FrameMode -> "FRAME_MODE"
        ShotAndFrameMode -> "SHOT_AND_FRAME_MODE"

instance FromJSON GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode"

instance ToJSON GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode where
    toJSON = toJSONText

-- | Likelihood of the pornography content..
data GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood
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

instance Hashable GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GCVVECFPLLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GCVVECFPLVeryUnlikely
        "UNLIKELY" -> Right GCVVECFPLUnlikely
        "POSSIBLE" -> Right GCVVECFPLPossible
        "LIKELY" -> Right GCVVECFPLLikely
        "VERY_LIKELY" -> Right GCVVECFPLVeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        GCVVECFPLLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GCVVECFPLVeryUnlikely -> "VERY_UNLIKELY"
        GCVVECFPLUnlikely -> "UNLIKELY"
        GCVVECFPLPossible -> "POSSIBLE"
        GCVVECFPLLikely -> "LIKELY"
        GCVVECFPLVeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText

-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
data GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature
    = FeatureUnspecified
      -- ^ @FEATURE_UNSPECIFIED@
      -- Unspecified.
    | LabelDetection
      -- ^ @LABEL_DETECTION@
      -- Label detection. Detect objects, such as dog or flower.
    | ShotChangeDetection
      -- ^ @SHOT_CHANGE_DETECTION@
      -- Shot change detection.
    | ExplicitContentDetection
      -- ^ @EXPLICIT_CONTENT_DETECTION@
      -- Explicit content detection.
    | FaceDetection
      -- ^ @FACE_DETECTION@
      -- Human face detection.
    | SpeechTranscription
      -- ^ @SPEECH_TRANSCRIPTION@
      -- Speech transcription.
    | TextDetection
      -- ^ @TEXT_DETECTION@
      -- OCR text detection and tracking.
    | ObjectTracking
      -- ^ @OBJECT_TRACKING@
      -- Object detection and tracking.
    | LogoRecognition
      -- ^ @LOGO_RECOGNITION@
      -- Logo detection, tracking, and recognition.
    | PersonDetection
      -- ^ @PERSON_DETECTION@
      -- Person detection.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature

instance FromHttpApiData GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature where
    parseQueryParam = \case
        "FEATURE_UNSPECIFIED" -> Right FeatureUnspecified
        "LABEL_DETECTION" -> Right LabelDetection
        "SHOT_CHANGE_DETECTION" -> Right ShotChangeDetection
        "EXPLICIT_CONTENT_DETECTION" -> Right ExplicitContentDetection
        "FACE_DETECTION" -> Right FaceDetection
        "SPEECH_TRANSCRIPTION" -> Right SpeechTranscription
        "TEXT_DETECTION" -> Right TextDetection
        "OBJECT_TRACKING" -> Right ObjectTracking
        "LOGO_RECOGNITION" -> Right LogoRecognition
        "PERSON_DETECTION" -> Right PersonDetection
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature where
    toQueryParam = \case
        FeatureUnspecified -> "FEATURE_UNSPECIFIED"
        LabelDetection -> "LABEL_DETECTION"
        ShotChangeDetection -> "SHOT_CHANGE_DETECTION"
        ExplicitContentDetection -> "EXPLICIT_CONTENT_DETECTION"
        FaceDetection -> "FACE_DETECTION"
        SpeechTranscription -> "SPEECH_TRANSCRIPTION"
        TextDetection -> "TEXT_DETECTION"
        ObjectTracking -> "OBJECT_TRACKING"
        LogoRecognition -> "LOGO_RECOGNITION"
        PersonDetection -> "PERSON_DETECTION"

instance FromJSON GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature"

instance ToJSON GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature where
    toJSON = toJSONText

-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
data GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature
    = GCVVVAPFFeatureUnspecified
      -- ^ @FEATURE_UNSPECIFIED@
      -- Unspecified.
    | GCVVVAPFLabelDetection
      -- ^ @LABEL_DETECTION@
      -- Label detection. Detect objects, such as dog or flower.
    | GCVVVAPFShotChangeDetection
      -- ^ @SHOT_CHANGE_DETECTION@
      -- Shot change detection.
    | GCVVVAPFExplicitContentDetection
      -- ^ @EXPLICIT_CONTENT_DETECTION@
      -- Explicit content detection.
    | GCVVVAPFFaceDetection
      -- ^ @FACE_DETECTION@
      -- Human face detection.
    | GCVVVAPFSpeechTranscription
      -- ^ @SPEECH_TRANSCRIPTION@
      -- Speech transcription.
    | GCVVVAPFTextDetection
      -- ^ @TEXT_DETECTION@
      -- OCR text detection and tracking.
    | GCVVVAPFObjectTracking
      -- ^ @OBJECT_TRACKING@
      -- Object detection and tracking.
    | GCVVVAPFLogoRecognition
      -- ^ @LOGO_RECOGNITION@
      -- Logo detection, tracking, and recognition.
    | GCVVVAPFPersonDetection
      -- ^ @PERSON_DETECTION@
      -- Person detection.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature

instance FromHttpApiData GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature where
    parseQueryParam = \case
        "FEATURE_UNSPECIFIED" -> Right GCVVVAPFFeatureUnspecified
        "LABEL_DETECTION" -> Right GCVVVAPFLabelDetection
        "SHOT_CHANGE_DETECTION" -> Right GCVVVAPFShotChangeDetection
        "EXPLICIT_CONTENT_DETECTION" -> Right GCVVVAPFExplicitContentDetection
        "FACE_DETECTION" -> Right GCVVVAPFFaceDetection
        "SPEECH_TRANSCRIPTION" -> Right GCVVVAPFSpeechTranscription
        "TEXT_DETECTION" -> Right GCVVVAPFTextDetection
        "OBJECT_TRACKING" -> Right GCVVVAPFObjectTracking
        "LOGO_RECOGNITION" -> Right GCVVVAPFLogoRecognition
        "PERSON_DETECTION" -> Right GCVVVAPFPersonDetection
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature where
    toQueryParam = \case
        GCVVVAPFFeatureUnspecified -> "FEATURE_UNSPECIFIED"
        GCVVVAPFLabelDetection -> "LABEL_DETECTION"
        GCVVVAPFShotChangeDetection -> "SHOT_CHANGE_DETECTION"
        GCVVVAPFExplicitContentDetection -> "EXPLICIT_CONTENT_DETECTION"
        GCVVVAPFFaceDetection -> "FACE_DETECTION"
        GCVVVAPFSpeechTranscription -> "SPEECH_TRANSCRIPTION"
        GCVVVAPFTextDetection -> "TEXT_DETECTION"
        GCVVVAPFObjectTracking -> "OBJECT_TRACKING"
        GCVVVAPFLogoRecognition -> "LOGO_RECOGNITION"
        GCVVVAPFPersonDetection -> "PERSON_DETECTION"

instance FromJSON GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature"

instance ToJSON GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature where
    toJSON = toJSONText

data GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem
    = GCVVAVRFIFeatureUnspecified
      -- ^ @FEATURE_UNSPECIFIED@
      -- Unspecified.
    | GCVVAVRFILabelDetection
      -- ^ @LABEL_DETECTION@
      -- Label detection. Detect objects, such as dog or flower.
    | GCVVAVRFIShotChangeDetection
      -- ^ @SHOT_CHANGE_DETECTION@
      -- Shot change detection.
    | GCVVAVRFIExplicitContentDetection
      -- ^ @EXPLICIT_CONTENT_DETECTION@
      -- Explicit content detection.
    | GCVVAVRFIFaceDetection
      -- ^ @FACE_DETECTION@
      -- Human face detection.
    | GCVVAVRFISpeechTranscription
      -- ^ @SPEECH_TRANSCRIPTION@
      -- Speech transcription.
    | GCVVAVRFITextDetection
      -- ^ @TEXT_DETECTION@
      -- OCR text detection and tracking.
    | GCVVAVRFIObjectTracking
      -- ^ @OBJECT_TRACKING@
      -- Object detection and tracking.
    | GCVVAVRFILogoRecognition
      -- ^ @LOGO_RECOGNITION@
      -- Logo detection, tracking, and recognition.
    | GCVVAVRFICelebrityRecognition
      -- ^ @CELEBRITY_RECOGNITION@
      -- Celebrity recognition.
    | GCVVAVRFIPersonDetection
      -- ^ @PERSON_DETECTION@
      -- Person detection.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem

instance FromHttpApiData GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem where
    parseQueryParam = \case
        "FEATURE_UNSPECIFIED" -> Right GCVVAVRFIFeatureUnspecified
        "LABEL_DETECTION" -> Right GCVVAVRFILabelDetection
        "SHOT_CHANGE_DETECTION" -> Right GCVVAVRFIShotChangeDetection
        "EXPLICIT_CONTENT_DETECTION" -> Right GCVVAVRFIExplicitContentDetection
        "FACE_DETECTION" -> Right GCVVAVRFIFaceDetection
        "SPEECH_TRANSCRIPTION" -> Right GCVVAVRFISpeechTranscription
        "TEXT_DETECTION" -> Right GCVVAVRFITextDetection
        "OBJECT_TRACKING" -> Right GCVVAVRFIObjectTracking
        "LOGO_RECOGNITION" -> Right GCVVAVRFILogoRecognition
        "CELEBRITY_RECOGNITION" -> Right GCVVAVRFICelebrityRecognition
        "PERSON_DETECTION" -> Right GCVVAVRFIPersonDetection
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem where
    toQueryParam = \case
        GCVVAVRFIFeatureUnspecified -> "FEATURE_UNSPECIFIED"
        GCVVAVRFILabelDetection -> "LABEL_DETECTION"
        GCVVAVRFIShotChangeDetection -> "SHOT_CHANGE_DETECTION"
        GCVVAVRFIExplicitContentDetection -> "EXPLICIT_CONTENT_DETECTION"
        GCVVAVRFIFaceDetection -> "FACE_DETECTION"
        GCVVAVRFISpeechTranscription -> "SPEECH_TRANSCRIPTION"
        GCVVAVRFITextDetection -> "TEXT_DETECTION"
        GCVVAVRFIObjectTracking -> "OBJECT_TRACKING"
        GCVVAVRFILogoRecognition -> "LOGO_RECOGNITION"
        GCVVAVRFICelebrityRecognition -> "CELEBRITY_RECOGNITION"
        GCVVAVRFIPersonDetection -> "PERSON_DETECTION"

instance FromJSON GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem"

instance ToJSON GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem where
    toJSON = toJSONText

-- | Likelihood of the pornography content..
data GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood
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

instance Hashable GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GVeryUnlikely
        "UNLIKELY" -> Right GUnlikely
        "POSSIBLE" -> Right GPossible
        "LIKELY" -> Right GLikely
        "VERY_LIKELY" -> Right GVeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        GLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GVeryUnlikely -> "VERY_UNLIKELY"
        GUnlikely -> "UNLIKELY"
        GPossible -> "POSSIBLE"
        GLikely -> "LIKELY"
        GVeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText

-- | Likelihood of the pornography content..
data GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood
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

instance Hashable GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GOOLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GOOVeryUnlikely
        "UNLIKELY" -> Right GOOUnlikely
        "POSSIBLE" -> Right GOOPossible
        "LIKELY" -> Right GOOLikely
        "VERY_LIKELY" -> Right GOOVeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        GOOLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GOOVeryUnlikely -> "VERY_UNLIKELY"
        GOOUnlikely -> "UNLIKELY"
        GOOPossible -> "POSSIBLE"
        GOOLikely -> "LIKELY"
        GOOVeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText

-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
data GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature
    = GFeatureUnspecified
      -- ^ @FEATURE_UNSPECIFIED@
      -- Unspecified.
    | GLabelDetection
      -- ^ @LABEL_DETECTION@
      -- Label detection. Detect objects, such as dog or flower.
    | GShotChangeDetection
      -- ^ @SHOT_CHANGE_DETECTION@
      -- Shot change detection.
    | GExplicitContentDetection
      -- ^ @EXPLICIT_CONTENT_DETECTION@
      -- Explicit content detection.
    | GFaceDetection
      -- ^ @FACE_DETECTION@
      -- Human face detection.
    | GSpeechTranscription
      -- ^ @SPEECH_TRANSCRIPTION@
      -- Speech transcription.
    | GTextDetection
      -- ^ @TEXT_DETECTION@
      -- OCR text detection and tracking.
    | GObjectTracking
      -- ^ @OBJECT_TRACKING@
      -- Object detection and tracking.
    | GLogoRecognition
      -- ^ @LOGO_RECOGNITION@
      -- Logo detection, tracking, and recognition.
    | GPersonDetection
      -- ^ @PERSON_DETECTION@
      -- Person detection.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature

instance FromHttpApiData GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature where
    parseQueryParam = \case
        "FEATURE_UNSPECIFIED" -> Right GFeatureUnspecified
        "LABEL_DETECTION" -> Right GLabelDetection
        "SHOT_CHANGE_DETECTION" -> Right GShotChangeDetection
        "EXPLICIT_CONTENT_DETECTION" -> Right GExplicitContentDetection
        "FACE_DETECTION" -> Right GFaceDetection
        "SPEECH_TRANSCRIPTION" -> Right GSpeechTranscription
        "TEXT_DETECTION" -> Right GTextDetection
        "OBJECT_TRACKING" -> Right GObjectTracking
        "LOGO_RECOGNITION" -> Right GLogoRecognition
        "PERSON_DETECTION" -> Right GPersonDetection
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature where
    toQueryParam = \case
        GFeatureUnspecified -> "FEATURE_UNSPECIFIED"
        GLabelDetection -> "LABEL_DETECTION"
        GShotChangeDetection -> "SHOT_CHANGE_DETECTION"
        GExplicitContentDetection -> "EXPLICIT_CONTENT_DETECTION"
        GFaceDetection -> "FACE_DETECTION"
        GSpeechTranscription -> "SPEECH_TRANSCRIPTION"
        GTextDetection -> "TEXT_DETECTION"
        GObjectTracking -> "OBJECT_TRACKING"
        GLogoRecognition -> "LOGO_RECOGNITION"
        GPersonDetection -> "PERSON_DETECTION"

instance FromJSON GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature"

instance ToJSON GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature where
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
    = GCVVECFPLCLikelihoodUnspecified
      -- ^ @LIKELIHOOD_UNSPECIFIED@
      -- Unspecified likelihood.
    | GCVVECFPLCVeryUnlikely
      -- ^ @VERY_UNLIKELY@
      -- Very unlikely.
    | GCVVECFPLCUnlikely
      -- ^ @UNLIKELY@
      -- Unlikely.
    | GCVVECFPLCPossible
      -- ^ @POSSIBLE@
      -- Possible.
    | GCVVECFPLCLikely
      -- ^ @LIKELY@
      -- Likely.
    | GCVVECFPLCVeryLikely
      -- ^ @VERY_LIKELY@
      -- Very likely.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood

instance FromHttpApiData GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood where
    parseQueryParam = \case
        "LIKELIHOOD_UNSPECIFIED" -> Right GCVVECFPLCLikelihoodUnspecified
        "VERY_UNLIKELY" -> Right GCVVECFPLCVeryUnlikely
        "UNLIKELY" -> Right GCVVECFPLCUnlikely
        "POSSIBLE" -> Right GCVVECFPLCPossible
        "LIKELY" -> Right GCVVECFPLCLikely
        "VERY_LIKELY" -> Right GCVVECFPLCVeryLikely
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood where
    toQueryParam = \case
        GCVVECFPLCLikelihoodUnspecified -> "LIKELIHOOD_UNSPECIFIED"
        GCVVECFPLCVeryUnlikely -> "VERY_UNLIKELY"
        GCVVECFPLCUnlikely -> "UNLIKELY"
        GCVVECFPLCPossible -> "POSSIBLE"
        GCVVECFPLCLikely -> "LIKELY"
        GCVVECFPLCVeryLikely -> "VERY_LIKELY"

instance FromJSON GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood"

instance ToJSON GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood where
    toJSON = toJSONText

-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
data GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature
    = GOOFeatureUnspecified
      -- ^ @FEATURE_UNSPECIFIED@
      -- Unspecified.
    | GOOLabelDetection
      -- ^ @LABEL_DETECTION@
      -- Label detection. Detect objects, such as dog or flower.
    | GOOShotChangeDetection
      -- ^ @SHOT_CHANGE_DETECTION@
      -- Shot change detection.
    | GOOExplicitContentDetection
      -- ^ @EXPLICIT_CONTENT_DETECTION@
      -- Explicit content detection.
    | GOOFaceDetection
      -- ^ @FACE_DETECTION@
      -- Human face detection.
    | GOOSpeechTranscription
      -- ^ @SPEECH_TRANSCRIPTION@
      -- Speech transcription.
    | GOOTextDetection
      -- ^ @TEXT_DETECTION@
      -- OCR text detection and tracking.
    | GOOObjectTracking
      -- ^ @OBJECT_TRACKING@
      -- Object detection and tracking.
    | GOOLogoRecognition
      -- ^ @LOGO_RECOGNITION@
      -- Logo detection, tracking, and recognition.
    | GOOPersonDetection
      -- ^ @PERSON_DETECTION@
      -- Person detection.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature

instance FromHttpApiData GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature where
    parseQueryParam = \case
        "FEATURE_UNSPECIFIED" -> Right GOOFeatureUnspecified
        "LABEL_DETECTION" -> Right GOOLabelDetection
        "SHOT_CHANGE_DETECTION" -> Right GOOShotChangeDetection
        "EXPLICIT_CONTENT_DETECTION" -> Right GOOExplicitContentDetection
        "FACE_DETECTION" -> Right GOOFaceDetection
        "SPEECH_TRANSCRIPTION" -> Right GOOSpeechTranscription
        "TEXT_DETECTION" -> Right GOOTextDetection
        "OBJECT_TRACKING" -> Right GOOObjectTracking
        "LOGO_RECOGNITION" -> Right GOOLogoRecognition
        "PERSON_DETECTION" -> Right GOOPersonDetection
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature where
    toQueryParam = \case
        GOOFeatureUnspecified -> "FEATURE_UNSPECIFIED"
        GOOLabelDetection -> "LABEL_DETECTION"
        GOOShotChangeDetection -> "SHOT_CHANGE_DETECTION"
        GOOExplicitContentDetection -> "EXPLICIT_CONTENT_DETECTION"
        GOOFaceDetection -> "FACE_DETECTION"
        GOOSpeechTranscription -> "SPEECH_TRANSCRIPTION"
        GOOTextDetection -> "TEXT_DETECTION"
        GOOObjectTracking -> "OBJECT_TRACKING"
        GOOLogoRecognition -> "LOGO_RECOGNITION"
        GOOPersonDetection -> "PERSON_DETECTION"

instance FromJSON GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature"

instance ToJSON GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature where
    toJSON = toJSONText

-- | Specifies which feature is being tracked if the request contains more
-- than one feature.
data GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature
    = GCVVVAPFCFeatureUnspecified
      -- ^ @FEATURE_UNSPECIFIED@
      -- Unspecified.
    | GCVVVAPFCLabelDetection
      -- ^ @LABEL_DETECTION@
      -- Label detection. Detect objects, such as dog or flower.
    | GCVVVAPFCShotChangeDetection
      -- ^ @SHOT_CHANGE_DETECTION@
      -- Shot change detection.
    | GCVVVAPFCExplicitContentDetection
      -- ^ @EXPLICIT_CONTENT_DETECTION@
      -- Explicit content detection.
    | GCVVVAPFCFaceDetection
      -- ^ @FACE_DETECTION@
      -- Human face detection.
    | GCVVVAPFCSpeechTranscription
      -- ^ @SPEECH_TRANSCRIPTION@
      -- Speech transcription.
    | GCVVVAPFCTextDetection
      -- ^ @TEXT_DETECTION@
      -- OCR text detection and tracking.
    | GCVVVAPFCObjectTracking
      -- ^ @OBJECT_TRACKING@
      -- Object detection and tracking.
    | GCVVVAPFCLogoRecognition
      -- ^ @LOGO_RECOGNITION@
      -- Logo detection, tracking, and recognition.
    | GCVVVAPFCCelebrityRecognition
      -- ^ @CELEBRITY_RECOGNITION@
      -- Celebrity recognition.
    | GCVVVAPFCPersonDetection
      -- ^ @PERSON_DETECTION@
      -- Person detection.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature

instance FromHttpApiData GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature where
    parseQueryParam = \case
        "FEATURE_UNSPECIFIED" -> Right GCVVVAPFCFeatureUnspecified
        "LABEL_DETECTION" -> Right GCVVVAPFCLabelDetection
        "SHOT_CHANGE_DETECTION" -> Right GCVVVAPFCShotChangeDetection
        "EXPLICIT_CONTENT_DETECTION" -> Right GCVVVAPFCExplicitContentDetection
        "FACE_DETECTION" -> Right GCVVVAPFCFaceDetection
        "SPEECH_TRANSCRIPTION" -> Right GCVVVAPFCSpeechTranscription
        "TEXT_DETECTION" -> Right GCVVVAPFCTextDetection
        "OBJECT_TRACKING" -> Right GCVVVAPFCObjectTracking
        "LOGO_RECOGNITION" -> Right GCVVVAPFCLogoRecognition
        "CELEBRITY_RECOGNITION" -> Right GCVVVAPFCCelebrityRecognition
        "PERSON_DETECTION" -> Right GCVVVAPFCPersonDetection
        x -> Left ("Unable to parse GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature from: " <> x)

instance ToHttpApiData GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature where
    toQueryParam = \case
        GCVVVAPFCFeatureUnspecified -> "FEATURE_UNSPECIFIED"
        GCVVVAPFCLabelDetection -> "LABEL_DETECTION"
        GCVVVAPFCShotChangeDetection -> "SHOT_CHANGE_DETECTION"
        GCVVVAPFCExplicitContentDetection -> "EXPLICIT_CONTENT_DETECTION"
        GCVVVAPFCFaceDetection -> "FACE_DETECTION"
        GCVVVAPFCSpeechTranscription -> "SPEECH_TRANSCRIPTION"
        GCVVVAPFCTextDetection -> "TEXT_DETECTION"
        GCVVVAPFCObjectTracking -> "OBJECT_TRACKING"
        GCVVVAPFCLogoRecognition -> "LOGO_RECOGNITION"
        GCVVVAPFCCelebrityRecognition -> "CELEBRITY_RECOGNITION"
        GCVVVAPFCPersonDetection -> "PERSON_DETECTION"

instance FromJSON GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature where
    parseJSON = parseJSONText "GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature"

instance ToJSON GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature where
    toJSON = toJSONText
