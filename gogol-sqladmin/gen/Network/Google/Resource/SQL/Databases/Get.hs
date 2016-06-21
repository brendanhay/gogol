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
-- Module      : Network.Google.Resource.SQL.Databases.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.databases.get@.
module Network.Google.Resource.SQL.Databases.Get
    (
    -- * REST Resource
      DatabasesGetResource

    -- * Creating a Request
    , databasesGet
    , DatabasesGet

    -- * Request Lenses
    , dgProject
    , dgDatabase
    , dgInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.get@ method which the
-- 'DatabasesGet' request conforms to.
type DatabasesGetResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "databases" :>
                   Capture "database" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Database

-- | Retrieves a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesGet' smart constructor.
data DatabasesGet = DatabasesGet'
    { _dgProject  :: !Text
    , _dgDatabase :: !Text
    , _dgInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgProject'
--
-- * 'dgDatabase'
--
-- * 'dgInstance'
databasesGet
    :: Text -- ^ 'dgProject'
    -> Text -- ^ 'dgDatabase'
    -> Text -- ^ 'dgInstance'
    -> DatabasesGet
databasesGet pDgProject_ pDgDatabase_ pDgInstance_ =
    DatabasesGet'
    { _dgProject = pDgProject_
    , _dgDatabase = pDgDatabase_
    , _dgInstance = pDgInstance_
    }

-- | Project ID of the project that contains the instance.
dgProject :: Lens' DatabasesGet Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | Name of the database in the instance.
dgDatabase :: Lens' DatabasesGet Text
dgDatabase
  = lens _dgDatabase (\ s a -> s{_dgDatabase = a})

-- | Database instance ID. This does not include the project ID.
dgInstance :: Lens' DatabasesGet Text
dgInstance
  = lens _dgInstance (\ s a -> s{_dgInstance = a})

instance GoogleRequest DatabasesGet where
        type Rs DatabasesGet = Database
        type Scopes DatabasesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient DatabasesGet'{..}
          = go _dgProject _dgInstance _dgDatabase
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy DatabasesGetResource)
                      mempty
