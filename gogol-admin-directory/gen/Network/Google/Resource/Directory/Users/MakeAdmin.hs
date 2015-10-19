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
-- Module      : Network.Google.Resource.Directory.Users.MakeAdmin
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- change admin status of a user
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.makeAdmin@.
module Network.Google.Resource.Directory.Users.MakeAdmin
    (
    -- * REST Resource
      UsersMakeAdminResource

    -- * Creating a Request
    , usersMakeAdmin'
    , UsersMakeAdmin'

    -- * Request Lenses
    , umaPayload
    , umaUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.makeAdmin@ method which the
-- 'UsersMakeAdmin'' request conforms to.
type UsersMakeAdminResource =
     "users" :>
       Capture "userKey" Text :>
         "makeAdmin" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] UserMakeAdmin :> Post '[JSON] ()

-- | change admin status of a user
--
-- /See:/ 'usersMakeAdmin'' smart constructor.
data UsersMakeAdmin' = UsersMakeAdmin'
    { _umaPayload :: !UserMakeAdmin
    , _umaUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMakeAdmin'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umaPayload'
--
-- * 'umaUserKey'
usersMakeAdmin'
    :: UserMakeAdmin -- ^ 'umaPayload'
    -> Text -- ^ 'umaUserKey'
    -> UsersMakeAdmin'
usersMakeAdmin' pUmaPayload_ pUmaUserKey_ =
    UsersMakeAdmin'
    { _umaPayload = pUmaPayload_
    , _umaUserKey = pUmaUserKey_
    }

-- | Multipart request metadata.
umaPayload :: Lens' UsersMakeAdmin' UserMakeAdmin
umaPayload
  = lens _umaPayload (\ s a -> s{_umaPayload = a})

-- | Email or immutable Id of the user as admin
umaUserKey :: Lens' UsersMakeAdmin' Text
umaUserKey
  = lens _umaUserKey (\ s a -> s{_umaUserKey = a})

instance GoogleRequest UsersMakeAdmin' where
        type Rs UsersMakeAdmin' = ()
        requestClient UsersMakeAdmin'{..}
          = go _umaUserKey (Just AltJSON) _umaPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersMakeAdminResource)
                      mempty
