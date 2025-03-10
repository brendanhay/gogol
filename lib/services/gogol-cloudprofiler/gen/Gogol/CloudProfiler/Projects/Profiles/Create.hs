{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudProfiler.Projects.Profiles.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- CreateProfile creates a new profile resource in the online mode. /Direct use of this API is discouraged, please use a <https://cloud.google.com/profiler/docs/about-profiler#profiling_agent supported profiler agent> instead for profile collection./ The server ensures that the new profiles are created at a constant rate per deployment, so the creation request may hang for some time until the next profile session is available. The request may fail with ABORTED error if the creation is not available within ~1m, the response will indicate the duration of the backoff the client should take before attempting creating a profile again. The backoff duration is returned in google.rpc.RetryInfo extension on the response status. To a gRPC client, the extension will be return as a binary-serialized proto in the trailing metadata item named \"google.rpc.retryinfo-bin\".
--
-- /See:/ <https://cloud.google.com/profiler/ Cloud Profiler API Reference> for @cloudprofiler.projects.profiles.create@.
module Gogol.CloudProfiler.Projects.Profiles.Create
  ( -- * Resource
    CloudProfilerProjectsProfilesCreateResource,

    -- ** Constructing a Request
    CloudProfilerProjectsProfilesCreate (..),
    newCloudProfilerProjectsProfilesCreate,
  )
where

import Gogol.CloudProfiler.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprofiler.projects.profiles.create@ method which the
-- 'CloudProfilerProjectsProfilesCreate' request conforms to.
type CloudProfilerProjectsProfilesCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "profiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateProfileRequest
    Core.:> Core.Post '[Core.JSON] Profile

-- | CreateProfile creates a new profile resource in the online mode. /Direct use of this API is discouraged, please use a <https://cloud.google.com/profiler/docs/about-profiler#profiling_agent supported profiler agent> instead for profile collection./ The server ensures that the new profiles are created at a constant rate per deployment, so the creation request may hang for some time until the next profile session is available. The request may fail with ABORTED error if the creation is not available within ~1m, the response will indicate the duration of the backoff the client should take before attempting creating a profile again. The backoff duration is returned in google.rpc.RetryInfo extension on the response status. To a gRPC client, the extension will be return as a binary-serialized proto in the trailing metadata item named \"google.rpc.retryinfo-bin\".
--
-- /See:/ 'newCloudProfilerProjectsProfilesCreate' smart constructor.
data CloudProfilerProjectsProfilesCreate = CloudProfilerProjectsProfilesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Parent project to create the profile in.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateProfileRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudProfilerProjectsProfilesCreate' with the minimum fields required to make a request.
newCloudProfilerProjectsProfilesCreate ::
  -- |  Parent project to create the profile in. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateProfileRequest ->
  CloudProfilerProjectsProfilesCreate
newCloudProfilerProjectsProfilesCreate parent payload =
  CloudProfilerProjectsProfilesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudProfilerProjectsProfilesCreate where
  type Rs CloudProfilerProjectsProfilesCreate = Profile
  type
    Scopes CloudProfilerProjectsProfilesCreate =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Write
       ]
  requestClient CloudProfilerProjectsProfilesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudProfilerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudProfilerProjectsProfilesCreateResource
          )
          Core.mempty
