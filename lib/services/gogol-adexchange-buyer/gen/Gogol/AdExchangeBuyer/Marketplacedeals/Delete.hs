{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExchangeBuyer.Marketplacedeals.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the specified deals from the proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.delete@.
module Gogol.AdExchangeBuyer.Marketplacedeals.Delete
    (
    -- * Resource
      AdExchangeBuyerMarketplacedealsDeleteResource

    -- ** Constructing a Request
    , AdExchangeBuyerMarketplacedealsDelete (..)
    , newAdExchangeBuyerMarketplacedealsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.marketplacedeals.delete@ method which the
-- 'AdExchangeBuyerMarketplacedealsDelete' request conforms to.
type AdExchangeBuyerMarketplacedealsDeleteResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "proposals" Core.:>
           Core.Capture "proposalId" Core.Text Core.:>
             "deals" Core.:>
               "delete" Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.ReqBody '[Core.JSON] DeleteOrderDealsRequest
                     Core.:>
                     Core.Post '[Core.JSON] DeleteOrderDealsResponse

-- | Delete the specified deals from the proposal
--
-- /See:/ 'newAdExchangeBuyerMarketplacedealsDelete' smart constructor.
data AdExchangeBuyerMarketplacedealsDelete = AdExchangeBuyerMarketplacedealsDelete
    {
      -- | Multipart request metadata.
      payload :: DeleteOrderDealsRequest
      -- | The proposalId to delete deals from.
    , proposalId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerMarketplacedealsDelete' with the minimum fields required to make a request.
newAdExchangeBuyerMarketplacedealsDelete 
    ::  DeleteOrderDealsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The proposalId to delete deals from. See 'proposalId'.
    -> AdExchangeBuyerMarketplacedealsDelete
newAdExchangeBuyerMarketplacedealsDelete payload proposalId =
  AdExchangeBuyerMarketplacedealsDelete
    {payload = payload, proposalId = proposalId}

instance Core.GoogleRequest
           AdExchangeBuyerMarketplacedealsDelete
         where
        type Rs AdExchangeBuyerMarketplacedealsDelete =
             DeleteOrderDealsResponse
        type Scopes AdExchangeBuyerMarketplacedealsDelete =
             '[Adexchange'Buyer]
        requestClient
          AdExchangeBuyerMarketplacedealsDelete{..}
          = go proposalId (Core.Just Core.AltJSON) payload
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AdExchangeBuyerMarketplacedealsDeleteResource)
                      Core.mempty

