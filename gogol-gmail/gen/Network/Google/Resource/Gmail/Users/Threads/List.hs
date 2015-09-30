{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Gmail.Users.Threads.List
    (
    -- * REST Resource
      UsersThreadsListAPI

    -- * Creating a Request
    , usersThreadsList
    , UsersThreadsList

    -- * Request Lenses
    , utlQuotaUser
    , utlPrettyPrint
    , utlUserIp
    , utlQ
    , utlUserId
    , utlKey
    , utlIncludeSpamTrash
    , utlLabelIds
    , utlPageToken
    , utlOauthToken
    , utlMaxResults
    , utlFields
    , utlAlt
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsList@ which the
-- 'UsersThreadsList' request conforms to.
type UsersThreadsListAPI =
     Capture "userId" Text :>
       "threads" :>
         QueryParam "q" Text :>
           QueryParam "includeSpamTrash" Bool :>
             QueryParams "labelIds" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   Get '[JSON] ListThreadsResponse

-- | Lists the threads in the user\'s mailbox.
--
-- /See:/ 'usersThreadsList' smart constructor.
data UsersThreadsList = UsersThreadsList
    { _utlQuotaUser        :: !(Maybe Text)
    , _utlPrettyPrint      :: !Bool
    , _utlUserIp           :: !(Maybe Text)
    , _utlQ                :: !(Maybe Text)
    , _utlUserId           :: !Text
    , _utlKey              :: !(Maybe Text)
    , _utlIncludeSpamTrash :: !Bool
    , _utlLabelIds         :: !(Maybe Text)
    , _utlPageToken        :: !(Maybe Text)
    , _utlOauthToken       :: !(Maybe Text)
    , _utlMaxResults       :: !Word32
    , _utlFields           :: !(Maybe Text)
    , _utlAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utlQuotaUser'
--
-- * 'utlPrettyPrint'
--
-- * 'utlUserIp'
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
-- * 'utlOauthToken'
--
-- * 'utlMaxResults'
--
-- * 'utlFields'
--
-- * 'utlAlt'
usersThreadsList
    :: Text
    -> UsersThreadsList
usersThreadsList pUtlUserId_ =
    UsersThreadsList
    { _utlQuotaUser = Nothing
    , _utlPrettyPrint = True
    , _utlUserIp = Nothing
    , _utlQ = Nothing
    , _utlUserId = pUtlUserId_
    , _utlKey = Nothing
    , _utlIncludeSpamTrash = False
    , _utlLabelIds = Nothing
    , _utlPageToken = Nothing
    , _utlOauthToken = Nothing
    , _utlMaxResults = 100
    , _utlFields = Nothing
    , _utlAlt = "json"
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
utlUserIp :: Lens' UsersThreadsList' (Maybe Text)
utlUserIp
  = lens _utlUserIp (\ s a -> s{_utlUserIp = a})

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
utlKey :: Lens' UsersThreadsList' (Maybe Text)
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
utlOauthToken :: Lens' UsersThreadsList' (Maybe Text)
utlOauthToken
  = lens _utlOauthToken
      (\ s a -> s{_utlOauthToken = a})

-- | Maximum number of threads to return.
utlMaxResults :: Lens' UsersThreadsList' Word32
utlMaxResults
  = lens _utlMaxResults
      (\ s a -> s{_utlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
utlFields :: Lens' UsersThreadsList' (Maybe Text)
utlFields
  = lens _utlFields (\ s a -> s{_utlFields = a})

-- | Data format for the response.
utlAlt :: Lens' UsersThreadsList' Text
utlAlt = lens _utlAlt (\ s a -> s{_utlAlt = a})

instance GoogleRequest UsersThreadsList' where
        type Rs UsersThreadsList' = ListThreadsResponse
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsList{..}
          = go _utlQuotaUser _utlPrettyPrint _utlUserIp _utlQ
              _utlUserId
              _utlKey
              (Just _utlIncludeSpamTrash)
              _utlLabelIds
              _utlPageToken
              _utlOauthToken
              (Just _utlMaxResults)
              _utlFields
              _utlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersThreadsListAPI)
                      r
                      u
