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
-- Module      : Gogol.BigQuery.Jobs.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests that a job be cancelled. This call will return immediately, and the client will need to poll for the job status to see if the cancel completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.cancel@.
module Gogol.BigQuery.Jobs.Cancel
    (
    -- * Resource
      BigQueryJobsCancelResource

    -- ** Constructing a Request
    , newBigQueryJobsCancel
    , BigQueryJobsCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.jobs.cancel@ method which the
-- 'BigQueryJobsCancel' request conforms to.
type BigQueryJobsCancelResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "jobs" Core.:>
               Core.Capture "jobId" Core.Text Core.:>
                 "cancel" Core.:>
                   Core.QueryParam "location" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Post '[Core.JSON] JobCancelResponse

-- | Requests that a job be cancelled. This call will return immediately, and the client will need to poll for the job status to see if the cancel completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ 'newBigQueryJobsCancel' smart constructor.
data BigQueryJobsCancel = BigQueryJobsCancel
    {
      -- | [Required] Job ID of the job to cancel
      jobId :: Core.Text
      -- | The geographic location of the job. Required except for US and EU. See details at https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying/your/location.
    , location :: (Core.Maybe Core.Text)
      -- | [Required] Project ID of the job to cancel
    , projectId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsCancel' with the minimum fields required to make a request.
newBigQueryJobsCancel 
    ::  Core.Text
       -- ^  [Required] Job ID of the job to cancel See 'jobId'.
    -> Core.Text
       -- ^  [Required] Project ID of the job to cancel See 'projectId'.
    -> BigQueryJobsCancel
newBigQueryJobsCancel jobId projectId =
  BigQueryJobsCancel
    {jobId = jobId, location = Core.Nothing, projectId = projectId}

instance Core.GoogleRequest BigQueryJobsCancel where
        type Rs BigQueryJobsCancel = JobCancelResponse
        type Scopes BigQueryJobsCancel =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BigQueryJobsCancel{..}
          = go projectId jobId location
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BigQueryJobsCancelResource)
                      Core.mempty

