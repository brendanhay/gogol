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
-- Module      : Network.Google.AdExchangeBuyer.Products.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested product by id.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.products.get@.
module Network.Google.AdExchangeBuyer.Products.Get
  ( -- * Resource
    AdExchangeBuyerProductsGetResource,

    -- ** Constructing a Request
    newAdExchangeBuyerProductsGet,
    AdExchangeBuyerProductsGet,
  )
where

import Network.Google.AdExchangeBuyer.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @adexchangebuyer.products.get@ method which the
-- 'AdExchangeBuyerProductsGet' request conforms to.
type AdExchangeBuyerProductsGetResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Product

-- | Gets the requested product by id.
--
-- /See:/ 'newAdExchangeBuyerProductsGet' smart constructor.
newtype AdExchangeBuyerProductsGet = AdExchangeBuyerProductsGet
  { -- | The id for the product to get the head revision for.
    productId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProductsGet' with the minimum fields required to make a request.
newAdExchangeBuyerProductsGet ::
  -- |  The id for the product to get the head revision for. See 'productId'.
  Core.Text ->
  AdExchangeBuyerProductsGet
newAdExchangeBuyerProductsGet productId =
  AdExchangeBuyerProductsGet {productId = productId}

instance
  Core.GoogleRequest
    AdExchangeBuyerProductsGet
  where
  type Rs AdExchangeBuyerProductsGet = Product
  type
    Scopes AdExchangeBuyerProductsGet =
      '["https://www.googleapis.com/auth/adexchange.buyer"]
  requestClient AdExchangeBuyerProductsGet {..} =
    go
      productId
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerProductsGetResource
          )
          Core.mempty
