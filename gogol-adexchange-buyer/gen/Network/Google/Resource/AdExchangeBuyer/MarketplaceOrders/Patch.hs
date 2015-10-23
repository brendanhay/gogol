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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the given order. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplaceorders.patch@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOrders.Patch
    (
    -- * REST Resource
      MarketplaceOrdersPatchResource

    -- * Creating a Request
    , marketplaceOrdersPatch
    , MarketplaceOrdersPatch

    -- * Request Lenses
    , mopUpdateAction
    , mopRevisionNumber
    , mopPayload
    , mopOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplaceorders.patch@ method which the
-- 'MarketplaceOrdersPatch' request conforms to.
type MarketplaceOrdersPatchResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "marketplaceOrders" :>
           Capture "orderId" Text :>
             Capture "revisionNumber" Int64 :>
               Capture "updateAction"
                 MarketplaceOrdersPatchUpdateAction
                 :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] MarketplaceOrder :>
                     Patch '[JSON] MarketplaceOrder

-- | Update the given order. This method supports patch semantics.
--
-- /See:/ 'marketplaceOrdersPatch' smart constructor.
data MarketplaceOrdersPatch = MarketplaceOrdersPatch
    { _mopUpdateAction   :: !MarketplaceOrdersPatchUpdateAction
    , _mopRevisionNumber :: !Int64
    , _mopPayload        :: !MarketplaceOrder
    , _mopOrderId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOrdersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mopUpdateAction'
--
-- * 'mopRevisionNumber'
--
-- * 'mopPayload'
--
-- * 'mopOrderId'
marketplaceOrdersPatch
    :: MarketplaceOrdersPatchUpdateAction -- ^ 'mopUpdateAction'
    -> Int64 -- ^ 'mopRevisionNumber'
    -> MarketplaceOrder -- ^ 'mopPayload'
    -> Text -- ^ 'mopOrderId'
    -> MarketplaceOrdersPatch
marketplaceOrdersPatch pMopUpdateAction_ pMopRevisionNumber_ pMopPayload_ pMopOrderId_ =
    MarketplaceOrdersPatch
    { _mopUpdateAction = pMopUpdateAction_
    , _mopRevisionNumber = pMopRevisionNumber_
    , _mopPayload = pMopPayload_
    , _mopOrderId = pMopOrderId_
    }

-- | The proposed action to take on the order.
mopUpdateAction :: Lens' MarketplaceOrdersPatch MarketplaceOrdersPatchUpdateAction
mopUpdateAction
  = lens _mopUpdateAction
      (\ s a -> s{_mopUpdateAction = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the lastest order at head revision and retry
-- the update at that revision.
mopRevisionNumber :: Lens' MarketplaceOrdersPatch Int64
mopRevisionNumber
  = lens _mopRevisionNumber
      (\ s a -> s{_mopRevisionNumber = a})

-- | Multipart request metadata.
mopPayload :: Lens' MarketplaceOrdersPatch MarketplaceOrder
mopPayload
  = lens _mopPayload (\ s a -> s{_mopPayload = a})

-- | The order id to update.
mopOrderId :: Lens' MarketplaceOrdersPatch Text
mopOrderId
  = lens _mopOrderId (\ s a -> s{_mopOrderId = a})

instance GoogleRequest MarketplaceOrdersPatch where
        type Rs MarketplaceOrdersPatch = MarketplaceOrder
        requestClient MarketplaceOrdersPatch{..}
          = go _mopOrderId _mopRevisionNumber _mopUpdateAction
              (Just AltJSON)
              _mopPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceOrdersPatchResource)
                      mempty
