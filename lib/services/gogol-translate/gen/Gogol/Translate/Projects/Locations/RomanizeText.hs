{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Translate.Projects.Locations.RomanizeText
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Romanize input text written in non-Latin scripts to Latin text.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.romanizeText@.
module Gogol.Translate.Projects.Locations.RomanizeText
  ( -- * Resource
    TranslateProjectsLocationsRomanizeTextResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsRomanizeText (..),
    newTranslateProjectsLocationsRomanizeText,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.romanizeText@ method which the
-- 'TranslateProjectsLocationsRomanizeText' request conforms to.
type TranslateProjectsLocationsRomanizeTextResource =
  "v3"
    Core.:> Core.CaptureMode "parent" "romanizeText" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RomanizeTextRequest
    Core.:> Core.Post '[Core.JSON] RomanizeTextResponse

-- | Romanize input text written in non-Latin scripts to Latin text.
--
-- /See:/ 'newTranslateProjectsLocationsRomanizeText' smart constructor.
data TranslateProjectsLocationsRomanizeText = TranslateProjectsLocationsRomanizeText
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Project or location to make a call. Must refer to a caller\'s project. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@ or @projects\/{project-number-or-id}@. For global calls, use @projects\/{project-number-or-id}\/locations\/global@ or @projects\/{project-number-or-id}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: RomanizeTextRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsRomanizeText' with the minimum fields required to make a request.
newTranslateProjectsLocationsRomanizeText ::
  -- |  Required. Project or location to make a call. Must refer to a caller\'s project. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@ or @projects\/{project-number-or-id}@. For global calls, use @projects\/{project-number-or-id}\/locations\/global@ or @projects\/{project-number-or-id}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RomanizeTextRequest ->
  TranslateProjectsLocationsRomanizeText
newTranslateProjectsLocationsRomanizeText parent payload =
  TranslateProjectsLocationsRomanizeText
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TranslateProjectsLocationsRomanizeText where
  type
    Rs TranslateProjectsLocationsRomanizeText =
      RomanizeTextResponse
  type
    Scopes TranslateProjectsLocationsRomanizeText =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsRomanizeText {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      translateService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TranslateProjectsLocationsRomanizeTextResource
          )
          Core.mempty
