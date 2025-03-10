{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Admin.DataTransfer.Transfers.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the transfers for a customer by source user, destination user, or status.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.transfers.list@.
module Gogol.Admin.DataTransfer.Transfers.List
  ( -- * Resource
    DatatransferTransfersListResource,

    -- ** Constructing a Request
    DatatransferTransfersList (..),
    newDatatransferTransfersList,
  )
where

import Gogol.Admin.DataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @datatransfer.transfers.list@ method which the
-- 'DatatransferTransfersList' request conforms to.
type DatatransferTransfersListResource =
  "admin"
    Core.:> "datatransfer"
    Core.:> "v1"
    Core.:> "transfers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Int32
    Core.:> Core.QueryParam "newOwnerUserId" Core.Text
    Core.:> Core.QueryParam "oldOwnerUserId" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "status" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DataTransfersListResponse

-- | Lists the transfers for a customer by source user, destination user, or status.
--
-- /See:/ 'newDatatransferTransfersList' smart constructor.
data DatatransferTransfersList = DatatransferTransfersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable ID of the Google Workspace account.
    customerId :: (Core.Maybe Core.Text),
    -- | Maximum number of results to return. Default is 100.
    maxResults :: (Core.Maybe Core.Int32),
    -- | Destination user\'s profile ID.
    newOwnerUserId' :: (Core.Maybe Core.Text),
    -- | Source user\'s profile ID.
    oldOwnerUserId :: (Core.Maybe Core.Text),
    -- | Token to specify the next page in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | Status of the transfer.
    status :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatatransferTransfersList' with the minimum fields required to make a request.
newDatatransferTransfersList ::
  DatatransferTransfersList
newDatatransferTransfersList =
  DatatransferTransfersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerId = Core.Nothing,
      maxResults = Core.Nothing,
      newOwnerUserId' = Core.Nothing,
      oldOwnerUserId = Core.Nothing,
      pageToken = Core.Nothing,
      status = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DatatransferTransfersList where
  type Rs DatatransferTransfersList = DataTransfersListResponse
  type
    Scopes DatatransferTransfersList =
      '[Admin'Datatransfer, Admin'Datatransfer'Readonly]
  requestClient DatatransferTransfersList {..} =
    go
      xgafv
      accessToken
      callback
      customerId
      maxResults
      newOwnerUserId'
      oldOwnerUserId
      pageToken
      status
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDataTransferService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DatatransferTransfersListResource)
          Core.mempty
