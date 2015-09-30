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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the messages in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesList@.
module Network.Google.Resource.Gmail.Users.Messages.List
    (
    -- * REST Resource
      UsersMessagesListResource

    -- * Creating a Request
    , usersMessagesList'
    , UsersMessagesList'

    -- * Request Lenses
    , umlQuotaUser
    , umlPrettyPrint
    , umlUserIp
    , umlQ
    , umlUserId
    , umlKey
    , umlIncludeSpamTrash
    , umlLabelIds
    , umlPageToken
    , umlOauthToken
    , umlMaxResults
    , umlFields
    , umlAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesList@ which the
-- 'UsersMessagesList'' request conforms to.
type UsersMessagesListResource =
     Capture "userId" Text :>
       "messages" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "q" Text :>
                 QueryParam "key" Text :>
                   QueryParam "includeSpamTrash" Bool :>
                     QueryParams "labelIds" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] ListMessagesResponse

-- | Lists the messages in the user\'s mailbox.
--
-- /See:/ 'usersMessagesList'' smart constructor.
data UsersMessagesList' = UsersMessagesList'
    { _umlQuotaUser        :: !(Maybe Text)
    , _umlPrettyPrint      :: !Bool
    , _umlUserIp           :: !(Maybe Text)
    , _umlQ                :: !(Maybe Text)
    , _umlUserId           :: !Text
    , _umlKey              :: !(Maybe Text)
    , _umlIncludeSpamTrash :: !Bool
    , _umlLabelIds         :: !(Maybe Text)
    , _umlPageToken        :: !(Maybe Text)
    , _umlOauthToken       :: !(Maybe Text)
    , _umlMaxResults       :: !Word32
    , _umlFields           :: !(Maybe Text)
    , _umlAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlQuotaUser'
--
-- * 'umlPrettyPrint'
--
-- * 'umlUserIp'
--
-- * 'umlQ'
--
-- * 'umlUserId'
--
-- * 'umlKey'
--
-- * 'umlIncludeSpamTrash'
--
-- * 'umlLabelIds'
--
-- * 'umlPageToken'
--
-- * 'umlOauthToken'
--
-- * 'umlMaxResults'
--
-- * 'umlFields'
--
-- * 'umlAlt'
usersMessagesList'
    :: Text
    -> UsersMessagesList'
usersMessagesList' pUmlUserId_ =
    UsersMessagesList'
    { _umlQuotaUser = Nothing
    , _umlPrettyPrint = True
    , _umlUserIp = Nothing
    , _umlQ = Nothing
    , _umlUserId = pUmlUserId_
    , _umlKey = Nothing
    , _umlIncludeSpamTrash = False
    , _umlLabelIds = Nothing
    , _umlPageToken = Nothing
    , _umlOauthToken = Nothing
    , _umlMaxResults = 100
    , _umlFields = Nothing
    , _umlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umlQuotaUser :: Lens' UsersMessagesList' (Maybe Text)
umlQuotaUser
  = lens _umlQuotaUser (\ s a -> s{_umlQuotaUser = a})

-- | Returns response with indentations and line breaks.
umlPrettyPrint :: Lens' UsersMessagesList' Bool
umlPrettyPrint
  = lens _umlPrettyPrint
      (\ s a -> s{_umlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umlUserIp :: Lens' UsersMessagesList' (Maybe Text)
umlUserIp
  = lens _umlUserIp (\ s a -> s{_umlUserIp = a})

-- | Only return messages matching the specified query. Supports the same
-- query format as the Gmail search box. For example,
-- \"from:someuser\'example.com rfc822msgid: is:unread\".
umlQ :: Lens' UsersMessagesList' (Maybe Text)
umlQ = lens _umlQ (\ s a -> s{_umlQ = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umlUserId :: Lens' UsersMessagesList' Text
umlUserId
  = lens _umlUserId (\ s a -> s{_umlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umlKey :: Lens' UsersMessagesList' (Maybe Text)
umlKey = lens _umlKey (\ s a -> s{_umlKey = a})

-- | Include messages from SPAM and TRASH in the results.
umlIncludeSpamTrash :: Lens' UsersMessagesList' Bool
umlIncludeSpamTrash
  = lens _umlIncludeSpamTrash
      (\ s a -> s{_umlIncludeSpamTrash = a})

-- | Only return messages with labels that match all of the specified label
-- IDs.
umlLabelIds :: Lens' UsersMessagesList' (Maybe Text)
umlLabelIds
  = lens _umlLabelIds (\ s a -> s{_umlLabelIds = a})

-- | Page token to retrieve a specific page of results in the list.
umlPageToken :: Lens' UsersMessagesList' (Maybe Text)
umlPageToken
  = lens _umlPageToken (\ s a -> s{_umlPageToken = a})

-- | OAuth 2.0 token for the current user.
umlOauthToken :: Lens' UsersMessagesList' (Maybe Text)
umlOauthToken
  = lens _umlOauthToken
      (\ s a -> s{_umlOauthToken = a})

-- | Maximum number of messages to return.
umlMaxResults :: Lens' UsersMessagesList' Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
umlFields :: Lens' UsersMessagesList' (Maybe Text)
umlFields
  = lens _umlFields (\ s a -> s{_umlFields = a})

-- | Data format for the response.
umlAlt :: Lens' UsersMessagesList' Alt
umlAlt = lens _umlAlt (\ s a -> s{_umlAlt = a})

instance GoogleRequest UsersMessagesList' where
        type Rs UsersMessagesList' = ListMessagesResponse
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesList'{..}
          = go _umlQuotaUser (Just _umlPrettyPrint) _umlUserIp
              _umlQ
              _umlUserId
              _umlKey
              (Just _umlIncludeSpamTrash)
              _umlLabelIds
              _umlPageToken
              _umlOauthToken
              (Just _umlMaxResults)
              _umlFields
              (Just _umlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesListResource)
                      r
                      u
