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
-- Module      : Network.Google.Resource.OAuth2.UserInfo.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @OAuth2UserInfoGet@.
module Network.Google.Resource.OAuth2.UserInfo.Get
    (
    -- * REST Resource
      UserInfoGetResource

    -- * Creating a Request
    , userInfoGet'
    , UserInfoGet'

    -- * Request Lenses
    , uigQuotaUser
    , uigPrettyPrint
    , uigUserIP
    , uigKey
    , uigOAuthToken
    , uigFields
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @OAuth2UserInfoGet@ which the
-- 'UserInfoGet'' request conforms to.
type UserInfoGetResource =
     "oauth2" :>
       "v2" :>
         "userinfo" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] UserInfoplus

--
-- /See:/ 'userInfoGet'' smart constructor.
data UserInfoGet' = UserInfoGet'
    { _uigQuotaUser   :: !(Maybe Text)
    , _uigPrettyPrint :: !Bool
    , _uigUserIP      :: !(Maybe Text)
    , _uigKey         :: !(Maybe Key)
    , _uigOAuthToken  :: !(Maybe OAuthToken)
    , _uigFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserInfoGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uigQuotaUser'
--
-- * 'uigPrettyPrint'
--
-- * 'uigUserIP'
--
-- * 'uigKey'
--
-- * 'uigOAuthToken'
--
-- * 'uigFields'
userInfoGet'
    :: UserInfoGet'
userInfoGet' =
    UserInfoGet'
    { _uigQuotaUser = Nothing
    , _uigPrettyPrint = True
    , _uigUserIP = Nothing
    , _uigKey = Nothing
    , _uigOAuthToken = Nothing
    , _uigFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uigQuotaUser :: Lens' UserInfoGet' (Maybe Text)
uigQuotaUser
  = lens _uigQuotaUser (\ s a -> s{_uigQuotaUser = a})

-- | Returns response with indentations and line breaks.
uigPrettyPrint :: Lens' UserInfoGet' Bool
uigPrettyPrint
  = lens _uigPrettyPrint
      (\ s a -> s{_uigPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uigUserIP :: Lens' UserInfoGet' (Maybe Text)
uigUserIP
  = lens _uigUserIP (\ s a -> s{_uigUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uigKey :: Lens' UserInfoGet' (Maybe Key)
uigKey = lens _uigKey (\ s a -> s{_uigKey = a})

-- | OAuth 2.0 token for the current user.
uigOAuthToken :: Lens' UserInfoGet' (Maybe OAuthToken)
uigOAuthToken
  = lens _uigOAuthToken
      (\ s a -> s{_uigOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uigFields :: Lens' UserInfoGet' (Maybe Text)
uigFields
  = lens _uigFields (\ s a -> s{_uigFields = a})

instance GoogleAuth UserInfoGet' where
        authKey = uigKey . _Just
        authToken = uigOAuthToken . _Just

instance GoogleRequest UserInfoGet' where
        type Rs UserInfoGet' = UserInfoplus
        request = requestWithRoute defReq oAuth2URL
        requestWithRoute r u UserInfoGet'{..}
          = go _uigQuotaUser (Just _uigPrettyPrint) _uigUserIP
              _uigFields
              _uigKey
              _uigOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserInfoGetResource)
                      r
                      u
