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
-- Module      : Gogol.AdExchangeBuyer.Products.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested product.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.products.search@.
module Gogol.AdExchangeBuyer.Products.Search
  ( -- * Resource
    AdExchangeBuyerProductsSearchResource,

    -- ** Constructing a Request
    newAdExchangeBuyerProductsSearch,
    AdExchangeBuyerProductsSearch,
  )
where

import Gogol.AdExchangeBuyer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @adexchangebuyer.products.search@ method which the
-- 'AdExchangeBuyerProductsSearch' request conforms to.
type AdExchangeBuyerProductsSearchResource =
  "adexchangebuyer"
    Core.:> "v1.4"
    Core.:> "products"
    Core.:> "search"
    Core.:> Core.QueryParam "pqlQuery" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetOffersResponse

-- | Gets the requested product.
--
-- /See:/ 'newAdExchangeBuyerProductsSearch' smart constructor.
newtype AdExchangeBuyerProductsSearch = AdExchangeBuyerProductsSearch
  { -- | The pql query used to query for products.
    pqlQuery :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProductsSearch' with the minimum fields required to make a request.
newAdExchangeBuyerProductsSearch ::
  AdExchangeBuyerProductsSearch
newAdExchangeBuyerProductsSearch =
  AdExchangeBuyerProductsSearch {pqlQuery = Core.Nothing}

instance
  Core.GoogleRequest
    AdExchangeBuyerProductsSearch
  where
  type
    Rs AdExchangeBuyerProductsSearch =
      GetOffersResponse
  type
    Scopes AdExchangeBuyerProductsSearch =
      '[Adexchange'Buyer]
  requestClient AdExchangeBuyerProductsSearch {..} =
    go
      pqlQuery
      (Core.Just Core.AltJSON)
      adExchangeBuyerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdExchangeBuyerProductsSearchResource
          )
          Core.mempty
