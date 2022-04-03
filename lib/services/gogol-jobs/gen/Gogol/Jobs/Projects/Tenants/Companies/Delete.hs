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
-- Module      : Gogol.Jobs.Projects.Tenants.Companies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes specified company. Prerequisite: The company has no jobs associated with it.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.companies.delete@.
module Gogol.Jobs.Projects.Tenants.Companies.Delete
  ( -- * Resource
    JobsProjectsTenantsCompaniesDeleteResource,

    -- ** Constructing a Request
    JobsProjectsTenantsCompaniesDelete (..),
    newJobsProjectsTenantsCompaniesDelete,
  )
where

import Gogol.Jobs.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @jobs.projects.tenants.companies.delete@ method which the
-- 'JobsProjectsTenantsCompaniesDelete' request conforms to.
type JobsProjectsTenantsCompaniesDeleteResource =
  "v4"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes specified company. Prerequisite: The company has no jobs associated with it.
--
-- /See:/ 'newJobsProjectsTenantsCompaniesDelete' smart constructor.
data JobsProjectsTenantsCompaniesDelete = JobsProjectsTenantsCompaniesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the company to be deleted. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\", for example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsCompaniesDelete' with the minimum fields required to make a request.
newJobsProjectsTenantsCompaniesDelete ::
  -- |  Required. The resource name of the company to be deleted. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\", for example, \"projects\/foo\/tenants\/bar\/companies\/baz\". See 'name'.
  Core.Text ->
  JobsProjectsTenantsCompaniesDelete
newJobsProjectsTenantsCompaniesDelete name =
  JobsProjectsTenantsCompaniesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    JobsProjectsTenantsCompaniesDelete
  where
  type Rs JobsProjectsTenantsCompaniesDelete = Empty
  type
    Scopes JobsProjectsTenantsCompaniesDelete =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsCompaniesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      jobsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                JobsProjectsTenantsCompaniesDeleteResource
          )
          Core.mempty
