{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TextToSpeech.Text.Synthesize
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synthesizes speech synchronously: receive results after all text input has been processed.
--
-- /See:/ <https://cloud.google.com/text-to-speech/ Cloud Text-to-Speech API Reference> for @texttospeech.text.synthesize@.
module Gogol.TextToSpeech.Text.Synthesize
  ( -- * Resource
    TextToSpeechTextSynthesizeResource,

    -- ** Constructing a Request
    TextToSpeechTextSynthesize (..),
    newTextToSpeechTextSynthesize,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TextToSpeech.Types

-- | A resource alias for @texttospeech.text.synthesize@ method which the
-- 'TextToSpeechTextSynthesize' request conforms to.
type TextToSpeechTextSynthesizeResource =
  "v1"
    Core.:> "text:synthesize"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SynthesizeSpeechRequest
    Core.:> Core.Post '[Core.JSON] SynthesizeSpeechResponse

-- | Synthesizes speech synchronously: receive results after all text input has been processed.
--
-- /See:/ 'newTextToSpeechTextSynthesize' smart constructor.
data TextToSpeechTextSynthesize = TextToSpeechTextSynthesize
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SynthesizeSpeechRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextToSpeechTextSynthesize' with the minimum fields required to make a request.
newTextToSpeechTextSynthesize ::
  -- |  Multipart request metadata. See 'payload'.
  SynthesizeSpeechRequest ->
  TextToSpeechTextSynthesize
newTextToSpeechTextSynthesize payload =
  TextToSpeechTextSynthesize
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TextToSpeechTextSynthesize where
  type Rs TextToSpeechTextSynthesize = SynthesizeSpeechResponse
  type
    Scopes TextToSpeechTextSynthesize =
      '[CloudPlatform'FullControl]
  requestClient TextToSpeechTextSynthesize {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      textToSpeechService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy TextToSpeechTextSynthesizeResource)
          Core.mempty
