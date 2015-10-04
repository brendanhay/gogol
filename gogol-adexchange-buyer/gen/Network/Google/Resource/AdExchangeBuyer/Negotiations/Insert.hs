{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , niUserIP
    , niPayload
    , niKey
    , niOAuthToken
    , niFields
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
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[OctetStream] NegotiationDTO :>
                       Post '[JSON] NegotiationDTO

-- | Creates or updates the requested negotiation.
--
-- /See:/ 'negotiationsInsert'' smart constructor.
data NegotiationsInsert' = NegotiationsInsert'
    { _niQuotaUser   :: !(Maybe Text)
    , _niPrettyPrint :: !Bool
    , _niUserIP      :: !(Maybe Text)
    , _niPayload     :: !NegotiationDTO
    , _niKey         :: !(Maybe Key)
    , _niOAuthToken  :: !(Maybe OAuthToken)
    , _niFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niQuotaUser'
--
-- * 'niPrettyPrint'
--
-- * 'niUserIP'
--
-- * 'niPayload'
--
-- * 'niKey'
--
-- * 'niOAuthToken'
--
-- * 'niFields'
negotiationsInsert'
    :: NegotiationDTO -- ^ 'payload'
    -> NegotiationsInsert'
negotiationsInsert' pNiPayload_ =
    NegotiationsInsert'
    { _niQuotaUser = Nothing
    , _niPrettyPrint = True
    , _niUserIP = Nothing
    , _niPayload = pNiPayload_
    , _niKey = Nothing
    , _niOAuthToken = Nothing
    , _niFields = Nothing
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
niUserIP :: Lens' NegotiationsInsert' (Maybe Text)
niUserIP = lens _niUserIP (\ s a -> s{_niUserIP = a})

-- | Multipart request metadata.
niPayload :: Lens' NegotiationsInsert' NegotiationDTO
niPayload
  = lens _niPayload (\ s a -> s{_niPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
niKey :: Lens' NegotiationsInsert' (Maybe Key)
niKey = lens _niKey (\ s a -> s{_niKey = a})

-- | OAuth 2.0 token for the current user.
niOAuthToken :: Lens' NegotiationsInsert' (Maybe OAuthToken)
niOAuthToken
  = lens _niOAuthToken (\ s a -> s{_niOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
niFields :: Lens' NegotiationsInsert' (Maybe Text)
niFields = lens _niFields (\ s a -> s{_niFields = a})

instance GoogleAuth NegotiationsInsert' where
        authKey = niKey . _Just
        authToken = niOAuthToken . _Just

instance GoogleRequest NegotiationsInsert' where
        type Rs NegotiationsInsert' = NegotiationDTO
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationsInsert'{..}
          = go _niQuotaUser (Just _niPrettyPrint) _niUserIP
              _niFields
              _niKey
              _niOAuthToken
              (Just AltJSON)
              _niPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationsInsertResource)
                      r
                      u
