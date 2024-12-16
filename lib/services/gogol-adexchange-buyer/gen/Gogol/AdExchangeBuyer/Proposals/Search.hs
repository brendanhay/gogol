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
-- Module      : Gogol.AdExchangeBuyer.Proposals.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for proposals using pql query
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.search@.
module Gogol.AdExchangeBuyer.Proposals.Search
    (
    -- * Resource
      AdExchangeBuyerProposalsSearchResource

    -- ** Constructing a Request
    , AdExchangeBuyerProposalsSearch (..)
    , newAdExchangeBuyerProposalsSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.proposals.search@ method which the
-- 'AdExchangeBuyerProposalsSearch' request conforms to.
type AdExchangeBuyerProposalsSearchResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "proposals" Core.:>
           "search" Core.:>
             Core.QueryParam "pqlQuery" Core.Text Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.Get '[Core.JSON] GetOrdersResponse

-- | Search for proposals using pql query
--
-- /See:/ 'newAdExchangeBuyerProposalsSearch' smart constructor.
newtype AdExchangeBuyerProposalsSearch = AdExchangeBuyerProposalsSearch
    {
      -- | Query string to retrieve specific proposals.
      pqlQuery :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerProposalsSearch' with the minimum fields required to make a request.
newAdExchangeBuyerProposalsSearch 
    ::  AdExchangeBuyerProposalsSearch
newAdExchangeBuyerProposalsSearch =
  AdExchangeBuyerProposalsSearch {pqlQuery = Core.Nothing}

instance Core.GoogleRequest
           AdExchangeBuyerProposalsSearch
         where
        type Rs AdExchangeBuyerProposalsSearch =
             GetOrdersResponse
        type Scopes AdExchangeBuyerProposalsSearch =
             '[Adexchange'Buyer]
        requestClient AdExchangeBuyerProposalsSearch{..}
          = go pqlQuery (Core.Just Core.AltJSON)
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdExchangeBuyerProposalsSearchResource)
                      Core.mempty

