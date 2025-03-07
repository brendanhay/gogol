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
-- Module      : Gogol.ContainerAnalysis.Projects.Locations.Notes.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.locations.notes.patch@.
module Gogol.ContainerAnalysis.Projects.Locations.Notes.Patch
  ( -- * Resource
    ContainerAnalysisProjectsLocationsNotesPatchResource,

    -- ** Constructing a Request
    ContainerAnalysisProjectsLocationsNotesPatch (..),
    newContainerAnalysisProjectsLocationsNotesPatch,
  )
where

import Gogol.ContainerAnalysis.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @containeranalysis.projects.locations.notes.patch@ method which the
-- 'ContainerAnalysisProjectsLocationsNotesPatch' request conforms to.
type ContainerAnalysisProjectsLocationsNotesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Note
    Core.:> Core.Patch '[Core.JSON] Note

-- | Updates the specified note.
--
-- /See:/ 'newContainerAnalysisProjectsLocationsNotesPatch' smart constructor.
data ContainerAnalysisProjectsLocationsNotesPatch = ContainerAnalysisProjectsLocationsNotesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the note in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Note,
    -- | The fields to update.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsLocationsNotesPatch' with the minimum fields required to make a request.
newContainerAnalysisProjectsLocationsNotesPatch ::
  -- |  Required. The name of the note in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Note ->
  ContainerAnalysisProjectsLocationsNotesPatch
newContainerAnalysisProjectsLocationsNotesPatch name payload =
  ContainerAnalysisProjectsLocationsNotesPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerAnalysisProjectsLocationsNotesPatch
  where
  type Rs ContainerAnalysisProjectsLocationsNotesPatch = Note
  type
    Scopes ContainerAnalysisProjectsLocationsNotesPatch =
      '[CloudPlatform'FullControl]
  requestClient ContainerAnalysisProjectsLocationsNotesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      containerAnalysisService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContainerAnalysisProjectsLocationsNotesPatchResource
          )
          Core.mempty
