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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Trash
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified thread to the trash.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.threads.trash@.
module Network.Google.Resource.Gmail.Users.Threads.Trash
    (
    -- * REST Resource
      UsersThreadsTrashResource

    -- * Creating a Request
    , usersThreadsTrash
    , UsersThreadsTrash

    -- * Request Lenses
    , uttXgafv
    , uttUploadProtocol
    , uttAccessToken
    , uttUploadType
    , uttUserId
    , uttId
    , uttCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.threads.trash@ method which the
-- 'UsersThreadsTrash' request conforms to.
type UsersThreadsTrashResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "threads" :>
               Capture "id" Text :>
                 "trash" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Thread

-- | Moves the specified thread to the trash.
--
-- /See:/ 'usersThreadsTrash' smart constructor.
data UsersThreadsTrash =
  UsersThreadsTrash'
    { _uttXgafv :: !(Maybe Xgafv)
    , _uttUploadProtocol :: !(Maybe Text)
    , _uttAccessToken :: !(Maybe Text)
    , _uttUploadType :: !(Maybe Text)
    , _uttUserId :: !Text
    , _uttId :: !Text
    , _uttCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersThreadsTrash' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uttXgafv'
--
-- * 'uttUploadProtocol'
--
-- * 'uttAccessToken'
--
-- * 'uttUploadType'
--
-- * 'uttUserId'
--
-- * 'uttId'
--
-- * 'uttCallback'
usersThreadsTrash
    :: Text -- ^ 'uttId'
    -> UsersThreadsTrash
usersThreadsTrash pUttId_ =
  UsersThreadsTrash'
    { _uttXgafv = Nothing
    , _uttUploadProtocol = Nothing
    , _uttAccessToken = Nothing
    , _uttUploadType = Nothing
    , _uttUserId = "me"
    , _uttId = pUttId_
    , _uttCallback = Nothing
    }


-- | V1 error format.
uttXgafv :: Lens' UsersThreadsTrash (Maybe Xgafv)
uttXgafv = lens _uttXgafv (\ s a -> s{_uttXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uttUploadProtocol :: Lens' UsersThreadsTrash (Maybe Text)
uttUploadProtocol
  = lens _uttUploadProtocol
      (\ s a -> s{_uttUploadProtocol = a})

-- | OAuth access token.
uttAccessToken :: Lens' UsersThreadsTrash (Maybe Text)
uttAccessToken
  = lens _uttAccessToken
      (\ s a -> s{_uttAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uttUploadType :: Lens' UsersThreadsTrash (Maybe Text)
uttUploadType
  = lens _uttUploadType
      (\ s a -> s{_uttUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
uttUserId :: Lens' UsersThreadsTrash Text
uttUserId
  = lens _uttUserId (\ s a -> s{_uttUserId = a})

-- | The ID of the thread to Trash.
uttId :: Lens' UsersThreadsTrash Text
uttId = lens _uttId (\ s a -> s{_uttId = a})

-- | JSONP
uttCallback :: Lens' UsersThreadsTrash (Maybe Text)
uttCallback
  = lens _uttCallback (\ s a -> s{_uttCallback = a})

instance GoogleRequest UsersThreadsTrash where
        type Rs UsersThreadsTrash = Thread
        type Scopes UsersThreadsTrash =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.modify"]
        requestClient UsersThreadsTrash'{..}
          = go _uttUserId _uttId _uttXgafv _uttUploadProtocol
              _uttAccessToken
              _uttUploadType
              _uttCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersThreadsTrashResource)
                      mempty
