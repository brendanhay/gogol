{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Marketplacedeals.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all the deals for a given proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.list@.
module Gogol.AdExchangeBuyer.Marketplacedeals.List
    (
    -- * Resource
      AdExchangeBuyerMarketplacedealsListResource

    -- ** Constructing a Request
    , newAdExchangeBuyerMarketplacedealsList
    , AdExchangeBuyerMarketplacedealsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.marketplacedeals.list@ method which the
-- 'AdExchangeBuyerMarketplacedealsList' request conforms to.
type AdExchangeBuyerMarketplacedealsListResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "proposals" Core.:>
           Core.Capture "proposalId" Core.Text Core.:>
             "deals" Core.:>
               Core.QueryParam "pqlQuery" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] GetOrderDealsResponse

-- | List all the deals for a given proposal
--
-- /See:/ 'newAdExchangeBuyerMarketplacedealsList' smart constructor.
data AdExchangeBuyerMarketplacedealsList = AdExchangeBuyerMarketplacedealsList
    {
      -- | Query string to retrieve specific deals.
      pqlQuery :: (Core.Maybe Core.Text)
      -- | The proposalId to get deals for. To search across all proposals specify order_id = \'-\' as part of the URL.
    , proposalId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerMarketplacedealsList' with the minimum fields required to make a request.
newAdExchangeBuyerMarketplacedealsList 
    ::  Core.Text
       -- ^  The proposalId to get deals for. To search across all proposals specify order_id = \'-\' as part of the URL. See 'proposalId'.
    -> AdExchangeBuyerMarketplacedealsList
newAdExchangeBuyerMarketplacedealsList proposalId =
  AdExchangeBuyerMarketplacedealsList
    {pqlQuery = Core.Nothing, proposalId = proposalId}

instance Core.GoogleRequest
           AdExchangeBuyerMarketplacedealsList
         where
        type Rs AdExchangeBuyerMarketplacedealsList =
             GetOrderDealsResponse
        type Scopes AdExchangeBuyerMarketplacedealsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient AdExchangeBuyerMarketplacedealsList{..}
          = go proposalId pqlQuery (Core.Just Core.AltJSON)
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyerMarketplacedealsListResource)
                      Core.mempty
