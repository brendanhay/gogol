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
-- Module      : Network.Google.Resource.Directory.Users.Photos.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a photo for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.photos.update@.
module Network.Google.Resource.Directory.Users.Photos.Update
    (
    -- * REST Resource
      UsersPhotosUpdateResource

    -- * Creating a Request
    , usersPhotosUpdate
    , UsersPhotosUpdate

    -- * Request Lenses
    , upuXgafv
    , upuUploadProtocol
    , upuAccessToken
    , upuUploadType
    , upuPayload
    , upuUserKey
    , upuCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.photos.update@ method which the
-- 'UsersPhotosUpdate' request conforms to.
type UsersPhotosUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "photos" :>
                 "thumbnail" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] UserPhoto :>
                                 Put '[JSON] UserPhoto

-- | Adds a photo for the user.
--
-- /See:/ 'usersPhotosUpdate' smart constructor.
data UsersPhotosUpdate =
  UsersPhotosUpdate'
    { _upuXgafv :: !(Maybe Xgafv)
    , _upuUploadProtocol :: !(Maybe Text)
    , _upuAccessToken :: !(Maybe Text)
    , _upuUploadType :: !(Maybe Text)
    , _upuPayload :: !UserPhoto
    , _upuUserKey :: !Text
    , _upuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersPhotosUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upuXgafv'
--
-- * 'upuUploadProtocol'
--
-- * 'upuAccessToken'
--
-- * 'upuUploadType'
--
-- * 'upuPayload'
--
-- * 'upuUserKey'
--
-- * 'upuCallback'
usersPhotosUpdate
    :: UserPhoto -- ^ 'upuPayload'
    -> Text -- ^ 'upuUserKey'
    -> UsersPhotosUpdate
usersPhotosUpdate pUpuPayload_ pUpuUserKey_ =
  UsersPhotosUpdate'
    { _upuXgafv = Nothing
    , _upuUploadProtocol = Nothing
    , _upuAccessToken = Nothing
    , _upuUploadType = Nothing
    , _upuPayload = pUpuPayload_
    , _upuUserKey = pUpuUserKey_
    , _upuCallback = Nothing
    }


-- | V1 error format.
upuXgafv :: Lens' UsersPhotosUpdate (Maybe Xgafv)
upuXgafv = lens _upuXgafv (\ s a -> s{_upuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upuUploadProtocol :: Lens' UsersPhotosUpdate (Maybe Text)
upuUploadProtocol
  = lens _upuUploadProtocol
      (\ s a -> s{_upuUploadProtocol = a})

-- | OAuth access token.
upuAccessToken :: Lens' UsersPhotosUpdate (Maybe Text)
upuAccessToken
  = lens _upuAccessToken
      (\ s a -> s{_upuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upuUploadType :: Lens' UsersPhotosUpdate (Maybe Text)
upuUploadType
  = lens _upuUploadType
      (\ s a -> s{_upuUploadType = a})

-- | Multipart request metadata.
upuPayload :: Lens' UsersPhotosUpdate UserPhoto
upuPayload
  = lens _upuPayload (\ s a -> s{_upuPayload = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
upuUserKey :: Lens' UsersPhotosUpdate Text
upuUserKey
  = lens _upuUserKey (\ s a -> s{_upuUserKey = a})

-- | JSONP
upuCallback :: Lens' UsersPhotosUpdate (Maybe Text)
upuCallback
  = lens _upuCallback (\ s a -> s{_upuCallback = a})

instance GoogleRequest UsersPhotosUpdate where
        type Rs UsersPhotosUpdate = UserPhoto
        type Scopes UsersPhotosUpdate =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersPhotosUpdate'{..}
          = go _upuUserKey _upuXgafv _upuUploadProtocol
              _upuAccessToken
              _upuUploadType
              _upuCallback
              (Just AltJSON)
              _upuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersPhotosUpdateResource)
                      mempty
