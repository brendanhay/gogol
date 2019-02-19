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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Proposals.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search for proposals using pql query
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.proposals.search@.
module Network.Google.Resource.AdExchangeBuyer.Proposals.Search
    (
    -- * REST Resource
      ProposalsSearchResource

    -- * Creating a Request
    , proposalsSearch
    , ProposalsSearch

    -- * Request Lenses
    , pPqlQuery
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.proposals.search@ method which the
-- 'ProposalsSearch' request conforms to.
type ProposalsSearchResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "proposals" :>
           "search" :>
             QueryParam "pqlQuery" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] GetOrdersResponse

-- | Search for proposals using pql query
--
-- /See:/ 'proposalsSearch' smart constructor.
newtype ProposalsSearch =
  ProposalsSearch'
    { _pPqlQuery :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProposalsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPqlQuery'
proposalsSearch
    :: ProposalsSearch
proposalsSearch = ProposalsSearch' {_pPqlQuery = Nothing}

-- | Query string to retrieve specific proposals.
pPqlQuery :: Lens' ProposalsSearch (Maybe Text)
pPqlQuery
  = lens _pPqlQuery (\ s a -> s{_pPqlQuery = a})

instance GoogleRequest ProposalsSearch where
        type Rs ProposalsSearch = GetOrdersResponse
        type Scopes ProposalsSearch =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient ProposalsSearch'{..}
          = go _pPqlQuery (Just AltJSON) adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProposalsSearchResource)
                      mempty
