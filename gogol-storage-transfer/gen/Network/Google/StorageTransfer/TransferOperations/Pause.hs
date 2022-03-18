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
-- Module      : Network.Google.StorageTransfer.TransferOperations.Pause
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses a transfer operation.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferOperations.pause@.
module Network.Google.StorageTransfer.TransferOperations.Pause
  ( -- * Resource
    StorageTransferTransferOperationsPauseResource,

    -- ** Constructing a Request
    newStorageTransferTransferOperationsPause,
    StorageTransferTransferOperationsPause,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.pause@ method which the
-- 'StorageTransferTransferOperationsPause' request conforms to.
type StorageTransferTransferOperationsPauseResource =
  "v1"
    Core.:> Core.CaptureMode "name" "pause" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              PauseTransferOperationRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Pauses a transfer operation.
--
-- /See:/ 'newStorageTransferTransferOperationsPause' smart constructor.
data StorageTransferTransferOperationsPause = StorageTransferTransferOperationsPause
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the transfer operation.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PauseTransferOperationRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferTransferOperationsPause' with the minimum fields required to make a request.
newStorageTransferTransferOperationsPause ::
  -- |  Required. The name of the transfer operation. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PauseTransferOperationRequest ->
  StorageTransferTransferOperationsPause
newStorageTransferTransferOperationsPause name payload =
  StorageTransferTransferOperationsPause
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageTransferTransferOperationsPause
  where
  type
    Rs StorageTransferTransferOperationsPause =
      Empty
  type
    Scopes StorageTransferTransferOperationsPause =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    StorageTransferTransferOperationsPause {..} =
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
                Core.Proxy
                  StorageTransferTransferOperationsPauseResource
            )
            Core.mempty
