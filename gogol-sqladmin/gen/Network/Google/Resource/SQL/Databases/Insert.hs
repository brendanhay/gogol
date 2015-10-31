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
-- Module      : Network.Google.Resource.SQL.Databases.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.databases.insert@.
module Network.Google.Resource.SQL.Databases.Insert
    (
    -- * REST Resource
      DatabasesInsertResource

    -- * Creating a Request
    , databasesInsert
    , DatabasesInsert

    -- * Request Lenses
    , diProject
    , diPayload
    , diInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.insert@ method which the
-- 'DatabasesInsert' request conforms to.
type DatabasesInsertResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "databases" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Database :> Post '[JSON] Operation

-- | Inserts a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesInsert' smart constructor.
data DatabasesInsert = DatabasesInsert
    { _diProject  :: !Text
    , _diPayload  :: !Database
    , _diInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diProject'
--
-- * 'diPayload'
--
-- * 'diInstance'
databasesInsert
    :: Text -- ^ 'diProject'
    -> Database -- ^ 'diPayload'
    -> Text -- ^ 'diInstance'
    -> DatabasesInsert
databasesInsert pDiProject_ pDiPayload_ pDiInstance_ =
    DatabasesInsert
    { _diProject = pDiProject_
    , _diPayload = pDiPayload_
    , _diInstance = pDiInstance_
    }

-- | Project ID of the project that contains the instance.
diProject :: Lens' DatabasesInsert Text
diProject
  = lens _diProject (\ s a -> s{_diProject = a})

-- | Multipart request metadata.
diPayload :: Lens' DatabasesInsert Database
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | Database instance ID. This does not include the project ID.
diInstance :: Lens' DatabasesInsert Text
diInstance
  = lens _diInstance (\ s a -> s{_diInstance = a})

instance GoogleRequest DatabasesInsert where
        type Rs DatabasesInsert = Operation
        type Scopes DatabasesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient DatabasesInsert{..}
          = go _diProject _diInstance (Just AltJSON) _diPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy DatabasesInsertResource)
                      mempty
