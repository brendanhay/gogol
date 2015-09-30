{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Modify
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the labels on the specified message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesModify@.
module Gmail.Users.Messages.Modify
    (
    -- * REST Resource
      UsersMessagesModifyAPI

    -- * Creating a Request
    , usersMessagesModify
    , UsersMessagesModify

    -- * Request Lenses
    , ummQuotaUser
    , ummPrettyPrint
    , ummUserIp
    , ummUserId
    , ummKey
    , ummId
    , ummOauthToken
    , ummFields
    , ummAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesModify@ which the
-- 'UsersMessagesModify' request conforms to.
type UsersMessagesModifyAPI =
     Capture "userId" Text :>
       "messages" :>
         Capture "id" Text :> "modify" :> Post '[JSON] Message

-- | Modifies the labels on the specified message.
--
-- /See:/ 'usersMessagesModify' smart constructor.
data UsersMessagesModify = UsersMessagesModify
    { _ummQuotaUser   :: !(Maybe Text)
    , _ummPrettyPrint :: !Bool
    , _ummUserIp      :: !(Maybe Text)
    , _ummUserId      :: !Text
    , _ummKey         :: !(Maybe Text)
    , _ummId          :: !Text
    , _ummOauthToken  :: !(Maybe Text)
    , _ummFields      :: !(Maybe Text)
    , _ummAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesModify'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ummQuotaUser'
--
-- * 'ummPrettyPrint'
--
-- * 'ummUserIp'
--
-- * 'ummUserId'
--
-- * 'ummKey'
--
-- * 'ummId'
--
-- * 'ummOauthToken'
--
-- * 'ummFields'
--
-- * 'ummAlt'
usersMessagesModify
    :: Text -- ^ 'id'
    -> Text
    -> UsersMessagesModify
usersMessagesModify pUmmUserId_ pUmmId_ =
    UsersMessagesModify
    { _ummQuotaUser = Nothing
    , _ummPrettyPrint = True
    , _ummUserIp = Nothing
    , _ummUserId = pUmmUserId_
    , _ummKey = Nothing
    , _ummId = pUmmId_
    , _ummOauthToken = Nothing
    , _ummFields = Nothing
    , _ummAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ummQuotaUser :: Lens' UsersMessagesModify' (Maybe Text)
ummQuotaUser
  = lens _ummQuotaUser (\ s a -> s{_ummQuotaUser = a})

-- | Returns response with indentations and line breaks.
ummPrettyPrint :: Lens' UsersMessagesModify' Bool
ummPrettyPrint
  = lens _ummPrettyPrint
      (\ s a -> s{_ummPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ummUserIp :: Lens' UsersMessagesModify' (Maybe Text)
ummUserIp
  = lens _ummUserIp (\ s a -> s{_ummUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
ummUserId :: Lens' UsersMessagesModify' Text
ummUserId
  = lens _ummUserId (\ s a -> s{_ummUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ummKey :: Lens' UsersMessagesModify' (Maybe Text)
ummKey = lens _ummKey (\ s a -> s{_ummKey = a})

-- | The ID of the message to modify.
ummId :: Lens' UsersMessagesModify' Text
ummId = lens _ummId (\ s a -> s{_ummId = a})

-- | OAuth 2.0 token for the current user.
ummOauthToken :: Lens' UsersMessagesModify' (Maybe Text)
ummOauthToken
  = lens _ummOauthToken
      (\ s a -> s{_ummOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ummFields :: Lens' UsersMessagesModify' (Maybe Text)
ummFields
  = lens _ummFields (\ s a -> s{_ummFields = a})

-- | Data format for the response.
ummAlt :: Lens' UsersMessagesModify' Text
ummAlt = lens _ummAlt (\ s a -> s{_ummAlt = a})

instance GoogleRequest UsersMessagesModify' where
        type Rs UsersMessagesModify' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesModify{..}
          = go _ummQuotaUser _ummPrettyPrint _ummUserIp
              _ummUserId
              _ummKey
              _ummId
              _ummOauthToken
              _ummFields
              _ummAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesModifyAPI)
                      r
                      u
