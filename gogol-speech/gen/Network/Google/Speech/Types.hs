{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Speech.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Speech.Types
    (
    -- * Service Configuration
      speechService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * LongRunningRecognizeMetadata
    , LongRunningRecognizeMetadata
    , longRunningRecognizeMetadata
    , lrrmStartTime
    , lrrmProgressPercent
    , lrrmLastUpdateTime

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * SpeechContext
    , SpeechContext
    , speechContext
    , scPhrases

    -- * RecognitionMetadataOriginalMediaType
    , RecognitionMetadataOriginalMediaType (..)

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * RecognitionMetadata
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

    -- * RecognizeRequest
    , RecognizeRequest
    , recognizeRequest
    , rrConfig
    , rrAudio

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * SpeechRecognitionAlternative
    , SpeechRecognitionAlternative
    , speechRecognitionAlternative
    , sraConfidence
    , sraWords
    , sraTranscript

    -- * WordInfo
    , WordInfo
    , wordInfo
    , wiStartTime
    , wiConfidence
    , wiEndTime
    , wiWord
    , wiSpeakerTag

    -- * RecognitionMetadataInteractionType
    , RecognitionMetadataInteractionType (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SpeechRecognitionResult
    , SpeechRecognitionResult
    , speechRecognitionResult
    , srrAlternatives
    , srrLanguageCode
    , srrChannelTag

    -- * RecognitionAudio
    , RecognitionAudio
    , recognitionAudio
    , raURI
    , raContent

    -- * RecognizeResponse
    , RecognizeResponse
    , recognizeResponse
    , rrResults

    -- * RecognitionMetadataRecordingDeviceType
    , RecognitionMetadataRecordingDeviceType (..)

    -- * RecognitionMetadataMicrophoneDistance
    , RecognitionMetadataMicrophoneDistance (..)

    -- * Xgafv
    , Xgafv (..)

    -- * LongRunningRecognizeResponse
    , LongRunningRecognizeResponse
    , longRunningRecognizeResponse
    , lrrrResults

    -- * RecognitionConfig
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

    -- * LongRunningRecognizeRequest
    , LongRunningRecognizeRequest
    , longRunningRecognizeRequest
    , lrrrConfig
    , lrrrAudio

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * RecognitionConfigEncoding
    , RecognitionConfigEncoding (..)

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * SpeakerDiarizationConfig
    , SpeakerDiarizationConfig
    , speakerDiarizationConfig
    , sdcMinSpeakerCount
    , sdcMaxSpeakerCount
    , sdcEnableSpeakerDiarization
    ) where

import           Network.Google.Prelude
import           Network.Google.Speech.Types.Product
import           Network.Google.Speech.Types.Sum

-- | Default request referring to version 'v1p1beta1' of the Cloud Speech API. This contains the host and root path used as a starting point for constructing service requests.
speechService :: ServiceConfig
speechService
  = defaultService (ServiceId "speech:v1p1beta1")
      "speech.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
