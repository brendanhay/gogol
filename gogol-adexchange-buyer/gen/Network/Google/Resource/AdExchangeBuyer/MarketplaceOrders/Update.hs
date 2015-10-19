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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOrdersUpdate@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Update
    (
    -- * REST Resource
      MarketplaceOrdersUpdateResource

    -- * Creating a Request
    , marketplaceOrdersUpdate'
    , MarketplaceOrdersUpdate'

    -- * Request Lenses
    , mouUpdateAction
    , mouRevisionNumber
    , mouPayload
    , mouOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOrdersUpdate@ method which the
-- 'MarketplaceOrdersUpdate'' request conforms to.
type MarketplaceOrdersUpdateResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         Capture "revisionNumber" Int64 :>
           Capture "updateAction"
             MarketplaceOrdersUpdateUpdateAction
             :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] MarketplaceOrder :>
                 Put '[JSON] MarketplaceOrder

-- | Update the given order
--
-- /See:/ 'marketplaceOrdersUpdate'' smart constructor.
data MarketplaceOrdersUpdate' = MarketplaceOrdersUpdate'
    { _mouUpdateAction   :: !MarketplaceOrdersUpdateUpdateAction
    , _mouRevisionNumber :: !Int64
    , _mouPayload        :: !MarketplaceOrder
    , _mouOrderId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mouUpdateAction'
--
-- * 'mouRevisionNumber'
--
-- * 'mouPayload'
--
-- * 'mouOrderId'
marketplaceOrdersUpdate'
    :: MarketplaceOrdersUpdateUpdateAction -- ^ 'updateAction'
    -> Int64 -- ^ 'revisionNumber'
    -> MarketplaceOrder -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> MarketplaceOrdersUpdate'
marketplaceOrdersUpdate' pMouUpdateAction_ pMouRevisionNumber_ pMouPayload_ pMouOrderId_ =
    MarketplaceOrdersUpdate'
    { _mouUpdateAction = pMouUpdateAction_
    , _mouRevisionNumber = pMouRevisionNumber_
    , _mouPayload = pMouPayload_
    , _mouOrderId = pMouOrderId_
    }

-- | The proposed action to take on the order.
mouUpdateAction :: Lens' MarketplaceOrdersUpdate' MarketplaceOrdersUpdateUpdateAction
mouUpdateAction
  = lens _mouUpdateAction
      (\ s a -> s{_mouUpdateAction = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the lastest order at head revision and retry
-- the update at that revision.
mouRevisionNumber :: Lens' MarketplaceOrdersUpdate' Int64
mouRevisionNumber
  = lens _mouRevisionNumber
      (\ s a -> s{_mouRevisionNumber = a})

-- | Multipart request metadata.
mouPayload :: Lens' MarketplaceOrdersUpdate' MarketplaceOrder
mouPayload
  = lens _mouPayload (\ s a -> s{_mouPayload = a})

-- | The order id to update.
mouOrderId :: Lens' MarketplaceOrdersUpdate' Text
mouOrderId
  = lens _mouOrderId (\ s a -> s{_mouOrderId = a})

instance GoogleRequest MarketplaceOrdersUpdate' where
        type Rs MarketplaceOrdersUpdate' = MarketplaceOrder
        requestClient MarketplaceOrdersUpdate'{..}
          = go _mouOrderId _mouRevisionNumber _mouUpdateAction
              (Just AltJSON)
              _mouPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceOrdersUpdateResource)
                      mempty
