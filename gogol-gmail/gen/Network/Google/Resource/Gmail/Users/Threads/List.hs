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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the threads in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.list@.
module Network.Google.Resource.Gmail.Users.Threads.List
    (
    -- * REST Resource
      UsersThreadsListResource

    -- * Creating a Request
    , usersThreadsList
    , UsersThreadsList

    -- * Request Lenses
    , utlQ
    , utlUserId
    , utlIncludeSpamTrash
    , utlLabelIds
    , utlPageToken
    , utlMaxResults
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.list@ method which the
-- 'UsersThreadsList' request conforms to.
type UsersThreadsListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               QueryParam "q" Text :>
                 QueryParam "includeSpamTrash" Bool :>
                   QueryParams "labelIds" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListThreadsResponse

-- | Lists the threads in the user\'s mailbox.
--
-- /See:/ 'usersThreadsList' smart constructor.
data UsersThreadsList = UsersThreadsList
    { _utlQ                :: !(Maybe Text)
    , _utlUserId           :: !Text
    , _utlIncludeSpamTrash :: !Bool
    , _utlLabelIds         :: !(Maybe [Text])
    , _utlPageToken        :: !(Maybe Text)
    , _utlMaxResults       :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utlQ'
--
-- * 'utlUserId'
--
-- * 'utlIncludeSpamTrash'
--
-- * 'utlLabelIds'
--
-- * 'utlPageToken'
--
-- * 'utlMaxResults'
usersThreadsList
    :: UsersThreadsList
usersThreadsList =
    UsersThreadsList
    { _utlQ = Nothing
    , _utlUserId = "me"
    , _utlIncludeSpamTrash = False
    , _utlLabelIds = Nothing
    , _utlPageToken = Nothing
    , _utlMaxResults = 100
    }

-- | Only return threads matching the specified query. Supports the same
-- query format as the Gmail search box. For example,
-- \"from:someuser\'example.com rfc822msgid: is:unread\".
utlQ :: Lens' UsersThreadsList (Maybe Text)
utlQ = lens _utlQ (\ s a -> s{_utlQ = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utlUserId :: Lens' UsersThreadsList Text
utlUserId
  = lens _utlUserId (\ s a -> s{_utlUserId = a})

-- | Include threads from SPAM and TRASH in the results.
utlIncludeSpamTrash :: Lens' UsersThreadsList Bool
utlIncludeSpamTrash
  = lens _utlIncludeSpamTrash
      (\ s a -> s{_utlIncludeSpamTrash = a})

-- | Only return threads with labels that match all of the specified label
-- IDs.
utlLabelIds :: Lens' UsersThreadsList [Text]
utlLabelIds
  = lens _utlLabelIds (\ s a -> s{_utlLabelIds = a}) .
      _Default
      . _Coerce

-- | Page token to retrieve a specific page of results in the list.
utlPageToken :: Lens' UsersThreadsList (Maybe Text)
utlPageToken
  = lens _utlPageToken (\ s a -> s{_utlPageToken = a})

-- | Maximum number of threads to return.
utlMaxResults :: Lens' UsersThreadsList Word32
utlMaxResults
  = lens _utlMaxResults
      (\ s a -> s{_utlMaxResults = a})
      . _Coerce

instance GoogleRequest UsersThreadsList where
        type Rs UsersThreadsList = ListThreadsResponse
        requestClient UsersThreadsList{..}
          = go _utlUserId _utlQ (Just _utlIncludeSpamTrash)
              (_utlLabelIds ^. _Default)
              _utlPageToken
              (Just _utlMaxResults)
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsListResource)
                      mempty
