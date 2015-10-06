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
    , nlPayload
    , nlKey
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
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetNegotiationsRequest :>
                       Get '[JSON] GetNegotiationsResponse

-- | Lists all negotiations the authenticated user has access to.
--
-- /See:/ 'negotiationsList'' smart constructor.
data NegotiationsList' = NegotiationsList'
    { _nlQuotaUser   :: !(Maybe Text)
    , _nlPrettyPrint :: !Bool
    , _nlUserIP      :: !(Maybe Text)
    , _nlPayload     :: !GetNegotiationsRequest
    , _nlKey         :: !(Maybe AuthKey)
    , _nlOAuthToken  :: !(Maybe OAuthToken)
    , _nlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'nlPayload'
--
-- * 'nlKey'
--
-- * 'nlOAuthToken'
--
-- * 'nlFields'
negotiationsList'
    :: GetNegotiationsRequest -- ^ 'payload'
    -> NegotiationsList'
negotiationsList' pNlPayload_ =
    NegotiationsList'
    { _nlQuotaUser = Nothing
    , _nlPrettyPrint = True
    , _nlUserIP = Nothing
    , _nlPayload = pNlPayload_
    , _nlKey = Nothing
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

-- | Multipart request metadata.
nlPayload :: Lens' NegotiationsList' GetNegotiationsRequest
nlPayload
  = lens _nlPayload (\ s a -> s{_nlPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nlKey :: Lens' NegotiationsList' (Maybe AuthKey)
nlKey = lens _nlKey (\ s a -> s{_nlKey = a})

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
        request = requestWith adExchangeBuyerRequest
        requestWith rq NegotiationsList'{..}
          = go _nlQuotaUser (Just _nlPrettyPrint) _nlUserIP
              _nlFields
              _nlKey
              _nlOAuthToken
              (Just AltJSON)
              _nlPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy NegotiationsListResource)
                      rq
