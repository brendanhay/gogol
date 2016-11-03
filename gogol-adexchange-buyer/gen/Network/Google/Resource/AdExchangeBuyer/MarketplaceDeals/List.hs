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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all the deals for a given proposal
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacedeals.list@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.List
    (
    -- * REST Resource
      MarketplaceDealsListResource

    -- * Creating a Request
    , marketplaceDealsList
    , MarketplaceDealsList

    -- * Request Lenses
    , mdlProposalId
    , mdlPqlQuery
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplacedeals.list@ method which the
-- 'MarketplaceDealsList' request conforms to.
type MarketplaceDealsListResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           Capture "proposalId" Text :>
             "deals" :>
               QueryParam "pqlQuery" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] GetOrderDealsResponse

-- | List all the deals for a given proposal
--
-- /See:/ 'marketplaceDealsList' smart constructor.
data MarketplaceDealsList = MarketplaceDealsList'
    { _mdlProposalId :: !Text
    , _mdlPqlQuery   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlProposalId'
--
-- * 'mdlPqlQuery'
marketplaceDealsList
    :: Text -- ^ 'mdlProposalId'
    -> MarketplaceDealsList
marketplaceDealsList pMdlProposalId_ =
    MarketplaceDealsList'
    { _mdlProposalId = pMdlProposalId_
    , _mdlPqlQuery = Nothing
    }

-- | The proposalId to get deals for. To search across all proposals specify
-- order_id = \'-\' as part of the URL.
mdlProposalId :: Lens' MarketplaceDealsList Text
mdlProposalId
  = lens _mdlProposalId
      (\ s a -> s{_mdlProposalId = a})

-- | Query string to retrieve specific deals.
mdlPqlQuery :: Lens' MarketplaceDealsList (Maybe Text)
mdlPqlQuery
  = lens _mdlPqlQuery (\ s a -> s{_mdlPqlQuery = a})

instance GoogleRequest MarketplaceDealsList where
        type Rs MarketplaceDealsList = GetOrderDealsResponse
        type Scopes MarketplaceDealsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient MarketplaceDealsList'{..}
          = go _mdlProposalId _mdlPqlQuery (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceDealsListResource)
                      mempty
