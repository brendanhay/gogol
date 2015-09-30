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
-- Module      : Network.Google.Method.OAuth2.Tokeninfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @Oauth2Tokeninfo@.
module Network.Google.Method.OAuth2.Tokeninfo
    (
    -- * REST Resource
      TokeninfoMethod

    -- * Creating a Request
    , tokeninfo'
    , Tokeninfo'

    -- * Request Lenses
    , tokQuotaUser
    , tokPrettyPrint
    , tokUserIp
    , tokAccessToken
    , tokKey
    , tokOauthToken
    , tokTokenHandle
    , tokFields
    , tokAlt
    , tokIdToken
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @Oauth2Tokeninfo@ which the
-- 'Tokeninfo'' request conforms to.
type TokeninfoMethod =
     "oauth2" :>
       "v2" :>
         "tokeninfo" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "token_handle" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             QueryParam "id_token" Text :>
                               Post '[JSON] Tokeninfo

--
-- /See:/ 'tokeninfo'' smart constructor.
data Tokeninfo' = Tokeninfo'
    { _tokQuotaUser   :: !(Maybe Text)
    , _tokPrettyPrint :: !Bool
    , _tokUserIp      :: !(Maybe Text)
    , _tokAccessToken :: !(Maybe Text)
    , _tokKey         :: !(Maybe Text)
    , _tokOauthToken  :: !(Maybe Text)
    , _tokTokenHandle :: !(Maybe Text)
    , _tokFields      :: !(Maybe Text)
    , _tokAlt         :: !Alt
    , _tokIdToken     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Tokeninfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tokQuotaUser'
--
-- * 'tokPrettyPrint'
--
-- * 'tokUserIp'
--
-- * 'tokAccessToken'
--
-- * 'tokKey'
--
-- * 'tokOauthToken'
--
-- * 'tokTokenHandle'
--
-- * 'tokFields'
--
-- * 'tokAlt'
--
-- * 'tokIdToken'
tokeninfo'
    :: Tokeninfo'
tokeninfo' =
    Tokeninfo'
    { _tokQuotaUser = Nothing
    , _tokPrettyPrint = True
    , _tokUserIp = Nothing
    , _tokAccessToken = Nothing
    , _tokKey = Nothing
    , _tokOauthToken = Nothing
    , _tokTokenHandle = Nothing
    , _tokFields = Nothing
    , _tokAlt = JSON
    , _tokIdToken = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tokQuotaUser :: Lens' Tokeninfo' (Maybe Text)
tokQuotaUser
  = lens _tokQuotaUser (\ s a -> s{_tokQuotaUser = a})

-- | Returns response with indentations and line breaks.
tokPrettyPrint :: Lens' Tokeninfo' Bool
tokPrettyPrint
  = lens _tokPrettyPrint
      (\ s a -> s{_tokPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tokUserIp :: Lens' Tokeninfo' (Maybe Text)
tokUserIp
  = lens _tokUserIp (\ s a -> s{_tokUserIp = a})

tokAccessToken :: Lens' Tokeninfo' (Maybe Text)
tokAccessToken
  = lens _tokAccessToken
      (\ s a -> s{_tokAccessToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tokKey :: Lens' Tokeninfo' (Maybe Text)
tokKey = lens _tokKey (\ s a -> s{_tokKey = a})

-- | OAuth 2.0 token for the current user.
tokOauthToken :: Lens' Tokeninfo' (Maybe Text)
tokOauthToken
  = lens _tokOauthToken
      (\ s a -> s{_tokOauthToken = a})

tokTokenHandle :: Lens' Tokeninfo' (Maybe Text)
tokTokenHandle
  = lens _tokTokenHandle
      (\ s a -> s{_tokTokenHandle = a})

-- | Selector specifying which fields to include in a partial response.
tokFields :: Lens' Tokeninfo' (Maybe Text)
tokFields
  = lens _tokFields (\ s a -> s{_tokFields = a})

-- | Data format for the response.
tokAlt :: Lens' Tokeninfo' Alt
tokAlt = lens _tokAlt (\ s a -> s{_tokAlt = a})

tokIdToken :: Lens' Tokeninfo' (Maybe Text)
tokIdToken
  = lens _tokIdToken (\ s a -> s{_tokIdToken = a})

instance GoogleRequest Tokeninfo' where
        type Rs Tokeninfo' = Tokeninfo
        request = requestWithRoute defReq oAuth2URL
        requestWithRoute r u Tokeninfo'{..}
          = go _tokQuotaUser (Just _tokPrettyPrint) _tokUserIp
              _tokAccessToken
              _tokKey
              _tokOauthToken
              _tokTokenHandle
              _tokFields
              (Just _tokAlt)
              _tokIdToken
          where go
                  = clientWithRoute (Proxy :: Proxy TokeninfoMethod) r
                      u
