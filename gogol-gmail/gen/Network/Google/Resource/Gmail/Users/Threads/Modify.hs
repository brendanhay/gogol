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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Modify
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersThreadsModify@.
module Network.Google.Resource.Gmail.Users.Threads.Modify
    (
    -- * REST Resource
      UsersThreadsModifyResource

    -- * Creating a Request
    , usersThreadsModify'
    , UsersThreadsModify'

    -- * Request Lenses
    , utmQuotaUser
    , utmModifyThreadRequest
    , utmPrettyPrint
    , utmUserIP
    , utmUserId
    , utmKey
    , utmId
    , utmOAuthToken
    , utmFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsModify@ which the
-- 'UsersThreadsModify'' request conforms to.
type UsersThreadsModifyResource =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           "modify" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ModifyThreadRequest :>
                             Post '[JSON] Thread

-- | Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
--
-- /See:/ 'usersThreadsModify'' smart constructor.
data UsersThreadsModify' = UsersThreadsModify'
    { _utmQuotaUser           :: !(Maybe Text)
    , _utmModifyThreadRequest :: !ModifyThreadRequest
    , _utmPrettyPrint         :: !Bool
    , _utmUserIP              :: !(Maybe Text)
    , _utmUserId              :: !Text
    , _utmKey                 :: !(Maybe Key)
    , _utmId                  :: !Text
    , _utmOAuthToken          :: !(Maybe OAuthToken)
    , _utmFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsModify'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utmQuotaUser'
--
-- * 'utmModifyThreadRequest'
--
-- * 'utmPrettyPrint'
--
-- * 'utmUserIP'
--
-- * 'utmUserId'
--
-- * 'utmKey'
--
-- * 'utmId'
--
-- * 'utmOAuthToken'
--
-- * 'utmFields'
usersThreadsModify'
    :: ModifyThreadRequest -- ^ 'ModifyThreadRequest'
    -> Text -- ^ 'id'
    -> Text
    -> UsersThreadsModify'
usersThreadsModify' pUtmModifyThreadRequest_ pUtmUserId_ pUtmId_ =
    UsersThreadsModify'
    { _utmQuotaUser = Nothing
    , _utmModifyThreadRequest = pUtmModifyThreadRequest_
    , _utmPrettyPrint = True
    , _utmUserIP = Nothing
    , _utmUserId = pUtmUserId_
    , _utmKey = Nothing
    , _utmId = pUtmId_
    , _utmOAuthToken = Nothing
    , _utmFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
utmQuotaUser :: Lens' UsersThreadsModify' (Maybe Text)
utmQuotaUser
  = lens _utmQuotaUser (\ s a -> s{_utmQuotaUser = a})

-- | Multipart request metadata.
utmModifyThreadRequest :: Lens' UsersThreadsModify' ModifyThreadRequest
utmModifyThreadRequest
  = lens _utmModifyThreadRequest
      (\ s a -> s{_utmModifyThreadRequest = a})

-- | Returns response with indentations and line breaks.
utmPrettyPrint :: Lens' UsersThreadsModify' Bool
utmPrettyPrint
  = lens _utmPrettyPrint
      (\ s a -> s{_utmPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
utmUserIP :: Lens' UsersThreadsModify' (Maybe Text)
utmUserIP
  = lens _utmUserIP (\ s a -> s{_utmUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utmUserId :: Lens' UsersThreadsModify' Text
utmUserId
  = lens _utmUserId (\ s a -> s{_utmUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
utmKey :: Lens' UsersThreadsModify' (Maybe Key)
utmKey = lens _utmKey (\ s a -> s{_utmKey = a})

-- | The ID of the thread to modify.
utmId :: Lens' UsersThreadsModify' Text
utmId = lens _utmId (\ s a -> s{_utmId = a})

-- | OAuth 2.0 token for the current user.
utmOAuthToken :: Lens' UsersThreadsModify' (Maybe OAuthToken)
utmOAuthToken
  = lens _utmOAuthToken
      (\ s a -> s{_utmOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
utmFields :: Lens' UsersThreadsModify' (Maybe Text)
utmFields
  = lens _utmFields (\ s a -> s{_utmFields = a})

instance GoogleAuth UsersThreadsModify' where
        authKey = utmKey . _Just
        authToken = utmOAuthToken . _Just

instance GoogleRequest UsersThreadsModify' where
        type Rs UsersThreadsModify' = Thread
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsModify'{..}
          = go _utmUserId _utmId _utmQuotaUser
              (Just _utmPrettyPrint)
              _utmUserIP
              _utmFields
              _utmKey
              _utmOAuthToken
              (Just AltJSON)
              _utmModifyThreadRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersThreadsModifyResource)
                      r
                      u
