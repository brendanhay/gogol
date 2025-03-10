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
-- Module      : Gogol.AdExchangeSeller.Accounts.Customchannels.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all custom channels in the specified ad client for this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.customchannels.list@.
module Gogol.AdExchangeSeller.Accounts.Customchannels.List
  ( -- * Resource
    AdExchangeSellerAccountsCustomchannelsListResource,

    -- ** Constructing a Request
    AdExchangeSellerAccountsCustomchannelsList (..),
    newAdExchangeSellerAccountsCustomchannelsList,
  )
where

import Gogol.AdExchangeSeller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangeseller.accounts.customchannels.list@ method which the
-- 'AdExchangeSellerAccountsCustomchannelsList' request conforms to.
type AdExchangeSellerAccountsCustomchannelsListResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "customchannels"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomChannels

-- | List all custom channels in the specified ad client for this Ad Exchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsCustomchannelsList' smart constructor.
data AdExchangeSellerAccountsCustomchannelsList = AdExchangeSellerAccountsCustomchannelsList
  { -- | Account to which the ad client belongs.
    accountId :: Core.Text,
    -- | Ad client for which to list custom channels.
    adClientId :: Core.Text,
    -- | The maximum number of custom channels to include in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsCustomchannelsList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsCustomchannelsList ::
  -- |  Account to which the ad client belongs. See 'accountId'.
  Core.Text ->
  -- |  Ad client for which to list custom channels. See 'adClientId'.
  Core.Text ->
  AdExchangeSellerAccountsCustomchannelsList
newAdExchangeSellerAccountsCustomchannelsList accountId adClientId =
  AdExchangeSellerAccountsCustomchannelsList
    { accountId = accountId,
      adClientId = adClientId,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeSellerAccountsCustomchannelsList
  where
  type Rs AdExchangeSellerAccountsCustomchannelsList = CustomChannels
  type
    Scopes AdExchangeSellerAccountsCustomchannelsList =
      '[Adexchange'Seller, Adexchange'Seller'Readonly]
  requestClient AdExchangeSellerAccountsCustomchannelsList {..} =
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
              Core.Proxy AdExchangeSellerAccountsCustomchannelsListResource
          )
          Core.mempty
