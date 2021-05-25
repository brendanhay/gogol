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
-- Module      : Network.Google.Resource.SQL.Projects.Instances.VerifyExternalSyncSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verify External primary instance external sync settings.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.projects.instances.verifyExternalSyncSettings@.
module Network.Google.Resource.SQL.Projects.Instances.VerifyExternalSyncSettings
    (
    -- * REST Resource
      ProjectsInstancesVerifyExternalSyncSettingsResource

    -- * Creating a Request
    , projectsInstancesVerifyExternalSyncSettings
    , ProjectsInstancesVerifyExternalSyncSettings

    -- * Request Lenses
    , pivessXgafv
    , pivessUploadProtocol
    , pivessProject
    , pivessAccessToken
    , pivessUploadType
    , pivessSyncMode
    , pivessVerifyConnectionOnly
    , pivessCallback
    , pivessInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.projects.instances.verifyExternalSyncSettings@ method which the
-- 'ProjectsInstancesVerifyExternalSyncSettings' request conforms to.
type ProjectsInstancesVerifyExternalSyncSettingsResource
     =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "instances" :>
             Capture "instance" Text :>
               "verifyExternalSyncSettings" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "syncMode"
                           ProjectsInstancesVerifyExternalSyncSettingsSyncMode
                           :>
                           QueryParam "verifyConnectionOnly" Bool :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON]
                                   SQLInstancesVerifyExternalSyncSettingsResponse

-- | Verify External primary instance external sync settings.
--
-- /See:/ 'projectsInstancesVerifyExternalSyncSettings' smart constructor.
data ProjectsInstancesVerifyExternalSyncSettings =
  ProjectsInstancesVerifyExternalSyncSettings'
    { _pivessXgafv :: !(Maybe Xgafv)
    , _pivessUploadProtocol :: !(Maybe Text)
    , _pivessProject :: !Text
    , _pivessAccessToken :: !(Maybe Text)
    , _pivessUploadType :: !(Maybe Text)
    , _pivessSyncMode :: !(Maybe ProjectsInstancesVerifyExternalSyncSettingsSyncMode)
    , _pivessVerifyConnectionOnly :: !(Maybe Bool)
    , _pivessCallback :: !(Maybe Text)
    , _pivessInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesVerifyExternalSyncSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pivessXgafv'
--
-- * 'pivessUploadProtocol'
--
-- * 'pivessProject'
--
-- * 'pivessAccessToken'
--
-- * 'pivessUploadType'
--
-- * 'pivessSyncMode'
--
-- * 'pivessVerifyConnectionOnly'
--
-- * 'pivessCallback'
--
-- * 'pivessInstance'
projectsInstancesVerifyExternalSyncSettings
    :: Text -- ^ 'pivessProject'
    -> Text -- ^ 'pivessInstance'
    -> ProjectsInstancesVerifyExternalSyncSettings
projectsInstancesVerifyExternalSyncSettings pPivessProject_ pPivessInstance_ =
  ProjectsInstancesVerifyExternalSyncSettings'
    { _pivessXgafv = Nothing
    , _pivessUploadProtocol = Nothing
    , _pivessProject = pPivessProject_
    , _pivessAccessToken = Nothing
    , _pivessUploadType = Nothing
    , _pivessSyncMode = Nothing
    , _pivessVerifyConnectionOnly = Nothing
    , _pivessCallback = Nothing
    , _pivessInstance = pPivessInstance_
    }


-- | V1 error format.
pivessXgafv :: Lens' ProjectsInstancesVerifyExternalSyncSettings (Maybe Xgafv)
pivessXgafv
  = lens _pivessXgafv (\ s a -> s{_pivessXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pivessUploadProtocol :: Lens' ProjectsInstancesVerifyExternalSyncSettings (Maybe Text)
pivessUploadProtocol
  = lens _pivessUploadProtocol
      (\ s a -> s{_pivessUploadProtocol = a})

-- | Project ID of the project that contains the instance.
pivessProject :: Lens' ProjectsInstancesVerifyExternalSyncSettings Text
pivessProject
  = lens _pivessProject
      (\ s a -> s{_pivessProject = a})

-- | OAuth access token.
pivessAccessToken :: Lens' ProjectsInstancesVerifyExternalSyncSettings (Maybe Text)
pivessAccessToken
  = lens _pivessAccessToken
      (\ s a -> s{_pivessAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pivessUploadType :: Lens' ProjectsInstancesVerifyExternalSyncSettings (Maybe Text)
pivessUploadType
  = lens _pivessUploadType
      (\ s a -> s{_pivessUploadType = a})

-- | External sync mode
pivessSyncMode :: Lens' ProjectsInstancesVerifyExternalSyncSettings (Maybe ProjectsInstancesVerifyExternalSyncSettingsSyncMode)
pivessSyncMode
  = lens _pivessSyncMode
      (\ s a -> s{_pivessSyncMode = a})

-- | Flag to enable verifying connection only
pivessVerifyConnectionOnly :: Lens' ProjectsInstancesVerifyExternalSyncSettings (Maybe Bool)
pivessVerifyConnectionOnly
  = lens _pivessVerifyConnectionOnly
      (\ s a -> s{_pivessVerifyConnectionOnly = a})

-- | JSONP
pivessCallback :: Lens' ProjectsInstancesVerifyExternalSyncSettings (Maybe Text)
pivessCallback
  = lens _pivessCallback
      (\ s a -> s{_pivessCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
pivessInstance :: Lens' ProjectsInstancesVerifyExternalSyncSettings Text
pivessInstance
  = lens _pivessInstance
      (\ s a -> s{_pivessInstance = a})

instance GoogleRequest
           ProjectsInstancesVerifyExternalSyncSettings
         where
        type Rs ProjectsInstancesVerifyExternalSyncSettings =
             SQLInstancesVerifyExternalSyncSettingsResponse
        type Scopes
               ProjectsInstancesVerifyExternalSyncSettings
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient
          ProjectsInstancesVerifyExternalSyncSettings'{..}
          = go _pivessProject _pivessInstance _pivessXgafv
              _pivessUploadProtocol
              _pivessAccessToken
              _pivessUploadType
              _pivessSyncMode
              _pivessVerifyConnectionOnly
              _pivessCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesVerifyExternalSyncSettingsResource)
                      mempty
