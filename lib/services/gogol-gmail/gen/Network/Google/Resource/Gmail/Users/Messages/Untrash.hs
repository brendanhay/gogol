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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Untrash
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified message from the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.untrash@.
module Network.Google.Resource.Gmail.Users.Messages.Untrash
    (
    -- * REST Resource
      UsersMessagesUntrashResource

    -- * Creating a Request
    , usersMessagesUntrash
    , UsersMessagesUntrash

    -- * Request Lenses
    , umuXgafv
    , umuUploadProtocol
    , umuAccessToken
    , umuUploadType
    , umuUserId
    , umuId
    , umuCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.untrash@ method which the
-- 'UsersMessagesUntrash' request conforms to.
type UsersMessagesUntrashResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               Capture "id" Text :>
                 "untrash" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Message

-- | Removes the specified message from the trash.
--
-- /See:/ 'usersMessagesUntrash' smart constructor.
data UsersMessagesUntrash =
  UsersMessagesUntrash'
    { _umuXgafv :: !(Maybe Xgafv)
    , _umuUploadProtocol :: !(Maybe Text)
    , _umuAccessToken :: !(Maybe Text)
    , _umuUploadType :: !(Maybe Text)
    , _umuUserId :: !Text
    , _umuId :: !Text
    , _umuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesUntrash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umuXgafv'
--
-- * 'umuUploadProtocol'
--
-- * 'umuAccessToken'
--
-- * 'umuUploadType'
--
-- * 'umuUserId'
--
-- * 'umuId'
--
-- * 'umuCallback'
usersMessagesUntrash
    :: Text -- ^ 'umuId'
    -> UsersMessagesUntrash
usersMessagesUntrash pUmuId_ =
  UsersMessagesUntrash'
    { _umuXgafv = Nothing
    , _umuUploadProtocol = Nothing
    , _umuAccessToken = Nothing
    , _umuUploadType = Nothing
    , _umuUserId = "me"
    , _umuId = pUmuId_
    , _umuCallback = Nothing
    }


-- | V1 error format.
umuXgafv :: Lens' UsersMessagesUntrash (Maybe Xgafv)
umuXgafv = lens _umuXgafv (\ s a -> s{_umuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umuUploadProtocol :: Lens' UsersMessagesUntrash (Maybe Text)
umuUploadProtocol
  = lens _umuUploadProtocol
      (\ s a -> s{_umuUploadProtocol = a})

-- | OAuth access token.
umuAccessToken :: Lens' UsersMessagesUntrash (Maybe Text)
umuAccessToken
  = lens _umuAccessToken
      (\ s a -> s{_umuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umuUploadType :: Lens' UsersMessagesUntrash (Maybe Text)
umuUploadType
  = lens _umuUploadType
      (\ s a -> s{_umuUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
umuUserId :: Lens' UsersMessagesUntrash Text
umuUserId
  = lens _umuUserId (\ s a -> s{_umuUserId = a})

-- | The ID of the message to remove from Trash.
umuId :: Lens' UsersMessagesUntrash Text
umuId = lens _umuId (\ s a -> s{_umuId = a})

-- | JSONP
umuCallback :: Lens' UsersMessagesUntrash (Maybe Text)
umuCallback
  = lens _umuCallback (\ s a -> s{_umuCallback = a})

instance GoogleRequest UsersMessagesUntrash where
        type Rs UsersMessagesUntrash = Message
        type Scopes UsersMessagesUntrash =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersMessagesUntrash'{..}
          = go _umuUserId _umuId _umuXgafv _umuUploadProtocol
              _umuAccessToken
              _umuUploadType
              _umuCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesUntrashResource)
                      mempty
