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
-- Module      : Network.Google.TextToSpeech
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synthesizes natural-sounding speech by applying powerful neural network models.
--
-- /See:/ <https://cloud.google.com/text-to-speech/ Cloud Text-to-Speech API Reference>
module Network.Google.TextToSpeech
  ( -- * Configuration
    textToSpeechService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** texttospeech.text.synthesize
    TextToSpeechTextSynthesizeResource,
    newTextToSpeechTextSynthesize,
    TextToSpeechTextSynthesize,

    -- ** texttospeech.voices.list
    TextToSpeechVoicesListResource,
    newTextToSpeechVoicesList,
    TextToSpeechVoicesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AudioConfig
    AudioConfig (..),
    newAudioConfig,

    -- ** AudioConfig_AudioEncoding
    AudioConfig_AudioEncoding (..),

    -- ** ListVoicesResponse
    ListVoicesResponse (..),
    newListVoicesResponse,

    -- ** SynthesisInput
    SynthesisInput (..),
    newSynthesisInput,

    -- ** SynthesizeSpeechRequest
    SynthesizeSpeechRequest (..),
    newSynthesizeSpeechRequest,

    -- ** SynthesizeSpeechResponse
    SynthesizeSpeechResponse (..),
    newSynthesizeSpeechResponse,

    -- ** Voice
    Voice (..),
    newVoice,

    -- ** Voice_SsmlGender
    Voice_SsmlGender (..),

    -- ** VoiceSelectionParams
    VoiceSelectionParams (..),
    newVoiceSelectionParams,

    -- ** VoiceSelectionParams_SsmlGender
    VoiceSelectionParams_SsmlGender (..),
  )
where

import Network.Google.TextToSpeech.Text.Synthesize
import Network.Google.TextToSpeech.Types
import Network.Google.TextToSpeech.Voices.List
