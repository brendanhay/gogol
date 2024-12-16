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
-- Module      : Gogol.AdExchangeBuyer.Creatives.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of the authenticated user\'s active creatives. A creative will be available 30-40 minutes after submission.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.creatives.list@.
module Gogol.AdExchangeBuyer.Creatives.List
    (
    -- * Resource
      AdExchangeBuyerCreativesListResource

    -- ** Constructing a Request
    , AdExchangeBuyerCreativesList (..)
    , newAdExchangeBuyerCreativesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdExchangeBuyer.Types

-- | A resource alias for @adexchangebuyer.creatives.list@ method which the
-- 'AdExchangeBuyerCreativesList' request conforms to.
type AdExchangeBuyerCreativesListResource =
     "adexchangebuyer" Core.:>
       "v1.4" Core.:>
         "creatives" Core.:>
           Core.QueryParams "accountId" Core.Int32 Core.:>
             Core.QueryParams "buyerCreativeId" Core.Text Core.:>
               Core.QueryParam "dealsStatusFilter"
                 CreativesListDealsStatusFilter
                 Core.:>
                 Core.QueryParam "maxResults" Core.Word32 Core.:>
                   Core.QueryParam "openAuctionStatusFilter"
                     CreativesListOpenAuctionStatusFilter
                     Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] CreativesList

-- | Retrieves a list of the authenticated user\'s active creatives. A creative will be available 30-40 minutes after submission.
--
-- /See:/ 'newAdExchangeBuyerCreativesList' smart constructor.
data AdExchangeBuyerCreativesList = AdExchangeBuyerCreativesList
    {
      -- | When specified, only creatives for the given account ids are returned.
      accountId :: (Core.Maybe [Core.Int32])
      -- | When specified, only creatives for the given buyer creative ids are returned.
    , buyerCreativeId :: (Core.Maybe [Core.Text])
      -- | When specified, only creatives having the given deals status are returned.
    , dealsStatusFilter :: (Core.Maybe CreativesListDealsStatusFilter)
      -- | Maximum number of entries returned on one result page. If not set, the default is 100. Optional.
    , maxResults :: (Core.Maybe Core.Word32)
      -- | When specified, only creatives having the given open auction status are returned.
    , openAuctionStatusFilter :: (Core.Maybe CreativesListOpenAuctionStatusFilter)
      -- | A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of \"nextPageToken\" from the previous response. Optional.
    , pageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdExchangeBuyerCreativesList' with the minimum fields required to make a request.
newAdExchangeBuyerCreativesList 
    ::  AdExchangeBuyerCreativesList
newAdExchangeBuyerCreativesList =
  AdExchangeBuyerCreativesList
    { accountId = Core.Nothing
    , buyerCreativeId = Core.Nothing
    , dealsStatusFilter = Core.Nothing
    , maxResults = Core.Nothing
    , openAuctionStatusFilter = Core.Nothing
    , pageToken = Core.Nothing
    }

instance Core.GoogleRequest
           AdExchangeBuyerCreativesList
         where
        type Rs AdExchangeBuyerCreativesList = CreativesList
        type Scopes AdExchangeBuyerCreativesList =
             '[Adexchange'Buyer]
        requestClient AdExchangeBuyerCreativesList{..}
          = go (accountId Core.^. Core._Default)
              (buyerCreativeId Core.^. Core._Default)
              dealsStatusFilter
              maxResults
              openAuctionStatusFilter
              pageToken
              (Core.Just Core.AltJSON)
              adExchangeBuyerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdExchangeBuyerCreativesListResource)
                      Core.mempty

