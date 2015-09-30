{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Search for orders using pql query
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceordersSearch@.
module Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Search
    (
    -- * REST Resource
      MarketplaceordersSearchResource

    -- * Creating a Request
    , marketplaceordersSearch'
    , MarketplaceordersSearch'

    -- * Request Lenses
    , mssQuotaUser
    , mssPrettyPrint
    , mssUserIp
    , mssKey
    , mssPqlQuery
    , mssOauthToken
    , mssFields
    , mssAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceordersSearch@ which the
-- 'MarketplaceordersSearch'' request conforms to.
type MarketplaceordersSearchResource =
     "marketplaceOrders" :>
       "search" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "pqlQuery" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] GetOrdersResponse

-- | Search for orders using pql query
--
-- /See:/ 'marketplaceordersSearch'' smart constructor.
data MarketplaceordersSearch' = MarketplaceordersSearch'
    { _mssQuotaUser   :: !(Maybe Text)
    , _mssPrettyPrint :: !Bool
    , _mssUserIp      :: !(Maybe Text)
    , _mssKey         :: !(Maybe Text)
    , _mssPqlQuery    :: !(Maybe Text)
    , _mssOauthToken  :: !(Maybe Text)
    , _mssFields      :: !(Maybe Text)
    , _mssAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mssQuotaUser'
--
-- * 'mssPrettyPrint'
--
-- * 'mssUserIp'
--
-- * 'mssKey'
--
-- * 'mssPqlQuery'
--
-- * 'mssOauthToken'
--
-- * 'mssFields'
--
-- * 'mssAlt'
marketplaceordersSearch'
    :: MarketplaceordersSearch'
marketplaceordersSearch' =
    MarketplaceordersSearch'
    { _mssQuotaUser = Nothing
    , _mssPrettyPrint = True
    , _mssUserIp = Nothing
    , _mssKey = Nothing
    , _mssPqlQuery = Nothing
    , _mssOauthToken = Nothing
    , _mssFields = Nothing
    , _mssAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mssQuotaUser :: Lens' MarketplaceordersSearch' (Maybe Text)
mssQuotaUser
  = lens _mssQuotaUser (\ s a -> s{_mssQuotaUser = a})

-- | Returns response with indentations and line breaks.
mssPrettyPrint :: Lens' MarketplaceordersSearch' Bool
mssPrettyPrint
  = lens _mssPrettyPrint
      (\ s a -> s{_mssPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mssUserIp :: Lens' MarketplaceordersSearch' (Maybe Text)
mssUserIp
  = lens _mssUserIp (\ s a -> s{_mssUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mssKey :: Lens' MarketplaceordersSearch' (Maybe Text)
mssKey = lens _mssKey (\ s a -> s{_mssKey = a})

-- | Query string to retrieve specific orders.
mssPqlQuery :: Lens' MarketplaceordersSearch' (Maybe Text)
mssPqlQuery
  = lens _mssPqlQuery (\ s a -> s{_mssPqlQuery = a})

-- | OAuth 2.0 token for the current user.
mssOauthToken :: Lens' MarketplaceordersSearch' (Maybe Text)
mssOauthToken
  = lens _mssOauthToken
      (\ s a -> s{_mssOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mssFields :: Lens' MarketplaceordersSearch' (Maybe Text)
mssFields
  = lens _mssFields (\ s a -> s{_mssFields = a})

-- | Data format for the response.
mssAlt :: Lens' MarketplaceordersSearch' Alt
mssAlt = lens _mssAlt (\ s a -> s{_mssAlt = a})

instance GoogleRequest MarketplaceordersSearch' where
        type Rs MarketplaceordersSearch' = GetOrdersResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersSearch'{..}
          = go _mssQuotaUser (Just _mssPrettyPrint) _mssUserIp
              _mssKey
              _mssPqlQuery
              _mssOauthToken
              _mssFields
              (Just _mssAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersSearchResource)
                      r
                      u
