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
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.databases.get@.
module Network.Google.Resource.SQL.Databases.Get
    (
    -- * REST Resource
      DatabasesGetResource

    -- * Creating a Request
    , databasesGet
    , DatabasesGet

    -- * Request Lenses
    , dgXgafv
    , dgUploadProtocol
    , dgProject
    , dgDatabase
    , dgAccessToken
    , dgUploadType
    , dgCallback
    , dgInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.get@ method which the
-- 'DatabasesGet' request conforms to.
type DatabasesGetResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "databases" :>
                 Capture "database" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Database

-- | Retrieves a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesGet' smart constructor.
data DatabasesGet =
  DatabasesGet'
    { _dgXgafv :: !(Maybe Xgafv)
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgProject :: !Text
    , _dgDatabase :: !Text
    , _dgAccessToken :: !(Maybe Text)
    , _dgUploadType :: !(Maybe Text)
    , _dgCallback :: !(Maybe Text)
    , _dgInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabasesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgUploadProtocol'
--
-- * 'dgProject'
--
-- * 'dgDatabase'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgCallback'
--
-- * 'dgInstance'
databasesGet
    :: Text -- ^ 'dgProject'
    -> Text -- ^ 'dgDatabase'
    -> Text -- ^ 'dgInstance'
    -> DatabasesGet
databasesGet pDgProject_ pDgDatabase_ pDgInstance_ =
  DatabasesGet'
    { _dgXgafv = Nothing
    , _dgUploadProtocol = Nothing
    , _dgProject = pDgProject_
    , _dgDatabase = pDgDatabase_
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgCallback = Nothing
    , _dgInstance = pDgInstance_
    }


-- | V1 error format.
dgXgafv :: Lens' DatabasesGet (Maybe Xgafv)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DatabasesGet (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | Project ID of the project that contains the instance.
dgProject :: Lens' DatabasesGet Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | Name of the database in the instance.
dgDatabase :: Lens' DatabasesGet Text
dgDatabase
  = lens _dgDatabase (\ s a -> s{_dgDatabase = a})

-- | OAuth access token.
dgAccessToken :: Lens' DatabasesGet (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DatabasesGet (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | JSONP
dgCallback :: Lens' DatabasesGet (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

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
          = go _dgProject _dgInstance _dgDatabase _dgXgafv
              _dgUploadProtocol
              _dgAccessToken
              _dgUploadType
              _dgCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy DatabasesGetResource)
                      mempty
