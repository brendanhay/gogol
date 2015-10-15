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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get an order given its id
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOrdersGet@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Get
    (
    -- * REST Resource
      MarketplaceOrdersGetResource

    -- * Creating a Request
    , marketplaceOrdersGet'
    , MarketplaceOrdersGet'

    -- * Request Lenses
    , mogOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOrdersGet@ method which the
-- 'MarketplaceOrdersGet'' request conforms to.
type MarketplaceOrdersGetResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         QueryParam "alt" AltJSON :>
           Get '[JSON] MarketplaceOrder

-- | Get an order given its id
--
-- /See:/ 'marketplaceOrdersGet'' smart constructor.
newtype MarketplaceOrdersGet' = MarketplaceOrdersGet'
    { _mogOrderId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mogOrderId'
marketplaceOrdersGet'
    :: Text -- ^ 'orderId'
    -> MarketplaceOrdersGet'
marketplaceOrdersGet' pMogOrderId_ =
    MarketplaceOrdersGet'
    { _mogOrderId = pMogOrderId_
    }

-- | Id of the order to retrieve.
mogOrderId :: Lens' MarketplaceOrdersGet' Text
mogOrderId
  = lens _mogOrderId (\ s a -> s{_mogOrderId = a})

instance GoogleRequest MarketplaceOrdersGet' where
        type Rs MarketplaceOrdersGet' = MarketplaceOrder
        requestClient MarketplaceOrdersGet'{..}
          = go _mogOrderId (Just AltJSON) adExchangeBuyer
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceOrdersGetResource)
                      mempty
