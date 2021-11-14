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
-- Module      : Network.Google.Resource.SQL.Instances.Export
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports data from a Cloud SQL instance to a Cloud Storage bucket as a
-- SQL dump or CSV file.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.export@.
module Network.Google.Resource.SQL.Instances.Export
    (
    -- * REST Resource
      InstancesExportResource

    -- * Creating a Request
    , instancesExport
    , InstancesExport

    -- * Request Lenses
    , ieXgafv
    , ieUploadProtocol
    , ieProject
    , ieAccessToken
    , ieUploadType
    , iePayload
    , ieCallback
    , ieInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.export@ method which the
-- 'InstancesExport' request conforms to.
type InstancesExportResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "export" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesExportRequest :>
                               Post '[JSON] Operation

-- | Exports data from a Cloud SQL instance to a Cloud Storage bucket as a
-- SQL dump or CSV file.
--
-- /See:/ 'instancesExport' smart constructor.
data InstancesExport =
  InstancesExport'
    { _ieXgafv :: !(Maybe Xgafv)
    , _ieUploadProtocol :: !(Maybe Text)
    , _ieProject :: !Text
    , _ieAccessToken :: !(Maybe Text)
    , _ieUploadType :: !(Maybe Text)
    , _iePayload :: !InstancesExportRequest
    , _ieCallback :: !(Maybe Text)
    , _ieInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ieXgafv'
--
-- * 'ieUploadProtocol'
--
-- * 'ieProject'
--
-- * 'ieAccessToken'
--
-- * 'ieUploadType'
--
-- * 'iePayload'
--
-- * 'ieCallback'
--
-- * 'ieInstance'
instancesExport
    :: Text -- ^ 'ieProject'
    -> InstancesExportRequest -- ^ 'iePayload'
    -> Text -- ^ 'ieInstance'
    -> InstancesExport
instancesExport pIeProject_ pIePayload_ pIeInstance_ =
  InstancesExport'
    { _ieXgafv = Nothing
    , _ieUploadProtocol = Nothing
    , _ieProject = pIeProject_
    , _ieAccessToken = Nothing
    , _ieUploadType = Nothing
    , _iePayload = pIePayload_
    , _ieCallback = Nothing
    , _ieInstance = pIeInstance_
    }


-- | V1 error format.
ieXgafv :: Lens' InstancesExport (Maybe Xgafv)
ieXgafv = lens _ieXgafv (\ s a -> s{_ieXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ieUploadProtocol :: Lens' InstancesExport (Maybe Text)
ieUploadProtocol
  = lens _ieUploadProtocol
      (\ s a -> s{_ieUploadProtocol = a})

-- | Project ID of the project that contains the instance to be exported.
ieProject :: Lens' InstancesExport Text
ieProject
  = lens _ieProject (\ s a -> s{_ieProject = a})

-- | OAuth access token.
ieAccessToken :: Lens' InstancesExport (Maybe Text)
ieAccessToken
  = lens _ieAccessToken
      (\ s a -> s{_ieAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ieUploadType :: Lens' InstancesExport (Maybe Text)
ieUploadType
  = lens _ieUploadType (\ s a -> s{_ieUploadType = a})

-- | Multipart request metadata.
iePayload :: Lens' InstancesExport InstancesExportRequest
iePayload
  = lens _iePayload (\ s a -> s{_iePayload = a})

-- | JSONP
ieCallback :: Lens' InstancesExport (Maybe Text)
ieCallback
  = lens _ieCallback (\ s a -> s{_ieCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
ieInstance :: Lens' InstancesExport Text
ieInstance
  = lens _ieInstance (\ s a -> s{_ieInstance = a})

instance GoogleRequest InstancesExport where
        type Rs InstancesExport = Operation
        type Scopes InstancesExport =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient InstancesExport'{..}
          = go _ieProject _ieInstance _ieXgafv
              _ieUploadProtocol
              _ieAccessToken
              _ieUploadType
              _ieCallback
              (Just AltJSON)
              _iePayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesExportResource)
                      mempty
