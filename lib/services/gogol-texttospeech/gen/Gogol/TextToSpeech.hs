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
-- Module      : Gogol.TextToSpeech
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synthesizes natural-sounding speech by applying powerful neural network models.
--
-- /See:/ <https://cloud.google.com/text-to-speech/ Cloud Text-to-Speech API Reference>
module Gogol.TextToSpeech
  ( -- * Configuration
    textToSpeechService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** texttospeech.operations.cancel
    TextToSpeechOperationsCancelResource,
    TextToSpeechOperationsCancel (..),
    newTextToSpeechOperationsCancel,

    -- ** texttospeech.operations.delete
    TextToSpeechOperationsDeleteResource,
    TextToSpeechOperationsDelete (..),
    newTextToSpeechOperationsDelete,

    -- ** texttospeech.projects.locations.operations.get
    TextToSpeechProjectsLocationsOperationsGetResource,
    TextToSpeechProjectsLocationsOperationsGet (..),
    newTextToSpeechProjectsLocationsOperationsGet,

    -- ** texttospeech.projects.locations.operations.list
    TextToSpeechProjectsLocationsOperationsListResource,
    TextToSpeechProjectsLocationsOperationsList (..),
    newTextToSpeechProjectsLocationsOperationsList,

    -- ** texttospeech.projects.locations.synthesizeLongAudio
    TextToSpeechProjectsLocationsSynthesizeLongAudioResource,
    TextToSpeechProjectsLocationsSynthesizeLongAudio (..),
    newTextToSpeechProjectsLocationsSynthesizeLongAudio,

    -- ** texttospeech.text.synthesize
    TextToSpeechTextSynthesizeResource,
    TextToSpeechTextSynthesize (..),
    newTextToSpeechTextSynthesize,

    -- ** texttospeech.voices.list
    TextToSpeechVoicesListResource,
    TextToSpeechVoicesList (..),
    newTextToSpeechVoicesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AudioConfig
    AudioConfig (..),
    newAudioConfig,

    -- ** AudioConfig_AudioEncoding
    AudioConfig_AudioEncoding (..),

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CustomVoiceParams
    CustomVoiceParams (..),
    newCustomVoiceParams,

    -- ** CustomVoiceParams_ReportedUsage
    CustomVoiceParams_ReportedUsage (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata
    GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata (..),
    newGoogleCloudTexttospeechV1SynthesizeLongAudioMetadata,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListVoicesResponse
    ListVoicesResponse (..),
    newListVoicesResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** SynthesisInput
    SynthesisInput (..),
    newSynthesisInput,

    -- ** SynthesizeLongAudioMetadata
    SynthesizeLongAudioMetadata (..),
    newSynthesizeLongAudioMetadata,

    -- ** SynthesizeLongAudioRequest
    SynthesizeLongAudioRequest (..),
    newSynthesizeLongAudioRequest,

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

import Gogol.TextToSpeech.Operations.Cancel
import Gogol.TextToSpeech.Operations.Delete
import Gogol.TextToSpeech.Projects.Locations.Operations.Get
import Gogol.TextToSpeech.Projects.Locations.Operations.List
import Gogol.TextToSpeech.Projects.Locations.SynthesizeLongAudio
import Gogol.TextToSpeech.Text.Synthesize
import Gogol.TextToSpeech.Types
import Gogol.TextToSpeech.Voices.List
