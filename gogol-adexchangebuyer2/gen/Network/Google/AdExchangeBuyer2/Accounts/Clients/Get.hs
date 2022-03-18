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
-- Module      : Network.Google.AdExchangeBuyer2.Accounts.Clients.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a client buyer with a given client account ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.clients.get@.
module Network.Google.AdExchangeBuyer2.Accounts.Clients.Get
  ( -- * Resource
    AdExchangeBuyer2AccountsClientsGetResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsClientsGet,
    AdExchangeBuyer2AccountsClientsGet,
  )
where

import Network.Google.AdExchangeBuyer2.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.clients.get@ method which the
-- 'AdExchangeBuyer2AccountsClientsGet' request conforms to.
type AdExchangeBuyer2AccountsClientsGetResource =
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
    Core.:> Core.Get '[Core.JSON] Client

-- | Gets a client buyer with a given client account ID.
--
-- /See:/ 'newAdExchangeBuyer2AccountsClientsGet' smart constructor.
data AdExchangeBuyer2AccountsClientsGet = AdExchangeBuyer2AccountsClientsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client\'s sponsor buyer. (required)
    accountId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Numerical account ID of the client buyer to retrieve. (required)
    clientAccountId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsClientsGet' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsClientsGet ::
  -- |  Numerical account ID of the client\'s sponsor buyer. (required) See 'accountId'.
  Core.Int64 ->
  -- |  Numerical account ID of the client buyer to retrieve. (required) See 'clientAccountId'.
  Core.Int64 ->
  AdExchangeBuyer2AccountsClientsGet
newAdExchangeBuyer2AccountsClientsGet accountId clientAccountId =
  AdExchangeBuyer2AccountsClientsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      clientAccountId = clientAccountId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsClientsGet
  where
  type Rs AdExchangeBuyer2AccountsClientsGet = Client
  type
    Scopes AdExchangeBuyer2AccountsClientsGet =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient AdExchangeBuyer2AccountsClientsGet {..} =
    go
      accountId
      clientAccountId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adExchangeBuyer2Service
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AdExchangeBuyer2AccountsClientsGetResource
          )
          Core.mempty
