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
-- Module      : Network.Google.Resource.Directory.Users.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- update user. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.users.patch@.
module Network.Google.Resource.Directory.Users.Patch
    (
    -- * REST Resource
      UsersPatchResource

    -- * Creating a Request
    , usersPatch
    , UsersPatch

    -- * Request Lenses
    , upPayload
    , upUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.users.patch@ method which the
-- 'UsersPatch' request conforms to.
type UsersPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] User :> Patch '[JSON] User

-- | update user. This method supports patch semantics.
--
-- /See:/ 'usersPatch' smart constructor.
data UsersPatch = UsersPatch'
    { _upPayload :: !User
    , _upUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upPayload'
--
-- * 'upUserKey'
usersPatch
    :: User -- ^ 'upPayload'
    -> Text -- ^ 'upUserKey'
    -> UsersPatch
usersPatch pUpPayload_ pUpUserKey_ =
    UsersPatch'
    { _upPayload = pUpPayload_
    , _upUserKey = pUpUserKey_
    }

-- | Multipart request metadata.
upPayload :: Lens' UsersPatch User
upPayload
  = lens _upPayload (\ s a -> s{_upPayload = a})

-- | Email or immutable ID of the user. If ID, it should match with id of
-- user object
upUserKey :: Lens' UsersPatch Text
upUserKey
  = lens _upUserKey (\ s a -> s{_upUserKey = a})

instance GoogleRequest UsersPatch where
        type Rs UsersPatch = User
        type Scopes UsersPatch =
             '["https://www.googleapis.com/auth/admin.directory.user"]
        requestClient UsersPatch'{..}
          = go _upUserKey (Just AltJSON) _upPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy UsersPatchResource)
                      mempty
