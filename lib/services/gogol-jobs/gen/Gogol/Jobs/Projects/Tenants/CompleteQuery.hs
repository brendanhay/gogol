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
-- Module      : Gogol.Jobs.Projects.Tenants.CompleteQuery
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes the specified prefix with keyword suggestions. Intended for use by a job search auto-complete search box.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.completeQuery@.
module Gogol.Jobs.Projects.Tenants.CompleteQuery
  ( -- * Resource
    JobsProjectsTenantsCompleteQueryResource,

    -- ** Constructing a Request
    JobsProjectsTenantsCompleteQuery (..),
    newJobsProjectsTenantsCompleteQuery,
  )
where

import Gogol.Jobs.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @jobs.projects.tenants.completeQuery@ method which the
-- 'JobsProjectsTenantsCompleteQuery' request conforms to.
type JobsProjectsTenantsCompleteQueryResource =
  "v4"
    Core.:> Core.CaptureMode "tenant" "completeQuery" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "company" Core.Text
    Core.:> Core.QueryParams "languageCodes" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam
              "scope"
              ProjectsTenantsCompleteQueryScope
    Core.:> Core.QueryParam
              "type"
              ProjectsTenantsCompleteQueryType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CompleteQueryResponse

-- | Completes the specified prefix with keyword suggestions. Intended for use by a job search auto-complete search box.
--
-- /See:/ 'newJobsProjectsTenantsCompleteQuery' smart constructor.
data JobsProjectsTenantsCompleteQuery = JobsProjectsTenantsCompleteQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If provided, restricts completion to specified company. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\/companies\/{company_id}\", for example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
    company :: (Core.Maybe Core.Text),
    -- | The list of languages of the query. This is the BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see <https://tools.ietf.org/html/bcp47 Tags for Identifying Languages>. The maximum number of allowed characters is 255.
    languageCodes :: (Core.Maybe [Core.Text]),
    -- | Required. Completion result count. The maximum allowed page size is 10.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Required. The query used to generate suggestions. The maximum number of allowed characters is 255.
    query :: (Core.Maybe Core.Text),
    -- | The scope of the completion. The defaults is CompletionScope.PUBLIC.
    scope :: (Core.Maybe ProjectsTenantsCompleteQueryScope),
    -- | Required. Resource name of tenant the completion is performed within. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\".
    tenant :: Core.Text,
    -- | The completion topic. The default is CompletionType.COMBINED.
    type' :: (Core.Maybe ProjectsTenantsCompleteQueryType),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JobsProjectsTenantsCompleteQuery' with the minimum fields required to make a request.
newJobsProjectsTenantsCompleteQuery ::
  -- |  Required. Resource name of tenant the completion is performed within. The format is \"projects\/{project/id}\/tenants\/{tenant/id}\", for example, \"projects\/foo\/tenants\/bar\". See 'tenant'.
  Core.Text ->
  JobsProjectsTenantsCompleteQuery
newJobsProjectsTenantsCompleteQuery tenant =
  JobsProjectsTenantsCompleteQuery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      company = Core.Nothing,
      languageCodes = Core.Nothing,
      pageSize = Core.Nothing,
      query = Core.Nothing,
      scope = Core.Nothing,
      tenant = tenant,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    JobsProjectsTenantsCompleteQuery
  where
  type
    Rs JobsProjectsTenantsCompleteQuery =
      CompleteQueryResponse
  type
    Scopes JobsProjectsTenantsCompleteQuery =
      '[CloudPlatform'FullControl, Jobs'FullControl]
  requestClient JobsProjectsTenantsCompleteQuery {..} =
    go
      tenant
      xgafv
      accessToken
      callback
      company
      (languageCodes Core.^. Core._Default)
      pageSize
      query
      scope
      type'
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      jobsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy JobsProjectsTenantsCompleteQueryResource
          )
          Core.mempty
