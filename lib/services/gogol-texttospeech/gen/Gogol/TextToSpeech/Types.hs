{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

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
    , CloudPlatform'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AdvancedVoiceOptions
    , AdvancedVoiceOptions (..)
    , newAdvancedVoiceOptions

    -- ** AudioConfig
    , AudioConfig (..)
    , newAudioConfig

    -- ** AudioConfig_AudioEncoding
    , AudioConfig_AudioEncoding (..)

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** CustomPronunciationParams
    , CustomPronunciationParams (..)
    , newCustomPronunciationParams

    -- ** CustomPronunciationParams_PhoneticEncoding
    , CustomPronunciationParams_PhoneticEncoding (..)

    -- ** CustomPronunciations
    , CustomPronunciations (..)
    , newCustomPronunciations

    -- ** CustomVoiceParams
    , CustomVoiceParams (..)
    , newCustomVoiceParams

    -- ** CustomVoiceParams_ReportedUsage
    , CustomVoiceParams_ReportedUsage (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
    , GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata (..)
    , newGoogleCloudTexttospeechV1SynthesizeLongAudioMetadata

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListVoicesResponse
    , ListVoicesResponse (..)
    , newListVoicesResponse

    -- ** MultiSpeakerMarkup
    , MultiSpeakerMarkup (..)
    , newMultiSpeakerMarkup

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** SynthesisInput
    , SynthesisInput (..)
    , newSynthesisInput

    -- ** SynthesizeLongAudioMetadata
    , SynthesizeLongAudioMetadata (..)
    , newSynthesizeLongAudioMetadata

    -- ** SynthesizeLongAudioRequest
    , SynthesizeLongAudioRequest (..)
    , newSynthesizeLongAudioRequest

    -- ** SynthesizeSpeechRequest
    , SynthesizeSpeechRequest (..)
    , newSynthesizeSpeechRequest

    -- ** SynthesizeSpeechResponse
    , SynthesizeSpeechResponse (..)
    , newSynthesizeSpeechResponse

    -- ** Turn
    , Turn (..)
    , newTurn

    -- ** Voice
    , Voice (..)
    , newVoice

    -- ** Voice_SsmlGender
    , Voice_SsmlGender (..)

    -- ** VoiceCloneParams
    , VoiceCloneParams (..)
    , newVoiceCloneParams

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
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
