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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create the given list of orders
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplaceorders.insert@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Insert
    (
    -- * REST Resource
      MarketplaceOrdersInsertResource

    -- * Creating a Request
    , marketplaceOrdersInsert
    , MarketplaceOrdersInsert

    -- * Request Lenses
    , moiPayload
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplaceorders.insert@ method which the
-- 'MarketplaceOrdersInsert' request conforms to.
type MarketplaceOrdersInsertResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           "insert" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] CreateOrdersRequest :>
                 Post '[JSON] CreateOrdersResponse

-- | Create the given list of orders
--
-- /See:/ 'marketplaceOrdersInsert' smart constructor.
newtype MarketplaceOrdersInsert = MarketplaceOrdersInsert
    { _moiPayload :: CreateOrdersRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moiPayload'
marketplaceOrdersInsert
    :: CreateOrdersRequest -- ^ 'moiPayload'
    -> MarketplaceOrdersInsert
marketplaceOrdersInsert pMoiPayload_ =
    MarketplaceOrdersInsert
    { _moiPayload = pMoiPayload_
    }

-- | Multipart request metadata.
moiPayload :: Lens' MarketplaceOrdersInsert CreateOrdersRequest
moiPayload
  = lens _moiPayload (\ s a -> s{_moiPayload = a})

instance GoogleRequest MarketplaceOrdersInsert where
        type Rs MarketplaceOrdersInsert =
             CreateOrdersResponse
        requestClient MarketplaceOrdersInsert{..}
          = go (Just AltJSON) _moiPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceOrdersInsertResource)
                      mempty
