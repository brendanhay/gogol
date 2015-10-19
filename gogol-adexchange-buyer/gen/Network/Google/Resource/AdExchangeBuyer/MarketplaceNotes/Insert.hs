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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add notes to the order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceNotesInsert@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.Insert
    (
    -- * REST Resource
      MarketplaceNotesInsertResource

    -- * Creating a Request
    , marketplaceNotesInsert'
    , MarketplaceNotesInsert'

    -- * Request Lenses
    , mniPayload
    , mniOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceNotesInsert@ method which the
-- 'MarketplaceNotesInsert'' request conforms to.
type MarketplaceNotesInsertResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "notes" :>
           "insert" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] AddOrderNotesRequest :>
                 Post '[JSON] AddOrderNotesResponse

-- | Add notes to the order
--
-- /See:/ 'marketplaceNotesInsert'' smart constructor.
data MarketplaceNotesInsert' = MarketplaceNotesInsert'
    { _mniPayload :: !AddOrderNotesRequest
    , _mniOrderId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceNotesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mniPayload'
--
-- * 'mniOrderId'
marketplaceNotesInsert'
    :: AddOrderNotesRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> MarketplaceNotesInsert'
marketplaceNotesInsert' pMniPayload_ pMniOrderId_ =
    MarketplaceNotesInsert'
    { _mniPayload = pMniPayload_
    , _mniOrderId = pMniOrderId_
    }

-- | Multipart request metadata.
mniPayload :: Lens' MarketplaceNotesInsert' AddOrderNotesRequest
mniPayload
  = lens _mniPayload (\ s a -> s{_mniPayload = a})

-- | The orderId to add notes for.
mniOrderId :: Lens' MarketplaceNotesInsert' Text
mniOrderId
  = lens _mniOrderId (\ s a -> s{_mniOrderId = a})

instance GoogleRequest MarketplaceNotesInsert' where
        type Rs MarketplaceNotesInsert' =
             AddOrderNotesResponse
        requestClient MarketplaceNotesInsert'{..}
          = go _mniOrderId (Just AltJSON) _mniPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceNotesInsertResource)
                      mempty
