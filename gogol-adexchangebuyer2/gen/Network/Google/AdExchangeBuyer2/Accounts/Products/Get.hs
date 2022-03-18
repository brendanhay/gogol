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
-- Module      : Network.Google.AdExchangeBuyer2.Accounts.Products.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested product by ID.
--
-- /See:/ <https://developers.google.com/authorized-buyers/apis/reference/rest/ Ad Exchange Buyer API II Reference> for @adexchangebuyer2.accounts.products.get@.
module Network.Google.AdExchangeBuyer2.Accounts.Products.Get
  ( -- * Resource
    AdExchangeBuyer2AccountsProductsGetResource,

    -- ** Constructing a Request
    newAdExchangeBuyer2AccountsProductsGet,
    AdExchangeBuyer2AccountsProductsGet,
  )
where

import Network.Google.AdExchangeBuyer2.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adexchangebuyer2.accounts.products.get@ method which the
-- 'AdExchangeBuyer2AccountsProductsGet' request conforms to.
type AdExchangeBuyer2AccountsProductsGetResource =
  "v2beta1"
    Core.:> "accounts"
    Core.:> Core.Capture "accountId" Core.Text
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Product

-- | Gets the requested product by ID.
--
-- /See:/ 'newAdExchangeBuyer2AccountsProductsGet' smart constructor.
data AdExchangeBuyer2AccountsProductsGet = AdExchangeBuyer2AccountsProductsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Account ID of the buyer.
    accountId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID for the product to get the head revision for.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyer2AccountsProductsGet' with the minimum fields required to make a request.
newAdExchangeBuyer2AccountsProductsGet ::
  -- |  Account ID of the buyer. See 'accountId'.
  Core.Text ->
  -- |  The ID for the product to get the head revision for. See 'productId'.
  Core.Text ->
  AdExchangeBuyer2AccountsProductsGet
newAdExchangeBuyer2AccountsProductsGet accountId productId =
  AdExchangeBuyer2AccountsProductsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      accountId = accountId,
      callback = Core.Nothing,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdExchangeBuyer2AccountsProductsGet
  where
  type Rs AdExchangeBuyer2AccountsProductsGet = Product
  type
    Scopes AdExchangeBuyer2AccountsProductsGet =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient AdExchangeBuyer2AccountsProductsGet {..} =
    go
      accountId
      productId
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
                AdExchangeBuyer2AccountsProductsGetResource
          )
          Core.mempty
