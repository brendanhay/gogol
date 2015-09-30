{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module AdExchangeBuyer.Negotiations.Insert
    (
    -- * REST Resource
      NegotiationsInsertAPI

    -- * Creating a Request
    , negotiationsInsert
    , NegotiationsInsert

    -- * Request Lenses
    , nQuotaUser
    , nPrettyPrint
    , nUserIp
    , nKey
    , nOauthToken
    , nFields
    , nAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerNegotiationsInsert@ which the
-- 'NegotiationsInsert' request conforms to.
type NegotiationsInsertAPI =
     "negotiations" :> Post '[JSON] NegotiationDto

-- | Creates or updates the requested negotiation.
--
-- /See:/ 'negotiationsInsert' smart constructor.
data NegotiationsInsert = NegotiationsInsert
    { _nQuotaUser   :: !(Maybe Text)
    , _nPrettyPrint :: !Bool
    , _nUserIp      :: !(Maybe Text)
    , _nKey         :: !(Maybe Text)
    , _nOauthToken  :: !(Maybe Text)
    , _nFields      :: !(Maybe Text)
    , _nAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsInsert'' with the minimum fields required to make a request.
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
-- * 'nFields'
--
-- * 'nAlt'
negotiationsInsert
    :: NegotiationsInsert
negotiationsInsert =
    NegotiationsInsert
    { _nQuotaUser = Nothing
    , _nPrettyPrint = True
    , _nUserIp = Nothing
    , _nKey = Nothing
    , _nOauthToken = Nothing
    , _nFields = Nothing
    , _nAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
nQuotaUser :: Lens' NegotiationsInsert' (Maybe Text)
nQuotaUser
  = lens _nQuotaUser (\ s a -> s{_nQuotaUser = a})

-- | Returns response with indentations and line breaks.
nPrettyPrint :: Lens' NegotiationsInsert' Bool
nPrettyPrint
  = lens _nPrettyPrint (\ s a -> s{_nPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
nUserIp :: Lens' NegotiationsInsert' (Maybe Text)
nUserIp = lens _nUserIp (\ s a -> s{_nUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nKey :: Lens' NegotiationsInsert' (Maybe Text)
nKey = lens _nKey (\ s a -> s{_nKey = a})

-- | OAuth 2.0 token for the current user.
nOauthToken :: Lens' NegotiationsInsert' (Maybe Text)
nOauthToken
  = lens _nOauthToken (\ s a -> s{_nOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
nFields :: Lens' NegotiationsInsert' (Maybe Text)
nFields = lens _nFields (\ s a -> s{_nFields = a})

-- | Data format for the response.
nAlt :: Lens' NegotiationsInsert' Text
nAlt = lens _nAlt (\ s a -> s{_nAlt = a})

instance GoogleRequest NegotiationsInsert' where
        type Rs NegotiationsInsert' = NegotiationDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationsInsert{..}
          = go _nQuotaUser _nPrettyPrint _nUserIp _nKey
              _nOauthToken
              _nFields
              _nAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationsInsertAPI)
                      r
                      u
