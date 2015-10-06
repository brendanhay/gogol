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
    , umagUserIP
    , umagUserId
    , umagKey
    , umagId
    , umagOAuthToken
    , umagMessageId
    , umagFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] MessagePartBody

-- | Gets the specified message attachment.
--
-- /See:/ 'usersMessagesAttachmentsGet'' smart constructor.
data UsersMessagesAttachmentsGet' = UsersMessagesAttachmentsGet'
    { _umagQuotaUser   :: !(Maybe Text)
    , _umagPrettyPrint :: !Bool
    , _umagUserIP      :: !(Maybe Text)
    , _umagUserId      :: !Text
    , _umagKey         :: !(Maybe AuthKey)
    , _umagId          :: !Text
    , _umagOAuthToken  :: !(Maybe OAuthToken)
    , _umagMessageId   :: !Text
    , _umagFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesAttachmentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umagQuotaUser'
--
-- * 'umagPrettyPrint'
--
-- * 'umagUserIP'
--
-- * 'umagUserId'
--
-- * 'umagKey'
--
-- * 'umagId'
--
-- * 'umagOAuthToken'
--
-- * 'umagMessageId'
--
-- * 'umagFields'
usersMessagesAttachmentsGet'
    :: Text -- ^ 'id'
    -> Text -- ^ 'messageId'
    -> Text
    -> UsersMessagesAttachmentsGet'
usersMessagesAttachmentsGet' pUmagUserId_ pUmagId_ pUmagMessageId_ =
    UsersMessagesAttachmentsGet'
    { _umagQuotaUser = Nothing
    , _umagPrettyPrint = True
    , _umagUserIP = Nothing
    , _umagUserId = pUmagUserId_
    , _umagKey = Nothing
    , _umagId = pUmagId_
    , _umagOAuthToken = Nothing
    , _umagMessageId = pUmagMessageId_
    , _umagFields = Nothing
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
umagUserIP :: Lens' UsersMessagesAttachmentsGet' (Maybe Text)
umagUserIP
  = lens _umagUserIP (\ s a -> s{_umagUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umagUserId :: Lens' UsersMessagesAttachmentsGet' Text
umagUserId
  = lens _umagUserId (\ s a -> s{_umagUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umagKey :: Lens' UsersMessagesAttachmentsGet' (Maybe AuthKey)
umagKey = lens _umagKey (\ s a -> s{_umagKey = a})

-- | The ID of the attachment.
umagId :: Lens' UsersMessagesAttachmentsGet' Text
umagId = lens _umagId (\ s a -> s{_umagId = a})

-- | OAuth 2.0 token for the current user.
umagOAuthToken :: Lens' UsersMessagesAttachmentsGet' (Maybe OAuthToken)
umagOAuthToken
  = lens _umagOAuthToken
      (\ s a -> s{_umagOAuthToken = a})

-- | The ID of the message containing the attachment.
umagMessageId :: Lens' UsersMessagesAttachmentsGet' Text
umagMessageId
  = lens _umagMessageId
      (\ s a -> s{_umagMessageId = a})

-- | Selector specifying which fields to include in a partial response.
umagFields :: Lens' UsersMessagesAttachmentsGet' (Maybe Text)
umagFields
  = lens _umagFields (\ s a -> s{_umagFields = a})

instance GoogleAuth UsersMessagesAttachmentsGet'
         where
        authKey = umagKey . _Just
        authToken = umagOAuthToken . _Just

instance GoogleRequest UsersMessagesAttachmentsGet'
         where
        type Rs UsersMessagesAttachmentsGet' =
             MessagePartBody
        request = requestWith gmailRequest
        requestWith rq UsersMessagesAttachmentsGet'{..}
          = go _umagUserId _umagMessageId _umagId
              _umagQuotaUser
              (Just _umagPrettyPrint)
              _umagUserIP
              _umagFields
              _umagKey
              _umagOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersMessagesAttachmentsGetResource)
                      rq
