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
-- Module      : Gogol.Jobs.Projects.Tenants.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new tenant entity.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.create@.
module Gogol.Jobs.Projects.Tenants.Create
    (
    -- * Resource
      JobsProjectsTenantsCreateResource

    -- ** Constructing a Request
    , newJobsProjectsTenantsCreate
    , JobsProjectsTenantsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Jobs.Types

-- | A resource alias for @jobs.projects.tenants.create@ method which the
-- 'JobsProjectsTenantsCreate' request conforms to.
type JobsProjectsTenantsCreateResource =
     "v4" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "tenants" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Tenant Core.:>
                         Core.Post '[Core.JSON] Tenant

-- | Creates a new tenant entity.
--
-- /See:/ 'newJobsProjectsTenantsCreate' smart constructor.
data JobsProjectsTenantsCreate = JobsProjectsTenantsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the project under which the tenant is created. The format is \"projects\/{project_id}\", for example, \"projects\/foo\".
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Tenant
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsCreate' with the minimum fields required to make a request.
newJobsProjectsTenantsCreate 
    ::  Core.Text
       -- ^  Required. Resource name of the project under which the tenant is created. The format is \"projects\/{project_id}\", for example, \"projects\/foo\". See 'parent'.
    -> Tenant
       -- ^  Multipart request metadata. See 'payload'.
    -> JobsProjectsTenantsCreate
newJobsProjectsTenantsCreate parent payload =
  JobsProjectsTenantsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest JobsProjectsTenantsCreate
         where
        type Rs JobsProjectsTenantsCreate = Tenant
        type Scopes JobsProjectsTenantsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient JobsProjectsTenantsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              jobsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy JobsProjectsTenantsCreateResource)
                      Core.mempty

