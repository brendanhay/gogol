{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Send
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sends the specified message to the recipients in the To, Cc, and Bcc
-- headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesSend@.
module Gmail.Users.Messages.Send
    (
    -- * REST Resource
      UsersMessagesSendAPI

    -- * Creating a Request
    , usersMessagesSend
    , UsersMessagesSend

    -- * Request Lenses
    , umsQuotaUser
    , umsPrettyPrint
    , umsUserIp
    , umsUserId
    , umsKey
    , umsOauthToken
    , umsFields
    , umsAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesSend@ which the
-- 'UsersMessagesSend' request conforms to.
type UsersMessagesSendAPI =
     Capture "userId" Text :>
       "messages" :> "send" :> Post '[JSON] Message

-- | Sends the specified message to the recipients in the To, Cc, and Bcc
-- headers.
--
-- /See:/ 'usersMessagesSend' smart constructor.
data UsersMessagesSend = UsersMessagesSend
    { _umsQuotaUser   :: !(Maybe Text)
    , _umsPrettyPrint :: !Bool
    , _umsUserIp      :: !(Maybe Text)
    , _umsUserId      :: !Text
    , _umsKey         :: !(Maybe Text)
    , _umsOauthToken  :: !(Maybe Text)
    , _umsFields      :: !(Maybe Text)
    , _umsAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesSend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umsQuotaUser'
--
-- * 'umsPrettyPrint'
--
-- * 'umsUserIp'
--
-- * 'umsUserId'
--
-- * 'umsKey'
--
-- * 'umsOauthToken'
--
-- * 'umsFields'
--
-- * 'umsAlt'
usersMessagesSend
    :: Text
    -> UsersMessagesSend
usersMessagesSend pUmsUserId_ =
    UsersMessagesSend
    { _umsQuotaUser = Nothing
    , _umsPrettyPrint = True
    , _umsUserIp = Nothing
    , _umsUserId = pUmsUserId_
    , _umsKey = Nothing
    , _umsOauthToken = Nothing
    , _umsFields = Nothing
    , _umsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umsQuotaUser :: Lens' UsersMessagesSend' (Maybe Text)
umsQuotaUser
  = lens _umsQuotaUser (\ s a -> s{_umsQuotaUser = a})

-- | Returns response with indentations and line breaks.
umsPrettyPrint :: Lens' UsersMessagesSend' Bool
umsPrettyPrint
  = lens _umsPrettyPrint
      (\ s a -> s{_umsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umsUserIp :: Lens' UsersMessagesSend' (Maybe Text)
umsUserIp
  = lens _umsUserIp (\ s a -> s{_umsUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umsUserId :: Lens' UsersMessagesSend' Text
umsUserId
  = lens _umsUserId (\ s a -> s{_umsUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umsKey :: Lens' UsersMessagesSend' (Maybe Text)
umsKey = lens _umsKey (\ s a -> s{_umsKey = a})

-- | OAuth 2.0 token for the current user.
umsOauthToken :: Lens' UsersMessagesSend' (Maybe Text)
umsOauthToken
  = lens _umsOauthToken
      (\ s a -> s{_umsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
umsFields :: Lens' UsersMessagesSend' (Maybe Text)
umsFields
  = lens _umsFields (\ s a -> s{_umsFields = a})

-- | Data format for the response.
umsAlt :: Lens' UsersMessagesSend' Text
umsAlt = lens _umsAlt (\ s a -> s{_umsAlt = a})

instance GoogleRequest UsersMessagesSend' where
        type Rs UsersMessagesSend' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesSend{..}
          = go _umsQuotaUser _umsPrettyPrint _umsUserIp
              _umsUserId
              _umsKey
              _umsOauthToken
              _umsFields
              _umsAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesSendAPI)
                      r
                      u
