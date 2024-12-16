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
-- Module      : Gogol.TextToSpeech.Projects.Locations.SynthesizeLongAudio
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synthesizes long form text asynchronously.
--
-- /See:/ <https://cloud.google.com/text-to-speech/ Cloud Text-to-Speech API Reference> for @texttospeech.projects.locations.synthesizeLongAudio@.
module Gogol.TextToSpeech.Projects.Locations.SynthesizeLongAudio
    (
    -- * Resource
      TextToSpeechProjectsLocationsSynthesizeLongAudioResource

    -- ** Constructing a Request
    , TextToSpeechProjectsLocationsSynthesizeLongAudio (..)
    , newTextToSpeechProjectsLocationsSynthesizeLongAudio
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TextToSpeech.Types

-- | A resource alias for @texttospeech.projects.locations.synthesizeLongAudio@ method which the
-- 'TextToSpeechProjectsLocationsSynthesizeLongAudio' request conforms to.
type TextToSpeechProjectsLocationsSynthesizeLongAudioResource
     =
     "v1" Core.:>
       Core.CaptureMode "parent" "synthesizeLongAudio"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] SynthesizeLongAudioRequest
                       Core.:> Core.Post '[Core.JSON] Operation

-- | Synthesizes long form text asynchronously.
--
-- /See:/ 'newTextToSpeechProjectsLocationsSynthesizeLongAudio' smart constructor.
data TextToSpeechProjectsLocationsSynthesizeLongAudio = TextToSpeechProjectsLocationsSynthesizeLongAudio
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The resource states of the request in the form of @projects\/*\/locations\/*@.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: SynthesizeLongAudioRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextToSpeechProjectsLocationsSynthesizeLongAudio' with the minimum fields required to make a request.
newTextToSpeechProjectsLocationsSynthesizeLongAudio 
    ::  Core.Text
       -- ^  The resource states of the request in the form of @projects\/*\/locations\/*@. See 'parent'.
    -> SynthesizeLongAudioRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> TextToSpeechProjectsLocationsSynthesizeLongAudio
newTextToSpeechProjectsLocationsSynthesizeLongAudio parent payload =
  TextToSpeechProjectsLocationsSynthesizeLongAudio
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TextToSpeechProjectsLocationsSynthesizeLongAudio
         where
        type Rs
               TextToSpeechProjectsLocationsSynthesizeLongAudio
             = Operation
        type Scopes
               TextToSpeechProjectsLocationsSynthesizeLongAudio
             = '[CloudPlatform'FullControl]
        requestClient
          TextToSpeechProjectsLocationsSynthesizeLongAudio{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              textToSpeechService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TextToSpeechProjectsLocationsSynthesizeLongAudioResource)
                      Core.mempty

