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
-- Module      : Gogol.TextToSpeech.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.TextToSpeech.Types
    (
    -- * Configuration
      textToSpeechService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AudioConfig
    , AudioConfig (..)
    , newAudioConfig

    -- ** AudioConfig_AudioEncoding
    , AudioConfig_AudioEncoding (..)

    -- ** ListVoicesResponse
    , ListVoicesResponse (..)
    , newListVoicesResponse

    -- ** SynthesisInput
    , SynthesisInput (..)
    , newSynthesisInput

    -- ** SynthesizeSpeechRequest
    , SynthesizeSpeechRequest (..)
    , newSynthesizeSpeechRequest

    -- ** SynthesizeSpeechResponse
    , SynthesizeSpeechResponse (..)
    , newSynthesizeSpeechResponse

    -- ** Voice
    , Voice (..)
    , newVoice

    -- ** Voice_SsmlGender
    , Voice_SsmlGender (..)

    -- ** VoiceSelectionParams
    , VoiceSelectionParams (..)
    , newVoiceSelectionParams

    -- ** VoiceSelectionParams_SsmlGender
    , VoiceSelectionParams_SsmlGender (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TextToSpeech.Internal.Product
import Gogol.TextToSpeech.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Text-to-Speech API. This contains the host and root path used as a starting point for constructing service requests.
textToSpeechService :: Core.ServiceConfig
textToSpeechService
  = Core.defaultService
      (Core.ServiceId "texttospeech:v1")
      "texttospeech.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
