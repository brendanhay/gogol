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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Negotiationrounds.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds the requested negotiationRound to the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerNegotiationroundsInsert@.
module Network.Google.Resource.AdExchangeBuyer.Negotiationrounds.Insert
    (
    -- * REST Resource
      NegotiationroundsInsertResource

    -- * Creating a Request
    , negotiationroundsInsert'
    , NegotiationroundsInsert'

    -- * Request Lenses
    , nQuotaUser
    , nPrettyPrint
    , nUserIp
    , nKey
    , nOauthToken
    , nNegotiationId
    , nFields
    , nAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerNegotiationroundsInsert@ which the
-- 'NegotiationroundsInsert'' request conforms to.
type NegotiationroundsInsertResource =
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
    { _nQuotaUser     :: !(Maybe Text)
    , _nPrettyPrint   :: !Bool
    , _nUserIp        :: !(Maybe Text)
    , _nKey           :: !(Maybe Text)
    , _nOauthToken    :: !(Maybe Text)
    , _nNegotiationId :: !Int64
    , _nFields        :: !(Maybe Text)
    , _nAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationroundsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nQuotaUser'
--
-- * 'nPrettyPrint'
--
-- * 'nUserIp'
--
-- * 'nKey'
--
-- * 'nOauthToken'
--
-- * 'nNegotiationId'
--
-- * 'nFields'
--
-- * 'nAlt'
negotiationroundsInsert'
    :: Int64 -- ^ 'negotiationId'
    -> NegotiationroundsInsert'
negotiationroundsInsert' pNNegotiationId_ =
    NegotiationroundsInsert'
    { _nQuotaUser = Nothing
    , _nPrettyPrint = True
    , _nUserIp = Nothing
    , _nKey = Nothing
    , _nOauthToken = Nothing
    , _nNegotiationId = pNNegotiationId_
    , _nFields = Nothing
    , _nAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
nQuotaUser :: Lens' NegotiationroundsInsert' (Maybe Text)
nQuotaUser
  = lens _nQuotaUser (\ s a -> s{_nQuotaUser = a})

-- | Returns response with indentations and line breaks.
nPrettyPrint :: Lens' NegotiationroundsInsert' Bool
nPrettyPrint
  = lens _nPrettyPrint (\ s a -> s{_nPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
nUserIp :: Lens' NegotiationroundsInsert' (Maybe Text)
nUserIp = lens _nUserIp (\ s a -> s{_nUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nKey :: Lens' NegotiationroundsInsert' (Maybe Text)
nKey = lens _nKey (\ s a -> s{_nKey = a})

-- | OAuth 2.0 token for the current user.
nOauthToken :: Lens' NegotiationroundsInsert' (Maybe Text)
nOauthToken
  = lens _nOauthToken (\ s a -> s{_nOauthToken = a})

nNegotiationId :: Lens' NegotiationroundsInsert' Int64
nNegotiationId
  = lens _nNegotiationId
      (\ s a -> s{_nNegotiationId = a})

-- | Selector specifying which fields to include in a partial response.
nFields :: Lens' NegotiationroundsInsert' (Maybe Text)
nFields = lens _nFields (\ s a -> s{_nFields = a})

-- | Data format for the response.
nAlt :: Lens' NegotiationroundsInsert' Alt
nAlt = lens _nAlt (\ s a -> s{_nAlt = a})

instance GoogleRequest NegotiationroundsInsert' where
        type Rs NegotiationroundsInsert' =
             NegotiationRoundDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationroundsInsert'{..}
          = go _nQuotaUser (Just _nPrettyPrint) _nUserIp _nKey
              _nOauthToken
              _nNegotiationId
              _nFields
              (Just _nAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationroundsInsertResource)
                      r
                      u
