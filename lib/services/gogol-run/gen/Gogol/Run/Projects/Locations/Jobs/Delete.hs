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
-- Module      : Gogol.Run.Projects.Locations.Jobs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Job.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.jobs.delete@.
module Gogol.Run.Projects.Locations.Jobs.Delete
    (
    -- * Resource
      RunProjectsLocationsJobsDeleteResource

    -- ** Constructing a Request
    , RunProjectsLocationsJobsDelete (..)
    , newRunProjectsLocationsJobsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.jobs.delete@ method which the
-- 'RunProjectsLocationsJobsDelete' request conforms to.
type RunProjectsLocationsJobsDeleteResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "etag" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "validateOnly" Core.Bool Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] GoogleLongrunningOperation

-- | Deletes a Job.
--
-- /See:/ 'newRunProjectsLocationsJobsDelete' smart constructor.
data RunProjectsLocationsJobsDelete = RunProjectsLocationsJobsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
    , etag :: (Core.Maybe Core.Text)
      -- | Required. The full name of the Job. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}, where {project} can be project id or number.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Indicates that the request should be validated without actually deleting any resources.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsJobsDelete' with the minimum fields required to make a request.
newRunProjectsLocationsJobsDelete 
    ::  Core.Text
       -- ^  Required. The full name of the Job. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}, where {project} can be project id or number. See 'name'.
    -> RunProjectsLocationsJobsDelete
newRunProjectsLocationsJobsDelete name =
  RunProjectsLocationsJobsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , etag = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , validateOnly = Core.Nothing
    }

instance Core.GoogleRequest
           RunProjectsLocationsJobsDelete
         where
        type Rs RunProjectsLocationsJobsDelete =
             GoogleLongrunningOperation
        type Scopes RunProjectsLocationsJobsDelete =
             '[CloudPlatform'FullControl]
        requestClient RunProjectsLocationsJobsDelete{..}
          = go name xgafv accessToken callback etag uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              runService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy RunProjectsLocationsJobsDeleteResource)
                      Core.mempty

