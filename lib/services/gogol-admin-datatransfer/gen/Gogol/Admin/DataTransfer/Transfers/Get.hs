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
-- Module      : Gogol.Admin.DataTransfer.Transfers.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a data transfer request by its resource ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.transfers.get@.
module Gogol.Admin.DataTransfer.Transfers.Get
  ( -- * Resource
    DatatransferTransfersGetResource,

    -- ** Constructing a Request
    newDatatransferTransfersGet,
    DatatransferTransfersGet,
  )
where

import Gogol.Admin.DataTransfer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datatransfer.transfers.get@ method which the
-- 'DatatransferTransfersGet' request conforms to.
type DatatransferTransfersGetResource =
  "admin"
    Core.:> "datatransfer"
    Core.:> "v1"
    Core.:> "transfers"
    Core.:> Core.Capture "dataTransferId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DataTransfer

-- | Retrieves a data transfer request by its resource ID.
--
-- /See:/ 'newDatatransferTransfersGet' smart constructor.
data DatatransferTransfersGet = DatatransferTransfersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ID of the resource to be retrieved. This is returned in the response from the insert method.
    dataTransferId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatatransferTransfersGet' with the minimum fields required to make a request.
newDatatransferTransfersGet ::
  -- |  ID of the resource to be retrieved. This is returned in the response from the insert method. See 'dataTransferId'.
  Core.Text ->
  DatatransferTransfersGet
newDatatransferTransfersGet dataTransferId =
  DatatransferTransfersGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dataTransferId = dataTransferId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DatatransferTransfersGet where
  type Rs DatatransferTransfersGet = DataTransfer
  type
    Scopes DatatransferTransfersGet =
      '[ "https://www.googleapis.com/auth/admin.datatransfer",
         "https://www.googleapis.com/auth/admin.datatransfer.readonly"
       ]
  requestClient DatatransferTransfersGet {..} =
    go
      dataTransferId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDataTransferService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DatatransferTransfersGetResource
          )
          Core.mempty
