{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.VideoIntelligence.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.VideoIntelligence.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
    GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
      ( GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
        GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
        GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Unlikely,
        GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Possible,
        GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Likely,
        GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
    GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
      ( GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_LABELDETECTION,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_FACEDETECTION,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_TEXTDETECTION,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_OBJECTTRACKING,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_LOGORECOGNITION,
        GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_PERSONDETECTION,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
    GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
      ( GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
        GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
        GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Unlikely,
        GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Possible,
        GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Likely,
        GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
      ( GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_LABELDETECTION,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_FACEDETECTION,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_TEXTDETECTION,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_OBJECTTRACKING,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_LOGORECOGNITION,
        GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_PERSONDETECTION,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
      ( GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
        GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
        GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely,
        GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Possible,
        GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Likely,
        GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
      ( GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_LABELDETECTION,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_FACEDETECTION,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_TEXTDETECTION,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION,
        GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_PERSONDETECTION,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
      ( GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
        GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
        GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely,
        GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Possible,
        GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Likely,
        GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
      ( GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_LABELDETECTION,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_FACEDETECTION,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_TEXTDETECTION,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION,
        GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_PERSONDETECTION,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
      ( GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_FEATUREUNSPECIFIED,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_LABELDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_SHOTCHANGEDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_EXPLICITCONTENTDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_FACEDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_SPEECHTRANSCRIPTION,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_TEXTDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_OBJECTTRACKING,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_LOGORECOGNITION,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_CELEBRITYRECOGNITION,
        GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_PERSONDETECTION,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
      ( GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
        GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
        GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely,
        GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Possible,
        GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Likely,
        GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
    GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
      ( GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_LABELDETECTIONMODEUNSPECIFIED,
        GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_SHOTMODE,
        GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_FRAMEMODE,
        GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_SHOTANDFRAMEMODE,
        ..
      ),

    -- * GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
      ( GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_LABELDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_FACEDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_TEXTDETECTION,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_CELEBRITYRECOGNITION,
        GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_PERSONDETECTION,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Likelihood of the pornography content..
newtype GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood = GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood {fromGoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified likelihood.
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED :: GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED = GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Very unlikely.
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY :: GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY = GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood "VERY_UNLIKELY"

-- | Unlikely.
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Unlikely :: GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Unlikely = GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood "UNLIKELY"

-- | Possible.
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Possible :: GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Possible = GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood "POSSIBLE"

-- | Likely.
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Likely :: GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Likely = GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood "LIKELY"

-- | Very likely.
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY :: GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY = GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
  GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
  GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Unlikely,
  GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Possible,
  GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_Likely,
  GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
  GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
  #-}

-- | Specifies which feature is being tracked if the request contains more than one feature.
newtype GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature {fromGoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "FEATURE_UNSPECIFIED"

-- | Label detection. Detect objects, such as dog or flower.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_LABELDETECTION :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_LABELDETECTION = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "LABEL_DETECTION"

-- | Shot change detection.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "SHOT_CHANGE_DETECTION"

-- | Explicit content detection.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "EXPLICIT_CONTENT_DETECTION"

-- | Human face detection.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_FACEDETECTION :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_FACEDETECTION = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "FACE_DETECTION"

-- | Speech transcription.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "SPEECH_TRANSCRIPTION"

-- | OCR text detection and tracking.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_TEXTDETECTION :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_TEXTDETECTION = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "TEXT_DETECTION"

-- | Object detection and tracking.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_OBJECTTRACKING :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_OBJECTTRACKING = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "OBJECT_TRACKING"

-- | Logo detection, tracking, and recognition.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_LOGORECOGNITION :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_LOGORECOGNITION = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "LOGO_RECOGNITION"

-- | Person detection.
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_PERSONDETECTION :: GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_PERSONDETECTION = GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature "PERSON_DETECTION"

{-# COMPLETE
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_LABELDETECTION,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_FACEDETECTION,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_TEXTDETECTION,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_OBJECTTRACKING,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_LOGORECOGNITION,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature_PERSONDETECTION,
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
  #-}

-- | Likelihood of the pornography content..
newtype GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood = GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood {fromGoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified likelihood.
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED :: GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED = GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Very unlikely.
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY :: GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY = GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood "VERY_UNLIKELY"

-- | Unlikely.
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Unlikely :: GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Unlikely = GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood "UNLIKELY"

-- | Possible.
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Possible :: GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Possible = GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood "POSSIBLE"

-- | Likely.
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Likely :: GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Likely = GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood "LIKELY"

-- | Very likely.
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY :: GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY = GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Unlikely,
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Possible,
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_Likely,
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
  #-}

-- | Specifies which feature is being tracked if the request contains more than one feature.
newtype GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature {fromGoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "FEATURE_UNSPECIFIED"

-- | Label detection. Detect objects, such as dog or flower.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_LABELDETECTION :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_LABELDETECTION = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "LABEL_DETECTION"

-- | Shot change detection.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "SHOT_CHANGE_DETECTION"

-- | Explicit content detection.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "EXPLICIT_CONTENT_DETECTION"

-- | Human face detection.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_FACEDETECTION :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_FACEDETECTION = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "FACE_DETECTION"

-- | Speech transcription.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "SPEECH_TRANSCRIPTION"

-- | OCR text detection and tracking.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_TEXTDETECTION :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_TEXTDETECTION = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "TEXT_DETECTION"

-- | Object detection and tracking.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_OBJECTTRACKING :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_OBJECTTRACKING = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "OBJECT_TRACKING"

-- | Logo detection, tracking, and recognition.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_LOGORECOGNITION :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_LOGORECOGNITION = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "LOGO_RECOGNITION"

-- | Person detection.
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_PERSONDETECTION :: GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_PERSONDETECTION = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature "PERSON_DETECTION"

{-# COMPLETE
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_LABELDETECTION,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_FACEDETECTION,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_TEXTDETECTION,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_OBJECTTRACKING,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_LOGORECOGNITION,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature_PERSONDETECTION,
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
  #-}

-- | Likelihood of the pornography content..
newtype GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood {fromGoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified likelihood.
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Very unlikely.
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood "VERY_UNLIKELY"

-- | Unlikely.
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood "UNLIKELY"

-- | Possible.
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Possible :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Possible = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood "POSSIBLE"

-- | Likely.
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Likely :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Likely = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood "LIKELY"

-- | Very likely.
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY :: GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely,
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Possible,
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_Likely,
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
  #-}

-- | Specifies which feature is being tracked if the request contains more than one feature.
newtype GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature {fromGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "FEATURE_UNSPECIFIED"

-- | Label detection. Detect objects, such as dog or flower.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_LABELDETECTION :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_LABELDETECTION = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "LABEL_DETECTION"

-- | Shot change detection.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "SHOT_CHANGE_DETECTION"

-- | Explicit content detection.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "EXPLICIT_CONTENT_DETECTION"

-- | Human face detection.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_FACEDETECTION :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_FACEDETECTION = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "FACE_DETECTION"

-- | Speech transcription.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "SPEECH_TRANSCRIPTION"

-- | OCR text detection and tracking.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_TEXTDETECTION :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_TEXTDETECTION = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "TEXT_DETECTION"

-- | Object detection and tracking.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "OBJECT_TRACKING"

-- | Logo detection, tracking, and recognition.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "LOGO_RECOGNITION"

-- | Person detection.
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_PERSONDETECTION :: GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_PERSONDETECTION = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature "PERSON_DETECTION"

{-# COMPLETE
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_LABELDETECTION,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_FACEDETECTION,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_TEXTDETECTION,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature_PERSONDETECTION,
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
  #-}

-- | Likelihood of the pornography content..
newtype GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood {fromGoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified likelihood.
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Very unlikely.
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood "VERY_UNLIKELY"

-- | Unlikely.
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood "UNLIKELY"

-- | Possible.
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Possible :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Possible = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood "POSSIBLE"

-- | Likely.
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Likely :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Likely = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood "LIKELY"

-- | Very likely.
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY :: GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely,
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Possible,
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_Likely,
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
  #-}

-- | Specifies which feature is being tracked if the request contains more than one feature.
newtype GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature {fromGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "FEATURE_UNSPECIFIED"

-- | Label detection. Detect objects, such as dog or flower.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_LABELDETECTION :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_LABELDETECTION = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "LABEL_DETECTION"

-- | Shot change detection.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "SHOT_CHANGE_DETECTION"

-- | Explicit content detection.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "EXPLICIT_CONTENT_DETECTION"

-- | Human face detection.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_FACEDETECTION :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_FACEDETECTION = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "FACE_DETECTION"

-- | Speech transcription.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "SPEECH_TRANSCRIPTION"

-- | OCR text detection and tracking.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_TEXTDETECTION :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_TEXTDETECTION = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "TEXT_DETECTION"

-- | Object detection and tracking.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "OBJECT_TRACKING"

-- | Logo detection, tracking, and recognition.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "LOGO_RECOGNITION"

-- | Person detection.
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_PERSONDETECTION :: GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_PERSONDETECTION = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature "PERSON_DETECTION"

{-# COMPLETE
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_LABELDETECTION,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_FACEDETECTION,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_TEXTDETECTION,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature_PERSONDETECTION,
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
  #-}

newtype GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem {fromGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_FEATUREUNSPECIFIED :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_FEATUREUNSPECIFIED = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "FEATURE_UNSPECIFIED"

-- | Label detection. Detect objects, such as dog or flower.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_LABELDETECTION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_LABELDETECTION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "LABEL_DETECTION"

-- | Shot change detection.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_SHOTCHANGEDETECTION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_SHOTCHANGEDETECTION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "SHOT_CHANGE_DETECTION"

-- | Explicit content detection.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_EXPLICITCONTENTDETECTION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_EXPLICITCONTENTDETECTION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "EXPLICIT_CONTENT_DETECTION"

-- | Human face detection.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_FACEDETECTION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_FACEDETECTION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "FACE_DETECTION"

-- | Speech transcription.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_SPEECHTRANSCRIPTION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_SPEECHTRANSCRIPTION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "SPEECH_TRANSCRIPTION"

-- | OCR text detection and tracking.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_TEXTDETECTION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_TEXTDETECTION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "TEXT_DETECTION"

-- | Object detection and tracking.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_OBJECTTRACKING :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_OBJECTTRACKING = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "OBJECT_TRACKING"

-- | Logo detection, tracking, and recognition.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_LOGORECOGNITION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_LOGORECOGNITION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "LOGO_RECOGNITION"

-- | Celebrity recognition.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_CELEBRITYRECOGNITION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_CELEBRITYRECOGNITION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "CELEBRITY_RECOGNITION"

-- | Person detection.
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_PERSONDETECTION :: GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
pattern GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_PERSONDETECTION = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem "PERSON_DETECTION"

{-# COMPLETE
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_FEATUREUNSPECIFIED,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_LABELDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_SHOTCHANGEDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_EXPLICITCONTENTDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_FACEDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_SPEECHTRANSCRIPTION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_TEXTDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_OBJECTTRACKING,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_LOGORECOGNITION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_CELEBRITYRECOGNITION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem_PERSONDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
  #-}

-- | Likelihood of the pornography content..
newtype GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood {fromGoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified likelihood.
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood "LIKELIHOOD_UNSPECIFIED"

-- | Very unlikely.
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood "VERY_UNLIKELY"

-- | Unlikely.
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood "UNLIKELY"

-- | Possible.
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Possible :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Possible = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood "POSSIBLE"

-- | Likely.
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Likely :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Likely = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood "LIKELY"

-- | Very likely.
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY :: GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
pattern GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood "VERY_LIKELY"

{-# COMPLETE
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_LIKELIHOODUNSPECIFIED,
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_VERYUNLIKELY,
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Unlikely,
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Possible,
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_Likely,
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood_VERYLIKELY,
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
  #-}

-- | What labels should be detected with LABEL_DETECTION, in addition to video-level labels or segment-level labels. If unspecified, defaults to @SHOT_MODE@.
newtype GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode = GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode {fromGoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_LABELDETECTIONMODEUNSPECIFIED :: GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
pattern GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_LABELDETECTIONMODEUNSPECIFIED = GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode "LABEL_DETECTION_MODE_UNSPECIFIED"

-- | Detect shot-level labels.
pattern GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_SHOTMODE :: GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
pattern GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_SHOTMODE = GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode "SHOT_MODE"

-- | Detect frame-level labels.
pattern GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_FRAMEMODE :: GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
pattern GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_FRAMEMODE = GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode "FRAME_MODE"

-- | Detect both shot-level and frame-level labels.
pattern GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_SHOTANDFRAMEMODE :: GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
pattern GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_SHOTANDFRAMEMODE = GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode "SHOT_AND_FRAME_MODE"

{-# COMPLETE
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_LABELDETECTIONMODEUNSPECIFIED,
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_SHOTMODE,
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_FRAMEMODE,
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode_SHOTANDFRAMEMODE,
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
  #-}

-- | Specifies which feature is being tracked if the request contains more than one feature.
newtype GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature {fromGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "FEATURE_UNSPECIFIED"

-- | Label detection. Detect objects, such as dog or flower.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_LABELDETECTION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_LABELDETECTION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "LABEL_DETECTION"

-- | Shot change detection.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "SHOT_CHANGE_DETECTION"

-- | Explicit content detection.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "EXPLICIT_CONTENT_DETECTION"

-- | Human face detection.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_FACEDETECTION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_FACEDETECTION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "FACE_DETECTION"

-- | Speech transcription.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "SPEECH_TRANSCRIPTION"

-- | OCR text detection and tracking.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_TEXTDETECTION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_TEXTDETECTION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "TEXT_DETECTION"

-- | Object detection and tracking.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "OBJECT_TRACKING"

-- | Logo detection, tracking, and recognition.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "LOGO_RECOGNITION"

-- | Celebrity recognition.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_CELEBRITYRECOGNITION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_CELEBRITYRECOGNITION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "CELEBRITY_RECOGNITION"

-- | Person detection.
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_PERSONDETECTION :: GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
pattern GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_PERSONDETECTION = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature "PERSON_DETECTION"

{-# COMPLETE
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_FEATUREUNSPECIFIED,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_LABELDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_SHOTCHANGEDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_EXPLICITCONTENTDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_FACEDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_SPEECHTRANSCRIPTION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_TEXTDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_OBJECTTRACKING,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_LOGORECOGNITION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_CELEBRITYRECOGNITION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature_PERSONDETECTION,
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
  #-}
