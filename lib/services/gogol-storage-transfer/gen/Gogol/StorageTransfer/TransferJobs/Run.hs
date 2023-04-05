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
-- Module      : Gogol.StorageTransfer.TransferJobs.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new operation for the specified transfer job. A @TransferJob@ has a maximum of one active @TransferOperation@. If this method is called while a @TransferOperation@ is active, an error is returned.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferJobs.run@.
module Gogol.StorageTransfer.TransferJobs.Run
  ( -- * Resource
    StorageTransferTransferJobsRunResource,

    -- ** Constructing a Request
    StorageTransferTransferJobsRun (..),
    newStorageTransferTransferJobsRun,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.run@ method which the
-- 'StorageTransferTransferJobsRun' request conforms to.
type StorageTransferTransferJobsRunResource =
  "v1"
    Core.:> Core.CaptureMode "jobName" "run" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RunTransferJobRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Starts a new operation for the specified transfer job. A @TransferJob@ has a maximum of one active @TransferOperation@. If this method is called while a @TransferOperation@ is active, an error is returned.
--
-- /See:/ 'newStorageTransferTransferJobsRun' smart constructor.
data StorageTransferTransferJobsRun = StorageTransferTransferJobsRun
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the transfer job.
    jobName :: Core.Text,
    -- | Multipart request metadata.
    payload :: RunTransferJobRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferTransferJobsRun' with the minimum fields required to make a request.
newStorageTransferTransferJobsRun ::
  -- |  Required. The name of the transfer job. See 'jobName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RunTransferJobRequest ->
  StorageTransferTransferJobsRun
newStorageTransferTransferJobsRun jobName payload =
  StorageTransferTransferJobsRun
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
    StorageTransferTransferJobsRun
  where
  type Rs StorageTransferTransferJobsRun = Operation
  type
    Scopes StorageTransferTransferJobsRun =
      '[CloudPlatform'FullControl]
  requestClient StorageTransferTransferJobsRun {..} =
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
              Core.Proxy StorageTransferTransferJobsRunResource
          )
          Core.mempty
