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
-- Module      : Network.Google.StorageTransfer.TransferOperations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists transfer operations. Operations are ordered by their creation time in reverse chronological order.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.transferOperations.list@.
module Network.Google.StorageTransfer.TransferOperations.List
  ( -- * Resource
    StorageTransferTransferOperationsListResource,

    -- ** Constructing a Request
    newStorageTransferTransferOperationsList,
    StorageTransferTransferOperationsList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.list@ method which the
-- 'StorageTransferTransferOperationsList' request conforms to.
type StorageTransferTransferOperationsListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListOperationsResponse

-- | Lists transfer operations. Operations are ordered by their creation time in reverse chronological order.
--
-- /See:/ 'newStorageTransferTransferOperationsList' smart constructor.
data StorageTransferTransferOperationsList = StorageTransferTransferOperationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A list of query parameters specified as JSON text in the form of: @{\"projectId\":\"my_project_id\", \"jobNames\":[\"jobid1\",\"jobid2\",...], \"operationNames\":[\"opid1\",\"opid2\",...], \"transferStatuses\":[\"status1\",\"status2\",...]}@ Since @jobNames@, @operationNames@, and @transferStatuses@ support multiple values, they must be specified with array notation. @projectId@ is required. @jobNames@, @operationNames@, and @transferStatuses@ are optional. The valid values for @transferStatuses@ are case-insensitive: IN_PROGRESS, PAUSED, SUCCESS, FAILED, and ABORTED.
    filter :: Core.Text,
    -- | Required. The name of the type being listed; must be @transferOperations@.
    name :: Core.Text,
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

-- | Creates a value of 'StorageTransferTransferOperationsList' with the minimum fields required to make a request.
newStorageTransferTransferOperationsList ::
  -- |  Required. A list of query parameters specified as JSON text in the form of: @{\"projectId\":\"my_project_id\", \"jobNames\":[\"jobid1\",\"jobid2\",...], \"operationNames\":[\"opid1\",\"opid2\",...], \"transferStatuses\":[\"status1\",\"status2\",...]}@ Since @jobNames@, @operationNames@, and @transferStatuses@ support multiple values, they must be specified with array notation. @projectId@ is required. @jobNames@, @operationNames@, and @transferStatuses@ are optional. The valid values for @transferStatuses@ are case-insensitive: IN_PROGRESS, PAUSED, SUCCESS, FAILED, and ABORTED. See 'filter'.
  Core.Text ->
  -- |  Required. The name of the type being listed; must be @transferOperations@. See 'name'.
  Core.Text ->
  StorageTransferTransferOperationsList
newStorageTransferTransferOperationsList filter name =
  StorageTransferTransferOperationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = filter,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageTransferTransferOperationsList
  where
  type
    Rs StorageTransferTransferOperationsList =
      ListOperationsResponse
  type
    Scopes StorageTransferTransferOperationsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    StorageTransferTransferOperationsList {..} =
      go
        name
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
                Core.Proxy
                  StorageTransferTransferOperationsListResource
            )
            Core.mempty
