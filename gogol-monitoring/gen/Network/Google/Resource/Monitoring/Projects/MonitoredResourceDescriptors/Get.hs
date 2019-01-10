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
-- Module      : Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single monitored resource descriptor. This method does not
-- require a Stackdriver account.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.monitoredResourceDescriptors.get@.
module Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.Get
    (
    -- * REST Resource
      ProjectsMonitoredResourceDescriptorsGetResource

    -- * Creating a Request
    , projectsMonitoredResourceDescriptorsGet
    , ProjectsMonitoredResourceDescriptorsGet

    -- * Request Lenses
    , pmrdgXgafv
    , pmrdgUploadProtocol
    , pmrdgAccessToken
    , pmrdgUploadType
    , pmrdgName
    , pmrdgCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.monitoredResourceDescriptors.get@ method which the
-- 'ProjectsMonitoredResourceDescriptorsGet' request conforms to.
type ProjectsMonitoredResourceDescriptorsGetResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] MonitoredResourceDescriptor

-- | Gets a single monitored resource descriptor. This method does not
-- require a Stackdriver account.
--
-- /See:/ 'projectsMonitoredResourceDescriptorsGet' smart constructor.
data ProjectsMonitoredResourceDescriptorsGet = ProjectsMonitoredResourceDescriptorsGet'
    { _pmrdgXgafv          :: !(Maybe Xgafv)
    , _pmrdgUploadProtocol :: !(Maybe Text)
    , _pmrdgAccessToken    :: !(Maybe Text)
    , _pmrdgUploadType     :: !(Maybe Text)
    , _pmrdgName           :: !Text
    , _pmrdgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMonitoredResourceDescriptorsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmrdgXgafv'
--
-- * 'pmrdgUploadProtocol'
--
-- * 'pmrdgAccessToken'
--
-- * 'pmrdgUploadType'
--
-- * 'pmrdgName'
--
-- * 'pmrdgCallback'
projectsMonitoredResourceDescriptorsGet
    :: Text -- ^ 'pmrdgName'
    -> ProjectsMonitoredResourceDescriptorsGet
projectsMonitoredResourceDescriptorsGet pPmrdgName_ =
    ProjectsMonitoredResourceDescriptorsGet'
    { _pmrdgXgafv = Nothing
    , _pmrdgUploadProtocol = Nothing
    , _pmrdgAccessToken = Nothing
    , _pmrdgUploadType = Nothing
    , _pmrdgName = pPmrdgName_
    , _pmrdgCallback = Nothing
    }

-- | V1 error format.
pmrdgXgafv :: Lens' ProjectsMonitoredResourceDescriptorsGet (Maybe Xgafv)
pmrdgXgafv
  = lens _pmrdgXgafv (\ s a -> s{_pmrdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmrdgUploadProtocol :: Lens' ProjectsMonitoredResourceDescriptorsGet (Maybe Text)
pmrdgUploadProtocol
  = lens _pmrdgUploadProtocol
      (\ s a -> s{_pmrdgUploadProtocol = a})

-- | OAuth access token.
pmrdgAccessToken :: Lens' ProjectsMonitoredResourceDescriptorsGet (Maybe Text)
pmrdgAccessToken
  = lens _pmrdgAccessToken
      (\ s a -> s{_pmrdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmrdgUploadType :: Lens' ProjectsMonitoredResourceDescriptorsGet (Maybe Text)
pmrdgUploadType
  = lens _pmrdgUploadType
      (\ s a -> s{_pmrdgUploadType = a})

-- | The monitored resource descriptor to get. The format is
-- \"projects\/{project_id_or_number}\/monitoredResourceDescriptors\/{resource_type}\".
-- The {resource_type} is a predefined type, such as cloudsql_database.
pmrdgName :: Lens' ProjectsMonitoredResourceDescriptorsGet Text
pmrdgName
  = lens _pmrdgName (\ s a -> s{_pmrdgName = a})

-- | JSONP
pmrdgCallback :: Lens' ProjectsMonitoredResourceDescriptorsGet (Maybe Text)
pmrdgCallback
  = lens _pmrdgCallback
      (\ s a -> s{_pmrdgCallback = a})

instance GoogleRequest
         ProjectsMonitoredResourceDescriptorsGet where
        type Rs ProjectsMonitoredResourceDescriptorsGet =
             MonitoredResourceDescriptor
        type Scopes ProjectsMonitoredResourceDescriptorsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient
          ProjectsMonitoredResourceDescriptorsGet'{..}
          = go _pmrdgName _pmrdgXgafv _pmrdgUploadProtocol
              _pmrdgAccessToken
              _pmrdgUploadType
              _pmrdgCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsMonitoredResourceDescriptorsGetResource)
                      mempty
