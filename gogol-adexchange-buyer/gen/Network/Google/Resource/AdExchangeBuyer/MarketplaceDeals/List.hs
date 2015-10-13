{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all the deals for a given order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceDealsList@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
    (
    -- * REST Resource
      MarketplaceDealsListResource

    -- * Creating a Request
    , marketplaceDealsList'
    , MarketplaceDealsList'

    -- * Request Lenses
    , mdlOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceDealsList@ method which the
-- 'MarketplaceDealsList'' request conforms to.
type MarketplaceDealsListResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] GetOrderDealsResponse

-- | List all the deals for a given order
--
-- /See:/ 'marketplaceDealsList'' smart constructor.
newtype MarketplaceDealsList' = MarketplaceDealsList'
    { _mdlOrderId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlOrderId'
marketplaceDealsList'
    :: Text -- ^ 'orderId'
    -> MarketplaceDealsList'
marketplaceDealsList' pMdlOrderId_ =
    MarketplaceDealsList'
    { _mdlOrderId = pMdlOrderId_
    }

-- | The orderId to get deals for.
mdlOrderId :: Lens' MarketplaceDealsList' Text
mdlOrderId
  = lens _mdlOrderId (\ s a -> s{_mdlOrderId = a})

instance GoogleRequest MarketplaceDealsList' where
        type Rs MarketplaceDealsList' = GetOrderDealsResponse
        requestClient MarketplaceDealsList'{..}
          = go _mdlOrderId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceDealsListResource)
                      mempty
