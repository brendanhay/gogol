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
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.databases.insert@.
module Network.Google.Resource.SQL.Databases.Insert
    (
    -- * REST Resource
      DatabasesInsertResource

    -- * Creating a Request
    , databasesInsert
    , DatabasesInsert

    -- * Request Lenses
    , diXgafv
    , diUploadProtocol
    , diProject
    , diAccessToken
    , diUploadType
    , diPayload
    , diCallback
    , diInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.databases.insert@ method which the
-- 'DatabasesInsert' request conforms to.
type DatabasesInsertResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "databases" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Database :> Post '[JSON] Operation

-- | Inserts a resource containing information about a database inside a
-- Cloud SQL instance.
--
-- /See:/ 'databasesInsert' smart constructor.
data DatabasesInsert =
  DatabasesInsert'
    { _diXgafv :: !(Maybe Xgafv)
    , _diUploadProtocol :: !(Maybe Text)
    , _diProject :: !Text
    , _diAccessToken :: !(Maybe Text)
    , _diUploadType :: !(Maybe Text)
    , _diPayload :: !Database
    , _diCallback :: !(Maybe Text)
    , _diInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatabasesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diXgafv'
--
-- * 'diUploadProtocol'
--
-- * 'diProject'
--
-- * 'diAccessToken'
--
-- * 'diUploadType'
--
-- * 'diPayload'
--
-- * 'diCallback'
--
-- * 'diInstance'
databasesInsert
    :: Text -- ^ 'diProject'
    -> Database -- ^ 'diPayload'
    -> Text -- ^ 'diInstance'
    -> DatabasesInsert
databasesInsert pDiProject_ pDiPayload_ pDiInstance_ =
  DatabasesInsert'
    { _diXgafv = Nothing
    , _diUploadProtocol = Nothing
    , _diProject = pDiProject_
    , _diAccessToken = Nothing
    , _diUploadType = Nothing
    , _diPayload = pDiPayload_
    , _diCallback = Nothing
    , _diInstance = pDiInstance_
    }


-- | V1 error format.
diXgafv :: Lens' DatabasesInsert (Maybe Xgafv)
diXgafv = lens _diXgafv (\ s a -> s{_diXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
diUploadProtocol :: Lens' DatabasesInsert (Maybe Text)
diUploadProtocol
  = lens _diUploadProtocol
      (\ s a -> s{_diUploadProtocol = a})

-- | Project ID of the project that contains the instance.
diProject :: Lens' DatabasesInsert Text
diProject
  = lens _diProject (\ s a -> s{_diProject = a})

-- | OAuth access token.
diAccessToken :: Lens' DatabasesInsert (Maybe Text)
diAccessToken
  = lens _diAccessToken
      (\ s a -> s{_diAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
diUploadType :: Lens' DatabasesInsert (Maybe Text)
diUploadType
  = lens _diUploadType (\ s a -> s{_diUploadType = a})

-- | Multipart request metadata.
diPayload :: Lens' DatabasesInsert Database
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | JSONP
diCallback :: Lens' DatabasesInsert (Maybe Text)
diCallback
  = lens _diCallback (\ s a -> s{_diCallback = a})

-- | Database instance ID. This does not include the project ID.
diInstance :: Lens' DatabasesInsert Text
diInstance
  = lens _diInstance (\ s a -> s{_diInstance = a})

instance GoogleRequest DatabasesInsert where
        type Rs DatabasesInsert = Operation
        type Scopes DatabasesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient DatabasesInsert'{..}
          = go _diProject _diInstance _diXgafv
              _diUploadProtocol
              _diAccessToken
              _diUploadType
              _diCallback
              (Just AltJSON)
              _diPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy DatabasesInsertResource)
                      mempty
