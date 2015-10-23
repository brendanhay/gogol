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
-- Module      : Network.Google.Resource.Directory.Users.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undelete a deleted user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.undelete@.
module Network.Google.Resource.Directory.Users.Undelete
    (
    -- * REST Resource
      UsersUndeleteResource

    -- * Creating a Request
    , usersUndelete
    , UsersUndelete

    -- * Request Lenses
    , uuPayload
    , uuUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.undelete@ method which the
-- 'UsersUndelete' request conforms to.
type UsersUndeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "undelete" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] UserUndelete :> Post '[JSON] ()

-- | Undelete a deleted user
--
-- /See:/ 'usersUndelete' smart constructor.
data UsersUndelete = UsersUndelete
    { _uuPayload :: !UserUndelete
    , _uuUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uuPayload'
--
-- * 'uuUserKey'
usersUndelete
    :: UserUndelete -- ^ 'uuPayload'
    -> Text -- ^ 'uuUserKey'
    -> UsersUndelete
usersUndelete pUuPayload_ pUuUserKey_ =
    UsersUndelete
    { _uuPayload = pUuPayload_
    , _uuUserKey = pUuUserKey_
    }

-- | Multipart request metadata.
uuPayload :: Lens' UsersUndelete UserUndelete
uuPayload
  = lens _uuPayload (\ s a -> s{_uuPayload = a})

-- | The immutable id of the user
uuUserKey :: Lens' UsersUndelete Text
uuUserKey
  = lens _uuUserKey (\ s a -> s{_uuUserKey = a})

instance GoogleRequest UsersUndelete where
        type Rs UsersUndelete = ()
        requestClient UsersUndelete{..}
          = go _uuUserKey (Just AltJSON) _uuPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersUndeleteResource)
                      mempty
