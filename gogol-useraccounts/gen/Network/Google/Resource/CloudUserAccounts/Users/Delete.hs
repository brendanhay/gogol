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
-- Module      : Network.Google.Resource.CloudUserAccounts.Users.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified User resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @clouduseraccounts.users.delete@.
module Network.Google.Resource.CloudUserAccounts.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete
    , UsersDelete

    -- * Request Lenses
    , udProject
    , udUser
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @clouduseraccounts.users.delete@ method which the
-- 'UsersDelete' request conforms to.
type UsersDeleteResource =
     "clouduseraccounts" :>
       "beta" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "users" :>
                 Capture "user" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified User resource.
--
-- /See:/ 'usersDelete' smart constructor.
data UsersDelete = UsersDelete
    { _udProject :: !Text
    , _udUser    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udProject'
--
-- * 'udUser'
usersDelete
    :: Text -- ^ 'udProject'
    -> Text -- ^ 'udUser'
    -> UsersDelete
usersDelete pUdProject_ pUdUser_ =
    UsersDelete
    { _udProject = pUdProject_
    , _udUser = pUdUser_
    }

-- | Project ID for this request.
udProject :: Lens' UsersDelete Text
udProject
  = lens _udProject (\ s a -> s{_udProject = a})

-- | Name of the user resource to delete.
udUser :: Lens' UsersDelete Text
udUser = lens _udUser (\ s a -> s{_udUser = a})

instance GoogleRequest UsersDelete where
        type Rs UsersDelete = Operation
        type Scopes UsersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud.useraccounts"]
        requestClient UsersDelete{..}
          = go _udProject _udUser (Just AltJSON)
              userAccountsService
          where go
                  = buildClient (Proxy :: Proxy UsersDeleteResource)
                      mempty
