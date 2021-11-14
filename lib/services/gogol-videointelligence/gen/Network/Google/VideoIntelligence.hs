{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.VideoIntelligence
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects objects, explicit content, and scene changes in videos. It also
-- specifies the region for annotation and transcribes speech to text.
-- Supports both asynchronous API and streaming API.
--
-- /See:/ <https://cloud.google.com/video-intelligence/docs/ Cloud Video Intelligence API Reference>
module Network.Google.VideoIntelligence
    (
    -- * Service Configuration
      videoIntelligenceService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , VideoIntelligenceAPI

    -- * Resources

    -- ** videointelligence.videos.annotate
    , module Network.Google.Resource.VideoIntelligence.Videos.Annotate

    -- * Types

    -- ** GoogleRpc_StatusDetailsItem
    , GoogleRpc_StatusDetailsItem
    , googleRpc_StatusDetailsItem
    , grsdiAddtional

    -- ** GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
    , googleCloudVideointelligenceV1beta2_ExplicitContentAnnotation
    , gcvvecaFrames
    , gcvvecaVersion

    -- ** GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
    , googleCloudVideointelligenceV1_SpeechRecognitionAlternative
    , gcvvsraConfidence
    , gcvvsraWords
    , gcvvsraTranscript

    -- ** GoogleCloudVideointelligenceV1p3beta1_TextFrame
    , GoogleCloudVideointelligenceV1p3beta1_TextFrame
    , googleCloudVideointelligenceV1p3beta1_TextFrame
    , gcvvtfRotatedBoundingBox
    , gcvvtfTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p1beta1_FaceSegment
    , GoogleCloudVideointelligenceV1p1beta1_FaceSegment
    , googleCloudVideointelligenceV1p1beta1_FaceSegment
    , gcvvfsSegment

    -- ** GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
    , GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
    , googleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults
    , gcvvsvarShotAnnotations
    , gcvvsvarLabelAnnotations
    , gcvvsvarFrameTimestamp
    , gcvvsvarObjectAnnotations
    , gcvvsvarExplicitAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse
    , googleCloudVideointelligenceV1beta2_AnnotateVideoResponse
    , gcvvavrAnnotationResults

    -- ** GoogleCloudVideointelligenceV1_WordInfo
    , GoogleCloudVideointelligenceV1_WordInfo
    , googleCloudVideointelligenceV1_WordInfo
    , gcvvwiStartTime
    , gcvvwiConfidence
    , gcvvwiEndTime
    , gcvvwiWord
    , gcvvwiSpeakerTag

    -- ** GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
    , googleCloudVideointelligenceV1p1beta1_ExplicitContentFrame
    , gcvvecfTimeOffSet
    , gcvvecfPornographyLikelihood

    -- ** GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
    , GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
    , googleCloudVideointelligenceV1p3beta1_ObjectTrackingConfig
    , gcvvotcModel

    -- ** GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
    , googleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative
    , gConfidence
    , gWords
    , gTranscript

    -- ** GoogleCloudVideointelligenceV1_TextFrame
    , GoogleCloudVideointelligenceV1_TextFrame
    , googleCloudVideointelligenceV1_TextFrame
    , gRotatedBoundingBox
    , gTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p3beta1_WordInfo
    , GoogleCloudVideointelligenceV1p3beta1_WordInfo
    , googleCloudVideointelligenceV1p3beta1_WordInfo
    , gooStartTime
    , gooConfidence
    , gooEndTime
    , gooWord
    , gooSpeakerTag

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
    , googleCloudVideointelligenceV1p3beta1_LabelDetectionConfig
    , gcvvldcLabelDetectionMode
    , gcvvldcStationaryCamera
    , gcvvldcModel
    , gcvvldcVideoConfidenceThreshold
    , gcvvldcFrameConfidenceThreshold

    -- ** GoogleCloudVideointelligenceV1beta2_Entity
    , GoogleCloudVideointelligenceV1beta2_Entity
    , googleCloudVideointelligenceV1beta2_Entity
    , gcvveLanguageCode
    , gcvveEntityId
    , gcvveDescription

    -- ** GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
    , googleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation
    , gcvvlraTracks
    , gcvvlraSegments
    , gcvvlraEntity

    -- ** GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
    , GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
    , googleCloudVideointelligenceV1p3beta1_RecognizedCelebrity
    , gcvvrcCelebrity
    , gcvvrcConfidence

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
    , googleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress
    , gcvvvapFeature
    , gcvvvapStartTime
    , gcvvvapInputURI
    , gcvvvapProgressPercent
    , gcvvvapUpdateTime
    , gcvvvapSegment

    -- ** GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
    , googleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly
    , gcvvnbpVertices

    -- ** GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
    , googleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation
    , gcvvcraCelebrityTracks
    , gcvvcraVersion

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
    , googleCloudVideointelligenceV1p2beta1_TextAnnotation
    , gcvvtaText
    , gcvvtaVersion
    , gcvvtaSegments

    -- ** GoogleCloudVideointelligenceV1p3beta1_Celebrity
    , GoogleCloudVideointelligenceV1p3beta1_Celebrity
    , googleCloudVideointelligenceV1p3beta1_Celebrity
    , gcvvcName
    , gcvvcDisplayName
    , gcvvcDescription

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoSegment
    , GoogleCloudVideointelligenceV1p2beta1_VideoSegment
    , googleCloudVideointelligenceV1p2beta1_VideoSegment
    , gcvvvsStartTimeOffSet
    , gcvvvsEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p2beta1_FaceSegment
    , GoogleCloudVideointelligenceV1p2beta1_FaceSegment
    , googleCloudVideointelligenceV1p2beta1_FaceSegment
    , gSegment

    -- ** GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
    , GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex
    , googleCloudVideointelligenceV1p1beta1_NormalizedVertex
    , gcvvnvX
    , gcvvnvY

    -- ** GoogleCloudVideointelligenceV1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1_VideoAnnotationProgress
    , googleCloudVideointelligenceV1_VideoAnnotationProgress
    , gcvvvapsFeature
    , gcvvvapsStartTime
    , gcvvvapsInputURI
    , gcvvvapsProgressPercent
    , gcvvvapsUpdateTime
    , gcvvvapsSegment

    -- ** GoogleCloudVideointelligenceV1beta2_LabelFrame
    , GoogleCloudVideointelligenceV1beta2_LabelFrame
    , googleCloudVideointelligenceV1beta2_LabelFrame
    , gcvvlfTimeOffSet
    , gcvvlfConfidence

    -- ** GoogleCloudVideointelligenceV1beta2_FaceAnnotation
    , GoogleCloudVideointelligenceV1beta2_FaceAnnotation
    , googleCloudVideointelligenceV1beta2_FaceAnnotation
    , gcvvfaThumbnail
    , gcvvfaFrames
    , gcvvfaSegments

    -- ** GoogleCloudVideointelligenceV1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1_NormalizedBoundingBox
    , googleCloudVideointelligenceV1_NormalizedBoundingBox
    , gcvvnbbBottom
    , gcvvnbbLeft
    , gcvvnbbRight
    , gcvvnbbTop

    -- ** GoogleCloudVideointelligenceV1_SpeechTranscription
    , GoogleCloudVideointelligenceV1_SpeechTranscription
    , googleCloudVideointelligenceV1_SpeechTranscription
    , gcvvstAlternatives
    , gcvvstLanguageCode

    -- ** GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    , googleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    , gcvvavpAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1p3beta1_TextSegment
    , GoogleCloudVideointelligenceV1p3beta1_TextSegment
    , googleCloudVideointelligenceV1p3beta1_TextSegment
    , gcvvtsFrames
    , gcvvtsConfidence
    , gcvvtsSegment

    -- ** GoogleCloudVideointelligenceV1p1beta1_FaceFrame
    , GoogleCloudVideointelligenceV1p1beta1_FaceFrame
    , googleCloudVideointelligenceV1p1beta1_FaceFrame
    , gcvvffTimeOffSet
    , gcvvffNormalizedBoundingBoxes

    -- ** GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
    , googleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox
    , gBottom
    , gLeft
    , gRight
    , gTop

    -- ** GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
    , GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription
    , googleCloudVideointelligenceV1p3beta1_SpeechTranscription
    , gAlternatives
    , gLanguageCode

    -- ** GoogleCloudVideointelligenceV1_TextSegment
    , GoogleCloudVideointelligenceV1_TextSegment
    , googleCloudVideointelligenceV1_TextSegment
    , gcvvtscFrames
    , gcvvtscConfidence
    , gcvvtscSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
    , googleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame
    , gcvvotfTimeOffSet
    , gcvvotfNormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1_LabelAnnotation
    , GoogleCloudVideointelligenceV1_LabelAnnotation
    , googleCloudVideointelligenceV1_LabelAnnotation
    , gcvvlaCategoryEntities
    , gcvvlaFrames
    , gcvvlaVersion
    , gcvvlaSegments
    , gcvvlaEntity

    -- ** GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
    , googleCloudVideointelligenceV1beta2_NormalizedBoundingPoly
    , gVertices

    -- ** GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    , googleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    , gcvvsracConfidence
    , gcvvsracWords
    , gcvvsracTranscript

    -- ** GoogleCloudVideointelligenceV1p2beta1_WordInfo
    , GoogleCloudVideointelligenceV1p2beta1_WordInfo
    , googleCloudVideointelligenceV1p2beta1_WordInfo
    , gcvvwicStartTime
    , gcvvwicConfidence
    , gcvvwicEndTime
    , gcvvwicWord
    , gcvvwicSpeakerTag

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelFrame
    , GoogleCloudVideointelligenceV1p1beta1_LabelFrame
    , googleCloudVideointelligenceV1p1beta1_LabelFrame
    , gcvvlfcTimeOffSet
    , gcvvlfcConfidence

    -- ** GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode
    , GoogleCloudVideointelligenceV1p3beta1_LabelDetectionConfigLabelDetectionMode (..)

    -- ** GoogleCloudVideointelligenceV1beta2_NormalizedVertex
    , GoogleCloudVideointelligenceV1beta2_NormalizedVertex
    , googleCloudVideointelligenceV1beta2_NormalizedVertex
    , gX
    , gY

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
    , googleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation
    , gcvvfdaThumbnail
    , gcvvfdaTracks
    , gcvvfdaVersion

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation
    , googleCloudVideointelligenceV1p3beta1_LabelAnnotation
    , gCategoryEntities
    , gFrames
    , gVersion
    , gSegments
    , gEntity

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    , googleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    , gooFrames
    , gooVersion

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
    , googleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation
    , gooTracks
    , gooSegments
    , gooEntity

    -- ** GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1_FaceDetectionAnnotation
    , googleCloudVideointelligenceV1_FaceDetectionAnnotation
    , gcvvfdacThumbnail
    , gcvvfdacTracks
    , gcvvfdacVersion

    -- ** GoogleCloudVideointelligenceV1p1beta1_Entity
    , GoogleCloudVideointelligenceV1p1beta1_Entity
    , googleCloudVideointelligenceV1p1beta1_Entity
    , gooLanguageCode
    , gooEntityId
    , gooDescription

    -- ** GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    , googleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    , gAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    , googleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    , gAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation
    , googleCloudVideointelligenceV1p1beta1_FaceAnnotation
    , gcvvfacThumbnail
    , gcvvfacFrames
    , gcvvfacSegments

    -- ** GoogleCloudVideointelligenceV1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1_VideoAnnotationResults
    , googleCloudVideointelligenceV1_VideoAnnotationResults
    , gcvvvarShotAnnotations
    , gcvvvarShotLabelAnnotations
    , gcvvvarFaceDetectionAnnotations
    , gcvvvarFaceAnnotations
    , gcvvvarInputURI
    , gcvvvarError
    , gcvvvarShotPresenceLabelAnnotations
    , gcvvvarPersonDetectionAnnotations
    , gcvvvarObjectAnnotations
    , gcvvvarFrameLabelAnnotations
    , gcvvvarSpeechTranscriptions
    , gcvvvarSegmentPresenceLabelAnnotations
    , gcvvvarLogoRecognitionAnnotations
    , gcvvvarSegment
    , gcvvvarTextAnnotations
    , gcvvvarSegmentLabelAnnotations
    , gcvvvarExplicitAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
    , GoogleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
    , googleCloudVideointelligenceV1p3beta1_SpeechTranscriptionConfig
    , gcvvstcSpeechContexts
    , gcvvstcLanguageCode
    , gcvvstcAudioTracks
    , gcvvstcEnableAutomaticPunctuation
    , gcvvstcMaxAlternatives
    , gcvvstcEnableSpeakerDiarization
    , gcvvstcFilterProfanity
    , gcvvstcDiarizationSpeakerCount
    , gcvvstcEnableWordConfidence

    -- ** GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
    , GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark
    , googleCloudVideointelligenceV1p3beta1_DetectedLandmark
    , gcvvdlConfidence
    , gcvvdlPoint
    , gcvvdlName

    -- ** GoogleCloudVideointelligenceV1beta2_FaceFrame
    , GoogleCloudVideointelligenceV1beta2_FaceFrame
    , googleCloudVideointelligenceV1beta2_FaceFrame
    , gooTimeOffSet
    , gooNormalizedBoundingBoxes

    -- ** GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    , googleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    , gcvvotaFrames
    , gcvvotaConfidence
    , gcvvotaVersion
    , gcvvotaTrackId
    , gcvvotaSegment
    , gcvvotaEntity

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
    , googleCloudVideointelligenceV1p3beta1_VideoAnnotationResults
    , gcvvvarsShotAnnotations
    , gcvvvarsShotLabelAnnotations
    , gcvvvarsFaceDetectionAnnotations
    , gcvvvarsFaceAnnotations
    , gcvvvarsCelebrityRecognitionAnnotations
    , gcvvvarsInputURI
    , gcvvvarsError
    , gcvvvarsShotPresenceLabelAnnotations
    , gcvvvarsPersonDetectionAnnotations
    , gcvvvarsObjectAnnotations
    , gcvvvarsFrameLabelAnnotations
    , gcvvvarsSpeechTranscriptions
    , gcvvvarsSegmentPresenceLabelAnnotations
    , gcvvvarsLogoRecognitionAnnotations
    , gcvvvarsSegment
    , gcvvvarsTextAnnotations
    , gcvvvarsSegmentLabelAnnotations
    , gcvvvarsExplicitAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
    , googleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation
    , gcvvpdaTracks
    , gcvvpdaVersion

    -- ** GoogleCloudVideointelligenceV1_DetectedLandmark
    , GoogleCloudVideointelligenceV1_DetectedLandmark
    , googleCloudVideointelligenceV1_DetectedLandmark
    , gcvvdlcConfidence
    , gcvvdlcPoint
    , gcvvdlcName

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
    , googleCloudVideointelligenceV1p3beta1_FaceDetectionConfig
    , gcvvfdcModel
    , gcvvfdcIncludeBoundingBoxes
    , gcvvfdcIncludeAttributes

    -- ** GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
    , googleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation
    , gcvvpdacTracks
    , gcvvpdacVersion

    -- ** GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    , googleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    , gcvvavpsAnnotationProgress

    -- ** GoogleLongrunning_OperationMetadata
    , GoogleLongrunning_OperationMetadata
    , googleLongrunning_OperationMetadata
    , glomAddtional

    -- ** GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame
    , googleCloudVideointelligenceV1beta2_ObjectTrackingFrame
    , gcvvotfcTimeOffSet
    , gcvvotfcNormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1_Track
    , GoogleCloudVideointelligenceV1_Track
    , googleCloudVideointelligenceV1_Track
    , gcvvtConfidence
    , gcvvtAttributes
    , gcvvtSegment
    , gcvvtTimestampedObjects

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelSegment
    , GoogleCloudVideointelligenceV1p1beta1_LabelSegment
    , googleCloudVideointelligenceV1p1beta1_LabelSegment
    , gcvvlsConfidence
    , gcvvlsSegment

    -- ** GoogleCloudVideointelligenceV1p3beta1_SpeechContext
    , GoogleCloudVideointelligenceV1p3beta1_SpeechContext
    , googleCloudVideointelligenceV1p3beta1_SpeechContext
    , gcvvscPhrases

    -- ** GoogleCloudVideointelligenceV1p3beta1_Track
    , GoogleCloudVideointelligenceV1p3beta1_Track
    , googleCloudVideointelligenceV1p3beta1_Track
    , gcvvtcConfidence
    , gcvvtcAttributes
    , gcvvtcSegment
    , gcvvtcTimestampedObjects

    -- ** GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature
    , GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgressFeature (..)

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelFrame
    , GoogleCloudVideointelligenceV1p2beta1_LabelFrame
    , googleCloudVideointelligenceV1p2beta1_LabelFrame
    , ggTimeOffSet
    , ggConfidence

    -- ** GoogleCloudVideointelligenceV1beta2_DetectedAttribute
    , GoogleCloudVideointelligenceV1beta2_DetectedAttribute
    , googleCloudVideointelligenceV1beta2_DetectedAttribute
    , gcvvdaValue
    , gcvvdaConfidence
    , gcvvdaName

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    , googleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    , gcvvvapcFeature
    , gcvvvapcStartTime
    , gcvvvapcInputURI
    , gcvvvapcProgressPercent
    , gcvvvapcUpdateTime
    , gcvvvapcSegment

    -- ** GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
    , googleCloudVideointelligenceV1p3beta1_ExplicitContentFrame
    , gcvvecfcTimeOffSet
    , gcvvecfcPornographyLikelihood

    -- ** GoogleCloudVideointelligenceV1_FaceSegment
    , GoogleCloudVideointelligenceV1_FaceSegment
    , googleCloudVideointelligenceV1_FaceSegment
    , gooSegment

    -- ** GoogleCloudVideointelligenceV1beta2_TextAnnotation
    , GoogleCloudVideointelligenceV1beta2_TextAnnotation
    , googleCloudVideointelligenceV1beta2_TextAnnotation
    , gcvvtacText
    , gcvvtacVersion
    , gcvvtacSegments

    -- ** GoogleCloudVideointelligenceV1p2beta1_Entity
    , GoogleCloudVideointelligenceV1p2beta1_Entity
    , googleCloudVideointelligenceV1p2beta1_Entity
    , gcvvecLanguageCode
    , gcvvecEntityId
    , gcvvecDescription

    -- ** GoogleCloudVideointelligenceV1p1beta1_TextFrame
    , GoogleCloudVideointelligenceV1p1beta1_TextFrame
    , googleCloudVideointelligenceV1p1beta1_TextFrame
    , gcvvtfcRotatedBoundingBox
    , gcvvtfcTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p1beta1_WordInfo
    , GoogleCloudVideointelligenceV1p1beta1_WordInfo
    , googleCloudVideointelligenceV1p1beta1_WordInfo
    , goooStartTime
    , goooConfidence
    , goooEndTime
    , goooWord
    , goooSpeakerTag

    -- ** GoogleCloudVideointelligenceV1beta2_TimestampedObject
    , GoogleCloudVideointelligenceV1beta2_TimestampedObject
    , googleCloudVideointelligenceV1beta2_TimestampedObject
    , gcvvtoTimeOffSet
    , gcvvtoAttributes
    , gcvvtoNormalizedBoundingBox
    , gcvvtoLandmarks

    -- ** GoogleLongrunning_Operation
    , GoogleLongrunning_Operation
    , googleLongrunning_Operation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- ** GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
    , googleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative
    , gcvvsra1Confidence
    , gcvvsra1Words
    , gcvvsra1Transcript

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1_ExplicitContentFrame
    , googleCloudVideointelligenceV1_ExplicitContentFrame
    , goooTimeOffSet
    , goooPornographyLikelihood

    -- ** GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    , GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    , googleCloudVideointelligenceV1p3beta1_AnnotateVideoRequest
    , gcvvavrInputURI
    , gcvvavrVideoContext
    , gcvvavrInputContent
    , gcvvavrFeatures
    , gcvvavrLocationId
    , gcvvavrOutputURI

    -- ** GoogleCloudVideointelligenceV1beta2_VideoSegment
    , GoogleCloudVideointelligenceV1beta2_VideoSegment
    , googleCloudVideointelligenceV1beta2_VideoSegment
    , gStartTimeOffSet
    , gEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceSegment
    , GoogleCloudVideointelligenceV1p3beta1_FaceSegment
    , googleCloudVideointelligenceV1p3beta1_FaceSegment
    , gcvvfscSegment

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature
    , GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgressFeature (..)

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    , googleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    , gcvvvarcShotAnnotations
    , gcvvvarcShotLabelAnnotations
    , gcvvvarcFaceDetectionAnnotations
    , gcvvvarcFaceAnnotations
    , gcvvvarcInputURI
    , gcvvvarcError
    , gcvvvarcShotPresenceLabelAnnotations
    , gcvvvarcPersonDetectionAnnotations
    , gcvvvarcObjectAnnotations
    , gcvvvarcFrameLabelAnnotations
    , gcvvvarcSpeechTranscriptions
    , gcvvvarcSegmentPresenceLabelAnnotations
    , gcvvvarcLogoRecognitionAnnotations
    , gcvvvarcSegment
    , gcvvvarcTextAnnotations
    , gcvvvarcSegmentLabelAnnotations
    , gcvvvarcExplicitAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
    , googleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation
    , gcvvotacFrames
    , gcvvotacConfidence
    , gcvvotacVersion
    , gcvvotacTrackId
    , gcvvotacSegment
    , gcvvotacEntity

    -- ** GoogleCloudVideointelligenceV1p2beta1_FaceFrame
    , GoogleCloudVideointelligenceV1p2beta1_FaceFrame
    , googleCloudVideointelligenceV1p2beta1_FaceFrame
    , gcvvffcTimeOffSet
    , gcvvffcNormalizedBoundingBoxes

    -- ** GoogleCloudVideointelligenceV1beta2_LabelSegment
    , GoogleCloudVideointelligenceV1beta2_LabelSegment
    , googleCloudVideointelligenceV1beta2_LabelSegment
    , gcvvlscConfidence
    , gcvvlscSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
    , GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark
    , googleCloudVideointelligenceV1p2beta1_DetectedLandmark
    , gcvvdl1Confidence
    , gcvvdl1Point
    , gcvvdl1Name

    -- ** GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
    , googleCloudVideointelligenceV1beta2_PersonDetectionAnnotation
    , ggTracks
    , ggVersion

    -- ** GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
    , googleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame
    , gcvvotf1TimeOffSet
    , gcvvotf1NormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation
    , googleCloudVideointelligenceV1_ObjectTrackingAnnotation
    , gcvvota1Frames
    , gcvvota1Confidence
    , gcvvota1Version
    , gcvvota1TrackId
    , gcvvota1Segment
    , gcvvota1Entity

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    , googleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    , gooVertices

    -- ** GoogleCloudVideointelligenceV1beta2_WordInfo
    , GoogleCloudVideointelligenceV1beta2_WordInfo
    , googleCloudVideointelligenceV1beta2_WordInfo
    , gcvvwi1StartTime
    , gcvvwi1Confidence
    , gcvvwi1EndTime
    , gcvvwi1Word
    , gcvvwi1SpeakerTag

    -- ** GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
    , googleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse
    , gooAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_TextAnnotation
    , googleCloudVideointelligenceV1p1beta1_TextAnnotation
    , goooText
    , goooVersion
    , goooSegments

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
    , googleCloudVideointelligenceV1_ExplicitContentAnnotation
    , gcvvecacFrames
    , gcvvecacVersion

    -- ** GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem
    , GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoRequestFeaturesItem (..)

    -- ** GoogleCloudVideointelligenceV1beta2_TextFrame
    , GoogleCloudVideointelligenceV1beta2_TextFrame
    , googleCloudVideointelligenceV1beta2_TextFrame
    , gcvvtf1RotatedBoundingBox
    , gcvvtf1TimeOffSet

    -- ** GoogleCloudVideointelligenceV1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1_AnnotateVideoResponse
    , googleCloudVideointelligenceV1_AnnotateVideoResponse
    , gcvvavrcAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
    , googleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
    , gcvveca1Frames
    , gcvveca1Version

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
    , googleCloudVideointelligenceV1p2beta1_NormalizedVertex
    , gooX
    , gooY

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
    , googleCloudVideointelligenceV1p2beta1_LabelAnnotation
    , gcvvlacCategoryEntities
    , gcvvlacFrames
    , gcvvlacVersion
    , gcvvlacSegments
    , gcvvlacEntity

    -- ** GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    , googleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    , g1Confidence
    , g1Words
    , g1Transcript

    -- ** GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_TextDetectionConfig
    , googleCloudVideointelligenceV1p3beta1_TextDetectionConfig
    , gcvvtdcModel
    , gcvvtdcLanguageHints

    -- ** GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
    , GoogleCloudVideointelligenceV1p1beta1_TimestampedObject
    , googleCloudVideointelligenceV1p1beta1_TimestampedObject
    , gcvvtocTimeOffSet
    , gcvvtocAttributes
    , gcvvtocNormalizedBoundingBox
    , gcvvtocLandmarks

    -- ** GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
    , googleCloudVideointelligenceV1p3beta1_PersonDetectionConfig
    , gcvvpdcIncludePoseLandmarks
    , gcvvpdcIncludeBoundingBoxes
    , gcvvpdcIncludeAttributes

    -- ** GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
    , GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute
    , googleCloudVideointelligenceV1p1beta1_DetectedAttribute
    , gcvvdacValue
    , gcvvdacConfidence
    , gcvvdacName

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoSegment
    , GoogleCloudVideointelligenceV1p1beta1_VideoSegment
    , googleCloudVideointelligenceV1p1beta1_VideoSegment
    , gooStartTimeOffSet
    , gooEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
    , googleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation
    , gcvvfda1Thumbnail
    , gcvvfda1Tracks
    , gcvvfda1Version

    -- ** GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
    , GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute
    , googleCloudVideointelligenceV1p2beta1_DetectedAttribute
    , gcvvda1Value
    , gcvvda1Confidence
    , gcvvda1Name

    -- ** GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation
    , googleCloudVideointelligenceV1_LogoRecognitionAnnotation
    , gcvvlracTracks
    , gcvvlracSegments
    , gcvvlracEntity

    -- ** GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
    , GoogleCloudVideointelligenceV1p2beta1_TimestampedObject
    , googleCloudVideointelligenceV1p2beta1_TimestampedObject
    , gcvvto1TimeOffSet
    , gcvvto1Attributes
    , gcvvto1NormalizedBoundingBox
    , gcvvto1Landmarks

    -- ** GoogleCloudVideointelligenceV1p3beta1_Entity
    , GoogleCloudVideointelligenceV1p3beta1_Entity
    , googleCloudVideointelligenceV1p3beta1_Entity
    , ggLanguageCode
    , ggEntityId
    , ggDescription

    -- ** GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
    , googleCloudVideointelligenceV1p3beta1_ShotChangeDetectionConfig
    , gcvvscdcModel

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
    , googleCloudVideointelligenceV1p1beta1_LabelAnnotation
    , gcvvla1CategoryEntities
    , gcvvla1Frames
    , gcvvla1Version
    , gcvvla1Segments
    , gcvvla1Entity

    -- ** GoogleCloudVideointelligenceV1_LabelFrame
    , GoogleCloudVideointelligenceV1_LabelFrame
    , googleCloudVideointelligenceV1_LabelFrame
    , gcvvlf1TimeOffSet
    , gcvvlf1Confidence

    -- ** GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
    , googleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation
    , g1Thumbnail
    , g1Tracks
    , g1Version

    -- ** GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
    , googleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation
    , gcvvlra1Tracks
    , gcvvlra1Segments
    , gcvvlra1Entity

    -- ** GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    , googleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    , gcvvecf1TimeOffSet
    , gcvvecf1PornographyLikelihood

    -- ** GoogleCloudVideointelligenceV1_Entity
    , GoogleCloudVideointelligenceV1_Entity
    , googleCloudVideointelligenceV1_Entity
    , goooLanguageCode
    , goooEntityId
    , goooDescription

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelFrame
    , GoogleCloudVideointelligenceV1p3beta1_LabelFrame
    , googleCloudVideointelligenceV1p3beta1_LabelFrame
    , goo1TimeOffSet
    , goo1Confidence

    -- ** GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    , googleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    , ggFeature
    , ggStartTime
    , ggInputURI
    , ggProgressPercent
    , ggUpdateTime
    , ggSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature
    , GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgressFeature (..)

    -- ** GoogleCloudVideointelligenceV1beta2_SpeechTranscription
    , GoogleCloudVideointelligenceV1beta2_SpeechTranscription
    , googleCloudVideointelligenceV1beta2_SpeechTranscription
    , gcvvst1Alternatives
    , gcvvst1LanguageCode

    -- ** GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
    , googleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress
    , gooAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation
    , googleCloudVideointelligenceV1p3beta1_FaceAnnotation
    , ggThumbnail
    , ggFrames
    , ggSegments

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    , googleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    , goooShotAnnotations
    , goooShotLabelAnnotations
    , goooFaceDetectionAnnotations
    , goooFaceAnnotations
    , goooInputURI
    , goooError
    , goooShotPresenceLabelAnnotations
    , goooPersonDetectionAnnotations
    , goooObjectAnnotations
    , goooFrameLabelAnnotations
    , goooSpeechTranscriptions
    , goooSegmentPresenceLabelAnnotations
    , goooLogoRecognitionAnnotations
    , goooSegment
    , goooTextAnnotations
    , goooSegmentLabelAnnotations
    , goooExplicitAnnotation

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoContext
    , GoogleCloudVideointelligenceV1p3beta1_VideoContext
    , googleCloudVideointelligenceV1p3beta1_VideoContext
    , gcvvvcFaceDetectionConfig
    , gcvvvcSpeechTranscriptionConfig
    , gcvvvcExplicitContentDetectionConfig
    , gcvvvcObjectTrackingConfig
    , gcvvvcLabelDetectionConfig
    , gcvvvcSegments
    , gcvvvcTextDetectionConfig
    , gcvvvcPersonDetectionConfig
    , gcvvvcShotChangeDetectionConfig

    -- ** GoogleCloudVideointelligenceV1beta2_TextSegment
    , GoogleCloudVideointelligenceV1beta2_TextSegment
    , googleCloudVideointelligenceV1beta2_TextSegment
    , gcvvts1Frames
    , gcvvts1Confidence
    , gcvvts1Segment

    -- ** GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox
    , googleCloudVideointelligenceV1beta2_NormalizedBoundingBox
    , gooBottom
    , gooLeft
    , gooRight
    , gooTop

    -- ** GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
    , GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark
    , googleCloudVideointelligenceV1p1beta1_DetectedLandmark
    , gcvvdl2Confidence
    , gcvvdl2Point
    , gcvvdl2Name

    -- ** GoogleCloudVideointelligenceV1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1_AnnotateVideoProgress
    , googleCloudVideointelligenceV1_AnnotateVideoProgress
    , gcvvavpcAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1_FaceAnnotation
    , GoogleCloudVideointelligenceV1_FaceAnnotation
    , googleCloudVideointelligenceV1_FaceAnnotation
    , gcvvfa1Thumbnail
    , gcvvfa1Frames
    , gcvvfa1Segments

    -- ** GoogleCloudVideointelligenceV1p2beta1_Track
    , GoogleCloudVideointelligenceV1p2beta1_Track
    , googleCloudVideointelligenceV1p2beta1_Track
    , gcvvt1Confidence
    , gcvvt1Attributes
    , gcvvt1Segment
    , gcvvt1TimestampedObjects

    -- ** GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleLongrunning_OperationResponse
    , GoogleLongrunning_OperationResponse
    , googleLongrunning_OperationResponse
    , glorAddtional

    -- ** GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1_NormalizedBoundingPoly
    , googleCloudVideointelligenceV1_NormalizedBoundingPoly
    , gcvvnbpcVertices

    -- ** GoogleCloudVideointelligenceV1_NormalizedVertex
    , GoogleCloudVideointelligenceV1_NormalizedVertex
    , googleCloudVideointelligenceV1_NormalizedVertex
    , gcvvnvcX
    , gcvvnvcY

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    , googleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    , gcvvvap1Feature
    , gcvvvap1StartTime
    , gcvvvap1InputURI
    , gcvvvap1ProgressPercent
    , gcvvvap1UpdateTime
    , gcvvvap1Segment

    -- ** GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
    , GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
    , googleCloudVideointelligenceV1beta2_FaceDetectionAnnotation
    , goo1Thumbnail
    , goo1Tracks
    , goo1Version

    -- ** GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
    , GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex
    , googleCloudVideointelligenceV1p3beta1_NormalizedVertex
    , ggX
    , ggY

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextFrame
    , GoogleCloudVideointelligenceV1p2beta1_TextFrame
    , googleCloudVideointelligenceV1p2beta1_TextFrame
    , g1RotatedBoundingBox
    , g1TimeOffSet

    -- ** GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
    , googleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly
    , ggVertices

    -- ** GoogleCloudVideointelligenceV1beta2_LabelAnnotation
    , GoogleCloudVideointelligenceV1beta2_LabelAnnotation
    , googleCloudVideointelligenceV1beta2_LabelAnnotation
    , gcvvla2CategoryEntities
    , gcvvla2Frames
    , gcvvla2Version
    , gcvvla2Segments
    , gcvvla2Entity

    -- ** GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
    , googleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse
    , gcvvsavrError
    , gcvvsavrAnnotationResults
    , gcvvsavrAnnotationResultsURI

    -- ** GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
    , GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
    , googleCloudVideointelligenceV1p1beta1_SpeechTranscription
    , g1Alternatives
    , g1LanguageCode

    -- ** GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
    , googleCloudVideointelligenceV1beta2_VideoAnnotationResults
    , gcvvvar1ShotAnnotations
    , gcvvvar1ShotLabelAnnotations
    , gcvvvar1FaceDetectionAnnotations
    , gcvvvar1FaceAnnotations
    , gcvvvar1InputURI
    , gcvvvar1Error
    , gcvvvar1ShotPresenceLabelAnnotations
    , gcvvvar1PersonDetectionAnnotations
    , gcvvvar1ObjectAnnotations
    , gcvvvar1FrameLabelAnnotations
    , gcvvvar1SpeechTranscriptions
    , gcvvvar1SegmentPresenceLabelAnnotations
    , gcvvvar1LogoRecognitionAnnotations
    , gcvvvar1Segment
    , gcvvvar1TextAnnotations
    , gcvvvar1SegmentLabelAnnotations
    , gcvvvar1ExplicitAnnotation

    -- ** GoogleCloudVideointelligenceV1p3beta1_FaceFrame
    , GoogleCloudVideointelligenceV1p3beta1_FaceFrame
    , googleCloudVideointelligenceV1p3beta1_FaceFrame
    , gcvvff1TimeOffSet
    , gcvvff1NormalizedBoundingBoxes

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelSegment
    , GoogleCloudVideointelligenceV1p2beta1_LabelSegment
    , googleCloudVideointelligenceV1p2beta1_LabelSegment
    , gcvvls1Confidence
    , gcvvls1Segment

    -- ** GoogleCloudVideointelligenceV1beta2_DetectedLandmark
    , GoogleCloudVideointelligenceV1beta2_DetectedLandmark
    , googleCloudVideointelligenceV1beta2_DetectedLandmark
    , g2Confidence
    , g2Point
    , g2Name

    -- ** GoogleCloudVideointelligenceV1_FaceFrame
    , GoogleCloudVideointelligenceV1_FaceFrame
    , googleCloudVideointelligenceV1_FaceFrame
    , gcvvff2TimeOffSet
    , gcvvff2NormalizedBoundingBoxes

    -- ** GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
    , googleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
    , gcvvnbbcBottom
    , gcvvnbbcLeft
    , gcvvnbbcRight
    , gcvvnbbcTop

    -- ** GoogleCloudVideointelligenceV1p1beta1_TextSegment
    , GoogleCloudVideointelligenceV1p1beta1_TextSegment
    , googleCloudVideointelligenceV1p1beta1_TextSegment
    , gcvvts2Frames
    , gcvvts2Confidence
    , gcvvts2Segment

    -- ** GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
    , GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack
    , googleCloudVideointelligenceV1p3beta1_CelebrityTrack
    , gcvvctCelebrities
    , gcvvctFaceTrack

    -- ** GoogleCloudVideointelligenceV1beta2_Track
    , GoogleCloudVideointelligenceV1beta2_Track
    , googleCloudVideointelligenceV1beta2_Track
    , gcvvt2Confidence
    , gcvvt2Attributes
    , gcvvt2Segment
    , gcvvt2TimestampedObjects

    -- ** GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
    , googleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame
    , gcvvotf2TimeOffSet
    , gcvvotf2NormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
    , googleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation
    , gcvvota2Frames
    , gcvvota2Confidence
    , gcvvota2Version
    , gcvvota2TrackId
    , gcvvota2Segment
    , gcvvota2Entity

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    , googleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    , ggBottom
    , ggLeft
    , ggRight
    , ggTop

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextSegment
    , GoogleCloudVideointelligenceV1p2beta1_TextSegment
    , googleCloudVideointelligenceV1p2beta1_TextSegment
    , goo2Frames
    , goo2Confidence
    , goo2Segment

    -- ** GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
    , GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
    , googleCloudVideointelligenceV1p2beta1_SpeechTranscription
    , goo1Alternatives
    , goo1LanguageCode

    -- ** GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature
    , GoogleCloudVideointelligenceV1_VideoAnnotationProgressFeature (..)

    -- ** GoogleRpc_Status
    , GoogleRpc_Status
    , googleRpc_Status
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GoogleCloudVideointelligenceV1_ObjectTrackingFrame
    , GoogleCloudVideointelligenceV1_ObjectTrackingFrame
    , googleCloudVideointelligenceV1_ObjectTrackingFrame
    , g2TimeOffSet
    , g2NormalizedBoundingBox

    -- ** GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation
    , googleCloudVideointelligenceV1p2beta1_FaceAnnotation
    , gcvvfa2Thumbnail
    , gcvvfa2Frames
    , gcvvfa2Segments

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature
    , GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgressFeature (..)

    -- ** GoogleCloudVideointelligenceV1beta2_FaceSegment
    , GoogleCloudVideointelligenceV1beta2_FaceSegment
    , googleCloudVideointelligenceV1beta2_FaceSegment
    , gcvvfs1Segment

    -- ** GoogleCloudVideointelligenceV1p3beta1_VideoSegment
    , GoogleCloudVideointelligenceV1p3beta1_VideoSegment
    , googleCloudVideointelligenceV1p3beta1_VideoSegment
    , gcvvvscStartTimeOffSet
    , gcvvvscEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1_TimestampedObject
    , GoogleCloudVideointelligenceV1_TimestampedObject
    , googleCloudVideointelligenceV1_TimestampedObject
    , gcvvto2TimeOffSet
    , gcvvto2Attributes
    , gcvvto2NormalizedBoundingBox
    , gcvvto2Landmarks

    -- ** GoogleCloudVideointelligenceV1_DetectedAttribute
    , GoogleCloudVideointelligenceV1_DetectedAttribute
    , googleCloudVideointelligenceV1_DetectedAttribute
    , gcvvda2Value
    , gcvvda2Confidence
    , gcvvda2Name

    -- ** GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
    , googleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation
    , gcvvlra2Tracks
    , gcvvlra2Segments
    , gcvvlra2Entity

    -- ** GoogleCloudVideointelligenceV1_TextAnnotation
    , GoogleCloudVideointelligenceV1_TextAnnotation
    , googleCloudVideointelligenceV1_TextAnnotation
    , gcvvta1Text
    , gcvvta1Version
    , gcvvta1Segments

    -- ** GoogleCloudVideointelligenceV1_VideoSegment
    , GoogleCloudVideointelligenceV1_VideoSegment
    , googleCloudVideointelligenceV1_VideoSegment
    , ggStartTimeOffSet
    , ggEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
    , GoogleCloudVideointelligenceV1p3beta1_TimestampedObject
    , googleCloudVideointelligenceV1p3beta1_TimestampedObject
    , goo2TimeOffSet
    , goo2Attributes
    , goo2NormalizedBoundingBox
    , goo2Landmarks

    -- ** GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    , googleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    , gcvveca2Frames
    , gcvveca2Version

    -- ** GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
    , GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute
    , googleCloudVideointelligenceV1p3beta1_DetectedAttribute
    , gcvvda3Value
    , gcvvda3Confidence
    , gcvvda3Name

    -- ** GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_TextAnnotation
    , googleCloudVideointelligenceV1p3beta1_TextAnnotation
    , gcvvta2Text
    , gcvvta2Version
    , gcvvta2Segments

    -- ** GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    , googleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    , ggAnnotationResults

    -- ** GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
    , googleCloudVideointelligenceV1beta2_ExplicitContentFrame
    , gcvvecf2TimeOffSet
    , gcvvecf2PornographyLikelihood

    -- ** GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
    , GoogleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
    , googleCloudVideointelligenceV1p3beta1_ExplicitContentDetectionConfig
    , gcvvecdcModel

    -- ** GoogleCloudVideointelligenceV1p1beta1_Track
    , GoogleCloudVideointelligenceV1p1beta1_Track
    , googleCloudVideointelligenceV1p1beta1_Track
    , gcvvt3Confidence
    , gcvvt3Attributes
    , gcvvt3Segment
    , gcvvt3TimestampedObjects

    -- ** GoogleCloudVideointelligenceV1p3beta1_LabelSegment
    , GoogleCloudVideointelligenceV1p3beta1_LabelSegment
    , googleCloudVideointelligenceV1p3beta1_LabelSegment
    , gcvvls2Confidence
    , gcvvls2Segment

    -- ** GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
    , googleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation
    , gcvvpda1Tracks
    , gcvvpda1Version

    -- ** GoogleCloudVideointelligenceV1_LabelSegment
    , GoogleCloudVideointelligenceV1_LabelSegment
    , googleCloudVideointelligenceV1_LabelSegment
    , gcvvls3Confidence
    , gcvvls3Segment

    -- ** GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
    , googleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation
    , gcvvota3Frames
    , gcvvota3Confidence
    , gcvvota3Version
    , gcvvota3TrackId
    , gcvvota3Segment
    , gcvvota3Entity

    -- ** GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
    , GoogleCloudVideointelligenceV1_PersonDetectionAnnotation
    , googleCloudVideointelligenceV1_PersonDetectionAnnotation
    , gcvvpda2Tracks
    , gcvvpda2Version
    ) where

import Network.Google.Prelude
import Network.Google.Resource.VideoIntelligence.Videos.Annotate
import Network.Google.VideoIntelligence.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Video Intelligence API service.
type VideoIntelligenceAPI = VideosAnnotateResource
