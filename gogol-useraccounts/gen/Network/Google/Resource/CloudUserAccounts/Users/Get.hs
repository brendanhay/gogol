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
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified User resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.users.get@.
module Network.Google.Resource.CloudUserAccounts.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet
    , UsersGet

    -- * Request Lenses
    , ugProject
    , ugUser
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.users.get@ method which the
-- 'UsersGet' request conforms to.
type UsersGetResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "users" :>
                 Capture "user" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Returns the specified User resource.
--
-- /See:/ 'usersGet' smart constructor.
data UsersGet = UsersGet'
    { _ugProject :: !Text
    , _ugUser    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugProject'
--
-- * 'ugUser'
usersGet
    :: Text -- ^ 'ugProject'
    -> Text -- ^ 'ugUser'
    -> UsersGet
usersGet pUgProject_ pUgUser_ =
    UsersGet'
    { _ugProject = pUgProject_
    , _ugUser = pUgUser_
    }

-- | Project ID for this request.
ugProject :: Lens' UsersGet Text
ugProject
  = lens _ugProject (\ s a -> s{_ugProject = a})

-- | Name of the user resource to return.
ugUser :: Lens' UsersGet Text
ugUser = lens _ugUser (\ s a -> s{_ugUser = a})

instance GoogleRequest UsersGet where
        type Rs UsersGet = User
        type Scopes UsersGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/cloud.useraccounts",
               "https://www.googleapis.com/auth/cloud.useraccounts.readonly"]
        requestClient UsersGet'{..}
          = go _ugProject _ugUser (Just AltJSON)
              userAccountsService
          where go
                  = buildClient (Proxy :: Proxy UsersGetResource)
                      mempty
