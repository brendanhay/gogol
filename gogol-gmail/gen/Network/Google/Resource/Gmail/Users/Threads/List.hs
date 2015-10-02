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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the threads in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersThreadsList@.
module Network.Google.Resource.Gmail.Users.Threads.List
    (
    -- * REST Resource
      UsersThreadsListResource

    -- * Creating a Request
    , usersThreadsList'
    , UsersThreadsList'

    -- * Request Lenses
    , utlQuotaUser
    , utlPrettyPrint
    , utlUserIP
    , utlQ
    , utlUserId
    , utlKey
    , utlIncludeSpamTrash
    , utlLabelIds
    , utlPageToken
    , utlOAuthToken
    , utlMaxResults
    , utlFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsList@ which the
-- 'UsersThreadsList'' request conforms to.
type UsersThreadsListResource =
     Capture "userId" Text :>
       "threads" :>
         QueryParam "includeSpamTrash" Bool :>
           QueryParams "labelIds" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "q" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListThreadsResponse

-- | Lists the threads in the user\'s mailbox.
--
-- /See:/ 'usersThreadsList'' smart constructor.
data UsersThreadsList' = UsersThreadsList'
    { _utlQuotaUser        :: !(Maybe Text)
    , _utlPrettyPrint      :: !Bool
    , _utlUserIP           :: !(Maybe Text)
    , _utlQ                :: !(Maybe Text)
    , _utlUserId           :: !Text
    , _utlKey              :: !(Maybe Key)
    , _utlIncludeSpamTrash :: !Bool
    , _utlLabelIds         :: !(Maybe Text)
    , _utlPageToken        :: !(Maybe Text)
    , _utlOAuthToken       :: !(Maybe OAuthToken)
    , _utlMaxResults       :: !Word32
    , _utlFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utlQuotaUser'
--
-- * 'utlPrettyPrint'
--
-- * 'utlUserIP'
--
-- * 'utlQ'
--
-- * 'utlUserId'
--
-- * 'utlKey'
--
-- * 'utlIncludeSpamTrash'
--
-- * 'utlLabelIds'
--
-- * 'utlPageToken'
--
-- * 'utlOAuthToken'
--
-- * 'utlMaxResults'
--
-- * 'utlFields'
usersThreadsList'
    :: Text
    -> UsersThreadsList'
usersThreadsList' pUtlUserId_ =
    UsersThreadsList'
    { _utlQuotaUser = Nothing
    , _utlPrettyPrint = True
    , _utlUserIP = Nothing
    , _utlQ = Nothing
    , _utlUserId = pUtlUserId_
    , _utlKey = Nothing
    , _utlIncludeSpamTrash = False
    , _utlLabelIds = Nothing
    , _utlPageToken = Nothing
    , _utlOAuthToken = Nothing
    , _utlMaxResults = 100
    , _utlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
utlQuotaUser :: Lens' UsersThreadsList' (Maybe Text)
utlQuotaUser
  = lens _utlQuotaUser (\ s a -> s{_utlQuotaUser = a})

-- | Returns response with indentations and line breaks.
utlPrettyPrint :: Lens' UsersThreadsList' Bool
utlPrettyPrint
  = lens _utlPrettyPrint
      (\ s a -> s{_utlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
utlUserIP :: Lens' UsersThreadsList' (Maybe Text)
utlUserIP
  = lens _utlUserIP (\ s a -> s{_utlUserIP = a})

-- | Only return threads matching the specified query. Supports the same
-- query format as the Gmail search box. For example,
-- \"from:someuser\'example.com rfc822msgid: is:unread\".
utlQ :: Lens' UsersThreadsList' (Maybe Text)
utlQ = lens _utlQ (\ s a -> s{_utlQ = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utlUserId :: Lens' UsersThreadsList' Text
utlUserId
  = lens _utlUserId (\ s a -> s{_utlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
utlKey :: Lens' UsersThreadsList' (Maybe Key)
utlKey = lens _utlKey (\ s a -> s{_utlKey = a})

-- | Include threads from SPAM and TRASH in the results.
utlIncludeSpamTrash :: Lens' UsersThreadsList' Bool
utlIncludeSpamTrash
  = lens _utlIncludeSpamTrash
      (\ s a -> s{_utlIncludeSpamTrash = a})

-- | Only return threads with labels that match all of the specified label
-- IDs.
utlLabelIds :: Lens' UsersThreadsList' (Maybe Text)
utlLabelIds
  = lens _utlLabelIds (\ s a -> s{_utlLabelIds = a})

-- | Page token to retrieve a specific page of results in the list.
utlPageToken :: Lens' UsersThreadsList' (Maybe Text)
utlPageToken
  = lens _utlPageToken (\ s a -> s{_utlPageToken = a})

-- | OAuth 2.0 token for the current user.
utlOAuthToken :: Lens' UsersThreadsList' (Maybe OAuthToken)
utlOAuthToken
  = lens _utlOAuthToken
      (\ s a -> s{_utlOAuthToken = a})

-- | Maximum number of threads to return.
utlMaxResults :: Lens' UsersThreadsList' Word32
utlMaxResults
  = lens _utlMaxResults
      (\ s a -> s{_utlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
utlFields :: Lens' UsersThreadsList' (Maybe Text)
utlFields
  = lens _utlFields (\ s a -> s{_utlFields = a})

instance GoogleAuth UsersThreadsList' where
        authKey = utlKey . _Just
        authToken = utlOAuthToken . _Just

instance GoogleRequest UsersThreadsList' where
        type Rs UsersThreadsList' = ListThreadsResponse
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsList'{..}
          = go (Just _utlIncludeSpamTrash) _utlLabelIds
              (Just _utlMaxResults)
              _utlPageToken
              _utlQ
              _utlUserId
              _utlQuotaUser
              (Just _utlPrettyPrint)
              _utlUserIP
              _utlFields
              _utlKey
              _utlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersThreadsListResource)
                      r
                      u
