{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Admin.DataTransfer.Transfers.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a data transfer request.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.transfers.insert@.
module Gogol.Admin.DataTransfer.Transfers.Insert
    (
    -- * Resource
      DatatransferTransfersInsertResource

    -- ** Constructing a Request
    , newDatatransferTransfersInsert
    , DatatransferTransfersInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.DataTransfer.Types

-- | A resource alias for @datatransfer.transfers.insert@ method which the
-- 'DatatransferTransfersInsert' request conforms to.
type DatatransferTransfersInsertResource =
     "admin" Core.:>
       "datatransfer" Core.:>
         "v1" Core.:>
           "transfers" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] DataTransfer Core.:>
                           Core.Post '[Core.JSON] DataTransfer

-- | Inserts a data transfer request.
--
-- /See:/ 'newDatatransferTransfersInsert' smart constructor.
data DatatransferTransfersInsert = DatatransferTransfersInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: DataTransfer
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatatransferTransfersInsert' with the minimum fields required to make a request.
newDatatransferTransfersInsert 
    ::  DataTransfer
       -- ^  Multipart request metadata. See 'payload'.
    -> DatatransferTransfersInsert
newDatatransferTransfersInsert payload =
  DatatransferTransfersInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DatatransferTransfersInsert
         where
        type Rs DatatransferTransfersInsert = DataTransfer
        type Scopes DatatransferTransfersInsert =
             '["https://www.googleapis.com/auth/admin.datatransfer"]
        requestClient DatatransferTransfersInsert{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDataTransferService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DatatransferTransfersInsertResource)
                      Core.mempty

