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
-- Module      : Gogol.Jobs.Projects.Tenants.Companies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves specified company.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.get@.
module Gogol.Jobs.Projects.Tenants.Companies.Get
    (
    -- * Resource
      JobsProjectsTenantsCompaniesGetResource

    -- ** Constructing a Request
    , JobsProjectsTenantsCompaniesGet (..)
    , newJobsProjectsTenantsCompaniesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Jobs.Types

-- | A resource alias for @jobs.projects.tenants.companies.get@ method which the
-- 'JobsProjectsTenantsCompaniesGet' request conforms to.
type JobsProjectsTenantsCompaniesGetResource =
     "v4" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Company

-- | Retrieves specified company.
--
-- /See:/ 'newJobsProjectsTenantsCompaniesGet' smart constructor.
data JobsProjectsTenantsCompaniesGet = JobsProjectsTenantsCompaniesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the company to be retrieved. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\", for example, \"projects\/api-test-project\/tenants\/foo\/companies\/bar\".
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsCompaniesGet' with the minimum fields required to make a request.
newJobsProjectsTenantsCompaniesGet 
    ::  Core.Text
       -- ^  Required. The resource name of the company to be retrieved. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\", for example, \"projects\/api-test-project\/tenants\/foo\/companies\/bar\". See 'name'.
    -> JobsProjectsTenantsCompaniesGet
newJobsProjectsTenantsCompaniesGet name =
  JobsProjectsTenantsCompaniesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           JobsProjectsTenantsCompaniesGet
         where
        type Rs JobsProjectsTenantsCompaniesGet = Company
        type Scopes JobsProjectsTenantsCompaniesGet =
             '[CloudPlatform'FullControl, Jobs'FullControl]
        requestClient JobsProjectsTenantsCompaniesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              jobsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy JobsProjectsTenantsCompaniesGetResource)
                      Core.mempty

