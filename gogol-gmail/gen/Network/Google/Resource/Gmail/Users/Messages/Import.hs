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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Imports a message into only this user\'s mailbox, with standard email
-- delivery scanning and classification similar to receiving via SMTP. Does
-- not send a message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesImport@.
module Network.Google.Resource.Gmail.Users.Messages.Import
    (
    -- * REST Resource
      UsersMessagesImportResource

    -- * Creating a Request
    , usersMessagesImport'
    , UsersMessagesImport'

    -- * Request Lenses
    , uQuotaUser
    , uPrettyPrint
    , uUserIP
    , uPayload
    , uUserId
    , uMedia
    , uKey
    , uProcessForCalendar
    , uDeleted
    , uNeverMarkSpam
    , uOAuthToken
    , uInternalDateSource
    , uFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesImport@ method which the
-- 'UsersMessagesImport'' request conforms to.
type UsersMessagesImportResource =
     Capture "userId" Text :>
       "messages" :>
         "import" :>
           QueryParam "processForCalendar" Bool :>
             QueryParam "deleted" Bool :>
               QueryParam "neverMarkSpam" Bool :>
                 QueryParam "internalDateSource"
                   UsersMessagesImportInternalDateSource
                   :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 MultipartRelated '[JSON] Message Stream :>
                                   Post '[JSON] Message

-- | Imports a message into only this user\'s mailbox, with standard email
-- delivery scanning and classification similar to receiving via SMTP. Does
-- not send a message.
--
-- /See:/ 'usersMessagesImport'' smart constructor.
data UsersMessagesImport' = UsersMessagesImport'
    { _uQuotaUser          :: !(Maybe Text)
    , _uPrettyPrint        :: !Bool
    , _uUserIP             :: !(Maybe Text)
    , _uPayload            :: !Message
    , _uUserId             :: !Text
    , _uMedia              :: !Stream
    , _uKey                :: !(Maybe AuthKey)
    , _uProcessForCalendar :: !Bool
    , _uDeleted            :: !Bool
    , _uNeverMarkSpam      :: !Bool
    , _uOAuthToken         :: !(Maybe OAuthToken)
    , _uInternalDateSource :: !UsersMessagesImportInternalDateSource
    , _uFields             :: !(Maybe Text)
    }

-- | Creates a value of 'UsersMessagesImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uQuotaUser'
--
-- * 'uPrettyPrint'
--
-- * 'uUserIP'
--
-- * 'uPayload'
--
-- * 'uUserId'
--
-- * 'uMedia'
--
-- * 'uKey'
--
-- * 'uProcessForCalendar'
--
-- * 'uDeleted'
--
-- * 'uNeverMarkSpam'
--
-- * 'uOAuthToken'
--
-- * 'uInternalDateSource'
--
-- * 'uFields'
usersMessagesImport'
    :: Message -- ^ 'payload'
    -> Text -- ^ 'media'
    -> Stream
    -> UsersMessagesImport'
usersMessagesImport' pUPayload_ pUUserId_ pUMedia_ =
    UsersMessagesImport'
    { _uQuotaUser = Nothing
    , _uPrettyPrint = True
    , _uUserIP = Nothing
    , _uPayload = pUPayload_
    , _uUserId = pUUserId_
    , _uMedia = pUMedia_
    , _uKey = Nothing
    , _uProcessForCalendar = False
    , _uDeleted = False
    , _uNeverMarkSpam = False
    , _uOAuthToken = Nothing
    , _uInternalDateSource = DateHeader
    , _uFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uQuotaUser :: Lens' UsersMessagesImport' (Maybe Text)
uQuotaUser
  = lens _uQuotaUser (\ s a -> s{_uQuotaUser = a})

-- | Returns response with indentations and line breaks.
uPrettyPrint :: Lens' UsersMessagesImport' Bool
uPrettyPrint
  = lens _uPrettyPrint (\ s a -> s{_uPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uUserIP :: Lens' UsersMessagesImport' (Maybe Text)
uUserIP = lens _uUserIP (\ s a -> s{_uUserIP = a})

-- | Multipart request metadata.
uPayload :: Lens' UsersMessagesImport' Message
uPayload = lens _uPayload (\ s a -> s{_uPayload = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uUserId :: Lens' UsersMessagesImport' Text
uUserId = lens _uUserId (\ s a -> s{_uUserId = a})

uMedia :: Lens' UsersMessagesImport' Stream
uMedia = lens _uMedia (\ s a -> s{_uMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uKey :: Lens' UsersMessagesImport' (Maybe AuthKey)
uKey = lens _uKey (\ s a -> s{_uKey = a})

-- | Process calendar invites in the email and add any extracted meetings to
-- the Google Calendar for this user.
uProcessForCalendar :: Lens' UsersMessagesImport' Bool
uProcessForCalendar
  = lens _uProcessForCalendar
      (\ s a -> s{_uProcessForCalendar = a})

-- | Mark the email as permanently deleted (not TRASH) and only visible in
-- Google Apps Vault to a Vault administrator. Only used for Google Apps
-- for Work accounts.
uDeleted :: Lens' UsersMessagesImport' Bool
uDeleted = lens _uDeleted (\ s a -> s{_uDeleted = a})

-- | Ignore the Gmail spam classifier decision and never mark this email as
-- SPAM in the mailbox.
uNeverMarkSpam :: Lens' UsersMessagesImport' Bool
uNeverMarkSpam
  = lens _uNeverMarkSpam
      (\ s a -> s{_uNeverMarkSpam = a})

-- | OAuth 2.0 token for the current user.
uOAuthToken :: Lens' UsersMessagesImport' (Maybe OAuthToken)
uOAuthToken
  = lens _uOAuthToken (\ s a -> s{_uOAuthToken = a})

-- | Source for Gmail\'s internal date of the message.
uInternalDateSource :: Lens' UsersMessagesImport' UsersMessagesImportInternalDateSource
uInternalDateSource
  = lens _uInternalDateSource
      (\ s a -> s{_uInternalDateSource = a})

-- | Selector specifying which fields to include in a partial response.
uFields :: Lens' UsersMessagesImport' (Maybe Text)
uFields = lens _uFields (\ s a -> s{_uFields = a})

instance GoogleAuth UsersMessagesImport' where
        _AuthKey = uKey . _Just
        _AuthToken = uOAuthToken . _Just

instance GoogleRequest UsersMessagesImport' where
        type Rs UsersMessagesImport' = Message
        request = requestWith gmailRequest
        requestWith rq UsersMessagesImport'{..}
          = go _uUserId (Just _uProcessForCalendar)
              (Just _uDeleted)
              (Just _uNeverMarkSpam)
              (Just _uInternalDateSource)
              _uQuotaUser
              (Just _uPrettyPrint)
              _uUserIP
              _uFields
              _uKey
              _uOAuthToken
              (Just AltJSON)
              _uPayload
              _uMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersMessagesImportResource)
                      rq
