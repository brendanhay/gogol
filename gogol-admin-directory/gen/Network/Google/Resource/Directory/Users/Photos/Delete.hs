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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove photos for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.photos.delete@.
module Network.Google.Resource.Directory.Users.Photos.Delete
    (
    -- * REST Resource
      UsersPhotosDeleteResource

    -- * Creating a Request
    , usersPhotosDelete
    , UsersPhotosDelete

    -- * Request Lenses
    , updUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

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
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Remove photos for the user
--
-- /See:/ 'usersPhotosDelete' smart constructor.
newtype UsersPhotosDelete = UsersPhotosDelete
    { _updUserKey :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updUserKey'
usersPhotosDelete
    :: Text -- ^ 'updUserKey'
    -> UsersPhotosDelete
usersPhotosDelete pUpdUserKey_ =
    UsersPhotosDelete
    { _updUserKey = pUpdUserKey_
    }

-- | Email or immutable Id of the user
updUserKey :: Lens' UsersPhotosDelete Text
updUserKey
  = lens _updUserKey (\ s a -> s{_updUserKey = a})

instance GoogleRequest UsersPhotosDelete where
        type Rs UsersPhotosDelete = ()
        requestClient UsersPhotosDelete{..}
          = go _updUserKey (Just AltJSON) directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersPhotosDeleteResource)
                      mempty
