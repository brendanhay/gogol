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
    , BigQueryJobsDelete (..)
    , newBigQueryJobsDelete
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
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "location" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Delete '[Core.JSON] ()

-- | Requests the deletion of the metadata of a job. This call returns when the job\'s metadata is deleted.
--
-- /See:/ 'newBigQueryJobsDelete' smart constructor.
data BigQueryJobsDelete = BigQueryJobsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Job ID of the job for which metadata is to be deleted. If this is a parent job which has child jobs, the metadata from all child jobs will be deleted as well. Direct deletion of the metadata of child jobs is not allowed.
    , jobId :: Core.Text
      -- | The geographic location of the job. Required. See details at: https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying/your/location.
    , location :: (Core.Maybe Core.Text)
      -- | Required. Project ID of the job for which metadata is to be deleted.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
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
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobId = jobId
    , location = Core.Nothing
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryJobsDelete where
        type Rs BigQueryJobsDelete = ()
        type Scopes BigQueryJobsDelete =
             '[Bigquery'FullControl, CloudPlatform'FullControl]
        requestClient BigQueryJobsDelete{..}
          = go projectId jobId xgafv accessToken callback
              location
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              bigQueryService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BigQueryJobsDeleteResource)
                      Core.mempty

