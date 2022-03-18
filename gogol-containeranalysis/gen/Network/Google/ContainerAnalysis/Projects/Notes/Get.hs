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
-- Module      : Network.Google.ContainerAnalysis.Projects.Notes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified note.
--
-- /See:/ <https://cloud.google.com/container-analysis/api/reference/rest/ Container Analysis API Reference> for @containeranalysis.projects.notes.get@.
module Network.Google.ContainerAnalysis.Projects.Notes.Get
  ( -- * Resource
    ContainerAnalysisProjectsNotesGetResource,

    -- ** Constructing a Request
    newContainerAnalysisProjectsNotesGet,
    ContainerAnalysisProjectsNotesGet,
  )
where

import Network.Google.ContainerAnalysis.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @containeranalysis.projects.notes.get@ method which the
-- 'ContainerAnalysisProjectsNotesGet' request conforms to.
type ContainerAnalysisProjectsNotesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Note

-- | Gets the specified note.
--
-- /See:/ 'newContainerAnalysisProjectsNotesGet' smart constructor.
data ContainerAnalysisProjectsNotesGet = ContainerAnalysisProjectsNotesGet
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

-- | Creates a value of 'ContainerAnalysisProjectsNotesGet' with the minimum fields required to make a request.
newContainerAnalysisProjectsNotesGet ::
  -- |  Required. The name of the note in the form of @projects\/[PROVIDER_ID]\/notes\/[NOTE_ID]@. See 'name'.
  Core.Text ->
  ContainerAnalysisProjectsNotesGet
newContainerAnalysisProjectsNotesGet name =
  ContainerAnalysisProjectsNotesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContainerAnalysisProjectsNotesGet
  where
  type Rs ContainerAnalysisProjectsNotesGet = Note
  type
    Scopes ContainerAnalysisProjectsNotesGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient ContainerAnalysisProjectsNotesGet {..} =
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
              Core.Proxy ContainerAnalysisProjectsNotesGetResource
          )
          Core.mempty
