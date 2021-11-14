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
-- Module      : Network.Google.Resource.SQL.Instances.Import
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports data into a Cloud SQL instance from a SQL dump or CSV file in
-- Cloud Storage.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.import@.
module Network.Google.Resource.SQL.Instances.Import
    (
    -- * REST Resource
      InstancesImportResource

    -- * Creating a Request
    , instancesImport
    , InstancesImport

    -- * Request Lenses
    , iiXgafv
    , iiUploadProtocol
    , iiProject
    , iiAccessToken
    , iiUploadType
    , iiPayload
    , iiCallback
    , iiInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.import@ method which the
-- 'InstancesImport' request conforms to.
type InstancesImportResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "import" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesImportRequest :>
                               Post '[JSON] Operation

-- | Imports data into a Cloud SQL instance from a SQL dump or CSV file in
-- Cloud Storage.
--
-- /See:/ 'instancesImport' smart constructor.
data InstancesImport =
  InstancesImport'
    { _iiXgafv :: !(Maybe Xgafv)
    , _iiUploadProtocol :: !(Maybe Text)
    , _iiProject :: !Text
    , _iiAccessToken :: !(Maybe Text)
    , _iiUploadType :: !(Maybe Text)
    , _iiPayload :: !InstancesImportRequest
    , _iiCallback :: !(Maybe Text)
    , _iiInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiXgafv'
--
-- * 'iiUploadProtocol'
--
-- * 'iiProject'
--
-- * 'iiAccessToken'
--
-- * 'iiUploadType'
--
-- * 'iiPayload'
--
-- * 'iiCallback'
--
-- * 'iiInstance'
instancesImport
    :: Text -- ^ 'iiProject'
    -> InstancesImportRequest -- ^ 'iiPayload'
    -> Text -- ^ 'iiInstance'
    -> InstancesImport
instancesImport pIiProject_ pIiPayload_ pIiInstance_ =
  InstancesImport'
    { _iiXgafv = Nothing
    , _iiUploadProtocol = Nothing
    , _iiProject = pIiProject_
    , _iiAccessToken = Nothing
    , _iiUploadType = Nothing
    , _iiPayload = pIiPayload_
    , _iiCallback = Nothing
    , _iiInstance = pIiInstance_
    }


-- | V1 error format.
iiXgafv :: Lens' InstancesImport (Maybe Xgafv)
iiXgafv = lens _iiXgafv (\ s a -> s{_iiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iiUploadProtocol :: Lens' InstancesImport (Maybe Text)
iiUploadProtocol
  = lens _iiUploadProtocol
      (\ s a -> s{_iiUploadProtocol = a})

-- | Project ID of the project that contains the instance.
iiProject :: Lens' InstancesImport Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | OAuth access token.
iiAccessToken :: Lens' InstancesImport (Maybe Text)
iiAccessToken
  = lens _iiAccessToken
      (\ s a -> s{_iiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iiUploadType :: Lens' InstancesImport (Maybe Text)
iiUploadType
  = lens _iiUploadType (\ s a -> s{_iiUploadType = a})

-- | Multipart request metadata.
iiPayload :: Lens' InstancesImport InstancesImportRequest
iiPayload
  = lens _iiPayload (\ s a -> s{_iiPayload = a})

-- | JSONP
iiCallback :: Lens' InstancesImport (Maybe Text)
iiCallback
  = lens _iiCallback (\ s a -> s{_iiCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iiInstance :: Lens' InstancesImport Text
iiInstance
  = lens _iiInstance (\ s a -> s{_iiInstance = a})

instance GoogleRequest InstancesImport where
        type Rs InstancesImport = Operation
        type Scopes InstancesImport =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient InstancesImport'{..}
          = go _iiProject _iiInstance _iiXgafv
              _iiUploadProtocol
              _iiAccessToken
              _iiUploadType
              _iiCallback
              (Just AltJSON)
              _iiPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesImportResource)
                      mempty
