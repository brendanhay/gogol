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
-- Module      : Gogol.Translate.Projects.Locations.TranslateDocument
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translates documents in synchronous mode.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.translateDocument@.
module Gogol.Translate.Projects.Locations.TranslateDocument
  ( -- * Resource
    TranslateProjectsLocationsTranslateDocumentResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsTranslateDocument (..),
    newTranslateProjectsLocationsTranslateDocument,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.translateDocument@ method which the
-- 'TranslateProjectsLocationsTranslateDocument' request conforms to.
type TranslateProjectsLocationsTranslateDocumentResource =
  "v3"
    Core.:> Core.CaptureMode "parent" "translateDocument" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TranslateDocumentRequest
    Core.:> Core.Post '[Core.JSON] TranslateDocumentResponse

-- | Translates documents in synchronous mode.
--
-- /See:/ 'newTranslateProjectsLocationsTranslateDocument' smart constructor.
data TranslateProjectsLocationsTranslateDocument = TranslateProjectsLocationsTranslateDocument
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Location to make a regional call. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@. For global calls, use @projects\/{project-number-or-id}\/locations\/global@ or @projects\/{project-number-or-id}@. Non-global location is required for requests using AutoML models or custom glossaries. Models and glossaries must be within the same region (have the same location-id), otherwise an INVALID_ARGUMENT (400) error is returned.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: TranslateDocumentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsTranslateDocument' with the minimum fields required to make a request.
newTranslateProjectsLocationsTranslateDocument ::
  -- |  Required. Location to make a regional call. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@. For global calls, use @projects\/{project-number-or-id}\/locations\/global@ or @projects\/{project-number-or-id}@. Non-global location is required for requests using AutoML models or custom glossaries. Models and glossaries must be within the same region (have the same location-id), otherwise an INVALID_ARGUMENT (400) error is returned. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TranslateDocumentRequest ->
  TranslateProjectsLocationsTranslateDocument
newTranslateProjectsLocationsTranslateDocument parent payload =
  TranslateProjectsLocationsTranslateDocument
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsTranslateDocument
  where
  type
    Rs TranslateProjectsLocationsTranslateDocument =
      TranslateDocumentResponse
  type
    Scopes TranslateProjectsLocationsTranslateDocument =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsTranslateDocument {..} =
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
              Core.Proxy TranslateProjectsLocationsTranslateDocumentResource
          )
          Core.mempty
