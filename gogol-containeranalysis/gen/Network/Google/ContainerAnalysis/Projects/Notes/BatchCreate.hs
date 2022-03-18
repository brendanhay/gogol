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
-- Module      : Network.Google.ContainerAnalysis.Projects.Notes.BatchCreate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new notes in batch.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.batchCreate@.
module Network.Google.ContainerAnalysis.Projects.Notes.BatchCreate
  ( -- * Resource
    ContainerAnalysisProjectsNotesBatchCreateResource,

    -- ** Constructing a Request
    newContainerAnalysisProjectsNotesBatchCreate,
    ContainerAnalysisProjectsNotesBatchCreate,
  )
where

import Network.Google.ContainerAnalysis.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @containeranalysis.projects.notes.batchCreate@ method which the
-- 'ContainerAnalysisProjectsNotesBatchCreate' request conforms to.
type ContainerAnalysisProjectsNotesBatchCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "notes:batchCreate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchCreateNotesRequest
    Core.:> Core.Post '[Core.JSON] BatchCreateNotesResponse

-- | Creates new notes in batch.
--
-- /See:/ 'newContainerAnalysisProjectsNotesBatchCreate' smart constructor.
data ContainerAnalysisProjectsNotesBatchCreate = ContainerAnalysisProjectsNotesBatchCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the project in the form of @projects\/[PROJECT_ID]@, under which the notes are to be created.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchCreateNotesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerAnalysisProjectsNotesBatchCreate' with the minimum fields required to make a request.
newContainerAnalysisProjectsNotesBatchCreate ::
  -- |  Required. The name of the project in the form of @projects\/[PROJECT_ID]@, under which the notes are to be created. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchCreateNotesRequest ->
  ContainerAnalysisProjectsNotesBatchCreate
newContainerAnalysisProjectsNotesBatchCreate parent payload =
  ContainerAnalysisProjectsNotesBatchCreate
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
    ContainerAnalysisProjectsNotesBatchCreate
  where
  type
    Rs ContainerAnalysisProjectsNotesBatchCreate =
      BatchCreateNotesResponse
  type
    Scopes ContainerAnalysisProjectsNotesBatchCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ContainerAnalysisProjectsNotesBatchCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerAnalysisService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerAnalysisProjectsNotesBatchCreateResource
            )
            Core.mempty
