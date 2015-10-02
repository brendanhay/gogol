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
    , nlUserIP
    , nlKey
    , nlGetNegotiationsRequest
    , nlOAuthToken
    , nlFields
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
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetNegotiationsRequest :>
                       Get '[JSON] GetNegotiationsResponse

-- | Lists all negotiations the authenticated user has access to.
--
-- /See:/ 'negotiationsList'' smart constructor.
data NegotiationsList' = NegotiationsList'
    { _nlQuotaUser              :: !(Maybe Text)
    , _nlPrettyPrint            :: !Bool
    , _nlUserIP                 :: !(Maybe Text)
    , _nlKey                    :: !(Maybe Key)
    , _nlGetNegotiationsRequest :: !GetNegotiationsRequest
    , _nlOAuthToken             :: !(Maybe OAuthToken)
    , _nlFields                 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlQuotaUser'
--
-- * 'nlPrettyPrint'
--
-- * 'nlUserIP'
--
-- * 'nlKey'
--
-- * 'nlGetNegotiationsRequest'
--
-- * 'nlOAuthToken'
--
-- * 'nlFields'
negotiationsList'
    :: GetNegotiationsRequest -- ^ 'GetNegotiationsRequest'
    -> NegotiationsList'
negotiationsList' pNlGetNegotiationsRequest_ =
    NegotiationsList'
    { _nlQuotaUser = Nothing
    , _nlPrettyPrint = True
    , _nlUserIP = Nothing
    , _nlKey = Nothing
    , _nlGetNegotiationsRequest = pNlGetNegotiationsRequest_
    , _nlOAuthToken = Nothing
    , _nlFields = Nothing
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
nlUserIP :: Lens' NegotiationsList' (Maybe Text)
nlUserIP = lens _nlUserIP (\ s a -> s{_nlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nlKey :: Lens' NegotiationsList' (Maybe Key)
nlKey = lens _nlKey (\ s a -> s{_nlKey = a})

-- | Multipart request metadata.
nlGetNegotiationsRequest :: Lens' NegotiationsList' GetNegotiationsRequest
nlGetNegotiationsRequest
  = lens _nlGetNegotiationsRequest
      (\ s a -> s{_nlGetNegotiationsRequest = a})

-- | OAuth 2.0 token for the current user.
nlOAuthToken :: Lens' NegotiationsList' (Maybe OAuthToken)
nlOAuthToken
  = lens _nlOAuthToken (\ s a -> s{_nlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
nlFields :: Lens' NegotiationsList' (Maybe Text)
nlFields = lens _nlFields (\ s a -> s{_nlFields = a})

instance GoogleAuth NegotiationsList' where
        authKey = nlKey . _Just
        authToken = nlOAuthToken . _Just

instance GoogleRequest NegotiationsList' where
        type Rs NegotiationsList' = GetNegotiationsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationsList'{..}
          = go _nlQuotaUser (Just _nlPrettyPrint) _nlUserIP
              _nlKey
              _nlOAuthToken
              _nlFields
              (Just AltJSON)
              _nlGetNegotiationsRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationsListResource)
                      r
                      u
