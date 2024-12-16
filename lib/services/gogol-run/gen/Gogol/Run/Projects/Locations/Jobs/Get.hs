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
-- Module      : Gogol.Run.Projects.Locations.Jobs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Job.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.jobs.get@.
module Gogol.Run.Projects.Locations.Jobs.Get
    (
    -- * Resource
      RunProjectsLocationsJobsGetResource

    -- ** Constructing a Request
    , RunProjectsLocationsJobsGet (..)
    , newRunProjectsLocationsJobsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.jobs.get@ method which the
-- 'RunProjectsLocationsJobsGet' request conforms to.
type RunProjectsLocationsJobsGetResource =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] GoogleCloudRunV2Job

-- | Gets information about a Job.
--
-- /See:/ 'newRunProjectsLocationsJobsGet' smart constructor.
data RunProjectsLocationsJobsGet = RunProjectsLocationsJobsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The full name of the Job. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}, where {project} can be project id or number.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsJobsGet' with the minimum fields required to make a request.
newRunProjectsLocationsJobsGet 
    ::  Core.Text
       -- ^  Required. The full name of the Job. Format: projects\/{project}\/locations\/{location}\/jobs\/{job}, where {project} can be project id or number. See 'name'.
    -> RunProjectsLocationsJobsGet
newRunProjectsLocationsJobsGet name =
  RunProjectsLocationsJobsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           RunProjectsLocationsJobsGet
         where
        type Rs RunProjectsLocationsJobsGet =
             GoogleCloudRunV2Job
        type Scopes RunProjectsLocationsJobsGet =
             '[CloudPlatform'FullControl]
        requestClient RunProjectsLocationsJobsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              runService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy RunProjectsLocationsJobsGetResource)
                      Core.mempty

