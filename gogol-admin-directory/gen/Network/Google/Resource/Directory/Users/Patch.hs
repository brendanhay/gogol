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
-- Module      : Network.Google.Resource.Directory.Users.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | update user. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersPatch@.
module Network.Google.Resource.Directory.Users.Patch
    (
    -- * REST Resource
      UsersPatchResource

    -- * Creating a Request
    , usersPatch'
    , UsersPatch'

    -- * Request Lenses
    , upQuotaUser
    , upPrettyPrint
    , upUserIp
    , upKey
    , upOauthToken
    , upUserKey
    , upFields
    , upAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPatch@ which the
-- 'UsersPatch'' request conforms to.
type UsersPatchResource =
     "users" :>
       Capture "userKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] User

-- | update user. This method supports patch semantics.
--
-- /See:/ 'usersPatch'' smart constructor.
data UsersPatch' = UsersPatch'
    { _upQuotaUser   :: !(Maybe Text)
    , _upPrettyPrint :: !Bool
    , _upUserIp      :: !(Maybe Text)
    , _upKey         :: !(Maybe Text)
    , _upOauthToken  :: !(Maybe Text)
    , _upUserKey     :: !Text
    , _upFields      :: !(Maybe Text)
    , _upAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upQuotaUser'
--
-- * 'upPrettyPrint'
--
-- * 'upUserIp'
--
-- * 'upKey'
--
-- * 'upOauthToken'
--
-- * 'upUserKey'
--
-- * 'upFields'
--
-- * 'upAlt'
usersPatch'
    :: Text -- ^ 'userKey'
    -> UsersPatch'
usersPatch' pUpUserKey_ =
    UsersPatch'
    { _upQuotaUser = Nothing
    , _upPrettyPrint = True
    , _upUserIp = Nothing
    , _upKey = Nothing
    , _upOauthToken = Nothing
    , _upUserKey = pUpUserKey_
    , _upFields = Nothing
    , _upAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
upQuotaUser :: Lens' UsersPatch' (Maybe Text)
upQuotaUser
  = lens _upQuotaUser (\ s a -> s{_upQuotaUser = a})

-- | Returns response with indentations and line breaks.
upPrettyPrint :: Lens' UsersPatch' Bool
upPrettyPrint
  = lens _upPrettyPrint
      (\ s a -> s{_upPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
upUserIp :: Lens' UsersPatch' (Maybe Text)
upUserIp = lens _upUserIp (\ s a -> s{_upUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upKey :: Lens' UsersPatch' (Maybe Text)
upKey = lens _upKey (\ s a -> s{_upKey = a})

-- | OAuth 2.0 token for the current user.
upOauthToken :: Lens' UsersPatch' (Maybe Text)
upOauthToken
  = lens _upOauthToken (\ s a -> s{_upOauthToken = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- user object
upUserKey :: Lens' UsersPatch' Text
upUserKey
  = lens _upUserKey (\ s a -> s{_upUserKey = a})

-- | Selector specifying which fields to include in a partial response.
upFields :: Lens' UsersPatch' (Maybe Text)
upFields = lens _upFields (\ s a -> s{_upFields = a})

-- | Data format for the response.
upAlt :: Lens' UsersPatch' Alt
upAlt = lens _upAlt (\ s a -> s{_upAlt = a})

instance GoogleRequest UsersPatch' where
        type Rs UsersPatch' = User
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u UsersPatch'{..}
          = go _upQuotaUser (Just _upPrettyPrint) _upUserIp
              _upKey
              _upOauthToken
              _upUserKey
              _upFields
              (Just _upAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersPatchResource)
                      r
                      u
