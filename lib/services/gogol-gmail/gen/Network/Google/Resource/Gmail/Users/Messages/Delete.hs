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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately and permanently deletes the specified message. This
-- operation cannot be undone. Prefer \`messages.trash\` instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.delete@.
module Network.Google.Resource.Gmail.Users.Messages.Delete
    (
    -- * REST Resource
      UsersMessagesDeleteResource

    -- * Creating a Request
    , usersMessagesDelete
    , UsersMessagesDelete

    -- * Request Lenses
    , umdXgafv
    , umdUploadProtocol
    , umdAccessToken
    , umdUploadType
    , umdUserId
    , umdId
    , umdCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.messages.delete@ method which the
-- 'UsersMessagesDelete' request conforms to.
type UsersMessagesDeleteResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "messages" :>
               Capture "id" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified message. This
-- operation cannot be undone. Prefer \`messages.trash\` instead.
--
-- /See:/ 'usersMessagesDelete' smart constructor.
data UsersMessagesDelete =
  UsersMessagesDelete'
    { _umdXgafv :: !(Maybe Xgafv)
    , _umdUploadProtocol :: !(Maybe Text)
    , _umdAccessToken :: !(Maybe Text)
    , _umdUploadType :: !(Maybe Text)
    , _umdUserId :: !Text
    , _umdId :: !Text
    , _umdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersMessagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdXgafv'
--
-- * 'umdUploadProtocol'
--
-- * 'umdAccessToken'
--
-- * 'umdUploadType'
--
-- * 'umdUserId'
--
-- * 'umdId'
--
-- * 'umdCallback'
usersMessagesDelete
    :: Text -- ^ 'umdId'
    -> UsersMessagesDelete
usersMessagesDelete pUmdId_ =
  UsersMessagesDelete'
    { _umdXgafv = Nothing
    , _umdUploadProtocol = Nothing
    , _umdAccessToken = Nothing
    , _umdUploadType = Nothing
    , _umdUserId = "me"
    , _umdId = pUmdId_
    , _umdCallback = Nothing
    }


-- | V1 error format.
umdXgafv :: Lens' UsersMessagesDelete (Maybe Xgafv)
umdXgafv = lens _umdXgafv (\ s a -> s{_umdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
umdUploadProtocol :: Lens' UsersMessagesDelete (Maybe Text)
umdUploadProtocol
  = lens _umdUploadProtocol
      (\ s a -> s{_umdUploadProtocol = a})

-- | OAuth access token.
umdAccessToken :: Lens' UsersMessagesDelete (Maybe Text)
umdAccessToken
  = lens _umdAccessToken
      (\ s a -> s{_umdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
umdUploadType :: Lens' UsersMessagesDelete (Maybe Text)
umdUploadType
  = lens _umdUploadType
      (\ s a -> s{_umdUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
umdUserId :: Lens' UsersMessagesDelete Text
umdUserId
  = lens _umdUserId (\ s a -> s{_umdUserId = a})

-- | The ID of the message to delete.
umdId :: Lens' UsersMessagesDelete Text
umdId = lens _umdId (\ s a -> s{_umdId = a})

-- | JSONP
umdCallback :: Lens' UsersMessagesDelete (Maybe Text)
umdCallback
  = lens _umdCallback (\ s a -> s{_umdCallback = a})

instance GoogleRequest UsersMessagesDelete where
        type Rs UsersMessagesDelete = ()
        type Scopes UsersMessagesDelete =
             '["https://mail.google.com/"]
        requestClient UsersMessagesDelete'{..}
          = go _umdUserId _umdId _umdXgafv _umdUploadProtocol
              _umdAccessToken
              _umdUploadType
              _umdCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesDeleteResource)
                      mempty
