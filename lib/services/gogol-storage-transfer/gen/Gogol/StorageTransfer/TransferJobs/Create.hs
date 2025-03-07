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
-- Module      : Gogol.StorageTransfer.TransferJobs.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a transfer job that runs periodically.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferJobs.create@.
module Gogol.StorageTransfer.TransferJobs.Create
  ( -- * Resource
    StorageTransferTransferJobsCreateResource,

    -- ** Constructing a Request
    StorageTransferTransferJobsCreate (..),
    newStorageTransferTransferJobsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferJobs.create@ method which the
-- 'StorageTransferTransferJobsCreate' request conforms to.
type StorageTransferTransferJobsCreateResource =
  "v1"
    Core.:> "transferJobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TransferJob
    Core.:> Core.Post '[Core.JSON] TransferJob

-- | Creates a transfer job that runs periodically.
--
-- /See:/ 'newStorageTransferTransferJobsCreate' smart constructor.
data StorageTransferTransferJobsCreate = StorageTransferTransferJobsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TransferJob,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferTransferJobsCreate' with the minimum fields required to make a request.
newStorageTransferTransferJobsCreate ::
  -- |  Multipart request metadata. See 'payload'.
  TransferJob ->
  StorageTransferTransferJobsCreate
newStorageTransferTransferJobsCreate payload =
  StorageTransferTransferJobsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest StorageTransferTransferJobsCreate where
  type Rs StorageTransferTransferJobsCreate = TransferJob
  type
    Scopes StorageTransferTransferJobsCreate =
      '[CloudPlatform'FullControl]
  requestClient StorageTransferTransferJobsCreate {..} =
    go
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
              Core.Proxy StorageTransferTransferJobsCreateResource
          )
          Core.mempty
