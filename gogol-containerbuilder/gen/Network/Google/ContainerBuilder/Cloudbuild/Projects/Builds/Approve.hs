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
-- Module      : Network.Google.ContainerBuilder.Cloudbuild.Projects.Builds.Approve
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Approves or rejects a pending build. If approved, the returned LRO will be analogous to the LRO returned from a CreateBuild call. If rejected, the returned LRO will be immediately done.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.builds.approve@.
module Network.Google.ContainerBuilder.Cloudbuild.Projects.Builds.Approve
  ( -- * Resource
    CloudbuildProjectsBuildsApproveResource,

    -- ** Constructing a Request
    newCloudbuildProjectsBuildsApprove,
    CloudbuildProjectsBuildsApprove,
  )
where

import Network.Google.ContainerBuilder.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbuild.projects.builds.approve@ method which the
-- 'CloudbuildProjectsBuildsApprove' request conforms to.
type CloudbuildProjectsBuildsApproveResource =
  "v1"
    Core.:> Core.CaptureMode "name" "approve" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ApproveBuildRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Approves or rejects a pending build. If approved, the returned LRO will be analogous to the LRO returned from a CreateBuild call. If rejected, the returned LRO will be immediately done.
--
-- /See:/ 'newCloudbuildProjectsBuildsApprove' smart constructor.
data CloudbuildProjectsBuildsApprove = CloudbuildProjectsBuildsApprove
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the target build. For example: \"projects\/{$project/id}\/builds\/{$build/id}\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ApproveBuildRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsBuildsApprove' with the minimum fields required to make a request.
newCloudbuildProjectsBuildsApprove ::
  -- |  Required. Name of the target build. For example: \"projects\/{$project/id}\/builds\/{$build/id}\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ApproveBuildRequest ->
  CloudbuildProjectsBuildsApprove
newCloudbuildProjectsBuildsApprove name payload =
  CloudbuildProjectsBuildsApprove
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsBuildsApprove
  where
  type Rs CloudbuildProjectsBuildsApprove = Operation
  type
    Scopes CloudbuildProjectsBuildsApprove =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient CloudbuildProjectsBuildsApprove {..} =
    go
      name
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
              Core.Proxy CloudbuildProjectsBuildsApproveResource
          )
          Core.mempty
