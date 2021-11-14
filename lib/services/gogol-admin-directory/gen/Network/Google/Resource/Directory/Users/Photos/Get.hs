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
-- Module      : Network.Google.Resource.Directory.Users.Photos.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the user\'s photo.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.photos.get@.
module Network.Google.Resource.Directory.Users.Photos.Get
    (
    -- * REST Resource
      UsersPhotosGetResource

    -- * Creating a Request
    , usersPhotosGet
    , UsersPhotosGet

    -- * Request Lenses
    , upgXgafv
    , upgUploadProtocol
    , upgAccessToken
    , upgUploadType
    , upgUserKey
    , upgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.photos.get@ method which the
-- 'UsersPhotosGet' request conforms to.
type UsersPhotosGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] UserPhoto

-- | Retrieves the user\'s photo.
--
-- /See:/ 'usersPhotosGet' smart constructor.
data UsersPhotosGet =
  UsersPhotosGet'
    { _upgXgafv :: !(Maybe Xgafv)
    , _upgUploadProtocol :: !(Maybe Text)
    , _upgAccessToken :: !(Maybe Text)
    , _upgUploadType :: !(Maybe Text)
    , _upgUserKey :: !Text
    , _upgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersPhotosGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upgXgafv'
--
-- * 'upgUploadProtocol'
--
-- * 'upgAccessToken'
--
-- * 'upgUploadType'
--
-- * 'upgUserKey'
--
-- * 'upgCallback'
usersPhotosGet
    :: Text -- ^ 'upgUserKey'
    -> UsersPhotosGet
usersPhotosGet pUpgUserKey_ =
  UsersPhotosGet'
    { _upgXgafv = Nothing
    , _upgUploadProtocol = Nothing
    , _upgAccessToken = Nothing
    , _upgUploadType = Nothing
    , _upgUserKey = pUpgUserKey_
    , _upgCallback = Nothing
    }


-- | V1 error format.
upgXgafv :: Lens' UsersPhotosGet (Maybe Xgafv)
upgXgafv = lens _upgXgafv (\ s a -> s{_upgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upgUploadProtocol :: Lens' UsersPhotosGet (Maybe Text)
upgUploadProtocol
  = lens _upgUploadProtocol
      (\ s a -> s{_upgUploadProtocol = a})

-- | OAuth access token.
upgAccessToken :: Lens' UsersPhotosGet (Maybe Text)
upgAccessToken
  = lens _upgAccessToken
      (\ s a -> s{_upgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upgUploadType :: Lens' UsersPhotosGet (Maybe Text)
upgUploadType
  = lens _upgUploadType
      (\ s a -> s{_upgUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
upgUserKey :: Lens' UsersPhotosGet Text
upgUserKey
  = lens _upgUserKey (\ s a -> s{_upgUserKey = a})

-- | JSONP
upgCallback :: Lens' UsersPhotosGet (Maybe Text)
upgCallback
  = lens _upgCallback (\ s a -> s{_upgCallback = a})

instance GoogleRequest UsersPhotosGet where
        type Rs UsersPhotosGet = UserPhoto
        type Scopes UsersPhotosGet =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.readonly"]
        requestClient UsersPhotosGet'{..}
          = go _upgUserKey _upgXgafv _upgUploadProtocol
              _upgAccessToken
              _upgUploadType
              _upgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersPhotosGetResource)
                      mempty
