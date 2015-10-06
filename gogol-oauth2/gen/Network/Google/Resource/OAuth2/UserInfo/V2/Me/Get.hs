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
-- Module      : Network.Google.Resource.OAuth2.UserInfo.V2.Me.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @OAuth2UserInfoV2MeGet@.
module Network.Google.Resource.OAuth2.UserInfo.V2.Me.Get
    (
    -- * REST Resource
      UserInfoV2MeGetResource

    -- * Creating a Request
    , userInfoV2MeGet'
    , UserInfoV2MeGet'

    -- * Request Lenses
    , uivmgQuotaUser
    , uivmgPrettyPrint
    , uivmgUserIP
    , uivmgKey
    , uivmgOAuthToken
    , uivmgFields
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @OAuth2UserInfoV2MeGet@ which the
-- 'UserInfoV2MeGet'' request conforms to.
type UserInfoV2MeGetResource =
     "userinfo" :>
       "v2" :>
         "me" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] UserInfoplus

--
-- /See:/ 'userInfoV2MeGet'' smart constructor.
data UserInfoV2MeGet' = UserInfoV2MeGet'
    { _uivmgQuotaUser   :: !(Maybe Text)
    , _uivmgPrettyPrint :: !Bool
    , _uivmgUserIP      :: !(Maybe Text)
    , _uivmgKey         :: !(Maybe AuthKey)
    , _uivmgOAuthToken  :: !(Maybe OAuthToken)
    , _uivmgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfoV2MeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uivmgQuotaUser'
--
-- * 'uivmgPrettyPrint'
--
-- * 'uivmgUserIP'
--
-- * 'uivmgKey'
--
-- * 'uivmgOAuthToken'
--
-- * 'uivmgFields'
userInfoV2MeGet'
    :: UserInfoV2MeGet'
userInfoV2MeGet' =
    UserInfoV2MeGet'
    { _uivmgQuotaUser = Nothing
    , _uivmgPrettyPrint = True
    , _uivmgUserIP = Nothing
    , _uivmgKey = Nothing
    , _uivmgOAuthToken = Nothing
    , _uivmgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uivmgQuotaUser :: Lens' UserInfoV2MeGet' (Maybe Text)
uivmgQuotaUser
  = lens _uivmgQuotaUser
      (\ s a -> s{_uivmgQuotaUser = a})

-- | Returns response with indentations and line breaks.
uivmgPrettyPrint :: Lens' UserInfoV2MeGet' Bool
uivmgPrettyPrint
  = lens _uivmgPrettyPrint
      (\ s a -> s{_uivmgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uivmgUserIP :: Lens' UserInfoV2MeGet' (Maybe Text)
uivmgUserIP
  = lens _uivmgUserIP (\ s a -> s{_uivmgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uivmgKey :: Lens' UserInfoV2MeGet' (Maybe AuthKey)
uivmgKey = lens _uivmgKey (\ s a -> s{_uivmgKey = a})

-- | OAuth 2.0 token for the current user.
uivmgOAuthToken :: Lens' UserInfoV2MeGet' (Maybe OAuthToken)
uivmgOAuthToken
  = lens _uivmgOAuthToken
      (\ s a -> s{_uivmgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uivmgFields :: Lens' UserInfoV2MeGet' (Maybe Text)
uivmgFields
  = lens _uivmgFields (\ s a -> s{_uivmgFields = a})

instance GoogleAuth UserInfoV2MeGet' where
        _AuthKey = uivmgKey . _Just
        _AuthToken = uivmgOAuthToken . _Just

instance GoogleRequest UserInfoV2MeGet' where
        type Rs UserInfoV2MeGet' = UserInfoplus
        request = requestWith oAuth2Request
        requestWith rq UserInfoV2MeGet'{..}
          = go _uivmgQuotaUser (Just _uivmgPrettyPrint)
              _uivmgUserIP
              _uivmgFields
              _uivmgKey
              _uivmgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UserInfoV2MeGetResource)
                      rq
