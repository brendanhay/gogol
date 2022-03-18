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
-- Module      : Network.Google.TextToSpeech.Voices.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Voice supported for synthesis.
--
-- /See:/ <https://cloud.google.com/text-to-speech/ Cloud Text-to-Speech API Reference> for @texttospeech.voices.list@.
module Network.Google.TextToSpeech.Voices.List
  ( -- * Resource
    TextToSpeechVoicesListResource,

    -- ** Constructing a Request
    newTextToSpeechVoicesList,
    TextToSpeechVoicesList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TextToSpeech.Types

-- | A resource alias for @texttospeech.voices.list@ method which the
-- 'TextToSpeechVoicesList' request conforms to.
type TextToSpeechVoicesListResource =
  "v1"
    Core.:> "voices"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListVoicesResponse

-- | Returns a list of Voice supported for synthesis.
--
-- /See:/ 'newTextToSpeechVoicesList' smart constructor.
data TextToSpeechVoicesList = TextToSpeechVoicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Recommended. <https://www.rfc-editor.org/rfc/bcp/bcp47.txt BCP-47> language tag. If not specified, the API will return all supported voices. If specified, the ListVoices call will only return voices that can be used to synthesize this language_code. For example, if you specify @\"en-NZ\"@, all @\"en-NZ\"@ voices will be returned. If you specify @\"no\"@, both @\"no-\\*\"@ (Norwegian) and @\"nb-\\*\"@ (Norwegian Bokmal) voices will be returned.
    languageCode :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TextToSpeechVoicesList' with the minimum fields required to make a request.
newTextToSpeechVoicesList ::
  TextToSpeechVoicesList
newTextToSpeechVoicesList =
  TextToSpeechVoicesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TextToSpeechVoicesList where
  type Rs TextToSpeechVoicesList = ListVoicesResponse
  type
    Scopes TextToSpeechVoicesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient TextToSpeechVoicesList {..} =
    go
      xgafv
      accessToken
      callback
      languageCode
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      textToSpeechService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TextToSpeechVoicesListResource
          )
          Core.mempty
