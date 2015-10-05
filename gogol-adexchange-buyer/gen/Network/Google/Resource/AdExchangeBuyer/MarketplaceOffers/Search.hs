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
-- | Gets the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceOffersSearch@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceOffers.Search
    (
    -- * REST Resource
      MarketplaceOffersSearchResource

    -- * Creating a Request
    , marketplaceOffersSearch'
    , MarketplaceOffersSearch'

    -- * Request Lenses
    , mosQuotaUser
    , mosPrettyPrint
    , mosUserIP
    , mosKey
    , mosPqlQuery
    , mosOAuthToken
    , mosFields
    ) where

import Network.Google.AdExchangeBuyer.Types
import Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceOffersSearch@ which the
-- 'MarketplaceOffersSearch'' request conforms to.
type MarketplaceOffersSearchResource =
     "marketplaceOffers" :>
       "search" :>
         QueryParam "pqlQuery" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GetOffersResponse

-- | Gets the requested negotiation.
--
-- /See:/ 'marketplaceOffersSearch'' smart constructor.
data MarketplaceOffersSearch' = MarketplaceOffersSearch'
    { _mosQuotaUser :: !(Maybe Text)
    , _mosPrettyPrint :: !Bool
    , _mosUserIP :: !(Maybe Text)
    , _mosKey :: !(Maybe Key)
    , _mosPqlQuery :: !(Maybe Text)
    , _mosOAuthToken :: !(Maybe OAuthToken)
    , _mosFields :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceOffersSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mosQuotaUser'
--
-- * 'mosPrettyPrint'
--
-- * 'mosUserIP'
--
-- * 'mosKey'
--
-- * 'mosPqlQuery'
--
-- * 'mosOAuthToken'
--
-- * 'mosFields'
marketplaceOffersSearch'
    :: MarketplaceOffersSearch'
marketplaceOffersSearch' = 
    MarketplaceOffersSearch'
    { _mosQuotaUser = Nothing
    , _mosPrettyPrint = True
    , _mosUserIP = Nothing
    , _mosKey = Nothing
    , _mosPqlQuery = Nothing
    , _mosOAuthToken = Nothing
    , _mosFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mosQuotaUser :: Lens' MarketplaceOffersSearch' (Maybe Text)
mosQuotaUser
  = lens _mosQuotaUser (\ s a -> s{_mosQuotaUser = a})

-- | Returns response with indentations and line breaks.
mosPrettyPrint :: Lens' MarketplaceOffersSearch' Bool
mosPrettyPrint
  = lens _mosPrettyPrint
      (\ s a -> s{_mosPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mosUserIP :: Lens' MarketplaceOffersSearch' (Maybe Text)
mosUserIP
  = lens _mosUserIP (\ s a -> s{_mosUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mosKey :: Lens' MarketplaceOffersSearch' (Maybe Key)
mosKey = lens _mosKey (\ s a -> s{_mosKey = a})

-- | The pql query used to query for offers.
mosPqlQuery :: Lens' MarketplaceOffersSearch' (Maybe Text)
mosPqlQuery
  = lens _mosPqlQuery (\ s a -> s{_mosPqlQuery = a})

-- | OAuth 2.0 token for the current user.
mosOAuthToken :: Lens' MarketplaceOffersSearch' (Maybe OAuthToken)
mosOAuthToken
  = lens _mosOAuthToken
      (\ s a -> s{_mosOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mosFields :: Lens' MarketplaceOffersSearch' (Maybe Text)
mosFields
  = lens _mosFields (\ s a -> s{_mosFields = a})

instance GoogleAuth MarketplaceOffersSearch' where
        authKey = mosKey . _Just
        authToken = mosOAuthToken . _Just

instance GoogleRequest MarketplaceOffersSearch' where
        type Rs MarketplaceOffersSearch' = GetOffersResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceOffersSearch'{..}
          = go _mosPqlQuery _mosQuotaUser
              (Just _mosPrettyPrint)
              _mosUserIP
              _mosFields
              _mosKey
              _mosOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceOffersSearchResource)
                      r
                      u
