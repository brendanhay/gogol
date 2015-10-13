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
-- Module      : Network.Google.Resource.SQL.Users.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists users in the specified Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLUsersList@.
module Network.Google.Resource.SQL.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList'
    , UsersList'

    -- * Request Lenses
    , ulProject
    , ulInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLUsersList@ method which the
-- 'UsersList'' request conforms to.
type UsersListResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "users" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] UsersListResponse

-- | Lists users in the specified Cloud SQL instance.
--
-- /See:/ 'usersList'' smart constructor.
data UsersList' = UsersList'
    { _ulProject  :: !Text
    , _ulInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulProject'
--
-- * 'ulInstance'
usersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> UsersList'
usersList' pUlProject_ pUlInstance_ =
    UsersList'
    { _ulProject = pUlProject_
    , _ulInstance = pUlInstance_
    }

-- | Project ID of the project that contains the instance.
ulProject :: Lens' UsersList' Text
ulProject
  = lens _ulProject (\ s a -> s{_ulProject = a})

-- | Database instance ID. This does not include the project ID.
ulInstance :: Lens' UsersList' Text
ulInstance
  = lens _ulInstance (\ s a -> s{_ulInstance = a})

instance GoogleRequest UsersList' where
        type Rs UsersList' = UsersListResponse
        requestClient UsersList'{..}
          = go _ulProject _ulInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersListResource)
                      mempty
