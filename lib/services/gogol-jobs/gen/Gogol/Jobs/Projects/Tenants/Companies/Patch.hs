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
-- Module      : Gogol.Jobs.Projects.Tenants.Companies.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates specified company.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.patch@.
module Gogol.Jobs.Projects.Tenants.Companies.Patch
    (
    -- * Resource
      JobsProjectsTenantsCompaniesPatchResource

    -- ** Constructing a Request
    , newJobsProjectsTenantsCompaniesPatch
    , JobsProjectsTenantsCompaniesPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Jobs.Types

-- | A resource alias for @jobs.projects.tenants.companies.patch@ method which the
-- 'JobsProjectsTenantsCompaniesPatch' request conforms to.
type JobsProjectsTenantsCompaniesPatchResource =
     "v4" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Company Core.:>
                         Core.Patch '[Core.JSON] Company

-- | Updates specified company.
--
-- /See:/ 'newJobsProjectsTenantsCompaniesPatch' smart constructor.
data JobsProjectsTenantsCompaniesPatch = JobsProjectsTenantsCompaniesPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required during company update. The resource name for a company. This is generated by the service when a company is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\", for example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: Company
      -- | Strongly recommended for the best service experience. If update_mask is provided, only the specified fields in company are updated. Otherwise all the fields are updated. A field mask to specify the company fields to be updated. Only top level fields of Company are supported.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsCompaniesPatch' with the minimum fields required to make a request.
newJobsProjectsTenantsCompaniesPatch 
    ::  Core.Text
       -- ^  Required during company update. The resource name for a company. This is generated by the service when a company is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\", for example, \"projects\/foo\/tenants\/bar\/companies\/baz\". See 'name'.
    -> Company
       -- ^  Multipart request metadata. See 'payload'.
    -> JobsProjectsTenantsCompaniesPatch
newJobsProjectsTenantsCompaniesPatch name payload =
  JobsProjectsTenantsCompaniesPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           JobsProjectsTenantsCompaniesPatch
         where
        type Rs JobsProjectsTenantsCompaniesPatch = Company
        type Scopes JobsProjectsTenantsCompaniesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient JobsProjectsTenantsCompaniesPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              jobsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy JobsProjectsTenantsCompaniesPatchResource)
                      Core.mempty

