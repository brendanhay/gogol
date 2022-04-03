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
-- Module      : Gogol.AdExchangeBuyer2.Accounts.Clients.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing client buyer.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.update@.
module Gogol.AdExchangeBuyer2.Accounts.Clients.Update
  ( -- * Resource
    AdExchangeBuyer2AccountsClientsUpdateResource,

    -- ** Constructing a Request
    AdExchangeBuyer2AccountsClientsUpdate (..),
    newAdExchangeBuyer2AccountsClientsUpdate,
  )
where

import Gogol.AdExchangeBuyer2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.clients.update@ method which the
-- 'AdExchangeBuyer2AccountsClientsUpdate' request conforms to.
type AdExchangeBuyer2AccountsClientsUpdateResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Int64
    Core.:> "clients"
    Core.:> Core.Capture "clientAccountId" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Client
    Core.:> Core.Put '[Core.JSON] Client

-- | Updates an existing client buyer.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsUpdate' smart constructor.
data AdExchangeBuyer2AccountsClientsUpdate = AdExchangeBuyer2AccountsClientsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Unique numerical account ID for the buyer of which the client buyer is a customer; the sponsor buyer to update a client for. (required)
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Unique numerical account ID of the client to update. (required)
    clientAccountId :: Core.Int64,
    -- | Multipart request metadata.
    payload :: Client,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsUpdate' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsUpdate ::
  -- |  Unique numerical account ID for the buyer of which the client buyer is a customer; the sponsor buyer to update a client for. (required) See 'accountId'.
  Core.Int64 ->
  -- |  Unique numerical account ID of the client to update. (required) See 'clientAccountId'.
  Core.Int64 ->
  -- |  Multipart request metadata. See 'payload'.
  Client ->
  AdExchangeBuyer2AccountsClientsUpdate
newAdExchangeBuyer2AccountsClientsUpdate accountId clientAccountId payload =
  AdExchangeBuyer2AccountsClientsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      clientAccountId = clientAccountId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsClientsUpdate
  where
  type
    Rs AdExchangeBuyer2AccountsClientsUpdate =
      Client
  type
    Scopes AdExchangeBuyer2AccountsClientsUpdate =
      '[Adexchange'Buyer]
  requestClient
    AdExchangeBuyer2AccountsClientsUpdate {..} =
      go
        accountId
        clientAccountId
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
                Core.Proxy
                  AdExchangeBuyer2AccountsClientsUpdateResource
            )
            Core.mempty
