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
-- Module      : Network.Google.Resource.Directory.Users.Photos.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a photo for the user. This method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch).
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.photos.patch@.
module Network.Google.Resource.Directory.Users.Photos.Patch
    (
    -- * REST Resource
      UsersPhotosPatchResource

    -- * Creating a Request
    , usersPhotosPatch
    , UsersPhotosPatch

    -- * Request Lenses
    , uppXgafv
    , uppUploadProtocol
    , uppAccessToken
    , uppUploadType
    , uppPayload
    , uppUserKey
    , uppCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.users.photos.patch@ method which the
-- 'UsersPhotosPatch' request conforms to.
type UsersPhotosPatchResource =
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
                                 Patch '[JSON] UserPhoto

-- | Adds a photo for the user. This method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch).
--
-- /See:/ 'usersPhotosPatch' smart constructor.
data UsersPhotosPatch =
  UsersPhotosPatch'
    { _uppXgafv :: !(Maybe Xgafv)
    , _uppUploadProtocol :: !(Maybe Text)
    , _uppAccessToken :: !(Maybe Text)
    , _uppUploadType :: !(Maybe Text)
    , _uppPayload :: !UserPhoto
    , _uppUserKey :: !Text
    , _uppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersPhotosPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uppXgafv'
--
-- * 'uppUploadProtocol'
--
-- * 'uppAccessToken'
--
-- * 'uppUploadType'
--
-- * 'uppPayload'
--
-- * 'uppUserKey'
--
-- * 'uppCallback'
usersPhotosPatch
    :: UserPhoto -- ^ 'uppPayload'
    -> Text -- ^ 'uppUserKey'
    -> UsersPhotosPatch
usersPhotosPatch pUppPayload_ pUppUserKey_ =
  UsersPhotosPatch'
    { _uppXgafv = Nothing
    , _uppUploadProtocol = Nothing
    , _uppAccessToken = Nothing
    , _uppUploadType = Nothing
    , _uppPayload = pUppPayload_
    , _uppUserKey = pUppUserKey_
    , _uppCallback = Nothing
    }


-- | V1 error format.
uppXgafv :: Lens' UsersPhotosPatch (Maybe Xgafv)
uppXgafv = lens _uppXgafv (\ s a -> s{_uppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uppUploadProtocol :: Lens' UsersPhotosPatch (Maybe Text)
uppUploadProtocol
  = lens _uppUploadProtocol
      (\ s a -> s{_uppUploadProtocol = a})

-- | OAuth access token.
uppAccessToken :: Lens' UsersPhotosPatch (Maybe Text)
uppAccessToken
  = lens _uppAccessToken
      (\ s a -> s{_uppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uppUploadType :: Lens' UsersPhotosPatch (Maybe Text)
uppUploadType
  = lens _uppUploadType
      (\ s a -> s{_uppUploadType = a})

-- | Multipart request metadata.
uppPayload :: Lens' UsersPhotosPatch UserPhoto
uppPayload
  = lens _uppPayload (\ s a -> s{_uppPayload = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
uppUserKey :: Lens' UsersPhotosPatch Text
uppUserKey
  = lens _uppUserKey (\ s a -> s{_uppUserKey = a})

-- | JSONP
uppCallback :: Lens' UsersPhotosPatch (Maybe Text)
uppCallback
  = lens _uppCallback (\ s a -> s{_uppCallback = a})

instance GoogleRequest UsersPhotosPatch where
        type Rs UsersPhotosPatch = UserPhoto
        type Scopes UsersPhotosPatch =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersPhotosPatch'{..}
          = go _uppUserKey _uppXgafv _uppUploadProtocol
              _uppAccessToken
              _uppUploadType
              _uppCallback
              (Just AltJSON)
              _uppPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersPhotosPatchResource)
                      mempty
