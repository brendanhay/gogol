{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Negotiations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerNegotiationsGet@.
module AdExchangeBuyer.Negotiations.Get
    (
    -- * REST Resource
      NegotiationsGetAPI

    -- * Creating a Request
    , negotiationsGet
    , NegotiationsGet

    -- * Request Lenses
    , ngQuotaUser
    , ngPrettyPrint
    , ngUserIp
    , ngKey
    , ngOauthToken
    , ngNegotiationId
    , ngFields
    , ngAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerNegotiationsGet@ which the
-- 'NegotiationsGet' request conforms to.
type NegotiationsGetAPI =
     "negotiations" :>
       Capture "negotiationId" Int64 :>
         Get '[JSON] NegotiationDto

-- | Gets the requested negotiation.
--
-- /See:/ 'negotiationsGet' smart constructor.
data NegotiationsGet = NegotiationsGet
    { _ngQuotaUser     :: !(Maybe Text)
    , _ngPrettyPrint   :: !Bool
    , _ngUserIp        :: !(Maybe Text)
    , _ngKey           :: !(Maybe Text)
    , _ngOauthToken    :: !(Maybe Text)
    , _ngNegotiationId :: !Int64
    , _ngFields        :: !(Maybe Text)
    , _ngAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngQuotaUser'
--
-- * 'ngPrettyPrint'
--
-- * 'ngUserIp'
--
-- * 'ngKey'
--
-- * 'ngOauthToken'
--
-- * 'ngNegotiationId'
--
-- * 'ngFields'
--
-- * 'ngAlt'
negotiationsGet
    :: Int64 -- ^ 'negotiationId'
    -> NegotiationsGet
negotiationsGet pNgNegotiationId_ =
    NegotiationsGet
    { _ngQuotaUser = Nothing
    , _ngPrettyPrint = True
    , _ngUserIp = Nothing
    , _ngKey = Nothing
    , _ngOauthToken = Nothing
    , _ngNegotiationId = pNgNegotiationId_
    , _ngFields = Nothing
    , _ngAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ngQuotaUser :: Lens' NegotiationsGet' (Maybe Text)
ngQuotaUser
  = lens _ngQuotaUser (\ s a -> s{_ngQuotaUser = a})

-- | Returns response with indentations and line breaks.
ngPrettyPrint :: Lens' NegotiationsGet' Bool
ngPrettyPrint
  = lens _ngPrettyPrint
      (\ s a -> s{_ngPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ngUserIp :: Lens' NegotiationsGet' (Maybe Text)
ngUserIp = lens _ngUserIp (\ s a -> s{_ngUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ngKey :: Lens' NegotiationsGet' (Maybe Text)
ngKey = lens _ngKey (\ s a -> s{_ngKey = a})

-- | OAuth 2.0 token for the current user.
ngOauthToken :: Lens' NegotiationsGet' (Maybe Text)
ngOauthToken
  = lens _ngOauthToken (\ s a -> s{_ngOauthToken = a})

ngNegotiationId :: Lens' NegotiationsGet' Int64
ngNegotiationId
  = lens _ngNegotiationId
      (\ s a -> s{_ngNegotiationId = a})

-- | Selector specifying which fields to include in a partial response.
ngFields :: Lens' NegotiationsGet' (Maybe Text)
ngFields = lens _ngFields (\ s a -> s{_ngFields = a})

-- | Data format for the response.
ngAlt :: Lens' NegotiationsGet' Text
ngAlt = lens _ngAlt (\ s a -> s{_ngAlt = a})

instance GoogleRequest NegotiationsGet' where
        type Rs NegotiationsGet' = NegotiationDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationsGet{..}
          = go _ngQuotaUser _ngPrettyPrint _ngUserIp _ngKey
              _ngOauthToken
              _ngNegotiationId
              _ngFields
              _ngAlt
          where go
                  = clientWithRoute (Proxy :: Proxy NegotiationsGetAPI)
                      r
                      u
