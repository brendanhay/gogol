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
-- Module      : Network.Google.Resource.Gmail.Users.History.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the history of all changes to the given mailbox. History results
-- are returned in chronological order (increasing historyId).
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersHistoryList@.
module Network.Google.Resource.Gmail.Users.History.List
    (
    -- * REST Resource
      UsersHistoryListResource

    -- * Creating a Request
    , usersHistoryList'
    , UsersHistoryList'

    -- * Request Lenses
    , uhlQuotaUser
    , uhlPrettyPrint
    , uhlUserIP
    , uhlUserId
    , uhlKey
    , uhlStartHistoryId
    , uhlPageToken
    , uhlOAuthToken
    , uhlLabelId
    , uhlMaxResults
    , uhlFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersHistoryList@ which the
-- 'UsersHistoryList'' request conforms to.
type UsersHistoryListResource =
     Capture "userId" Text :>
       "history" :>
         QueryParam "startHistoryId" Word64 :>
           QueryParam "pageToken" Text :>
             QueryParam "labelId" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListHistoryResponse

-- | Lists the history of all changes to the given mailbox. History results
-- are returned in chronological order (increasing historyId).
--
-- /See:/ 'usersHistoryList'' smart constructor.
data UsersHistoryList' = UsersHistoryList'
    { _uhlQuotaUser      :: !(Maybe Text)
    , _uhlPrettyPrint    :: !Bool
    , _uhlUserIP         :: !(Maybe Text)
    , _uhlUserId         :: !Text
    , _uhlKey            :: !(Maybe Key)
    , _uhlStartHistoryId :: !(Maybe Word64)
    , _uhlPageToken      :: !(Maybe Text)
    , _uhlOAuthToken     :: !(Maybe OAuthToken)
    , _uhlLabelId        :: !(Maybe Text)
    , _uhlMaxResults     :: !Word32
    , _uhlFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersHistoryList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uhlQuotaUser'
--
-- * 'uhlPrettyPrint'
--
-- * 'uhlUserIP'
--
-- * 'uhlUserId'
--
-- * 'uhlKey'
--
-- * 'uhlStartHistoryId'
--
-- * 'uhlPageToken'
--
-- * 'uhlOAuthToken'
--
-- * 'uhlLabelId'
--
-- * 'uhlMaxResults'
--
-- * 'uhlFields'
usersHistoryList'
    :: Text
    -> UsersHistoryList'
usersHistoryList' pUhlUserId_ =
    UsersHistoryList'
    { _uhlQuotaUser = Nothing
    , _uhlPrettyPrint = True
    , _uhlUserIP = Nothing
    , _uhlUserId = pUhlUserId_
    , _uhlKey = Nothing
    , _uhlStartHistoryId = Nothing
    , _uhlPageToken = Nothing
    , _uhlOAuthToken = Nothing
    , _uhlLabelId = Nothing
    , _uhlMaxResults = 100
    , _uhlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uhlQuotaUser :: Lens' UsersHistoryList' (Maybe Text)
uhlQuotaUser
  = lens _uhlQuotaUser (\ s a -> s{_uhlQuotaUser = a})

-- | Returns response with indentations and line breaks.
uhlPrettyPrint :: Lens' UsersHistoryList' Bool
uhlPrettyPrint
  = lens _uhlPrettyPrint
      (\ s a -> s{_uhlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uhlUserIP :: Lens' UsersHistoryList' (Maybe Text)
uhlUserIP
  = lens _uhlUserIP (\ s a -> s{_uhlUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uhlUserId :: Lens' UsersHistoryList' Text
uhlUserId
  = lens _uhlUserId (\ s a -> s{_uhlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uhlKey :: Lens' UsersHistoryList' (Maybe Key)
uhlKey = lens _uhlKey (\ s a -> s{_uhlKey = a})

-- | Required. Returns history records after the specified startHistoryId.
-- The supplied startHistoryId should be obtained from the historyId of a
-- message, thread, or previous list response. History IDs increase
-- chronologically but are not contiguous with random gaps in between valid
-- IDs. Supplying an invalid or out of date startHistoryId typically
-- returns an HTTP 404 error code. A historyId is typically valid for at
-- least a week, but in some rare circumstances may be valid for only a few
-- hours. If you receive an HTTP 404 error response, your application
-- should perform a full sync. If you receive no nextPageToken in the
-- response, there are no updates to retrieve and you can store the
-- returned historyId for a future request.
uhlStartHistoryId :: Lens' UsersHistoryList' (Maybe Word64)
uhlStartHistoryId
  = lens _uhlStartHistoryId
      (\ s a -> s{_uhlStartHistoryId = a})

-- | Page token to retrieve a specific page of results in the list.
uhlPageToken :: Lens' UsersHistoryList' (Maybe Text)
uhlPageToken
  = lens _uhlPageToken (\ s a -> s{_uhlPageToken = a})

-- | OAuth 2.0 token for the current user.
uhlOAuthToken :: Lens' UsersHistoryList' (Maybe OAuthToken)
uhlOAuthToken
  = lens _uhlOAuthToken
      (\ s a -> s{_uhlOAuthToken = a})

-- | Only return messages with a label matching the ID.
uhlLabelId :: Lens' UsersHistoryList' (Maybe Text)
uhlLabelId
  = lens _uhlLabelId (\ s a -> s{_uhlLabelId = a})

-- | The maximum number of history records to return.
uhlMaxResults :: Lens' UsersHistoryList' Word32
uhlMaxResults
  = lens _uhlMaxResults
      (\ s a -> s{_uhlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
uhlFields :: Lens' UsersHistoryList' (Maybe Text)
uhlFields
  = lens _uhlFields (\ s a -> s{_uhlFields = a})

instance GoogleAuth UsersHistoryList' where
        authKey = uhlKey . _Just
        authToken = uhlOAuthToken . _Just

instance GoogleRequest UsersHistoryList' where
        type Rs UsersHistoryList' = ListHistoryResponse
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersHistoryList'{..}
          = go _uhlUserId _uhlStartHistoryId _uhlPageToken
              _uhlLabelId
              (Just _uhlMaxResults)
              _uhlQuotaUser
              (Just _uhlPrettyPrint)
              _uhlUserIP
              _uhlFields
              _uhlKey
              _uhlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersHistoryListResource)
                      r
                      u
