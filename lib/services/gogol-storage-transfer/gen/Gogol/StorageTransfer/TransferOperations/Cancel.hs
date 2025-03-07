{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StorageTransfer.TransferOperations.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a transfer. Use the transferOperations.get method to check if the cancellation succeeded or if the operation completed despite the @cancel@ request. When you cancel an operation, the currently running transfer is interrupted. For recurring transfer jobs, the next instance of the transfer job will still run. For example, if your job is configured to run every day at 1pm and you cancel Monday\'s operation at 1:05pm, Monday\'s transfer will stop. However, a transfer job will still be attempted on Tuesday. This applies only to currently running operations. If an operation is not currently running, @cancel@ does nothing. /Caution:/ Canceling a transfer job can leave your data in an unknown state. We recommend that you restore the state at both the destination and the source after the @cancel@ request completes so that your data is in a consistent state. When you cancel a job, the next job computes a delta of files and may repair any inconsistent state. For instance, if you run a job every day, and today\'s
-- job found 10 new files and transferred five files before you canceled the job, tomorrow\'s transfer operation will compute a new delta with the five files that were not copied today plus any new files discovered tomorrow.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferOperations.cancel@.
module Gogol.StorageTransfer.TransferOperations.Cancel
  ( -- * Resource
    StorageTransferTransferOperationsCancelResource,

    -- ** Constructing a Request
    StorageTransferTransferOperationsCancel (..),
    newStorageTransferTransferOperationsCancel,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.cancel@ method which the
-- 'StorageTransferTransferOperationsCancel' request conforms to.
type StorageTransferTransferOperationsCancelResource =
  "v1"
    Core.:> Core.CaptureMode "name" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CancelOperationRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Cancels a transfer. Use the transferOperations.get method to check if the cancellation succeeded or if the operation completed despite the @cancel@ request. When you cancel an operation, the currently running transfer is interrupted. For recurring transfer jobs, the next instance of the transfer job will still run. For example, if your job is configured to run every day at 1pm and you cancel Monday\'s operation at 1:05pm, Monday\'s transfer will stop. However, a transfer job will still be attempted on Tuesday. This applies only to currently running operations. If an operation is not currently running, @cancel@ does nothing. /Caution:/ Canceling a transfer job can leave your data in an unknown state. We recommend that you restore the state at both the destination and the source after the @cancel@ request completes so that your data is in a consistent state. When you cancel a job, the next job computes a delta of files and may repair any inconsistent state. For instance, if you run a job every day, and today\'s
-- job found 10 new files and transferred five files before you canceled the job, tomorrow\'s transfer operation will compute a new delta with the five files that were not copied today plus any new files discovered tomorrow.
--
-- /See:/ 'newStorageTransferTransferOperationsCancel' smart constructor.
data StorageTransferTransferOperationsCancel = StorageTransferTransferOperationsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the operation resource to be cancelled.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: CancelOperationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferTransferOperationsCancel' with the minimum fields required to make a request.
newStorageTransferTransferOperationsCancel ::
  -- |  The name of the operation resource to be cancelled. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CancelOperationRequest ->
  StorageTransferTransferOperationsCancel
newStorageTransferTransferOperationsCancel name payload =
  StorageTransferTransferOperationsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest StorageTransferTransferOperationsCancel where
  type Rs StorageTransferTransferOperationsCancel = Empty
  type
    Scopes StorageTransferTransferOperationsCancel =
      '[CloudPlatform'FullControl]
  requestClient StorageTransferTransferOperationsCancel {..} =
    go
      name
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
              Core.Proxy StorageTransferTransferOperationsCancelResource
          )
          Core.mempty
