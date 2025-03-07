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
-- Module      : Gogol.AdExchangeSeller.Accounts.Urlchannels.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all URL channels in the specified ad client for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.urlchannels.list@.
module Gogol.AdExchangeSeller.Accounts.Urlchannels.List
  ( -- * Resource
    AdExchangeSellerAccountsUrlchannelsListResource,

    -- ** Constructing a Request
    AdExchangeSellerAccountsUrlchannelsList (..),
    newAdExchangeSellerAccountsUrlchannelsList,
  )
where

import Gogol.AdExchangeSeller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangeseller.accounts.urlchannels.list@ method which the
-- 'AdExchangeSellerAccountsUrlchannelsList' request conforms to.
type AdExchangeSellerAccountsUrlchannelsListResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "urlchannels"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UrlChannels

-- | List all URL channels in the specified ad client for this Ad Exchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsUrlchannelsList' smart constructor.
data AdExchangeSellerAccountsUrlchannelsList = AdExchangeSellerAccountsUrlchannelsList
  { -- | Account to which the ad client belongs.
    accountId :: Core.Text,
    -- | Ad client for which to list URL channels.
    adClientId :: Core.Text,
    -- | The maximum number of URL channels to include in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsUrlchannelsList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsUrlchannelsList ::
  -- |  Account to which the ad client belongs. See 'accountId'.
  Core.Text ->
  -- |  Ad client for which to list URL channels. See 'adClientId'.
  Core.Text ->
  AdExchangeSellerAccountsUrlchannelsList
newAdExchangeSellerAccountsUrlchannelsList accountId adClientId =
  AdExchangeSellerAccountsUrlchannelsList
    { accountId = accountId,
      adClientId = adClientId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing
    }

instance Core.GoogleRequest AdExchangeSellerAccountsUrlchannelsList where
  type Rs AdExchangeSellerAccountsUrlchannelsList = UrlChannels
  type
    Scopes AdExchangeSellerAccountsUrlchannelsList =
      '[Adexchange'Seller, Adexchange'Seller'Readonly]
  requestClient AdExchangeSellerAccountsUrlchannelsList {..} =
    go
      accountId
      adClientId
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      adExchangeSellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeSellerAccountsUrlchannelsListResource
          )
          Core.mempty
