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
-- Module      : Gogol.CloudProfiler.Projects.Profiles.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- UpdateProfile updates the profile bytes and labels on the profile resource created in the online mode. Updating the bytes for profiles created in the offline mode is currently not supported: the profile content must be provided at the time of the profile creation.
--
-- /See:/ <https://cloud.google.com/profiler/ Stackdriver Profiler API Reference> for @cloudprofiler.projects.profiles.patch@.
module Gogol.CloudProfiler.Projects.Profiles.Patch
  ( -- * Resource
    CloudProfilerProjectsProfilesPatchResource,

    -- ** Constructing a Request
    CloudProfilerProjectsProfilesPatch (..),
    newCloudProfilerProjectsProfilesPatch,
  )
where

import Gogol.CloudProfiler.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprofiler.projects.profiles.patch@ method which the
-- 'CloudProfilerProjectsProfilesPatch' request conforms to.
type CloudProfilerProjectsProfilesPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Profile
    Core.:> Core.Patch '[Core.JSON] Profile

-- | UpdateProfile updates the profile bytes and labels on the profile resource created in the online mode. Updating the bytes for profiles created in the offline mode is currently not supported: the profile content must be provided at the time of the profile creation.
--
-- /See:/ 'newCloudProfilerProjectsProfilesPatch' smart constructor.
data CloudProfilerProjectsProfilesPatch = CloudProfilerProjectsProfilesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. Opaque, server-assigned, unique ID for this profile.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Profile,
    -- | Field mask used to specify the fields to be overwritten. Currently only profile_bytes and labels fields are supported by UpdateProfile, so only those fields can be specified in the mask. When no mask is provided, all fields are overwritten.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudProfilerProjectsProfilesPatch' with the minimum fields required to make a request.
newCloudProfilerProjectsProfilesPatch ::
  -- |  Output only. Opaque, server-assigned, unique ID for this profile. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Profile ->
  CloudProfilerProjectsProfilesPatch
newCloudProfilerProjectsProfilesPatch name payload =
  CloudProfilerProjectsProfilesPatch
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
    CloudProfilerProjectsProfilesPatch
  where
  type Rs CloudProfilerProjectsProfilesPatch = Profile
  type
    Scopes CloudProfilerProjectsProfilesPatch =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Write
       ]
  requestClient CloudProfilerProjectsProfilesPatch {..} =
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
      cloudProfilerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                CloudProfilerProjectsProfilesPatchResource
          )
          Core.mempty
