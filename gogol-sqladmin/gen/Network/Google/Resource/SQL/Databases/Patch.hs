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
-- Module      : Network.Google.Resource.SQL.Databases.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a resource containing information about a database inside a
-- Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.databases.patch@.
module Network.Google.Resource.SQL.Databases.Patch
    (
    -- * REST Resource
      DatabasesPatchResource

    -- * Creating a Request
    , databasesPatch
    , DatabasesPatch

    -- * Request Lenses
    , dpProject
    , dpDatabase
    , dpPayload
    , dpInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.patch@ method which the
-- 'DatabasesPatch' request conforms to.
type DatabasesPatchResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "databases" :>
                   Capture "database" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Database :> Patch '[JSON] Operation

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ 'databasesPatch' smart constructor.
data DatabasesPatch = DatabasesPatch'
    { _dpProject  :: !Text
    , _dpDatabase :: !Text
    , _dpPayload  :: !Database
    , _dpInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpProject'
--
-- * 'dpDatabase'
--
-- * 'dpPayload'
--
-- * 'dpInstance'
databasesPatch
    :: Text -- ^ 'dpProject'
    -> Text -- ^ 'dpDatabase'
    -> Database -- ^ 'dpPayload'
    -> Text -- ^ 'dpInstance'
    -> DatabasesPatch
databasesPatch pDpProject_ pDpDatabase_ pDpPayload_ pDpInstance_ =
    DatabasesPatch'
    { _dpProject = pDpProject_
    , _dpDatabase = pDpDatabase_
    , _dpPayload = pDpPayload_
    , _dpInstance = pDpInstance_
    }

-- | Project ID of the project that contains the instance.
dpProject :: Lens' DatabasesPatch Text
dpProject
  = lens _dpProject (\ s a -> s{_dpProject = a})

-- | Name of the database to be updated in the instance.
dpDatabase :: Lens' DatabasesPatch Text
dpDatabase
  = lens _dpDatabase (\ s a -> s{_dpDatabase = a})

-- | Multipart request metadata.
dpPayload :: Lens' DatabasesPatch Database
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | Database instance ID. This does not include the project ID.
dpInstance :: Lens' DatabasesPatch Text
dpInstance
  = lens _dpInstance (\ s a -> s{_dpInstance = a})

instance GoogleRequest DatabasesPatch where
        type Rs DatabasesPatch = Operation
        type Scopes DatabasesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient DatabasesPatch'{..}
          = go _dpProject _dpInstance _dpDatabase
              (Just AltJSON)
              _dpPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy DatabasesPatchResource)
                      mempty
