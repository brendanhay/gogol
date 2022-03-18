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
-- Module      : Gogol.StorageTransfer.TransferJobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists transfer jobs.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferJobs.list@.
module Gogol.StorageTransfer.TransferJobs.List
  ( -- * Resource
    StorageTransferTransferJobsListResource,

    -- ** Constructing a Request
    newStorageTransferTransferJobsList,
    StorageTransferTransferJobsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.list@ method which the
-- 'StorageTransferTransferJobsList' request conforms to.
type StorageTransferTransferJobsListResource =
  "v1"
    Core.:> "transferJobs"
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListTransferJobsResponse

-- | Lists transfer jobs.
--
-- /See:/ 'newStorageTransferTransferJobsList' smart constructor.
data StorageTransferTransferJobsList = StorageTransferTransferJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A list of query parameters specified as JSON text in the form of: @{\"projectId\":\"my_project_id\", \"jobNames\":[\"jobid1\",\"jobid2\",...], \"jobStatuses\":[\"status1\",\"status2\",...]}@ Since @jobNames@ and @jobStatuses@ support multiple values, their values must be specified with array notation. @projectId@ is required. @jobNames@ and @jobStatuses@ are optional. The valid values for @jobStatuses@ are case-insensitive: ENABLED, DISABLED, and DELETED.
    filter :: Core.Text,
    -- | The list page size. The max allowed value is 256.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The list page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferTransferJobsList' with the minimum fields required to make a request.
newStorageTransferTransferJobsList ::
  -- |  Required. A list of query parameters specified as JSON text in the form of: @{\"projectId\":\"my_project_id\", \"jobNames\":[\"jobid1\",\"jobid2\",...], \"jobStatuses\":[\"status1\",\"status2\",...]}@ Since @jobNames@ and @jobStatuses@ support multiple values, their values must be specified with array notation. @projectId@ is required. @jobNames@ and @jobStatuses@ are optional. The valid values for @jobStatuses@ are case-insensitive: ENABLED, DISABLED, and DELETED. See 'filter'.
  Core.Text ->
  StorageTransferTransferJobsList
newStorageTransferTransferJobsList filter =
  StorageTransferTransferJobsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = filter,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageTransferTransferJobsList
  where
  type
    Rs StorageTransferTransferJobsList =
      ListTransferJobsResponse
  type
    Scopes StorageTransferTransferJobsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient StorageTransferTransferJobsList {..} =
    go
      (Core.Just filter)
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      storageTransferService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageTransferTransferJobsListResource
          )
          Core.mempty
