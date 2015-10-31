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
               QueryParam "alt" AltJSON :>
                 Get '[JSON] GetOrderDealsResponse

-- | List all the deals for a given proposal
--
-- /See:/ 'marketplaceDealsList' smart constructor.
newtype MarketplaceDealsList = MarketplaceDealsList
    { _mdlProposalId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlProposalId'
marketplaceDealsList
    :: Text -- ^ 'mdlProposalId'
    -> MarketplaceDealsList
marketplaceDealsList pMdlProposalId_ =
    MarketplaceDealsList
    { _mdlProposalId = pMdlProposalId_
    }

-- | The proposalId to get deals for.
mdlProposalId :: Lens' MarketplaceDealsList Text
mdlProposalId
  = lens _mdlProposalId
      (\ s a -> s{_mdlProposalId = a})

instance GoogleRequest MarketplaceDealsList where
        type Rs MarketplaceDealsList = GetOrderDealsResponse
        type Scopes MarketplaceDealsList =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient MarketplaceDealsList{..}
          = go _mdlProposalId (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceDealsListResource)
                      mempty
