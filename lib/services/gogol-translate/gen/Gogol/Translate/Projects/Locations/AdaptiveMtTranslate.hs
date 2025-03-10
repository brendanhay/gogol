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
-- Module      : Gogol.Translate.Projects.Locations.AdaptiveMtTranslate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translate text using Adaptive MT.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.adaptiveMtTranslate@.
module Gogol.Translate.Projects.Locations.AdaptiveMtTranslate
  ( -- * Resource
    TranslateProjectsLocationsAdaptiveMtTranslateResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsAdaptiveMtTranslate (..),
    newTranslateProjectsLocationsAdaptiveMtTranslate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.adaptiveMtTranslate@ method which the
-- 'TranslateProjectsLocationsAdaptiveMtTranslate' request conforms to.
type TranslateProjectsLocationsAdaptiveMtTranslateResource =
  "v3"
    Core.:> Core.CaptureMode "parent" "adaptiveMtTranslate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AdaptiveMtTranslateRequest
    Core.:> Core.Post '[Core.JSON] AdaptiveMtTranslateResponse

-- | Translate text using Adaptive MT.
--
-- /See:/ 'newTranslateProjectsLocationsAdaptiveMtTranslate' smart constructor.
data TranslateProjectsLocationsAdaptiveMtTranslate = TranslateProjectsLocationsAdaptiveMtTranslate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Location to make a regional call. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AdaptiveMtTranslateRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsAdaptiveMtTranslate' with the minimum fields required to make a request.
newTranslateProjectsLocationsAdaptiveMtTranslate ::
  -- |  Required. Location to make a regional call. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AdaptiveMtTranslateRequest ->
  TranslateProjectsLocationsAdaptiveMtTranslate
newTranslateProjectsLocationsAdaptiveMtTranslate parent payload =
  TranslateProjectsLocationsAdaptiveMtTranslate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsAdaptiveMtTranslate
  where
  type
    Rs TranslateProjectsLocationsAdaptiveMtTranslate =
      AdaptiveMtTranslateResponse
  type
    Scopes TranslateProjectsLocationsAdaptiveMtTranslate =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsAdaptiveMtTranslate {..} =
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
              Core.Proxy TranslateProjectsLocationsAdaptiveMtTranslateResource
          )
          Core.mempty
