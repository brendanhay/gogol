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
-- Module      : Gogol.BigQuery.Jobs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific job. Job information is available for a six month period after creation. Requires that you\'re the person who ran the job, or have the Is Owner project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.get@.
module Gogol.BigQuery.Jobs.Get
  ( -- * Resource
    BigQueryJobsGetResource,

    -- ** Constructing a Request
    newBigQueryJobsGet,
    BigQueryJobsGet,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.jobs.get@ method which the
-- 'BigQueryJobsGet' request conforms to.
type BigQueryJobsGetResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> Core.QueryParam "location" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Job

-- | Returns information about a specific job. Job information is available for a six month period after creation. Requires that you\'re the person who ran the job, or have the Is Owner project role.
--
-- /See:/ 'newBigQueryJobsGet' smart constructor.
data BigQueryJobsGet = BigQueryJobsGet
  { -- | [Required] Job ID of the requested job
    jobId :: Core.Text,
    -- | The geographic location of the job. Required except for US and EU. See details at https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying/your/location.
    location :: (Core.Maybe Core.Text),
    -- | [Required] Project ID of the requested job
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsGet' with the minimum fields required to make a request.
newBigQueryJobsGet ::
  -- |  [Required] Job ID of the requested job See 'jobId'.
  Core.Text ->
  -- |  [Required] Project ID of the requested job See 'projectId'.
  Core.Text ->
  BigQueryJobsGet
newBigQueryJobsGet jobId projectId =
  BigQueryJobsGet
    { jobId = jobId,
      location = Core.Nothing,
      projectId = projectId
    }

instance Core.GoogleRequest BigQueryJobsGet where
  type Rs BigQueryJobsGet = Job
  type
    Scopes BigQueryJobsGet =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryJobsGet {..} =
    go
      projectId
      jobId
      location
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryJobsGetResource)
          Core.mempty
