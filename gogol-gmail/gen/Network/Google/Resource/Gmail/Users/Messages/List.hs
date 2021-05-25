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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the messages in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.list@.
module Network.Google.Resource.Gmail.Users.Messages.List
    (
    -- * REST Resource
      UsersMessagesListResource

    -- * Creating a Request
    , usersMessagesList
    , UsersMessagesList

    -- * Request Lenses
    , umlXgafv
    , umlUploadProtocol
    , umlAccessToken
    , umlUploadType
    , umlQ
    , umlUserId
    , umlIncludeSpamTrash
    , umlLabelIds
    , umlPageToken
    , umlMaxResults
    , umlCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.list@ method which the
-- 'UsersMessagesList' request conforms to.
type UsersMessagesListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
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
                                     Get '[JSON] ListMessagesResponse

-- | Lists the messages in the user\'s mailbox.
--
-- /See:/ 'usersMessagesList' smart constructor.
data UsersMessagesList =
  UsersMessagesList'
    { _umlXgafv :: !(Maybe Xgafv)
    , _umlUploadProtocol :: !(Maybe Text)
    , _umlAccessToken :: !(Maybe Text)
    , _umlUploadType :: !(Maybe Text)
    , _umlQ :: !(Maybe Text)
    , _umlUserId :: !Text
    , _umlIncludeSpamTrash :: !Bool
    , _umlLabelIds :: !(Maybe [Text])
    , _umlPageToken :: !(Maybe Text)
    , _umlMaxResults :: !(Textual Word32)
    , _umlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlXgafv'
--
-- * 'umlUploadProtocol'
--
-- * 'umlAccessToken'
--
-- * 'umlUploadType'
--
-- * 'umlQ'
--
-- * 'umlUserId'
--
-- * 'umlIncludeSpamTrash'
--
-- * 'umlLabelIds'
--
-- * 'umlPageToken'
--
-- * 'umlMaxResults'
--
-- * 'umlCallback'
usersMessagesList
    :: UsersMessagesList
usersMessagesList =
  UsersMessagesList'
    { _umlXgafv = Nothing
    , _umlUploadProtocol = Nothing
    , _umlAccessToken = Nothing
    , _umlUploadType = Nothing
    , _umlQ = Nothing
    , _umlUserId = "me"
    , _umlIncludeSpamTrash = False
    , _umlLabelIds = Nothing
    , _umlPageToken = Nothing
    , _umlMaxResults = 100
    , _umlCallback = Nothing
    }


-- | V1 error format.
umlXgafv :: Lens' UsersMessagesList (Maybe Xgafv)
umlXgafv = lens _umlXgafv (\ s a -> s{_umlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umlUploadProtocol :: Lens' UsersMessagesList (Maybe Text)
umlUploadProtocol
  = lens _umlUploadProtocol
      (\ s a -> s{_umlUploadProtocol = a})

-- | OAuth access token.
umlAccessToken :: Lens' UsersMessagesList (Maybe Text)
umlAccessToken
  = lens _umlAccessToken
      (\ s a -> s{_umlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umlUploadType :: Lens' UsersMessagesList (Maybe Text)
umlUploadType
  = lens _umlUploadType
      (\ s a -> s{_umlUploadType = a})

-- | Only return messages matching the specified query. Supports the same
-- query format as the Gmail search box. For example,
-- \`\"from:someuser\'example.com rfc822msgid: is:unread\"\`. Parameter
-- cannot be used when accessing the api using the gmail.metadata scope.
umlQ :: Lens' UsersMessagesList (Maybe Text)
umlQ = lens _umlQ (\ s a -> s{_umlQ = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
umlUserId :: Lens' UsersMessagesList Text
umlUserId
  = lens _umlUserId (\ s a -> s{_umlUserId = a})

-- | Include messages from \`SPAM\` and \`TRASH\` in the results.
umlIncludeSpamTrash :: Lens' UsersMessagesList Bool
umlIncludeSpamTrash
  = lens _umlIncludeSpamTrash
      (\ s a -> s{_umlIncludeSpamTrash = a})

-- | Only return messages with labels that match all of the specified label
-- IDs.
umlLabelIds :: Lens' UsersMessagesList [Text]
umlLabelIds
  = lens _umlLabelIds (\ s a -> s{_umlLabelIds = a}) .
      _Default
      . _Coerce

-- | Page token to retrieve a specific page of results in the list.
umlPageToken :: Lens' UsersMessagesList (Maybe Text)
umlPageToken
  = lens _umlPageToken (\ s a -> s{_umlPageToken = a})

-- | Maximum number of messages to return. This field defaults to 100. The
-- maximum allowed value for this field is 500.
umlMaxResults :: Lens' UsersMessagesList Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})
      . _Coerce

-- | JSONP
umlCallback :: Lens' UsersMessagesList (Maybe Text)
umlCallback
  = lens _umlCallback (\ s a -> s{_umlCallback = a})

instance GoogleRequest UsersMessagesList where
        type Rs UsersMessagesList = ListMessagesResponse
        type Scopes UsersMessagesList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.metadata",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersMessagesList'{..}
          = go _umlUserId _umlXgafv _umlUploadProtocol
              _umlAccessToken
              _umlUploadType
              _umlQ
              (Just _umlIncludeSpamTrash)
              (_umlLabelIds ^. _Default)
              _umlPageToken
              (Just _umlMaxResults)
              _umlCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesListResource)
                      mempty
