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
-- Module      : Gogol.BigQuery.Jobs.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.insert@.
module Gogol.BigQuery.Jobs.Insert
  ( -- * Resource
    BigQueryJobsInsertResource,

    -- ** Constructing a Request
    BigQueryJobsInsert (..),
    newBigQueryJobsInsert,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.jobs.insert@ method which the
-- 'BigQueryJobsInsert' request conforms to.
type BigQueryJobsInsertResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "jobs"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Job
    Core.:> Core.Post '[Core.JSON] Job
    Core.:<|> "upload"
      Core.:> "bigquery"
      Core.:> "v2"
      Core.:> "projects"
      Core.:> Core.Capture "projectId" Core.Text
      Core.:> "jobs"
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.Multipart
      Core.:> Core.MultipartRelated '[Core.JSON] Job
      Core.:> Core.Post '[Core.JSON] Job

-- | Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ 'newBigQueryJobsInsert' smart constructor.
data BigQueryJobsInsert = BigQueryJobsInsert
  { -- | Multipart request metadata.
    payload :: Job,
    -- | Project ID of the project that will be billed for the job
    projectId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryJobsInsert' with the minimum fields required to make a request.
newBigQueryJobsInsert ::
  -- |  Multipart request metadata. See 'payload'.
  Job ->
  -- |  Project ID of the project that will be billed for the job See 'projectId'.
  Core.Text ->
  BigQueryJobsInsert
newBigQueryJobsInsert payload projectId =
  BigQueryJobsInsert {payload = payload, projectId = projectId}

instance Core.GoogleRequest BigQueryJobsInsert where
  type Rs BigQueryJobsInsert = Job
  type
    Scopes BigQueryJobsInsert =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         Devstorage'FullControl,
         Devstorage'ReadOnly,
         Devstorage'ReadWrite
       ]
  requestClient BigQueryJobsInsert {..} =
    go
      projectId
      (Core.Just Core.AltJSON)
      payload
      bigQueryService
    where
      go Core.:<|> _ =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryJobsInsertResource)
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload BigQueryJobsInsert)
  where
  type Rs (Core.MediaUpload BigQueryJobsInsert) = Job
  type
    Scopes (Core.MediaUpload BigQueryJobsInsert) =
      Core.Scopes BigQueryJobsInsert
  requestClient
    (Core.MediaUpload BigQueryJobsInsert {..} body) =
      go
        projectId
        (Core.Just Core.AltJSON)
        (Core.Just Core.Multipart)
        payload
        body
        bigQueryService
      where
        _ Core.:<|> go =
          Core.buildClient
            (Core.Proxy :: Core.Proxy BigQueryJobsInsertResource)
            Core.mempty
