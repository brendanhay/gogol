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
-- Module      : Gogol.ContainerAnalysis.Projects.Locations.Notes.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.locations.notes.create@.
module Gogol.ContainerAnalysis.Projects.Locations.Notes.Create
  ( -- * Resource
    ContainerAnalysisProjectsLocationsNotesCreateResource,

    -- ** Constructing a Request
    ContainerAnalysisProjectsLocationsNotesCreate (..),
    newContainerAnalysisProjectsLocationsNotesCreate,
  )
where

import Gogol.ContainerAnalysis.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @containeranalysis.projects.locations.notes.create@ method which the
-- 'ContainerAnalysisProjectsLocationsNotesCreate' request conforms to.
type ContainerAnalysisProjectsLocationsNotesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "notes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "noteId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Note
    Core.:> Core.Post '[Core.JSON] Note

-- | Creates a new note.
--
-- /See:/ 'newContainerAnalysisProjectsLocationsNotesCreate' smart constructor.
data ContainerAnalysisProjectsLocationsNotesCreate = ContainerAnalysisProjectsLocationsNotesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID to use for this note.
    noteId :: (Core.Maybe Core.Text),
    -- | Required. The name of the project in the form of @projects\/[PROJECT_ID]@, under which the note is to be created.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Note,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsLocationsNotesCreate' with the minimum fields required to make a request.
newContainerAnalysisProjectsLocationsNotesCreate ::
  -- |  Required. The name of the project in the form of @projects\/[PROJECT_ID]@, under which the note is to be created. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Note ->
  ContainerAnalysisProjectsLocationsNotesCreate
newContainerAnalysisProjectsLocationsNotesCreate parent payload =
  ContainerAnalysisProjectsLocationsNotesCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      noteId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerAnalysisProjectsLocationsNotesCreate
  where
  type Rs ContainerAnalysisProjectsLocationsNotesCreate = Note
  type
    Scopes ContainerAnalysisProjectsLocationsNotesCreate =
      '[CloudPlatform'FullControl]
  requestClient ContainerAnalysisProjectsLocationsNotesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      noteId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      containerAnalysisService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContainerAnalysisProjectsLocationsNotesCreateResource
          )
          Core.mempty
