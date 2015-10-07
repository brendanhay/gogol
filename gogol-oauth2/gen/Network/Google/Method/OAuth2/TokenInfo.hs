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
-- Module      : Network.Google.Method.OAuth2.TokenInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @OAuth2TokenInfo@.
module Network.Google.Method.OAuth2.TokenInfo
    (
    -- * REST Resource
      TokenInfoMethod

    -- * Creating a Request
    , tokenInfo'
    , TokenInfo'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIP
    , tAccessToken
    , tKey
    , tOAuthToken
    , tTokenHandle
    , tFields
    , tIdToken
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @OAuth2TokenInfo@ method which the
-- 'TokenInfo'' request conforms to.
type TokenInfoMethod =
     "oauth2" :>
       "v2" :>
         "tokeninfo" :>
           QueryParam "access_token" Text :>
             QueryParam "token_handle" Text :>
               QueryParam "id_token" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Post '[JSON] TokenInfo

--
-- /See:/ 'tokenInfo'' smart constructor.
data TokenInfo' = TokenInfo'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIP      :: !(Maybe Text)
    , _tAccessToken :: !(Maybe Text)
    , _tKey         :: !(Maybe AuthKey)
    , _tOAuthToken  :: !(Maybe OAuthToken)
    , _tTokenHandle :: !(Maybe Text)
    , _tFields      :: !(Maybe Text)
    , _tIdToken     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokenInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIP'
--
-- * 'tAccessToken'
--
-- * 'tKey'
--
-- * 'tOAuthToken'
--
-- * 'tTokenHandle'
--
-- * 'tFields'
--
-- * 'tIdToken'
tokenInfo'
    :: TokenInfo'
tokenInfo' =
    TokenInfo'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIP = Nothing
    , _tAccessToken = Nothing
    , _tKey = Nothing
    , _tOAuthToken = Nothing
    , _tTokenHandle = Nothing
    , _tFields = Nothing
    , _tIdToken = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TokenInfo' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TokenInfo' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIP :: Lens' TokenInfo' (Maybe Text)
tUserIP = lens _tUserIP (\ s a -> s{_tUserIP = a})

tAccessToken :: Lens' TokenInfo' (Maybe Text)
tAccessToken
  = lens _tAccessToken (\ s a -> s{_tAccessToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TokenInfo' (Maybe AuthKey)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | OAuth 2.0 token for the current user.
tOAuthToken :: Lens' TokenInfo' (Maybe OAuthToken)
tOAuthToken
  = lens _tOAuthToken (\ s a -> s{_tOAuthToken = a})

tTokenHandle :: Lens' TokenInfo' (Maybe Text)
tTokenHandle
  = lens _tTokenHandle (\ s a -> s{_tTokenHandle = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TokenInfo' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

tIdToken :: Lens' TokenInfo' (Maybe Text)
tIdToken = lens _tIdToken (\ s a -> s{_tIdToken = a})

instance GoogleAuth TokenInfo' where
        _AuthKey = tKey . _Just
        _AuthToken = tOAuthToken . _Just

instance GoogleRequest TokenInfo' where
        type Rs TokenInfo' = TokenInfo
        request = requestWith oAuth2Request
        requestWith rq TokenInfo'{..}
          = go _tAccessToken _tTokenHandle _tIdToken
              _tQuotaUser
              (Just _tPrettyPrint)
              _tUserIP
              _tFields
              _tKey
              _tOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TokenInfoMethod) rq
