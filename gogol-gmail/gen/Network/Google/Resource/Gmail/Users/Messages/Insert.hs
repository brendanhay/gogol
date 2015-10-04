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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Directly inserts a message into only this user\'s mailbox similar to
-- IMAP APPEND, bypassing most scanning and classification. Does not send a
-- message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesInsert@.
module Network.Google.Resource.Gmail.Users.Messages.Insert
    (
    -- * REST Resource
      UsersMessagesInsertResource

    -- * Creating a Request
    , usersMessagesInsert'
    , UsersMessagesInsert'

    -- * Request Lenses
    , umiQuotaUser
    , umiPrettyPrint
    , umiUserIP
    , umiPayload
    , umiUserId
    , umiMedia
    , umiKey
    , umiDeleted
    , umiOAuthToken
    , umiInternalDateSource
    , umiFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesInsert@ which the
-- 'UsersMessagesInsert'' request conforms to.
type UsersMessagesInsertResource =
     Capture "userId" Text :>
       "messages" :>
         QueryParam "deleted" Bool :>
           QueryParam "internalDateSource" InternalDateSource :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           MultipartRelated '[JSON] Message Body :>
                             Post '[JSON] Message

-- | Directly inserts a message into only this user\'s mailbox similar to
-- IMAP APPEND, bypassing most scanning and classification. Does not send a
-- message.
--
-- /See:/ 'usersMessagesInsert'' smart constructor.
data UsersMessagesInsert' = UsersMessagesInsert'
    { _umiQuotaUser          :: !(Maybe Text)
    , _umiPrettyPrint        :: !Bool
    , _umiUserIP             :: !(Maybe Text)
    , _umiPayload            :: !Message
    , _umiUserId             :: !Text
    , _umiMedia              :: !Body
    , _umiKey                :: !(Maybe Key)
    , _umiDeleted            :: !Bool
    , _umiOAuthToken         :: !(Maybe OAuthToken)
    , _umiInternalDateSource :: !InternalDateSource
    , _umiFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiQuotaUser'
--
-- * 'umiPrettyPrint'
--
-- * 'umiUserIP'
--
-- * 'umiPayload'
--
-- * 'umiUserId'
--
-- * 'umiMedia'
--
-- * 'umiKey'
--
-- * 'umiDeleted'
--
-- * 'umiOAuthToken'
--
-- * 'umiInternalDateSource'
--
-- * 'umiFields'
usersMessagesInsert'
    :: Message -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Body
    -> UsersMessagesInsert'
usersMessagesInsert' pUmiPayload_ pUmiUserId_ pUmiMedia_ =
    UsersMessagesInsert'
    { _umiQuotaUser = Nothing
    , _umiPrettyPrint = True
    , _umiUserIP = Nothing
    , _umiPayload = pUmiPayload_
    , _umiUserId = pUmiUserId_
    , _umiMedia = pUmiMedia_
    , _umiKey = Nothing
    , _umiDeleted = False
    , _umiOAuthToken = Nothing
    , _umiInternalDateSource = IDSReceivedTime
    , _umiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umiQuotaUser :: Lens' UsersMessagesInsert' (Maybe Text)
umiQuotaUser
  = lens _umiQuotaUser (\ s a -> s{_umiQuotaUser = a})

-- | Returns response with indentations and line breaks.
umiPrettyPrint :: Lens' UsersMessagesInsert' Bool
umiPrettyPrint
  = lens _umiPrettyPrint
      (\ s a -> s{_umiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umiUserIP :: Lens' UsersMessagesInsert' (Maybe Text)
umiUserIP
  = lens _umiUserIP (\ s a -> s{_umiUserIP = a})

-- | Multipart request metadata.
umiPayload :: Lens' UsersMessagesInsert' Message
umiPayload
  = lens _umiPayload (\ s a -> s{_umiPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umiUserId :: Lens' UsersMessagesInsert' Text
umiUserId
  = lens _umiUserId (\ s a -> s{_umiUserId = a})

umiMedia :: Lens' UsersMessagesInsert' Body
umiMedia = lens _umiMedia (\ s a -> s{_umiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umiKey :: Lens' UsersMessagesInsert' (Maybe Key)
umiKey = lens _umiKey (\ s a -> s{_umiKey = a})

-- | Mark the email as permanently deleted (not TRASH) and only visible in
-- Google Apps Vault to a Vault administrator. Only used for Google Apps
-- for Work accounts.
umiDeleted :: Lens' UsersMessagesInsert' Bool
umiDeleted
  = lens _umiDeleted (\ s a -> s{_umiDeleted = a})

-- | OAuth 2.0 token for the current user.
umiOAuthToken :: Lens' UsersMessagesInsert' (Maybe OAuthToken)
umiOAuthToken
  = lens _umiOAuthToken
      (\ s a -> s{_umiOAuthToken = a})

-- | Source for Gmail\'s internal date of the message.
umiInternalDateSource :: Lens' UsersMessagesInsert' InternalDateSource
umiInternalDateSource
  = lens _umiInternalDateSource
      (\ s a -> s{_umiInternalDateSource = a})

-- | Selector specifying which fields to include in a partial response.
umiFields :: Lens' UsersMessagesInsert' (Maybe Text)
umiFields
  = lens _umiFields (\ s a -> s{_umiFields = a})

instance GoogleAuth UsersMessagesInsert' where
        authKey = umiKey . _Just
        authToken = umiOAuthToken . _Just

instance GoogleRequest UsersMessagesInsert' where
        type Rs UsersMessagesInsert' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesInsert'{..}
          = go _umiUserId (Just _umiDeleted)
              (Just _umiInternalDateSource)
              _umiQuotaUser
              (Just _umiPrettyPrint)
              _umiUserIP
              _umiFields
              _umiKey
              _umiOAuthToken
              (Just AltJSON)
              _umiPayload
              _umiMedia
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesInsertResource)
                      r
                      u
