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
-- Module      : Gogol.ContainerAnalysis.Projects.Locations.Notes.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.locations.notes.delete@.
module Gogol.ContainerAnalysis.Projects.Locations.Notes.Delete
  ( -- * Resource
    ContainerAnalysisProjectsLocationsNotesDeleteResource,

    -- ** Constructing a Request
    ContainerAnalysisProjectsLocationsNotesDelete (..),
    newContainerAnalysisProjectsLocationsNotesDelete,
  )
where

import Gogol.ContainerAnalysis.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @containeranalysis.projects.locations.notes.delete@ method which the
-- 'ContainerAnalysisProjectsLocationsNotesDelete' request conforms to.
type ContainerAnalysisProjectsLocationsNotesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes the specified note.
--
-- /See:/ 'newContainerAnalysisProjectsLocationsNotesDelete' smart constructor.
data ContainerAnalysisProjectsLocationsNotesDelete = ContainerAnalysisProjectsLocationsNotesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the note in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsLocationsNotesDelete' with the minimum fields required to make a request.
newContainerAnalysisProjectsLocationsNotesDelete ::
  -- |  Required. The name of the note in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@. See 'name'.
  Core.Text ->
  ContainerAnalysisProjectsLocationsNotesDelete
newContainerAnalysisProjectsLocationsNotesDelete name =
  ContainerAnalysisProjectsLocationsNotesDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerAnalysisProjectsLocationsNotesDelete
  where
  type Rs ContainerAnalysisProjectsLocationsNotesDelete = Empty
  type
    Scopes ContainerAnalysisProjectsLocationsNotesDelete =
      '[CloudPlatform'FullControl]
  requestClient ContainerAnalysisProjectsLocationsNotesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      containerAnalysisService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContainerAnalysisProjectsLocationsNotesDeleteResource
          )
          Core.mempty
