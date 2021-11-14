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
-- Module      : Network.Google.Resource.Gmail.Users.GetProFile
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current user\'s Gmail profile.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.getProfile@.
module Network.Google.Resource.Gmail.Users.GetProFile
    (
    -- * REST Resource
      UsersGetProFileResource

    -- * Creating a Request
    , usersGetProFile
    , UsersGetProFile

    -- * Request Lenses
    , ugpfXgafv
    , ugpfUploadProtocol
    , ugpfAccessToken
    , ugpfUploadType
    , ugpfUserId
    , ugpfCallback
    ) where

import Network.Google.Gmail.Types
import Network.Google.Prelude

-- | A resource alias for @gmail.users.getProfile@ method which the
-- 'UsersGetProFile' request conforms to.
type UsersGetProFileResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "profile" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] ProFile

-- | Gets the current user\'s Gmail profile.
--
-- /See:/ 'usersGetProFile' smart constructor.
data UsersGetProFile =
  UsersGetProFile'
    { _ugpfXgafv :: !(Maybe Xgafv)
    , _ugpfUploadProtocol :: !(Maybe Text)
    , _ugpfAccessToken :: !(Maybe Text)
    , _ugpfUploadType :: !(Maybe Text)
    , _ugpfUserId :: !Text
    , _ugpfCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersGetProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugpfXgafv'
--
-- * 'ugpfUploadProtocol'
--
-- * 'ugpfAccessToken'
--
-- * 'ugpfUploadType'
--
-- * 'ugpfUserId'
--
-- * 'ugpfCallback'
usersGetProFile
    :: UsersGetProFile
usersGetProFile =
  UsersGetProFile'
    { _ugpfXgafv = Nothing
    , _ugpfUploadProtocol = Nothing
    , _ugpfAccessToken = Nothing
    , _ugpfUploadType = Nothing
    , _ugpfUserId = "me"
    , _ugpfCallback = Nothing
    }


-- | V1 error format.
ugpfXgafv :: Lens' UsersGetProFile (Maybe Xgafv)
ugpfXgafv
  = lens _ugpfXgafv (\ s a -> s{_ugpfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ugpfUploadProtocol :: Lens' UsersGetProFile (Maybe Text)
ugpfUploadProtocol
  = lens _ugpfUploadProtocol
      (\ s a -> s{_ugpfUploadProtocol = a})

-- | OAuth access token.
ugpfAccessToken :: Lens' UsersGetProFile (Maybe Text)
ugpfAccessToken
  = lens _ugpfAccessToken
      (\ s a -> s{_ugpfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ugpfUploadType :: Lens' UsersGetProFile (Maybe Text)
ugpfUploadType
  = lens _ugpfUploadType
      (\ s a -> s{_ugpfUploadType = a})

-- | The user\'s email address. The special value \`me\` can be used to
-- indicate the authenticated user.
ugpfUserId :: Lens' UsersGetProFile Text
ugpfUserId
  = lens _ugpfUserId (\ s a -> s{_ugpfUserId = a})

-- | JSONP
ugpfCallback :: Lens' UsersGetProFile (Maybe Text)
ugpfCallback
  = lens _ugpfCallback (\ s a -> s{_ugpfCallback = a})

instance GoogleRequest UsersGetProFile where
        type Rs UsersGetProFile = ProFile
        type Scopes UsersGetProFile =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.metadata",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersGetProFile'{..}
          = go _ugpfUserId _ugpfXgafv _ugpfUploadProtocol
              _ugpfAccessToken
              _ugpfUploadType
              _ugpfCallback
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersGetProFileResource)
                      mempty
