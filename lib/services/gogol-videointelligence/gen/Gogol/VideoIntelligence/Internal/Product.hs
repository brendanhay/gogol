{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.VideoIntelligence.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.VideoIntelligence.Internal.Product
  ( -- * GoogleCloudVideointelligenceV1_AnnotateVideoProgress
    GoogleCloudVideointelligenceV1_AnnotateVideoProgress (..),
    newGoogleCloudVideointelligenceV1_AnnotateVideoProgress,

    -- * GoogleCloudVideointelligenceV1_AnnotateVideoResponse
    GoogleCloudVideointelligenceV1_AnnotateVideoResponse (..),
    newGoogleCloudVideointelligenceV1_AnnotateVideoResponse,

    -- * GoogleCloudVideointelligenceV1_DetectedAttribute
    GoogleCloudVideointelligenceV1_DetectedAttribute (..),
    newGoogleCloudVideointelligenceV1_DetectedAttribute,

    -- * GoogleCloudVideointelligenceV1_DetectedLandmark
    GoogleCloudVideointelligenceV1_DetectedLandmark (..),
    newGoogleCloudVideointelligenceV1_DetectedLandmark,

    -- * GoogleCloudVideointelligenceV1_Entity
    GoogleCloudVideointelligenceV1_Entity (..),
    newGoogleCloudVideointelligenceV1_Entity,

    -- * GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
    GoogleCloudVideointelligenceV1_ExplicitContentAnnotation (..),
    newGoogleCloudVideointelligenceV1_ExplicitContentAnnotation,

    -- * GoogleCloudVideointelligenceV1_ExplicitContentFrame
    GoogleCloudVideointelligenceV1_ExplicitContentFrame (..),
    newGoogleCloudVideointelligenceV1_ExplicitContentFrame,

    -- * GoogleCloudVideointelligenceV1_FaceAnnotation
    GoogleCloudVideointelligenceV1_FaceAnnotation (..),
    newGoogleCloudVideointelligenceV1_FaceAnnotation,

    -- * GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
    GoogleCloudVideointelligenceV1_FaceDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1_FaceDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1_FaceFrame
    GoogleCloudVideointelligenceV1_FaceFrame (..),
    newGoogleCloudVideointelligenceV1_FaceFrame,

    -- * GoogleCloudVideointelligenceV1_FaceSegment
    GoogleCloudVideointelligenceV1_FaceSegment (..),
    newGoogleCloudVideointelligenceV1_FaceSegment,

    -- * GoogleCloudVideointelligenceV1_LabelAnnotation
    GoogleCloudVideointelligenceV1_LabelAnnotation (..),
    newGoogleCloudVideointelligenceV1_LabelAnnotation,

    -- * GoogleCloudVideointelligenceV1_LabelFrame
    GoogleCloudVideointelligenceV1_LabelFrame (..),
    newGoogleCloudVideointelligenceV1_LabelFrame,

    -- * GoogleCloudVideointelligenceV1_LabelSegment
    GoogleCloudVideointelligenceV1_LabelSegment (..),
    newGoogleCloudVideointelligenceV1_LabelSegment,

    -- * GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
    GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation (..),
    newGoogleCloudVideointelligenceV1_LogoRecognitionAnnotation,

    -- * GoogleCloudVideointelligenceV1_NormalizedBoundingBox
    GoogleCloudVideointelligenceV1_NormalizedBoundingBox (..),
    newGoogleCloudVideointelligenceV1_NormalizedBoundingBox,

    -- * GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
    GoogleCloudVideointelligenceV1_NormalizedBoundingPoly (..),
    newGoogleCloudVideointelligenceV1_NormalizedBoundingPoly,

    -- * GoogleCloudVideointelligenceV1_NormalizedVertex
    GoogleCloudVideointelligenceV1_NormalizedVertex (..),
    newGoogleCloudVideointelligenceV1_NormalizedVertex,

    -- * GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
    GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation (..),
    newGoogleCloudVideointelligenceV1_ObjectTrackingAnnotation,

    -- * GoogleCloudVideointelligenceV1_ObjectTrackingFrame
    GoogleCloudVideointelligenceV1_ObjectTrackingFrame (..),
    newGoogleCloudVideointelligenceV1_ObjectTrackingFrame,

    -- * GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
    GoogleCloudVideointelligenceV1_PersonDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1_PersonDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
    GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative (..),
    newGoogleCloudVideointelligenceV1_SpeechRecognitionAlternative,

    -- * GoogleCloudVideointelligenceV1_SpeechTranscription
    GoogleCloudVideointelligenceV1_SpeechTranscription (..),
    newGoogleCloudVideointelligenceV1_SpeechTranscription,

    -- * GoogleCloudVideointelligenceV1_TextAnnotation
    GoogleCloudVideointelligenceV1_TextAnnotation (..),
    newGoogleCloudVideointelligenceV1_TextAnnotation,

    -- * GoogleCloudVideointelligenceV1_TextFrame
    GoogleCloudVideointelligenceV1_TextFrame (..),
    newGoogleCloudVideointelligenceV1_TextFrame,

    -- * GoogleCloudVideointelligenceV1_TextSegment
    GoogleCloudVideointelligenceV1_TextSegment (..),
    newGoogleCloudVideointelligenceV1_TextSegment,

    -- * GoogleCloudVideointelligenceV1_TimestampedObject
    GoogleCloudVideointelligenceV1_TimestampedObject (..),
    newGoogleCloudVideointelligenceV1_TimestampedObject,

    -- * GoogleCloudVideointelligenceV1_Track
    GoogleCloudVideointelligenceV1_Track (..),
    newGoogleCloudVideointelligenceV1_Track,

    -- * GoogleCloudVideointelligenceV1_VideoAnnotationProgress
    GoogleCloudVideointelligenceV1_VideoAnnotationProgress (..),
    newGoogleCloudVideointelligenceV1_VideoAnnotationProgress,

    -- * GoogleCloudVideointelligenceV1_VideoAnnotationResults
    GoogleCloudVideointelligenceV1_VideoAnnotationResults (..),
    newGoogleCloudVideointelligenceV1_VideoAnnotationResults,

    -- * GoogleCloudVideointelligenceV1_VideoSegment
    GoogleCloudVideointelligenceV1_VideoSegment (..),
    newGoogleCloudVideointelligenceV1_VideoSegment,

    -- * GoogleCloudVideointelligenceV1_WordInfo
    GoogleCloudVideointelligenceV1_WordInfo (..),
    newGoogleCloudVideointelligenceV1_WordInfo,

    -- * GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress (..),
    newGoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress,

    -- * GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse (..),
    newGoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse,

    -- * GoogleCloudVideointelligenceV1beta2_DetectedAttribute
    GoogleCloudVideointelligenceV1beta2_DetectedAttribute (..),
    newGoogleCloudVideointelligenceV1beta2_DetectedAttribute,

    -- * GoogleCloudVideointelligenceV1beta2_DetectedLandmark
    GoogleCloudVideointelligenceV1beta2_DetectedLandmark (..),
    newGoogleCloudVideointelligenceV1beta2_DetectedLandmark,

    -- * GoogleCloudVideointelligenceV1beta2_Entity
    GoogleCloudVideointelligenceV1beta2_Entity (..),
    newGoogleCloudVideointelligenceV1beta2_Entity,

    -- * GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
    GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation (..),
    newGoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation,

    -- * GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
    GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame (..),
    newGoogleCloudVideointelligenceV1beta2_ExplicitContentFrame,

    -- * GoogleCloudVideointelligenceV1beta2_FaceAnnotation
    GoogleCloudVideointelligenceV1beta2_FaceAnnotation (..),
    newGoogleCloudVideointelligenceV1beta2_FaceAnnotation,

    -- * GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
    GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1beta2_FaceFrame
    GoogleCloudVideointelligenceV1beta2_FaceFrame (..),
    newGoogleCloudVideointelligenceV1beta2_FaceFrame,

    -- * GoogleCloudVideointelligenceV1beta2_FaceSegment
    GoogleCloudVideointelligenceV1beta2_FaceSegment (..),
    newGoogleCloudVideointelligenceV1beta2_FaceSegment,

    -- * GoogleCloudVideointelligenceV1beta2_LabelAnnotation
    GoogleCloudVideointelligenceV1beta2_LabelAnnotation (..),
    newGoogleCloudVideointelligenceV1beta2_LabelAnnotation,

    -- * GoogleCloudVideointelligenceV1beta2_LabelFrame
    GoogleCloudVideointelligenceV1beta2_LabelFrame (..),
    newGoogleCloudVideointelligenceV1beta2_LabelFrame,

    -- * GoogleCloudVideointelligenceV1beta2_LabelSegment
    GoogleCloudVideointelligenceV1beta2_LabelSegment (..),
    newGoogleCloudVideointelligenceV1beta2_LabelSegment,

    -- * GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
    GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation (..),
    newGoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation,

    -- * GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox (..),
    newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox,

    -- * GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly (..),
    newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly,

    -- * GoogleCloudVideointelligenceV1beta2_NormalizedVertex
    GoogleCloudVideointelligenceV1beta2_NormalizedVertex (..),
    newGoogleCloudVideointelligenceV1beta2_NormalizedVertex,

    -- * GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation (..),
    newGoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation,

    -- * GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame (..),
    newGoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame,

    -- * GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
    GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative (..),
    newGoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative,

    -- * GoogleCloudVideointelligenceV1beta2_SpeechTranscription
    GoogleCloudVideointelligenceV1beta2_SpeechTranscription (..),
    newGoogleCloudVideointelligenceV1beta2_SpeechTranscription,

    -- * GoogleCloudVideointelligenceV1beta2_TextAnnotation
    GoogleCloudVideointelligenceV1beta2_TextAnnotation (..),
    newGoogleCloudVideointelligenceV1beta2_TextAnnotation,

    -- * GoogleCloudVideointelligenceV1beta2_TextFrame
    GoogleCloudVideointelligenceV1beta2_TextFrame (..),
    newGoogleCloudVideointelligenceV1beta2_TextFrame,

    -- * GoogleCloudVideointelligenceV1beta2_TextSegment
    GoogleCloudVideointelligenceV1beta2_TextSegment (..),
    newGoogleCloudVideointelligenceV1beta2_TextSegment,

    -- * GoogleCloudVideointelligenceV1beta2_TimestampedObject
    GoogleCloudVideointelligenceV1beta2_TimestampedObject (..),
    newGoogleCloudVideointelligenceV1beta2_TimestampedObject,

    -- * GoogleCloudVideointelligenceV1beta2_Track
    GoogleCloudVideointelligenceV1beta2_Track (..),
    newGoogleCloudVideointelligenceV1beta2_Track,

    -- * GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress (..),
    newGoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress,

    -- * GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults (..),
    newGoogleCloudVideointelligenceV1beta2_VideoAnnotationResults,

    -- * GoogleCloudVideointelligenceV1beta2_VideoSegment
    GoogleCloudVideointelligenceV1beta2_VideoSegment (..),
    newGoogleCloudVideointelligenceV1beta2_VideoSegment,

    -- * GoogleCloudVideointelligenceV1beta2_WordInfo
    GoogleCloudVideointelligenceV1beta2_WordInfo (..),
    newGoogleCloudVideointelligenceV1beta2_WordInfo,

    -- * GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress (..),
    newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress,

    -- * GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse (..),
    newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse,

    -- * GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
    GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute (..),
    newGoogleCloudVideointelligenceV1p1beta1_DetectedAttribute,

    -- * GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
    GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark (..),
    newGoogleCloudVideointelligenceV1p1beta1_DetectedLandmark,

    -- * GoogleCloudVideointelligenceV1p1beta1_Entity
    GoogleCloudVideointelligenceV1p1beta1_Entity (..),
    newGoogleCloudVideointelligenceV1p1beta1_Entity,

    -- * GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation (..),
    newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation,

    -- * GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame (..),
    newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame,

    -- * GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
    GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation (..),
    newGoogleCloudVideointelligenceV1p1beta1_FaceAnnotation,

    -- * GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
    GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1p1beta1_FaceFrame
    GoogleCloudVideointelligenceV1p1beta1_FaceFrame (..),
    newGoogleCloudVideointelligenceV1p1beta1_FaceFrame,

    -- * GoogleCloudVideointelligenceV1p1beta1_FaceSegment
    GoogleCloudVideointelligenceV1p1beta1_FaceSegment (..),
    newGoogleCloudVideointelligenceV1p1beta1_FaceSegment,

    -- * GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
    GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation (..),
    newGoogleCloudVideointelligenceV1p1beta1_LabelAnnotation,

    -- * GoogleCloudVideointelligenceV1p1beta1_LabelFrame
    GoogleCloudVideointelligenceV1p1beta1_LabelFrame (..),
    newGoogleCloudVideointelligenceV1p1beta1_LabelFrame,

    -- * GoogleCloudVideointelligenceV1p1beta1_LabelSegment
    GoogleCloudVideointelligenceV1p1beta1_LabelSegment (..),
    newGoogleCloudVideointelligenceV1p1beta1_LabelSegment,

    -- * GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
    GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation (..),
    newGoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation,

    -- * GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox (..),
    newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox,

    -- * GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly (..),
    newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly,

    -- * GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
    GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex (..),
    newGoogleCloudVideointelligenceV1p1beta1_NormalizedVertex,

    -- * GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation (..),
    newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation,

    -- * GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame (..),
    newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame,

    -- * GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
    GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
    GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative (..),
    newGoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative,

    -- * GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
    GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription (..),
    newGoogleCloudVideointelligenceV1p1beta1_SpeechTranscription,

    -- * GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
    GoogleCloudVideointelligenceV1p1beta1_TextAnnotation (..),
    newGoogleCloudVideointelligenceV1p1beta1_TextAnnotation,

    -- * GoogleCloudVideointelligenceV1p1beta1_TextFrame
    GoogleCloudVideointelligenceV1p1beta1_TextFrame (..),
    newGoogleCloudVideointelligenceV1p1beta1_TextFrame,

    -- * GoogleCloudVideointelligenceV1p1beta1_TextSegment
    GoogleCloudVideointelligenceV1p1beta1_TextSegment (..),
    newGoogleCloudVideointelligenceV1p1beta1_TextSegment,

    -- * GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
    GoogleCloudVideointelligenceV1p1beta1_TimestampedObject (..),
    newGoogleCloudVideointelligenceV1p1beta1_TimestampedObject,

    -- * GoogleCloudVideointelligenceV1p1beta1_Track
    GoogleCloudVideointelligenceV1p1beta1_Track (..),
    newGoogleCloudVideointelligenceV1p1beta1_Track,

    -- * GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress (..),
    newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress,

    -- * GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults (..),
    newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults,

    -- * GoogleCloudVideointelligenceV1p1beta1_VideoSegment
    GoogleCloudVideointelligenceV1p1beta1_VideoSegment (..),
    newGoogleCloudVideointelligenceV1p1beta1_VideoSegment,

    -- * GoogleCloudVideointelligenceV1p1beta1_WordInfo
    GoogleCloudVideointelligenceV1p1beta1_WordInfo (..),
    newGoogleCloudVideointelligenceV1p1beta1_WordInfo,

    -- * GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress (..),
    newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress,

    -- * GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse (..),
    newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse,

    -- * GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
    GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute (..),
    newGoogleCloudVideointelligenceV1p2beta1_DetectedAttribute,

    -- * GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
    GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark (..),
    newGoogleCloudVideointelligenceV1p2beta1_DetectedLandmark,

    -- * GoogleCloudVideointelligenceV1p2beta1_Entity
    GoogleCloudVideointelligenceV1p2beta1_Entity (..),
    newGoogleCloudVideointelligenceV1p2beta1_Entity,

    -- * GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation (..),
    newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation,

    -- * GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame (..),
    newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame,

    -- * GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
    GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation (..),
    newGoogleCloudVideointelligenceV1p2beta1_FaceAnnotation,

    -- * GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
    GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1p2beta1_FaceFrame
    GoogleCloudVideointelligenceV1p2beta1_FaceFrame (..),
    newGoogleCloudVideointelligenceV1p2beta1_FaceFrame,

    -- * GoogleCloudVideointelligenceV1p2beta1_FaceSegment
    GoogleCloudVideointelligenceV1p2beta1_FaceSegment (..),
    newGoogleCloudVideointelligenceV1p2beta1_FaceSegment,

    -- * GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
    GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation (..),
    newGoogleCloudVideointelligenceV1p2beta1_LabelAnnotation,

    -- * GoogleCloudVideointelligenceV1p2beta1_LabelFrame
    GoogleCloudVideointelligenceV1p2beta1_LabelFrame (..),
    newGoogleCloudVideointelligenceV1p2beta1_LabelFrame,

    -- * GoogleCloudVideointelligenceV1p2beta1_LabelSegment
    GoogleCloudVideointelligenceV1p2beta1_LabelSegment (..),
    newGoogleCloudVideointelligenceV1p2beta1_LabelSegment,

    -- * GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
    GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation (..),
    newGoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation,

    -- * GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox (..),
    newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox,

    -- * GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly (..),
    newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly,

    -- * GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
    GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex (..),
    newGoogleCloudVideointelligenceV1p2beta1_NormalizedVertex,

    -- * GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation (..),
    newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation,

    -- * GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame (..),
    newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame,

    -- * GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
    GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative (..),
    newGoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative,

    -- * GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
    GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription (..),
    newGoogleCloudVideointelligenceV1p2beta1_SpeechTranscription,

    -- * GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
    GoogleCloudVideointelligenceV1p2beta1_TextAnnotation (..),
    newGoogleCloudVideointelligenceV1p2beta1_TextAnnotation,

    -- * GoogleCloudVideointelligenceV1p2beta1_TextFrame
    GoogleCloudVideointelligenceV1p2beta1_TextFrame (..),
    newGoogleCloudVideointelligenceV1p2beta1_TextFrame,

    -- * GoogleCloudVideointelligenceV1p2beta1_TextSegment
    GoogleCloudVideointelligenceV1p2beta1_TextSegment (..),
    newGoogleCloudVideointelligenceV1p2beta1_TextSegment,

    -- * GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
    GoogleCloudVideointelligenceV1p2beta1_TimestampedObject (..),
    newGoogleCloudVideointelligenceV1p2beta1_TimestampedObject,

    -- * GoogleCloudVideointelligenceV1p2beta1_Track
    GoogleCloudVideointelligenceV1p2beta1_Track (..),
    newGoogleCloudVideointelligenceV1p2beta1_Track,

    -- * GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress (..),
    newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress,

    -- * GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults (..),
    newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults,

    -- * GoogleCloudVideointelligenceV1p2beta1_VideoSegment
    GoogleCloudVideointelligenceV1p2beta1_VideoSegment (..),
    newGoogleCloudVideointelligenceV1p2beta1_VideoSegment,

    -- * GoogleCloudVideointelligenceV1p2beta1_WordInfo
    GoogleCloudVideointelligenceV1p2beta1_WordInfo (..),
    newGoogleCloudVideointelligenceV1p2beta1_WordInfo,

    -- * GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress (..),
    newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress,

    -- * GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest (..),
    newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest,

    -- * GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse (..),
    newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse,

    -- * GoogleCloudVideointelligenceV1p3beta1_Celebrity
    GoogleCloudVideointelligenceV1p3beta1_Celebrity (..),
    newGoogleCloudVideointelligenceV1p3beta1_Celebrity,

    -- * GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
    GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
    GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack (..),
    newGoogleCloudVideointelligenceV1p3beta1_CelebrityTrack,

    -- * GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
    GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute (..),
    newGoogleCloudVideointelligenceV1p3beta1_DetectedAttribute,

    -- * GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
    GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark (..),
    newGoogleCloudVideointelligenceV1p3beta1_DetectedLandmark,

    -- * GoogleCloudVideointelligenceV1p3beta1_Entity
    GoogleCloudVideointelligenceV1p3beta1_Entity (..),
    newGoogleCloudVideointelligenceV1p3beta1_Entity,

    -- * GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig (..),
    newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig,

    -- * GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame (..),
    newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame,

    -- * GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
    GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_FaceAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig (..),
    newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig,

    -- * GoogleCloudVideointelligenceV1p3beta1_FaceFrame
    GoogleCloudVideointelligenceV1p3beta1_FaceFrame (..),
    newGoogleCloudVideointelligenceV1p3beta1_FaceFrame,

    -- * GoogleCloudVideointelligenceV1p3beta1_FaceSegment
    GoogleCloudVideointelligenceV1p3beta1_FaceSegment (..),
    newGoogleCloudVideointelligenceV1p3beta1_FaceSegment,

    -- * GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
    GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_LabelAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
    GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig (..),
    newGoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig,

    -- * GoogleCloudVideointelligenceV1p3beta1_LabelFrame
    GoogleCloudVideointelligenceV1p3beta1_LabelFrame (..),
    newGoogleCloudVideointelligenceV1p3beta1_LabelFrame,

    -- * GoogleCloudVideointelligenceV1p3beta1_LabelSegment
    GoogleCloudVideointelligenceV1p3beta1_LabelSegment (..),
    newGoogleCloudVideointelligenceV1p3beta1_LabelSegment,

    -- * GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
    GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox (..),
    newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox,

    -- * GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly (..),
    newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly,

    -- * GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
    GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex (..),
    newGoogleCloudVideointelligenceV1p3beta1_NormalizedVertex,

    -- * GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig (..),
    newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig,

    -- * GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame (..),
    newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame,

    -- * GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig (..),
    newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig,

    -- * GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
    GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity (..),
    newGoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity,

    -- * GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
    GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig (..),
    newGoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig,

    -- * GoogleCloudVideointelligenceV1p3beta1_SpeechContext
    GoogleCloudVideointelligenceV1p3beta1_SpeechContext (..),
    newGoogleCloudVideointelligenceV1p3beta1_SpeechContext,

    -- * GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
    GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative (..),
    newGoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative,

    -- * GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription (..),
    newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscription,

    -- * GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig (..),
    newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig,

    -- * GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
    GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse (..),
    newGoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse,

    -- * GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
    GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults (..),
    newGoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults,

    -- * GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
    GoogleCloudVideointelligenceV1p3beta1_TextAnnotation (..),
    newGoogleCloudVideointelligenceV1p3beta1_TextAnnotation,

    -- * GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
    GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig (..),
    newGoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig,

    -- * GoogleCloudVideointelligenceV1p3beta1_TextFrame
    GoogleCloudVideointelligenceV1p3beta1_TextFrame (..),
    newGoogleCloudVideointelligenceV1p3beta1_TextFrame,

    -- * GoogleCloudVideointelligenceV1p3beta1_TextSegment
    GoogleCloudVideointelligenceV1p3beta1_TextSegment (..),
    newGoogleCloudVideointelligenceV1p3beta1_TextSegment,

    -- * GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
    GoogleCloudVideointelligenceV1p3beta1_TimestampedObject (..),
    newGoogleCloudVideointelligenceV1p3beta1_TimestampedObject,

    -- * GoogleCloudVideointelligenceV1p3beta1_Track
    GoogleCloudVideointelligenceV1p3beta1_Track (..),
    newGoogleCloudVideointelligenceV1p3beta1_Track,

    -- * GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress (..),
    newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress,

    -- * GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults (..),
    newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults,

    -- * GoogleCloudVideointelligenceV1p3beta1_VideoContext
    GoogleCloudVideointelligenceV1p3beta1_VideoContext (..),
    newGoogleCloudVideointelligenceV1p3beta1_VideoContext,

    -- * GoogleCloudVideointelligenceV1p3beta1_VideoSegment
    GoogleCloudVideointelligenceV1p3beta1_VideoSegment (..),
    newGoogleCloudVideointelligenceV1p3beta1_VideoSegment,

    -- * GoogleCloudVideointelligenceV1p3beta1_WordInfo
    GoogleCloudVideointelligenceV1p3beta1_WordInfo (..),
    newGoogleCloudVideointelligenceV1p3beta1_WordInfo,

    -- * GoogleLongrunning_Operation
    GoogleLongrunning_Operation (..),
    newGoogleLongrunning_Operation,

    -- * GoogleLongrunning_Operation_Metadata
    GoogleLongrunning_Operation_Metadata (..),
    newGoogleLongrunning_Operation_Metadata,

    -- * GoogleLongrunning_Operation_Response
    GoogleLongrunning_Operation_Response (..),
    newGoogleLongrunning_Operation_Response,

    -- * GoogleRpc_Status
    GoogleRpc_Status (..),
    newGoogleRpc_Status,

    -- * GoogleRpc_Status_DetailsItem
    GoogleRpc_Status_DetailsItem (..),
    newGoogleRpc_Status_DetailsItem,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.VideoIntelligence.Internal.Sum

-- | Video annotation progress. Included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1_AnnotateVideoProgress = GoogleCloudVideointelligenceV1_AnnotateVideoProgress
  { -- | Progress metadata for all videos specified in @AnnotateVideoRequest@.
    annotationProgress ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1_VideoAnnotationProgress]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_AnnotateVideoProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_AnnotateVideoProgress ::
  GoogleCloudVideointelligenceV1_AnnotateVideoProgress
newGoogleCloudVideointelligenceV1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1_AnnotateVideoProgress
    { annotationProgress = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_AnnotateVideoProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_AnnotateVideoProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1_AnnotateVideoProgress
            Core.<$> ( o Core..:? "annotationProgress"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_AnnotateVideoProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1_AnnotateVideoProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationProgress" Core..=)
                Core.<$> annotationProgress
            ]
        )

-- | Video annotation response. Included in the @response@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1_AnnotateVideoResponse = GoogleCloudVideointelligenceV1_AnnotateVideoResponse
  { -- | Annotation results for all videos specified in @AnnotateVideoRequest@.
    annotationResults ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1_VideoAnnotationResults]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_AnnotateVideoResponse' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_AnnotateVideoResponse ::
  GoogleCloudVideointelligenceV1_AnnotateVideoResponse
newGoogleCloudVideointelligenceV1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1_AnnotateVideoResponse
    { annotationResults = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_AnnotateVideoResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_AnnotateVideoResponse"
      ( \o ->
          GoogleCloudVideointelligenceV1_AnnotateVideoResponse
            Core.<$> ( o Core..:? "annotationResults"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_AnnotateVideoResponse
  where
  toJSON
    GoogleCloudVideointelligenceV1_AnnotateVideoResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationResults" Core..=)
                Core.<$> annotationResults
            ]
        )

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1_DetectedAttribute = GoogleCloudVideointelligenceV1_DetectedAttribute
  { -- | Detected attribute confidence. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of the attribute, for example, glasses, dark/glasses, mouth/open. A full list of supported type names will be provided in the document.
    name :: (Core.Maybe Core.Text),
    -- | Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_DetectedAttribute' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_DetectedAttribute ::
  GoogleCloudVideointelligenceV1_DetectedAttribute
newGoogleCloudVideointelligenceV1_DetectedAttribute =
  GoogleCloudVideointelligenceV1_DetectedAttribute
    { confidence = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_DetectedAttribute
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_DetectedAttribute"
      ( \o ->
          GoogleCloudVideointelligenceV1_DetectedAttribute
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_DetectedAttribute
  where
  toJSON
    GoogleCloudVideointelligenceV1_DetectedAttribute {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("value" Core..=) Core.<$> value
            ]
        )

-- | A generic detected landmark represented by name in string format and a 2D location.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1_DetectedLandmark = GoogleCloudVideointelligenceV1_DetectedLandmark
  { -- | The confidence score of the detected landmark. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of this landmark, for example, left/hand, right/shoulder.
    name :: (Core.Maybe Core.Text),
    -- | The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.
    point :: (Core.Maybe GoogleCloudVideointelligenceV1_NormalizedVertex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_DetectedLandmark' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_DetectedLandmark ::
  GoogleCloudVideointelligenceV1_DetectedLandmark
newGoogleCloudVideointelligenceV1_DetectedLandmark =
  GoogleCloudVideointelligenceV1_DetectedLandmark
    { confidence = Core.Nothing,
      name = Core.Nothing,
      point = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_DetectedLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_DetectedLandmark"
      ( \o ->
          GoogleCloudVideointelligenceV1_DetectedLandmark
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "point")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_DetectedLandmark
  where
  toJSON
    GoogleCloudVideointelligenceV1_DetectedLandmark {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("point" Core..=) Core.<$> point
            ]
        )

-- | Detected entity from video analysis.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1_Entity = GoogleCloudVideointelligenceV1_Entity
  { -- | Textual description, e.g., @Fixed-gear bicycle@.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    entityId :: (Core.Maybe Core.Text),
    -- | Language code for @description@ in BCP-47 format.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_Entity' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_Entity ::
  GoogleCloudVideointelligenceV1_Entity
newGoogleCloudVideointelligenceV1_Entity =
  GoogleCloudVideointelligenceV1_Entity
    { description = Core.Nothing,
      entityId = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_Entity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_Entity"
      ( \o ->
          GoogleCloudVideointelligenceV1_Entity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_Entity
  where
  toJSON GoogleCloudVideointelligenceV1_Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("entityId" Core..=) Core.<$> entityId,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_ExplicitContentAnnotation = GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
  { -- | All video frames where explicit content was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1_ExplicitContentFrame]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_ExplicitContentAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_ExplicitContentAnnotation ::
  GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
newGoogleCloudVideointelligenceV1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
    { frames = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_ExplicitContentAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1_ExplicitContentAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1_ExplicitContentFrame = GoogleCloudVideointelligenceV1_ExplicitContentFrame
  { -- | Likelihood of the pornography content..
    pornographyLikelihood ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1_ExplicitContentFrame_PornographyLikelihood
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_ExplicitContentFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_ExplicitContentFrame ::
  GoogleCloudVideointelligenceV1_ExplicitContentFrame
newGoogleCloudVideointelligenceV1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1_ExplicitContentFrame
    { pornographyLikelihood = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_ExplicitContentFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_ExplicitContentFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1_ExplicitContentFrame
            Core.<$> (o Core..:? "pornographyLikelihood")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_ExplicitContentFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1_ExplicitContentFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("pornographyLikelihood" Core..=)
                Core.<$> pornographyLikelihood,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_FaceAnnotation = GoogleCloudVideointelligenceV1_FaceAnnotation
  { -- | All video frames where a face was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1_FaceFrame]),
    -- | All video segments where a face was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1_FaceSegment]),
    -- | Thumbnail of a representative face view (in JPEG format).
    thumbnail :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_FaceAnnotation ::
  GoogleCloudVideointelligenceV1_FaceAnnotation
newGoogleCloudVideointelligenceV1_FaceAnnotation =
  GoogleCloudVideointelligenceV1_FaceAnnotation
    { frames = Core.Nothing,
      segments = Core.Nothing,
      thumbnail = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_FaceAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_FaceAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1_FaceAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "thumbnail")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_FaceAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1_FaceAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("thumbnail" Core..=) Core.<$> thumbnail
            ]
        )

-- | Face detection annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_FaceDetectionAnnotation = GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
  { -- | The thumbnail of a person\'s face.
    thumbnail :: (Core.Maybe Core.Base64),
    -- | The face tracks with attributes.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_FaceDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_FaceDetectionAnnotation ::
  GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
newGoogleCloudVideointelligenceV1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
    { thumbnail = Core.Nothing,
      tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_FaceDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
            Core.<$> (o Core..:? "thumbnail")
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1_FaceDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("thumbnail" Core..=) Core.<$> thumbnail,
              ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1_FaceFrame = GoogleCloudVideointelligenceV1_FaceFrame
  { -- | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.
    normalizedBoundingBoxes :: (Core.Maybe [GoogleCloudVideointelligenceV1_NormalizedBoundingBox]),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_FaceFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_FaceFrame ::
  GoogleCloudVideointelligenceV1_FaceFrame
newGoogleCloudVideointelligenceV1_FaceFrame =
  GoogleCloudVideointelligenceV1_FaceFrame
    { normalizedBoundingBoxes = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_FaceFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_FaceFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1_FaceFrame
            Core.<$> ( o Core..:? "normalizedBoundingBoxes"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_FaceFrame
  where
  toJSON GoogleCloudVideointelligenceV1_FaceFrame {..} =
    Core.object
      ( Core.catMaybes
          [ ("normalizedBoundingBoxes" Core..=)
              Core.<$> normalizedBoundingBoxes,
            ("timeOffset" Core..=) Core.<$> timeOffset
          ]
      )

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1_FaceSegment = GoogleCloudVideointelligenceV1_FaceSegment
  { -- | Video segment where a face was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_FaceSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_FaceSegment ::
  GoogleCloudVideointelligenceV1_FaceSegment
newGoogleCloudVideointelligenceV1_FaceSegment =
  GoogleCloudVideointelligenceV1_FaceSegment {segment = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_FaceSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_FaceSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1_FaceSegment
            Core.<$> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_FaceSegment
  where
  toJSON GoogleCloudVideointelligenceV1_FaceSegment {..} =
    Core.object
      ( Core.catMaybes
          [("segment" Core..=) Core.<$> segment]
      )

-- | Label annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_LabelAnnotation = GoogleCloudVideointelligenceV1_LabelAnnotation
  { -- | Common categories for the detected entity. For example, when the label is @Terrier@, the category is likely @dog@. And in some cases there might be more than one categories e.g., @Terrier@ could also be a @pet@.
    categoryEntities :: (Core.Maybe [GoogleCloudVideointelligenceV1_Entity]),
    -- | Detected entity.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1_Entity),
    -- | All video frames where a label was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1_LabelFrame]),
    -- | All video segments where a label was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1_LabelSegment]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_LabelAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_LabelAnnotation ::
  GoogleCloudVideointelligenceV1_LabelAnnotation
newGoogleCloudVideointelligenceV1_LabelAnnotation =
  GoogleCloudVideointelligenceV1_LabelAnnotation
    { categoryEntities = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segments = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_LabelAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_LabelAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1_LabelAnnotation
            Core.<$> (o Core..:? "categoryEntities" Core..!= Core.mempty)
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_LabelAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1_LabelAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("categoryEntities" Core..=)
                Core.<$> categoryEntities,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1_LabelFrame = GoogleCloudVideointelligenceV1_LabelFrame
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_LabelFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_LabelFrame ::
  GoogleCloudVideointelligenceV1_LabelFrame
newGoogleCloudVideointelligenceV1_LabelFrame =
  GoogleCloudVideointelligenceV1_LabelFrame
    { confidence = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_LabelFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_LabelFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1_LabelFrame
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_LabelFrame
  where
  toJSON GoogleCloudVideointelligenceV1_LabelFrame {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("timeOffset" Core..=) Core.<$> timeOffset
          ]
      )

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1_LabelSegment = GoogleCloudVideointelligenceV1_LabelSegment
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment where a label was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_LabelSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_LabelSegment ::
  GoogleCloudVideointelligenceV1_LabelSegment
newGoogleCloudVideointelligenceV1_LabelSegment =
  GoogleCloudVideointelligenceV1_LabelSegment
    { confidence = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_LabelSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_LabelSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1_LabelSegment
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_LabelSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1_LabelSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | Annotation corresponding to one detected, tracked and recognized logo class.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation = GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
  { -- | Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1_Entity),
    -- | All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1_VideoSegment]),
    -- | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1_Track])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_LogoRecognitionAnnotation ::
  GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
newGoogleCloudVideointelligenceV1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
    { entity = Core.Nothing,
      segments = Core.Nothing,
      tracks = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
            Core.<$> (o Core..:? "entity")
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("entity" Core..=) Core.<$> entity,
              ("segments" Core..=) Core.<$> segments,
              ("tracks" Core..=) Core.<$> tracks
            ]
        )

-- | Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1_NormalizedBoundingBox = GoogleCloudVideointelligenceV1_NormalizedBoundingBox
  { -- | Bottom Y coordinate.
    bottom :: (Core.Maybe Core.Double),
    -- | Left X coordinate.
    left :: (Core.Maybe Core.Double),
    -- | Right X coordinate.
    right :: (Core.Maybe Core.Double),
    -- | Top Y coordinate.
    top :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_NormalizedBoundingBox' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_NormalizedBoundingBox ::
  GoogleCloudVideointelligenceV1_NormalizedBoundingBox
newGoogleCloudVideointelligenceV1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1_NormalizedBoundingBox
    { bottom = Core.Nothing,
      left = Core.Nothing,
      right = Core.Nothing,
      top = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_NormalizedBoundingBox
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_NormalizedBoundingBox"
      ( \o ->
          GoogleCloudVideointelligenceV1_NormalizedBoundingBox
            Core.<$> (o Core..:? "bottom") Core.<*> (o Core..:? "left")
              Core.<*> (o Core..:? "right")
              Core.<*> (o Core..:? "top")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_NormalizedBoundingBox
  where
  toJSON
    GoogleCloudVideointelligenceV1_NormalizedBoundingBox {..} =
      Core.object
        ( Core.catMaybes
            [ ("bottom" Core..=) Core.<$> bottom,
              ("left" Core..=) Core.<$> left,
              ("right" Core..=) Core.<$> right,
              ("top" Core..=) Core.<$> top
            ]
        )

-- | Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it\'s clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1_NormalizedBoundingPoly = GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
  { -- | Normalized vertices of the bounding polygon.
    vertices :: (Core.Maybe [GoogleCloudVideointelligenceV1_NormalizedVertex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_NormalizedBoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_NormalizedBoundingPoly ::
  GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
newGoogleCloudVideointelligenceV1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
    { vertices = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_NormalizedBoundingPoly"
      ( \o ->
          GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
            Core.<$> (o Core..:? "vertices" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
  where
  toJSON
    GoogleCloudVideointelligenceV1_NormalizedBoundingPoly {..} =
      Core.object
        ( Core.catMaybes
            [("vertices" Core..=) Core.<$> vertices]
        )

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1_NormalizedVertex = GoogleCloudVideointelligenceV1_NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_NormalizedVertex ::
  GoogleCloudVideointelligenceV1_NormalizedVertex
newGoogleCloudVideointelligenceV1_NormalizedVertex =
  GoogleCloudVideointelligenceV1_NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_NormalizedVertex
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_NormalizedVertex"
      ( \o ->
          GoogleCloudVideointelligenceV1_NormalizedVertex
            Core.<$> (o Core..:? "x") Core.<*> (o Core..:? "y")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_NormalizedVertex
  where
  toJSON
    GoogleCloudVideointelligenceV1_NormalizedVertex {..} =
      Core.object
        ( Core.catMaybes
            [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
        )

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation = GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
  { -- | Object category\'s labeling confidence of this track.
    confidence :: (Core.Maybe Core.Double),
    -- | Entity to specify the object category that this track is labeled as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1_Entity),
    -- | Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1_ObjectTrackingFrame]),
    -- | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1_VideoSegment),
    -- | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track/id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track/id over time.
    trackId :: (Core.Maybe Core.Int64),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_ObjectTrackingAnnotation ::
  GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
newGoogleCloudVideointelligenceV1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
    { confidence = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing,
      trackId = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "trackId")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment,
              ("trackId" Core..=) Core.. Core.AsText
                Core.<$> trackId,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1_ObjectTrackingFrame = GoogleCloudVideointelligenceV1_ObjectTrackingFrame
  { -- | The normalized bounding box location of this object track for the frame.
    normalizedBoundingBox :: (Core.Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingBox),
    -- | The timestamp of the frame in microseconds.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_ObjectTrackingFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_ObjectTrackingFrame ::
  GoogleCloudVideointelligenceV1_ObjectTrackingFrame
newGoogleCloudVideointelligenceV1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1_ObjectTrackingFrame
    { normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_ObjectTrackingFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_ObjectTrackingFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1_ObjectTrackingFrame
            Core.<$> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_ObjectTrackingFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1_ObjectTrackingFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Person detection annotation per video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_PersonDetectionAnnotation = GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
  { -- | The detected tracks of a person.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_PersonDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_PersonDetectionAnnotation ::
  GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
newGoogleCloudVideointelligenceV1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
    { tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_PersonDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
            Core.<$> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1_PersonDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative = GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Transcript text representing the words that the user spoke.
    transcript :: (Core.Maybe Core.Text),
    -- | Output only. A list of word-specific information for each recognized word. Note: When @enable_speaker_diarization@ is set to true, you will see all the words from the beginning of the audio.
    words :: (Core.Maybe [GoogleCloudVideointelligenceV1_WordInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_SpeechRecognitionAlternative ::
  GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
newGoogleCloudVideointelligenceV1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
    { confidence = Core.Nothing,
      transcript = Core.Nothing,
      words = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative"
      ( \o ->
          GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "transcript")
              Core.<*> (o Core..:? "words" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
  where
  toJSON
    GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("transcript" Core..=) Core.<$> transcript,
              ("words" Core..=) Core.<$> words
            ]
        )

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1_SpeechTranscription = GoogleCloudVideointelligenceV1_SpeechTranscription
  { -- | May contain one or more recognition hypotheses (up to the maximum specified in @max_alternatives@). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.
    alternatives ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative]
      ),
    -- | Output only. The <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_SpeechTranscription' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_SpeechTranscription ::
  GoogleCloudVideointelligenceV1_SpeechTranscription
newGoogleCloudVideointelligenceV1_SpeechTranscription =
  GoogleCloudVideointelligenceV1_SpeechTranscription
    { alternatives = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_SpeechTranscription
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_SpeechTranscription"
      ( \o ->
          GoogleCloudVideointelligenceV1_SpeechTranscription
            Core.<$> (o Core..:? "alternatives" Core..!= Core.mempty)
              Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_SpeechTranscription
  where
  toJSON
    GoogleCloudVideointelligenceV1_SpeechTranscription {..} =
      Core.object
        ( Core.catMaybes
            [ ("alternatives" Core..=) Core.<$> alternatives,
              ("languageCode" Core..=) Core.<$> languageCode
            ]
        )

-- | Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1_TextAnnotation = GoogleCloudVideointelligenceV1_TextAnnotation
  { -- | All video segments where OCR detected text appears.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1_TextSegment]),
    -- | The detected text.
    text :: (Core.Maybe Core.Text),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_TextAnnotation ::
  GoogleCloudVideointelligenceV1_TextAnnotation
newGoogleCloudVideointelligenceV1_TextAnnotation =
  GoogleCloudVideointelligenceV1_TextAnnotation
    { segments = Core.Nothing,
      text = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_TextAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_TextAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1_TextAnnotation
            Core.<$> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "text")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_TextAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1_TextAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("segments" Core..=) Core.<$> segments,
              ("text" Core..=) Core.<$> text,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1_TextFrame = GoogleCloudVideointelligenceV1_TextFrame
  { -- | Bounding polygon of the detected text for this frame.
    rotatedBoundingBox :: (Core.Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingPoly),
    -- | Timestamp of this frame.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_TextFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_TextFrame ::
  GoogleCloudVideointelligenceV1_TextFrame
newGoogleCloudVideointelligenceV1_TextFrame =
  GoogleCloudVideointelligenceV1_TextFrame
    { rotatedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_TextFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_TextFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1_TextFrame
            Core.<$> (o Core..:? "rotatedBoundingBox")
            Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_TextFrame
  where
  toJSON GoogleCloudVideointelligenceV1_TextFrame {..} =
    Core.object
      ( Core.catMaybes
          [ ("rotatedBoundingBox" Core..=)
              Core.<$> rotatedBoundingBox,
            ("timeOffset" Core..=) Core.<$> timeOffset
          ]
      )

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1_TextSegment = GoogleCloudVideointelligenceV1_TextSegment
  { -- | Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.
    confidence :: (Core.Maybe Core.Double),
    -- | Information related to the frames where OCR detected text appears.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1_TextFrame]),
    -- | Video segment where a text snippet was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_TextSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_TextSegment ::
  GoogleCloudVideointelligenceV1_TextSegment
newGoogleCloudVideointelligenceV1_TextSegment =
  GoogleCloudVideointelligenceV1_TextSegment
    { confidence = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_TextSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_TextSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1_TextSegment
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
            Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_TextSegment
  where
  toJSON GoogleCloudVideointelligenceV1_TextSegment {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("frames" Core..=) Core.<$> frames,
            ("segment" Core..=) Core.<$> segment
          ]
      )

-- | For tracking related features. An object at time/offset with attributes, and located with normalized/bounding_box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1_TimestampedObject = GoogleCloudVideointelligenceV1_TimestampedObject
  { -- | Optional. The attributes of the object in the bounding box.
    attributes :: (Core.Maybe [GoogleCloudVideointelligenceV1_DetectedAttribute]),
    -- | Optional. The detected landmarks.
    landmarks :: (Core.Maybe [GoogleCloudVideointelligenceV1_DetectedLandmark]),
    -- | Normalized Bounding box in a frame, where the object is located.
    normalizedBoundingBox :: (Core.Maybe GoogleCloudVideointelligenceV1_NormalizedBoundingBox),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_TimestampedObject' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_TimestampedObject ::
  GoogleCloudVideointelligenceV1_TimestampedObject
newGoogleCloudVideointelligenceV1_TimestampedObject =
  GoogleCloudVideointelligenceV1_TimestampedObject
    { attributes = Core.Nothing,
      landmarks = Core.Nothing,
      normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_TimestampedObject
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_TimestampedObject"
      ( \o ->
          GoogleCloudVideointelligenceV1_TimestampedObject
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
              Core.<*> (o Core..:? "landmarks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_TimestampedObject
  where
  toJSON
    GoogleCloudVideointelligenceV1_TimestampedObject {..} =
      Core.object
        ( Core.catMaybes
            [ ("attributes" Core..=) Core.<$> attributes,
              ("landmarks" Core..=) Core.<$> landmarks,
              ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | A track of an object instance.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_Track' smart constructor.
data GoogleCloudVideointelligenceV1_Track = GoogleCloudVideointelligenceV1_Track
  { -- | Optional. Attributes in the track level.
    attributes :: (Core.Maybe [GoogleCloudVideointelligenceV1_DetectedAttribute]),
    -- | Optional. The confidence score of the tracked object.
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment of a track.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1_VideoSegment),
    -- | The object with timestamp and attributes per frame in the track.
    timestampedObjects :: (Core.Maybe [GoogleCloudVideointelligenceV1_TimestampedObject])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_Track' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_Track ::
  GoogleCloudVideointelligenceV1_Track
newGoogleCloudVideointelligenceV1_Track =
  GoogleCloudVideointelligenceV1_Track
    { attributes = Core.Nothing,
      confidence = Core.Nothing,
      segment = Core.Nothing,
      timestampedObjects = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_Track
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_Track"
      ( \o ->
          GoogleCloudVideointelligenceV1_Track
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "segment")
            Core.<*> ( o Core..:? "timestampedObjects"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_Track
  where
  toJSON GoogleCloudVideointelligenceV1_Track {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("confidence" Core..=) Core.<$> confidence,
            ("segment" Core..=) Core.<$> segment,
            ("timestampedObjects" Core..=)
              Core.<$> timestampedObjects
          ]
      )

-- | Annotation progress for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1_VideoAnnotationProgress = GoogleCloudVideointelligenceV1_VideoAnnotationProgress
  { -- | Specifies which feature is being tracked if the request contains more than one feature.
    feature ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1_VideoAnnotationProgress_Feature
      ),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Specifies which segment is being tracked if the request contains more than one segment.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1_VideoSegment),
    -- | Time when the request was received.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Time of the most recent update.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_VideoAnnotationProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_VideoAnnotationProgress ::
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress
newGoogleCloudVideointelligenceV1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1_VideoAnnotationProgress
    { feature = Core.Nothing,
      inputUri = Core.Nothing,
      progressPercent = Core.Nothing,
      segment = Core.Nothing,
      startTime = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_VideoAnnotationProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_VideoAnnotationProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1_VideoAnnotationProgress
            Core.<$> (o Core..:? "feature")
              Core.<*> (o Core..:? "inputUri")
              Core.<*> (o Core..:? "progressPercent")
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "startTime")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_VideoAnnotationProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1_VideoAnnotationProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("feature" Core..=) Core.<$> feature,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("progressPercent" Core..=) Core.<$> progressPercent,
              ("segment" Core..=) Core.<$> segment,
              ("startTime" Core..=) Core.<$> startTime,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

-- | Annotation results for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1_VideoAnnotationResults = GoogleCloudVideointelligenceV1_VideoAnnotationResults
  { -- | If set, indicates an error. Note that for a single @AnnotateVideoRequest@ some videos may succeed and some may fail.
    error :: (Core.Maybe GoogleRpc_Status),
    -- | Explicit content annotation.
    explicitAnnotation ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
      ),
    -- | Deprecated. Please use @face_detection_annotations@ instead.
    faceAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1_FaceAnnotation]),
    -- | Face detection annotations.
    faceDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1_FaceDetectionAnnotation]
      ),
    -- | Label annotations on frame level. There is exactly one element for each unique label.
    frameLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation]),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Annotations for list of logos detected, tracked and recognized in video.
    logoRecognitionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation]
      ),
    -- | Annotations for list of objects detected and tracked in video.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation]
      ),
    -- | Person detection annotations.
    personDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1_PersonDetectionAnnotation]
      ),
    -- | Video segment on which the annotation is run.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1_VideoSegment),
    -- | Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.
    segmentLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation]),
    -- | Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical @segment_label_annotations@, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    segmentPresenceLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation]),
    -- | Shot annotations. Each shot is represented as a video segment.
    shotAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1_VideoSegment]),
    -- | Topical label annotations on shot level. There is exactly one element for each unique label.
    shotLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation]),
    -- | Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical @shot_label_annotations@, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    shotPresenceLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1_LabelAnnotation]),
    -- | Speech transcription.
    speechTranscriptions :: (Core.Maybe [GoogleCloudVideointelligenceV1_SpeechTranscription]),
    -- | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.
    textAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1_TextAnnotation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_VideoAnnotationResults' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_VideoAnnotationResults ::
  GoogleCloudVideointelligenceV1_VideoAnnotationResults
newGoogleCloudVideointelligenceV1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1_VideoAnnotationResults
    { error = Core.Nothing,
      explicitAnnotation = Core.Nothing,
      faceAnnotations = Core.Nothing,
      faceDetectionAnnotations = Core.Nothing,
      frameLabelAnnotations = Core.Nothing,
      inputUri = Core.Nothing,
      logoRecognitionAnnotations = Core.Nothing,
      objectAnnotations = Core.Nothing,
      personDetectionAnnotations = Core.Nothing,
      segment = Core.Nothing,
      segmentLabelAnnotations = Core.Nothing,
      segmentPresenceLabelAnnotations = Core.Nothing,
      shotAnnotations = Core.Nothing,
      shotLabelAnnotations = Core.Nothing,
      shotPresenceLabelAnnotations = Core.Nothing,
      speechTranscriptions = Core.Nothing,
      textAnnotations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_VideoAnnotationResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_VideoAnnotationResults"
      ( \o ->
          GoogleCloudVideointelligenceV1_VideoAnnotationResults
            Core.<$> (o Core..:? "error")
              Core.<*> (o Core..:? "explicitAnnotation")
              Core.<*> (o Core..:? "faceAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "faceDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "frameLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "inputUri")
              Core.<*> ( o Core..:? "logoRecognitionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "objectAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "personDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "segment")
              Core.<*> ( o Core..:? "segmentLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "segmentPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "shotAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "shotLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "shotPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "speechTranscriptions"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "textAnnotations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_VideoAnnotationResults
  where
  toJSON
    GoogleCloudVideointelligenceV1_VideoAnnotationResults {..} =
      Core.object
        ( Core.catMaybes
            [ ("error" Core..=) Core.<$> error,
              ("explicitAnnotation" Core..=)
                Core.<$> explicitAnnotation,
              ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
              ("faceDetectionAnnotations" Core..=)
                Core.<$> faceDetectionAnnotations,
              ("frameLabelAnnotations" Core..=)
                Core.<$> frameLabelAnnotations,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("logoRecognitionAnnotations" Core..=)
                Core.<$> logoRecognitionAnnotations,
              ("objectAnnotations" Core..=)
                Core.<$> objectAnnotations,
              ("personDetectionAnnotations" Core..=)
                Core.<$> personDetectionAnnotations,
              ("segment" Core..=) Core.<$> segment,
              ("segmentLabelAnnotations" Core..=)
                Core.<$> segmentLabelAnnotations,
              ("segmentPresenceLabelAnnotations" Core..=)
                Core.<$> segmentPresenceLabelAnnotations,
              ("shotAnnotations" Core..=) Core.<$> shotAnnotations,
              ("shotLabelAnnotations" Core..=)
                Core.<$> shotLabelAnnotations,
              ("shotPresenceLabelAnnotations" Core..=)
                Core.<$> shotPresenceLabelAnnotations,
              ("speechTranscriptions" Core..=)
                Core.<$> speechTranscriptions,
              ("textAnnotations" Core..=)
                Core.<$> textAnnotations
            ]
        )

-- | Video segment.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1_VideoSegment = GoogleCloudVideointelligenceV1_VideoSegment
  { -- | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).
    endTimeOffset :: (Core.Maybe Core.Duration),
    -- | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).
    startTimeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_VideoSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_VideoSegment ::
  GoogleCloudVideointelligenceV1_VideoSegment
newGoogleCloudVideointelligenceV1_VideoSegment =
  GoogleCloudVideointelligenceV1_VideoSegment
    { endTimeOffset = Core.Nothing,
      startTimeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_VideoSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_VideoSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1_VideoSegment
            Core.<$> (o Core..:? "endTimeOffset")
            Core.<*> (o Core..:? "startTimeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_VideoSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1_VideoSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("endTimeOffset" Core..=) Core.<$> endTimeOffset,
              ("startTimeOffset" Core..=)
                Core.<$> startTimeOffset
            ]
        )

-- | Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as @enable_word_time_offsets@.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1_WordInfo = GoogleCloudVideointelligenceV1_WordInfo
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    endTime :: (Core.Maybe Core.Duration),
    -- | Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization/speaker/count, and is only set if speaker diarization is enabled.
    speakerTag :: (Core.Maybe Core.Int32),
    -- | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    startTime :: (Core.Maybe Core.Duration),
    -- | The word corresponding to this set of information.
    word :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1_WordInfo' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1_WordInfo ::
  GoogleCloudVideointelligenceV1_WordInfo
newGoogleCloudVideointelligenceV1_WordInfo =
  GoogleCloudVideointelligenceV1_WordInfo
    { confidence = Core.Nothing,
      endTime = Core.Nothing,
      speakerTag = Core.Nothing,
      startTime = Core.Nothing,
      word = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1_WordInfo
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1_WordInfo"
      ( \o ->
          GoogleCloudVideointelligenceV1_WordInfo
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "speakerTag")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "word")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1_WordInfo
  where
  toJSON GoogleCloudVideointelligenceV1_WordInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("confidence" Core..=) Core.<$> confidence,
            ("endTime" Core..=) Core.<$> endTime,
            ("speakerTag" Core..=) Core.<$> speakerTag,
            ("startTime" Core..=) Core.<$> startTime,
            ("word" Core..=) Core.<$> word
          ]
      )

-- | Video annotation progress. Included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress = GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
  { -- | Progress metadata for all videos specified in @AnnotateVideoRequest@.
    annotationProgress ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress ::
  GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
newGoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    { annotationProgress = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
            Core.<$> ( o Core..:? "annotationProgress"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationProgress" Core..=)
                Core.<$> annotationProgress
            ]
        )

-- | Video annotation response. Included in the @response@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse = GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
  { -- | Annotation results for all videos specified in @AnnotateVideoRequest@.
    annotationResults ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse ::
  GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
newGoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
    { annotationResults = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
            Core.<$> ( o Core..:? "annotationResults"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationResults" Core..=)
                Core.<$> annotationResults
            ]
        )

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1beta2_DetectedAttribute = GoogleCloudVideointelligenceV1beta2_DetectedAttribute
  { -- | Detected attribute confidence. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of the attribute, for example, glasses, dark/glasses, mouth/open. A full list of supported type names will be provided in the document.
    name :: (Core.Maybe Core.Text),
    -- | Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_DetectedAttribute' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_DetectedAttribute ::
  GoogleCloudVideointelligenceV1beta2_DetectedAttribute
newGoogleCloudVideointelligenceV1beta2_DetectedAttribute =
  GoogleCloudVideointelligenceV1beta2_DetectedAttribute
    { confidence = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_DetectedAttribute
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_DetectedAttribute"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_DetectedAttribute
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_DetectedAttribute
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_DetectedAttribute {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("value" Core..=) Core.<$> value
            ]
        )

-- | A generic detected landmark represented by name in string format and a 2D location.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1beta2_DetectedLandmark = GoogleCloudVideointelligenceV1beta2_DetectedLandmark
  { -- | The confidence score of the detected landmark. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of this landmark, for example, left/hand, right/shoulder.
    name :: (Core.Maybe Core.Text),
    -- | The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.
    point :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_NormalizedVertex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_DetectedLandmark' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_DetectedLandmark ::
  GoogleCloudVideointelligenceV1beta2_DetectedLandmark
newGoogleCloudVideointelligenceV1beta2_DetectedLandmark =
  GoogleCloudVideointelligenceV1beta2_DetectedLandmark
    { confidence = Core.Nothing,
      name = Core.Nothing,
      point = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_DetectedLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_DetectedLandmark"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_DetectedLandmark
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "point")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_DetectedLandmark
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_DetectedLandmark {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("point" Core..=) Core.<$> point
            ]
        )

-- | Detected entity from video analysis.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_Entity' smart constructor.
data GoogleCloudVideointelligenceV1beta2_Entity = GoogleCloudVideointelligenceV1beta2_Entity
  { -- | Textual description, e.g., @Fixed-gear bicycle@.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    entityId :: (Core.Maybe Core.Text),
    -- | Language code for @description@ in BCP-47 format.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_Entity' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_Entity ::
  GoogleCloudVideointelligenceV1beta2_Entity
newGoogleCloudVideointelligenceV1beta2_Entity =
  GoogleCloudVideointelligenceV1beta2_Entity
    { description = Core.Nothing,
      entityId = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_Entity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_Entity"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_Entity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_Entity
  where
  toJSON GoogleCloudVideointelligenceV1beta2_Entity {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("entityId" Core..=) Core.<$> entityId,
            ("languageCode" Core..=) Core.<$> languageCode
          ]
      )

-- | Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation = GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
  { -- | All video frames where explicit content was detected.
    frames ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame]
      ),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation ::
  GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
newGoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
    { frames = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame = GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
  { -- | Likelihood of the pornography content..
    pornographyLikelihood ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame_PornographyLikelihood
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_ExplicitContentFrame ::
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
newGoogleCloudVideointelligenceV1beta2_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
    { pornographyLikelihood = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
            Core.<$> (o Core..:? "pornographyLikelihood")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("pornographyLikelihood" Core..=)
                Core.<$> pornographyLikelihood,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_FaceAnnotation = GoogleCloudVideointelligenceV1beta2_FaceAnnotation
  { -- | All video frames where a face was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_FaceFrame]),
    -- | All video segments where a face was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_FaceSegment]),
    -- | Thumbnail of a representative face view (in JPEG format).
    thumbnail :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_FaceAnnotation ::
  GoogleCloudVideointelligenceV1beta2_FaceAnnotation
newGoogleCloudVideointelligenceV1beta2_FaceAnnotation =
  GoogleCloudVideointelligenceV1beta2_FaceAnnotation
    { frames = Core.Nothing,
      segments = Core.Nothing,
      thumbnail = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_FaceAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_FaceAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_FaceAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "thumbnail")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_FaceAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_FaceAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("thumbnail" Core..=) Core.<$> thumbnail
            ]
        )

-- | Face detection annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation = GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
  { -- | The thumbnail of a person\'s face.
    thumbnail :: (Core.Maybe Core.Base64),
    -- | The face tracks with attributes.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation ::
  GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
newGoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
    { thumbnail = Core.Nothing,
      tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
            Core.<$> (o Core..:? "thumbnail")
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("thumbnail" Core..=) Core.<$> thumbnail,
              ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_FaceFrame = GoogleCloudVideointelligenceV1beta2_FaceFrame
  { -- | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.
    normalizedBoundingBoxes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox]
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_FaceFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_FaceFrame ::
  GoogleCloudVideointelligenceV1beta2_FaceFrame
newGoogleCloudVideointelligenceV1beta2_FaceFrame =
  GoogleCloudVideointelligenceV1beta2_FaceFrame
    { normalizedBoundingBoxes = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_FaceFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_FaceFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_FaceFrame
            Core.<$> ( o Core..:? "normalizedBoundingBoxes"
                         Core..!= Core.mempty
                     )
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_FaceFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_FaceFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBoxes" Core..=)
                Core.<$> normalizedBoundingBoxes,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_FaceSegment = GoogleCloudVideointelligenceV1beta2_FaceSegment
  { -- | Video segment where a face was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_FaceSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_FaceSegment ::
  GoogleCloudVideointelligenceV1beta2_FaceSegment
newGoogleCloudVideointelligenceV1beta2_FaceSegment =
  GoogleCloudVideointelligenceV1beta2_FaceSegment {segment = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_FaceSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_FaceSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_FaceSegment
            Core.<$> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_FaceSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_FaceSegment {..} =
      Core.object
        ( Core.catMaybes
            [("segment" Core..=) Core.<$> segment]
        )

-- | Label annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LabelAnnotation = GoogleCloudVideointelligenceV1beta2_LabelAnnotation
  { -- | Common categories for the detected entity. For example, when the label is @Terrier@, the category is likely @dog@. And in some cases there might be more than one categories e.g., @Terrier@ could also be a @pet@.
    categoryEntities :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_Entity]),
    -- | Detected entity.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_Entity),
    -- | All video frames where a label was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_LabelFrame]),
    -- | All video segments where a label was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_LabelSegment]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LabelAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_LabelAnnotation ::
  GoogleCloudVideointelligenceV1beta2_LabelAnnotation
newGoogleCloudVideointelligenceV1beta2_LabelAnnotation =
  GoogleCloudVideointelligenceV1beta2_LabelAnnotation
    { categoryEntities = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segments = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_LabelAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_LabelAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_LabelAnnotation
            Core.<$> (o Core..:? "categoryEntities" Core..!= Core.mempty)
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_LabelAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_LabelAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("categoryEntities" Core..=)
                Core.<$> categoryEntities,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LabelFrame = GoogleCloudVideointelligenceV1beta2_LabelFrame
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LabelFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_LabelFrame ::
  GoogleCloudVideointelligenceV1beta2_LabelFrame
newGoogleCloudVideointelligenceV1beta2_LabelFrame =
  GoogleCloudVideointelligenceV1beta2_LabelFrame
    { confidence = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_LabelFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_LabelFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_LabelFrame
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_LabelFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_LabelFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LabelSegment = GoogleCloudVideointelligenceV1beta2_LabelSegment
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment where a label was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LabelSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_LabelSegment ::
  GoogleCloudVideointelligenceV1beta2_LabelSegment
newGoogleCloudVideointelligenceV1beta2_LabelSegment =
  GoogleCloudVideointelligenceV1beta2_LabelSegment
    { confidence = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_LabelSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_LabelSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_LabelSegment
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_LabelSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_LabelSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | Annotation corresponding to one detected, tracked and recognized logo class.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation = GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
  { -- | Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_Entity),
    -- | All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_VideoSegment]),
    -- | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_Track])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation ::
  GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
newGoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
    { entity = Core.Nothing,
      segments = Core.Nothing,
      tracks = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
            Core.<$> (o Core..:? "entity")
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("entity" Core..=) Core.<$> entity,
              ("segments" Core..=) Core.<$> segments,
              ("tracks" Core..=) Core.<$> tracks
            ]
        )

-- | Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox = GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
  { -- | Bottom Y coordinate.
    bottom :: (Core.Maybe Core.Double),
    -- | Left X coordinate.
    left :: (Core.Maybe Core.Double),
    -- | Right X coordinate.
    right :: (Core.Maybe Core.Double),
    -- | Top Y coordinate.
    top :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox ::
  GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
    { bottom = Core.Nothing,
      left = Core.Nothing,
      right = Core.Nothing,
      top = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
            Core.<$> (o Core..:? "bottom") Core.<*> (o Core..:? "left")
              Core.<*> (o Core..:? "right")
              Core.<*> (o Core..:? "top")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox {..} =
      Core.object
        ( Core.catMaybes
            [ ("bottom" Core..=) Core.<$> bottom,
              ("left" Core..=) Core.<$> left,
              ("right" Core..=) Core.<$> right,
              ("top" Core..=) Core.<$> top
            ]
        )

-- | Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it\'s clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly = GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
  { -- | Normalized vertices of the bounding polygon.
    vertices :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_NormalizedVertex])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly ::
  GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
newGoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
    { vertices = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
            Core.<$> (o Core..:? "vertices" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly {..} =
      Core.object
        ( Core.catMaybes
            [("vertices" Core..=) Core.<$> vertices]
        )

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1beta2_NormalizedVertex = GoogleCloudVideointelligenceV1beta2_NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_NormalizedVertex ::
  GoogleCloudVideointelligenceV1beta2_NormalizedVertex
newGoogleCloudVideointelligenceV1beta2_NormalizedVertex =
  GoogleCloudVideointelligenceV1beta2_NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedVertex
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_NormalizedVertex"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_NormalizedVertex
            Core.<$> (o Core..:? "x") Core.<*> (o Core..:? "y")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedVertex
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_NormalizedVertex {..} =
      Core.object
        ( Core.catMaybes
            [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
        )

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation = GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
  { -- | Object category\'s labeling confidence of this track.
    confidence :: (Core.Maybe Core.Double),
    -- | Entity to specify the object category that this track is labeled as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_Entity),
    -- | Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.
    frames ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame]
      ),
    -- | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment),
    -- | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track/id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track/id over time.
    trackId :: (Core.Maybe Core.Int64),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation ::
  GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
newGoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
    { confidence = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing,
      trackId = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "trackId")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment,
              ("trackId" Core..=) Core.. Core.AsText
                Core.<$> trackId,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame = GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
  { -- | The normalized bounding box location of this object track for the frame.
    normalizedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
      ),
    -- | The timestamp of the frame in microseconds.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame ::
  GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
newGoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
    { normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
            Core.<$> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Person detection annotation per video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation = GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
  { -- | The detected tracks of a person.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation ::
  GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
newGoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
    { tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
            Core.<$> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative = GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Transcript text representing the words that the user spoke.
    transcript :: (Core.Maybe Core.Text),
    -- | Output only. A list of word-specific information for each recognized word. Note: When @enable_speaker_diarization@ is set to true, you will see all the words from the beginning of the audio.
    words :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_WordInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative ::
  GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
newGoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    { confidence = Core.Nothing,
      transcript = Core.Nothing,
      words = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "transcript")
              Core.<*> (o Core..:? "words" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("transcript" Core..=) Core.<$> transcript,
              ("words" Core..=) Core.<$> words
            ]
        )

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1beta2_SpeechTranscription = GoogleCloudVideointelligenceV1beta2_SpeechTranscription
  { -- | May contain one or more recognition hypotheses (up to the maximum specified in @max_alternatives@). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.
    alternatives ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative]
      ),
    -- | Output only. The <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_SpeechTranscription' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_SpeechTranscription ::
  GoogleCloudVideointelligenceV1beta2_SpeechTranscription
newGoogleCloudVideointelligenceV1beta2_SpeechTranscription =
  GoogleCloudVideointelligenceV1beta2_SpeechTranscription
    { alternatives = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_SpeechTranscription
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_SpeechTranscription"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_SpeechTranscription
            Core.<$> (o Core..:? "alternatives" Core..!= Core.mempty)
              Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_SpeechTranscription
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_SpeechTranscription {..} =
      Core.object
        ( Core.catMaybes
            [ ("alternatives" Core..=) Core.<$> alternatives,
              ("languageCode" Core..=) Core.<$> languageCode
            ]
        )

-- | Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1beta2_TextAnnotation = GoogleCloudVideointelligenceV1beta2_TextAnnotation
  { -- | All video segments where OCR detected text appears.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_TextSegment]),
    -- | The detected text.
    text :: (Core.Maybe Core.Text),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_TextAnnotation ::
  GoogleCloudVideointelligenceV1beta2_TextAnnotation
newGoogleCloudVideointelligenceV1beta2_TextAnnotation =
  GoogleCloudVideointelligenceV1beta2_TextAnnotation
    { segments = Core.Nothing,
      text = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_TextAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_TextAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_TextAnnotation
            Core.<$> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "text")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_TextAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_TextAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("segments" Core..=) Core.<$> segments,
              ("text" Core..=) Core.<$> text,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1beta2_TextFrame = GoogleCloudVideointelligenceV1beta2_TextFrame
  { -- | Bounding polygon of the detected text for this frame.
    rotatedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
      ),
    -- | Timestamp of this frame.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_TextFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_TextFrame ::
  GoogleCloudVideointelligenceV1beta2_TextFrame
newGoogleCloudVideointelligenceV1beta2_TextFrame =
  GoogleCloudVideointelligenceV1beta2_TextFrame
    { rotatedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_TextFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_TextFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_TextFrame
            Core.<$> (o Core..:? "rotatedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_TextFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_TextFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("rotatedBoundingBox" Core..=)
                Core.<$> rotatedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1beta2_TextSegment = GoogleCloudVideointelligenceV1beta2_TextSegment
  { -- | Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.
    confidence :: (Core.Maybe Core.Double),
    -- | Information related to the frames where OCR detected text appears.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_TextFrame]),
    -- | Video segment where a text snippet was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_TextSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_TextSegment ::
  GoogleCloudVideointelligenceV1beta2_TextSegment
newGoogleCloudVideointelligenceV1beta2_TextSegment =
  GoogleCloudVideointelligenceV1beta2_TextSegment
    { confidence = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_TextSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_TextSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_TextSegment
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_TextSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_TextSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | For tracking related features. An object at time/offset with attributes, and located with normalized/bounding_box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1beta2_TimestampedObject = GoogleCloudVideointelligenceV1beta2_TimestampedObject
  { -- | Optional. The attributes of the object in the bounding box.
    attributes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_DetectedAttribute]
      ),
    -- | Optional. The detected landmarks.
    landmarks :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_DetectedLandmark]),
    -- | Normalized Bounding box in a frame, where the object is located.
    normalizedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_TimestampedObject' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_TimestampedObject ::
  GoogleCloudVideointelligenceV1beta2_TimestampedObject
newGoogleCloudVideointelligenceV1beta2_TimestampedObject =
  GoogleCloudVideointelligenceV1beta2_TimestampedObject
    { attributes = Core.Nothing,
      landmarks = Core.Nothing,
      normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_TimestampedObject
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_TimestampedObject"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_TimestampedObject
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
              Core.<*> (o Core..:? "landmarks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_TimestampedObject
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_TimestampedObject {..} =
      Core.object
        ( Core.catMaybes
            [ ("attributes" Core..=) Core.<$> attributes,
              ("landmarks" Core..=) Core.<$> landmarks,
              ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | A track of an object instance.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_Track' smart constructor.
data GoogleCloudVideointelligenceV1beta2_Track = GoogleCloudVideointelligenceV1beta2_Track
  { -- | Optional. Attributes in the track level.
    attributes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_DetectedAttribute]
      ),
    -- | Optional. The confidence score of the tracked object.
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment of a track.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment),
    -- | The object with timestamp and attributes per frame in the track.
    timestampedObjects ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_TimestampedObject]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_Track' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_Track ::
  GoogleCloudVideointelligenceV1beta2_Track
newGoogleCloudVideointelligenceV1beta2_Track =
  GoogleCloudVideointelligenceV1beta2_Track
    { attributes = Core.Nothing,
      confidence = Core.Nothing,
      segment = Core.Nothing,
      timestampedObjects = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_Track
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_Track"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_Track
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "segment")
            Core.<*> ( o Core..:? "timestampedObjects"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_Track
  where
  toJSON GoogleCloudVideointelligenceV1beta2_Track {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("confidence" Core..=) Core.<$> confidence,
            ("segment" Core..=) Core.<$> segment,
            ("timestampedObjects" Core..=)
              Core.<$> timestampedObjects
          ]
      )

-- | Annotation progress for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress = GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
  { -- | Specifies which feature is being tracked if the request contains more than one feature.
    feature ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress_Feature
      ),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Specifies which segment is being tracked if the request contains more than one segment.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment),
    -- | Time when the request was received.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Time of the most recent update.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress ::
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
newGoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    { feature = Core.Nothing,
      inputUri = Core.Nothing,
      progressPercent = Core.Nothing,
      segment = Core.Nothing,
      startTime = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
            Core.<$> (o Core..:? "feature")
              Core.<*> (o Core..:? "inputUri")
              Core.<*> (o Core..:? "progressPercent")
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "startTime")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("feature" Core..=) Core.<$> feature,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("progressPercent" Core..=) Core.<$> progressPercent,
              ("segment" Core..=) Core.<$> segment,
              ("startTime" Core..=) Core.<$> startTime,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

-- | Annotation results for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults = GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
  { -- | If set, indicates an error. Note that for a single @AnnotateVideoRequest@ some videos may succeed and some may fail.
    error :: (Core.Maybe GoogleRpc_Status),
    -- | Explicit content annotation.
    explicitAnnotation ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
      ),
    -- | Deprecated. Please use @face_detection_annotations@ instead.
    faceAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_FaceAnnotation]),
    -- | Face detection annotations.
    faceDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation]
      ),
    -- | Label annotations on frame level. There is exactly one element for each unique label.
    frameLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Annotations for list of logos detected, tracked and recognized in video.
    logoRecognitionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation]
      ),
    -- | Annotations for list of objects detected and tracked in video.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation]
      ),
    -- | Person detection annotations.
    personDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation]
      ),
    -- | Video segment on which the annotation is run.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1beta2_VideoSegment),
    -- | Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.
    segmentLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]),
    -- | Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical @segment_label_annotations@, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    segmentPresenceLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]),
    -- | Shot annotations. Each shot is represented as a video segment.
    shotAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_VideoSegment]),
    -- | Topical label annotations on shot level. There is exactly one element for each unique label.
    shotLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]),
    -- | Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical @shot_label_annotations@, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    shotPresenceLabelAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_LabelAnnotation]),
    -- | Speech transcription.
    speechTranscriptions ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1beta2_SpeechTranscription]
      ),
    -- | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.
    textAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1beta2_TextAnnotation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_VideoAnnotationResults ::
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
newGoogleCloudVideointelligenceV1beta2_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
    { error = Core.Nothing,
      explicitAnnotation = Core.Nothing,
      faceAnnotations = Core.Nothing,
      faceDetectionAnnotations = Core.Nothing,
      frameLabelAnnotations = Core.Nothing,
      inputUri = Core.Nothing,
      logoRecognitionAnnotations = Core.Nothing,
      objectAnnotations = Core.Nothing,
      personDetectionAnnotations = Core.Nothing,
      segment = Core.Nothing,
      segmentLabelAnnotations = Core.Nothing,
      segmentPresenceLabelAnnotations = Core.Nothing,
      shotAnnotations = Core.Nothing,
      shotLabelAnnotations = Core.Nothing,
      shotPresenceLabelAnnotations = Core.Nothing,
      speechTranscriptions = Core.Nothing,
      textAnnotations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
            Core.<$> (o Core..:? "error")
              Core.<*> (o Core..:? "explicitAnnotation")
              Core.<*> (o Core..:? "faceAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "faceDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "frameLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "inputUri")
              Core.<*> ( o Core..:? "logoRecognitionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "objectAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "personDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "segment")
              Core.<*> ( o Core..:? "segmentLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "segmentPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "shotAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "shotLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "shotPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "speechTranscriptions"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "textAnnotations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults {..} =
      Core.object
        ( Core.catMaybes
            [ ("error" Core..=) Core.<$> error,
              ("explicitAnnotation" Core..=)
                Core.<$> explicitAnnotation,
              ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
              ("faceDetectionAnnotations" Core..=)
                Core.<$> faceDetectionAnnotations,
              ("frameLabelAnnotations" Core..=)
                Core.<$> frameLabelAnnotations,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("logoRecognitionAnnotations" Core..=)
                Core.<$> logoRecognitionAnnotations,
              ("objectAnnotations" Core..=)
                Core.<$> objectAnnotations,
              ("personDetectionAnnotations" Core..=)
                Core.<$> personDetectionAnnotations,
              ("segment" Core..=) Core.<$> segment,
              ("segmentLabelAnnotations" Core..=)
                Core.<$> segmentLabelAnnotations,
              ("segmentPresenceLabelAnnotations" Core..=)
                Core.<$> segmentPresenceLabelAnnotations,
              ("shotAnnotations" Core..=) Core.<$> shotAnnotations,
              ("shotLabelAnnotations" Core..=)
                Core.<$> shotLabelAnnotations,
              ("shotPresenceLabelAnnotations" Core..=)
                Core.<$> shotPresenceLabelAnnotations,
              ("speechTranscriptions" Core..=)
                Core.<$> speechTranscriptions,
              ("textAnnotations" Core..=)
                Core.<$> textAnnotations
            ]
        )

-- | Video segment.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1beta2_VideoSegment = GoogleCloudVideointelligenceV1beta2_VideoSegment
  { -- | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).
    endTimeOffset :: (Core.Maybe Core.Duration),
    -- | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).
    startTimeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_VideoSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_VideoSegment ::
  GoogleCloudVideointelligenceV1beta2_VideoSegment
newGoogleCloudVideointelligenceV1beta2_VideoSegment =
  GoogleCloudVideointelligenceV1beta2_VideoSegment
    { endTimeOffset = Core.Nothing,
      startTimeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_VideoSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_VideoSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_VideoSegment
            Core.<$> (o Core..:? "endTimeOffset")
              Core.<*> (o Core..:? "startTimeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_VideoSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_VideoSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("endTimeOffset" Core..=) Core.<$> endTimeOffset,
              ("startTimeOffset" Core..=)
                Core.<$> startTimeOffset
            ]
        )

-- | Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as @enable_word_time_offsets@.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1beta2_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1beta2_WordInfo = GoogleCloudVideointelligenceV1beta2_WordInfo
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    endTime :: (Core.Maybe Core.Duration),
    -- | Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization/speaker/count, and is only set if speaker diarization is enabled.
    speakerTag :: (Core.Maybe Core.Int32),
    -- | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    startTime :: (Core.Maybe Core.Duration),
    -- | The word corresponding to this set of information.
    word :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1beta2_WordInfo' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1beta2_WordInfo ::
  GoogleCloudVideointelligenceV1beta2_WordInfo
newGoogleCloudVideointelligenceV1beta2_WordInfo =
  GoogleCloudVideointelligenceV1beta2_WordInfo
    { confidence = Core.Nothing,
      endTime = Core.Nothing,
      speakerTag = Core.Nothing,
      startTime = Core.Nothing,
      word = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1beta2_WordInfo
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1beta2_WordInfo"
      ( \o ->
          GoogleCloudVideointelligenceV1beta2_WordInfo
            Core.<$> (o Core..:? "confidence")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "speakerTag")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "word")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1beta2_WordInfo
  where
  toJSON
    GoogleCloudVideointelligenceV1beta2_WordInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("endTime" Core..=) Core.<$> endTime,
              ("speakerTag" Core..=) Core.<$> speakerTag,
              ("startTime" Core..=) Core.<$> startTime,
              ("word" Core..=) Core.<$> word
            ]
        )

-- | Video annotation progress. Included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress = GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
  { -- | Progress metadata for all videos specified in @AnnotateVideoRequest@.
    annotationProgress ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress ::
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    { annotationProgress = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
            Core.<$> ( o Core..:? "annotationProgress"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationProgress" Core..=)
                Core.<$> annotationProgress
            ]
        )

-- | Video annotation response. Included in the @response@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse = GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
  { -- | Annotation results for all videos specified in @AnnotateVideoRequest@.
    annotationResults ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse ::
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
newGoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    { annotationResults = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
            Core.<$> ( o Core..:? "annotationResults"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationResults" Core..=)
                Core.<$> annotationResults
            ]
        )

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute = GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
  { -- | Detected attribute confidence. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of the attribute, for example, glasses, dark/glasses, mouth/open. A full list of supported type names will be provided in the document.
    name :: (Core.Maybe Core.Text),
    -- | Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_DetectedAttribute ::
  GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
newGoogleCloudVideointelligenceV1p1beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
    { confidence = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("value" Core..=) Core.<$> value
            ]
        )

-- | A generic detected landmark represented by name in string format and a 2D location.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark = GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
  { -- | The confidence score of the detected landmark. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of this landmark, for example, left/hand, right/shoulder.
    name :: (Core.Maybe Core.Text),
    -- | The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.
    point :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_DetectedLandmark ::
  GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
newGoogleCloudVideointelligenceV1p1beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
    { confidence = Core.Nothing,
      name = Core.Nothing,
      point = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "point")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("point" Core..=) Core.<$> point
            ]
        )

-- | Detected entity from video analysis.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_Entity = GoogleCloudVideointelligenceV1p1beta1_Entity
  { -- | Textual description, e.g., @Fixed-gear bicycle@.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    entityId :: (Core.Maybe Core.Text),
    -- | Language code for @description@ in BCP-47 format.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_Entity' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_Entity ::
  GoogleCloudVideointelligenceV1p1beta1_Entity
newGoogleCloudVideointelligenceV1p1beta1_Entity =
  GoogleCloudVideointelligenceV1p1beta1_Entity
    { description = Core.Nothing,
      entityId = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_Entity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_Entity"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_Entity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_Entity
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_Entity {..} =
      Core.object
        ( Core.catMaybes
            [ ("description" Core..=) Core.<$> description,
              ("entityId" Core..=) Core.<$> entityId,
              ("languageCode" Core..=) Core.<$> languageCode
            ]
        )

-- | Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
  { -- | All video frames where explicit content was detected.
    frames ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame]
      ),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation ::
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    { frames = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame = GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
  { -- | Likelihood of the pornography content..
    pornographyLikelihood ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame_PornographyLikelihood
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame ::
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
newGoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
    { pornographyLikelihood = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
            Core.<$> (o Core..:? "pornographyLikelihood")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("pornographyLikelihood" Core..=)
                Core.<$> pornographyLikelihood,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation = GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
  { -- | All video frames where a face was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_FaceFrame]),
    -- | All video segments where a face was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_FaceSegment]),
    -- | Thumbnail of a representative face view (in JPEG format).
    thumbnail :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_FaceAnnotation ::
  GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
newGoogleCloudVideointelligenceV1p1beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
    { frames = Core.Nothing,
      segments = Core.Nothing,
      thumbnail = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "thumbnail")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("thumbnail" Core..=) Core.<$> thumbnail
            ]
        )

-- | Face detection annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation = GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
  { -- | The thumbnail of a person\'s face.
    thumbnail :: (Core.Maybe Core.Base64),
    -- | The face tracks with attributes.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation ::
  GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
newGoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
    { thumbnail = Core.Nothing,
      tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
            Core.<$> (o Core..:? "thumbnail")
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("thumbnail" Core..=) Core.<$> thumbnail,
              ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_FaceFrame = GoogleCloudVideointelligenceV1p1beta1_FaceFrame
  { -- | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.
    normalizedBoundingBoxes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox]
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_FaceFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_FaceFrame ::
  GoogleCloudVideointelligenceV1p1beta1_FaceFrame
newGoogleCloudVideointelligenceV1p1beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p1beta1_FaceFrame
    { normalizedBoundingBoxes = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_FaceFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_FaceFrame
            Core.<$> ( o Core..:? "normalizedBoundingBoxes"
                         Core..!= Core.mempty
                     )
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBoxes" Core..=)
                Core.<$> normalizedBoundingBoxes,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_FaceSegment = GoogleCloudVideointelligenceV1p1beta1_FaceSegment
  { -- | Video segment where a face was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_FaceSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_FaceSegment ::
  GoogleCloudVideointelligenceV1p1beta1_FaceSegment
newGoogleCloudVideointelligenceV1p1beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p1beta1_FaceSegment {segment = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_FaceSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_FaceSegment
            Core.<$> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_FaceSegment {..} =
      Core.object
        ( Core.catMaybes
            [("segment" Core..=) Core.<$> segment]
        )

-- | Label annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation = GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
  { -- | Common categories for the detected entity. For example, when the label is @Terrier@, the category is likely @dog@. And in some cases there might be more than one categories e.g., @Terrier@ could also be a @pet@.
    categoryEntities :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_Entity]),
    -- | Detected entity.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_Entity),
    -- | All video frames where a label was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelFrame]),
    -- | All video segments where a label was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_LabelSegment]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_LabelAnnotation ::
  GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
newGoogleCloudVideointelligenceV1p1beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
    { categoryEntities = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segments = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
            Core.<$> (o Core..:? "categoryEntities" Core..!= Core.mempty)
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("categoryEntities" Core..=)
                Core.<$> categoryEntities,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LabelFrame = GoogleCloudVideointelligenceV1p1beta1_LabelFrame
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LabelFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_LabelFrame ::
  GoogleCloudVideointelligenceV1p1beta1_LabelFrame
newGoogleCloudVideointelligenceV1p1beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p1beta1_LabelFrame
    { confidence = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_LabelFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_LabelFrame
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LabelSegment = GoogleCloudVideointelligenceV1p1beta1_LabelSegment
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment where a label was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LabelSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_LabelSegment ::
  GoogleCloudVideointelligenceV1p1beta1_LabelSegment
newGoogleCloudVideointelligenceV1p1beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p1beta1_LabelSegment
    { confidence = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_LabelSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_LabelSegment
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_LabelSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | Annotation corresponding to one detected, tracked and recognized logo class.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation = GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
  { -- | Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_Entity),
    -- | All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_VideoSegment]),
    -- | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_Track])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation ::
  GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
newGoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
    { entity = Core.Nothing,
      segments = Core.Nothing,
      tracks = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
            Core.<$> (o Core..:? "entity")
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("entity" Core..=) Core.<$> entity,
              ("segments" Core..=) Core.<$> segments,
              ("tracks" Core..=) Core.<$> tracks
            ]
        )

-- | Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox = GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
  { -- | Bottom Y coordinate.
    bottom :: (Core.Maybe Core.Double),
    -- | Left X coordinate.
    left :: (Core.Maybe Core.Double),
    -- | Right X coordinate.
    right :: (Core.Maybe Core.Double),
    -- | Top Y coordinate.
    top :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox ::
  GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
    { bottom = Core.Nothing,
      left = Core.Nothing,
      right = Core.Nothing,
      top = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
            Core.<$> (o Core..:? "bottom") Core.<*> (o Core..:? "left")
              Core.<*> (o Core..:? "right")
              Core.<*> (o Core..:? "top")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox {..} =
      Core.object
        ( Core.catMaybes
            [ ("bottom" Core..=) Core.<$> bottom,
              ("left" Core..=) Core.<$> left,
              ("right" Core..=) Core.<$> right,
              ("top" Core..=) Core.<$> top
            ]
        )

-- | Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it\'s clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly = GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
  { -- | Normalized vertices of the bounding polygon.
    vertices ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly ::
  GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
newGoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
    { vertices = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
            Core.<$> (o Core..:? "vertices" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly {..} =
      Core.object
        ( Core.catMaybes
            [("vertices" Core..=) Core.<$> vertices]
        )

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex = GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_NormalizedVertex ::
  GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
newGoogleCloudVideointelligenceV1p1beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
            Core.<$> (o Core..:? "x") Core.<*> (o Core..:? "y")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex {..} =
      Core.object
        ( Core.catMaybes
            [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
        )

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation = GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
  { -- | Object category\'s labeling confidence of this track.
    confidence :: (Core.Maybe Core.Double),
    -- | Entity to specify the object category that this track is labeled as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_Entity),
    -- | Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.
    frames ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame]
      ),
    -- | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment),
    -- | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track/id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track/id over time.
    trackId :: (Core.Maybe Core.Int64),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation ::
  GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
    { confidence = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing,
      trackId = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "trackId")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment,
              ("trackId" Core..=) Core.. Core.AsText
                Core.<$> trackId,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame = GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
  { -- | The normalized bounding box location of this object track for the frame.
    normalizedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
      ),
    -- | The timestamp of the frame in microseconds.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame ::
  GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
newGoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
    { normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
            Core.<$> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Person detection annotation per video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation = GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
  { -- | The detected tracks of a person.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation ::
  GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
newGoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
    { tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
            Core.<$> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative = GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Transcript text representing the words that the user spoke.
    transcript :: (Core.Maybe Core.Text),
    -- | Output only. A list of word-specific information for each recognized word. Note: When @enable_speaker_diarization@ is set to true, you will see all the words from the beginning of the audio.
    words :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_WordInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative ::
  GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
newGoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
    { confidence = Core.Nothing,
      transcript = Core.Nothing,
      words = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "transcript")
              Core.<*> (o Core..:? "words" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("transcript" Core..=) Core.<$> transcript,
              ("words" Core..=) Core.<$> words
            ]
        )

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription = GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
  { -- | May contain one or more recognition hypotheses (up to the maximum specified in @max_alternatives@). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.
    alternatives ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative]
      ),
    -- | Output only. The <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_SpeechTranscription ::
  GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
newGoogleCloudVideointelligenceV1p1beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
    { alternatives = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
            Core.<$> (o Core..:? "alternatives" Core..!= Core.mempty)
              Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription {..} =
      Core.object
        ( Core.catMaybes
            [ ("alternatives" Core..=) Core.<$> alternatives,
              ("languageCode" Core..=) Core.<$> languageCode
            ]
        )

-- | Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_TextAnnotation = GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
  { -- | All video segments where OCR detected text appears.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_TextSegment]),
    -- | The detected text.
    text :: (Core.Maybe Core.Text),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_TextAnnotation ::
  GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
newGoogleCloudVideointelligenceV1p1beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
    { segments = Core.Nothing,
      text = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_TextAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
            Core.<$> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "text")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_TextAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("segments" Core..=) Core.<$> segments,
              ("text" Core..=) Core.<$> text,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_TextFrame = GoogleCloudVideointelligenceV1p1beta1_TextFrame
  { -- | Bounding polygon of the detected text for this frame.
    rotatedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
      ),
    -- | Timestamp of this frame.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_TextFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_TextFrame ::
  GoogleCloudVideointelligenceV1p1beta1_TextFrame
newGoogleCloudVideointelligenceV1p1beta1_TextFrame =
  GoogleCloudVideointelligenceV1p1beta1_TextFrame
    { rotatedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_TextFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_TextFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_TextFrame
            Core.<$> (o Core..:? "rotatedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_TextFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_TextFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("rotatedBoundingBox" Core..=)
                Core.<$> rotatedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_TextSegment = GoogleCloudVideointelligenceV1p1beta1_TextSegment
  { -- | Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.
    confidence :: (Core.Maybe Core.Double),
    -- | Information related to the frames where OCR detected text appears.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_TextFrame]),
    -- | Video segment where a text snippet was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_TextSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_TextSegment ::
  GoogleCloudVideointelligenceV1p1beta1_TextSegment
newGoogleCloudVideointelligenceV1p1beta1_TextSegment =
  GoogleCloudVideointelligenceV1p1beta1_TextSegment
    { confidence = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_TextSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_TextSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_TextSegment
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_TextSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_TextSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | For tracking related features. An object at time/offset with attributes, and located with normalized/bounding_box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_TimestampedObject = GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
  { -- | Optional. The attributes of the object in the bounding box.
    attributes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute]
      ),
    -- | Optional. The detected landmarks.
    landmarks ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark]
      ),
    -- | Normalized Bounding box in a frame, where the object is located.
    normalizedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_TimestampedObject' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_TimestampedObject ::
  GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
newGoogleCloudVideointelligenceV1p1beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
    { attributes = Core.Nothing,
      landmarks = Core.Nothing,
      normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_TimestampedObject"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
              Core.<*> (o Core..:? "landmarks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_TimestampedObject {..} =
      Core.object
        ( Core.catMaybes
            [ ("attributes" Core..=) Core.<$> attributes,
              ("landmarks" Core..=) Core.<$> landmarks,
              ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | A track of an object instance.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_Track' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_Track = GoogleCloudVideointelligenceV1p1beta1_Track
  { -- | Optional. Attributes in the track level.
    attributes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute]
      ),
    -- | Optional. The confidence score of the tracked object.
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment of a track.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment),
    -- | The object with timestamp and attributes per frame in the track.
    timestampedObjects ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_TimestampedObject]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_Track' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_Track ::
  GoogleCloudVideointelligenceV1p1beta1_Track
newGoogleCloudVideointelligenceV1p1beta1_Track =
  GoogleCloudVideointelligenceV1p1beta1_Track
    { attributes = Core.Nothing,
      confidence = Core.Nothing,
      segment = Core.Nothing,
      timestampedObjects = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_Track
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_Track"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_Track
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "segment")
            Core.<*> ( o Core..:? "timestampedObjects"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_Track
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_Track {..} =
      Core.object
        ( Core.catMaybes
            [ ("attributes" Core..=) Core.<$> attributes,
              ("confidence" Core..=) Core.<$> confidence,
              ("segment" Core..=) Core.<$> segment,
              ("timestampedObjects" Core..=)
                Core.<$> timestampedObjects
            ]
        )

-- | Annotation progress for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
  { -- | Specifies which feature is being tracked if the request contains more than one feature.
    feature ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress_Feature
      ),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Specifies which segment is being tracked if the request contains more than one segment.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment),
    -- | Time when the request was received.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Time of the most recent update.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress ::
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    { feature = Core.Nothing,
      inputUri = Core.Nothing,
      progressPercent = Core.Nothing,
      segment = Core.Nothing,
      startTime = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
            Core.<$> (o Core..:? "feature")
              Core.<*> (o Core..:? "inputUri")
              Core.<*> (o Core..:? "progressPercent")
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "startTime")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("feature" Core..=) Core.<$> feature,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("progressPercent" Core..=) Core.<$> progressPercent,
              ("segment" Core..=) Core.<$> segment,
              ("startTime" Core..=) Core.<$> startTime,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

-- | Annotation results for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults = GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
  { -- | If set, indicates an error. Note that for a single @AnnotateVideoRequest@ some videos may succeed and some may fail.
    error :: (Core.Maybe GoogleRpc_Status),
    -- | Explicit content annotation.
    explicitAnnotation ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
      ),
    -- | Deprecated. Please use @face_detection_annotations@ instead.
    faceAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation]),
    -- | Face detection annotations.
    faceDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation]
      ),
    -- | Label annotations on frame level. There is exactly one element for each unique label.
    frameLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
      ),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Annotations for list of logos detected, tracked and recognized in video.
    logoRecognitionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation]
      ),
    -- | Annotations for list of objects detected and tracked in video.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation]
      ),
    -- | Person detection annotations.
    personDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation]
      ),
    -- | Video segment on which the annotation is run.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p1beta1_VideoSegment),
    -- | Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.
    segmentLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
      ),
    -- | Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical @segment_label_annotations@, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    segmentPresenceLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
      ),
    -- | Shot annotations. Each shot is represented as a video segment.
    shotAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_VideoSegment]),
    -- | Topical label annotations on shot level. There is exactly one element for each unique label.
    shotLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
      ),
    -- | Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical @shot_label_annotations@, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    shotPresenceLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation]
      ),
    -- | Speech transcription.
    speechTranscriptions ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription]
      ),
    -- | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.
    textAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p1beta1_TextAnnotation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults ::
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
newGoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    { error = Core.Nothing,
      explicitAnnotation = Core.Nothing,
      faceAnnotations = Core.Nothing,
      faceDetectionAnnotations = Core.Nothing,
      frameLabelAnnotations = Core.Nothing,
      inputUri = Core.Nothing,
      logoRecognitionAnnotations = Core.Nothing,
      objectAnnotations = Core.Nothing,
      personDetectionAnnotations = Core.Nothing,
      segment = Core.Nothing,
      segmentLabelAnnotations = Core.Nothing,
      segmentPresenceLabelAnnotations = Core.Nothing,
      shotAnnotations = Core.Nothing,
      shotLabelAnnotations = Core.Nothing,
      shotPresenceLabelAnnotations = Core.Nothing,
      speechTranscriptions = Core.Nothing,
      textAnnotations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
            Core.<$> (o Core..:? "error")
              Core.<*> (o Core..:? "explicitAnnotation")
              Core.<*> (o Core..:? "faceAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "faceDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "frameLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "inputUri")
              Core.<*> ( o Core..:? "logoRecognitionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "objectAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "personDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "segment")
              Core.<*> ( o Core..:? "segmentLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "segmentPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "shotAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "shotLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "shotPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "speechTranscriptions"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "textAnnotations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults {..} =
      Core.object
        ( Core.catMaybes
            [ ("error" Core..=) Core.<$> error,
              ("explicitAnnotation" Core..=)
                Core.<$> explicitAnnotation,
              ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
              ("faceDetectionAnnotations" Core..=)
                Core.<$> faceDetectionAnnotations,
              ("frameLabelAnnotations" Core..=)
                Core.<$> frameLabelAnnotations,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("logoRecognitionAnnotations" Core..=)
                Core.<$> logoRecognitionAnnotations,
              ("objectAnnotations" Core..=)
                Core.<$> objectAnnotations,
              ("personDetectionAnnotations" Core..=)
                Core.<$> personDetectionAnnotations,
              ("segment" Core..=) Core.<$> segment,
              ("segmentLabelAnnotations" Core..=)
                Core.<$> segmentLabelAnnotations,
              ("segmentPresenceLabelAnnotations" Core..=)
                Core.<$> segmentPresenceLabelAnnotations,
              ("shotAnnotations" Core..=) Core.<$> shotAnnotations,
              ("shotLabelAnnotations" Core..=)
                Core.<$> shotLabelAnnotations,
              ("shotPresenceLabelAnnotations" Core..=)
                Core.<$> shotPresenceLabelAnnotations,
              ("speechTranscriptions" Core..=)
                Core.<$> speechTranscriptions,
              ("textAnnotations" Core..=)
                Core.<$> textAnnotations
            ]
        )

-- | Video segment.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_VideoSegment = GoogleCloudVideointelligenceV1p1beta1_VideoSegment
  { -- | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).
    endTimeOffset :: (Core.Maybe Core.Duration),
    -- | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).
    startTimeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_VideoSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_VideoSegment ::
  GoogleCloudVideointelligenceV1p1beta1_VideoSegment
newGoogleCloudVideointelligenceV1p1beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p1beta1_VideoSegment
    { endTimeOffset = Core.Nothing,
      startTimeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_VideoSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_VideoSegment
            Core.<$> (o Core..:? "endTimeOffset")
              Core.<*> (o Core..:? "startTimeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_VideoSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("endTimeOffset" Core..=) Core.<$> endTimeOffset,
              ("startTimeOffset" Core..=)
                Core.<$> startTimeOffset
            ]
        )

-- | Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as @enable_word_time_offsets@.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p1beta1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1p1beta1_WordInfo = GoogleCloudVideointelligenceV1p1beta1_WordInfo
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    endTime :: (Core.Maybe Core.Duration),
    -- | Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization/speaker/count, and is only set if speaker diarization is enabled.
    speakerTag :: (Core.Maybe Core.Int32),
    -- | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    startTime :: (Core.Maybe Core.Duration),
    -- | The word corresponding to this set of information.
    word :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p1beta1_WordInfo' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p1beta1_WordInfo ::
  GoogleCloudVideointelligenceV1p1beta1_WordInfo
newGoogleCloudVideointelligenceV1p1beta1_WordInfo =
  GoogleCloudVideointelligenceV1p1beta1_WordInfo
    { confidence = Core.Nothing,
      endTime = Core.Nothing,
      speakerTag = Core.Nothing,
      startTime = Core.Nothing,
      word = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p1beta1_WordInfo
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p1beta1_WordInfo"
      ( \o ->
          GoogleCloudVideointelligenceV1p1beta1_WordInfo
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "endTime")
              Core.<*> (o Core..:? "speakerTag")
              Core.<*> (o Core..:? "startTime")
              Core.<*> (o Core..:? "word")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p1beta1_WordInfo
  where
  toJSON
    GoogleCloudVideointelligenceV1p1beta1_WordInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("endTime" Core..=) Core.<$> endTime,
              ("speakerTag" Core..=) Core.<$> speakerTag,
              ("startTime" Core..=) Core.<$> startTime,
              ("word" Core..=) Core.<$> word
            ]
        )

-- | Video annotation progress. Included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress = GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
  { -- | Progress metadata for all videos specified in @AnnotateVideoRequest@.
    annotationProgress ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress ::
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    { annotationProgress = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
            Core.<$> ( o Core..:? "annotationProgress"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationProgress" Core..=)
                Core.<$> annotationProgress
            ]
        )

-- | Video annotation response. Included in the @response@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse = GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
  { -- | Annotation results for all videos specified in @AnnotateVideoRequest@.
    annotationResults ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse ::
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
newGoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    { annotationResults = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
            Core.<$> ( o Core..:? "annotationResults"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationResults" Core..=)
                Core.<$> annotationResults
            ]
        )

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute = GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
  { -- | Detected attribute confidence. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of the attribute, for example, glasses, dark/glasses, mouth/open. A full list of supported type names will be provided in the document.
    name :: (Core.Maybe Core.Text),
    -- | Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_DetectedAttribute ::
  GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
newGoogleCloudVideointelligenceV1p2beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
    { confidence = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("value" Core..=) Core.<$> value
            ]
        )

-- | A generic detected landmark represented by name in string format and a 2D location.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark = GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
  { -- | The confidence score of the detected landmark. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of this landmark, for example, left/hand, right/shoulder.
    name :: (Core.Maybe Core.Text),
    -- | The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.
    point :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_DetectedLandmark ::
  GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
newGoogleCloudVideointelligenceV1p2beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
    { confidence = Core.Nothing,
      name = Core.Nothing,
      point = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "point")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("point" Core..=) Core.<$> point
            ]
        )

-- | Detected entity from video analysis.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_Entity = GoogleCloudVideointelligenceV1p2beta1_Entity
  { -- | Textual description, e.g., @Fixed-gear bicycle@.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    entityId :: (Core.Maybe Core.Text),
    -- | Language code for @description@ in BCP-47 format.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_Entity' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_Entity ::
  GoogleCloudVideointelligenceV1p2beta1_Entity
newGoogleCloudVideointelligenceV1p2beta1_Entity =
  GoogleCloudVideointelligenceV1p2beta1_Entity
    { description = Core.Nothing,
      entityId = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_Entity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_Entity"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_Entity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_Entity
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_Entity {..} =
      Core.object
        ( Core.catMaybes
            [ ("description" Core..=) Core.<$> description,
              ("entityId" Core..=) Core.<$> entityId,
              ("languageCode" Core..=) Core.<$> languageCode
            ]
        )

-- | Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
  { -- | All video frames where explicit content was detected.
    frames ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame]
      ),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation ::
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    { frames = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame = GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
  { -- | Likelihood of the pornography content..
    pornographyLikelihood ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame_PornographyLikelihood
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame ::
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
newGoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    { pornographyLikelihood = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
            Core.<$> (o Core..:? "pornographyLikelihood")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("pornographyLikelihood" Core..=)
                Core.<$> pornographyLikelihood,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation = GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
  { -- | All video frames where a face was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_FaceFrame]),
    -- | All video segments where a face was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_FaceSegment]),
    -- | Thumbnail of a representative face view (in JPEG format).
    thumbnail :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_FaceAnnotation ::
  GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
newGoogleCloudVideointelligenceV1p2beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
    { frames = Core.Nothing,
      segments = Core.Nothing,
      thumbnail = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "thumbnail")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("thumbnail" Core..=) Core.<$> thumbnail
            ]
        )

-- | Face detection annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation = GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
  { -- | The thumbnail of a person\'s face.
    thumbnail :: (Core.Maybe Core.Base64),
    -- | The face tracks with attributes.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation ::
  GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
newGoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
    { thumbnail = Core.Nothing,
      tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
            Core.<$> (o Core..:? "thumbnail")
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("thumbnail" Core..=) Core.<$> thumbnail,
              ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_FaceFrame = GoogleCloudVideointelligenceV1p2beta1_FaceFrame
  { -- | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.
    normalizedBoundingBoxes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox]
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_FaceFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_FaceFrame ::
  GoogleCloudVideointelligenceV1p2beta1_FaceFrame
newGoogleCloudVideointelligenceV1p2beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p2beta1_FaceFrame
    { normalizedBoundingBoxes = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_FaceFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_FaceFrame
            Core.<$> ( o Core..:? "normalizedBoundingBoxes"
                         Core..!= Core.mempty
                     )
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBoxes" Core..=)
                Core.<$> normalizedBoundingBoxes,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_FaceSegment = GoogleCloudVideointelligenceV1p2beta1_FaceSegment
  { -- | Video segment where a face was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_FaceSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_FaceSegment ::
  GoogleCloudVideointelligenceV1p2beta1_FaceSegment
newGoogleCloudVideointelligenceV1p2beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p2beta1_FaceSegment {segment = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_FaceSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_FaceSegment
            Core.<$> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_FaceSegment {..} =
      Core.object
        ( Core.catMaybes
            [("segment" Core..=) Core.<$> segment]
        )

-- | Label annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation = GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
  { -- | Common categories for the detected entity. For example, when the label is @Terrier@, the category is likely @dog@. And in some cases there might be more than one categories e.g., @Terrier@ could also be a @pet@.
    categoryEntities :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_Entity]),
    -- | Detected entity.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_Entity),
    -- | All video frames where a label was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelFrame]),
    -- | All video segments where a label was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_LabelSegment]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_LabelAnnotation ::
  GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
newGoogleCloudVideointelligenceV1p2beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
    { categoryEntities = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segments = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
            Core.<$> (o Core..:? "categoryEntities" Core..!= Core.mempty)
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("categoryEntities" Core..=)
                Core.<$> categoryEntities,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelFrame = GoogleCloudVideointelligenceV1p2beta1_LabelFrame
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LabelFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_LabelFrame ::
  GoogleCloudVideointelligenceV1p2beta1_LabelFrame
newGoogleCloudVideointelligenceV1p2beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p2beta1_LabelFrame
    { confidence = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_LabelFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_LabelFrame
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LabelSegment = GoogleCloudVideointelligenceV1p2beta1_LabelSegment
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment where a label was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LabelSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_LabelSegment ::
  GoogleCloudVideointelligenceV1p2beta1_LabelSegment
newGoogleCloudVideointelligenceV1p2beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p2beta1_LabelSegment
    { confidence = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_LabelSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_LabelSegment
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_LabelSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | Annotation corresponding to one detected, tracked and recognized logo class.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation = GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
  { -- | Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_Entity),
    -- | All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_VideoSegment]),
    -- | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_Track])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation ::
  GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
newGoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
    { entity = Core.Nothing,
      segments = Core.Nothing,
      tracks = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
            Core.<$> (o Core..:? "entity")
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("entity" Core..=) Core.<$> entity,
              ("segments" Core..=) Core.<$> segments,
              ("tracks" Core..=) Core.<$> tracks
            ]
        )

-- | Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox = GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
  { -- | Bottom Y coordinate.
    bottom :: (Core.Maybe Core.Double),
    -- | Left X coordinate.
    left :: (Core.Maybe Core.Double),
    -- | Right X coordinate.
    right :: (Core.Maybe Core.Double),
    -- | Top Y coordinate.
    top :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox ::
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    { bottom = Core.Nothing,
      left = Core.Nothing,
      right = Core.Nothing,
      top = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
            Core.<$> (o Core..:? "bottom") Core.<*> (o Core..:? "left")
              Core.<*> (o Core..:? "right")
              Core.<*> (o Core..:? "top")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox {..} =
      Core.object
        ( Core.catMaybes
            [ ("bottom" Core..=) Core.<$> bottom,
              ("left" Core..=) Core.<$> left,
              ("right" Core..=) Core.<$> right,
              ("top" Core..=) Core.<$> top
            ]
        )

-- | Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it\'s clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly = GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
  { -- | Normalized vertices of the bounding polygon.
    vertices ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly ::
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
newGoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    { vertices = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
            Core.<$> (o Core..:? "vertices" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly {..} =
      Core.object
        ( Core.catMaybes
            [("vertices" Core..=) Core.<$> vertices]
        )

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex = GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_NormalizedVertex ::
  GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
newGoogleCloudVideointelligenceV1p2beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
            Core.<$> (o Core..:? "x") Core.<*> (o Core..:? "y")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex {..} =
      Core.object
        ( Core.catMaybes
            [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
        )

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation = GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
  { -- | Object category\'s labeling confidence of this track.
    confidence :: (Core.Maybe Core.Double),
    -- | Entity to specify the object category that this track is labeled as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_Entity),
    -- | Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.
    frames ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame]
      ),
    -- | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment),
    -- | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track/id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track/id over time.
    trackId :: (Core.Maybe Core.Int64),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation ::
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    { confidence = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing,
      trackId = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "trackId")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment,
              ("trackId" Core..=) Core.. Core.AsText
                Core.<$> trackId,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame = GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
  { -- | The normalized bounding box location of this object track for the frame.
    normalizedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
      ),
    -- | The timestamp of the frame in microseconds.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame ::
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
newGoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
    { normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
            Core.<$> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Person detection annotation per video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation = GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
  { -- | The detected tracks of a person.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation ::
  GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
newGoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
    { tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
            Core.<$> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative = GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Transcript text representing the words that the user spoke.
    transcript :: (Core.Maybe Core.Text),
    -- | Output only. A list of word-specific information for each recognized word. Note: When @enable_speaker_diarization@ is set to true, you will see all the words from the beginning of the audio.
    words :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_WordInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative ::
  GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
newGoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    { confidence = Core.Nothing,
      transcript = Core.Nothing,
      words = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "transcript")
              Core.<*> (o Core..:? "words" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("transcript" Core..=) Core.<$> transcript,
              ("words" Core..=) Core.<$> words
            ]
        )

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription = GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
  { -- | May contain one or more recognition hypotheses (up to the maximum specified in @max_alternatives@). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.
    alternatives ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative]
      ),
    -- | Output only. The <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_SpeechTranscription ::
  GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
newGoogleCloudVideointelligenceV1p2beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
    { alternatives = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
            Core.<$> (o Core..:? "alternatives" Core..!= Core.mempty)
              Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription {..} =
      Core.object
        ( Core.catMaybes
            [ ("alternatives" Core..=) Core.<$> alternatives,
              ("languageCode" Core..=) Core.<$> languageCode
            ]
        )

-- | Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextAnnotation = GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
  { -- | All video segments where OCR detected text appears.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_TextSegment]),
    -- | The detected text.
    text :: (Core.Maybe Core.Text),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_TextAnnotation ::
  GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
newGoogleCloudVideointelligenceV1p2beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
    { segments = Core.Nothing,
      text = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_TextAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
            Core.<$> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "text")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_TextAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("segments" Core..=) Core.<$> segments,
              ("text" Core..=) Core.<$> text,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextFrame = GoogleCloudVideointelligenceV1p2beta1_TextFrame
  { -- | Bounding polygon of the detected text for this frame.
    rotatedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
      ),
    -- | Timestamp of this frame.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_TextFrame ::
  GoogleCloudVideointelligenceV1p2beta1_TextFrame
newGoogleCloudVideointelligenceV1p2beta1_TextFrame =
  GoogleCloudVideointelligenceV1p2beta1_TextFrame
    { rotatedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_TextFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_TextFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_TextFrame
            Core.<$> (o Core..:? "rotatedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_TextFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_TextFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("rotatedBoundingBox" Core..=)
                Core.<$> rotatedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TextSegment = GoogleCloudVideointelligenceV1p2beta1_TextSegment
  { -- | Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.
    confidence :: (Core.Maybe Core.Double),
    -- | Information related to the frames where OCR detected text appears.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_TextFrame]),
    -- | Video segment where a text snippet was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TextSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_TextSegment ::
  GoogleCloudVideointelligenceV1p2beta1_TextSegment
newGoogleCloudVideointelligenceV1p2beta1_TextSegment =
  GoogleCloudVideointelligenceV1p2beta1_TextSegment
    { confidence = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_TextSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_TextSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_TextSegment
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_TextSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_TextSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | For tracking related features. An object at time/offset with attributes, and located with normalized/bounding_box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_TimestampedObject = GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
  { -- | Optional. The attributes of the object in the bounding box.
    attributes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute]
      ),
    -- | Optional. The detected landmarks.
    landmarks ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark]
      ),
    -- | Normalized Bounding box in a frame, where the object is located.
    normalizedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_TimestampedObject' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_TimestampedObject ::
  GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
newGoogleCloudVideointelligenceV1p2beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
    { attributes = Core.Nothing,
      landmarks = Core.Nothing,
      normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_TimestampedObject"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
              Core.<*> (o Core..:? "landmarks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_TimestampedObject {..} =
      Core.object
        ( Core.catMaybes
            [ ("attributes" Core..=) Core.<$> attributes,
              ("landmarks" Core..=) Core.<$> landmarks,
              ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | A track of an object instance.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_Track' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_Track = GoogleCloudVideointelligenceV1p2beta1_Track
  { -- | Optional. Attributes in the track level.
    attributes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute]
      ),
    -- | Optional. The confidence score of the tracked object.
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment of a track.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment),
    -- | The object with timestamp and attributes per frame in the track.
    timestampedObjects ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_TimestampedObject]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_Track' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_Track ::
  GoogleCloudVideointelligenceV1p2beta1_Track
newGoogleCloudVideointelligenceV1p2beta1_Track =
  GoogleCloudVideointelligenceV1p2beta1_Track
    { attributes = Core.Nothing,
      confidence = Core.Nothing,
      segment = Core.Nothing,
      timestampedObjects = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_Track
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_Track"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_Track
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "segment")
            Core.<*> ( o Core..:? "timestampedObjects"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_Track
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_Track {..} =
      Core.object
        ( Core.catMaybes
            [ ("attributes" Core..=) Core.<$> attributes,
              ("confidence" Core..=) Core.<$> confidence,
              ("segment" Core..=) Core.<$> segment,
              ("timestampedObjects" Core..=)
                Core.<$> timestampedObjects
            ]
        )

-- | Annotation progress for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
  { -- | Specifies which feature is being tracked if the request contains more than one feature.
    feature ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress_Feature
      ),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Specifies which segment is being tracked if the request contains more than one segment.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment),
    -- | Time when the request was received.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Time of the most recent update.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress ::
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    { feature = Core.Nothing,
      inputUri = Core.Nothing,
      progressPercent = Core.Nothing,
      segment = Core.Nothing,
      startTime = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
            Core.<$> (o Core..:? "feature")
              Core.<*> (o Core..:? "inputUri")
              Core.<*> (o Core..:? "progressPercent")
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "startTime")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("feature" Core..=) Core.<$> feature,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("progressPercent" Core..=) Core.<$> progressPercent,
              ("segment" Core..=) Core.<$> segment,
              ("startTime" Core..=) Core.<$> startTime,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

-- | Annotation results for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults = GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
  { -- | If set, indicates an error. Note that for a single @AnnotateVideoRequest@ some videos may succeed and some may fail.
    error :: (Core.Maybe GoogleRpc_Status),
    -- | Explicit content annotation.
    explicitAnnotation ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
      ),
    -- | Deprecated. Please use @face_detection_annotations@ instead.
    faceAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation]),
    -- | Face detection annotations.
    faceDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation]
      ),
    -- | Label annotations on frame level. There is exactly one element for each unique label.
    frameLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
      ),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Annotations for list of logos detected, tracked and recognized in video.
    logoRecognitionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation]
      ),
    -- | Annotations for list of objects detected and tracked in video.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation]
      ),
    -- | Person detection annotations.
    personDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation]
      ),
    -- | Video segment on which the annotation is run.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p2beta1_VideoSegment),
    -- | Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.
    segmentLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
      ),
    -- | Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical @segment_label_annotations@, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    segmentPresenceLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
      ),
    -- | Shot annotations. Each shot is represented as a video segment.
    shotAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_VideoSegment]),
    -- | Topical label annotations on shot level. There is exactly one element for each unique label.
    shotLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
      ),
    -- | Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical @shot_label_annotations@, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    shotPresenceLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation]
      ),
    -- | Speech transcription.
    speechTranscriptions ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription]
      ),
    -- | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.
    textAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p2beta1_TextAnnotation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults ::
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
newGoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    { error = Core.Nothing,
      explicitAnnotation = Core.Nothing,
      faceAnnotations = Core.Nothing,
      faceDetectionAnnotations = Core.Nothing,
      frameLabelAnnotations = Core.Nothing,
      inputUri = Core.Nothing,
      logoRecognitionAnnotations = Core.Nothing,
      objectAnnotations = Core.Nothing,
      personDetectionAnnotations = Core.Nothing,
      segment = Core.Nothing,
      segmentLabelAnnotations = Core.Nothing,
      segmentPresenceLabelAnnotations = Core.Nothing,
      shotAnnotations = Core.Nothing,
      shotLabelAnnotations = Core.Nothing,
      shotPresenceLabelAnnotations = Core.Nothing,
      speechTranscriptions = Core.Nothing,
      textAnnotations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
            Core.<$> (o Core..:? "error")
              Core.<*> (o Core..:? "explicitAnnotation")
              Core.<*> (o Core..:? "faceAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "faceDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "frameLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "inputUri")
              Core.<*> ( o Core..:? "logoRecognitionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "objectAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "personDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "segment")
              Core.<*> ( o Core..:? "segmentLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "segmentPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "shotAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "shotLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "shotPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "speechTranscriptions"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "textAnnotations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults {..} =
      Core.object
        ( Core.catMaybes
            [ ("error" Core..=) Core.<$> error,
              ("explicitAnnotation" Core..=)
                Core.<$> explicitAnnotation,
              ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
              ("faceDetectionAnnotations" Core..=)
                Core.<$> faceDetectionAnnotations,
              ("frameLabelAnnotations" Core..=)
                Core.<$> frameLabelAnnotations,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("logoRecognitionAnnotations" Core..=)
                Core.<$> logoRecognitionAnnotations,
              ("objectAnnotations" Core..=)
                Core.<$> objectAnnotations,
              ("personDetectionAnnotations" Core..=)
                Core.<$> personDetectionAnnotations,
              ("segment" Core..=) Core.<$> segment,
              ("segmentLabelAnnotations" Core..=)
                Core.<$> segmentLabelAnnotations,
              ("segmentPresenceLabelAnnotations" Core..=)
                Core.<$> segmentPresenceLabelAnnotations,
              ("shotAnnotations" Core..=) Core.<$> shotAnnotations,
              ("shotLabelAnnotations" Core..=)
                Core.<$> shotLabelAnnotations,
              ("shotPresenceLabelAnnotations" Core..=)
                Core.<$> shotPresenceLabelAnnotations,
              ("speechTranscriptions" Core..=)
                Core.<$> speechTranscriptions,
              ("textAnnotations" Core..=)
                Core.<$> textAnnotations
            ]
        )

-- | Video segment.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_VideoSegment = GoogleCloudVideointelligenceV1p2beta1_VideoSegment
  { -- | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).
    endTimeOffset :: (Core.Maybe Core.Duration),
    -- | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).
    startTimeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_VideoSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_VideoSegment ::
  GoogleCloudVideointelligenceV1p2beta1_VideoSegment
newGoogleCloudVideointelligenceV1p2beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p2beta1_VideoSegment
    { endTimeOffset = Core.Nothing,
      startTimeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_VideoSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_VideoSegment
            Core.<$> (o Core..:? "endTimeOffset")
              Core.<*> (o Core..:? "startTimeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_VideoSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("endTimeOffset" Core..=) Core.<$> endTimeOffset,
              ("startTimeOffset" Core..=)
                Core.<$> startTimeOffset
            ]
        )

-- | Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as @enable_word_time_offsets@.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p2beta1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1p2beta1_WordInfo = GoogleCloudVideointelligenceV1p2beta1_WordInfo
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    endTime :: (Core.Maybe Core.Duration),
    -- | Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization/speaker/count, and is only set if speaker diarization is enabled.
    speakerTag :: (Core.Maybe Core.Int32),
    -- | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    startTime :: (Core.Maybe Core.Duration),
    -- | The word corresponding to this set of information.
    word :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p2beta1_WordInfo' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p2beta1_WordInfo ::
  GoogleCloudVideointelligenceV1p2beta1_WordInfo
newGoogleCloudVideointelligenceV1p2beta1_WordInfo =
  GoogleCloudVideointelligenceV1p2beta1_WordInfo
    { confidence = Core.Nothing,
      endTime = Core.Nothing,
      speakerTag = Core.Nothing,
      startTime = Core.Nothing,
      word = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p2beta1_WordInfo
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p2beta1_WordInfo"
      ( \o ->
          GoogleCloudVideointelligenceV1p2beta1_WordInfo
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "endTime")
              Core.<*> (o Core..:? "speakerTag")
              Core.<*> (o Core..:? "startTime")
              Core.<*> (o Core..:? "word")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p2beta1_WordInfo
  where
  toJSON
    GoogleCloudVideointelligenceV1p2beta1_WordInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("endTime" Core..=) Core.<$> endTime,
              ("speakerTag" Core..=) Core.<$> speakerTag,
              ("startTime" Core..=) Core.<$> startTime,
              ("word" Core..=) Core.<$> word
            ]
        )

-- | Video annotation progress. Included in the @metadata@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
  { -- | Progress metadata for all videos specified in @AnnotateVideoRequest@.
    annotationProgress ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress ::
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
    { annotationProgress = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
            Core.<$> ( o Core..:? "annotationProgress"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationProgress" Core..=)
                Core.<$> annotationProgress
            ]
        )

-- | Video annotation request.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
  { -- | Required. Requested video annotation features.
    features ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest_FeaturesItem]
      ),
    -- | The video data bytes. If unset, the input video(s) should be specified via the @input_uri@. If set, @input_uri@ must be unset.
    inputContent :: (Core.Maybe Core.Base64),
    -- | Input video location. Currently, only <https://cloud.google.com/storage/ Cloud Storage> URIs are supported. URIs must be specified in the following format: @gs:\/\/bucket-id\/object-id@ (other URI formats return google.rpc.Code.INVALID_ARGUMENT). For more information, see <https://cloud.google.com/storage/docs/request-endpoints Request URIs>. To identify multiple videos, a video URI may include wildcards in the @object-id@. Supported wildcards: \'*\' to match 0 or more characters; \'?\' to match 1 character. If unset, the input video should be embedded in the request as @input_content@. If set, @input_content@ must be unset.
    inputUri :: (Core.Maybe Core.Text),
    -- | Optional. Cloud region where annotation should take place. Supported cloud regions are: @us-east1@, @us-west1@, @europe-west1@, @asia-east1@. If no region is specified, the region will be determined based on video file location.
    locationId :: (Core.Maybe Core.Text),
    -- | Optional. Location where the output (in JSON format) should be stored. Currently, only <https://cloud.google.com/storage/ Cloud Storage> URIs are supported. These must be specified in the following format: @gs:\/\/bucket-id\/object-id@ (other URI formats return google.rpc.Code.INVALID_ARGUMENT). For more information, see <https://cloud.google.com/storage/docs/request-endpoints Request URIs>.
    outputUri :: (Core.Maybe Core.Text),
    -- | Additional video context and\/or feature-specific parameters.
    videoContext :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_VideoContext)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest ::
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    { features = Core.Nothing,
      inputContent = Core.Nothing,
      inputUri = Core.Nothing,
      locationId = Core.Nothing,
      outputUri = Core.Nothing,
      videoContext = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
            Core.<$> (o Core..:? "features" Core..!= Core.mempty)
              Core.<*> (o Core..:? "inputContent")
              Core.<*> (o Core..:? "inputUri")
              Core.<*> (o Core..:? "locationId")
              Core.<*> (o Core..:? "outputUri")
              Core.<*> (o Core..:? "videoContext")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("features" Core..=) Core.<$> features,
              ("inputContent" Core..=) Core.<$> inputContent,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("locationId" Core..=) Core.<$> locationId,
              ("outputUri" Core..=) Core.<$> outputUri,
              ("videoContext" Core..=) Core.<$> videoContext
            ]
        )

