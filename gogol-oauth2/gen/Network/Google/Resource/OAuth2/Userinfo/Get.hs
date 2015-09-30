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
-- Module      : Network.Google.Resource.OAuth2.Userinfo.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/accounts/docs/OAuth2 Google OAuth2 API Reference> for @Oauth2UserinfoGet@.
module Network.Google.Resource.OAuth2.Userinfo.Get
    (
    -- * REST Resource
      UserinfoGetResource

    -- * Creating a Request
    , userinfoGet'
    , UserinfoGet'

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugUserIp
    , ugKey
    , ugOauthToken
    , ugFields
    , ugAlt
    ) where

import           Network.Google.OAuth2.Types
import           Network.Google.Prelude

-- | A resource alias for @Oauth2UserinfoGet@ which the
-- 'UserinfoGet'' request conforms to.
type UserinfoGetResource =
     "oauth2" :>
       "v2" :>
         "userinfo" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Userinfoplus

--
-- /See:/ 'userinfoGet'' smart constructor.
data UserinfoGet' = UserinfoGet'
    { _ugQuotaUser   :: !(Maybe Text)
    , _ugPrettyPrint :: !Bool
    , _ugUserIp      :: !(Maybe Text)
    , _ugKey         :: !(Maybe Text)
    , _ugOauthToken  :: !(Maybe Text)
    , _ugFields      :: !(Maybe Text)
    , _ugAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserinfoGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugUserIp'
--
-- * 'ugKey'
--
-- * 'ugOauthToken'
--
-- * 'ugFields'
--
-- * 'ugAlt'
userinfoGet'
    :: UserinfoGet'
userinfoGet' =
    UserinfoGet'
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugUserIp = Nothing
    , _ugKey = Nothing
    , _ugOauthToken = Nothing
    , _ugFields = Nothing
    , _ugAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugQuotaUser :: Lens' UserinfoGet' (Maybe Text)
ugQuotaUser
  = lens _ugQuotaUser (\ s a -> s{_ugQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugPrettyPrint :: Lens' UserinfoGet' Bool
ugPrettyPrint
  = lens _ugPrettyPrint
      (\ s a -> s{_ugPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugUserIp :: Lens' UserinfoGet' (Maybe Text)
ugUserIp = lens _ugUserIp (\ s a -> s{_ugUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' UserinfoGet' (Maybe Text)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | OAuth 2.0 token for the current user.
ugOauthToken :: Lens' UserinfoGet' (Maybe Text)
ugOauthToken
  = lens _ugOauthToken (\ s a -> s{_ugOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' UserinfoGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

-- | Data format for the response.
ugAlt :: Lens' UserinfoGet' Alt
ugAlt = lens _ugAlt (\ s a -> s{_ugAlt = a})

instance GoogleRequest UserinfoGet' where
        type Rs UserinfoGet' = Userinfoplus
        request = requestWithRoute defReq oAuth2URL
        requestWithRoute r u UserinfoGet'{..}
          = go _ugQuotaUser (Just _ugPrettyPrint) _ugUserIp
              _ugKey
              _ugOauthToken
              _ugFields
              (Just _ugAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserinfoGetResource)
                      r
                      u
