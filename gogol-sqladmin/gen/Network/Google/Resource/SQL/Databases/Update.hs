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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.databases.update@.
module Network.Google.Resource.SQL.Databases.Update
    (
    -- * REST Resource
      DatabasesUpdateResource

    -- * Creating a Request
    , databasesUpdate
    , DatabasesUpdate

    -- * Request Lenses
    , duXgafv
    , duUploadProtocol
    , duProject
    , duDatabase
    , duAccessToken
    , duUploadType
    , duPayload
    , duCallback
    , duInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.update@ method which the
-- 'DatabasesUpdate' request conforms to.
type DatabasesUpdateResource =
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
                               ReqBody '[JSON] Database :> Put '[JSON] Operation

-- | Updates a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesUpdate' smart constructor.
data DatabasesUpdate =
  DatabasesUpdate'
    { _duXgafv :: !(Maybe Xgafv)
    , _duUploadProtocol :: !(Maybe Text)
    , _duProject :: !Text
    , _duDatabase :: !Text
    , _duAccessToken :: !(Maybe Text)
    , _duUploadType :: !(Maybe Text)
    , _duPayload :: !Database
    , _duCallback :: !(Maybe Text)
    , _duInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabasesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duXgafv'
--
-- * 'duUploadProtocol'
--
-- * 'duProject'
--
-- * 'duDatabase'
--
-- * 'duAccessToken'
--
-- * 'duUploadType'
--
-- * 'duPayload'
--
-- * 'duCallback'
--
-- * 'duInstance'
databasesUpdate
    :: Text -- ^ 'duProject'
    -> Text -- ^ 'duDatabase'
    -> Database -- ^ 'duPayload'
    -> Text -- ^ 'duInstance'
    -> DatabasesUpdate
databasesUpdate pDuProject_ pDuDatabase_ pDuPayload_ pDuInstance_ =
  DatabasesUpdate'
    { _duXgafv = Nothing
    , _duUploadProtocol = Nothing
    , _duProject = pDuProject_
    , _duDatabase = pDuDatabase_
    , _duAccessToken = Nothing
    , _duUploadType = Nothing
    , _duPayload = pDuPayload_
    , _duCallback = Nothing
    , _duInstance = pDuInstance_
    }


-- | V1 error format.
duXgafv :: Lens' DatabasesUpdate (Maybe Xgafv)
duXgafv = lens _duXgafv (\ s a -> s{_duXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
duUploadProtocol :: Lens' DatabasesUpdate (Maybe Text)
duUploadProtocol
  = lens _duUploadProtocol
      (\ s a -> s{_duUploadProtocol = a})

-- | Project ID of the project that contains the instance.
duProject :: Lens' DatabasesUpdate Text
duProject
  = lens _duProject (\ s a -> s{_duProject = a})

-- | Name of the database to be updated in the instance.
duDatabase :: Lens' DatabasesUpdate Text
duDatabase
  = lens _duDatabase (\ s a -> s{_duDatabase = a})

-- | OAuth access token.
duAccessToken :: Lens' DatabasesUpdate (Maybe Text)
duAccessToken
  = lens _duAccessToken
      (\ s a -> s{_duAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
duUploadType :: Lens' DatabasesUpdate (Maybe Text)
duUploadType
  = lens _duUploadType (\ s a -> s{_duUploadType = a})

-- | Multipart request metadata.
duPayload :: Lens' DatabasesUpdate Database
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | JSONP
duCallback :: Lens' DatabasesUpdate (Maybe Text)
duCallback
  = lens _duCallback (\ s a -> s{_duCallback = a})

-- | Database instance ID. This does not include the project ID.
duInstance :: Lens' DatabasesUpdate Text
duInstance
  = lens _duInstance (\ s a -> s{_duInstance = a})

instance GoogleRequest DatabasesUpdate where
        type Rs DatabasesUpdate = Operation
        type Scopes DatabasesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient DatabasesUpdate'{..}
          = go _duProject _duInstance _duDatabase _duXgafv
              _duUploadProtocol
              _duAccessToken
              _duUploadType
              _duCallback
              (Just AltJSON)
              _duPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy DatabasesUpdateResource)
                      mempty
