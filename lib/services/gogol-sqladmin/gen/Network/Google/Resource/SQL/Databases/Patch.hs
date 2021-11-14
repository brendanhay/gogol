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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Partially updates a resource containing information about a database
-- inside a Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.databases.patch@.
module Network.Google.Resource.SQL.Databases.Patch
    (
    -- * REST Resource
      DatabasesPatchResource

    -- * Creating a Request
    , databasesPatch
    , DatabasesPatch

    -- * Request Lenses
    , dpXgafv
    , dpUploadProtocol
    , dpProject
    , dpDatabase
    , dpAccessToken
    , dpUploadType
    , dpPayload
    , dpCallback
    , dpInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.patch@ method which the
-- 'DatabasesPatch' request conforms to.
type DatabasesPatchResource =
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
                               ReqBody '[JSON] Database :>
                                 Patch '[JSON] Operation

-- | Partially updates a resource containing information about a database
-- inside a Cloud SQL instance. This method supports patch semantics.
--
-- /See:/ 'databasesPatch' smart constructor.
data DatabasesPatch =
  DatabasesPatch'
    { _dpXgafv :: !(Maybe Xgafv)
    , _dpUploadProtocol :: !(Maybe Text)
    , _dpProject :: !Text
    , _dpDatabase :: !Text
    , _dpAccessToken :: !(Maybe Text)
    , _dpUploadType :: !(Maybe Text)
    , _dpPayload :: !Database
    , _dpCallback :: !(Maybe Text)
    , _dpInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabasesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpXgafv'
--
-- * 'dpUploadProtocol'
--
-- * 'dpProject'
--
-- * 'dpDatabase'
--
-- * 'dpAccessToken'
--
-- * 'dpUploadType'
--
-- * 'dpPayload'
--
-- * 'dpCallback'
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
    { _dpXgafv = Nothing
    , _dpUploadProtocol = Nothing
    , _dpProject = pDpProject_
    , _dpDatabase = pDpDatabase_
    , _dpAccessToken = Nothing
    , _dpUploadType = Nothing
    , _dpPayload = pDpPayload_
    , _dpCallback = Nothing
    , _dpInstance = pDpInstance_
    }


-- | V1 error format.
dpXgafv :: Lens' DatabasesPatch (Maybe Xgafv)
dpXgafv = lens _dpXgafv (\ s a -> s{_dpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dpUploadProtocol :: Lens' DatabasesPatch (Maybe Text)
dpUploadProtocol
  = lens _dpUploadProtocol
      (\ s a -> s{_dpUploadProtocol = a})

-- | Project ID of the project that contains the instance.
dpProject :: Lens' DatabasesPatch Text
dpProject
  = lens _dpProject (\ s a -> s{_dpProject = a})

-- | Name of the database to be updated in the instance.
dpDatabase :: Lens' DatabasesPatch Text
dpDatabase
  = lens _dpDatabase (\ s a -> s{_dpDatabase = a})

-- | OAuth access token.
dpAccessToken :: Lens' DatabasesPatch (Maybe Text)
dpAccessToken
  = lens _dpAccessToken
      (\ s a -> s{_dpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dpUploadType :: Lens' DatabasesPatch (Maybe Text)
dpUploadType
  = lens _dpUploadType (\ s a -> s{_dpUploadType = a})

-- | Multipart request metadata.
dpPayload :: Lens' DatabasesPatch Database
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | JSONP
dpCallback :: Lens' DatabasesPatch (Maybe Text)
dpCallback
  = lens _dpCallback (\ s a -> s{_dpCallback = a})

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
          = go _dpProject _dpInstance _dpDatabase _dpXgafv
              _dpUploadProtocol
              _dpAccessToken
              _dpUploadType
              _dpCallback
              (Just AltJSON)
              _dpPayload
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy DatabasesPatchResource)
                      mempty
