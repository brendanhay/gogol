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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the drafts in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.list@.
module Network.Google.Resource.Gmail.Users.Drafts.List
    (
    -- * REST Resource
      UsersDraftsListResource

    -- * Creating a Request
    , usersDraftsList
    , UsersDraftsList

    -- * Request Lenses
    , udlXgafv
    , udlUploadProtocol
    , udlAccessToken
    , udlUploadType
    , udlQ
    , udlUserId
    , udlIncludeSpamTrash
    , udlPageToken
    , udlMaxResults
    , udlCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.list@ method which the
-- 'UsersDraftsList' request conforms to.
type UsersDraftsListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "q" Text :>
                         QueryParam "includeSpamTrash" Bool :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListDraftsResponse

-- | Lists the drafts in the user\'s mailbox.
--
-- /See:/ 'usersDraftsList' smart constructor.
data UsersDraftsList =
  UsersDraftsList'
    { _udlXgafv :: !(Maybe Xgafv)
    , _udlUploadProtocol :: !(Maybe Text)
    , _udlAccessToken :: !(Maybe Text)
    , _udlUploadType :: !(Maybe Text)
    , _udlQ :: !(Maybe Text)
    , _udlUserId :: !Text
    , _udlIncludeSpamTrash :: !Bool
    , _udlPageToken :: !(Maybe Text)
    , _udlMaxResults :: !(Textual Word32)
    , _udlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDraftsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udlXgafv'
--
-- * 'udlUploadProtocol'
--
-- * 'udlAccessToken'
--
-- * 'udlUploadType'
--
-- * 'udlQ'
--
-- * 'udlUserId'
--
-- * 'udlIncludeSpamTrash'
--
-- * 'udlPageToken'
--
-- * 'udlMaxResults'
--
-- * 'udlCallback'
usersDraftsList
    :: UsersDraftsList
usersDraftsList =
  UsersDraftsList'
    { _udlXgafv = Nothing
    , _udlUploadProtocol = Nothing
    , _udlAccessToken = Nothing
    , _udlUploadType = Nothing
    , _udlQ = Nothing
    , _udlUserId = "me"
    , _udlIncludeSpamTrash = False
    , _udlPageToken = Nothing
    , _udlMaxResults = 100
    , _udlCallback = Nothing
    }


-- | V1 error format.
udlXgafv :: Lens' UsersDraftsList (Maybe Xgafv)
udlXgafv = lens _udlXgafv (\ s a -> s{_udlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udlUploadProtocol :: Lens' UsersDraftsList (Maybe Text)
udlUploadProtocol
  = lens _udlUploadProtocol
      (\ s a -> s{_udlUploadProtocol = a})

-- | OAuth access token.
udlAccessToken :: Lens' UsersDraftsList (Maybe Text)
udlAccessToken
  = lens _udlAccessToken
      (\ s a -> s{_udlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udlUploadType :: Lens' UsersDraftsList (Maybe Text)
udlUploadType
  = lens _udlUploadType
      (\ s a -> s{_udlUploadType = a})

-- | Only return draft messages matching the specified query. Supports the
-- same query format as the Gmail search box. For example,
-- \`\"from:someuser\'example.com rfc822msgid: is:unread\"\`.
udlQ :: Lens' UsersDraftsList (Maybe Text)
udlQ = lens _udlQ (\ s a -> s{_udlQ = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
udlUserId :: Lens' UsersDraftsList Text
udlUserId
  = lens _udlUserId (\ s a -> s{_udlUserId = a})

-- | Include drafts from \`SPAM\` and \`TRASH\` in the results.
udlIncludeSpamTrash :: Lens' UsersDraftsList Bool
udlIncludeSpamTrash
  = lens _udlIncludeSpamTrash
      (\ s a -> s{_udlIncludeSpamTrash = a})

-- | Page token to retrieve a specific page of results in the list.
udlPageToken :: Lens' UsersDraftsList (Maybe Text)
udlPageToken
  = lens _udlPageToken (\ s a -> s{_udlPageToken = a})

-- | Maximum number of drafts to return. This field defaults to 100. The
-- maximum allowed value for this field is 500.
udlMaxResults :: Lens' UsersDraftsList Word32
udlMaxResults
  = lens _udlMaxResults
      (\ s a -> s{_udlMaxResults = a})
      . _Coerce

-- | JSONP
udlCallback :: Lens' UsersDraftsList (Maybe Text)
udlCallback
  = lens _udlCallback (\ s a -> s{_udlCallback = a})

instance GoogleRequest UsersDraftsList where
        type Rs UsersDraftsList = ListDraftsResponse
        type Scopes UsersDraftsList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersDraftsList'{..}
          = go _udlUserId _udlXgafv _udlUploadProtocol
              _udlAccessToken
              _udlUploadType
              _udlQ
              (Just _udlIncludeSpamTrash)
              _udlPageToken
              (Just _udlMaxResults)
              _udlCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsListResource)
                      mempty
