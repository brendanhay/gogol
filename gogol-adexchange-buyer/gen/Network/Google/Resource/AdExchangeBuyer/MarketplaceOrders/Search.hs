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
-- | Search for orders using pql query
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOrdersSearch@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Search
    (
    -- * REST Resource
      MarketplaceOrdersSearchResource

    -- * Creating a Request
    , marketplaceOrdersSearch'
    , MarketplaceOrdersSearch'

    -- * Request Lenses
    , mPqlQuery
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOrdersSearch@ method which the
-- 'MarketplaceOrdersSearch'' request conforms to.
type MarketplaceOrdersSearchResource =
     "marketplaceOrders" :>
       "search" :>
         QueryParam "pqlQuery" Text :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] GetOrdersResponse

-- | Search for orders using pql query
--
-- /See:/ 'marketplaceOrdersSearch'' smart constructor.
newtype MarketplaceOrdersSearch' = MarketplaceOrdersSearch'
    { _mPqlQuery :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mPqlQuery'
marketplaceOrdersSearch'
    :: MarketplaceOrdersSearch'
marketplaceOrdersSearch' =
    MarketplaceOrdersSearch'
    { _mPqlQuery = Nothing
    }

-- | Query string to retrieve specific orders.
mPqlQuery :: Lens' MarketplaceOrdersSearch' (Maybe Text)
mPqlQuery
  = lens _mPqlQuery (\ s a -> s{_mPqlQuery = a})

instance GoogleRequest MarketplaceOrdersSearch' where
        type Rs MarketplaceOrdersSearch' = GetOrdersResponse
        requestClient MarketplaceOrdersSearch'{..}
          = go _mPqlQuery (Just AltJSON) adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceOrdersSearchResource)
                      mempty
