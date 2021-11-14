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
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , utlXgafv
    , utlUploadProtocol
    , utlAccessToken
    , utlUploadType
    , utlQ
    , utlUserId
    , utlIncludeSpamTrash
    , utlLabelIds
    , utlPageToken
    , utlMaxResults
    , utlCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.list@ method which the
-- 'UsersThreadsList' request conforms to.
type UsersThreadsListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "q" Text :>
                         QueryParam "includeSpamTrash" Bool :>
                           QueryParams "labelIds" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListThreadsResponse

-- | Lists the threads in the user\'s mailbox.
--
-- /See:/ 'usersThreadsList' smart constructor.
data UsersThreadsList =
  UsersThreadsList'
    { _utlXgafv :: !(Maybe Xgafv)
    , _utlUploadProtocol :: !(Maybe Text)
    , _utlAccessToken :: !(Maybe Text)
    , _utlUploadType :: !(Maybe Text)
    , _utlQ :: !(Maybe Text)
    , _utlUserId :: !Text
    , _utlIncludeSpamTrash :: !Bool
    , _utlLabelIds :: !(Maybe [Text])
    , _utlPageToken :: !(Maybe Text)
    , _utlMaxResults :: !(Textual Word32)
    , _utlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersThreadsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utlXgafv'
--
-- * 'utlUploadProtocol'
--
-- * 'utlAccessToken'
--
-- * 'utlUploadType'
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
--
-- * 'utlCallback'
usersThreadsList
    :: UsersThreadsList
usersThreadsList =
  UsersThreadsList'
    { _utlXgafv = Nothing
    , _utlUploadProtocol = Nothing
    , _utlAccessToken = Nothing
    , _utlUploadType = Nothing
    , _utlQ = Nothing
    , _utlUserId = "me"
    , _utlIncludeSpamTrash = False
    , _utlLabelIds = Nothing
    , _utlPageToken = Nothing
    , _utlMaxResults = 100
    , _utlCallback = Nothing
    }


-- | V1 error format.
utlXgafv :: Lens' UsersThreadsList (Maybe Xgafv)
utlXgafv = lens _utlXgafv (\ s a -> s{_utlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
utlUploadProtocol :: Lens' UsersThreadsList (Maybe Text)
utlUploadProtocol
  = lens _utlUploadProtocol
      (\ s a -> s{_utlUploadProtocol = a})

-- | OAuth access token.
utlAccessToken :: Lens' UsersThreadsList (Maybe Text)
utlAccessToken
  = lens _utlAccessToken
      (\ s a -> s{_utlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
utlUploadType :: Lens' UsersThreadsList (Maybe Text)
utlUploadType
  = lens _utlUploadType
      (\ s a -> s{_utlUploadType = a})

-- | Only return threads matching the specified query. Supports the same
-- query format as the Gmail search box. For example,
-- \`\"from:someuser\'example.com rfc822msgid: is:unread\"\`. Parameter
-- cannot be used when accessing the api using the gmail.metadata scope.
utlQ :: Lens' UsersThreadsList (Maybe Text)
utlQ = lens _utlQ (\ s a -> s{_utlQ = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
utlUserId :: Lens' UsersThreadsList Text
utlUserId
  = lens _utlUserId (\ s a -> s{_utlUserId = a})

-- | Include threads from \`SPAM\` and \`TRASH\` in the results.
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

-- | Maximum number of threads to return. This field defaults to 100. The
-- maximum allowed value for this field is 500.
utlMaxResults :: Lens' UsersThreadsList Word32
utlMaxResults
  = lens _utlMaxResults
      (\ s a -> s{_utlMaxResults = a})
      . _Coerce

-- | JSONP
utlCallback :: Lens' UsersThreadsList (Maybe Text)
utlCallback
  = lens _utlCallback (\ s a -> s{_utlCallback = a})

instance GoogleRequest UsersThreadsList where
        type Rs UsersThreadsList = ListThreadsResponse
        type Scopes UsersThreadsList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.metadata",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersThreadsList'{..}
          = go _utlUserId _utlXgafv _utlUploadProtocol
              _utlAccessToken
              _utlUploadType
              _utlQ
              (Just _utlIncludeSpamTrash)
              (_utlLabelIds ^. _Default)
              _utlPageToken
              (Just _utlMaxResults)
              _utlCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsListResource)
                      mempty
