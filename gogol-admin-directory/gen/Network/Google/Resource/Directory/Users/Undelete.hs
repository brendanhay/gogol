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
-- Module      : Network.Google.Resource.Directory.Users.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Undelete a deleted user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersUndelete@.
module Network.Google.Resource.Directory.Users.Undelete
    (
    -- * REST Resource
      UsersUndeleteResource

    -- * Creating a Request
    , usersUndelete'
    , UsersUndelete'

    -- * Request Lenses
    , uQuotaUser
    , uPrettyPrint
    , uUserIP
    , uPayload
    , uKey
    , uOAuthToken
    , uUserKey
    , uFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersUndelete@ which the
-- 'UsersUndelete'' request conforms to.
type UsersUndeleteResource =
     "users" :>
       Capture "userKey" Text :>
         "undelete" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UserUndelete :> Post '[JSON] ()

-- | Undelete a deleted user
--
-- /See:/ 'usersUndelete'' smart constructor.
data UsersUndelete' = UsersUndelete'
    { _uQuotaUser   :: !(Maybe Text)
    , _uPrettyPrint :: !Bool
    , _uUserIP      :: !(Maybe Text)
    , _uPayload     :: !UserUndelete
    , _uKey         :: !(Maybe AuthKey)
    , _uOAuthToken  :: !(Maybe OAuthToken)
    , _uUserKey     :: !Text
    , _uFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uQuotaUser'
--
-- * 'uPrettyPrint'
--
-- * 'uUserIP'
--
-- * 'uPayload'
--
-- * 'uKey'
--
-- * 'uOAuthToken'
--
-- * 'uUserKey'
--
-- * 'uFields'
usersUndelete'
    :: UserUndelete -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersUndelete'
usersUndelete' pUPayload_ pUUserKey_ =
    UsersUndelete'
    { _uQuotaUser = Nothing
    , _uPrettyPrint = True
    , _uUserIP = Nothing
    , _uPayload = pUPayload_
    , _uKey = Nothing
    , _uOAuthToken = Nothing
    , _uUserKey = pUUserKey_
    , _uFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uQuotaUser :: Lens' UsersUndelete' (Maybe Text)
uQuotaUser
  = lens _uQuotaUser (\ s a -> s{_uQuotaUser = a})

-- | Returns response with indentations and line breaks.
uPrettyPrint :: Lens' UsersUndelete' Bool
uPrettyPrint
  = lens _uPrettyPrint (\ s a -> s{_uPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uUserIP :: Lens' UsersUndelete' (Maybe Text)
uUserIP = lens _uUserIP (\ s a -> s{_uUserIP = a})

-- | Multipart request metadata.
uPayload :: Lens' UsersUndelete' UserUndelete
uPayload = lens _uPayload (\ s a -> s{_uPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uKey :: Lens' UsersUndelete' (Maybe AuthKey)
uKey = lens _uKey (\ s a -> s{_uKey = a})

-- | OAuth 2.0 token for the current user.
uOAuthToken :: Lens' UsersUndelete' (Maybe OAuthToken)
uOAuthToken
  = lens _uOAuthToken (\ s a -> s{_uOAuthToken = a})

-- | The immutable id of the user
uUserKey :: Lens' UsersUndelete' Text
uUserKey = lens _uUserKey (\ s a -> s{_uUserKey = a})

-- | Selector specifying which fields to include in a partial response.
uFields :: Lens' UsersUndelete' (Maybe Text)
uFields = lens _uFields (\ s a -> s{_uFields = a})

instance GoogleAuth UsersUndelete' where
        authKey = uKey . _Just
        authToken = uOAuthToken . _Just

instance GoogleRequest UsersUndelete' where
        type Rs UsersUndelete' = ()
        request = requestWith directoryRequest
        requestWith rq UsersUndelete'{..}
          = go _uUserKey _uQuotaUser (Just _uPrettyPrint)
              _uUserIP
              _uFields
              _uKey
              _uOAuthToken
              (Just AltJSON)
              _uPayload
          where go
                  = clientBuild (Proxy :: Proxy UsersUndeleteResource)
                      rq
