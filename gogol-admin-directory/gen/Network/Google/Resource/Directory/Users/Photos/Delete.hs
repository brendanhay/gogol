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
-- Module      : Network.Google.Resource.Directory.Users.Photos.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the user\'s photo.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.photos.delete@.
module Network.Google.Resource.Directory.Users.Photos.Delete
    (
    -- * REST Resource
      UsersPhotosDeleteResource

    -- * Creating a Request
    , usersPhotosDelete
    , UsersPhotosDelete

    -- * Request Lenses
    , updXgafv
    , updUploadProtocol
    , updAccessToken
    , updUploadType
    , updUserKey
    , updCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.photos.delete@ method which the
-- 'UsersPhotosDelete' request conforms to.
type UsersPhotosDeleteResource =
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
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes the user\'s photo.
--
-- /See:/ 'usersPhotosDelete' smart constructor.
data UsersPhotosDelete =
  UsersPhotosDelete'
    { _updXgafv :: !(Maybe Xgafv)
    , _updUploadProtocol :: !(Maybe Text)
    , _updAccessToken :: !(Maybe Text)
    , _updUploadType :: !(Maybe Text)
    , _updUserKey :: !Text
    , _updCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersPhotosDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updXgafv'
--
-- * 'updUploadProtocol'
--
-- * 'updAccessToken'
--
-- * 'updUploadType'
--
-- * 'updUserKey'
--
-- * 'updCallback'
usersPhotosDelete
    :: Text -- ^ 'updUserKey'
    -> UsersPhotosDelete
usersPhotosDelete pUpdUserKey_ =
  UsersPhotosDelete'
    { _updXgafv = Nothing
    , _updUploadProtocol = Nothing
    , _updAccessToken = Nothing
    , _updUploadType = Nothing
    , _updUserKey = pUpdUserKey_
    , _updCallback = Nothing
    }


-- | V1 error format.
updXgafv :: Lens' UsersPhotosDelete (Maybe Xgafv)
updXgafv = lens _updXgafv (\ s a -> s{_updXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
updUploadProtocol :: Lens' UsersPhotosDelete (Maybe Text)
updUploadProtocol
  = lens _updUploadProtocol
      (\ s a -> s{_updUploadProtocol = a})

-- | OAuth access token.
updAccessToken :: Lens' UsersPhotosDelete (Maybe Text)
updAccessToken
  = lens _updAccessToken
      (\ s a -> s{_updAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
updUploadType :: Lens' UsersPhotosDelete (Maybe Text)
updUploadType
  = lens _updUploadType
      (\ s a -> s{_updUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
updUserKey :: Lens' UsersPhotosDelete Text
updUserKey
  = lens _updUserKey (\ s a -> s{_updUserKey = a})

-- | JSONP
updCallback :: Lens' UsersPhotosDelete (Maybe Text)
updCallback
  = lens _updCallback (\ s a -> s{_updCallback = a})

instance GoogleRequest UsersPhotosDelete where
        type Rs UsersPhotosDelete = ()
        type Scopes UsersPhotosDelete =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersPhotosDelete'{..}
          = go _updUserKey _updXgafv _updUploadProtocol
              _updAccessToken
              _updUploadType
              _updCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersPhotosDeleteResource)
                      mempty
