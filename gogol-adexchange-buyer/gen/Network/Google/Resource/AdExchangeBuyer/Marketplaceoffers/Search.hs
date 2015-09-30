{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplaceoffers.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceoffersSearch@.
module AdExchangeBuyer.Marketplaceoffers.Search
    (
    -- * REST Resource
      MarketplaceoffersSearchAPI

    -- * Creating a Request
    , marketplaceoffersSearch
    , MarketplaceoffersSearch

    -- * Request Lenses
    , msQuotaUser
    , msPrettyPrint
    , msUserIp
    , msKey
    , msPqlQuery
    , msOauthToken
    , msFields
    , msAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceoffersSearch@ which the
-- 'MarketplaceoffersSearch' request conforms to.
type MarketplaceoffersSearchAPI =
     "marketplaceOffers" :>
       "search" :>
         QueryParam "pqlQuery" Text :>
           Get '[JSON] GetOffersResponse

-- | Gets the requested negotiation.
--
-- /See:/ 'marketplaceoffersSearch' smart constructor.
data MarketplaceoffersSearch = MarketplaceoffersSearch
    { _msQuotaUser   :: !(Maybe Text)
    , _msPrettyPrint :: !Bool
    , _msUserIp      :: !(Maybe Text)
    , _msKey         :: !(Maybe Text)
    , _msPqlQuery    :: !(Maybe Text)
    , _msOauthToken  :: !(Maybe Text)
    , _msFields      :: !(Maybe Text)
    , _msAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceoffersSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msQuotaUser'
--
-- * 'msPrettyPrint'
--
-- * 'msUserIp'
--
-- * 'msKey'
--
-- * 'msPqlQuery'
--
-- * 'msOauthToken'
--
-- * 'msFields'
--
-- * 'msAlt'
marketplaceoffersSearch
    :: MarketplaceoffersSearch
marketplaceoffersSearch =
    MarketplaceoffersSearch
    { _msQuotaUser = Nothing
    , _msPrettyPrint = True
    , _msUserIp = Nothing
    , _msKey = Nothing
    , _msPqlQuery = Nothing
    , _msOauthToken = Nothing
    , _msFields = Nothing
    , _msAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
msQuotaUser :: Lens' MarketplaceoffersSearch' (Maybe Text)
msQuotaUser
  = lens _msQuotaUser (\ s a -> s{_msQuotaUser = a})

-- | Returns response with indentations and line breaks.
msPrettyPrint :: Lens' MarketplaceoffersSearch' Bool
msPrettyPrint
  = lens _msPrettyPrint
      (\ s a -> s{_msPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
msUserIp :: Lens' MarketplaceoffersSearch' (Maybe Text)
msUserIp = lens _msUserIp (\ s a -> s{_msUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
msKey :: Lens' MarketplaceoffersSearch' (Maybe Text)
msKey = lens _msKey (\ s a -> s{_msKey = a})

-- | The pql query used to query for offers.
msPqlQuery :: Lens' MarketplaceoffersSearch' (Maybe Text)
msPqlQuery
  = lens _msPqlQuery (\ s a -> s{_msPqlQuery = a})

-- | OAuth 2.0 token for the current user.
msOauthToken :: Lens' MarketplaceoffersSearch' (Maybe Text)
msOauthToken
  = lens _msOauthToken (\ s a -> s{_msOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
msFields :: Lens' MarketplaceoffersSearch' (Maybe Text)
msFields = lens _msFields (\ s a -> s{_msFields = a})

-- | Data format for the response.
msAlt :: Lens' MarketplaceoffersSearch' Text
msAlt = lens _msAlt (\ s a -> s{_msAlt = a})

instance GoogleRequest MarketplaceoffersSearch' where
        type Rs MarketplaceoffersSearch' = GetOffersResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceoffersSearch{..}
          = go _msQuotaUser _msPrettyPrint _msUserIp _msKey
              _msPqlQuery
              _msOauthToken
              _msFields
              _msAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceoffersSearchAPI)
                      r
                      u
