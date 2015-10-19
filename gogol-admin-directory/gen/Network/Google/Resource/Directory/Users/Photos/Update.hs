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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a photo for the user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.photos.update@.
module Network.Google.Resource.Directory.Users.Photos.Update
    (
    -- * REST Resource
      UsersPhotosUpdateResource

    -- * Creating a Request
    , usersPhotosUpdate'
    , UsersPhotosUpdate'

    -- * Request Lenses
    , upuPayload
    , upuUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.photos.update@ method which the
-- 'UsersPhotosUpdate'' request conforms to.
type UsersPhotosUpdateResource =
     "users" :>
       Capture "userKey" Text :>
         "photos" :>
           "thumbnail" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] UserPhoto :> Put '[JSON] UserPhoto

-- | Add a photo for the user
--
-- /See:/ 'usersPhotosUpdate'' smart constructor.
data UsersPhotosUpdate' = UsersPhotosUpdate'
    { _upuPayload :: !UserPhoto
    , _upuUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPhotosUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upuPayload'
--
-- * 'upuUserKey'
usersPhotosUpdate'
    :: UserPhoto -- ^ 'upuPayload'
    -> Text -- ^ 'upuUserKey'
    -> UsersPhotosUpdate'
usersPhotosUpdate' pUpuPayload_ pUpuUserKey_ =
    UsersPhotosUpdate'
    { _upuPayload = pUpuPayload_
    , _upuUserKey = pUpuUserKey_
    }

-- | Multipart request metadata.
upuPayload :: Lens' UsersPhotosUpdate' UserPhoto
upuPayload
  = lens _upuPayload (\ s a -> s{_upuPayload = a})

-- | Email or immutable Id of the user
upuUserKey :: Lens' UsersPhotosUpdate' Text
upuUserKey
  = lens _upuUserKey (\ s a -> s{_upuUserKey = a})

instance GoogleRequest UsersPhotosUpdate' where
        type Rs UsersPhotosUpdate' = UserPhoto
        requestClient UsersPhotosUpdate'{..}
          = go _upuUserKey (Just AltJSON) _upuPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersPhotosUpdateResource)
                      mempty
