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
-- Module      : Network.Google.Method.OAuth2.GetCertForOpenIdConnect
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @OAuth2GetCertForOpenIdConnect@.
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
    , gcfoicUserIP
    , gcfoicKey
    , gcfoicOAuthToken
    , gcfoicFields
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @OAuth2GetCertForOpenIdConnect@ method which the
-- 'GetCertForOpenIdConnect'' request conforms to.
type GetCertForOpenIdConnectMethod =
     "oauth2" :>
       "v2" :>
         "certs" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] JWK

--
-- /See:/ 'getCertForOpenIdConnect'' smart constructor.
data GetCertForOpenIdConnect' = GetCertForOpenIdConnect'
    { _gcfoicQuotaUser   :: !(Maybe Text)
    , _gcfoicPrettyPrint :: !Bool
    , _gcfoicUserIP      :: !(Maybe Text)
    , _gcfoicKey         :: !(Maybe AuthKey)
    , _gcfoicOAuthToken  :: !(Maybe OAuthToken)
    , _gcfoicFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetCertForOpenIdConnect'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcfoicQuotaUser'
--
-- * 'gcfoicPrettyPrint'
--
-- * 'gcfoicUserIP'
--
-- * 'gcfoicKey'
--
-- * 'gcfoicOAuthToken'
--
-- * 'gcfoicFields'
getCertForOpenIdConnect'
    :: GetCertForOpenIdConnect'
getCertForOpenIdConnect' =
    GetCertForOpenIdConnect'
    { _gcfoicQuotaUser = Nothing
    , _gcfoicPrettyPrint = True
    , _gcfoicUserIP = Nothing
    , _gcfoicKey = Nothing
    , _gcfoicOAuthToken = Nothing
    , _gcfoicFields = Nothing
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
gcfoicUserIP :: Lens' GetCertForOpenIdConnect' (Maybe Text)
gcfoicUserIP
  = lens _gcfoicUserIP (\ s a -> s{_gcfoicUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gcfoicKey :: Lens' GetCertForOpenIdConnect' (Maybe AuthKey)
gcfoicKey
  = lens _gcfoicKey (\ s a -> s{_gcfoicKey = a})

-- | OAuth 2.0 token for the current user.
gcfoicOAuthToken :: Lens' GetCertForOpenIdConnect' (Maybe OAuthToken)
gcfoicOAuthToken
  = lens _gcfoicOAuthToken
      (\ s a -> s{_gcfoicOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
gcfoicFields :: Lens' GetCertForOpenIdConnect' (Maybe Text)
gcfoicFields
  = lens _gcfoicFields (\ s a -> s{_gcfoicFields = a})

instance GoogleAuth GetCertForOpenIdConnect' where
        _AuthKey = gcfoicKey . _Just
        _AuthToken = gcfoicOAuthToken . _Just

instance GoogleRequest GetCertForOpenIdConnect' where
        type Rs GetCertForOpenIdConnect' = JWK
        request = requestWith oAuth2Request
        requestWith rq GetCertForOpenIdConnect'{..}
          = go _gcfoicQuotaUser (Just _gcfoicPrettyPrint)
              _gcfoicUserIP
              _gcfoicFields
              _gcfoicKey
              _gcfoicOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GetCertForOpenIdConnectMethod)
                      rq
