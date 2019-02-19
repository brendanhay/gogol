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
-- Module      : Network.Google.Resource.SQL.Users.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user from a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.users.delete@.
module Network.Google.Resource.SQL.Users.Delete
    (
    -- * REST Resource
      UsersDeleteResource

    -- * Creating a Request
    , usersDelete
    , UsersDelete

    -- * Request Lenses
    , udProject
    , udName
    , udHost
    , udInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.users.delete@ method which the
-- 'UsersDelete' request conforms to.
type UsersDeleteResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "users" :>
                   QueryParam "host" Text :>
                     QueryParam "name" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a user from a Cloud SQL instance.
--
-- /See:/ 'usersDelete' smart constructor.
data UsersDelete =
  UsersDelete'
    { _udProject  :: !Text
    , _udName     :: !Text
    , _udHost     :: !Text
    , _udInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UsersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udProject'
--
-- * 'udName'
--
-- * 'udHost'
--
-- * 'udInstance'
usersDelete
    :: Text -- ^ 'udProject'
    -> Text -- ^ 'udName'
    -> Text -- ^ 'udHost'
    -> Text -- ^ 'udInstance'
    -> UsersDelete
usersDelete pUdProject_ pUdName_ pUdHost_ pUdInstance_ =
  UsersDelete'
    { _udProject = pUdProject_
    , _udName = pUdName_
    , _udHost = pUdHost_
    , _udInstance = pUdInstance_
    }

-- | Project ID of the project that contains the instance.
udProject :: Lens' UsersDelete Text
udProject
  = lens _udProject (\ s a -> s{_udProject = a})

-- | Name of the user in the instance.
udName :: Lens' UsersDelete Text
udName = lens _udName (\ s a -> s{_udName = a})

-- | Host of the user in the instance.
udHost :: Lens' UsersDelete Text
udHost = lens _udHost (\ s a -> s{_udHost = a})

-- | Database instance ID. This does not include the project ID.
udInstance :: Lens' UsersDelete Text
udInstance
  = lens _udInstance (\ s a -> s{_udInstance = a})

instance GoogleRequest UsersDelete where
        type Rs UsersDelete = Operation
        type Scopes UsersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient UsersDelete'{..}
          = go _udProject _udInstance (Just _udHost)
              (Just _udName)
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy UsersDeleteResource)
                      mempty
