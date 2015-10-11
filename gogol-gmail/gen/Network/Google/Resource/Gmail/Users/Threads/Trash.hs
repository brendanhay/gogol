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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Trash
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves the specified thread to the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersThreadsTrash@.
module Network.Google.Resource.Gmail.Users.Threads.Trash
    (
    -- * REST Resource
      UsersThreadsTrashResource

    -- * Creating a Request
    , usersThreadsTrash'
    , UsersThreadsTrash'

    -- * Request Lenses
    , uttQuotaUser
    , uttPrettyPrint
    , uttUserIP
    , uttUserId
    , uttKey
    , uttId
    , uttOAuthToken
    , uttFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsTrash@ method which the
-- 'UsersThreadsTrash'' request conforms to.
type UsersThreadsTrashResource =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           "trash" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Thread

-- | Moves the specified thread to the trash.
--
-- /See:/ 'usersThreadsTrash'' smart constructor.
data UsersThreadsTrash' = UsersThreadsTrash'
    { _uttQuotaUser   :: !(Maybe Text)
    , _uttPrettyPrint :: !Bool
    , _uttUserIP      :: !(Maybe Text)
    , _uttUserId      :: !Text
    , _uttKey         :: !(Maybe AuthKey)
    , _uttId          :: !Text
    , _uttOAuthToken  :: !(Maybe OAuthToken)
    , _uttFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsTrash'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uttQuotaUser'
--
-- * 'uttPrettyPrint'
--
-- * 'uttUserIP'
--
-- * 'uttUserId'
--
-- * 'uttKey'
--
-- * 'uttId'
--
-- * 'uttOAuthToken'
--
-- * 'uttFields'
usersThreadsTrash'
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsTrash'
usersThreadsTrash' pUttUserId_ pUttId_ =
    UsersThreadsTrash'
    { _uttQuotaUser = Nothing
    , _uttPrettyPrint = True
    , _uttUserIP = Nothing
    , _uttUserId = pUttUserId_
    , _uttKey = Nothing
    , _uttId = pUttId_
    , _uttOAuthToken = Nothing
    , _uttFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uttQuotaUser :: Lens' UsersThreadsTrash' (Maybe Text)
uttQuotaUser
  = lens _uttQuotaUser (\ s a -> s{_uttQuotaUser = a})

-- | Returns response with indentations and line breaks.
uttPrettyPrint :: Lens' UsersThreadsTrash' Bool
uttPrettyPrint
  = lens _uttPrettyPrint
      (\ s a -> s{_uttPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uttUserIP :: Lens' UsersThreadsTrash' (Maybe Text)
uttUserIP
  = lens _uttUserIP (\ s a -> s{_uttUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uttUserId :: Lens' UsersThreadsTrash' Text
uttUserId
  = lens _uttUserId (\ s a -> s{_uttUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uttKey :: Lens' UsersThreadsTrash' (Maybe AuthKey)
uttKey = lens _uttKey (\ s a -> s{_uttKey = a})

-- | The ID of the thread to Trash.
uttId :: Lens' UsersThreadsTrash' Text
uttId = lens _uttId (\ s a -> s{_uttId = a})

-- | OAuth 2.0 token for the current user.
uttOAuthToken :: Lens' UsersThreadsTrash' (Maybe OAuthToken)
uttOAuthToken
  = lens _uttOAuthToken
      (\ s a -> s{_uttOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uttFields :: Lens' UsersThreadsTrash' (Maybe Text)
uttFields
  = lens _uttFields (\ s a -> s{_uttFields = a})

instance GoogleAuth UsersThreadsTrash' where
        _AuthKey = uttKey . _Just
        _AuthToken = uttOAuthToken . _Just

instance GoogleRequest UsersThreadsTrash' where
        type Rs UsersThreadsTrash' = Thread
        request = requestWith gmailRequest
        requestWith rq UsersThreadsTrash'{..}
          = go _uttUserId _uttId _uttQuotaUser
              (Just _uttPrettyPrint)
              _uttUserIP
              _uttFields
              _uttKey
              _uttOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersThreadsTrashResource)
                      rq
