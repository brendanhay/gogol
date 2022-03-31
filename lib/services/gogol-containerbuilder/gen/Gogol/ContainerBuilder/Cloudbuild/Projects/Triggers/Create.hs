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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new @BuildTrigger@. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Create
  ( -- * Resource
    CloudbuildProjectsTriggersCreateResource,

    -- ** Constructing a Request
    newCloudbuildProjectsTriggersCreate,
    CloudbuildProjectsTriggersCreate,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.triggers.create@ method which the
-- 'CloudbuildProjectsTriggersCreate' request conforms to.
type CloudbuildProjectsTriggersCreateResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "triggers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "parent" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BuildTrigger
    Core.:> Core.Post '[Core.JSON] BuildTrigger

-- | Creates a new @BuildTrigger@. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsTriggersCreate' smart constructor.
data CloudbuildProjectsTriggersCreate = CloudbuildProjectsTriggersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The parent resource where this trigger will be created. Format: @projects\/{project}\/locations\/{location}@
    parent :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BuildTrigger,
    -- | Required. ID of the project for which to configure automatic builds.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsTriggersCreate' with the minimum fields required to make a request.
newCloudbuildProjectsTriggersCreate ::
  -- |  Multipart request metadata. See 'payload'.
  BuildTrigger ->
  -- |  Required. ID of the project for which to configure automatic builds. See 'projectId'.
  Core.Text ->
  CloudbuildProjectsTriggersCreate
newCloudbuildProjectsTriggersCreate payload projectId =
  CloudbuildProjectsTriggersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsTriggersCreate
  where
  type
    Rs CloudbuildProjectsTriggersCreate =
      BuildTrigger
  type
    Scopes CloudbuildProjectsTriggersCreate =
      '[CloudPlatform'FullControl]
  requestClient CloudbuildProjectsTriggersCreate {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      parent
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsTriggersCreateResource
          )
          Core.mempty
