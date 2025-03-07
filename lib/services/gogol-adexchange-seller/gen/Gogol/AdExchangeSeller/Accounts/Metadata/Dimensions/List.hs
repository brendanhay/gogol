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
-- Module      : Gogol.AdExchangeSeller.Accounts.Metadata.Dimensions.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the metadata for the dimensions available to this AdExchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.metadata.dimensions.list@.
module Gogol.AdExchangeSeller.Accounts.Metadata.Dimensions.List
  ( -- * Resource
    AdExchangeSellerAccountsMetadataDimensionsListResource,

    -- ** Constructing a Request
    AdExchangeSellerAccountsMetadataDimensionsList (..),
    newAdExchangeSellerAccountsMetadataDimensionsList,
  )
where

import Gogol.AdExchangeSeller.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @adexchangeseller.accounts.metadata.dimensions.list@ method which the
-- 'AdExchangeSellerAccountsMetadataDimensionsList' request conforms to.
type AdExchangeSellerAccountsMetadataDimensionsListResource =
  "adexchangeseller"
    Core.:> "v2.0"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "metadata"
    Core.:> "dimensions"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Metadata

-- | List the metadata for the dimensions available to this AdExchange account.
--
-- /See:/ 'newAdExchangeSellerAccountsMetadataDimensionsList' smart constructor.
newtype AdExchangeSellerAccountsMetadataDimensionsList = AdExchangeSellerAccountsMetadataDimensionsList
  { -- | Account with visibility to the dimensions.
    accountId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeSellerAccountsMetadataDimensionsList' with the minimum fields required to make a request.
newAdExchangeSellerAccountsMetadataDimensionsList ::
  -- |  Account with visibility to the dimensions. See 'accountId'.
  Core.Text ->
  AdExchangeSellerAccountsMetadataDimensionsList
newAdExchangeSellerAccountsMetadataDimensionsList accountId =
  AdExchangeSellerAccountsMetadataDimensionsList
    { accountId =
        accountId
    }

instance
  Core.GoogleRequest
    AdExchangeSellerAccountsMetadataDimensionsList
  where
  type Rs AdExchangeSellerAccountsMetadataDimensionsList = Metadata
  type
    Scopes AdExchangeSellerAccountsMetadataDimensionsList =
      '[Adexchange'Seller, Adexchange'Seller'Readonly]
  requestClient AdExchangeSellerAccountsMetadataDimensionsList {..} =
    go accountId (Core.Just Core.AltJSON) adExchangeSellerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeSellerAccountsMetadataDimensionsListResource
          )
          Core.mempty
