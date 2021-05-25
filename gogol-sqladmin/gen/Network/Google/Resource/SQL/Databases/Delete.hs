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
-- Module      : Network.Google.Resource.SQL.Databases.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a database from a Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.databases.delete@.
module Network.Google.Resource.SQL.Databases.Delete
    (
    -- * REST Resource
      DatabasesDeleteResource

    -- * Creating a Request
    , databasesDelete
    , DatabasesDelete

    -- * Request Lenses
    , ddXgafv
    , ddUploadProtocol
    , ddProject
    , ddDatabase
    , ddAccessToken
    , ddUploadType
    , ddCallback
    , ddInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.delete@ method which the
-- 'DatabasesDelete' request conforms to.
type DatabasesDeleteResource =
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
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] Operation

-- | Deletes a database from a Cloud SQL instance.
--
-- /See:/ 'databasesDelete' smart constructor.
data DatabasesDelete =
  DatabasesDelete'
    { _ddXgafv :: !(Maybe Xgafv)
    , _ddUploadProtocol :: !(Maybe Text)
    , _ddProject :: !Text
    , _ddDatabase :: !Text
    , _ddAccessToken :: !(Maybe Text)
    , _ddUploadType :: !(Maybe Text)
    , _ddCallback :: !(Maybe Text)
    , _ddInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabasesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddXgafv'
--
-- * 'ddUploadProtocol'
--
-- * 'ddProject'
--
-- * 'ddDatabase'
--
-- * 'ddAccessToken'
--
-- * 'ddUploadType'
--
-- * 'ddCallback'
--
-- * 'ddInstance'
databasesDelete
    :: Text -- ^ 'ddProject'
    -> Text -- ^ 'ddDatabase'
    -> Text -- ^ 'ddInstance'
    -> DatabasesDelete
databasesDelete pDdProject_ pDdDatabase_ pDdInstance_ =
  DatabasesDelete'
    { _ddXgafv = Nothing
    , _ddUploadProtocol = Nothing
    , _ddProject = pDdProject_
    , _ddDatabase = pDdDatabase_
    , _ddAccessToken = Nothing
    , _ddUploadType = Nothing
    , _ddCallback = Nothing
    , _ddInstance = pDdInstance_
    }


-- | V1 error format.
ddXgafv :: Lens' DatabasesDelete (Maybe Xgafv)
ddXgafv = lens _ddXgafv (\ s a -> s{_ddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddUploadProtocol :: Lens' DatabasesDelete (Maybe Text)
ddUploadProtocol
  = lens _ddUploadProtocol
      (\ s a -> s{_ddUploadProtocol = a})

-- | Project ID of the project that contains the instance.
ddProject :: Lens' DatabasesDelete Text
ddProject
  = lens _ddProject (\ s a -> s{_ddProject = a})

-- | Name of the database to be deleted in the instance.
ddDatabase :: Lens' DatabasesDelete Text
ddDatabase
  = lens _ddDatabase (\ s a -> s{_ddDatabase = a})

-- | OAuth access token.
ddAccessToken :: Lens' DatabasesDelete (Maybe Text)
ddAccessToken
  = lens _ddAccessToken
      (\ s a -> s{_ddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddUploadType :: Lens' DatabasesDelete (Maybe Text)
ddUploadType
  = lens _ddUploadType (\ s a -> s{_ddUploadType = a})

-- | JSONP
ddCallback :: Lens' DatabasesDelete (Maybe Text)
ddCallback
  = lens _ddCallback (\ s a -> s{_ddCallback = a})

-- | Database instance ID. This does not include the project ID.
ddInstance :: Lens' DatabasesDelete Text
ddInstance
  = lens _ddInstance (\ s a -> s{_ddInstance = a})

instance GoogleRequest DatabasesDelete where
        type Rs DatabasesDelete = Operation
        type Scopes DatabasesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient DatabasesDelete'{..}
          = go _ddProject _ddInstance _ddDatabase _ddXgafv
              _ddUploadProtocol
              _ddAccessToken
              _ddUploadType
              _ddCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy DatabasesDeleteResource)
                      mempty
