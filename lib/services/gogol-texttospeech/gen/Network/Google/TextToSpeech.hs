{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.TextToSpeech
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synthesizes natural-sounding speech by applying powerful neural network
-- models.
--
-- /See:/ <https://cloud.google.com/text-to-speech/ Cloud Text-to-Speech API Reference>
module Network.Google.TextToSpeech
    (
    -- * Service Configuration
      textToSpeechService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , TextToSpeechAPI

    -- * Resources

    -- ** texttospeech.text.synthesize
    , module Network.Google.Resource.TextToSpeech.Text.Synthesize

    -- ** texttospeech.voices.list
    , module Network.Google.Resource.TextToSpeech.Voices.List

    -- * Types

    -- ** AudioConfig
    , AudioConfig
    , audioConfig
    , acVolumeGainDB
    , acSampleRateHertz
    , acEffectsProFileId
    , acAudioEncoding
    , acSpeakingRate
    , acPitch

    -- ** VoiceSelectionParams
    , VoiceSelectionParams
    , voiceSelectionParams
    , vspLanguageCode
    , vspSsmlGender
    , vspName

    -- ** SynthesizeSpeechRequest
    , SynthesizeSpeechRequest
    , synthesizeSpeechRequest
    , ssrAudioConfig
    , ssrInput
    , ssrVoice

    -- ** ListVoicesResponse
    , ListVoicesResponse
    , listVoicesResponse
    , lvrVoices

    -- ** VoiceSelectionParamsSsmlGender
    , VoiceSelectionParamsSsmlGender (..)

    -- ** SynthesisInput
    , SynthesisInput
    , synthesisInput
    , siText
    , siSsml

    -- ** Xgafv
    , Xgafv (..)

    -- ** VoiceSsmlGender
    , VoiceSsmlGender (..)

    -- ** SynthesizeSpeechResponse
    , SynthesizeSpeechResponse
    , synthesizeSpeechResponse
    , ssrAudioContent

    -- ** Voice
    , Voice
    , voice
    , vLanguageCodes
    , vNATuralSampleRateHertz
    , vSsmlGender
    , vName

    -- ** AudioConfigAudioEncoding
    , AudioConfigAudioEncoding (..)
    ) where

import Network.Google.Prelude
import Network.Google.Resource.TextToSpeech.Text.Synthesize
import Network.Google.Resource.TextToSpeech.Voices.List
import Network.Google.TextToSpeech.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Text-to-Speech API service.
type TextToSpeechAPI =
     TextSynthesizeResource :<|> VoicesListResource
