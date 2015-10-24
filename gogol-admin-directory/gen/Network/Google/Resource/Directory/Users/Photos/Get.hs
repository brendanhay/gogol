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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve photo of a user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.photos.get@.
module Network.Google.Resource.Directory.Users.Photos.Get
    (
    -- * REST Resource
      UsersPhotosGetResource

    -- * Creating a Request
    , usersPhotosGet
    , UsersPhotosGet

    -- * Request Lenses
    , upgUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

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
                   QueryParam "alt" AltJSON :> Get '[JSON] UserPhoto

-- | Retrieve photo of a user
--
-- /See:/ 'usersPhotosGet' smart constructor.
newtype UsersPhotosGet = UsersPhotosGet
    { _upgUserKey :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upgUserKey'
usersPhotosGet
    :: Text -- ^ 'upgUserKey'
    -> UsersPhotosGet
usersPhotosGet pUpgUserKey_ =
    UsersPhotosGet
    { _upgUserKey = pUpgUserKey_
    }

-- | Email or immutable Id of the user
upgUserKey :: Lens' UsersPhotosGet Text
upgUserKey
  = lens _upgUserKey (\ s a -> s{_upgUserKey = a})

instance GoogleRequest UsersPhotosGet where
        type Rs UsersPhotosGet = UserPhoto
        requestClient UsersPhotosGet{..}
          = go _upgUserKey (Just AltJSON) directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersPhotosGetResource)
                      mempty
