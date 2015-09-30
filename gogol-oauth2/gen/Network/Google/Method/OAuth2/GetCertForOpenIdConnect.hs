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
-- Module      : Network.Google.Method.OAuth2.GetCertForOpenIdConnect
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @Oauth2GetCertForOpenIdConnect@.
module Network.Google.Method.OAuth2.GetCertForOpenIdConnect
    (
    -- * REST Resource
      GetCertForOpenIdConnectMethod

    -- * Creating a Request
    , getCertForOpenIdConnect'
    , GetCertForOpenIdConnect'

    -- * Request Lenses
    , gcfoicQuotaUser
    , gcfoicPrettyPrint
    , gcfoicUserIp
    , gcfoicKey
    , gcfoicOauthToken
    , gcfoicFields
    , gcfoicAlt
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @Oauth2GetCertForOpenIdConnect@ which the
-- 'GetCertForOpenIdConnect'' request conforms to.
type GetCertForOpenIdConnectMethod =
     "oauth2" :>
       "v2" :>
         "certs" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Jwk

--
-- /See:/ 'getCertForOpenIdConnect'' smart constructor.
data GetCertForOpenIdConnect' = GetCertForOpenIdConnect'
    { _gcfoicQuotaUser   :: !(Maybe Text)
    , _gcfoicPrettyPrint :: !Bool
    , _gcfoicUserIp      :: !(Maybe Text)
    , _gcfoicKey         :: !(Maybe Text)
    , _gcfoicOauthToken  :: !(Maybe Text)
    , _gcfoicFields      :: !(Maybe Text)
    , _gcfoicAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetCertForOpenIdConnect'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfoicQuotaUser'
--
-- * 'gcfoicPrettyPrint'
--
-- * 'gcfoicUserIp'
--
-- * 'gcfoicKey'
--
-- * 'gcfoicOauthToken'
--
-- * 'gcfoicFields'
--
-- * 'gcfoicAlt'
getCertForOpenIdConnect'
    :: GetCertForOpenIdConnect'
getCertForOpenIdConnect' =
    GetCertForOpenIdConnect'
    { _gcfoicQuotaUser = Nothing
    , _gcfoicPrettyPrint = True
    , _gcfoicUserIp = Nothing
    , _gcfoicKey = Nothing
    , _gcfoicOauthToken = Nothing
    , _gcfoicFields = Nothing
    , _gcfoicAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gcfoicQuotaUser :: Lens' GetCertForOpenIdConnect' (Maybe Text)
gcfoicQuotaUser
  = lens _gcfoicQuotaUser
      (\ s a -> s{_gcfoicQuotaUser = a})

-- | Returns response with indentations and line breaks.
gcfoicPrettyPrint :: Lens' GetCertForOpenIdConnect' Bool
gcfoicPrettyPrint
  = lens _gcfoicPrettyPrint
      (\ s a -> s{_gcfoicPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gcfoicUserIp :: Lens' GetCertForOpenIdConnect' (Maybe Text)
gcfoicUserIp
  = lens _gcfoicUserIp (\ s a -> s{_gcfoicUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gcfoicKey :: Lens' GetCertForOpenIdConnect' (Maybe Text)
gcfoicKey
  = lens _gcfoicKey (\ s a -> s{_gcfoicKey = a})

-- | OAuth 2.0 token for the current user.
gcfoicOauthToken :: Lens' GetCertForOpenIdConnect' (Maybe Text)
gcfoicOauthToken
  = lens _gcfoicOauthToken
      (\ s a -> s{_gcfoicOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
gcfoicFields :: Lens' GetCertForOpenIdConnect' (Maybe Text)
gcfoicFields
  = lens _gcfoicFields (\ s a -> s{_gcfoicFields = a})

-- | Data format for the response.
gcfoicAlt :: Lens' GetCertForOpenIdConnect' Alt
gcfoicAlt
  = lens _gcfoicAlt (\ s a -> s{_gcfoicAlt = a})

instance GoogleRequest GetCertForOpenIdConnect' where
        type Rs GetCertForOpenIdConnect' = Jwk
        request = requestWithRoute defReq oAuth2URL
        requestWithRoute r u GetCertForOpenIdConnect'{..}
          = go _gcfoicQuotaUser (Just _gcfoicPrettyPrint)
              _gcfoicUserIp
              _gcfoicKey
              _gcfoicOauthToken
              _gcfoicFields
              (Just _gcfoicAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GetCertForOpenIdConnectMethod)
                      r
                      u
