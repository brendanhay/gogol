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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.RemoveBitbucketServerConnectedRepository
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove a Bitbucket Server repository from an given BitbucketServerConfig’s connected repositories. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.bitbucketServerConfigs.removeBitbucketServerConnectedRepository@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.RemoveBitbucketServerConnectedRepository
  ( -- * Resource
    CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepositoryResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.bitbucketServerConfigs.removeBitbucketServerConnectedRepository@ method which the
-- 'CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository' request conforms to.
type CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepositoryResource =
  "v1"
    Core.:> Core.CaptureMode
              "config"
              "removeBitbucketServerConnectedRepository"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RemoveBitbucketServerConnectedRepositoryRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Remove a Bitbucket Server repository from an given BitbucketServerConfig’s connected repositories. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository' smart constructor.
data CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository = CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the @BitbucketServerConfig@ to remove a connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@
    config :: Core.Text,
    -- | Multipart request metadata.
    payload :: RemoveBitbucketServerConnectedRepositoryRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository ::
  -- |  Required. The name of the @BitbucketServerConfig@ to remove a connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@ See 'config'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RemoveBitbucketServerConnectedRepositoryRequest ->
  CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository
newCloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository config payload =
  CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      config = config,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository
  where
  type
    Rs
      CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository =
      Empty
  type
    Scopes
      CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository {..} =
      go
        config
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
                Core.Proxy
                  CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepositoryResource
            )
            Core.mempty
