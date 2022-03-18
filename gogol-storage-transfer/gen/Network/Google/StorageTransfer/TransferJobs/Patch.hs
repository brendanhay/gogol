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
-- Module      : Network.Google.StorageTransfer.TransferJobs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a transfer job. Updating a job\'s transfer spec does not affect transfer operations that are running already. __Note:__ The job\'s status field can be modified using this RPC (for example, to set a job\'s status to DELETED, DISABLED, or ENABLED).
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferJobs.patch@.
module Network.Google.StorageTransfer.TransferJobs.Patch
  ( -- * Resource
    StorageTransferTransferJobsPatchResource,

    -- ** Constructing a Request
    newStorageTransferTransferJobsPatch,
    StorageTransferTransferJobsPatch,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.patch@ method which the
-- 'StorageTransferTransferJobsPatch' request conforms to.
type StorageTransferTransferJobsPatchResource =
  "v1"
    Core.:> Core.Capture "jobName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateTransferJobRequest
    Core.:> Core.Patch '[Core.JSON] TransferJob

-- | Updates a transfer job. Updating a job\'s transfer spec does not affect transfer operations that are running already. __Note:__ The job\'s status field can be modified using this RPC (for example, to set a job\'s status to DELETED, DISABLED, or ENABLED).
--
-- /See:/ 'newStorageTransferTransferJobsPatch' smart constructor.
data StorageTransferTransferJobsPatch = StorageTransferTransferJobsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of job to update.
    jobName :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateTransferJobRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferTransferJobsPatch' with the minimum fields required to make a request.
newStorageTransferTransferJobsPatch ::
  -- |  Required. The name of job to update. See 'jobName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateTransferJobRequest ->
  StorageTransferTransferJobsPatch
newStorageTransferTransferJobsPatch jobName payload =
  StorageTransferTransferJobsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobName = jobName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageTransferTransferJobsPatch
  where
  type
    Rs StorageTransferTransferJobsPatch =
      TransferJob
  type
    Scopes StorageTransferTransferJobsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient StorageTransferTransferJobsPatch {..} =
    go
      jobName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      storageTransferService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageTransferTransferJobsPatchResource
          )
          Core.mempty
