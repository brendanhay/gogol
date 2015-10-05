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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Immediately and permanently deletes the specified message. This
-- operation cannot be undone. Prefer messages.trash instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesDelete@.
module Network.Google.Resource.Gmail.Users.Messages.Delete
    (
    -- * REST Resource
      UsersMessagesDeleteResource

    -- * Creating a Request
    , usersMessagesDelete'
    , UsersMessagesDelete'

    -- * Request Lenses
    , umdQuotaUser
    , umdPrettyPrint
    , umdUserIP
    , umdUserId
    , umdKey
    , umdId
    , umdOAuthToken
    , umdFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesDelete@ which the
-- 'UsersMessagesDelete'' request conforms to.
type UsersMessagesDeleteResource =
     Capture "userId" Text :>
       "messages" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified message. This
-- operation cannot be undone. Prefer messages.trash instead.
--
-- /See:/ 'usersMessagesDelete'' smart constructor.
data UsersMessagesDelete' = UsersMessagesDelete'
    { _umdQuotaUser   :: !(Maybe Text)
    , _umdPrettyPrint :: !Bool
    , _umdUserIP      :: !(Maybe Text)
    , _umdUserId      :: !Text
    , _umdKey         :: !(Maybe Key)
    , _umdId          :: !Text
    , _umdOAuthToken  :: !(Maybe OAuthToken)
    , _umdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdQuotaUser'
--
-- * 'umdPrettyPrint'
--
-- * 'umdUserIP'
--
-- * 'umdUserId'
--
-- * 'umdKey'
--
-- * 'umdId'
--
-- * 'umdOAuthToken'
--
-- * 'umdFields'
usersMessagesDelete'
    :: Text -- ^ 'id'
    -> Text
    -> UsersMessagesDelete'
usersMessagesDelete' pUmdUserId_ pUmdId_ =
    UsersMessagesDelete'
    { _umdQuotaUser = Nothing
    , _umdPrettyPrint = True
    , _umdUserIP = Nothing
    , _umdUserId = pUmdUserId_
    , _umdKey = Nothing
    , _umdId = pUmdId_
    , _umdOAuthToken = Nothing
    , _umdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umdQuotaUser :: Lens' UsersMessagesDelete' (Maybe Text)
umdQuotaUser
  = lens _umdQuotaUser (\ s a -> s{_umdQuotaUser = a})

-- | Returns response with indentations and line breaks.
umdPrettyPrint :: Lens' UsersMessagesDelete' Bool
umdPrettyPrint
  = lens _umdPrettyPrint
      (\ s a -> s{_umdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umdUserIP :: Lens' UsersMessagesDelete' (Maybe Text)
umdUserIP
  = lens _umdUserIP (\ s a -> s{_umdUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umdUserId :: Lens' UsersMessagesDelete' Text
umdUserId
  = lens _umdUserId (\ s a -> s{_umdUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umdKey :: Lens' UsersMessagesDelete' (Maybe Key)
umdKey = lens _umdKey (\ s a -> s{_umdKey = a})

-- | The ID of the message to delete.
umdId :: Lens' UsersMessagesDelete' Text
umdId = lens _umdId (\ s a -> s{_umdId = a})

-- | OAuth 2.0 token for the current user.
umdOAuthToken :: Lens' UsersMessagesDelete' (Maybe OAuthToken)
umdOAuthToken
  = lens _umdOAuthToken
      (\ s a -> s{_umdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umdFields :: Lens' UsersMessagesDelete' (Maybe Text)
umdFields
  = lens _umdFields (\ s a -> s{_umdFields = a})

instance GoogleAuth UsersMessagesDelete' where
        authKey = umdKey . _Just
        authToken = umdOAuthToken . _Just

instance GoogleRequest UsersMessagesDelete' where
        type Rs UsersMessagesDelete' = ()
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesDelete'{..}
          = go _umdUserId _umdId _umdQuotaUser
              (Just _umdPrettyPrint)
              _umdUserIP
              _umdFields
              _umdKey
              _umdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesDeleteResource)
                      r
                      u
