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
-- Module      : Gogol.BigQuery.Jobs.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new asynchronous job. This API has two different kinds of endpoint URIs, as this method supports a variety of use cases. * The /Metadata/ URI is used for most interactions, as it accepts the job configuration directly. * The /Upload/ URI is ONLY for the case when you\'re sending both a load job configuration and a data stream together. In this case, the Upload URI accepts the job configuration and the data as two distinct multipart MIME parts.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.insert@.
module Gogol.BigQuery.Jobs.Insert
    (
    -- * Resource
      BigQueryJobsInsertResource

    -- ** Constructing a Request
    , BigQueryJobsInsert (..)
    , newBigQueryJobsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.BigQuery.Types

-- | A resource alias for @bigquery.jobs.insert@ method which the
-- 'BigQueryJobsInsert' request conforms to.
type BigQueryJobsInsertResource =
     "bigquery" Core.:>
       "v2" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "jobs" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Job Core.:>
                             Core.Post '[Core.JSON] Job
       Core.:<|>
       "upload" Core.:>
         "bigquery" Core.:>
           "v2" Core.:>
             "projects" Core.:>
               Core.Capture "projectId" Core.Text Core.:>
                 "jobs" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.QueryParam "uploadType" Core.Multipart
                                 Core.:>
                                 Core.MultipartRelated '[Core.JSON] Job Core.:>
                                   Core.Post '[Core.JSON] Job

-- | Starts a new asynchronous job. This API has two different kinds of endpoint URIs, as this method supports a variety of use cases. * The /Metadata/ URI is used for most interactions, as it accepts the job configuration directly. * The /Upload/ URI is ONLY for the case when you\'re sending both a load job configuration and a data stream together. In this case, the Upload URI accepts the job configuration and the data as two distinct multipart MIME parts.
--
-- /See:/ 'newBigQueryJobsInsert' smart constructor.
data BigQueryJobsInsert = BigQueryJobsInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Job
      -- | Project ID of project that will be billed for the job.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsInsert' with the minimum fields required to make a request.
newBigQueryJobsInsert 
    ::  Job
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID of project that will be billed for the job. See 'projectId'.
    -> BigQueryJobsInsert
newBigQueryJobsInsert payload projectId =
  BigQueryJobsInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryJobsInsert where
        type Rs BigQueryJobsInsert = Job
        type Scopes BigQueryJobsInsert =
             '[Bigquery'FullControl, CloudPlatform'FullControl,
               Devstorage'FullControl, Devstorage'ReadOnly,
               Devstorage'ReadWrite]
        requestClient BigQueryJobsInsert{..}
          = go projectId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              bigQueryService
          where go Core.:<|> _
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BigQueryJobsInsertResource)
                      Core.mempty

instance Core.GoogleRequest
           (Core.MediaUpload BigQueryJobsInsert)
         where
        type Rs (Core.MediaUpload BigQueryJobsInsert) = Job
        type Scopes (Core.MediaUpload BigQueryJobsInsert) =
             Core.Scopes BigQueryJobsInsert
        requestClient
          (Core.MediaUpload BigQueryJobsInsert{..} body)
          = go projectId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              (Core.Just Core.Multipart)
              payload
              body
              bigQueryService
          where _ Core.:<|> go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BigQueryJobsInsertResource)
                      Core.mempty

