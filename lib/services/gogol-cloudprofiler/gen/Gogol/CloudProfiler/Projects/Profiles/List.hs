{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.CloudProfiler.Projects.Profiles.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists profiles which have been collected so far and for which the caller has permission to view.
--
-- /See:/ <https://cloud.google.com/profiler/ Cloud Profiler API Reference> for @cloudprofiler.projects.profiles.list@.
module Gogol.CloudProfiler.Projects.Profiles.List
  ( -- * Resource
    CloudProfilerProjectsProfilesListResource,

    -- ** Constructing a Request
    CloudProfilerProjectsProfilesList (..),
    newCloudProfilerProjectsProfilesList,
  )
where

import Gogol.CloudProfiler.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudprofiler.projects.profiles.list@ method which the
-- 'CloudProfilerProjectsProfilesList' request conforms to.
type CloudProfilerProjectsProfilesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "profiles"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListProfilesResponse

-- | Lists profiles which have been collected so far and for which the caller has permission to view.
--
-- /See:/ 'newCloudProfilerProjectsProfilesList' smart constructor.
data CloudProfilerProjectsProfilesList = CloudProfilerProjectsProfilesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of items to return. Default page_size is 1000. Max limit is 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The token to continue pagination and get profiles from a particular page. When paginating, all other parameters provided to @ListProfiles@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent, which owns this collection of profiles. Format: projects\/{user/project/id}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudProfilerProjectsProfilesList' with the minimum fields required to make a request.
newCloudProfilerProjectsProfilesList ::
  -- |  Required. The parent, which owns this collection of profiles. Format: projects\/{user/project/id} See 'parent'.
  Core.Text ->
  CloudProfilerProjectsProfilesList
newCloudProfilerProjectsProfilesList parent =
  CloudProfilerProjectsProfilesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudProfilerProjectsProfilesList where
  type Rs CloudProfilerProjectsProfilesList = ListProfilesResponse
  type
    Scopes CloudProfilerProjectsProfilesList =
      '[ CloudPlatform'FullControl,
         Monitoring'FullControl,
         Monitoring'Write
       ]
  requestClient CloudProfilerProjectsProfilesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudProfilerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudProfilerProjectsProfilesListResource
          )
          Core.mempty
