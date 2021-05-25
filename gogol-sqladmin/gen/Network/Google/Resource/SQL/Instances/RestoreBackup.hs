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
-- Module      : Network.Google.Resource.SQL.Instances.RestoreBackup
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a backup of a Cloud SQL instance. Using this operation might
-- cause your instance to restart.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.instances.restoreBackup@.
module Network.Google.Resource.SQL.Instances.RestoreBackup
    (
    -- * REST Resource
      InstancesRestoreBackupResource

    -- * Creating a Request
    , instancesRestoreBackup
    , InstancesRestoreBackup

    -- * Request Lenses
    , irbXgafv
    , irbUploadProtocol
    , irbProject
    , irbAccessToken
    , irbUploadType
    , irbPayload
    , irbCallback
    , irbInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.restoreBackup@ method which the
-- 'InstancesRestoreBackup' request conforms to.
type InstancesRestoreBackupResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "restoreBackup" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesRestoreBackupRequest :>
                               Post '[JSON] Operation

-- | Restores a backup of a Cloud SQL instance. Using this operation might
-- cause your instance to restart.
--
-- /See:/ 'instancesRestoreBackup' smart constructor.
data InstancesRestoreBackup =
  InstancesRestoreBackup'
    { _irbXgafv :: !(Maybe Xgafv)
    , _irbUploadProtocol :: !(Maybe Text)
    , _irbProject :: !Text
    , _irbAccessToken :: !(Maybe Text)
    , _irbUploadType :: !(Maybe Text)
    , _irbPayload :: !InstancesRestoreBackupRequest
    , _irbCallback :: !(Maybe Text)
    , _irbInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesRestoreBackup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irbXgafv'
--
-- * 'irbUploadProtocol'
--
-- * 'irbProject'
--
-- * 'irbAccessToken'
--
-- * 'irbUploadType'
--
-- * 'irbPayload'
--
-- * 'irbCallback'
--
-- * 'irbInstance'
instancesRestoreBackup
    :: Text -- ^ 'irbProject'
    -> InstancesRestoreBackupRequest -- ^ 'irbPayload'
    -> Text -- ^ 'irbInstance'
    -> InstancesRestoreBackup
instancesRestoreBackup pIrbProject_ pIrbPayload_ pIrbInstance_ =
  InstancesRestoreBackup'
    { _irbXgafv = Nothing
    , _irbUploadProtocol = Nothing
    , _irbProject = pIrbProject_
    , _irbAccessToken = Nothing
    , _irbUploadType = Nothing
    , _irbPayload = pIrbPayload_
    , _irbCallback = Nothing
    , _irbInstance = pIrbInstance_
    }


-- | V1 error format.
irbXgafv :: Lens' InstancesRestoreBackup (Maybe Xgafv)
irbXgafv = lens _irbXgafv (\ s a -> s{_irbXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
irbUploadProtocol :: Lens' InstancesRestoreBackup (Maybe Text)
irbUploadProtocol
  = lens _irbUploadProtocol
      (\ s a -> s{_irbUploadProtocol = a})

-- | Project ID of the project that contains the instance.
irbProject :: Lens' InstancesRestoreBackup Text
irbProject
  = lens _irbProject (\ s a -> s{_irbProject = a})

-- | OAuth access token.
irbAccessToken :: Lens' InstancesRestoreBackup (Maybe Text)
irbAccessToken
  = lens _irbAccessToken
      (\ s a -> s{_irbAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
irbUploadType :: Lens' InstancesRestoreBackup (Maybe Text)
irbUploadType
  = lens _irbUploadType
      (\ s a -> s{_irbUploadType = a})

-- | Multipart request metadata.
irbPayload :: Lens' InstancesRestoreBackup InstancesRestoreBackupRequest
irbPayload
  = lens _irbPayload (\ s a -> s{_irbPayload = a})

-- | JSONP
irbCallback :: Lens' InstancesRestoreBackup (Maybe Text)
irbCallback
  = lens _irbCallback (\ s a -> s{_irbCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irbInstance :: Lens' InstancesRestoreBackup Text
irbInstance
  = lens _irbInstance (\ s a -> s{_irbInstance = a})

instance GoogleRequest InstancesRestoreBackup where
        type Rs InstancesRestoreBackup = Operation
        type Scopes InstancesRestoreBackup =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesRestoreBackup'{..}
          = go _irbProject _irbInstance _irbXgafv
              _irbUploadProtocol
              _irbAccessToken
              _irbUploadType
              _irbCallback
              (Just AltJSON)
              _irbPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesRestoreBackupResource)
                      mempty
