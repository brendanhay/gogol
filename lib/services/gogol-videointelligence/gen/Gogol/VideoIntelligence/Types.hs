{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.VideoIntelligence.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.VideoIntelligence.Types
    (
    -- * Configuration
      videoIntelligenceService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudVideointelligenceV1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1_AnnotateVideoProgress (..)
    , newGoogleCloudVideointelligenceV1_AnnotateVideoProgress

    -- ** GoogleCloudVideointelligenceV1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1_AnnotateVideoResponse (..)
    , newGoogleCloudVideointelligenceV1_AnnotateVideoResponse

    -- ** GoogleCloudVideointelligenceV1_DetectedAttribute
    , GoogleCloudVideointelligenceV1_DetectedAttribute (..)
    , newGoogleCloudVideointelligenceV1_DetectedAttribute

    -- ** GoogleCloudVideointelligenceV1_DetectedLandmark
    , GoogleCloudVideointelligenceV1_DetectedLandmark (..)
    , newGoogleCloudVideointelligenceV1_DetectedLandmark

    -- ** GoogleCloudVideointelligenceV1_Entity
    , GoogleCloudVideointelligenceV1_Entity (..)
    , newGoogleCloudVideointelligenceV1_Entity

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1_ExplicitContentAnnotation (..)
    , newGoogleCloudVideointelligenceV1_ExplicitContentAnnotation

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1_ExplicitContentFrame (..)
    , newGoogleCloudVideointelligenceV1_ExplicitContentFrame

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
    , GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1_FaceAnnotation
    , GoogleCloudVideointelligenceV1_FaceAnnotation (..)
    , newGoogleCloudVideointelligenceV1_FaceAnnotation

    -- ** GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1_FaceDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1_FaceDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1_FaceFrame
    , GoogleCloudVideointelligenceV1_FaceFrame (..)
    , newGoogleCloudVideointelligenceV1_FaceFrame

    -- ** GoogleCloudVideointelligenceV1_FaceSegment
    , GoogleCloudVideointelligenceV1_FaceSegment (..)
    , newGoogleCloudVideointelligenceV1_FaceSegment

    -- ** GoogleCloudVideointelligenceV1_LabelAnnotation
    , GoogleCloudVideointelligenceV1_LabelAnnotation (..)
    , newGoogleCloudVideointelligenceV1_LabelAnnotation

    -- ** GoogleCloudVideointelligenceV1_LabelFrame
    , GoogleCloudVideointelligenceV1_LabelFrame (..)
    , newGoogleCloudVideointelligenceV1_LabelFrame

    -- ** GoogleCloudVideointelligenceV1_LabelSegment
    , GoogleCloudVideointelligenceV1_LabelSegment (..)
    , newGoogleCloudVideointelligenceV1_LabelSegment

    -- ** GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation (..)
    , newGoogleCloudVideointelligenceV1_LogoRecognitionAnnotation

    -- ** GoogleCloudVideointelligenceV1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1_NormalizedBoundingBox (..)
    , newGoogleCloudVideointelligenceV1_NormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1_NormalizedBoundingPoly (..)
    , newGoogleCloudVideointelligenceV1_NormalizedBoundingPoly

    -- ** GoogleCloudVideointelligenceV1_NormalizedVertex
    , GoogleCloudVideointelligenceV1_NormalizedVertex (..)
    , newGoogleCloudVideointelligenceV1_NormalizedVertex

    -- ** GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation (..)
    , newGoogleCloudVideointelligenceV1_ObjectTrackingAnnotation

    -- ** GoogleCloudVideointelligenceV1_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1_ObjectTrackingFrame (..)
    , newGoogleCloudVideointelligenceV1_ObjectTrackingFrame

    -- ** GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1_PersonDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1_PersonDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative (..)
    , newGoogleCloudVideointelligenceV1_SpeechRecognitionAlternative

    -- ** GoogleCloudVideointelligenceV1_SpeechTranscription
    , GoogleCloudVideointelligenceV1_SpeechTranscription (..)
    , newGoogleCloudVideointelligenceV1_SpeechTranscription

    -- ** GoogleCloudVideointelligenceV1_TextAnnotation
    , GoogleCloudVideointelligenceV1_TextAnnotation (..)
    , newGoogleCloudVideointelligenceV1_TextAnnotation

    -- ** GoogleCloudVideointelligenceV1_TextFrame
    , GoogleCloudVideointelligenceV1_TextFrame (..)
    , newGoogleCloudVideointelligenceV1_TextFrame

    -- ** GoogleCloudVideointelligenceV1_TextSegment
    , GoogleCloudVideointelligenceV1_TextSegment (..)
    , newGoogleCloudVideointelligenceV1_TextSegment

    -- ** GoogleCloudVideointelligenceV1_TimestampedObject
    , GoogleCloudVideointelligenceV1_TimestampedObject (..)
    , newGoogleCloudVideointelligenceV1_TimestampedObject

    -- ** GoogleCloudVideointelligenceV1_Track
    , GoogleCloudVideointelligenceV1_Track (..)
    , newGoogleCloudVideointelligenceV1_Track

    -- ** GoogleCloudVideointelligenceV1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1_VideoAnnotationProgress (..)
    , newGoogleCloudVideointelligenceV1_VideoAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
    , GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature (..)

    -- ** GoogleCloudVideointelligenceV1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1_VideoAnnotationResults (..)
    , newGoogleCloudVideointelligenceV1_VideoAnnotationResults

    -- ** GoogleCloudVideointelligenceV1_VideoSegment
    , GoogleCloudVideointelligenceV1_VideoSegment (..)
    , newGoogleCloudVideointelligenceV1_VideoSegment

    -- ** GoogleCloudVideointelligenceV1_WordInfo
    , GoogleCloudVideointelligenceV1_WordInfo (..)
    , newGoogleCloudVideointelligenceV1_WordInfo

    -- ** GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress (..)
    , newGoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress

    -- ** GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse (..)
    , newGoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse

    -- ** GoogleCloudVideointelligenceV1beta2_DetectedAttribute
    , GoogleCloudVideointelligenceV1beta2_DetectedAttribute (..)
    , newGoogleCloudVideointelligenceV1beta2_DetectedAttribute

    -- ** GoogleCloudVideointelligenceV1beta2_DetectedLandmark
    , GoogleCloudVideointelligenceV1beta2_DetectedLandmark (..)
    , newGoogleCloudVideointelligenceV1beta2_DetectedLandmark

    -- ** GoogleCloudVideointelligenceV1beta2_Entity
    , GoogleCloudVideointelligenceV1beta2_Entity (..)
    , newGoogleCloudVideointelligenceV1beta2_Entity

    -- ** GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation (..)
    , newGoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame (..)
    , newGoogleCloudVideointelligenceV1beta2_ExplicitContentFrame

    -- ** GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
    , GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1beta2_FaceAnnotation
    , GoogleCloudVideointelligenceV1beta2_FaceAnnotation (..)
    , newGoogleCloudVideointelligenceV1beta2_FaceAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_FaceFrame
    , GoogleCloudVideointelligenceV1beta2_FaceFrame (..)
    , newGoogleCloudVideointelligenceV1beta2_FaceFrame

    -- ** GoogleCloudVideointelligenceV1beta2_FaceSegment
    , GoogleCloudVideointelligenceV1beta2_FaceSegment (..)
    , newGoogleCloudVideointelligenceV1beta2_FaceSegment

    -- ** GoogleCloudVideointelligenceV1beta2_LabelAnnotation
    , GoogleCloudVideointelligenceV1beta2_LabelAnnotation (..)
    , newGoogleCloudVideointelligenceV1beta2_LabelAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_LabelFrame
    , GoogleCloudVideointelligenceV1beta2_LabelFrame (..)
    , newGoogleCloudVideointelligenceV1beta2_LabelFrame

    -- ** GoogleCloudVideointelligenceV1beta2_LabelSegment
    , GoogleCloudVideointelligenceV1beta2_LabelSegment (..)
    , newGoogleCloudVideointelligenceV1beta2_LabelSegment

    -- ** GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation (..)
    , newGoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox (..)
    , newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly (..)
    , newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly

    -- ** GoogleCloudVideointelligenceV1beta2_NormalizedVertex
    , GoogleCloudVideointelligenceV1beta2_NormalizedVertex (..)
    , newGoogleCloudVideointelligenceV1beta2_NormalizedVertex

    -- ** GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation (..)
    , newGoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame (..)
    , newGoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame

    -- ** GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative (..)
    , newGoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative

    -- ** GoogleCloudVideointelligenceV1beta2_SpeechTranscription
    , GoogleCloudVideointelligenceV1beta2_SpeechTranscription (..)
    , newGoogleCloudVideointelligenceV1beta2_SpeechTranscription

    -- ** GoogleCloudVideointelligenceV1beta2_TextAnnotation
    , GoogleCloudVideointelligenceV1beta2_TextAnnotation (..)
    , newGoogleCloudVideointelligenceV1beta2_TextAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_TextFrame
    , GoogleCloudVideointelligenceV1beta2_TextFrame (..)
    , newGoogleCloudVideointelligenceV1beta2_TextFrame

    -- ** GoogleCloudVideointelligenceV1beta2_TextSegment
    , GoogleCloudVideointelligenceV1beta2_TextSegment (..)
    , newGoogleCloudVideointelligenceV1beta2_TextSegment

    -- ** GoogleCloudVideointelligenceV1beta2_TimestampedObject
    , GoogleCloudVideointelligenceV1beta2_TimestampedObject (..)
    , newGoogleCloudVideointelligenceV1beta2_TimestampedObject

    -- ** GoogleCloudVideointelligenceV1beta2_Track
    , GoogleCloudVideointelligenceV1beta2_Track (..)
    , newGoogleCloudVideointelligenceV1beta2_Track

    -- ** GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (..)
    , newGoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
    , GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature (..)

    -- ** GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (..)
    , newGoogleCloudVideointelligenceV1beta2_VideoAnnotationResults

    -- ** GoogleCloudVideointelligenceV1beta2_VideoSegment
    , GoogleCloudVideointelligenceV1beta2_VideoSegment (..)
    , newGoogleCloudVideointelligenceV1beta2_VideoSegment

    -- ** GoogleCloudVideointelligenceV1beta2_WordInfo
    , GoogleCloudVideointelligenceV1beta2_WordInfo (..)
    , newGoogleCloudVideointelligenceV1beta2_WordInfo

    -- ** GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress (..)
    , newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress

    -- ** GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse (..)
    , newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse

    -- ** GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
    , GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute (..)
    , newGoogleCloudVideointelligenceV1p1beta1_DetectedAttribute

    -- ** GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
    , GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark (..)
    , newGoogleCloudVideointelligenceV1p1beta1_DetectedLandmark

    -- ** GoogleCloudVideointelligenceV1p1beta1_Entity
    , GoogleCloudVideointelligenceV1p1beta1_Entity (..)
    , newGoogleCloudVideointelligenceV1p1beta1_Entity

    -- ** GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation (..)
    , newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation

    -- ** GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame (..)
    , newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame

    -- ** GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
    , GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation (..)
    , newGoogleCloudVideointelligenceV1p1beta1_FaceAnnotation

    -- ** GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1p1beta1_FaceFrame
    , GoogleCloudVideointelligenceV1p1beta1_FaceFrame (..)
    , newGoogleCloudVideointelligenceV1p1beta1_FaceFrame

    -- ** GoogleCloudVideointelligenceV1p1beta1_FaceSegment
    , GoogleCloudVideointelligenceV1p1beta1_FaceSegment (..)
    , newGoogleCloudVideointelligenceV1p1beta1_FaceSegment

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation (..)
    , newGoogleCloudVideointelligenceV1p1beta1_LabelAnnotation

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelFrame
    , GoogleCloudVideointelligenceV1p1beta1_LabelFrame (..)
    , newGoogleCloudVideointelligenceV1p1beta1_LabelFrame

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelSegment
    , GoogleCloudVideointelligenceV1p1beta1_LabelSegment (..)
    , newGoogleCloudVideointelligenceV1p1beta1_LabelSegment

    -- ** GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation

    -- ** GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox (..)
    , newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly (..)
    , newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly

    -- ** GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
    , GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex (..)
    , newGoogleCloudVideointelligenceV1p1beta1_NormalizedVertex

    -- ** GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation (..)
    , newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation

    -- ** GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame (..)
    , newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame

    -- ** GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative (..)
    , newGoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative

    -- ** GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
    , GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription (..)
    , newGoogleCloudVideointelligenceV1p1beta1_SpeechTranscription

    -- ** GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_TextAnnotation (..)
    , newGoogleCloudVideointelligenceV1p1beta1_TextAnnotation

    -- ** GoogleCloudVideointelligenceV1p1beta1_TextFrame
    , GoogleCloudVideointelligenceV1p1beta1_TextFrame (..)
    , newGoogleCloudVideointelligenceV1p1beta1_TextFrame

    -- ** GoogleCloudVideointelligenceV1p1beta1_TextSegment
    , GoogleCloudVideointelligenceV1p1beta1_TextSegment (..)
    , newGoogleCloudVideointelligenceV1p1beta1_TextSegment

    -- ** GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
    , GoogleCloudVideointelligenceV1p1beta1_TimestampedObject (..)
    , newGoogleCloudVideointelligenceV1p1beta1_TimestampedObject

    -- ** GoogleCloudVideointelligenceV1p1beta1_Track
    , GoogleCloudVideointelligenceV1p1beta1_Track (..)
    , newGoogleCloudVideointelligenceV1p1beta1_Track

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (..)
    , newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
    , GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature (..)

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (..)
    , newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoSegment
    , GoogleCloudVideointelligenceV1p1beta1_VideoSegment (..)
    , newGoogleCloudVideointelligenceV1p1beta1_VideoSegment

    -- ** GoogleCloudVideointelligenceV1p1beta1_WordInfo
    , GoogleCloudVideointelligenceV1p1beta1_WordInfo (..)
    , newGoogleCloudVideointelligenceV1p1beta1_WordInfo

    -- ** GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress (..)
    , newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress

    -- ** GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse (..)
    , newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse

    -- ** GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
    , GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute (..)
    , newGoogleCloudVideointelligenceV1p2beta1_DetectedAttribute

    -- ** GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
    , GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark (..)
    , newGoogleCloudVideointelligenceV1p2beta1_DetectedLandmark

    -- ** GoogleCloudVideointelligenceV1p2beta1_Entity
    , GoogleCloudVideointelligenceV1p2beta1_Entity (..)
    , newGoogleCloudVideointelligenceV1p2beta1_Entity

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation (..)
    , newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame (..)
    , newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation (..)
    , newGoogleCloudVideointelligenceV1p2beta1_FaceAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_FaceFrame
    , GoogleCloudVideointelligenceV1p2beta1_FaceFrame (..)
    , newGoogleCloudVideointelligenceV1p2beta1_FaceFrame

    -- ** GoogleCloudVideointelligenceV1p2beta1_FaceSegment
    , GoogleCloudVideointelligenceV1p2beta1_FaceSegment (..)
    , newGoogleCloudVideointelligenceV1p2beta1_FaceSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation (..)
    , newGoogleCloudVideointelligenceV1p2beta1_LabelAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelFrame
    , GoogleCloudVideointelligenceV1p2beta1_LabelFrame (..)
    , newGoogleCloudVideointelligenceV1p2beta1_LabelFrame

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelSegment
    , GoogleCloudVideointelligenceV1p2beta1_LabelSegment (..)
    , newGoogleCloudVideointelligenceV1p2beta1_LabelSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (..)
    , newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly (..)
    , newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex (..)
    , newGoogleCloudVideointelligenceV1p2beta1_NormalizedVertex

    -- ** GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation (..)
    , newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame (..)
    , newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame

    -- ** GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative (..)
    , newGoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative

    -- ** GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
    , GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription (..)
    , newGoogleCloudVideointelligenceV1p2beta1_SpeechTranscription

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_TextAnnotation (..)
    , newGoogleCloudVideointelligenceV1p2beta1_TextAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextFrame
    , GoogleCloudVideointelligenceV1p2beta1_TextFrame (..)
    , newGoogleCloudVideointelligenceV1p2beta1_TextFrame

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextSegment
    , GoogleCloudVideointelligenceV1p2beta1_TextSegment (..)
    , newGoogleCloudVideointelligenceV1p2beta1_TextSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
    , GoogleCloudVideointelligenceV1p2beta1_TimestampedObject (..)
    , newGoogleCloudVideointelligenceV1p2beta1_TimestampedObject

    -- ** GoogleCloudVideointelligenceV1p2beta1_Track
    , GoogleCloudVideointelligenceV1p2beta1_Track (..)
    , newGoogleCloudVideointelligenceV1p2beta1_Track

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (..)
    , newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
    , GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature (..)

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (..)
    , newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoSegment
    , GoogleCloudVideointelligenceV1p2beta1_VideoSegment (..)
    , newGoogleCloudVideointelligenceV1p2beta1_VideoSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_WordInfo
    , GoogleCloudVideointelligenceV1p2beta1_WordInfo (..)
    , newGoogleCloudVideointelligenceV1p2beta1_WordInfo

    -- ** GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress (..)
    , newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress

    -- ** GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    , GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest (..)
    , newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest

    -- ** GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem
    , GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem (..)

    -- ** GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse (..)
    , newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse

    -- ** GoogleCloudVideointelligenceV1p3beta1_Celebrity
    , GoogleCloudVideointelligenceV1p3beta1_Celebrity (..)
    , newGoogleCloudVideointelligenceV1p3beta1_Celebrity

    -- ** GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
    , GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack (..)
    , newGoogleCloudVideointelligenceV1p3beta1_CelebrityTrack

    -- ** GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
    , GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute (..)
    , newGoogleCloudVideointelligenceV1p3beta1_DetectedAttribute

    -- ** GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
    , GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark (..)
    , newGoogleCloudVideointelligenceV1p3beta1_DetectedLandmark

    -- ** GoogleCloudVideointelligenceV1p3beta1_Entity
    , GoogleCloudVideointelligenceV1p3beta1_Entity (..)
    , newGoogleCloudVideointelligenceV1p3beta1_Entity

    -- ** GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig (..)
    , newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig

    -- ** GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame (..)
    , newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame

    -- ** GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
    , GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_FaceAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig (..)
    , newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceFrame
    , GoogleCloudVideointelligenceV1p3beta1_FaceFrame (..)
    , newGoogleCloudVideointelligenceV1p3beta1_FaceFrame

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceSegment
    , GoogleCloudVideointelligenceV1p3beta1_FaceSegment (..)
    , newGoogleCloudVideointelligenceV1p3beta1_FaceSegment

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_LabelAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig (..)
    , newGoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
    , GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode (..)

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelFrame
    , GoogleCloudVideointelligenceV1p3beta1_LabelFrame (..)
    , newGoogleCloudVideointelligenceV1p3beta1_LabelFrame

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelSegment
    , GoogleCloudVideointelligenceV1p3beta1_LabelSegment (..)
    , newGoogleCloudVideointelligenceV1p3beta1_LabelSegment

    -- ** GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox (..)
    , newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly (..)
    , newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly

    -- ** GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
    , GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex (..)
    , newGoogleCloudVideointelligenceV1p3beta1_NormalizedVertex

    -- ** GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
    , GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig (..)
    , newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig

    -- ** GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame (..)
    , newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame

    -- ** GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig (..)
    , newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig

    -- ** GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
    , GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity (..)
    , newGoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity

    -- ** GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig (..)
    , newGoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig

    -- ** GoogleCloudVideointelligenceV1p3beta1_SpeechContext
    , GoogleCloudVideointelligenceV1p3beta1_SpeechContext (..)
    , newGoogleCloudVideointelligenceV1p3beta1_SpeechContext

    -- ** GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative (..)
    , newGoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative

    -- ** GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
    , GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription (..)
    , newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscription

    -- ** GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
    , GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (..)
    , newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig

    -- ** GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse (..)
    , newGoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse

    -- ** GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
    , GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults (..)
    , newGoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_TextAnnotation (..)
    , newGoogleCloudVideointelligenceV1p3beta1_TextAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig (..)
    , newGoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig

    -- ** GoogleCloudVideointelligenceV1p3beta1_TextFrame
    , GoogleCloudVideointelligenceV1p3beta1_TextFrame (..)
    , newGoogleCloudVideointelligenceV1p3beta1_TextFrame

    -- ** GoogleCloudVideointelligenceV1p3beta1_TextSegment
    , GoogleCloudVideointelligenceV1p3beta1_TextSegment (..)
    , newGoogleCloudVideointelligenceV1p3beta1_TextSegment

    -- ** GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
    , GoogleCloudVideointelligenceV1p3beta1_TimestampedObject (..)
    , newGoogleCloudVideointelligenceV1p3beta1_TimestampedObject

    -- ** GoogleCloudVideointelligenceV1p3beta1_Track
    , GoogleCloudVideointelligenceV1p3beta1_Track (..)
    , newGoogleCloudVideointelligenceV1p3beta1_Track

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress (..)
    , newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
    , GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature (..)

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults (..)
    , newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoContext
    , GoogleCloudVideointelligenceV1p3beta1_VideoContext (..)
    , newGoogleCloudVideointelligenceV1p3beta1_VideoContext

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoSegment
    , GoogleCloudVideointelligenceV1p3beta1_VideoSegment (..)
    , newGoogleCloudVideointelligenceV1p3beta1_VideoSegment

    -- ** GoogleCloudVideointelligenceV1p3beta1_WordInfo
    , GoogleCloudVideointelligenceV1p3beta1_WordInfo (..)
    , newGoogleCloudVideointelligenceV1p3beta1_WordInfo

    -- ** GoogleLongrunning_Operation
    , GoogleLongrunning_Operation (..)
    , newGoogleLongrunning_Operation

    -- ** GoogleLongrunning_Operation_Metadata
    , GoogleLongrunning_Operation_Metadata (..)
    , newGoogleLongrunning_Operation_Metadata

    -- ** GoogleLongrunning_Operation_Response
    , GoogleLongrunning_Operation_Response (..)
    , newGoogleLongrunning_Operation_Response

    -- ** GoogleRpc_Status
    , GoogleRpc_Status (..)
    , newGoogleRpc_Status

    -- ** GoogleRpc_Status_DetailsItem
    , GoogleRpc_Status_DetailsItem (..)
    , newGoogleRpc_Status_DetailsItem
    ) where

import qualified Gogol.Prelude as Core
import Gogol.VideoIntelligence.Internal.Product
import Gogol.VideoIntelligence.Internal.Sum

-- | Default request referring to version @v1p3beta1@ of the Cloud Video Intelligence API. This contains the host and root path used as a starting point for constructing service requests.
videoIntelligenceService :: Core.ServiceConfig
videoIntelligenceService
  = Core.defaultService
      (Core.ServiceId "videointelligence:v1p3beta1")
      "videointelligence.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
