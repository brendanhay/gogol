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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add new deals for the specified order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.insert@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Insert
    (
    -- * REST Resource
      MarketplaceDealsInsertResource

    -- * Creating a Request
    , marketplaceDealsInsert
    , MarketplaceDealsInsert

    -- * Request Lenses
    , mdiPayload
    , mdiOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplacedeals.insert@ method which the
-- 'MarketplaceDealsInsert' request conforms to.
type MarketplaceDealsInsertResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "insert" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AddOrderDealsRequest :>
                 Post '[JSON] AddOrderDealsResponse

-- | Add new deals for the specified order
--
-- /See:/ 'marketplaceDealsInsert' smart constructor.
data MarketplaceDealsInsert = MarketplaceDealsInsert
    { _mdiPayload :: !AddOrderDealsRequest
    , _mdiOrderId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdiPayload'
--
-- * 'mdiOrderId'
marketplaceDealsInsert
    :: AddOrderDealsRequest -- ^ 'mdiPayload'
    -> Text -- ^ 'mdiOrderId'
    -> MarketplaceDealsInsert
marketplaceDealsInsert pMdiPayload_ pMdiOrderId_ =
    MarketplaceDealsInsert
    { _mdiPayload = pMdiPayload_
    , _mdiOrderId = pMdiOrderId_
    }

-- | Multipart request metadata.
mdiPayload :: Lens' MarketplaceDealsInsert AddOrderDealsRequest
mdiPayload
  = lens _mdiPayload (\ s a -> s{_mdiPayload = a})

-- | OrderId for which deals need to be added.
mdiOrderId :: Lens' MarketplaceDealsInsert Text
mdiOrderId
  = lens _mdiOrderId (\ s a -> s{_mdiOrderId = a})

instance GoogleRequest MarketplaceDealsInsert where
        type Rs MarketplaceDealsInsert =
             AddOrderDealsResponse
        requestClient MarketplaceDealsInsert{..}
          = go _mdiOrderId (Just AltJSON) _mdiPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceDealsInsertResource)
                      mempty
