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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Trash
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified message to the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.trash@.
module Network.Google.Resource.Gmail.Users.Messages.Trash
    (
    -- * REST Resource
      UsersMessagesTrashResource

    -- * Creating a Request
    , usersMessagesTrash
    , UsersMessagesTrash

    -- * Request Lenses
    , umtXgafv
    , umtUploadProtocol
    , umtAccessToken
    , umtUploadType
    , umtUserId
    , umtId
    , umtCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.trash@ method which the
-- 'UsersMessagesTrash' request conforms to.
type UsersMessagesTrashResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               Capture "id" Text :>
                 "trash" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Message

-- | Moves the specified message to the trash.
--
-- /See:/ 'usersMessagesTrash' smart constructor.
data UsersMessagesTrash =
  UsersMessagesTrash'
    { _umtXgafv :: !(Maybe Xgafv)
    , _umtUploadProtocol :: !(Maybe Text)
    , _umtAccessToken :: !(Maybe Text)
    , _umtUploadType :: !(Maybe Text)
    , _umtUserId :: !Text
    , _umtId :: !Text
    , _umtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesTrash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umtXgafv'
--
-- * 'umtUploadProtocol'
--
-- * 'umtAccessToken'
--
-- * 'umtUploadType'
--
-- * 'umtUserId'
--
-- * 'umtId'
--
-- * 'umtCallback'
usersMessagesTrash
    :: Text -- ^ 'umtId'
    -> UsersMessagesTrash
usersMessagesTrash pUmtId_ =
  UsersMessagesTrash'
    { _umtXgafv = Nothing
    , _umtUploadProtocol = Nothing
    , _umtAccessToken = Nothing
    , _umtUploadType = Nothing
    , _umtUserId = "me"
    , _umtId = pUmtId_
    , _umtCallback = Nothing
    }


-- | V1 error format.
umtXgafv :: Lens' UsersMessagesTrash (Maybe Xgafv)
umtXgafv = lens _umtXgafv (\ s a -> s{_umtXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umtUploadProtocol :: Lens' UsersMessagesTrash (Maybe Text)
umtUploadProtocol
  = lens _umtUploadProtocol
      (\ s a -> s{_umtUploadProtocol = a})

-- | OAuth access token.
umtAccessToken :: Lens' UsersMessagesTrash (Maybe Text)
umtAccessToken
  = lens _umtAccessToken
      (\ s a -> s{_umtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umtUploadType :: Lens' UsersMessagesTrash (Maybe Text)
umtUploadType
  = lens _umtUploadType
      (\ s a -> s{_umtUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
umtUserId :: Lens' UsersMessagesTrash Text
umtUserId
  = lens _umtUserId (\ s a -> s{_umtUserId = a})

-- | The ID of the message to Trash.
umtId :: Lens' UsersMessagesTrash Text
umtId = lens _umtId (\ s a -> s{_umtId = a})

-- | JSONP
umtCallback :: Lens' UsersMessagesTrash (Maybe Text)
umtCallback
  = lens _umtCallback (\ s a -> s{_umtCallback = a})

instance GoogleRequest UsersMessagesTrash where
        type Rs UsersMessagesTrash = Message
        type Scopes UsersMessagesTrash =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersMessagesTrash'{..}
          = go _umtUserId _umtId _umtXgafv _umtUploadProtocol
              _umtAccessToken
              _umtUploadType
              _umtCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesTrashResource)
                      mempty
