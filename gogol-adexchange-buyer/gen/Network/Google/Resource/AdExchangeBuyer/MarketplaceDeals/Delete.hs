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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the specified deals from the order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.delete@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete
    (
    -- * REST Resource
      MarketplaceDealsDeleteResource

    -- * Creating a Request
    , marketplaceDealsDelete
    , MarketplaceDealsDelete

    -- * Request Lenses
    , mddPayload
    , mddOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplacedeals.delete@ method which the
-- 'MarketplaceDealsDelete' request conforms to.
type MarketplaceDealsDeleteResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             "deals" :>
               "delete" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] DeleteOrderDealsRequest :>
                     Post '[JSON] DeleteOrderDealsResponse

-- | Delete the specified deals from the order
--
-- /See:/ 'marketplaceDealsDelete' smart constructor.
data MarketplaceDealsDelete = MarketplaceDealsDelete
    { _mddPayload :: !DeleteOrderDealsRequest
    , _mddOrderId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddPayload'
--
-- * 'mddOrderId'
marketplaceDealsDelete
    :: DeleteOrderDealsRequest -- ^ 'mddPayload'
    -> Text -- ^ 'mddOrderId'
    -> MarketplaceDealsDelete
marketplaceDealsDelete pMddPayload_ pMddOrderId_ =
    MarketplaceDealsDelete
    { _mddPayload = pMddPayload_
    , _mddOrderId = pMddOrderId_
    }

-- | Multipart request metadata.
mddPayload :: Lens' MarketplaceDealsDelete DeleteOrderDealsRequest
mddPayload
  = lens _mddPayload (\ s a -> s{_mddPayload = a})

-- | The orderId to delete deals from.
mddOrderId :: Lens' MarketplaceDealsDelete Text
mddOrderId
  = lens _mddOrderId (\ s a -> s{_mddOrderId = a})

instance GoogleRequest MarketplaceDealsDelete where
        type Rs MarketplaceDealsDelete =
             DeleteOrderDealsResponse
        requestClient MarketplaceDealsDelete{..}
          = go _mddOrderId (Just AltJSON) _mddPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceDealsDeleteResource)
                      mempty
