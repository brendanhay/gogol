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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Attachments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified message attachment.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesAttachmentsGet@.
module Network.Google.Resource.Gmail.Users.Messages.Attachments.Get
    (
    -- * REST Resource
      UsersMessagesAttachmentsGetResource

    -- * Creating a Request
    , usersMessagesAttachmentsGet'
    , UsersMessagesAttachmentsGet'

    -- * Request Lenses
    , umagQuotaUser
    , umagPrettyPrint
    , umagUserIp
    , umagUserId
    , umagKey
    , umagId
    , umagOauthToken
    , umagMessageId
    , umagFields
    , umagAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesAttachmentsGet@ which the
-- 'UsersMessagesAttachmentsGet'' request conforms to.
type UsersMessagesAttachmentsGetResource =
     Capture "userId" Text :>
       "messages" :>
         Capture "messageId" Text :>
           "attachments" :>
             Capture "id" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] MessagePartBody

-- | Gets the specified message attachment.
--
-- /See:/ 'usersMessagesAttachmentsGet'' smart constructor.
data UsersMessagesAttachmentsGet' = UsersMessagesAttachmentsGet'
    { _umagQuotaUser   :: !(Maybe Text)
    , _umagPrettyPrint :: !Bool
    , _umagUserIp      :: !(Maybe Text)
    , _umagUserId      :: !Text
    , _umagKey         :: !(Maybe Text)
    , _umagId          :: !Text
    , _umagOauthToken  :: !(Maybe Text)
    , _umagMessageId   :: !Text
    , _umagFields      :: !(Maybe Text)
    , _umagAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesAttachmentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umagQuotaUser'
--
-- * 'umagPrettyPrint'
--
-- * 'umagUserIp'
--
-- * 'umagUserId'
--
-- * 'umagKey'
--
-- * 'umagId'
--
-- * 'umagOauthToken'
--
-- * 'umagMessageId'
--
-- * 'umagFields'
--
-- * 'umagAlt'
usersMessagesAttachmentsGet'
    :: Text -- ^ 'id'
    -> Text -- ^ 'messageId'
    -> Text
    -> UsersMessagesAttachmentsGet'
usersMessagesAttachmentsGet' pUmagUserId_ pUmagId_ pUmagMessageId_ =
    UsersMessagesAttachmentsGet'
    { _umagQuotaUser = Nothing
    , _umagPrettyPrint = True
    , _umagUserIp = Nothing
    , _umagUserId = pUmagUserId_
    , _umagKey = Nothing
    , _umagId = pUmagId_
    , _umagOauthToken = Nothing
    , _umagMessageId = pUmagMessageId_
    , _umagFields = Nothing
    , _umagAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umagQuotaUser :: Lens' UsersMessagesAttachmentsGet' (Maybe Text)
umagQuotaUser
  = lens _umagQuotaUser
      (\ s a -> s{_umagQuotaUser = a})

-- | Returns response with indentations and line breaks.
umagPrettyPrint :: Lens' UsersMessagesAttachmentsGet' Bool
umagPrettyPrint
  = lens _umagPrettyPrint
      (\ s a -> s{_umagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umagUserIp :: Lens' UsersMessagesAttachmentsGet' (Maybe Text)
umagUserIp
  = lens _umagUserIp (\ s a -> s{_umagUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umagUserId :: Lens' UsersMessagesAttachmentsGet' Text
umagUserId
  = lens _umagUserId (\ s a -> s{_umagUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umagKey :: Lens' UsersMessagesAttachmentsGet' (Maybe Text)
umagKey = lens _umagKey (\ s a -> s{_umagKey = a})

-- | The ID of the attachment.
umagId :: Lens' UsersMessagesAttachmentsGet' Text
umagId = lens _umagId (\ s a -> s{_umagId = a})

-- | OAuth 2.0 token for the current user.
umagOauthToken :: Lens' UsersMessagesAttachmentsGet' (Maybe Text)
umagOauthToken
  = lens _umagOauthToken
      (\ s a -> s{_umagOauthToken = a})

-- | The ID of the message containing the attachment.
umagMessageId :: Lens' UsersMessagesAttachmentsGet' Text
umagMessageId
  = lens _umagMessageId
      (\ s a -> s{_umagMessageId = a})

-- | Selector specifying which fields to include in a partial response.
umagFields :: Lens' UsersMessagesAttachmentsGet' (Maybe Text)
umagFields
  = lens _umagFields (\ s a -> s{_umagFields = a})

-- | Data format for the response.
umagAlt :: Lens' UsersMessagesAttachmentsGet' Alt
umagAlt = lens _umagAlt (\ s a -> s{_umagAlt = a})

instance GoogleRequest UsersMessagesAttachmentsGet'
         where
        type Rs UsersMessagesAttachmentsGet' =
             MessagePartBody
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesAttachmentsGet'{..}
          = go _umagQuotaUser (Just _umagPrettyPrint)
              _umagUserIp
              _umagUserId
              _umagKey
              _umagId
              _umagOauthToken
              _umagMessageId
              _umagFields
              (Just _umagAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesAttachmentsGetResource)
                      r
                      u
