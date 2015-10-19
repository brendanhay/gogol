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
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryUsersUndelete@.
module Network.Google.Resource.Directory.Users.Undelete
    (
    -- * REST Resource
      UsersUndeleteResource

    -- * Creating a Request
    , usersUndelete'
    , UsersUndelete'

    -- * Request Lenses
    , uPayload
    , uUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryUsersUndelete@ method which the
-- 'UsersUndelete'' request conforms to.
type UsersUndeleteResource =
     "users" :>
       Capture "userKey" Text :>
         "undelete" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] UserUndelete :> Post '[JSON] ()

-- | Undelete a deleted user
--
-- /See:/ 'usersUndelete'' smart constructor.
data UsersUndelete' = UsersUndelete'
    { _uPayload :: !UserUndelete
    , _uUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uPayload'
--
-- * 'uUserKey'
usersUndelete'
    :: UserUndelete -- ^ 'payload'
    -> Text -- ^ 'userKey'
    -> UsersUndelete'
usersUndelete' pUPayload_ pUUserKey_ =
    UsersUndelete'
    { _uPayload = pUPayload_
    , _uUserKey = pUUserKey_
    }

-- | Multipart request metadata.
uPayload :: Lens' UsersUndelete' UserUndelete
uPayload = lens _uPayload (\ s a -> s{_uPayload = a})

-- | The immutable id of the user
uUserKey :: Lens' UsersUndelete' Text
uUserKey = lens _uUserKey (\ s a -> s{_uUserKey = a})

instance GoogleRequest UsersUndelete' where
        type Rs UsersUndelete' = ()
        requestClient UsersUndelete'{..}
          = go _uUserKey (Just AltJSON) _uPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersUndeleteResource)
                      mempty
