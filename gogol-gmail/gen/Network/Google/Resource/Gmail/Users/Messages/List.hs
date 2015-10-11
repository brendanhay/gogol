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
    , umlUserIP
    , umlQ
    , umlUserId
    , umlKey
    , umlIncludeSpamTrash
    , umlLabelIds
    , umlPageToken
    , umlOAuthToken
    , umlMaxResults
    , umlFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesList@ method which the
-- 'UsersMessagesList'' request conforms to.
type UsersMessagesListResource =
     Capture "userId" Text :>
       "messages" :>
         QueryParam "q" Text :>
           QueryParam "includeSpamTrash" Bool :>
             QueryParams "labelIds" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListMessagesResponse

-- | Lists the messages in the user\'s mailbox.
--
-- /See:/ 'usersMessagesList'' smart constructor.
data UsersMessagesList' = UsersMessagesList'
    { _umlQuotaUser        :: !(Maybe Text)
    , _umlPrettyPrint      :: !Bool
    , _umlUserIP           :: !(Maybe Text)
    , _umlQ                :: !(Maybe Text)
    , _umlUserId           :: !Text
    , _umlKey              :: !(Maybe AuthKey)
    , _umlIncludeSpamTrash :: !Bool
    , _umlLabelIds         :: !(Maybe [Text])
    , _umlPageToken        :: !(Maybe Text)
    , _umlOAuthToken       :: !(Maybe OAuthToken)
    , _umlMaxResults       :: !Word32
    , _umlFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlQuotaUser'
--
-- * 'umlPrettyPrint'
--
-- * 'umlUserIP'
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
-- * 'umlOAuthToken'
--
-- * 'umlMaxResults'
--
-- * 'umlFields'
usersMessagesList'
    :: Text
    -> UsersMessagesList'
usersMessagesList' pUmlUserId_ =
    UsersMessagesList'
    { _umlQuotaUser = Nothing
    , _umlPrettyPrint = True
    , _umlUserIP = Nothing
    , _umlQ = Nothing
    , _umlUserId = pUmlUserId_
    , _umlKey = Nothing
    , _umlIncludeSpamTrash = False
    , _umlLabelIds = Nothing
    , _umlPageToken = Nothing
    , _umlOAuthToken = Nothing
    , _umlMaxResults = 100
    , _umlFields = Nothing
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
umlUserIP :: Lens' UsersMessagesList' (Maybe Text)
umlUserIP
  = lens _umlUserIP (\ s a -> s{_umlUserIP = a})

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
umlKey :: Lens' UsersMessagesList' (Maybe AuthKey)
umlKey = lens _umlKey (\ s a -> s{_umlKey = a})

-- | Include messages from SPAM and TRASH in the results.
umlIncludeSpamTrash :: Lens' UsersMessagesList' Bool
umlIncludeSpamTrash
  = lens _umlIncludeSpamTrash
      (\ s a -> s{_umlIncludeSpamTrash = a})

-- | Only return messages with labels that match all of the specified label
-- IDs.
umlLabelIds :: Lens' UsersMessagesList' [Text]
umlLabelIds
  = lens _umlLabelIds (\ s a -> s{_umlLabelIds = a}) .
      _Default
      . _Coerce

-- | Page token to retrieve a specific page of results in the list.
umlPageToken :: Lens' UsersMessagesList' (Maybe Text)
umlPageToken
  = lens _umlPageToken (\ s a -> s{_umlPageToken = a})

-- | OAuth 2.0 token for the current user.
umlOAuthToken :: Lens' UsersMessagesList' (Maybe OAuthToken)
umlOAuthToken
  = lens _umlOAuthToken
      (\ s a -> s{_umlOAuthToken = a})

-- | Maximum number of messages to return.
umlMaxResults :: Lens' UsersMessagesList' Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
umlFields :: Lens' UsersMessagesList' (Maybe Text)
umlFields
  = lens _umlFields (\ s a -> s{_umlFields = a})

instance GoogleAuth UsersMessagesList' where
        _AuthKey = umlKey . _Just
        _AuthToken = umlOAuthToken . _Just

instance GoogleRequest UsersMessagesList' where
        type Rs UsersMessagesList' = ListMessagesResponse
        request = requestWith gmailRequest
        requestWith rq UsersMessagesList'{..}
          = go _umlUserId _umlQ (Just _umlIncludeSpamTrash)
              (_umlLabelIds ^. _Default)
              _umlPageToken
              (Just _umlMaxResults)
              _umlQuotaUser
              (Just _umlPrettyPrint)
              _umlUserIP
              _umlFields
              _umlKey
              _umlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersMessagesListResource)
                      rq
