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
    , upUserIP
    , upPayload
    , upKey
    , upOAuthToken
    , upUserKey
    , upFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersPatch@ which the
-- 'UsersPatch'' request conforms to.
type UsersPatchResource =
     "users" :>
       Capture "userKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] User :> Patch '[JSON] User

-- | update user. This method supports patch semantics.
--
-- /See:/ 'usersPatch'' smart constructor.
data UsersPatch' = UsersPatch'
    { _upQuotaUser   :: !(Maybe Text)
    , _upPrettyPrint :: !Bool
    , _upUserIP      :: !(Maybe Text)
    , _upPayload     :: !User
    , _upKey         :: !(Maybe AuthKey)
    , _upOAuthToken  :: !(Maybe OAuthToken)
    , _upUserKey     :: !Text
    , _upFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upQuotaUser'
--
-- * 'upPrettyPrint'
--
-- * 'upUserIP'
--
-- * 'upPayload'
--
-- * 'upKey'
--
-- * 'upOAuthToken'
--
-- * 'upUserKey'
--
-- * 'upFields'
usersPatch'
    :: User -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersPatch'
usersPatch' pUpPayload_ pUpUserKey_ =
    UsersPatch'
    { _upQuotaUser = Nothing
    , _upPrettyPrint = True
    , _upUserIP = Nothing
    , _upPayload = pUpPayload_
    , _upKey = Nothing
    , _upOAuthToken = Nothing
    , _upUserKey = pUpUserKey_
    , _upFields = Nothing
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
upUserIP :: Lens' UsersPatch' (Maybe Text)
upUserIP = lens _upUserIP (\ s a -> s{_upUserIP = a})

-- | Multipart request metadata.
upPayload :: Lens' UsersPatch' User
upPayload
  = lens _upPayload (\ s a -> s{_upPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upKey :: Lens' UsersPatch' (Maybe AuthKey)
upKey = lens _upKey (\ s a -> s{_upKey = a})

-- | OAuth 2.0 token for the current user.
upOAuthToken :: Lens' UsersPatch' (Maybe OAuthToken)
upOAuthToken
  = lens _upOAuthToken (\ s a -> s{_upOAuthToken = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- user object
upUserKey :: Lens' UsersPatch' Text
upUserKey
  = lens _upUserKey (\ s a -> s{_upUserKey = a})

-- | Selector specifying which fields to include in a partial response.
upFields :: Lens' UsersPatch' (Maybe Text)
upFields = lens _upFields (\ s a -> s{_upFields = a})

instance GoogleAuth UsersPatch' where
        _AuthKey = upKey . _Just
        _AuthToken = upOAuthToken . _Just

instance GoogleRequest UsersPatch' where
        type Rs UsersPatch' = User
        request = requestWith directoryRequest
        requestWith rq UsersPatch'{..}
          = go _upUserKey _upQuotaUser (Just _upPrettyPrint)
              _upUserIP
              _upFields
              _upKey
              _upOAuthToken
              (Just AltJSON)
              _upPayload
          where go
                  = clientBuild (Proxy :: Proxy UsersPatchResource) rq
