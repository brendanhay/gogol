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
-- Module      : Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single metric descriptor.
--
-- /See:/ <https://cloud.google.com/monitoring/alpha/ Google Monitoring API Reference> for @monitoring.projects.metricDescriptors.get@.
module Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Get
    (
    -- * REST Resource
      ProjectsMetricDescriptorsGetResource

    -- * Creating a Request
    , projectsMetricDescriptorsGet
    , ProjectsMetricDescriptorsGet

    -- * Request Lenses
    , pmdgXgafv
    , pmdgUploadProtocol
    , pmdgPp
    , pmdgAccessToken
    , pmdgUploadType
    , pmdgBearerToken
    , pmdgName
    , pmdgCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.metricDescriptors.get@ method which the
-- 'ProjectsMetricDescriptorsGet' request conforms to.
type ProjectsMetricDescriptorsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] MetricDescriptor

-- | Gets a single metric descriptor.
--
-- /See:/ 'projectsMetricDescriptorsGet' smart constructor.
data ProjectsMetricDescriptorsGet = ProjectsMetricDescriptorsGet
    { _pmdgXgafv          :: !(Maybe Text)
    , _pmdgUploadProtocol :: !(Maybe Text)
    , _pmdgPp             :: !Bool
    , _pmdgAccessToken    :: !(Maybe Text)
    , _pmdgUploadType     :: !(Maybe Text)
    , _pmdgBearerToken    :: !(Maybe Text)
    , _pmdgName           :: !Text
    , _pmdgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMetricDescriptorsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdgXgafv'
--
-- * 'pmdgUploadProtocol'
--
-- * 'pmdgPp'
--
-- * 'pmdgAccessToken'
--
-- * 'pmdgUploadType'
--
-- * 'pmdgBearerToken'
--
-- * 'pmdgName'
--
-- * 'pmdgCallback'
projectsMetricDescriptorsGet
    :: Text -- ^ 'pmdgName'
    -> ProjectsMetricDescriptorsGet
projectsMetricDescriptorsGet pPmdgName_ =
    ProjectsMetricDescriptorsGet
    { _pmdgXgafv = Nothing
    , _pmdgUploadProtocol = Nothing
    , _pmdgPp = True
    , _pmdgAccessToken = Nothing
    , _pmdgUploadType = Nothing
    , _pmdgBearerToken = Nothing
    , _pmdgName = pPmdgName_
    , _pmdgCallback = Nothing
    }

-- | V1 error format.
pmdgXgafv :: Lens' ProjectsMetricDescriptorsGet (Maybe Text)
pmdgXgafv
  = lens _pmdgXgafv (\ s a -> s{_pmdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmdgUploadProtocol :: Lens' ProjectsMetricDescriptorsGet (Maybe Text)
pmdgUploadProtocol
  = lens _pmdgUploadProtocol
      (\ s a -> s{_pmdgUploadProtocol = a})

-- | Pretty-print response.
pmdgPp :: Lens' ProjectsMetricDescriptorsGet Bool
pmdgPp = lens _pmdgPp (\ s a -> s{_pmdgPp = a})

-- | OAuth access token.
pmdgAccessToken :: Lens' ProjectsMetricDescriptorsGet (Maybe Text)
pmdgAccessToken
  = lens _pmdgAccessToken
      (\ s a -> s{_pmdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmdgUploadType :: Lens' ProjectsMetricDescriptorsGet (Maybe Text)
pmdgUploadType
  = lens _pmdgUploadType
      (\ s a -> s{_pmdgUploadType = a})

-- | OAuth bearer token.
pmdgBearerToken :: Lens' ProjectsMetricDescriptorsGet (Maybe Text)
pmdgBearerToken
  = lens _pmdgBearerToken
      (\ s a -> s{_pmdgBearerToken = a})

-- | The metric descriptor on which to execute the request. The format is
-- \`\"projects\/ \/metricDescriptors\/\"\`. An example value of \`\` is
-- \`\"compute.googleapis.com\/instance\/disk\/read_bytes_count\"\`.
pmdgName :: Lens' ProjectsMetricDescriptorsGet Text
pmdgName = lens _pmdgName (\ s a -> s{_pmdgName = a})

-- | JSONP
pmdgCallback :: Lens' ProjectsMetricDescriptorsGet (Maybe Text)
pmdgCallback
  = lens _pmdgCallback (\ s a -> s{_pmdgCallback = a})

instance GoogleRequest ProjectsMetricDescriptorsGet
         where
        type Rs ProjectsMetricDescriptorsGet =
             MetricDescriptor
        requestClient ProjectsMetricDescriptorsGet{..}
          = go _pmdgName _pmdgXgafv _pmdgUploadProtocol
              (Just _pmdgPp)
              _pmdgAccessToken
              _pmdgUploadType
              _pmdgBearerToken
              _pmdgCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMetricDescriptorsGetResource)
                      mempty
