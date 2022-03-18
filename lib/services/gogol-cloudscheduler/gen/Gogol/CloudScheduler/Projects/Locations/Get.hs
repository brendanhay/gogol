{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudScheduler.Projects.Locations.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/scheduler/ Cloud Scheduler API Reference> for @cloudscheduler.projects.locations.get@.
module Gogol.CloudScheduler.Projects.Locations.Get
    (
    -- * Resource
      CloudSchedulerProjectsLocationsGetResource

    -- ** Constructing a Request
    , newCloudSchedulerProjectsLocationsGet
    , CloudSchedulerProjectsLocationsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudScheduler.Types

-- | A resource alias for @cloudscheduler.projects.locations.get@ method which the
-- 'CloudSchedulerProjectsLocationsGet' request conforms to.
type CloudSchedulerProjectsLocationsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Location

-- | Gets information about a location.
--
-- /See:/ 'newCloudSchedulerProjectsLocationsGet' smart constructor.
data CloudSchedulerProjectsLocationsGet = CloudSchedulerProjectsLocationsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Resource name for the location.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSchedulerProjectsLocationsGet' with the minimum fields required to make a request.
newCloudSchedulerProjectsLocationsGet 
    ::  Core.Text
       -- ^  Resource name for the location. See 'name'.
    -> CloudSchedulerProjectsLocationsGet
newCloudSchedulerProjectsLocationsGet name =
  CloudSchedulerProjectsLocationsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudSchedulerProjectsLocationsGet
         where
        type Rs CloudSchedulerProjectsLocationsGet = Location
        type Scopes CloudSchedulerProjectsLocationsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CloudSchedulerProjectsLocationsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudSchedulerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudSchedulerProjectsLocationsGetResource)
                      Core.mempty

