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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new @BuildTrigger@. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Create
  ( -- * Resource
    CloudbuildProjectsLocationsTriggersCreateResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsTriggersCreate (..),
    newCloudbuildProjectsLocationsTriggersCreate,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.triggers.create@ method which the
-- 'CloudbuildProjectsLocationsTriggersCreate' request conforms to.
type CloudbuildProjectsLocationsTriggersCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "triggers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BuildTrigger
    Core.:> Core.Post '[Core.JSON] BuildTrigger

-- | Creates a new @BuildTrigger@. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsTriggersCreate' smart constructor.
data CloudbuildProjectsLocationsTriggersCreate = CloudbuildProjectsLocationsTriggersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The parent resource where this trigger will be created. Format: @projects\/{project}\/locations\/{location}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: BuildTrigger,
    -- | Required. ID of the project for which to configure automatic builds.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsTriggersCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsTriggersCreate ::
  -- |  The parent resource where this trigger will be created. Format: @projects\/{project}\/locations\/{location}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BuildTrigger ->
  CloudbuildProjectsLocationsTriggersCreate
newCloudbuildProjectsLocationsTriggersCreate parent payload =
  CloudbuildProjectsLocationsTriggersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsTriggersCreate
  where
  type
    Rs CloudbuildProjectsLocationsTriggersCreate =
      BuildTrigger
  type
    Scopes CloudbuildProjectsLocationsTriggersCreate =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsTriggersCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        projectId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsTriggersCreateResource
            )
            Core.mempty
