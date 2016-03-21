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
-- Module      : Network.Google.Resource.Directory.Users.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- update user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.update@.
module Network.Google.Resource.Directory.Users.Update
    (
    -- * REST Resource
      UsersUpdateResource

    -- * Creating a Request
    , usersUpdate
    , UsersUpdate

    -- * Request Lenses
    , uPayload
    , uUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.update@ method which the
-- 'UsersUpdate' request conforms to.
type UsersUpdateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] User :> Put '[JSON] User

-- | update user
--
-- /See:/ 'usersUpdate' smart constructor.
data UsersUpdate = UsersUpdate'
    { _uPayload :: !User
    , _uUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uPayload'
--
-- * 'uUserKey'
usersUpdate
    :: User -- ^ 'uPayload'
    -> Text -- ^ 'uUserKey'
    -> UsersUpdate
usersUpdate pUPayload_ pUUserKey_ =
    UsersUpdate'
    { _uPayload = pUPayload_
    , _uUserKey = pUUserKey_
    }

-- | Multipart request metadata.
uPayload :: Lens' UsersUpdate User
uPayload = lens _uPayload (\ s a -> s{_uPayload = a})

-- | Email or immutable Id of the user. If Id, it should match with id of
-- user object
uUserKey :: Lens' UsersUpdate Text
uUserKey = lens _uUserKey (\ s a -> s{_uUserKey = a})

instance GoogleRequest UsersUpdate where
        type Rs UsersUpdate = User
        type Scopes UsersUpdate =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersUpdate'{..}
          = go _uUserKey (Just AltJSON) _uPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersUpdateResource)
                      mempty
