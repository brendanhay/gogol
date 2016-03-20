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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a photo for the user. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.photos.patch@.
module Network.Google.Resource.Directory.Users.Photos.Patch
    (
    -- * REST Resource
      UsersPhotosPatchResource

    -- * Creating a Request
    , usersPhotosPatch
    , UsersPhotosPatch

    -- * Request Lenses
    , uppPayload
    , uppUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

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
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UserPhoto :> Patch '[JSON] UserPhoto

-- | Add a photo for the user. This method supports patch semantics.
--
-- /See:/ 'usersPhotosPatch' smart constructor.
data UsersPhotosPatch = UsersPhotosPatch
    { _uppPayload :: !UserPhoto
    , _uppUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uppPayload'
--
-- * 'uppUserKey'
usersPhotosPatch
    :: UserPhoto -- ^ 'uppPayload'
    -> Text -- ^ 'uppUserKey'
    -> UsersPhotosPatch
usersPhotosPatch pUppPayload_ pUppUserKey_ =
    UsersPhotosPatch
    { _uppPayload = pUppPayload_
    , _uppUserKey = pUppUserKey_
    }

-- | Multipart request metadata.
uppPayload :: Lens' UsersPhotosPatch UserPhoto
uppPayload
  = lens _uppPayload (\ s a -> s{_uppPayload = a})

-- | Email or immutable Id of the user
uppUserKey :: Lens' UsersPhotosPatch Text
uppUserKey
  = lens _uppUserKey (\ s a -> s{_uppUserKey = a})

instance GoogleRequest UsersPhotosPatch where
        type Rs UsersPhotosPatch = UserPhoto
        requestClient UsersPhotosPatch{..}
          = go _uppUserKey (Just AltJSON) _uppPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersPhotosPatchResource)
                      mempty
