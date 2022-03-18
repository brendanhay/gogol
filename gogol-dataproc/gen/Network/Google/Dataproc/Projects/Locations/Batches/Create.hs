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
-- Module      : Network.Google.Dataproc.Projects.Locations.Batches.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a batch workload that executes asynchronously.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.batches.create@.
module Network.Google.Dataproc.Projects.Locations.Batches.Create
  ( -- * Resource
    DataprocProjectsLocationsBatchesCreateResource,

    -- ** Constructing a Request
    newDataprocProjectsLocationsBatchesCreate,
    DataprocProjectsLocationsBatchesCreate,
  )
where

import Network.Google.Dataproc.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataproc.projects.locations.batches.create@ method which the
-- 'DataprocProjectsLocationsBatchesCreate' request conforms to.
type DataprocProjectsLocationsBatchesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "batches"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "batchId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Batch
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a batch workload that executes asynchronously.
--
-- /See:/ 'newDataprocProjectsLocationsBatchesCreate' smart constructor.
data DataprocProjectsLocationsBatchesCreate = DataprocProjectsLocationsBatchesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. The ID to use for the batch, which will become the final component of the batch\'s resource name.This value must be 4-63 characters. Valid characters are \/[a-z][0-9]-\/.
    batchId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource where this batch will be created.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Batch,
    -- | Optional. A unique ID used to identify the request. If the service receives two CreateBatchRequest (https:\/\/cloud.google.com\/dataproc\/docs\/reference\/rpc\/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s with the same request/id, the second request is ignored and the Operation that corresponds to the first Batch created and stored in the backend is returned.Recommendation: Set this value to a UUID (https:\/\/en.wikipedia.org\/wiki\/Universally/unique/identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (/), and hyphens (-). The maximum length is 40 characters.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsBatchesCreate' with the minimum fields required to make a request.
newDataprocProjectsLocationsBatchesCreate ::
  -- |  Required. The parent resource where this batch will be created. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Batch ->
  DataprocProjectsLocationsBatchesCreate
newDataprocProjectsLocationsBatchesCreate parent payload =
  DataprocProjectsLocationsBatchesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      batchId = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsBatchesCreate
  where
  type
    Rs DataprocProjectsLocationsBatchesCreate =
      Operation
  type
    Scopes DataprocProjectsLocationsBatchesCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DataprocProjectsLocationsBatchesCreate {..} =
      go
        parent
        xgafv
        accessToken
        batchId
        callback
        requestId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsBatchesCreateResource
            )
            Core.mempty
