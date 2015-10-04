{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.GetProFile
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the current user\'s Gmail profile.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersGetProFile@.
module Network.Google.Resource.Gmail.Users.GetProFile
    (
    -- * REST Resource
      UsersGetProFileResource

    -- * Creating a Request
    , usersGetProFile'
    , UsersGetProFile'

    -- * Request Lenses
    , ugpfQuotaUser
    , ugpfPrettyPrint
    , ugpfUserIP
    , ugpfUserId
    , ugpfKey
    , ugpfOAuthToken
    , ugpfFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersGetProFile@ which the
-- 'UsersGetProFile'' request conforms to.
type UsersGetProFileResource =
     Capture "userId" Text :>
       "profile" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ProFile

-- | Gets the current user\'s Gmail profile.
--
-- /See:/ 'usersGetProFile'' smart constructor.
data UsersGetProFile' = UsersGetProFile'
    { _ugpfQuotaUser   :: !(Maybe Text)
    , _ugpfPrettyPrint :: !Bool
    , _ugpfUserIP      :: !(Maybe Text)
    , _ugpfUserId      :: !Text
    , _ugpfKey         :: !(Maybe Key)
    , _ugpfOAuthToken  :: !(Maybe OAuthToken)
    , _ugpfFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGetProFile'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugpfQuotaUser'
--
-- * 'ugpfPrettyPrint'
--
-- * 'ugpfUserIP'
--
-- * 'ugpfUserId'
--
-- * 'ugpfKey'
--
-- * 'ugpfOAuthToken'
--
-- * 'ugpfFields'
usersGetProFile'
    :: Text
    -> UsersGetProFile'
usersGetProFile' pUgpfUserId_ =
    UsersGetProFile'
    { _ugpfQuotaUser = Nothing
    , _ugpfPrettyPrint = True
    , _ugpfUserIP = Nothing
    , _ugpfUserId = pUgpfUserId_
    , _ugpfKey = Nothing
    , _ugpfOAuthToken = Nothing
    , _ugpfFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugpfQuotaUser :: Lens' UsersGetProFile' (Maybe Text)
ugpfQuotaUser
  = lens _ugpfQuotaUser
      (\ s a -> s{_ugpfQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugpfPrettyPrint :: Lens' UsersGetProFile' Bool
ugpfPrettyPrint
  = lens _ugpfPrettyPrint
      (\ s a -> s{_ugpfPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugpfUserIP :: Lens' UsersGetProFile' (Maybe Text)
ugpfUserIP
  = lens _ugpfUserIP (\ s a -> s{_ugpfUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ugpfUserId :: Lens' UsersGetProFile' Text
ugpfUserId
  = lens _ugpfUserId (\ s a -> s{_ugpfUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugpfKey :: Lens' UsersGetProFile' (Maybe Key)
ugpfKey = lens _ugpfKey (\ s a -> s{_ugpfKey = a})

-- | OAuth 2.0 token for the current user.
ugpfOAuthToken :: Lens' UsersGetProFile' (Maybe OAuthToken)
ugpfOAuthToken
  = lens _ugpfOAuthToken
      (\ s a -> s{_ugpfOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugpfFields :: Lens' UsersGetProFile' (Maybe Text)
ugpfFields
  = lens _ugpfFields (\ s a -> s{_ugpfFields = a})

instance GoogleAuth UsersGetProFile' where
        authKey = ugpfKey . _Just
        authToken = ugpfOAuthToken . _Just

instance GoogleRequest UsersGetProFile' where
        type Rs UsersGetProFile' = ProFile
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersGetProFile'{..}
          = go _ugpfUserId _ugpfQuotaUser
              (Just _ugpfPrettyPrint)
              _ugpfUserIP
              _ugpfFields
              _ugpfKey
              _ugpfOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersGetProFileResource)
                      r
                      u
