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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.AddBitbucketServerConnectedRepository
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a Bitbucket Server repository to a given BitbucketServerConfig\'s connected repositories. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.bitbucketServerConfigs.addBitbucketServerConnectedRepository@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.AddBitbucketServerConnectedRepository
  ( -- * Resource
    CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepositoryResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.bitbucketServerConfigs.addBitbucketServerConnectedRepository@ method which the
-- 'CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository' request conforms to.
type CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepositoryResource =
  "v1"
    Core.:> Core.CaptureMode
              "config"
              "addBitbucketServerConnectedRepository"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              AddBitbucketServerConnectedRepositoryRequest
    Core.:> Core.Post
              '[Core.JSON]
              AddBitbucketServerConnectedRepositoryResponse

-- | Add a Bitbucket Server repository to a given BitbucketServerConfig\'s connected repositories. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository' smart constructor.
data CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository = CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the @BitbucketServerConfig@ to add a connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@
    config :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddBitbucketServerConnectedRepositoryRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository ::
  -- |  Required. The name of the @BitbucketServerConfig@ to add a connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@ See 'config'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddBitbucketServerConnectedRepositoryRequest ->
  CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository
newCloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository config payload =
  CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository
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
    CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository
  where
  type
    Rs
      CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository =
      AddBitbucketServerConnectedRepositoryResponse
  type
    Scopes
      CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository {..} =
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
                  CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepositoryResource
            )
            Core.mempty
