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
module Network.Google.Resource.AdExchangeBuyer.Negotiations.Get
    (
    -- * REST Resource
      NegotiationsGetResource

    -- * Creating a Request
    , negotiationsGet'
    , NegotiationsGet'

    -- * Request Lenses
    , ngQuotaUser
    , ngPrettyPrint
    , ngUserIP
    , ngPayload
    , ngKey
    , ngOAuthToken
    , ngNegotiationId
    , ngFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerNegotiationsGet@ which the
-- 'NegotiationsGet'' request conforms to.
type NegotiationsGetResource =
     "negotiations" :>
       Capture "negotiationId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GetNegotiationByIdRequest :>
                         Get '[JSON] NegotiationDTO

-- | Gets the requested negotiation.
--
-- /See:/ 'negotiationsGet'' smart constructor.
data NegotiationsGet' = NegotiationsGet'
    { _ngQuotaUser     :: !(Maybe Text)
    , _ngPrettyPrint   :: !Bool
    , _ngUserIP        :: !(Maybe Text)
    , _ngPayload       :: !GetNegotiationByIdRequest
    , _ngKey           :: !(Maybe AuthKey)
    , _ngOAuthToken    :: !(Maybe OAuthToken)
    , _ngNegotiationId :: !Int64
    , _ngFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngQuotaUser'
--
-- * 'ngPrettyPrint'
--
-- * 'ngUserIP'
--
-- * 'ngPayload'
--
-- * 'ngKey'
--
-- * 'ngOAuthToken'
--
-- * 'ngNegotiationId'
--
-- * 'ngFields'
negotiationsGet'
    :: GetNegotiationByIdRequest -- ^ 'payload'
    -> Int64 -- ^ 'negotiationId'
    -> NegotiationsGet'
negotiationsGet' pNgPayload_ pNgNegotiationId_ =
    NegotiationsGet'
    { _ngQuotaUser = Nothing
    , _ngPrettyPrint = True
    , _ngUserIP = Nothing
    , _ngPayload = pNgPayload_
    , _ngKey = Nothing
    , _ngOAuthToken = Nothing
    , _ngNegotiationId = pNgNegotiationId_
    , _ngFields = Nothing
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
ngUserIP :: Lens' NegotiationsGet' (Maybe Text)
ngUserIP = lens _ngUserIP (\ s a -> s{_ngUserIP = a})

-- | Multipart request metadata.
ngPayload :: Lens' NegotiationsGet' GetNegotiationByIdRequest
ngPayload
  = lens _ngPayload (\ s a -> s{_ngPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ngKey :: Lens' NegotiationsGet' (Maybe AuthKey)
ngKey = lens _ngKey (\ s a -> s{_ngKey = a})

-- | OAuth 2.0 token for the current user.
ngOAuthToken :: Lens' NegotiationsGet' (Maybe OAuthToken)
ngOAuthToken
  = lens _ngOAuthToken (\ s a -> s{_ngOAuthToken = a})

ngNegotiationId :: Lens' NegotiationsGet' Int64
ngNegotiationId
  = lens _ngNegotiationId
      (\ s a -> s{_ngNegotiationId = a})

-- | Selector specifying which fields to include in a partial response.
ngFields :: Lens' NegotiationsGet' (Maybe Text)
ngFields = lens _ngFields (\ s a -> s{_ngFields = a})

instance GoogleAuth NegotiationsGet' where
        authKey = ngKey . _Just
        authToken = ngOAuthToken . _Just

instance GoogleRequest NegotiationsGet' where
        type Rs NegotiationsGet' = NegotiationDTO
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationsGet'{..}
          = go _ngNegotiationId _ngQuotaUser
              (Just _ngPrettyPrint)
              _ngUserIP
              _ngFields
              _ngKey
              _ngOAuthToken
              (Just AltJSON)
              _ngPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationsGetResource)
                      r
                      u
