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
    , uUserIp
    , uUserId
    , uKey
    , uProcessForCalendar
    , uDeleted
    , uNeverMarkSpam
    , uOauthToken
    , uInternalDateSource
    , uFields
    , uAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesImport@ which the
-- 'UsersMessagesImport'' request conforms to.
type UsersMessagesImportResource =
     Capture "userId" Text :>
       "messages" :>
         "import" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "processForCalendar" Bool :>
                     QueryParam "deleted" Bool :>
                       QueryParam "neverMarkSpam" Bool :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "internalDateSource"
                             GmailUsersMessagesImportInternalDateSource
                             :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] Message

-- | Imports a message into only this user\'s mailbox, with standard email
-- delivery scanning and classification similar to receiving via SMTP. Does
-- not send a message.
--
-- /See:/ 'usersMessagesImport'' smart constructor.
data UsersMessagesImport' = UsersMessagesImport'
    { _uQuotaUser          :: !(Maybe Text)
    , _uPrettyPrint        :: !Bool
    , _uUserIp             :: !(Maybe Text)
    , _uUserId             :: !Text
    , _uKey                :: !(Maybe Text)
    , _uProcessForCalendar :: !Bool
    , _uDeleted            :: !Bool
    , _uNeverMarkSpam      :: !Bool
    , _uOauthToken         :: !(Maybe Text)
    , _uInternalDateSource :: !GmailUsersMessagesImportInternalDateSource
    , _uFields             :: !(Maybe Text)
    , _uAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uQuotaUser'
--
-- * 'uPrettyPrint'
--
-- * 'uUserIp'
--
-- * 'uUserId'
--
-- * 'uKey'
--
-- * 'uProcessForCalendar'
--
-- * 'uDeleted'
--
-- * 'uNeverMarkSpam'
--
-- * 'uOauthToken'
--
-- * 'uInternalDateSource'
--
-- * 'uFields'
--
-- * 'uAlt'
usersMessagesImport'
    :: Text
    -> UsersMessagesImport'
usersMessagesImport' pUUserId_ =
    UsersMessagesImport'
    { _uQuotaUser = Nothing
    , _uPrettyPrint = True
    , _uUserIp = Nothing
    , _uUserId = pUUserId_
    , _uKey = Nothing
    , _uProcessForCalendar = False
    , _uDeleted = False
    , _uNeverMarkSpam = False
    , _uOauthToken = Nothing
    , _uInternalDateSource = GUMIIDSDateHeader
    , _uFields = Nothing
    , _uAlt = JSON
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
uUserIp :: Lens' UsersMessagesImport' (Maybe Text)
uUserIp = lens _uUserIp (\ s a -> s{_uUserIp = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uUserId :: Lens' UsersMessagesImport' Text
uUserId = lens _uUserId (\ s a -> s{_uUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uKey :: Lens' UsersMessagesImport' (Maybe Text)
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
uOauthToken :: Lens' UsersMessagesImport' (Maybe Text)
uOauthToken
  = lens _uOauthToken (\ s a -> s{_uOauthToken = a})

-- | Source for Gmail\'s internal date of the message.
uInternalDateSource :: Lens' UsersMessagesImport' GmailUsersMessagesImportInternalDateSource
uInternalDateSource
  = lens _uInternalDateSource
      (\ s a -> s{_uInternalDateSource = a})

-- | Selector specifying which fields to include in a partial response.
uFields :: Lens' UsersMessagesImport' (Maybe Text)
uFields = lens _uFields (\ s a -> s{_uFields = a})

-- | Data format for the response.
uAlt :: Lens' UsersMessagesImport' Alt
uAlt = lens _uAlt (\ s a -> s{_uAlt = a})

instance GoogleRequest UsersMessagesImport' where
        type Rs UsersMessagesImport' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesImport'{..}
          = go _uQuotaUser (Just _uPrettyPrint) _uUserIp
              _uUserId
              _uKey
              (Just _uProcessForCalendar)
              (Just _uDeleted)
              (Just _uNeverMarkSpam)
              _uOauthToken
              (Just _uInternalDateSource)
              _uFields
              (Just _uAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesImportResource)
                      r
                      u
