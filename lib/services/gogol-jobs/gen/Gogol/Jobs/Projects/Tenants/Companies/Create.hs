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
-- Module      : Gogol.Jobs.Projects.Tenants.Companies.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new company entity.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.create@.
module Gogol.Jobs.Projects.Tenants.Companies.Create
  ( -- * Resource
    JobsProjectsTenantsCompaniesCreateResource,

    -- ** Constructing a Request
    JobsProjectsTenantsCompaniesCreate (..),
    newJobsProjectsTenantsCompaniesCreate,
  )
where

import Gogol.Jobs.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @jobs.projects.tenants.companies.create@ method which the
-- 'JobsProjectsTenantsCompaniesCreate' request conforms to.
type JobsProjectsTenantsCompaniesCreateResource =
  "v4"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "companies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Company
    Core.:> Core.Post '[Core.JSON] Company

-- | Creates a new company entity.
--
-- /See:/ 'newJobsProjectsTenantsCompaniesCreate' smart constructor.
data JobsProjectsTenantsCompaniesCreate = JobsProjectsTenantsCompaniesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the tenant under which the company is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Company,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsCompaniesCreate' with the minimum fields required to make a request.
newJobsProjectsTenantsCompaniesCreate ::
  -- |  Required. Resource name of the tenant under which the company is created. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Company ->
  JobsProjectsTenantsCompaniesCreate
newJobsProjectsTenantsCompaniesCreate parent payload =
  JobsProjectsTenantsCompaniesCreate
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
    JobsProjectsTenantsCompaniesCreate
  where
  type Rs JobsProjectsTenantsCompaniesCreate = Company
  type
    Scopes JobsProjectsTenantsCompaniesCreate =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsCompaniesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      jobsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                JobsProjectsTenantsCompaniesCreateResource
          )
          Core.mempty
