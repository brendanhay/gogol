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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified message.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesGet@.
module Network.Google.Resource.Gmail.Users.Messages.Get
    (
    -- * REST Resource
      UsersMessagesGetResource

    -- * Creating a Request
    , usersMessagesGet'
    , UsersMessagesGet'

    -- * Request Lenses
    , umgQuotaUser
    , umgPrettyPrint
    , umgUserIP
    , umgFormat
    , umgUserId
    , umgKey
    , umgId
    , umgOAuthToken
    , umgMetadataHeaders
    , umgFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesGet@ which the
-- 'UsersMessagesGet'' request conforms to.
type UsersMessagesGetResource =
     Capture "userId" Text :>
       "messages" :>
         Capture "id" Text :>
           QueryParam "format" GmailUsersMessagesGetFormat :>
             QueryParams "metadataHeaders" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Message

-- | Gets the specified message.
--
-- /See:/ 'usersMessagesGet'' smart constructor.
data UsersMessagesGet' = UsersMessagesGet'
    { _umgQuotaUser       :: !(Maybe Text)
    , _umgPrettyPrint     :: !Bool
    , _umgUserIP          :: !(Maybe Text)
    , _umgFormat          :: !GmailUsersMessagesGetFormat
    , _umgUserId          :: !Text
    , _umgKey             :: !(Maybe Key)
    , _umgId              :: !Text
    , _umgOAuthToken      :: !(Maybe OAuthToken)
    , _umgMetadataHeaders :: !(Maybe Text)
    , _umgFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umgQuotaUser'
--
-- * 'umgPrettyPrint'
--
-- * 'umgUserIP'
--
-- * 'umgFormat'
--
-- * 'umgUserId'
--
-- * 'umgKey'
--
-- * 'umgId'
--
-- * 'umgOAuthToken'
--
-- * 'umgMetadataHeaders'
--
-- * 'umgFields'
usersMessagesGet'
    :: Text -- ^ 'id'
    -> Text
    -> UsersMessagesGet'
usersMessagesGet' pUmgUserId_ pUmgId_ =
    UsersMessagesGet'
    { _umgQuotaUser = Nothing
    , _umgPrettyPrint = True
    , _umgUserIP = Nothing
    , _umgFormat = GUMGFFull
    , _umgUserId = pUmgUserId_
    , _umgKey = Nothing
    , _umgId = pUmgId_
    , _umgOAuthToken = Nothing
    , _umgMetadataHeaders = Nothing
    , _umgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umgQuotaUser :: Lens' UsersMessagesGet' (Maybe Text)
umgQuotaUser
  = lens _umgQuotaUser (\ s a -> s{_umgQuotaUser = a})

-- | Returns response with indentations and line breaks.
umgPrettyPrint :: Lens' UsersMessagesGet' Bool
umgPrettyPrint
  = lens _umgPrettyPrint
      (\ s a -> s{_umgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umgUserIP :: Lens' UsersMessagesGet' (Maybe Text)
umgUserIP
  = lens _umgUserIP (\ s a -> s{_umgUserIP = a})

-- | The format to return the message in.
umgFormat :: Lens' UsersMessagesGet' GmailUsersMessagesGetFormat
umgFormat
  = lens _umgFormat (\ s a -> s{_umgFormat = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umgUserId :: Lens' UsersMessagesGet' Text
umgUserId
  = lens _umgUserId (\ s a -> s{_umgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umgKey :: Lens' UsersMessagesGet' (Maybe Key)
umgKey = lens _umgKey (\ s a -> s{_umgKey = a})

-- | The ID of the message to retrieve.
umgId :: Lens' UsersMessagesGet' Text
umgId = lens _umgId (\ s a -> s{_umgId = a})

-- | OAuth 2.0 token for the current user.
umgOAuthToken :: Lens' UsersMessagesGet' (Maybe OAuthToken)
umgOAuthToken
  = lens _umgOAuthToken
      (\ s a -> s{_umgOAuthToken = a})

-- | When given and format is METADATA, only include headers specified.
umgMetadataHeaders :: Lens' UsersMessagesGet' (Maybe Text)
umgMetadataHeaders
  = lens _umgMetadataHeaders
      (\ s a -> s{_umgMetadataHeaders = a})

-- | Selector specifying which fields to include in a partial response.
umgFields :: Lens' UsersMessagesGet' (Maybe Text)
umgFields
  = lens _umgFields (\ s a -> s{_umgFields = a})

instance GoogleAuth UsersMessagesGet' where
        authKey = umgKey . _Just
        authToken = umgOAuthToken . _Just

instance GoogleRequest UsersMessagesGet' where
        type Rs UsersMessagesGet' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesGet'{..}
          = go (Just _umgFormat) _umgMetadataHeaders _umgUserId
              _umgId
              _umgQuotaUser
              (Just _umgPrettyPrint)
              _umgUserIP
              _umgFields
              _umgKey
              _umgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesGetResource)
                      r
                      u
