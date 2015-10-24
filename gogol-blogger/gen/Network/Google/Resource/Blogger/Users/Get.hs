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
-- Module      : Network.Google.Resource.Blogger.Users.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user by ID.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @blogger.users.get@.
module Network.Google.Resource.Blogger.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugUserId
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @blogger.users.get@ method which the
-- 'UsersGet' request conforms to.
type UsersGetResource =
     "blogger" :>
       "v3" :>
         "users" :>
           Capture "userId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Gets one user by ID.
--
-- /See:/ 'usersGet' smart constructor.
newtype UsersGet = UsersGet
    { _ugUserId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugUserId'
usersGet
    :: Text -- ^ 'ugUserId'
    -> UsersGet
usersGet pUgUserId_ =
    UsersGet
    { _ugUserId = pUgUserId_
    }

-- | The ID of the user to get.
ugUserId :: Lens' UsersGet Text
ugUserId = lens _ugUserId (\ s a -> s{_ugUserId = a})

instance GoogleRequest UsersGet where
        type Rs UsersGet = User
        requestClient UsersGet{..}
          = go _ugUserId (Just AltJSON) bloggerService
          where go
                  = buildClient (Proxy :: Proxy UsersGetResource)
                      mempty
