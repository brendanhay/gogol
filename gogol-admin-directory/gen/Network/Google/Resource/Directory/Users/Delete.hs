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
-- Module      : Network.Google.Resource.Directory.Users.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.delete@.
module Network.Google.Resource.Directory.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete
    , UsersDelete

    -- * Request Lenses
    , udUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.delete@ method which the
-- 'UsersDelete' request conforms to.
type UsersDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete user
--
-- /See:/ 'usersDelete' smart constructor.
newtype UsersDelete = UsersDelete'
    { _udUserKey :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udUserKey'
usersDelete
    :: Text -- ^ 'udUserKey'
    -> UsersDelete
usersDelete pUdUserKey_ =
    UsersDelete'
    { _udUserKey = pUdUserKey_
    }

-- | Email or immutable Id of the user
udUserKey :: Lens' UsersDelete Text
udUserKey
  = lens _udUserKey (\ s a -> s{_udUserKey = a})

instance GoogleRequest UsersDelete where
        type Rs UsersDelete = ()
        type Scopes UsersDelete =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersDelete'{..}
          = go _udUserKey (Just AltJSON) directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersDeleteResource)
                      mempty
