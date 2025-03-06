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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new client buyer.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.create@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.Create
  ( -- * Resource
    AdExchangeBuyer2AccountsClientsCreateResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsClientsCreate (..),
    newAdExchangeBuyer2AccountsClientsCreate,
  )
where

import Gogol.AdExchangeBuyer2.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangebuyer2.accounts.clients.create@ method which the
-- 'AdExchangeBuyer2AccountsClientsCreate' request conforms to.
type AdExchangeBuyer2AccountsClientsCreateResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "clients"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Client
    Core.:> Core.Post '[Core.JSON] Client

-- | Creates a new client buyer.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsCreate' smart constructor.
data AdExchangeBuyer2AccountsClientsCreate = AdExchangeBuyer2AccountsClientsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Unique numerical account ID for the buyer of which the client buyer is a customer; the sponsor buyer to create a client for. (required)
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Client,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsCreate' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsCreate ::
  -- |  Unique numerical account ID for the buyer of which the client buyer is a customer; the sponsor buyer to create a client for. (required) See 'accountId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  Client ->
  AdExchangeBuyer2AccountsClientsCreate
newAdExchangeBuyer2AccountsClientsCreate accountId payload =
  AdExchangeBuyer2AccountsClientsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdExchangeBuyer2AccountsClientsCreate where
  type Rs AdExchangeBuyer2AccountsClientsCreate = Client
  type
    Scopes AdExchangeBuyer2AccountsClientsCreate =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyer2AccountsClientsCreate {..} =
    go
      accountId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adExchangeBuyer2Service
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyer2AccountsClientsCreateResource
          )
          Core.mempty
