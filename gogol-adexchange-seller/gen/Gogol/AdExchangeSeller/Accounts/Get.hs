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
-- Module      : Gogol.AdExchangeSeller.Accounts.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about the selected Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.get@.
module Gogol.AdExchangeSeller.Accounts.Get
  ( -- * Resource
    AdExchangeSellerAccountsGetResource,

    -- ** Constructing a Request
    newAdExchangeSellerAccountsGet,
    AdExchangeSellerAccountsGet,
  )
where

import Gogol.AdExchangeSeller.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangeseller.accounts.get@ method which the
-- 'AdExchangeSellerAccountsGet' request conforms to.
type AdExchangeSellerAccountsGetResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Account

-- | Get information about the selected Ad Exchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsGet' smart constructor.
newtype AdExchangeSellerAccountsGet = AdExchangeSellerAccountsGet
  { -- | Account to get information about. Tip: \'myaccount\' is a valid ID.
    accountId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsGet' with the minimum fields required to make a request.
newAdExchangeSellerAccountsGet ::
  -- |  Account to get information about. Tip: \'myaccount\' is a valid ID. See 'accountId'.
  Core.Text ->
  AdExchangeSellerAccountsGet
newAdExchangeSellerAccountsGet accountId =
  AdExchangeSellerAccountsGet {accountId = accountId}

instance
  Core.GoogleRequest
    AdExchangeSellerAccountsGet
  where
  type Rs AdExchangeSellerAccountsGet = Account
  type
    Scopes AdExchangeSellerAccountsGet =
      '[ "https://www.googleapis.com/auth/adexchange.seller",
         "https://www.googleapis.com/auth/adexchange.seller.readonly"
       ]
  requestClient AdExchangeSellerAccountsGet {..} =
    go
      accountId
      (Core.Just Core.AltJSON)
      adExchangeSellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeSellerAccountsGetResource
          )
          Core.mempty