-- | Video annotation response. Included in the @response@ field of the @Operation@ returned by the @GetOperation@ call of the @google::longrunning::Operations@ service.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse = GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
  { -- | Annotation results for all videos specified in @AnnotateVideoRequest@.
    annotationResults ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse ::
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
newGoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
    { annotationResults = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
            Core.<$> ( o Core..:? "annotationResults"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationResults" Core..=)
                Core.<$> annotationResults
            ]
        )

-- | Celebrity definition.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_Celebrity' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_Celebrity = GoogleCloudVideointelligenceV1p3beta1_Celebrity
  { -- | Textual description of additional information about the celebrity, if applicable.
    description :: (Core.Maybe Core.Text),
    -- | The celebrity name.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the celebrity. Have the format @video-intelligence\/kg-mid@ indicates a celebrity from preloaded gallery. kg-mid is the id in Google knowledge graph, which is unique for the celebrity.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_Celebrity' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_Celebrity ::
  GoogleCloudVideointelligenceV1p3beta1_Celebrity
newGoogleCloudVideointelligenceV1p3beta1_Celebrity =
  GoogleCloudVideointelligenceV1p3beta1_Celebrity
    { description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_Celebrity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_Celebrity"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_Celebrity
            Core.<$> (o Core..:? "description")
              Core.<*> (o Core..:? "displayName")
              Core.<*> (o Core..:? "name")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_Celebrity
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_Celebrity {..} =
      Core.object
        ( Core.catMaybes
            [ ("description" Core..=) Core.<$> description,
              ("displayName" Core..=) Core.<$> displayName,
              ("name" Core..=) Core.<$> name
            ]
        )

-- | Celebrity recognition annotation per video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation = GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
  { -- | The tracks detected from the input video, including recognized celebrities and other detected faces in the video.
    celebrityTracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
newGoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
    { celebrityTracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
            Core.<$> (o Core..:? "celebrityTracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("celebrityTracks" Core..=)
                Core.<$> celebrityTracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | The annotation result of a celebrity face track. RecognizedCelebrity field could be empty if the face track does not have any matched celebrities.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_CelebrityTrack' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack = GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
  { -- | Top N match of the celebrities for the face in this track.
    celebrities ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity]
      ),
    -- | A track of a person\'s face.
    faceTrack :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_Track)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_CelebrityTrack ::
  GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
newGoogleCloudVideointelligenceV1p3beta1_CelebrityTrack =
  GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
    { celebrities = Core.Nothing,
      faceTrack = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
            Core.<$> (o Core..:? "celebrities" Core..!= Core.mempty)
              Core.<*> (o Core..:? "faceTrack")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack {..} =
      Core.object
        ( Core.catMaybes
            [ ("celebrities" Core..=) Core.<$> celebrities,
              ("faceTrack" Core..=) Core.<$> faceTrack
            ]
        )

-- | A generic detected attribute represented by name in string format.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_DetectedAttribute' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute = GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
  { -- | Detected attribute confidence. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of the attribute, for example, glasses, dark/glasses, mouth/open. A full list of supported type names will be provided in the document.
    name :: (Core.Maybe Core.Text),
    -- | Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_DetectedAttribute ::
  GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
newGoogleCloudVideointelligenceV1p3beta1_DetectedAttribute =
  GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
    { confidence = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "value")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("value" Core..=) Core.<$> value
            ]
        )

-- | A generic detected landmark represented by name in string format and a 2D location.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_DetectedLandmark' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark = GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
  { -- | The confidence score of the detected landmark. Range [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | The name of this landmark, for example, left/hand, right/shoulder.
    name :: (Core.Maybe Core.Text),
    -- | The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.
    point :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_DetectedLandmark ::
  GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
newGoogleCloudVideointelligenceV1p3beta1_DetectedLandmark =
  GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
    { confidence = Core.Nothing,
      name = Core.Nothing,
      point = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "point")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("name" Core..=) Core.<$> name,
              ("point" Core..=) Core.<$> point
            ]
        )

-- | Detected entity from video analysis.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_Entity' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_Entity = GoogleCloudVideointelligenceV1p3beta1_Entity
  { -- | Textual description, e.g., @Fixed-gear bicycle@.
    description :: (Core.Maybe Core.Text),
    -- | Opaque entity ID. Some IDs may be available in <https://developers.google.com/knowledge-graph/ Google Knowledge Graph Search API>.
    entityId :: (Core.Maybe Core.Text),
    -- | Language code for @description@ in BCP-47 format.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_Entity' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_Entity ::
  GoogleCloudVideointelligenceV1p3beta1_Entity
newGoogleCloudVideointelligenceV1p3beta1_Entity =
  GoogleCloudVideointelligenceV1p3beta1_Entity
    { description = Core.Nothing,
      entityId = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_Entity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_Entity"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_Entity
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "entityId")
            Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_Entity
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_Entity {..} =
      Core.object
        ( Core.catMaybes
            [ ("description" Core..=) Core.<$> description,
              ("entityId" Core..=) Core.<$> entityId,
              ("languageCode" Core..=) Core.<$> languageCode
            ]
        )

-- | Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
  { -- | All video frames where explicit content was detected.
    frames ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame]
      ),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
    { frames = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Config for EXPLICIT/CONTENT/DETECTION.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
  { -- | Model to use for explicit content detection. Supported values: \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
    model :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig ::
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
    { model = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
            Core.<$> (o Core..:? "model")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig {..} =
      Core.object
        (Core.catMaybes [("model" Core..=) Core.<$> model])

-- | Video frame level annotation results for explicit content.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame = GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
  { -- | Likelihood of the pornography content..
    pornographyLikelihood ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame_PornographyLikelihood
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame ::
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
newGoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame =
  GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
    { pornographyLikelihood = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
            Core.<$> (o Core..:? "pornographyLikelihood")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("pornographyLikelihood" Core..=)
                Core.<$> pornographyLikelihood,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_FaceAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation = GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
  { -- | All video frames where a face was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_FaceFrame]),
    -- | All video segments where a face was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_FaceSegment]),
    -- | Thumbnail of a representative face view (in JPEG format).
    thumbnail :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_FaceAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
newGoogleCloudVideointelligenceV1p3beta1_FaceAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
    { frames = Core.Nothing,
      segments = Core.Nothing,
      thumbnail = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
            Core.<$> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "thumbnail")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("thumbnail" Core..=) Core.<$> thumbnail
            ]
        )

-- | Face detection annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation = GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
  { -- | The thumbnail of a person\'s face.
    thumbnail :: (Core.Maybe Core.Base64),
    -- | The face tracks with attributes.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
    { thumbnail = Core.Nothing,
      tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
            Core.<$> (o Core..:? "thumbnail")
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("thumbnail" Core..=) Core.<$> thumbnail,
              ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Config for FACE_DETECTION.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig = GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
  { -- | Whether to enable face attributes detection, such as glasses, dark/glasses, mouth/open etc. Ignored if \'include/bounding/boxes\' is set to false.
    includeAttributes :: (Core.Maybe Core.Bool),
    -- | Whether bounding boxes are included in the face annotation output.
    includeBoundingBoxes :: (Core.Maybe Core.Bool),
    -- | Model to use for face detection. Supported values: \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
    model :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig ::
  GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
newGoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
    { includeAttributes = Core.Nothing,
      includeBoundingBoxes = Core.Nothing,
      model = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
            Core.<$> (o Core..:? "includeAttributes")
              Core.<*> (o Core..:? "includeBoundingBoxes")
              Core.<*> (o Core..:? "model")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("includeAttributes" Core..=)
                Core.<$> includeAttributes,
              ("includeBoundingBoxes" Core..=)
                Core.<$> includeBoundingBoxes,
              ("model" Core..=) Core.<$> model
            ]
        )

-- | Deprecated. No effect.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_FaceFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_FaceFrame = GoogleCloudVideointelligenceV1p3beta1_FaceFrame
  { -- | Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.
    normalizedBoundingBoxes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox]
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_FaceFrame ::
  GoogleCloudVideointelligenceV1p3beta1_FaceFrame
newGoogleCloudVideointelligenceV1p3beta1_FaceFrame =
  GoogleCloudVideointelligenceV1p3beta1_FaceFrame
    { normalizedBoundingBoxes = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_FaceFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_FaceFrame
            Core.<$> ( o Core..:? "normalizedBoundingBoxes"
                         Core..!= Core.mempty
                     )
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBoxes" Core..=)
                Core.<$> normalizedBoundingBoxes,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for face detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_FaceSegment' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_FaceSegment = GoogleCloudVideointelligenceV1p3beta1_FaceSegment
  { -- | Video segment where a face was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_FaceSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_FaceSegment ::
  GoogleCloudVideointelligenceV1p3beta1_FaceSegment
newGoogleCloudVideointelligenceV1p3beta1_FaceSegment =
  GoogleCloudVideointelligenceV1p3beta1_FaceSegment {segment = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_FaceSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_FaceSegment
            Core.<$> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_FaceSegment {..} =
      Core.object
        ( Core.catMaybes
            [("segment" Core..=) Core.<$> segment]
        )

-- | Label annotation.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_LabelAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation = GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
  { -- | Common categories for the detected entity. For example, when the label is @Terrier@, the category is likely @dog@. And in some cases there might be more than one categories e.g., @Terrier@ could also be a @pet@.
    categoryEntities :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_Entity]),
    -- | Detected entity.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_Entity),
    -- | All video frames where a label was detected.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelFrame]),
    -- | All video segments where a label was detected.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_LabelSegment]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_LabelAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
newGoogleCloudVideointelligenceV1p3beta1_LabelAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
    { categoryEntities = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segments = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
            Core.<$> (o Core..:? "categoryEntities" Core..!= Core.mempty)
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("categoryEntities" Core..=)
                Core.<$> categoryEntities,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segments" Core..=) Core.<$> segments,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Config for LABEL_DETECTION.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig = GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
  { -- | The confidence threshold we perform filtering on the labels from frame-level detection. If not set, it is set to 0.4 by default. The valid range for this threshold is [0.1, 0.9]. Any value set outside of this range will be clipped. Note: For best results, follow the default threshold. We will update the default threshold everytime when we release a new model.
    frameConfidenceThreshold :: (Core.Maybe Core.Double),
    -- | What labels should be detected with LABEL_DETECTION, in addition to video-level labels or segment-level labels. If unspecified, defaults to @SHOT_MODE@.
    labelDetectionMode ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig_LabelDetectionMode
      ),
    -- | Model to use for label detection. Supported values: \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
    model :: (Core.Maybe Core.Text),
    -- | Whether the video has been shot from a stationary (i.e., non-moving) camera. When set to true, might improve detection accuracy for moving objects. Should be used with @SHOT_AND_FRAME_MODE@ enabled.
    stationaryCamera :: (Core.Maybe Core.Bool),
    -- | The confidence threshold we perform filtering on the labels from video-level and shot-level detections. If not set, it\'s set to 0.3 by default. The valid range for this threshold is [0.1, 0.9]. Any value set outside of this range will be clipped. Note: For best results, follow the default threshold. We will update the default threshold everytime when we release a new model.
    videoConfidenceThreshold :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig ::
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
newGoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
    { frameConfidenceThreshold = Core.Nothing,
      labelDetectionMode = Core.Nothing,
      model = Core.Nothing,
      stationaryCamera = Core.Nothing,
      videoConfidenceThreshold = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
            Core.<$> (o Core..:? "frameConfidenceThreshold")
              Core.<*> (o Core..:? "labelDetectionMode")
              Core.<*> (o Core..:? "model")
              Core.<*> (o Core..:? "stationaryCamera")
              Core.<*> (o Core..:? "videoConfidenceThreshold")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("frameConfidenceThreshold" Core..=)
                Core.<$> frameConfidenceThreshold,
              ("labelDetectionMode" Core..=)
                Core.<$> labelDetectionMode,
              ("model" Core..=) Core.<$> model,
              ("stationaryCamera" Core..=)
                Core.<$> stationaryCamera,
              ("videoConfidenceThreshold" Core..=)
                Core.<$> videoConfidenceThreshold
            ]
        )

-- | Video frame level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_LabelFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LabelFrame = GoogleCloudVideointelligenceV1p3beta1_LabelFrame
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LabelFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_LabelFrame ::
  GoogleCloudVideointelligenceV1p3beta1_LabelFrame
newGoogleCloudVideointelligenceV1p3beta1_LabelFrame =
  GoogleCloudVideointelligenceV1p3beta1_LabelFrame
    { confidence = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_LabelFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_LabelFrame
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for label detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_LabelSegment' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LabelSegment = GoogleCloudVideointelligenceV1p3beta1_LabelSegment
  { -- | Confidence that the label is accurate. Range: [0, 1].
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment where a label was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LabelSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_LabelSegment ::
  GoogleCloudVideointelligenceV1p3beta1_LabelSegment
newGoogleCloudVideointelligenceV1p3beta1_LabelSegment =
  GoogleCloudVideointelligenceV1p3beta1_LabelSegment
    { confidence = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_LabelSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_LabelSegment
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_LabelSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | Annotation corresponding to one detected, tracked and recognized logo class.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation = GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
  { -- | Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_Entity),
    -- | All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoSegment]),
    -- | All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_Track])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
newGoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
    { entity = Core.Nothing,
      segments = Core.Nothing,
      tracks = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
            Core.<$> (o Core..:? "entity")
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("entity" Core..=) Core.<$> entity,
              ("segments" Core..=) Core.<$> segments,
              ("tracks" Core..=) Core.<$> tracks
            ]
        )

-- | Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox = GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
  { -- | Bottom Y coordinate.
    bottom :: (Core.Maybe Core.Double),
    -- | Left X coordinate.
    left :: (Core.Maybe Core.Double),
    -- | Right X coordinate.
    right :: (Core.Maybe Core.Double),
    -- | Top Y coordinate.
    top :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox ::
  GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
    { bottom = Core.Nothing,
      left = Core.Nothing,
      right = Core.Nothing,
      top = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
            Core.<$> (o Core..:? "bottom") Core.<*> (o Core..:? "left")
              Core.<*> (o Core..:? "right")
              Core.<*> (o Core..:? "top")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox {..} =
      Core.object
        ( Core.catMaybes
            [ ("bottom" Core..=) Core.<$> bottom,
              ("left" Core..=) Core.<$> left,
              ("right" Core..=) Core.<$> right,
              ("top" Core..=) Core.<$> top
            ]
        )

-- | Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it\'s clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly = GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
  { -- | Normalized vertices of the bounding polygon.
    vertices ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly ::
  GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
newGoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
    { vertices = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
            Core.<$> (o Core..:? "vertices" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly {..} =
      Core.object
        ( Core.catMaybes
            [("vertices" Core..=) Core.<$> vertices]
        )

-- | A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_NormalizedVertex' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex = GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
  { -- | X coordinate.
    x :: (Core.Maybe Core.Double),
    -- | Y coordinate.
    y :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_NormalizedVertex ::
  GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
newGoogleCloudVideointelligenceV1p3beta1_NormalizedVertex =
  GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
    { x = Core.Nothing,
      y = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
            Core.<$> (o Core..:? "x") Core.<*> (o Core..:? "y")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex {..} =
      Core.object
        ( Core.catMaybes
            [("x" Core..=) Core.<$> x, ("y" Core..=) Core.<$> y]
        )

-- | Annotations corresponding to one tracked object.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation = GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
  { -- | Object category\'s labeling confidence of this track.
    confidence :: (Core.Maybe Core.Double),
    -- | Entity to specify the object category that this track is labeled as.
    entity :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_Entity),
    -- | Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.
    frames ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame]
      ),
    -- | Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment),
    -- | Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track/id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track/id over time.
    trackId :: (Core.Maybe Core.Int64),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
    { confidence = Core.Nothing,
      entity = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing,
      trackId = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "entity")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "trackId")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("entity" Core..=) Core.<$> entity,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment,
              ("trackId" Core..=) Core.. Core.AsText
                Core.<$> trackId,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Config for OBJECT_TRACKING.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig = GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
  { -- | Model to use for object tracking. Supported values: \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
    model :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig ::
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
    { model = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
            Core.<$> (o Core..:? "model")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig {..} =
      Core.object
        (Core.catMaybes [("model" Core..=) Core.<$> model])

-- | Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame = GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
  { -- | The normalized bounding box location of this object track for the frame.
    normalizedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
      ),
    -- | The timestamp of the frame in microseconds.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame ::
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
newGoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame =
  GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
    { normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
            Core.<$> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Person detection annotation per video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation = GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
  { -- | The detected tracks of a person.
    tracks :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_Track]),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
    { tracks = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
            Core.<$> (o Core..:? "tracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("tracks" Core..=) Core.<$> tracks,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Config for PERSON_DETECTION.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig = GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
  { -- | Whether to enable person attributes detection, such as cloth color (black, blue, etc), type (coat, dress, etc), pattern (plain, floral, etc), hair, etc. Ignored if \'include/bounding/boxes\' is set to false.
    includeAttributes :: (Core.Maybe Core.Bool),
    -- | Whether bounding boxes are included in the person detection annotation output.
    includeBoundingBoxes :: (Core.Maybe Core.Bool),
    -- | Whether to enable pose landmarks detection. Ignored if \'include/bounding/boxes\' is set to false.
    includePoseLandmarks :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig ::
  GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
newGoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
    { includeAttributes = Core.Nothing,
      includeBoundingBoxes = Core.Nothing,
      includePoseLandmarks = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
            Core.<$> (o Core..:? "includeAttributes")
              Core.<*> (o Core..:? "includeBoundingBoxes")
              Core.<*> (o Core..:? "includePoseLandmarks")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("includeAttributes" Core..=)
                Core.<$> includeAttributes,
              ("includeBoundingBoxes" Core..=)
                Core.<$> includeBoundingBoxes,
              ("includePoseLandmarks" Core..=)
                Core.<$> includePoseLandmarks
            ]
        )

-- | The recognized celebrity with confidence score.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity = GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
  { -- | The recognized celebrity.
    celebrity :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_Celebrity),
    -- | Recognition confidence. Range [0, 1].
    confidence :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity ::
  GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
newGoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity =
  GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
    { celebrity = Core.Nothing,
      confidence = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
            Core.<$> (o Core..:? "celebrity")
              Core.<*> (o Core..:? "confidence")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity {..} =
      Core.object
        ( Core.catMaybes
            [ ("celebrity" Core..=) Core.<$> celebrity,
              ("confidence" Core..=) Core.<$> confidence
            ]
        )

-- | Config for SHOT/CHANGE/DETECTION.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig = GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
  { -- | Model to use for shot change detection. Supported values: \"builtin\/stable\" (the default if unset), \"builtin\/latest\", and \"builtin\/legacy\".
    model :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig ::
  GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
newGoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
    { model = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
            Core.<$> (o Core..:? "model")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig {..} =
      Core.object
        (Core.catMaybes [("model" Core..=) Core.<$> model])

-- | Provides \"hints\" to the speech recognizer to favor specific words and phrases in the results.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_SpeechContext' smart constructor.
newtype GoogleCloudVideointelligenceV1p3beta1_SpeechContext = GoogleCloudVideointelligenceV1p3beta1_SpeechContext
  { -- | Optional. A list of strings containing words and phrases \"hints\" so that the speech recognition is more likely to recognize them. This can be used to improve the accuracy for specific words and phrases, for example, if specific commands are typically spoken by the user. This can also be used to add additional words to the vocabulary of the recognizer. See <https://cloud.google.com/speech/limits#content usage limits>.
    phrases :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_SpeechContext' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_SpeechContext ::
  GoogleCloudVideointelligenceV1p3beta1_SpeechContext
newGoogleCloudVideointelligenceV1p3beta1_SpeechContext =
  GoogleCloudVideointelligenceV1p3beta1_SpeechContext {phrases = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechContext
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_SpeechContext"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_SpeechContext
            Core.<$> (o Core..:? "phrases" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechContext
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechContext {..} =
      Core.object
        ( Core.catMaybes
            [("phrases" Core..=) Core.<$> phrases]
        )

-- | Alternative hypotheses (a.k.a. n-best list).
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative = GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Transcript text representing the words that the user spoke.
    transcript :: (Core.Maybe Core.Text),
    -- | Output only. A list of word-specific information for each recognized word. Note: When @enable_speaker_diarization@ is set to true, you will see all the words from the beginning of the audio.
    words :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_WordInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative ::
  GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
newGoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative =
  GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
    { confidence = Core.Nothing,
      transcript = Core.Nothing,
      words = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "transcript")
              Core.<*> (o Core..:? "words" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("transcript" Core..=) Core.<$> transcript,
              ("words" Core..=) Core.<$> words
            ]
        )

-- | A speech recognition result corresponding to a portion of the audio.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscription' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription = GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
  { -- | May contain one or more recognition hypotheses (up to the maximum specified in @max_alternatives@). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.
    alternatives ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative]
      ),
    -- | Output only. The <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.
    languageCode :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscription ::
  GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscription =
  GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
    { alternatives = Core.Nothing,
      languageCode = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
            Core.<$> (o Core..:? "alternatives" Core..!= Core.mempty)
              Core.<*> (o Core..:? "languageCode")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription {..} =
      Core.object
        ( Core.catMaybes
            [ ("alternatives" Core..=) Core.<$> alternatives,
              ("languageCode" Core..=) Core.<$> languageCode
            ]
        )

-- | Config for SPEECH_TRANSCRIPTION.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig = GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
  { -- | Optional. For file formats, such as MXF or MKV, supporting multiple audio tracks, specify up to two tracks. Default: track 0.
    audioTracks :: (Core.Maybe [Core.Int32]),
    -- | Optional. If set, specifies the estimated number of speakers in the conversation. If not set, defaults to \'2\'. Ignored unless enable/speaker/diarization is set to true.
    diarizationSpeakerCount :: (Core.Maybe Core.Int32),
    -- | Optional. If \'true\', adds punctuation to recognition result hypotheses. This feature is only available in select languages. Setting this for requests in other languages has no effect at all. The default \'false\' value does not add punctuation to result hypotheses. NOTE: \"This is currently offered as an experimental service, complimentary to all users. In the future this may be exclusively available as a premium feature.\"
    enableAutomaticPunctuation :: (Core.Maybe Core.Bool),
    -- | Optional. If \'true\', enables speaker detection for each recognized word in the top alternative of the recognition result using a speaker_tag provided in the WordInfo. Note: When this is true, we send all the words from the beginning of the audio for the top alternative in every consecutive response. This is done in order to improve our speaker tags as our models learn to identify the speakers in the conversation over time.
    enableSpeakerDiarization :: (Core.Maybe Core.Bool),
    -- | Optional. If @true@, the top result includes a list of words and the confidence for those words. If @false@, no word-level confidence information is returned. The default is @false@.
    enableWordConfidence :: (Core.Maybe Core.Bool),
    -- | Optional. If set to @true@, the server will attempt to filter out profanities, replacing all but the initial character in each filtered word with asterisks, e.g. \"f***\". If set to @false@ or omitted, profanities won\'t be filtered out.
    filterProfanity :: (Core.Maybe Core.Bool),
    -- | Required. /Required/ The language of the supplied audio as a <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag. Example: \"en-US\". See <https://cloud.google.com/speech/docs/languages Language Support> for a list of the currently supported language codes.
    languageCode :: (Core.Maybe Core.Text),
    -- | Optional. Maximum number of recognition hypotheses to be returned. Specifically, the maximum number of @SpeechRecognitionAlternative@ messages within each @SpeechTranscription@. The server may return fewer than @max_alternatives@. Valid values are @0@-@30@. A value of @0@ or @1@ will return a maximum of one. If omitted, will return a maximum of one.
    maxAlternatives :: (Core.Maybe Core.Int32),
    -- | Optional. A means to provide context to assist the speech recognition.
    speechContexts :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_SpeechContext])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig ::
  GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
newGoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig =
  GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
    { audioTracks = Core.Nothing,
      diarizationSpeakerCount = Core.Nothing,
      enableAutomaticPunctuation = Core.Nothing,
      enableSpeakerDiarization = Core.Nothing,
      enableWordConfidence = Core.Nothing,
      filterProfanity = Core.Nothing,
      languageCode = Core.Nothing,
      maxAlternatives = Core.Nothing,
      speechContexts = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
            Core.<$> (o Core..:? "audioTracks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "diarizationSpeakerCount")
              Core.<*> (o Core..:? "enableAutomaticPunctuation")
              Core.<*> (o Core..:? "enableSpeakerDiarization")
              Core.<*> (o Core..:? "enableWordConfidence")
              Core.<*> (o Core..:? "filterProfanity")
              Core.<*> (o Core..:? "languageCode")
              Core.<*> (o Core..:? "maxAlternatives")
              Core.<*> (o Core..:? "speechContexts" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("audioTracks" Core..=) Core.<$> audioTracks,
              ("diarizationSpeakerCount" Core..=)
                Core.<$> diarizationSpeakerCount,
              ("enableAutomaticPunctuation" Core..=)
                Core.<$> enableAutomaticPunctuation,
              ("enableSpeakerDiarization" Core..=)
                Core.<$> enableSpeakerDiarization,
              ("enableWordConfidence" Core..=)
                Core.<$> enableWordConfidence,
              ("filterProfanity" Core..=) Core.<$> filterProfanity,
              ("languageCode" Core..=) Core.<$> languageCode,
              ("maxAlternatives" Core..=) Core.<$> maxAlternatives,
              ("speechContexts" Core..=) Core.<$> speechContexts
            ]
        )

-- | @StreamingAnnotateVideoResponse@ is the only message returned to the client by @StreamingAnnotateVideo@. A series of zero or more @StreamingAnnotateVideoResponse@ messages are streamed back to the client.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse = GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
  { -- | Streaming annotation results.
    annotationResults ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
      ),
    -- | Google Cloud Storage URI that stores annotation results of one streaming session in JSON format. It is the annotation/result/storage/directory from the request followed by \'\/cloud/project/number-session/id\'.
    annotationResultsUri :: (Core.Maybe Core.Text),
    -- | If set, returns a google.rpc.Status message that specifies the error for the operation.
    error :: (Core.Maybe GoogleRpc_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse ::
  GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
newGoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse =
  GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
    { annotationResults = Core.Nothing,
      annotationResultsUri = Core.Nothing,
      error = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
            Core.<$> (o Core..:? "annotationResults")
              Core.<*> (o Core..:? "annotationResultsUri")
              Core.<*> (o Core..:? "error")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("annotationResults" Core..=)
                Core.<$> annotationResults,
              ("annotationResultsUri" Core..=)
                Core.<$> annotationResultsUri,
              ("error" Core..=) Core.<$> error
            ]
        )

-- | Streaming annotation results corresponding to a portion of the video that is currently being processed. Only ONE type of annotation will be specified in the response.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults = GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
  { -- | Explicit content annotation results.
    explicitAnnotation ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
      ),
    -- | Timestamp of the processed frame in microseconds.
    frameTimestamp :: (Core.Maybe Core.Duration),
    -- | Label annotation results.
    labelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
      ),
    -- | Object tracking results.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation]
      ),
    -- | Shot annotation results. Each shot is represented as a video segment.
    shotAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoSegment])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults ::
  GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
newGoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults =
  GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
    { explicitAnnotation = Core.Nothing,
      frameTimestamp = Core.Nothing,
      labelAnnotations = Core.Nothing,
      objectAnnotations = Core.Nothing,
      shotAnnotations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
            Core.<$> (o Core..:? "explicitAnnotation")
              Core.<*> (o Core..:? "frameTimestamp")
              Core.<*> (o Core..:? "labelAnnotations" Core..!= Core.mempty)
              Core.<*> (o Core..:? "objectAnnotations" Core..!= Core.mempty)
              Core.<*> (o Core..:? "shotAnnotations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults {..} =
      Core.object
        ( Core.catMaybes
            [ ("explicitAnnotation" Core..=)
                Core.<$> explicitAnnotation,
              ("frameTimestamp" Core..=) Core.<$> frameTimestamp,
              ("labelAnnotations" Core..=)
                Core.<$> labelAnnotations,
              ("objectAnnotations" Core..=)
                Core.<$> objectAnnotations,
              ("shotAnnotations" Core..=)
                Core.<$> shotAnnotations
            ]
        )

-- | Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_TextAnnotation' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TextAnnotation = GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
  { -- | All video segments where OCR detected text appears.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_TextSegment]),
    -- | The detected text.
    text :: (Core.Maybe Core.Text),
    -- | Feature version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TextAnnotation' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_TextAnnotation ::
  GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
newGoogleCloudVideointelligenceV1p3beta1_TextAnnotation =
  GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
    { segments = Core.Nothing,
      text = Core.Nothing,
      version = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_TextAnnotation"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
            Core.<$> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "text")
              Core.<*> (o Core..:? "version")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_TextAnnotation {..} =
      Core.object
        ( Core.catMaybes
            [ ("segments" Core..=) Core.<$> segments,
              ("text" Core..=) Core.<$> text,
              ("version" Core..=) Core.<$> version
            ]
        )

-- | Config for TEXT_DETECTION.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig = GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
  { -- | Language hint can be specified if the language to be detected is known a priori. It can increase the accuracy of the detection. Language hint must be language code in BCP-47 format. Automatic language detection is performed if no hint is provided.
    languageHints :: (Core.Maybe [Core.Text]),
    -- | Model to use for text detection. Supported values: \"builtin\/stable\" (the default if unset) and \"builtin\/latest\".
    model :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig ::
  GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
newGoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig =
  GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
    { languageHints = Core.Nothing,
      model = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
            Core.<$> (o Core..:? "languageHints" Core..!= Core.mempty)
              Core.<*> (o Core..:? "model")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig {..} =
      Core.object
        ( Core.catMaybes
            [ ("languageHints" Core..=) Core.<$> languageHints,
              ("model" Core..=) Core.<$> model
            ]
        )

-- | Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_TextFrame' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TextFrame = GoogleCloudVideointelligenceV1p3beta1_TextFrame
  { -- | Bounding polygon of the detected text for this frame.
    rotatedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
      ),
    -- | Timestamp of this frame.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TextFrame' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_TextFrame ::
  GoogleCloudVideointelligenceV1p3beta1_TextFrame
newGoogleCloudVideointelligenceV1p3beta1_TextFrame =
  GoogleCloudVideointelligenceV1p3beta1_TextFrame
    { rotatedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_TextFrame
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_TextFrame"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_TextFrame
            Core.<$> (o Core..:? "rotatedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_TextFrame
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_TextFrame {..} =
      Core.object
        ( Core.catMaybes
            [ ("rotatedBoundingBox" Core..=)
                Core.<$> rotatedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | Video segment level annotation results for text detection.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_TextSegment' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TextSegment = GoogleCloudVideointelligenceV1p3beta1_TextSegment
  { -- | Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.
    confidence :: (Core.Maybe Core.Double),
    -- | Information related to the frames where OCR detected text appears.
    frames :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_TextFrame]),
    -- | Video segment where a text snippet was detected.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TextSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_TextSegment ::
  GoogleCloudVideointelligenceV1p3beta1_TextSegment
newGoogleCloudVideointelligenceV1p3beta1_TextSegment =
  GoogleCloudVideointelligenceV1p3beta1_TextSegment
    { confidence = Core.Nothing,
      frames = Core.Nothing,
      segment = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_TextSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_TextSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_TextSegment
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "frames" Core..!= Core.mempty)
              Core.<*> (o Core..:? "segment")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_TextSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_TextSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("frames" Core..=) Core.<$> frames,
              ("segment" Core..=) Core.<$> segment
            ]
        )

-- | For tracking related features. An object at time/offset with attributes, and located with normalized/bounding_box.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_TimestampedObject' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_TimestampedObject = GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
  { -- | Optional. The attributes of the object in the bounding box.
    attributes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute]
      ),
    -- | Optional. The detected landmarks.
    landmarks ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark]
      ),
    -- | Normalized Bounding box in a frame, where the object is located.
    normalizedBoundingBox ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
      ),
    -- | Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.
    timeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_TimestampedObject' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_TimestampedObject ::
  GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
newGoogleCloudVideointelligenceV1p3beta1_TimestampedObject =
  GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
    { attributes = Core.Nothing,
      landmarks = Core.Nothing,
      normalizedBoundingBox = Core.Nothing,
      timeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_TimestampedObject"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
              Core.<*> (o Core..:? "landmarks" Core..!= Core.mempty)
              Core.<*> (o Core..:? "normalizedBoundingBox")
              Core.<*> (o Core..:? "timeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_TimestampedObject {..} =
      Core.object
        ( Core.catMaybes
            [ ("attributes" Core..=) Core.<$> attributes,
              ("landmarks" Core..=) Core.<$> landmarks,
              ("normalizedBoundingBox" Core..=)
                Core.<$> normalizedBoundingBox,
              ("timeOffset" Core..=) Core.<$> timeOffset
            ]
        )

-- | A track of an object instance.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_Track' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_Track = GoogleCloudVideointelligenceV1p3beta1_Track
  { -- | Optional. Attributes in the track level.
    attributes ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute]
      ),
    -- | Optional. The confidence score of the tracked object.
    confidence :: (Core.Maybe Core.Double),
    -- | Video segment of a track.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment),
    -- | The object with timestamp and attributes per frame in the track.
    timestampedObjects ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_TimestampedObject]
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_Track' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_Track ::
  GoogleCloudVideointelligenceV1p3beta1_Track
newGoogleCloudVideointelligenceV1p3beta1_Track =
  GoogleCloudVideointelligenceV1p3beta1_Track
    { attributes = Core.Nothing,
      confidence = Core.Nothing,
      segment = Core.Nothing,
      timestampedObjects = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_Track
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_Track"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_Track
            Core.<$> (o Core..:? "attributes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "confidence")
            Core.<*> (o Core..:? "segment")
            Core.<*> ( o Core..:? "timestampedObjects"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_Track
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_Track {..} =
      Core.object
        ( Core.catMaybes
            [ ("attributes" Core..=) Core.<$> attributes,
              ("confidence" Core..=) Core.<$> confidence,
              ("segment" Core..=) Core.<$> segment,
              ("timestampedObjects" Core..=)
                Core.<$> timestampedObjects
            ]
        )

-- | Annotation progress for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
  { -- | Specifies which feature is being tracked if the request contains more than one feature.
    feature ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress_Feature
      ),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.
    progressPercent :: (Core.Maybe Core.Int32),
    -- | Specifies which segment is being tracked if the request contains more than one segment.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment),
    -- | Time when the request was received.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Time of the most recent update.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress ::
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress =
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
    { feature = Core.Nothing,
      inputUri = Core.Nothing,
      progressPercent = Core.Nothing,
      segment = Core.Nothing,
      startTime = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
            Core.<$> (o Core..:? "feature")
              Core.<*> (o Core..:? "inputUri")
              Core.<*> (o Core..:? "progressPercent")
              Core.<*> (o Core..:? "segment")
              Core.<*> (o Core..:? "startTime")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress {..} =
      Core.object
        ( Core.catMaybes
            [ ("feature" Core..=) Core.<$> feature,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("progressPercent" Core..=) Core.<$> progressPercent,
              ("segment" Core..=) Core.<$> segment,
              ("startTime" Core..=) Core.<$> startTime,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

-- | Annotation results for a single video.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults = GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
  { -- | Celebrity recognition annotations.
    celebrityRecognitionAnnotations ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
      ),
    -- | If set, indicates an error. Note that for a single @AnnotateVideoRequest@ some videos may succeed and some may fail.
    error :: (Core.Maybe GoogleRpc_Status),
    -- | Explicit content annotation.
    explicitAnnotation ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
      ),
    -- | Deprecated. Please use @face_detection_annotations@ instead.
    faceAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation]),
    -- | Face detection annotations.
    faceDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation]
      ),
    -- | Label annotations on frame level. There is exactly one element for each unique label.
    frameLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
      ),
    -- | Video file location in <https://cloud.google.com/storage/ Cloud Storage>.
    inputUri :: (Core.Maybe Core.Text),
    -- | Annotations for list of logos detected, tracked and recognized in video.
    logoRecognitionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation]
      ),
    -- | Annotations for list of objects detected and tracked in video.
    objectAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation]
      ),
    -- | Person detection annotations.
    personDetectionAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation]
      ),
    -- | Video segment on which the annotation is run.
    segment :: (Core.Maybe GoogleCloudVideointelligenceV1p3beta1_VideoSegment),
    -- | Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.
    segmentLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
      ),
    -- | Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical @segment_label_annotations@, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    segmentPresenceLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
      ),
    -- | Shot annotations. Each shot is represented as a video segment.
    shotAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoSegment]),
    -- | Topical label annotations on shot level. There is exactly one element for each unique label.
    shotLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
      ),
    -- | Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical @shot_label_annotations@, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets @LabelDetectionConfig.model@ to \"builtin\/latest\" in the request.
    shotPresenceLabelAnnotations ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation]
      ),
    -- | Speech transcription.
    speechTranscriptions ::
      ( Core.Maybe
          [GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription]
      ),
    -- | OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.
    textAnnotations :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_TextAnnotation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults ::
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
newGoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults =
  GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
    { celebrityRecognitionAnnotations = Core.Nothing,
      error = Core.Nothing,
      explicitAnnotation = Core.Nothing,
      faceAnnotations = Core.Nothing,
      faceDetectionAnnotations = Core.Nothing,
      frameLabelAnnotations = Core.Nothing,
      inputUri = Core.Nothing,
      logoRecognitionAnnotations = Core.Nothing,
      objectAnnotations = Core.Nothing,
      personDetectionAnnotations = Core.Nothing,
      segment = Core.Nothing,
      segmentLabelAnnotations = Core.Nothing,
      segmentPresenceLabelAnnotations = Core.Nothing,
      shotAnnotations = Core.Nothing,
      shotLabelAnnotations = Core.Nothing,
      shotPresenceLabelAnnotations = Core.Nothing,
      speechTranscriptions = Core.Nothing,
      textAnnotations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
            Core.<$> (o Core..:? "celebrityRecognitionAnnotations")
              Core.<*> (o Core..:? "error")
              Core.<*> (o Core..:? "explicitAnnotation")
              Core.<*> (o Core..:? "faceAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "faceDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "frameLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "inputUri")
              Core.<*> ( o Core..:? "logoRecognitionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "objectAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "personDetectionAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "segment")
              Core.<*> ( o Core..:? "segmentLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "segmentPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "shotAnnotations" Core..!= Core.mempty)
              Core.<*> ( o Core..:? "shotLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "shotPresenceLabelAnnotations"
                           Core..!= Core.mempty
                       )
              Core.<*> ( o Core..:? "speechTranscriptions"
                           Core..!= Core.mempty
                       )
              Core.<*> (o Core..:? "textAnnotations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults {..} =
      Core.object
        ( Core.catMaybes
            [ ("celebrityRecognitionAnnotations" Core..=)
                Core.<$> celebrityRecognitionAnnotations,
              ("error" Core..=) Core.<$> error,
              ("explicitAnnotation" Core..=)
                Core.<$> explicitAnnotation,
              ("faceAnnotations" Core..=) Core.<$> faceAnnotations,
              ("faceDetectionAnnotations" Core..=)
                Core.<$> faceDetectionAnnotations,
              ("frameLabelAnnotations" Core..=)
                Core.<$> frameLabelAnnotations,
              ("inputUri" Core..=) Core.<$> inputUri,
              ("logoRecognitionAnnotations" Core..=)
                Core.<$> logoRecognitionAnnotations,
              ("objectAnnotations" Core..=)
                Core.<$> objectAnnotations,
              ("personDetectionAnnotations" Core..=)
                Core.<$> personDetectionAnnotations,
              ("segment" Core..=) Core.<$> segment,
              ("segmentLabelAnnotations" Core..=)
                Core.<$> segmentLabelAnnotations,
              ("segmentPresenceLabelAnnotations" Core..=)
                Core.<$> segmentPresenceLabelAnnotations,
              ("shotAnnotations" Core..=) Core.<$> shotAnnotations,
              ("shotLabelAnnotations" Core..=)
                Core.<$> shotLabelAnnotations,
              ("shotPresenceLabelAnnotations" Core..=)
                Core.<$> shotPresenceLabelAnnotations,
              ("speechTranscriptions" Core..=)
                Core.<$> speechTranscriptions,
              ("textAnnotations" Core..=)
                Core.<$> textAnnotations
            ]
        )

-- | Video context and\/or feature-specific parameters.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_VideoContext' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_VideoContext = GoogleCloudVideointelligenceV1p3beta1_VideoContext
  { -- | Config for EXPLICIT/CONTENT/DETECTION.
    explicitContentDetectionConfig ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
      ),
    -- | Config for FACE_DETECTION.
    faceDetectionConfig ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
      ),
    -- | Config for LABEL_DETECTION.
    labelDetectionConfig ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
      ),
    -- | Config for OBJECT_TRACKING.
    objectTrackingConfig ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
      ),
    -- | Config for PERSON_DETECTION.
    personDetectionConfig ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
      ),
    -- | Video segments to annotate. The segments may overlap and are not required to be contiguous or span the whole video. If unspecified, each video is treated as a single segment.
    segments :: (Core.Maybe [GoogleCloudVideointelligenceV1p3beta1_VideoSegment]),
    -- | Config for SHOT/CHANGE/DETECTION.
    shotChangeDetectionConfig ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
      ),
    -- | Config for SPEECH_TRANSCRIPTION.
    speechTranscriptionConfig ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
      ),
    -- | Config for TEXT_DETECTION.
    textDetectionConfig ::
      ( Core.Maybe
          GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_VideoContext' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_VideoContext ::
  GoogleCloudVideointelligenceV1p3beta1_VideoContext
newGoogleCloudVideointelligenceV1p3beta1_VideoContext =
  GoogleCloudVideointelligenceV1p3beta1_VideoContext
    { explicitContentDetectionConfig = Core.Nothing,
      faceDetectionConfig = Core.Nothing,
      labelDetectionConfig = Core.Nothing,
      objectTrackingConfig = Core.Nothing,
      personDetectionConfig = Core.Nothing,
      segments = Core.Nothing,
      shotChangeDetectionConfig = Core.Nothing,
      speechTranscriptionConfig = Core.Nothing,
      textDetectionConfig = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoContext
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_VideoContext"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_VideoContext
            Core.<$> (o Core..:? "explicitContentDetectionConfig")
              Core.<*> (o Core..:? "faceDetectionConfig")
              Core.<*> (o Core..:? "labelDetectionConfig")
              Core.<*> (o Core..:? "objectTrackingConfig")
              Core.<*> (o Core..:? "personDetectionConfig")
              Core.<*> (o Core..:? "segments" Core..!= Core.mempty)
              Core.<*> (o Core..:? "shotChangeDetectionConfig")
              Core.<*> (o Core..:? "speechTranscriptionConfig")
              Core.<*> (o Core..:? "textDetectionConfig")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoContext
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoContext {..} =
      Core.object
        ( Core.catMaybes
            [ ("explicitContentDetectionConfig" Core..=)
                Core.<$> explicitContentDetectionConfig,
              ("faceDetectionConfig" Core..=)
                Core.<$> faceDetectionConfig,
              ("labelDetectionConfig" Core..=)
                Core.<$> labelDetectionConfig,
              ("objectTrackingConfig" Core..=)
                Core.<$> objectTrackingConfig,
              ("personDetectionConfig" Core..=)
                Core.<$> personDetectionConfig,
              ("segments" Core..=) Core.<$> segments,
              ("shotChangeDetectionConfig" Core..=)
                Core.<$> shotChangeDetectionConfig,
              ("speechTranscriptionConfig" Core..=)
                Core.<$> speechTranscriptionConfig,
              ("textDetectionConfig" Core..=)
                Core.<$> textDetectionConfig
            ]
        )

-- | Video segment.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_VideoSegment' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_VideoSegment = GoogleCloudVideointelligenceV1p3beta1_VideoSegment
  { -- | Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).
    endTimeOffset :: (Core.Maybe Core.Duration),
    -- | Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).
    startTimeOffset :: (Core.Maybe Core.Duration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_VideoSegment' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_VideoSegment ::
  GoogleCloudVideointelligenceV1p3beta1_VideoSegment
newGoogleCloudVideointelligenceV1p3beta1_VideoSegment =
  GoogleCloudVideointelligenceV1p3beta1_VideoSegment
    { endTimeOffset = Core.Nothing,
      startTimeOffset = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoSegment
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_VideoSegment"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_VideoSegment
            Core.<$> (o Core..:? "endTimeOffset")
              Core.<*> (o Core..:? "startTimeOffset")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoSegment
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_VideoSegment {..} =
      Core.object
        ( Core.catMaybes
            [ ("endTimeOffset" Core..=) Core.<$> endTimeOffset,
              ("startTimeOffset" Core..=)
                Core.<$> startTimeOffset
            ]
        )

-- | Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as @enable_word_time_offsets@.
--
-- /See:/ 'newGoogleCloudVideointelligenceV1p3beta1_WordInfo' smart constructor.
data GoogleCloudVideointelligenceV1p3beta1_WordInfo = GoogleCloudVideointelligenceV1p3beta1_WordInfo
  { -- | Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating @confidence@ was not set.
    confidence :: (Core.Maybe Core.Double),
    -- | Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    endTime :: (Core.Maybe Core.Duration),
    -- | Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization/speaker/count, and is only set if speaker diarization is enabled.
    speakerTag :: (Core.Maybe Core.Int32),
    -- | Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if @enable_word_time_offsets=true@ and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.
    startTime :: (Core.Maybe Core.Duration),
    -- | The word corresponding to this set of information.
    word :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudVideointelligenceV1p3beta1_WordInfo' with the minimum fields required to make a request.
newGoogleCloudVideointelligenceV1p3beta1_WordInfo ::
  GoogleCloudVideointelligenceV1p3beta1_WordInfo
newGoogleCloudVideointelligenceV1p3beta1_WordInfo =
  GoogleCloudVideointelligenceV1p3beta1_WordInfo
    { confidence = Core.Nothing,
      endTime = Core.Nothing,
      speakerTag = Core.Nothing,
      startTime = Core.Nothing,
      word = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudVideointelligenceV1p3beta1_WordInfo
  where
  parseJSON =
    Core.withObject
      "GoogleCloudVideointelligenceV1p3beta1_WordInfo"
      ( \o ->
          GoogleCloudVideointelligenceV1p3beta1_WordInfo
            Core.<$> (o Core..:? "confidence")
              Core.<*> (o Core..:? "endTime")
              Core.<*> (o Core..:? "speakerTag")
              Core.<*> (o Core..:? "startTime")
              Core.<*> (o Core..:? "word")
      )

instance
  Core.ToJSON
    GoogleCloudVideointelligenceV1p3beta1_WordInfo
  where
  toJSON
    GoogleCloudVideointelligenceV1p3beta1_WordInfo {..} =
      Core.object
        ( Core.catMaybes
            [ ("confidence" Core..=) Core.<$> confidence,
              ("endTime" Core..=) Core.<$> endTime,
              ("speakerTag" Core..=) Core.<$> speakerTag,
              ("startTime" Core..=) Core.<$> startTime,
              ("word" Core..=) Core.<$> word
            ]
        )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunning_Operation' smart constructor.
data GoogleLongrunning_Operation = GoogleLongrunning_Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe GoogleRpc_Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe GoogleLongrunning_Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe GoogleLongrunning_Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunning_Operation' with the minimum fields required to make a request.
newGoogleLongrunning_Operation ::
  GoogleLongrunning_Operation
newGoogleLongrunning_Operation =
  GoogleLongrunning_Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunning_Operation where
  parseJSON =
    Core.withObject
      "GoogleLongrunning_Operation"
      ( \o ->
          GoogleLongrunning_Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON GoogleLongrunning_Operation where
  toJSON GoogleLongrunning_Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newGoogleLongrunning_Operation_Metadata' smart constructor.
newtype GoogleLongrunning_Operation_Metadata = GoogleLongrunning_Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunning_Operation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunning_Operation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunning_Operation_Metadata
newGoogleLongrunning_Operation_Metadata additional =
  GoogleLongrunning_Operation_Metadata {additional = additional}

instance
  Core.FromJSON
    GoogleLongrunning_Operation_Metadata
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunning_Operation_Metadata"
      ( \o ->
          GoogleLongrunning_Operation_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunning_Operation_Metadata
  where
  toJSON GoogleLongrunning_Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunning_Operation_Response' smart constructor.
newtype GoogleLongrunning_Operation_Response = GoogleLongrunning_Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunning_Operation_Response' with the minimum fields required to make a request.
newGoogleLongrunning_Operation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunning_Operation_Response
newGoogleLongrunning_Operation_Response additional =
  GoogleLongrunning_Operation_Response {additional = additional}

instance
  Core.FromJSON
    GoogleLongrunning_Operation_Response
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunning_Operation_Response"
      ( \o ->
          GoogleLongrunning_Operation_Response
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunning_Operation_Response
  where
  toJSON GoogleLongrunning_Operation_Response {..} =
    Core.toJSON additional

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpc_Status' smart constructor.
data GoogleRpc_Status = GoogleRpc_Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [GoogleRpc_Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpc_Status' with the minimum fields required to make a request.
newGoogleRpc_Status ::
  GoogleRpc_Status
newGoogleRpc_Status =
  GoogleRpc_Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON GoogleRpc_Status where
  parseJSON =
    Core.withObject
      "GoogleRpc_Status"
      ( \o ->
          GoogleRpc_Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON GoogleRpc_Status where
  toJSON GoogleRpc_Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newGoogleRpc_Status_DetailsItem' smart constructor.
newtype GoogleRpc_Status_DetailsItem = GoogleRpc_Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpc_Status_DetailsItem' with the minimum fields required to make a request.
newGoogleRpc_Status_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleRpc_Status_DetailsItem
newGoogleRpc_Status_DetailsItem additional =
  GoogleRpc_Status_DetailsItem {additional = additional}

instance Core.FromJSON GoogleRpc_Status_DetailsItem where
  parseJSON =
    Core.withObject
      "GoogleRpc_Status_DetailsItem"
      ( \o ->
          GoogleRpc_Status_DetailsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleRpc_Status_DetailsItem where
  toJSON GoogleRpc_Status_DetailsItem {..} =
    Core.toJSON additional
