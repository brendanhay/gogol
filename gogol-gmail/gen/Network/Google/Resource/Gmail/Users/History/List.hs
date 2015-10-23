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
-- Module      : Network.Google.Resource.Gmail.Users.History.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the history of all changes to the given mailbox. History results
-- are returned in chronological order (increasing historyId).
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.history.list@.
module Network.Google.Resource.Gmail.Users.History.List
    (
    -- * REST Resource
      UsersHistoryListResource

    -- * Creating a Request
    , usersHistoryList
    , UsersHistoryList

    -- * Request Lenses
    , uhlUserId
    , uhlStartHistoryId
    , uhlPageToken
    , uhlLabelId
    , uhlMaxResults
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.history.list@ method which the
-- 'UsersHistoryList' request conforms to.
type UsersHistoryListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "history" :>
               QueryParam "startHistoryId" (JSONText Word64) :>
                 QueryParam "pageToken" Text :>
                   QueryParam "labelId" Text :>
                     QueryParam "maxResults" (JSONText Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListHistoryResponse

-- | Lists the history of all changes to the given mailbox. History results
-- are returned in chronological order (increasing historyId).
--
-- /See:/ 'usersHistoryList' smart constructor.
data UsersHistoryList = UsersHistoryList
    { _uhlUserId         :: !Text
    , _uhlStartHistoryId :: !(Maybe (JSONText Word64))
    , _uhlPageToken      :: !(Maybe Text)
    , _uhlLabelId        :: !(Maybe Text)
    , _uhlMaxResults     :: !(JSONText Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersHistoryList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uhlUserId'
--
-- * 'uhlStartHistoryId'
--
-- * 'uhlPageToken'
--
-- * 'uhlLabelId'
--
-- * 'uhlMaxResults'
usersHistoryList
    :: Text
    -> UsersHistoryList
usersHistoryList pUhlUserId_ =
    UsersHistoryList
    { _uhlUserId = pUhlUserId_
    , _uhlStartHistoryId = Nothing
    , _uhlPageToken = Nothing
    , _uhlLabelId = Nothing
    , _uhlMaxResults = 100
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
uhlUserId :: Lens' UsersHistoryList Text
uhlUserId
  = lens _uhlUserId (\ s a -> s{_uhlUserId = a})

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
uhlStartHistoryId :: Lens' UsersHistoryList (Maybe Word64)
uhlStartHistoryId
  = lens _uhlStartHistoryId
      (\ s a -> s{_uhlStartHistoryId = a})
      . mapping _Coerce

-- | Page token to retrieve a specific page of results in the list.
uhlPageToken :: Lens' UsersHistoryList (Maybe Text)
uhlPageToken
  = lens _uhlPageToken (\ s a -> s{_uhlPageToken = a})

-- | Only return messages with a label matching the ID.
uhlLabelId :: Lens' UsersHistoryList (Maybe Text)
uhlLabelId
  = lens _uhlLabelId (\ s a -> s{_uhlLabelId = a})

-- | The maximum number of history records to return.
uhlMaxResults :: Lens' UsersHistoryList Word32
uhlMaxResults
  = lens _uhlMaxResults
      (\ s a -> s{_uhlMaxResults = a})
      . _Coerce

instance GoogleRequest UsersHistoryList where
        type Rs UsersHistoryList = ListHistoryResponse
        requestClient UsersHistoryList{..}
          = go _uhlUserId _uhlStartHistoryId _uhlPageToken
              _uhlLabelId
              (Just _uhlMaxResults)
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersHistoryListResource)
                      mempty
