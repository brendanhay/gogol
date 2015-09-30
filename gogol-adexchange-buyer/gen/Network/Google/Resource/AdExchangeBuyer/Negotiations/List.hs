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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Negotiations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all negotiations the authenticated user has access to.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerNegotiationsList@.
module Network.Google.Resource.AdExchangeBuyer.Negotiations.List
    (
    -- * REST Resource
      NegotiationsListResource

    -- * Creating a Request
    , negotiationsList'
    , NegotiationsList'

    -- * Request Lenses
    , nlQuotaUser
    , nlPrettyPrint
    , nlUserIp
    , nlKey
    , nlOauthToken
    , nlFields
    , nlAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerNegotiationsList@ which the
-- 'NegotiationsList'' request conforms to.
type NegotiationsListResource =
     "negotiations" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Get '[JSON] GetNegotiationsResponse

-- | Lists all negotiations the authenticated user has access to.
--
-- /See:/ 'negotiationsList'' smart constructor.
data NegotiationsList' = NegotiationsList'
    { _nlQuotaUser   :: !(Maybe Text)
    , _nlPrettyPrint :: !Bool
    , _nlUserIp      :: !(Maybe Text)
    , _nlKey         :: !(Maybe Text)
    , _nlOauthToken  :: !(Maybe Text)
    , _nlFields      :: !(Maybe Text)
    , _nlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlQuotaUser'
--
-- * 'nlPrettyPrint'
--
-- * 'nlUserIp'
--
-- * 'nlKey'
--
-- * 'nlOauthToken'
--
-- * 'nlFields'
--
-- * 'nlAlt'
negotiationsList'
    :: NegotiationsList'
negotiationsList' =
    NegotiationsList'
    { _nlQuotaUser = Nothing
    , _nlPrettyPrint = True
    , _nlUserIp = Nothing
    , _nlKey = Nothing
    , _nlOauthToken = Nothing
    , _nlFields = Nothing
    , _nlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
nlQuotaUser :: Lens' NegotiationsList' (Maybe Text)
nlQuotaUser
  = lens _nlQuotaUser (\ s a -> s{_nlQuotaUser = a})

-- | Returns response with indentations and line breaks.
nlPrettyPrint :: Lens' NegotiationsList' Bool
nlPrettyPrint
  = lens _nlPrettyPrint
      (\ s a -> s{_nlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
nlUserIp :: Lens' NegotiationsList' (Maybe Text)
nlUserIp = lens _nlUserIp (\ s a -> s{_nlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nlKey :: Lens' NegotiationsList' (Maybe Text)
nlKey = lens _nlKey (\ s a -> s{_nlKey = a})

-- | OAuth 2.0 token for the current user.
nlOauthToken :: Lens' NegotiationsList' (Maybe Text)
nlOauthToken
  = lens _nlOauthToken (\ s a -> s{_nlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
nlFields :: Lens' NegotiationsList' (Maybe Text)
nlFields = lens _nlFields (\ s a -> s{_nlFields = a})

-- | Data format for the response.
nlAlt :: Lens' NegotiationsList' Alt
nlAlt = lens _nlAlt (\ s a -> s{_nlAlt = a})

instance GoogleRequest NegotiationsList' where
        type Rs NegotiationsList' = GetNegotiationsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationsList'{..}
          = go _nlQuotaUser (Just _nlPrettyPrint) _nlUserIp
              _nlKey
              _nlOauthToken
              _nlFields
              (Just _nlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationsListResource)
                      r
                      u
