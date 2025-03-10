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
-- Module      : Gogol.AdExchangeSeller.Accounts.Adclients.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all ad clients in this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.adclients.list@.
module Gogol.AdExchangeSeller.Accounts.Adclients.List
  ( -- * Resource
    AdExchangeSellerAccountsAdclientsListResource,

    -- ** Constructing a Request
    AdExchangeSellerAccountsAdclientsList (..),
    newAdExchangeSellerAccountsAdclientsList,
  )
where

import Gogol.AdExchangeSeller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangeseller.accounts.adclients.list@ method which the
-- 'AdExchangeSellerAccountsAdclientsList' request conforms to.
type AdExchangeSellerAccountsAdclientsListResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AdClients

-- | List all ad clients in this Ad Exchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsAdclientsList' smart constructor.
data AdExchangeSellerAccountsAdclientsList = AdExchangeSellerAccountsAdclientsList
  { -- | Account to which the ad client belongs.
    accountId :: Core.Text,
    -- | The maximum number of ad clients to include in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsAdclientsList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsAdclientsList ::
  -- |  Account to which the ad client belongs. See 'accountId'.
  Core.Text ->
  AdExchangeSellerAccountsAdclientsList
newAdExchangeSellerAccountsAdclientsList accountId =
  AdExchangeSellerAccountsAdclientsList
    { accountId = accountId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing
    }

instance Core.GoogleRequest AdExchangeSellerAccountsAdclientsList where
  type Rs AdExchangeSellerAccountsAdclientsList = AdClients
  type
    Scopes AdExchangeSellerAccountsAdclientsList =
      '[Adexchange'Seller, Adexchange'Seller'Readonly]
  requestClient AdExchangeSellerAccountsAdclientsList {..} =
    go
      accountId
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      adExchangeSellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeSellerAccountsAdclientsListResource
          )
          Core.mempty
