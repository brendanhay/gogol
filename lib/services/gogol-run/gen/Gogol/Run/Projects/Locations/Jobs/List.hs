{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Run.Projects.Locations.Jobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Jobs. Results are sorted by creation time, descending.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.jobs.list@.
module Gogol.Run.Projects.Locations.Jobs.List
    (
    -- * Resource
      RunProjectsLocationsJobsListResource

    -- ** Constructing a Request
    , RunProjectsLocationsJobsList (..)
    , newRunProjectsLocationsJobsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.jobs.list@ method which the
-- 'RunProjectsLocationsJobsList' request conforms to.
type RunProjectsLocationsJobsListResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "jobs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "showDeleted" Core.Bool Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON]
                               GoogleCloudRunV2ListJobsResponse

-- | Lists Jobs. Results are sorted by creation time, descending.
--
-- /See:/ 'newRunProjectsLocationsJobsList' smart constructor.
data RunProjectsLocationsJobsList = RunProjectsLocationsJobsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Maximum number of Jobs to return in this call.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token received from a previous call to ListJobs. All other parameters must match.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The location and project to list resources on. Format: projects\/{project}\/locations\/{location}, where {project} can be project id or number.
    , parent :: Core.Text
      -- | If true, returns deleted (but unexpired) resources along with active ones.
    , showDeleted :: (Core.Maybe Core.Bool)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsJobsList' with the minimum fields required to make a request.
newRunProjectsLocationsJobsList 
    ::  Core.Text
       -- ^  Required. The location and project to list resources on. Format: projects\/{project}\/locations\/{location}, where {project} can be project id or number. See 'parent'.
    -> RunProjectsLocationsJobsList
newRunProjectsLocationsJobsList parent =
  RunProjectsLocationsJobsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , showDeleted = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RunProjectsLocationsJobsList
         where
        type Rs RunProjectsLocationsJobsList =
             GoogleCloudRunV2ListJobsResponse
        type Scopes RunProjectsLocationsJobsList =
             '[CloudPlatform'FullControl]
        requestClient RunProjectsLocationsJobsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              showDeleted
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              runService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy RunProjectsLocationsJobsListResource)
                      Core.mempty

