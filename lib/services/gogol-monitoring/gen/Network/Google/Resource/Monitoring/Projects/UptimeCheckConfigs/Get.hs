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
-- Module      : Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single Uptime check configuration.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.uptimeCheckConfigs.get@.
module Network.Google.Resource.Monitoring.Projects.UptimeCheckConfigs.Get
    (
    -- * REST Resource
      ProjectsUptimeCheckConfigsGetResource

    -- * Creating a Request
    , projectsUptimeCheckConfigsGet
    , ProjectsUptimeCheckConfigsGet

    -- * Request Lenses
    , puccgXgafv
    , puccgUploadProtocol
    , puccgAccessToken
    , puccgUploadType
    , puccgName
    , puccgCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.uptimeCheckConfigs.get@ method which the
-- 'ProjectsUptimeCheckConfigsGet' request conforms to.
type ProjectsUptimeCheckConfigsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] UptimeCheckConfig

-- | Gets a single Uptime check configuration.
--
-- /See:/ 'projectsUptimeCheckConfigsGet' smart constructor.
data ProjectsUptimeCheckConfigsGet =
  ProjectsUptimeCheckConfigsGet'
    { _puccgXgafv :: !(Maybe Xgafv)
    , _puccgUploadProtocol :: !(Maybe Text)
    , _puccgAccessToken :: !(Maybe Text)
    , _puccgUploadType :: !(Maybe Text)
    , _puccgName :: !Text
    , _puccgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsUptimeCheckConfigsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puccgXgafv'
--
-- * 'puccgUploadProtocol'
--
-- * 'puccgAccessToken'
--
-- * 'puccgUploadType'
--
-- * 'puccgName'
--
-- * 'puccgCallback'
projectsUptimeCheckConfigsGet
    :: Text -- ^ 'puccgName'
    -> ProjectsUptimeCheckConfigsGet
projectsUptimeCheckConfigsGet pPuccgName_ =
  ProjectsUptimeCheckConfigsGet'
    { _puccgXgafv = Nothing
    , _puccgUploadProtocol = Nothing
    , _puccgAccessToken = Nothing
    , _puccgUploadType = Nothing
    , _puccgName = pPuccgName_
    , _puccgCallback = Nothing
    }


-- | V1 error format.
puccgXgafv :: Lens' ProjectsUptimeCheckConfigsGet (Maybe Xgafv)
puccgXgafv
  = lens _puccgXgafv (\ s a -> s{_puccgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puccgUploadProtocol :: Lens' ProjectsUptimeCheckConfigsGet (Maybe Text)
puccgUploadProtocol
  = lens _puccgUploadProtocol
      (\ s a -> s{_puccgUploadProtocol = a})

-- | OAuth access token.
puccgAccessToken :: Lens' ProjectsUptimeCheckConfigsGet (Maybe Text)
puccgAccessToken
  = lens _puccgAccessToken
      (\ s a -> s{_puccgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puccgUploadType :: Lens' ProjectsUptimeCheckConfigsGet (Maybe Text)
puccgUploadType
  = lens _puccgUploadType
      (\ s a -> s{_puccgUploadType = a})

-- | Required. The Uptime check configuration to retrieve. The format is:
-- projects\/[PROJECT_ID_OR_NUMBER]\/uptimeCheckConfigs\/[UPTIME_CHECK_ID]
puccgName :: Lens' ProjectsUptimeCheckConfigsGet Text
puccgName
  = lens _puccgName (\ s a -> s{_puccgName = a})

-- | JSONP
puccgCallback :: Lens' ProjectsUptimeCheckConfigsGet (Maybe Text)
puccgCallback
  = lens _puccgCallback
      (\ s a -> s{_puccgCallback = a})

instance GoogleRequest ProjectsUptimeCheckConfigsGet
         where
        type Rs ProjectsUptimeCheckConfigsGet =
             UptimeCheckConfig
        type Scopes ProjectsUptimeCheckConfigsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsUptimeCheckConfigsGet'{..}
          = go _puccgName _puccgXgafv _puccgUploadProtocol
              _puccgAccessToken
              _puccgUploadType
              _puccgCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsUptimeCheckConfigsGetResource)
                      mempty
