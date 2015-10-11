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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Untrash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the specified thread from the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersThreadsUntrash@.
module Network.Google.Resource.Gmail.Users.Threads.Untrash
    (
    -- * REST Resource
      UsersThreadsUntrashResource

    -- * Creating a Request
    , usersThreadsUntrash'
    , UsersThreadsUntrash'

    -- * Request Lenses
    , utuQuotaUser
    , utuPrettyPrint
    , utuUserIP
    , utuUserId
    , utuKey
    , utuId
    , utuOAuthToken
    , utuFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsUntrash@ method which the
-- 'UsersThreadsUntrash'' request conforms to.
type UsersThreadsUntrashResource =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           "untrash" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Thread

-- | Removes the specified thread from the trash.
--
-- /See:/ 'usersThreadsUntrash'' smart constructor.
data UsersThreadsUntrash' = UsersThreadsUntrash'
    { _utuQuotaUser   :: !(Maybe Text)
    , _utuPrettyPrint :: !Bool
    , _utuUserIP      :: !(Maybe Text)
    , _utuUserId      :: !Text
    , _utuKey         :: !(Maybe AuthKey)
    , _utuId          :: !Text
    , _utuOAuthToken  :: !(Maybe OAuthToken)
    , _utuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsUntrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utuQuotaUser'
--
-- * 'utuPrettyPrint'
--
-- * 'utuUserIP'
--
-- * 'utuUserId'
--
-- * 'utuKey'
--
-- * 'utuId'
--
-- * 'utuOAuthToken'
--
-- * 'utuFields'
usersThreadsUntrash'
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsUntrash'
usersThreadsUntrash' pUtuUserId_ pUtuId_ =
    UsersThreadsUntrash'
    { _utuQuotaUser = Nothing
    , _utuPrettyPrint = True
    , _utuUserIP = Nothing
    , _utuUserId = pUtuUserId_
    , _utuKey = Nothing
    , _utuId = pUtuId_
    , _utuOAuthToken = Nothing
    , _utuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
utuQuotaUser :: Lens' UsersThreadsUntrash' (Maybe Text)
utuQuotaUser
  = lens _utuQuotaUser (\ s a -> s{_utuQuotaUser = a})

-- | Returns response with indentations and line breaks.
utuPrettyPrint :: Lens' UsersThreadsUntrash' Bool
utuPrettyPrint
  = lens _utuPrettyPrint
      (\ s a -> s{_utuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
utuUserIP :: Lens' UsersThreadsUntrash' (Maybe Text)
utuUserIP
  = lens _utuUserIP (\ s a -> s{_utuUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utuUserId :: Lens' UsersThreadsUntrash' Text
utuUserId
  = lens _utuUserId (\ s a -> s{_utuUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
utuKey :: Lens' UsersThreadsUntrash' (Maybe AuthKey)
utuKey = lens _utuKey (\ s a -> s{_utuKey = a})

-- | The ID of the thread to remove from Trash.
utuId :: Lens' UsersThreadsUntrash' Text
utuId = lens _utuId (\ s a -> s{_utuId = a})

-- | OAuth 2.0 token for the current user.
utuOAuthToken :: Lens' UsersThreadsUntrash' (Maybe OAuthToken)
utuOAuthToken
  = lens _utuOAuthToken
      (\ s a -> s{_utuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
utuFields :: Lens' UsersThreadsUntrash' (Maybe Text)
utuFields
  = lens _utuFields (\ s a -> s{_utuFields = a})

instance GoogleAuth UsersThreadsUntrash' where
        _AuthKey = utuKey . _Just
        _AuthToken = utuOAuthToken . _Just

instance GoogleRequest UsersThreadsUntrash' where
        type Rs UsersThreadsUntrash' = Thread
        request = requestWith gmailRequest
        requestWith rq UsersThreadsUntrash'{..}
          = go _utuUserId _utuId _utuQuotaUser
              (Just _utuPrettyPrint)
              _utuUserIP
              _utuFields
              _utuKey
              _utuOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersThreadsUntrashResource)
                      rq
