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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @BuildTrigger@ by its project ID and trigger ID. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.patch@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Patch
  ( -- * Resource
    CloudbuildProjectsTriggersPatchResource,

    -- ** Constructing a Request
    newCloudbuildProjectsTriggersPatch,
    CloudbuildProjectsTriggersPatch,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.triggers.patch@ method which the
-- 'CloudbuildProjectsTriggersPatch' request conforms to.
type CloudbuildProjectsTriggersPatchResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "triggers"
    Core.:> Core.Capture "triggerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BuildTrigger
    Core.:> Core.Patch '[Core.JSON] BuildTrigger

-- | Updates a @BuildTrigger@ by its project ID and trigger ID. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsTriggersPatch' smart constructor.
data CloudbuildProjectsTriggersPatch = CloudbuildProjectsTriggersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BuildTrigger,
    -- | Required. ID of the project that owns the trigger.
    projectId :: Core.Text,
    -- | Required. ID of the @BuildTrigger@ to update.
    triggerId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsTriggersPatch' with the minimum fields required to make a request.
newCloudbuildProjectsTriggersPatch ::
  -- |  Multipart request metadata. See 'payload'.
  BuildTrigger ->
  -- |  Required. ID of the project that owns the trigger. See 'projectId'.
  Core.Text ->
  -- |  Required. ID of the @BuildTrigger@ to update. See 'triggerId'.
  Core.Text ->
  CloudbuildProjectsTriggersPatch
newCloudbuildProjectsTriggersPatch payload projectId triggerId =
  CloudbuildProjectsTriggersPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      triggerId = triggerId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsTriggersPatch
  where
  type
    Rs CloudbuildProjectsTriggersPatch =
      BuildTrigger
  type
    Scopes CloudbuildProjectsTriggersPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudbuildProjectsTriggersPatch {..} =
    go
      projectId
      triggerId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      containerBuilderService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbuildProjectsTriggersPatchResource
          )
          Core.mempty
