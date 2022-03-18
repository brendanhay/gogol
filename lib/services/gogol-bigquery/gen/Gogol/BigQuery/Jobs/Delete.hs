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
-- Module      : Gogol.BigQuery.Jobs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests the deletion of the metadata of a job. This call returns when the job\'s metadata is deleted.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.delete@.
module Gogol.BigQuery.Jobs.Delete
    (
    -- * Resource
      BigQueryJobsDeleteResource

    -- ** Constructing a Request
    , newBigQueryJobsDelete
    , BigQueryJobsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.jobs.delete@ method which the
-- 'BigQueryJobsDelete' request conforms to.
type BigQueryJobsDeleteResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "jobs" Core.:>
               Core.Capture "jobId" Core.Text Core.:>
                 "delete" Core.:>
                   Core.QueryParam "location" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] ()

-- | Requests the deletion of the metadata of a job. This call returns when the job\'s metadata is deleted.
--
-- /See:/ 'newBigQueryJobsDelete' smart constructor.
data BigQueryJobsDelete = BigQueryJobsDelete
    {
      -- | Required. Job ID of the job for which metadata is to be deleted. If this is a parent job which has child jobs, the metadata from all child jobs will be deleted as well. Direct deletion of the metadata of child jobs is not allowed.
      jobId :: Core.Text
      -- | The geographic location of the job. Required. See details at: https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying/your/location.
    , location :: (Core.Maybe Core.Text)
      -- | Required. Project ID of the job for which metadata is to be deleted.
    , projectId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsDelete' with the minimum fields required to make a request.
newBigQueryJobsDelete 
    ::  Core.Text
       -- ^  Required. Job ID of the job for which metadata is to be deleted. If this is a parent job which has child jobs, the metadata from all child jobs will be deleted as well. Direct deletion of the metadata of child jobs is not allowed. See 'jobId'.
    -> Core.Text
       -- ^  Required. Project ID of the job for which metadata is to be deleted. See 'projectId'.
    -> BigQueryJobsDelete
newBigQueryJobsDelete jobId projectId =
  BigQueryJobsDelete
    {jobId = jobId, location = Core.Nothing, projectId = projectId}

instance Core.GoogleRequest BigQueryJobsDelete where
        type Rs BigQueryJobsDelete = ()
        type Scopes BigQueryJobsDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BigQueryJobsDelete{..}
          = go projectId jobId location
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BigQueryJobsDeleteResource)
                      Core.mempty

