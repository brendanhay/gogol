{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Gmail.Users.Messages.Delete
    (
    -- * REST Resource
      UsersMessagesDeleteAPI

    -- * Creating a Request
    , usersMessagesDelete
    , UsersMessagesDelete

    -- * Request Lenses
    , umdQuotaUser
    , umdPrettyPrint
    , umdUserIp
    , umdUserId
    , umdKey
    , umdId
    , umdOauthToken
    , umdFields
    , umdAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesDelete@ which the
-- 'UsersMessagesDelete' request conforms to.
type UsersMessagesDeleteAPI =
     Capture "userId" Text :>
       "messages" :> Capture "id" Text :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified message. This
-- operation cannot be undone. Prefer messages.trash instead.
--
-- /See:/ 'usersMessagesDelete' smart constructor.
data UsersMessagesDelete = UsersMessagesDelete
    { _umdQuotaUser   :: !(Maybe Text)
    , _umdPrettyPrint :: !Bool
    , _umdUserIp      :: !(Maybe Text)
    , _umdUserId      :: !Text
    , _umdKey         :: !(Maybe Text)
    , _umdId          :: !Text
    , _umdOauthToken  :: !(Maybe Text)
    , _umdFields      :: !(Maybe Text)
    , _umdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdQuotaUser'
--
-- * 'umdPrettyPrint'
--
-- * 'umdUserIp'
--
-- * 'umdUserId'
--
-- * 'umdKey'
--
-- * 'umdId'
--
-- * 'umdOauthToken'
--
-- * 'umdFields'
--
-- * 'umdAlt'
usersMessagesDelete
    :: Text -- ^ 'id'
    -> Text
    -> UsersMessagesDelete
usersMessagesDelete pUmdUserId_ pUmdId_ =
    UsersMessagesDelete
    { _umdQuotaUser = Nothing
    , _umdPrettyPrint = True
    , _umdUserIp = Nothing
    , _umdUserId = pUmdUserId_
    , _umdKey = Nothing
    , _umdId = pUmdId_
    , _umdOauthToken = Nothing
    , _umdFields = Nothing
    , _umdAlt = "json"
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
umdUserIp :: Lens' UsersMessagesDelete' (Maybe Text)
umdUserIp
  = lens _umdUserIp (\ s a -> s{_umdUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umdUserId :: Lens' UsersMessagesDelete' Text
umdUserId
  = lens _umdUserId (\ s a -> s{_umdUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umdKey :: Lens' UsersMessagesDelete' (Maybe Text)
umdKey = lens _umdKey (\ s a -> s{_umdKey = a})

-- | The ID of the message to delete.
umdId :: Lens' UsersMessagesDelete' Text
umdId = lens _umdId (\ s a -> s{_umdId = a})

-- | OAuth 2.0 token for the current user.
umdOauthToken :: Lens' UsersMessagesDelete' (Maybe Text)
umdOauthToken
  = lens _umdOauthToken
      (\ s a -> s{_umdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
umdFields :: Lens' UsersMessagesDelete' (Maybe Text)
umdFields
  = lens _umdFields (\ s a -> s{_umdFields = a})

-- | Data format for the response.
umdAlt :: Lens' UsersMessagesDelete' Text
umdAlt = lens _umdAlt (\ s a -> s{_umdAlt = a})

instance GoogleRequest UsersMessagesDelete' where
        type Rs UsersMessagesDelete' = ()
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesDelete{..}
          = go _umdQuotaUser _umdPrettyPrint _umdUserIp
              _umdUserId
              _umdKey
              _umdId
              _umdOauthToken
              _umdFields
              _umdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesDeleteAPI)
                      r
                      u
