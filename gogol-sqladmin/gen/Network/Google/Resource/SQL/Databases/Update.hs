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
-- Module      : Network.Google.Resource.SQL.Databases.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLDatabasesUpdate@.
module Network.Google.Resource.SQL.Databases.Update
    (
    -- * REST Resource
      DatabasesUpdateResource

    -- * Creating a Request
    , databasesUpdate'
    , DatabasesUpdate'

    -- * Request Lenses
    , duProject
    , duDatabase
    , duPayload
    , duInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLDatabasesUpdate@ method which the
-- 'DatabasesUpdate'' request conforms to.
type DatabasesUpdateResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "databases" :>
               Capture "database" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Database :> Put '[JSON] Operation

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesUpdate'' smart constructor.
data DatabasesUpdate' = DatabasesUpdate'
    { _duProject  :: !Text
    , _duDatabase :: !Text
    , _duPayload  :: !Database
    , _duInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatabasesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duProject'
--
-- * 'duDatabase'
--
-- * 'duPayload'
--
-- * 'duInstance'
databasesUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'database'
    -> Database -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> DatabasesUpdate'
databasesUpdate' pDuProject_ pDuDatabase_ pDuPayload_ pDuInstance_ =
    DatabasesUpdate'
    { _duProject = pDuProject_
    , _duDatabase = pDuDatabase_
    , _duPayload = pDuPayload_
    , _duInstance = pDuInstance_
    }

-- | Project ID of the project that contains the instance.
duProject :: Lens' DatabasesUpdate' Text
duProject
  = lens _duProject (\ s a -> s{_duProject = a})

-- | Name of the database to be updated in the instance.
duDatabase :: Lens' DatabasesUpdate' Text
duDatabase
  = lens _duDatabase (\ s a -> s{_duDatabase = a})

-- | Multipart request metadata.
duPayload :: Lens' DatabasesUpdate' Database
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | Database instance ID. This does not include the project ID.
duInstance :: Lens' DatabasesUpdate' Text
duInstance
  = lens _duInstance (\ s a -> s{_duInstance = a})

instance GoogleRequest DatabasesUpdate' where
        type Rs DatabasesUpdate' = Operation
        requestClient DatabasesUpdate'{..}
          = go _duProject _duInstance _duDatabase
              (Just AltJSON)
              _duPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy DatabasesUpdateResource)
                      mempty
