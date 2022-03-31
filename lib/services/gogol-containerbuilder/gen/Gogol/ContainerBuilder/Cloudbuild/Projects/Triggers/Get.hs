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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a @BuildTrigger@. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.get@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Get
  ( -- * Resource
    CloudbuildProjectsTriggersGetResource,

    -- ** Constructing a Request
    newCloudbuildProjectsTriggersGet,
    CloudbuildProjectsTriggersGet,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.triggers.get@ method which the
-- 'CloudbuildProjectsTriggersGet' request conforms to.
type CloudbuildProjectsTriggersGetResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "triggers"
    Core.:> Core.Capture "triggerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BuildTrigger

-- | Returns information about a @BuildTrigger@. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsTriggersGet' smart constructor.
data CloudbuildProjectsTriggersGet = CloudbuildProjectsTriggersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the @Trigger@ to retrieve. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@
    name :: (Core.Maybe Core.Text),
    -- | Required. ID of the project that owns the trigger.
    projectId :: Core.Text,
    -- | Required. Identifier (@id@ or @name@) of the @BuildTrigger@ to get.
    triggerId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsTriggersGet' with the minimum fields required to make a request.
newCloudbuildProjectsTriggersGet ::
  -- |  Required. ID of the project that owns the trigger. See 'projectId'.
  Core.Text ->
  -- |  Required. Identifier (@id@ or @name@) of the @BuildTrigger@ to get. See 'triggerId'.
  Core.Text ->
  CloudbuildProjectsTriggersGet
newCloudbuildProjectsTriggersGet projectId triggerId =
  CloudbuildProjectsTriggersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = Core.Nothing,
      projectId = projectId,
      triggerId = triggerId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsTriggersGet
  where
  type Rs CloudbuildProjectsTriggersGet = BuildTrigger
  type
    Scopes CloudbuildProjectsTriggersGet =
      '[CloudPlatform'FullControl]
  requestClient CloudbuildProjectsTriggersGet {..} =
    go
      projectId
      triggerId
      xgafv
      accessToken
      callback
      name
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsTriggersGetResource
          )
          Core.mempty
