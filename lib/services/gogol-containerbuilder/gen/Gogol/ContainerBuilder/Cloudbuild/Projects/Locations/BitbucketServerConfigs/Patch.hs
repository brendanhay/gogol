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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing @BitbucketServerConfig@. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.bitbucketServerConfigs.patch@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Patch
  ( -- * Resource
    CloudbuildProjectsLocationsBitbucketServerConfigsPatchResource,

    -- ** Constructing a Request
    newCloudbuildProjectsLocationsBitbucketServerConfigsPatch,
    CloudbuildProjectsLocationsBitbucketServerConfigsPatch,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.bitbucketServerConfigs.patch@ method which the
-- 'CloudbuildProjectsLocationsBitbucketServerConfigsPatch' request conforms to.
type CloudbuildProjectsLocationsBitbucketServerConfigsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BitbucketServerConfig
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates an existing @BitbucketServerConfig@. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsBitbucketServerConfigsPatch' smart constructor.
data CloudbuildProjectsLocationsBitbucketServerConfigsPatch = CloudbuildProjectsLocationsBitbucketServerConfigsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name for the config.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: BitbucketServerConfig,
    -- | Update mask for the resource. If this is set, the server will only update the fields specified in the field mask. Otherwise, a full update of the mutable resource fields will be performed.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBitbucketServerConfigsPatch' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBitbucketServerConfigsPatch ::
  -- |  The resource name for the config. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BitbucketServerConfig ->
  CloudbuildProjectsLocationsBitbucketServerConfigsPatch
newCloudbuildProjectsLocationsBitbucketServerConfigsPatch name payload =
  CloudbuildProjectsLocationsBitbucketServerConfigsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsBitbucketServerConfigsPatch
  where
  type
    Rs
      CloudbuildProjectsLocationsBitbucketServerConfigsPatch =
      Operation
  type
    Scopes
      CloudbuildProjectsLocationsBitbucketServerConfigsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsLocationsBitbucketServerConfigsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
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
                  CloudbuildProjectsLocationsBitbucketServerConfigsPatchResource
            )
            Core.mempty
