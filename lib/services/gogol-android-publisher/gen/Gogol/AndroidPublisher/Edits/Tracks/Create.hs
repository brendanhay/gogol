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
-- Module      : Gogol.AndroidPublisher.Edits.Tracks.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.tracks.create@.
module Gogol.AndroidPublisher.Edits.Tracks.Create
  ( -- * Resource
    AndroidPublisherEditsTracksCreateResource,

    -- ** Constructing a Request
    AndroidPublisherEditsTracksCreate (..),
    newAndroidPublisherEditsTracksCreate,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.edits.tracks.create@ method which the
-- 'AndroidPublisherEditsTracksCreate' request conforms to.
type AndroidPublisherEditsTracksCreateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "tracks"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TrackConfig
    Core.:> Core.Post '[Core.JSON] Track

-- | Creates a new track.
--
-- /See:/ 'newAndroidPublisherEditsTracksCreate' smart constructor.
data AndroidPublisherEditsTracksCreate = AndroidPublisherEditsTracksCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Identifier of the edit.
    editId :: Core.Text,
    -- | Required. Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: TrackConfig,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsTracksCreate' with the minimum fields required to make a request.
newAndroidPublisherEditsTracksCreate ::
  -- |  Required. Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Required. Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  TrackConfig ->
  AndroidPublisherEditsTracksCreate
newAndroidPublisherEditsTracksCreate editId packageName payload =
  AndroidPublisherEditsTracksCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      editId = editId,
      packageName = packageName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidPublisherEditsTracksCreate where
  type Rs AndroidPublisherEditsTracksCreate = Track
  type
    Scopes AndroidPublisherEditsTracksCreate =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsTracksCreate {..} =
    go
      packageName
      editId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherEditsTracksCreateResource
          )
          Core.mempty
