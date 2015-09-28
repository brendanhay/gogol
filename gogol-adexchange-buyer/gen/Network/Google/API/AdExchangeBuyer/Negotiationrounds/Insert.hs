{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Negotiationrounds.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds the requested negotiationRound to the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.negotiationrounds.insert@.
module Network.Google.API.AdExchangeBuyer.Negotiationrounds.Insert
    (
    -- * REST Resource
      NegotiationroundsInsertAPI

    -- * Creating a Request
    , negotiationroundsInsert'
    , NegotiationroundsInsert'

    -- * Request Lenses
    , niQuotaUser
    , niPrettyPrint
    , niUserIp
    , niKey
    , niOauthToken
    , niNegotiationId
    , niFields
    , niAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.negotiationrounds.insert which the
-- 'NegotiationroundsInsert'' request conforms to.
type NegotiationroundsInsertAPI =
     "negotiations" :>
       Capture "negotiationId" Int64 :>
         "negotiationrounds" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON] NegotiationRoundDto

-- | Adds the requested negotiationRound to the requested negotiation.
--
-- /See:/ 'negotiationroundsInsert'' smart constructor.
data NegotiationroundsInsert' = NegotiationroundsInsert'
    { _niQuotaUser     :: !(Maybe Text)
    , _niPrettyPrint   :: !Bool
    , _niUserIp        :: !(Maybe Text)
    , _niKey           :: !(Maybe Text)
    , _niOauthToken    :: !(Maybe Text)
    , _niNegotiationId :: !Int64
    , _niFields        :: !(Maybe Text)
    , _niAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationroundsInsert'' with the minimum fields required to make a request.
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
-- * 'niNegotiationId'
--
-- * 'niFields'
--
-- * 'niAlt'
negotiationroundsInsert'
    :: Int64 -- ^ 'negotiationId'
    -> NegotiationroundsInsert'
negotiationroundsInsert' pNiNegotiationId_ =
    NegotiationroundsInsert'
    { _niQuotaUser = Nothing
    , _niPrettyPrint = True
    , _niUserIp = Nothing
    , _niKey = Nothing
    , _niOauthToken = Nothing
    , _niNegotiationId = pNiNegotiationId_
    , _niFields = Nothing
    , _niAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
niQuotaUser :: Lens' NegotiationroundsInsert' (Maybe Text)
niQuotaUser
  = lens _niQuotaUser (\ s a -> s{_niQuotaUser = a})

-- | Returns response with indentations and line breaks.
niPrettyPrint :: Lens' NegotiationroundsInsert' Bool
niPrettyPrint
  = lens _niPrettyPrint
      (\ s a -> s{_niPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
niUserIp :: Lens' NegotiationroundsInsert' (Maybe Text)
niUserIp = lens _niUserIp (\ s a -> s{_niUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
niKey :: Lens' NegotiationroundsInsert' (Maybe Text)
niKey = lens _niKey (\ s a -> s{_niKey = a})

-- | OAuth 2.0 token for the current user.
niOauthToken :: Lens' NegotiationroundsInsert' (Maybe Text)
niOauthToken
  = lens _niOauthToken (\ s a -> s{_niOauthToken = a})

niNegotiationId :: Lens' NegotiationroundsInsert' Int64
niNegotiationId
  = lens _niNegotiationId
      (\ s a -> s{_niNegotiationId = a})

-- | Selector specifying which fields to include in a partial response.
niFields :: Lens' NegotiationroundsInsert' (Maybe Text)
niFields = lens _niFields (\ s a -> s{_niFields = a})

-- | Data format for the response.
niAlt :: Lens' NegotiationroundsInsert' Alt
niAlt = lens _niAlt (\ s a -> s{_niAlt = a})

instance GoogleRequest NegotiationroundsInsert' where
        type Rs NegotiationroundsInsert' =
             NegotiationRoundDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationroundsInsert'{..}
          = go _niQuotaUser (Just _niPrettyPrint) _niUserIp
              _niKey
              _niOauthToken
              _niNegotiationId
              _niFields
              (Just _niAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationroundsInsertAPI)
                      r
                      u
