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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Untrash
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified thread from the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.untrash@.
module Network.Google.Resource.Gmail.Users.Threads.Untrash
    (
    -- * REST Resource
      UsersThreadsUntrashResource

    -- * Creating a Request
    , usersThreadsUntrash
    , UsersThreadsUntrash

    -- * Request Lenses
    , utuXgafv
    , utuUploadProtocol
    , utuAccessToken
    , utuUploadType
    , utuUserId
    , utuId
    , utuCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.untrash@ method which the
-- 'UsersThreadsUntrash' request conforms to.
type UsersThreadsUntrashResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               Capture "id" Text :>
                 "untrash" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Thread

-- | Removes the specified thread from the trash.
--
-- /See:/ 'usersThreadsUntrash' smart constructor.
data UsersThreadsUntrash =
  UsersThreadsUntrash'
    { _utuXgafv :: !(Maybe Xgafv)
    , _utuUploadProtocol :: !(Maybe Text)
    , _utuAccessToken :: !(Maybe Text)
    , _utuUploadType :: !(Maybe Text)
    , _utuUserId :: !Text
    , _utuId :: !Text
    , _utuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersThreadsUntrash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utuXgafv'
--
-- * 'utuUploadProtocol'
--
-- * 'utuAccessToken'
--
-- * 'utuUploadType'
--
-- * 'utuUserId'
--
-- * 'utuId'
--
-- * 'utuCallback'
usersThreadsUntrash
    :: Text -- ^ 'utuId'
    -> UsersThreadsUntrash
usersThreadsUntrash pUtuId_ =
  UsersThreadsUntrash'
    { _utuXgafv = Nothing
    , _utuUploadProtocol = Nothing
    , _utuAccessToken = Nothing
    , _utuUploadType = Nothing
    , _utuUserId = "me"
    , _utuId = pUtuId_
    , _utuCallback = Nothing
    }


-- | V1 error format.
utuXgafv :: Lens' UsersThreadsUntrash (Maybe Xgafv)
utuXgafv = lens _utuXgafv (\ s a -> s{_utuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
utuUploadProtocol :: Lens' UsersThreadsUntrash (Maybe Text)
utuUploadProtocol
  = lens _utuUploadProtocol
      (\ s a -> s{_utuUploadProtocol = a})

-- | OAuth access token.
utuAccessToken :: Lens' UsersThreadsUntrash (Maybe Text)
utuAccessToken
  = lens _utuAccessToken
      (\ s a -> s{_utuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
utuUploadType :: Lens' UsersThreadsUntrash (Maybe Text)
utuUploadType
  = lens _utuUploadType
      (\ s a -> s{_utuUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
utuUserId :: Lens' UsersThreadsUntrash Text
utuUserId
  = lens _utuUserId (\ s a -> s{_utuUserId = a})

-- | The ID of the thread to remove from Trash.
utuId :: Lens' UsersThreadsUntrash Text
utuId = lens _utuId (\ s a -> s{_utuId = a})

-- | JSONP
utuCallback :: Lens' UsersThreadsUntrash (Maybe Text)
utuCallback
  = lens _utuCallback (\ s a -> s{_utuCallback = a})

instance GoogleRequest UsersThreadsUntrash where
        type Rs UsersThreadsUntrash = Thread
        type Scopes UsersThreadsUntrash =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersThreadsUntrash'{..}
          = go _utuUserId _utuId _utuXgafv _utuUploadProtocol
              _utuAccessToken
              _utuUploadType
              _utuCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsUntrashResource)
                      mempty
