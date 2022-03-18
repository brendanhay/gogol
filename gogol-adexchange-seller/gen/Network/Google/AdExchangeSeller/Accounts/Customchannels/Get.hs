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
-- Module      : Network.Google.AdExchangeSeller.Accounts.Customchannels.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the specified custom channel from the specified ad client.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.customchannels.get@.
module Network.Google.AdExchangeSeller.Accounts.Customchannels.Get
  ( -- * Resource
    AdExchangeSellerAccountsCustomchannelsGetResource,

    -- ** Constructing a Request
    newAdExchangeSellerAccountsCustomchannelsGet,
    AdExchangeSellerAccountsCustomchannelsGet,
  )
where

import Network.Google.AdExchangeSeller.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adexchangeseller.accounts.customchannels.get@ method which the
-- 'AdExchangeSellerAccountsCustomchannelsGet' request conforms to.
type AdExchangeSellerAccountsCustomchannelsGetResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "adclients"
    Core.:> Core.Capture "adClientId" Core.Text
    Core.:> "customchannels"
    Core.:> Core.Capture "customChannelId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomChannel

-- | Get the specified custom channel from the specified ad client.
--
-- /See:/ 'newAdExchangeSellerAccountsCustomchannelsGet' smart constructor.
data AdExchangeSellerAccountsCustomchannelsGet = AdExchangeSellerAccountsCustomchannelsGet
  { -- | Account to which the ad client belongs.
    accountId :: Core.Text,
    -- | Ad client which contains the custom channel.
    adClientId :: Core.Text,
    -- | Custom channel to retrieve.
    customChannelId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsCustomchannelsGet' with the minimum fields required to make a request.
newAdExchangeSellerAccountsCustomchannelsGet ::
  -- |  Account to which the ad client belongs. See 'accountId'.
  Core.Text ->
  -- |  Ad client which contains the custom channel. See 'adClientId'.
  Core.Text ->
  -- |  Custom channel to retrieve. See 'customChannelId'.
  Core.Text ->
  AdExchangeSellerAccountsCustomchannelsGet
newAdExchangeSellerAccountsCustomchannelsGet accountId adClientId customChannelId =
  AdExchangeSellerAccountsCustomchannelsGet
    { accountId = accountId,
      adClientId = adClientId,
      customChannelId = customChannelId
    }

instance
  Core.GoogleRequest
    AdExchangeSellerAccountsCustomchannelsGet
  where
  type
    Rs AdExchangeSellerAccountsCustomchannelsGet =
      CustomChannel
  type
    Scopes AdExchangeSellerAccountsCustomchannelsGet =
      '[ "https://www.googleapis.com/auth/adexchange.seller",
         "https://www.googleapis.com/auth/adexchange.seller.readonly"
       ]
  requestClient
    AdExchangeSellerAccountsCustomchannelsGet {..} =
      go
        accountId
        adClientId
        customChannelId
        (Core.Just Core.AltJSON)
        adExchangeSellerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AdExchangeSellerAccountsCustomchannelsGetResource
            )
            Core.mempty
