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
-- Module      : Gogol.CloudProfiler.Projects.Profiles.CreateOffline
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- CreateOfflineProfile creates a new profile resource in the offline mode. The client provides the profile to create along with the profile bytes, the server records it.
--
-- /See:/ <https://cloud.google.com/profiler/ Stackdriver Profiler API Reference> for @cloudprofiler.projects.profiles.createOffline@.
module Gogol.CloudProfiler.Projects.Profiles.CreateOffline
  ( -- * Resource
    CloudProfilerProjectsProfilesCreateOfflineResource,

    -- ** Constructing a Request
    CloudProfilerProjectsProfilesCreateOffline (..),
    newCloudProfilerProjectsProfilesCreateOffline,
  )
where

import Gogol.CloudProfiler.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprofiler.projects.profiles.createOffline@ method which the
-- 'CloudProfilerProjectsProfilesCreateOffline' request conforms to.
type CloudProfilerProjectsProfilesCreateOfflineResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "profiles:createOffline"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Profile
    Core.:> Core.Post '[Core.JSON] Profile

-- | CreateOfflineProfile creates a new profile resource in the offline mode. The client provides the profile to create along with the profile bytes, the server records it.
--
-- /See:/ 'newCloudProfilerProjectsProfilesCreateOffline' smart constructor.
data CloudProfilerProjectsProfilesCreateOffline = CloudProfilerProjectsProfilesCreateOffline
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Parent project to create the profile in.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Profile,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudProfilerProjectsProfilesCreateOffline' with the minimum fields required to make a request.
newCloudProfilerProjectsProfilesCreateOffline ::
  -- |  Parent project to create the profile in. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Profile ->
  CloudProfilerProjectsProfilesCreateOffline
newCloudProfilerProjectsProfilesCreateOffline parent payload =
  CloudProfilerProjectsProfilesCreateOffline
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudProfilerProjectsProfilesCreateOffline
  where
  type
    Rs CloudProfilerProjectsProfilesCreateOffline =
      Profile
  type
    Scopes
      CloudProfilerProjectsProfilesCreateOffline =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Write
       ]
  requestClient
    CloudProfilerProjectsProfilesCreateOffline {..} =
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
                Core.Proxy
                  CloudProfilerProjectsProfilesCreateOfflineResource
            )
            Core.mempty
