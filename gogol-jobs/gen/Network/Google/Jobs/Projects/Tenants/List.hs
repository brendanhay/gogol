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
-- Module      : Network.Google.Jobs.Projects.Tenants.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tenants associated with the project.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.list@.
module Network.Google.Jobs.Projects.Tenants.List
  ( -- * Resource
    JobsProjectsTenantsListResource,

    -- ** Constructing a Request
    newJobsProjectsTenantsList,
    JobsProjectsTenantsList,
  )
where

import Network.Google.Jobs.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @jobs.projects.tenants.list@ method which the
-- 'JobsProjectsTenantsList' request conforms to.
type JobsProjectsTenantsListResource =
  "v4"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "tenants"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTenantsResponse

-- | Lists all tenants associated with the project.
--
-- /See:/ 'newJobsProjectsTenantsList' smart constructor.
data JobsProjectsTenantsList = JobsProjectsTenantsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of tenants to be returned, at most 100. Default is 100 if a non-positive number is provided.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The starting indicator from which to return results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the project under which the tenant is created. The format is \"projects\/{project_id}\", for example, \"projects\/foo\".
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsList' with the minimum fields required to make a request.
newJobsProjectsTenantsList ::
  -- |  Required. Resource name of the project under which the tenant is created. The format is \"projects\/{project_id}\", for example, \"projects\/foo\". See 'parent'.
  Core.Text ->
  JobsProjectsTenantsList
newJobsProjectsTenantsList parent =
  JobsProjectsTenantsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest JobsProjectsTenantsList where
  type Rs JobsProjectsTenantsList = ListTenantsResponse
  type
    Scopes JobsProjectsTenantsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/jobs"
       ]
  requestClient JobsProjectsTenantsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      jobsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy JobsProjectsTenantsListResource
          )
          Core.mempty
