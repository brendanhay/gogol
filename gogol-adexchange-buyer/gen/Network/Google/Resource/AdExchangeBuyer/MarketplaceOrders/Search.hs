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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for orders using pql query
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplaceorders.search@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search
    (
    -- * REST Resource
      MarketplaceOrdersSearchResource

    -- * Creating a Request
    , marketplaceOrdersSearch
    , MarketplaceOrdersSearch

    -- * Request Lenses
    , mosPqlQuery
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplaceorders.search@ method which the
-- 'MarketplaceOrdersSearch' request conforms to.
type MarketplaceOrdersSearchResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           "search" :>
             QueryParam "pqlQuery" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] GetOrdersResponse

-- | Search for orders using pql query
--
-- /See:/ 'marketplaceOrdersSearch' smart constructor.
newtype MarketplaceOrdersSearch = MarketplaceOrdersSearch
    { _mosPqlQuery :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mosPqlQuery'
marketplaceOrdersSearch
    :: MarketplaceOrdersSearch
marketplaceOrdersSearch =
    MarketplaceOrdersSearch
    { _mosPqlQuery = Nothing
    }

-- | Query string to retrieve specific orders.
mosPqlQuery :: Lens' MarketplaceOrdersSearch (Maybe Text)
mosPqlQuery
  = lens _mosPqlQuery (\ s a -> s{_mosPqlQuery = a})

instance GoogleRequest MarketplaceOrdersSearch where
        type Rs MarketplaceOrdersSearch = GetOrdersResponse
        requestClient MarketplaceOrdersSearch{..}
          = go _mosPqlQuery (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceOrdersSearchResource)
                      mempty
