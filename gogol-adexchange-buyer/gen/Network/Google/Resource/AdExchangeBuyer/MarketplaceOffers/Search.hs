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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplaceoffers.search@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Search
    (
    -- * REST Resource
      MarketplaceOffersSearchResource

    -- * Creating a Request
    , marketplaceOffersSearch
    , MarketplaceOffersSearch

    -- * Request Lenses
    , mPqlQuery
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.marketplaceoffers.search@ method which the
-- 'MarketplaceOffersSearch' request conforms to.
type MarketplaceOffersSearchResource =
     "marketplaceOffers" :>
       "search" :>
         QueryParam "pqlQuery" Text :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] GetOffersResponse

-- | Gets the requested negotiation.
--
-- /See:/ 'marketplaceOffersSearch' smart constructor.
newtype MarketplaceOffersSearch = MarketplaceOffersSearch
    { _mPqlQuery :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOffersSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mPqlQuery'
marketplaceOffersSearch
    :: MarketplaceOffersSearch
marketplaceOffersSearch =
    MarketplaceOffersSearch
    { _mPqlQuery = Nothing
    }

-- | The pql query used to query for offers.
mPqlQuery :: Lens' MarketplaceOffersSearch (Maybe Text)
mPqlQuery
  = lens _mPqlQuery (\ s a -> s{_mPqlQuery = a})

instance GoogleRequest MarketplaceOffersSearch where
        type Rs MarketplaceOffersSearch = GetOffersResponse
        requestClient MarketplaceOffersSearch{..}
          = go _mPqlQuery (Just AltJSON) adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy MarketplaceOffersSearchResource)
                      mempty
