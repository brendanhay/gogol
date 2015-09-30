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
-- Module      : Network.Google.Resource.OAuth2.Userinfo.V2.Me.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @Oauth2UserinfoV2MeGet@.
module Network.Google.Resource.OAuth2.Userinfo.V2.Me.Get
    (
    -- * REST Resource
      UserinfoV2MeGetResource

    -- * Creating a Request
    , userinfoV2MeGet'
    , UserinfoV2MeGet'

    -- * Request Lenses
    , uvmgQuotaUser
    , uvmgPrettyPrint
    , uvmgUserIp
    , uvmgKey
    , uvmgOauthToken
    , uvmgFields
    , uvmgAlt
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @Oauth2UserinfoV2MeGet@ which the
-- 'UserinfoV2MeGet'' request conforms to.
type UserinfoV2MeGetResource =
     "userinfo" :>
       "v2" :>
         "me" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Userinfoplus

--
-- /See:/ 'userinfoV2MeGet'' smart constructor.
data UserinfoV2MeGet' = UserinfoV2MeGet'
    { _uvmgQuotaUser   :: !(Maybe Text)
    , _uvmgPrettyPrint :: !Bool
    , _uvmgUserIp      :: !(Maybe Text)
    , _uvmgKey         :: !(Maybe Text)
    , _uvmgOauthToken  :: !(Maybe Text)
    , _uvmgFields      :: !(Maybe Text)
    , _uvmgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserinfoV2MeGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvmgQuotaUser'
--
-- * 'uvmgPrettyPrint'
--
-- * 'uvmgUserIp'
--
-- * 'uvmgKey'
--
-- * 'uvmgOauthToken'
--
-- * 'uvmgFields'
--
-- * 'uvmgAlt'
userinfoV2MeGet'
    :: UserinfoV2MeGet'
userinfoV2MeGet' =
    UserinfoV2MeGet'
    { _uvmgQuotaUser = Nothing
    , _uvmgPrettyPrint = True
    , _uvmgUserIp = Nothing
    , _uvmgKey = Nothing
    , _uvmgOauthToken = Nothing
    , _uvmgFields = Nothing
    , _uvmgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uvmgQuotaUser :: Lens' UserinfoV2MeGet' (Maybe Text)
uvmgQuotaUser
  = lens _uvmgQuotaUser
      (\ s a -> s{_uvmgQuotaUser = a})

-- | Returns response with indentations and line breaks.
uvmgPrettyPrint :: Lens' UserinfoV2MeGet' Bool
uvmgPrettyPrint
  = lens _uvmgPrettyPrint
      (\ s a -> s{_uvmgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uvmgUserIp :: Lens' UserinfoV2MeGet' (Maybe Text)
uvmgUserIp
  = lens _uvmgUserIp (\ s a -> s{_uvmgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uvmgKey :: Lens' UserinfoV2MeGet' (Maybe Text)
uvmgKey = lens _uvmgKey (\ s a -> s{_uvmgKey = a})

-- | OAuth 2.0 token for the current user.
uvmgOauthToken :: Lens' UserinfoV2MeGet' (Maybe Text)
uvmgOauthToken
  = lens _uvmgOauthToken
      (\ s a -> s{_uvmgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uvmgFields :: Lens' UserinfoV2MeGet' (Maybe Text)
uvmgFields
  = lens _uvmgFields (\ s a -> s{_uvmgFields = a})

-- | Data format for the response.
uvmgAlt :: Lens' UserinfoV2MeGet' Alt
uvmgAlt = lens _uvmgAlt (\ s a -> s{_uvmgAlt = a})

instance GoogleRequest UserinfoV2MeGet' where
        type Rs UserinfoV2MeGet' = Userinfoplus
        request = requestWithRoute defReq oAuth2URL
        requestWithRoute r u UserinfoV2MeGet'{..}
          = go _uvmgQuotaUser (Just _uvmgPrettyPrint)
              _uvmgUserIp
              _uvmgKey
              _uvmgOauthToken
              _uvmgFields
              (Just _uvmgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserinfoV2MeGetResource)
                      r
                      u
