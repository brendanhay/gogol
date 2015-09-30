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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Negotiations.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates or updates the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerNegotiationsInsert@.
module Network.Google.Resource.AdExchangeBuyer.Negotiations.Insert
    (
    -- * REST Resource
      NegotiationsInsertResource

    -- * Creating a Request
    , negotiationsInsert'
    , NegotiationsInsert'

    -- * Request Lenses
    , niQuotaUser
    , niPrettyPrint
    , niUserIp
    , niKey
    , niOauthToken
    , niFields
    , niAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerNegotiationsInsert@ which the
-- 'NegotiationsInsert'' request conforms to.
type NegotiationsInsertResource =
     "negotiations" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] NegotiationDto

-- | Creates or updates the requested negotiation.
--
-- /See:/ 'negotiationsInsert'' smart constructor.
data NegotiationsInsert' = NegotiationsInsert'
    { _niQuotaUser   :: !(Maybe Text)
    , _niPrettyPrint :: !Bool
    , _niUserIp      :: !(Maybe Text)
    , _niKey         :: !(Maybe Text)
    , _niOauthToken  :: !(Maybe Text)
    , _niFields      :: !(Maybe Text)
    , _niAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niQuotaUser'
--
-- * 'niPrettyPrint'
--
-- * 'niUserIp'
--
-- * 'niKey'
--
-- * 'niOauthToken'
--
-- * 'niFields'
--
-- * 'niAlt'
negotiationsInsert'
    :: NegotiationsInsert'
negotiationsInsert' =
    NegotiationsInsert'
    { _niQuotaUser = Nothing
    , _niPrettyPrint = True
    , _niUserIp = Nothing
    , _niKey = Nothing
    , _niOauthToken = Nothing
    , _niFields = Nothing
    , _niAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
niQuotaUser :: Lens' NegotiationsInsert' (Maybe Text)
niQuotaUser
  = lens _niQuotaUser (\ s a -> s{_niQuotaUser = a})

-- | Returns response with indentations and line breaks.
niPrettyPrint :: Lens' NegotiationsInsert' Bool
niPrettyPrint
  = lens _niPrettyPrint
      (\ s a -> s{_niPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
niUserIp :: Lens' NegotiationsInsert' (Maybe Text)
niUserIp = lens _niUserIp (\ s a -> s{_niUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
niKey :: Lens' NegotiationsInsert' (Maybe Text)
niKey = lens _niKey (\ s a -> s{_niKey = a})

-- | OAuth 2.0 token for the current user.
niOauthToken :: Lens' NegotiationsInsert' (Maybe Text)
niOauthToken
  = lens _niOauthToken (\ s a -> s{_niOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
niFields :: Lens' NegotiationsInsert' (Maybe Text)
niFields = lens _niFields (\ s a -> s{_niFields = a})

-- | Data format for the response.
niAlt :: Lens' NegotiationsInsert' Alt
niAlt = lens _niAlt (\ s a -> s{_niAlt = a})

instance GoogleRequest NegotiationsInsert' where
        type Rs NegotiationsInsert' = NegotiationDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationsInsert'{..}
          = go _niQuotaUser (Just _niPrettyPrint) _niUserIp
              _niKey
              _niOauthToken
              _niFields
              (Just _niAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationsInsertResource)
                      r
                      u
