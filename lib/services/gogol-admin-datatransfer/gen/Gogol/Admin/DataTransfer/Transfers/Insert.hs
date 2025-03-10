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
-- Module      : Gogol.Admin.DataTransfer.Transfers.Insert
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a data transfer request. See the </admin-sdk/data-transfer/v1/parameters Transfer parameters> reference for specific application requirements.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.transfers.insert@.
module Gogol.Admin.DataTransfer.Transfers.Insert
  ( -- * Resource
    DatatransferTransfersInsertResource,

    -- ** Constructing a Request
    DatatransferTransfersInsert (..),
    newDatatransferTransfersInsert,
  )
where

import Gogol.Admin.DataTransfer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @datatransfer.transfers.insert@ method which the
-- 'DatatransferTransfersInsert' request conforms to.
type DatatransferTransfersInsertResource =
  "admin"
    Core.:> "datatransfer"
    Core.:> "v1"
    Core.:> "transfers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DataTransfer
    Core.:> Core.Post '[Core.JSON] DataTransfer

-- | Inserts a data transfer request. See the </admin-sdk/data-transfer/v1/parameters Transfer parameters> reference for specific application requirements.
--
-- /See:/ 'newDatatransferTransfersInsert' smart constructor.
data DatatransferTransfersInsert = DatatransferTransfersInsert
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: DataTransfer,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatatransferTransfersInsert' with the minimum fields required to make a request.
newDatatransferTransfersInsert ::
  -- |  Multipart request metadata. See 'payload'.
  DataTransfer ->
  DatatransferTransfersInsert
newDatatransferTransfersInsert payload =
  DatatransferTransfersInsert
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DatatransferTransfersInsert where
  type Rs DatatransferTransfersInsert = DataTransfer
  type Scopes DatatransferTransfersInsert = '[Admin'Datatransfer]
  requestClient DatatransferTransfersInsert {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDataTransferService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DatatransferTransfersInsertResource)
          Core.mempty
