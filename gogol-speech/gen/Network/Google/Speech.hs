{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Speech
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Converts audio to text by applying powerful neural network models.
--
-- /See:/ <https://cloud.google.com/speech-to-text/docs/quickstart-protocol Cloud Speech API Reference>
module Network.Google.Speech
    (
    -- * Service Configuration
      speechService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , SpeechAPI

    -- * Resources

    -- ** speech.operations.get
    , module Network.Google.Resource.Speech.Operations.Get

    -- ** speech.operations.list
    , module Network.Google.Resource.Speech.Operations.List

    -- ** speech.projects.locations.operations.get
    , module Network.Google.Resource.Speech.Projects.Locations.Operations.Get

    -- ** speech.projects.locations.operations.list
    , module Network.Google.Resource.Speech.Projects.Locations.Operations.List

    -- ** speech.projects.operations.manualRecognitionTasks.get
    , module Network.Google.Resource.Speech.Projects.Operations.ManualRecognitionTasks.Get

    -- ** speech.speech.longrunningrecognize
    , module Network.Google.Resource.Speech.Speech.Longrunningrecognize

    -- ** speech.speech.recognize
    , module Network.Google.Resource.Speech.Speech.Recognize

    -- * Types

    -- ** LongRunningRecognizeMetadata
    , LongRunningRecognizeMetadata
    , longRunningRecognizeMetadata
    , lrrmStartTime
    , lrrmProgressPercent
    , lrrmLastUpdateTime

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** SpeechContext
    , SpeechContext
    , speechContext
    , scPhrases

    -- ** RecognitionMetadataOriginalMediaType
    , RecognitionMetadataOriginalMediaType (..)

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** RecognitionMetadata
    , RecognitionMetadata
    , recognitionMetadata
    , rmAudioTopic
    , rmInteractionType
    , rmOriginalMediaType
    , rmOriginalMimeType
    , rmIndustryNaicsCodeOfAudio
    , rmObfuscatedId
    , rmRecordingDeviceName
    , rmRecordingDeviceType
    , rmMicrophoneDistance

    -- ** RecognizeRequest
    , RecognizeRequest
    , recognizeRequest
    , rrConfig
    , rrAudio

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** SpeechRecognitionAlternative
    , SpeechRecognitionAlternative
    , speechRecognitionAlternative
    , sraConfidence
    , sraWords
    , sraTranscript

    -- ** WordInfo
    , WordInfo
    , wordInfo
    , wiStartTime
    , wiConfidence
    , wiEndTime
    , wiWord
    , wiSpeakerTag

    -- ** RecognitionMetadataInteractionType
    , RecognitionMetadataInteractionType (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** SpeechRecognitionResult
    , SpeechRecognitionResult
    , speechRecognitionResult
    , srrAlternatives
    , srrLanguageCode
    , srrChannelTag

    -- ** RecognitionAudio
    , RecognitionAudio
    , recognitionAudio
    , raURI
    , raContent

    -- ** RecognizeResponse
    , RecognizeResponse
    , recognizeResponse
    , rrResults

    -- ** RecognitionMetadataRecordingDeviceType
    , RecognitionMetadataRecordingDeviceType (..)

    -- ** RecognitionMetadataMicrophoneDistance
    , RecognitionMetadataMicrophoneDistance (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** LongRunningRecognizeResponse
    , LongRunningRecognizeResponse
    , longRunningRecognizeResponse
    , lrrrResults

    -- ** RecognitionConfig
    , RecognitionConfig
    , recognitionConfig
    , rcEnableWordTimeOffSets
    , rcSpeechContexts
    , rcLanguageCode
    , rcDiarizationConfig
    , rcSampleRateHertz
    , rcEnableAutomaticPunctuation
    , rcMaxAlternatives
    , rcAudioChannelCount
    , rcEnableSeparateRecognitionPerChannel
    , rcModel
    , rcEnableSpeakerDiarization
    , rcMetadata
    , rcUseEnhanced
    , rcProfanityFilter
    , rcDiarizationSpeakerCount
    , rcEncoding
    , rcAlternativeLanguageCodes
    , rcEnableWordConfidence

    -- ** LongRunningRecognizeRequest
    , LongRunningRecognizeRequest
    , longRunningRecognizeRequest
    , lrrrConfig
    , lrrrAudio

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** RecognitionConfigEncoding
    , RecognitionConfigEncoding (..)

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** SpeakerDiarizationConfig
    , SpeakerDiarizationConfig
    , speakerDiarizationConfig
    , sdcMinSpeakerCount
    , sdcMaxSpeakerCount
    , sdcEnableSpeakerDiarization
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Speech.Operations.Get
import           Network.Google.Resource.Speech.Operations.List
import           Network.Google.Resource.Speech.Projects.Locations.Operations.Get
import           Network.Google.Resource.Speech.Projects.Locations.Operations.List
import           Network.Google.Resource.Speech.Projects.Operations.ManualRecognitionTasks.Get
import           Network.Google.Resource.Speech.Speech.Longrunningrecognize
import           Network.Google.Resource.Speech.Speech.Recognize
import           Network.Google.Speech.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Speech API service.
type SpeechAPI =
     SpeechRecognizeResource :<|>
       SpeechLongrunningrecognizeResource
       :<|> OperationsListResource
       :<|> OperationsGetResource
       :<|>
       ProjectsOperationsManualRecognitionTasksGetResource
       :<|> ProjectsLocationsOperationsListResource
       :<|> ProjectsLocationsOperationsGetResource
