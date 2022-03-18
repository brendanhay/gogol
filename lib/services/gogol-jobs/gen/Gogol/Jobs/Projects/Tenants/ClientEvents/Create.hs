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
-- Module      : Gogol.Jobs.Projects.Tenants.ClientEvents.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Report events issued when end user interacts with customer\'s application that uses Cloud Talent Solution. You may inspect the created events in <https://console.cloud.google.com/talent-solution/overview self service tools>. <https://cloud.google.com/talent-solution/docs/management-tools Learn more> about self service tools.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.clientEvents.create@.
module Gogol.Jobs.Projects.Tenants.ClientEvents.Create
    (
    -- * Resource
      JobsProjectsTenantsClientEventsCreateResource

    -- ** Constructing a Request
    , newJobsProjectsTenantsClientEventsCreate
    , JobsProjectsTenantsClientEventsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Jobs.Types

-- | A resource alias for @jobs.projects.tenants.clientEvents.create@ method which the
-- 'JobsProjectsTenantsClientEventsCreate' request conforms to.
type JobsProjectsTenantsClientEventsCreateResource =
     "v4" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "clientEvents" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] ClientEvent Core.:>
                         Core.Post '[Core.JSON] ClientEvent

-- | Report events issued when end user interacts with customer\'s application that uses Cloud Talent Solution. You may inspect the created events in <https://console.cloud.google.com/talent-solution/overview self service tools>. <https://cloud.google.com/talent-solution/docs/management-tools Learn more> about self service tools.
--
-- /See:/ 'newJobsProjectsTenantsClientEventsCreate' smart constructor.
data JobsProjectsTenantsClientEventsCreate = JobsProjectsTenantsClientEventsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the tenant under which the event is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\".
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: ClientEvent
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsClientEventsCreate' with the minimum fields required to make a request.
newJobsProjectsTenantsClientEventsCreate 
    ::  Core.Text
       -- ^  Required. Resource name of the tenant under which the event is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\". See 'parent'.
    -> ClientEvent
       -- ^  Multipart request metadata. See 'payload'.
    -> JobsProjectsTenantsClientEventsCreate
newJobsProjectsTenantsClientEventsCreate parent payload =
  JobsProjectsTenantsClientEventsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           JobsProjectsTenantsClientEventsCreate
         where
        type Rs JobsProjectsTenantsClientEventsCreate =
             ClientEvent
        type Scopes JobsProjectsTenantsClientEventsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient
          JobsProjectsTenantsClientEventsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              jobsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           JobsProjectsTenantsClientEventsCreateResource)
                      Core.mempty

