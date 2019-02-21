{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.VideoIntelligence
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects objects, explicit content, and scene changes in videos. It also
-- specifies the region for annotation and transcribes speech to text.
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

    -- ** GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative
    , googleCloudVideointelligenceV1_SpeechRecognitionAlternative
    , gcvvsraConfidence
    , gcvvsraWords
    , gcvvsraTranscript

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

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfigLabelDetectionMode
    , GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfigLabelDetectionMode (..)

    -- ** GoogleCloudVideointelligenceV1beta2_Entity
    , GoogleCloudVideointelligenceV1beta2_Entity
    , googleCloudVideointelligenceV1beta2_Entity
    , gcvveLanguageCode
    , gcvveEntityId
    , gcvveDescription

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_TextAnnotation
    , googleCloudVideointelligenceV1p2beta1_TextAnnotation
    , gcvvtaText
    , gcvvtaSegments

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoSegment
    , GoogleCloudVideointelligenceV1p2beta1_VideoSegment
    , googleCloudVideointelligenceV1p2beta1_VideoSegment
    , gcvvvsStartTimeOffSet
    , gcvvvsEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1_VideoAnnotationProgress
    , googleCloudVideointelligenceV1_VideoAnnotationProgress
    , gcvvvapStartTime
    , gcvvvapInputURI
    , gcvvvapProgressPercent
    , gcvvvapUpdateTime

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig
    , googleCloudVideointelligenceV1p2beta1_ExplicitContentDetectionConfig
    , gcvvecdcModel

    -- ** GoogleCloudVideointelligenceV1beta2_LabelFrame
    , GoogleCloudVideointelligenceV1beta2_LabelFrame
    , googleCloudVideointelligenceV1beta2_LabelFrame
    , gcvvlfTimeOffSet
    , gcvvlfConfidence

    -- ** GoogleCloudVideointelligenceV1_SpeechTranscription
    , GoogleCloudVideointelligenceV1_SpeechTranscription
    , googleCloudVideointelligenceV1_SpeechTranscription
    , gcvvstAlternatives
    , gcvvstLanguageCode

    -- ** GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    , googleCloudVideointelligenceV1beta2_AnnotateVideoProgress
    , gcvvavpAnnotationProgress

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
    , gcvvlaSegments
    , gcvvlaEntity

    -- ** GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    , googleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative
    , gConfidence
    , gWords
    , gTranscript

    -- ** GoogleCloudVideointelligenceV1p2beta1_WordInfo
    , GoogleCloudVideointelligenceV1p2beta1_WordInfo
    , googleCloudVideointelligenceV1p2beta1_WordInfo
    , gooStartTime
    , gooConfidence
    , gooEndTime
    , gooWord
    , gooSpeakerTag

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelFrame
    , GoogleCloudVideointelligenceV1p1beta1_LabelFrame
    , googleCloudVideointelligenceV1p1beta1_LabelFrame
    , gcvvlfcTimeOffSet
    , gcvvlfcConfidence

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig
    , GoogleCloudVideointelligenceV1p2beta1_TextDetectionConfig
    , googleCloudVideointelligenceV1p2beta1_TextDetectionConfig
    , gcvvtdcLanguageHints

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    , googleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation
    , gFrames

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p1beta1_Entity
    , GoogleCloudVideointelligenceV1p1beta1_Entity
    , googleCloudVideointelligenceV1p1beta1_Entity
    , gLanguageCode
    , gEntityId
    , gDescription

    -- ** GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    , googleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse
    , gAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    , googleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress
    , gAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1_VideoAnnotationResults
    , googleCloudVideointelligenceV1_VideoAnnotationResults
    , gcvvvarShotAnnotations
    , gcvvvarShotLabelAnnotations
    , gcvvvarInputURI
    , gcvvvarError
    , gcvvvarFrameLabelAnnotations
    , gcvvvarSpeechTranscriptions
    , gcvvvarSegmentLabelAnnotations
    , gcvvvarExplicitAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    , googleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation
    , gcvvotaFrames
    , gcvvotaConfidence
    , gcvvotaTrackId
    , gcvvotaSegment
    , gcvvotaEntity

    -- ** GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    , googleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress
    , gcvvavpsAnnotationProgress

    -- ** GoogleLongrunning_OperationMetadata
    , GoogleLongrunning_OperationMetadata
    , googleLongrunning_OperationMetadata
    , glomAddtional

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelSegment
    , GoogleCloudVideointelligenceV1p1beta1_LabelSegment
    , googleCloudVideointelligenceV1p1beta1_LabelSegment
    , gcvvlsConfidence
    , gcvvlsSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelFrame
    , GoogleCloudVideointelligenceV1p2beta1_LabelFrame
    , googleCloudVideointelligenceV1p2beta1_LabelFrame
    , ggTimeOffSet
    , ggConfidence

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    , googleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress
    , gStartTime
    , gInputURI
    , gProgressPercent
    , gUpdateTime

    -- ** GoogleCloudVideointelligenceV1p2beta1_Entity
    , GoogleCloudVideointelligenceV1p2beta1_Entity
    , googleCloudVideointelligenceV1p2beta1_Entity
    , gooLanguageCode
    , gooEntityId
    , gooDescription

    -- ** GoogleCloudVideointelligenceV1p1beta1_WordInfo
    , GoogleCloudVideointelligenceV1p1beta1_WordInfo
    , googleCloudVideointelligenceV1p1beta1_WordInfo
    , gcvvwicStartTime
    , gcvvwicConfidence
    , gcvvwicEndTime
    , gcvvwicWord
    , gcvvwicSpeakerTag

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
    , gcvvsracConfidence
    , gcvvsracWords
    , gcvvsracTranscript

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1_ExplicitContentFrame
    , googleCloudVideointelligenceV1_ExplicitContentFrame
    , gTimeOffSet
    , gPornographyLikelihood

    -- ** GoogleCloudVideointelligenceV1beta2_VideoSegment
    , GoogleCloudVideointelligenceV1beta2_VideoSegment
    , googleCloudVideointelligenceV1beta2_VideoSegment
    , gStartTimeOffSet
    , gEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    , googleCloudVideointelligenceV1p2beta1_VideoAnnotationResults
    , gcvvvarsShotAnnotations
    , gcvvvarsShotLabelAnnotations
    , gcvvvarsInputURI
    , gcvvvarsError
    , gcvvvarsObjectAnnotations
    , gcvvvarsFrameLabelAnnotations
    , gcvvvarsSpeechTranscriptions
    , gcvvvarsTextAnnotations
    , gcvvvarsSegmentLabelAnnotations
    , gcvvvarsExplicitAnnotation

    -- ** GoogleCloudVideointelligenceV1beta2_LabelSegment
    , GoogleCloudVideointelligenceV1beta2_LabelSegment
    , googleCloudVideointelligenceV1beta2_LabelSegment
    , gcvvlscConfidence
    , gcvvlscSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    , googleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly
    , gcvvnbpVertices

    -- ** GoogleCloudVideointelligenceV1beta2_WordInfo
    , GoogleCloudVideointelligenceV1beta2_WordInfo
    , googleCloudVideointelligenceV1beta2_WordInfo
    , goooStartTime
    , goooConfidence
    , goooEndTime
    , goooWord
    , goooSpeakerTag

    -- ** GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1_ExplicitContentAnnotation
    , googleCloudVideointelligenceV1_ExplicitContentAnnotation
    , gooFrames

    -- ** GoogleCloudVideointelligenceV1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1_AnnotateVideoResponse
    , googleCloudVideointelligenceV1_AnnotateVideoResponse
    , gooAnnotationResults

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
    , googleCloudVideointelligenceV1p2beta1_NormalizedVertex
    , gcvvnvX
    , gcvvnvY

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
    , GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation
    , googleCloudVideointelligenceV1p2beta1_LabelAnnotation
    , gcvvlacCategoryEntities
    , gcvvlacFrames
    , gcvvlacSegments
    , gcvvlacEntity

    -- ** GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    , GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    , googleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative
    , gcvvsra1Confidence
    , gcvvsra1Words
    , gcvvsra1Transcript

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoSegment
    , GoogleCloudVideointelligenceV1p1beta1_VideoSegment
    , googleCloudVideointelligenceV1p1beta1_VideoSegment
    , gooStartTimeOffSet
    , gooEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation
    , googleCloudVideointelligenceV1p1beta1_LabelAnnotation
    , ggCategoryEntities
    , ggFrames
    , ggSegments
    , ggEntity

    -- ** GoogleCloudVideointelligenceV1_LabelFrame
    , GoogleCloudVideointelligenceV1_LabelFrame
    , googleCloudVideointelligenceV1_LabelFrame
    , gcvvlf1TimeOffSet
    , gcvvlf1Confidence

    -- ** GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest
    , GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest
    , googleCloudVideointelligenceV1p2beta1_AnnotateVideoRequest
    , gcvvavrInputURI
    , gcvvavrVideoContext
    , gcvvavrInputContent
    , gcvvavrFeatures
    , gcvvavrLocationId
    , gcvvavrOutputURI

    -- ** GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    , googleCloudVideointelligenceV1p2beta1_ExplicitContentFrame
    , gooTimeOffSet
    , gooPornographyLikelihood

    -- ** GoogleCloudVideointelligenceV1_Entity
    , GoogleCloudVideointelligenceV1_Entity
    , googleCloudVideointelligenceV1_Entity
    , gcvvecLanguageCode
    , gcvvecEntityId
    , gcvvecDescription

    -- ** GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    , googleCloudVideointelligenceV1beta2_VideoAnnotationProgress
    , gcvvvapsStartTime
    , gcvvvapsInputURI
    , gcvvvapsProgressPercent
    , gcvvvapsUpdateTime

    -- ** GoogleCloudVideointelligenceV1beta2_SpeechTranscription
    , GoogleCloudVideointelligenceV1beta2_SpeechTranscription
    , googleCloudVideointelligenceV1beta2_SpeechTranscription
    , gcvvstcAlternatives
    , gcvvstcLanguageCode

    -- ** GoogleCloudVideointelligenceV1p2beta1_SpeechContext
    , GoogleCloudVideointelligenceV1p2beta1_SpeechContext
    , googleCloudVideointelligenceV1p2beta1_SpeechContext
    , gcvvscPhrases

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    , googleCloudVideointelligenceV1p1beta1_VideoAnnotationResults
    , gooShotAnnotations
    , gooShotLabelAnnotations
    , gooInputURI
    , gooError
    , gooFrameLabelAnnotations
    , gooSpeechTranscriptions
    , gooSegmentLabelAnnotations
    , gooExplicitAnnotation

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleCloudVideointelligenceV1_AnnotateVideoProgress
    , GoogleCloudVideointelligenceV1_AnnotateVideoProgress
    , googleCloudVideointelligenceV1_AnnotateVideoProgress
    , gooAnnotationProgress

    -- ** GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood
    , GoogleCloudVideointelligenceV1beta2_ExplicitContentFramePornographyLikelihood (..)

    -- ** GoogleLongrunning_OperationResponse
    , GoogleLongrunning_OperationResponse
    , googleLongrunning_OperationResponse
    , glorAddtional

    -- ** GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    , GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    , googleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress
    , gcvvvapcStartTime
    , gcvvvapcInputURI
    , gcvvvapcProgressPercent
    , gcvvvapcUpdateTime

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextFrame
    , GoogleCloudVideointelligenceV1p2beta1_TextFrame
    , googleCloudVideointelligenceV1p2beta1_TextFrame
    , gcvvtfRotatedBoundingBox
    , gcvvtfTimeOffSet

    -- ** GoogleCloudVideointelligenceV1beta2_LabelAnnotation
    , GoogleCloudVideointelligenceV1beta2_LabelAnnotation
    , googleCloudVideointelligenceV1beta2_LabelAnnotation
    , goooCategoryEntities
    , goooFrames
    , goooSegments
    , goooEntity

    -- ** GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
    , GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription
    , googleCloudVideointelligenceV1p1beta1_SpeechTranscription
    , ggAlternatives
    , ggLanguageCode

    -- ** GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
    , GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults
    , googleCloudVideointelligenceV1beta2_VideoAnnotationResults
    , gcvvvarcShotAnnotations
    , gcvvvarcShotLabelAnnotations
    , gcvvvarcInputURI
    , gcvvvarcError
    , gcvvvarcFrameLabelAnnotations
    , gcvvvarcSpeechTranscriptions
    , gcvvvarcSegmentLabelAnnotations
    , gcvvvarcExplicitAnnotation

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelSegment
    , GoogleCloudVideointelligenceV1p2beta1_LabelSegment
    , googleCloudVideointelligenceV1p2beta1_LabelSegment
    , gcvvls1Confidence
    , gcvvls1Segment

    -- ** GoogleCloudVideointelligenceV1p2beta1_VideoContext
    , GoogleCloudVideointelligenceV1p2beta1_VideoContext
    , googleCloudVideointelligenceV1p2beta1_VideoContext
    , gcvvvcSpeechTranscriptionConfig
    , gcvvvcExplicitContentDetectionConfig
    , gcvvvcLabelDetectionConfig
    , gcvvvcSegments
    , gcvvvcTextDetectionConfig
    , gcvvvcShotChangeDetectionConfig

    -- ** GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    , GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    , googleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox
    , gcvvnbbBottom
    , gcvvnbbLeft
    , gcvvnbbRight
    , gcvvnbbTop

    -- ** GoogleCloudVideointelligenceV1p2beta1_TextSegment
    , GoogleCloudVideointelligenceV1p2beta1_TextSegment
    , googleCloudVideointelligenceV1p2beta1_TextSegment
    , gcvvtsFrames
    , gcvvtsConfidence
    , gcvvtsSegment

    -- ** GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
    , GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription
    , googleCloudVideointelligenceV1p2beta1_SpeechTranscription
    , goooAlternatives
    , goooLanguageCode

    -- ** GoogleRpc_Status
    , GoogleRpc_Status
    , googleRpc_Status
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig
    , GoogleCloudVideointelligenceV1p2beta1_LabelDetectionConfig
    , googleCloudVideointelligenceV1p2beta1_LabelDetectionConfig
    , gcvvldcLabelDetectionMode
    , gcvvldcStationaryCamera
    , gcvvldcModel

    -- ** GoogleCloudVideointelligenceV1_VideoSegment
    , GoogleCloudVideointelligenceV1_VideoSegment
    , googleCloudVideointelligenceV1_VideoSegment
    , gcvvvscStartTimeOffSet
    , gcvvvscEndTimeOffSet

    -- ** GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    , GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    , googleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation
    , gcvvecacFrames

    -- ** GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig
    , GoogleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig
    , googleCloudVideointelligenceV1p2beta1_ShotChangeDetectionConfig
    , gcvvscdcModel

    -- ** GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    , GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    , googleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse
    , gcvvavrcAnnotationResults

    -- ** GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
    , GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame
    , googleCloudVideointelligenceV1beta2_ExplicitContentFrame
    , gcvvecfcTimeOffSet
    , gcvvecfcPornographyLikelihood

    -- ** GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig
    , GoogleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig
    , googleCloudVideointelligenceV1p2beta1_SpeechTranscriptionConfig
    , gcvvstccSpeechContexts
    , gcvvstccLanguageCode
    , gcvvstccAudioTracks
    , gcvvstccEnableAutomaticPunctuation
    , gcvvstccMaxAlternatives
    , gcvvstccEnableSpeakerDiarization
    , gcvvstccFilterProfanity
    , gcvvstccDiarizationSpeakerCount
    , gcvvstccEnableWordConfidence

    -- ** GoogleCloudVideointelligenceV1_LabelSegment
    , GoogleCloudVideointelligenceV1_LabelSegment
    , googleCloudVideointelligenceV1_LabelSegment
    , g2Confidence
    , g2Segment
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.VideoIntelligence.Videos.Annotate
import           Network.Google.VideoIntelligence.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Video Intelligence API service.
type VideoIntelligenceAPI = VideosAnnotateResource
