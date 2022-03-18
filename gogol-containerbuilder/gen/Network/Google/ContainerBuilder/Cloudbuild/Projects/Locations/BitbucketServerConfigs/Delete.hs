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
-- Module      : Network.Google.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a @BitbucketServerConfig@. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.bitbucketServerConfigs.delete@.
module Network.Google.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Delete
  ( -- * Resource
    CloudbuildProjectsLocationsBitbucketServerConfigsDeleteResource,

    -- ** Constructing a Request
    newCloudbuildProjectsLocationsBitbucketServerConfigsDelete,
    CloudbuildProjectsLocationsBitbucketServerConfigsDelete,
  )
where

import Network.Google.ContainerBuilder.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.bitbucketServerConfigs.delete@ method which the
-- 'CloudbuildProjectsLocationsBitbucketServerConfigsDelete' request conforms to.
type CloudbuildProjectsLocationsBitbucketServerConfigsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Delete a @BitbucketServerConfig@. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsBitbucketServerConfigsDelete' smart constructor.
data CloudbuildProjectsLocationsBitbucketServerConfigsDelete = CloudbuildProjectsLocationsBitbucketServerConfigsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The config resource name.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBitbucketServerConfigsDelete' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBitbucketServerConfigsDelete ::
  -- |  Required. The config resource name. See 'name'.
  Core.Text ->
  CloudbuildProjectsLocationsBitbucketServerConfigsDelete
newCloudbuildProjectsLocationsBitbucketServerConfigsDelete name =
  CloudbuildProjectsLocationsBitbucketServerConfigsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsBitbucketServerConfigsDelete
  where
  type
    Rs
      CloudbuildProjectsLocationsBitbucketServerConfigsDelete =
      Operation
  type
    Scopes
      CloudbuildProjectsLocationsBitbucketServerConfigsDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsLocationsBitbucketServerConfigsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsBitbucketServerConfigsDeleteResource
            )
            Core.mempty
