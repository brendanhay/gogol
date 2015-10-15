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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces all the deals in the order with the passed in deals
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceDealsUpdate@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update
    (
    -- * REST Resource
      MarketplaceDealsUpdateResource

    -- * Creating a Request
    , marketplaceDealsUpdate'
    , MarketplaceDealsUpdate'

    -- * Request Lenses
    , mduPayload
    , mduOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceDealsUpdate@ method which the
-- 'MarketplaceDealsUpdate'' request conforms to.
type MarketplaceDealsUpdateResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "update" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] EditAllOrderDealsRequest :>
                 Post '[JSON] EditAllOrderDealsResponse

-- | Replaces all the deals in the order with the passed in deals
--
-- /See:/ 'marketplaceDealsUpdate'' smart constructor.
data MarketplaceDealsUpdate' = MarketplaceDealsUpdate'
    { _mduPayload :: !EditAllOrderDealsRequest
    , _mduOrderId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mduPayload'
--
-- * 'mduOrderId'
marketplaceDealsUpdate'
    :: EditAllOrderDealsRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> MarketplaceDealsUpdate'
marketplaceDealsUpdate' pMduPayload_ pMduOrderId_ =
    MarketplaceDealsUpdate'
    { _mduPayload = pMduPayload_
    , _mduOrderId = pMduOrderId_
    }

-- | Multipart request metadata.
mduPayload :: Lens' MarketplaceDealsUpdate' EditAllOrderDealsRequest
mduPayload
  = lens _mduPayload (\ s a -> s{_mduPayload = a})

-- | The orderId to edit deals on.
mduOrderId :: Lens' MarketplaceDealsUpdate' Text
mduOrderId
  = lens _mduOrderId (\ s a -> s{_mduOrderId = a})

instance GoogleRequest MarketplaceDealsUpdate' where
        type Rs MarketplaceDealsUpdate' =
             EditAllOrderDealsResponse
        requestClient MarketplaceDealsUpdate'{..}
          = go _mduOrderId (Just AltJSON) _mduPayload
              adExchangeBuyer
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceDealsUpdateResource)
                      mempty
