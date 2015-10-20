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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get all the notes associated with an order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacenotes.list@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceNotes.List
    (
    -- * REST Resource
      MarketplaceNotesListResource

    -- * Creating a Request
    , marketplaceNotesList
    , MarketplaceNotesList

    -- * Request Lenses
    , mnlOrderId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplacenotes.list@ method which the
-- 'MarketplaceNotesList' request conforms to.
type MarketplaceNotesListResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "notes" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] GetOrderNotesResponse

-- | Get all the notes associated with an order
--
-- /See:/ 'marketplaceNotesList' smart constructor.
newtype MarketplaceNotesList = MarketplaceNotesList
    { _mnlOrderId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceNotesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mnlOrderId'
marketplaceNotesList
    :: Text -- ^ 'mnlOrderId'
    -> MarketplaceNotesList
marketplaceNotesList pMnlOrderId_ =
    MarketplaceNotesList
    { _mnlOrderId = pMnlOrderId_
    }

-- | The orderId to get notes for.
mnlOrderId :: Lens' MarketplaceNotesList Text
mnlOrderId
  = lens _mnlOrderId (\ s a -> s{_mnlOrderId = a})

instance GoogleRequest MarketplaceNotesList where
        type Rs MarketplaceNotesList = GetOrderNotesResponse
        requestClient MarketplaceNotesList{..}
          = go _mnlOrderId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceNotesListResource)
                      mempty
