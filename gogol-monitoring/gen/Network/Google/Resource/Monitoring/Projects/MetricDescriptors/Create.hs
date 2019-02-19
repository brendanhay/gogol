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
-- Module      : Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new metric descriptor. User-created metric descriptors define
-- custom metrics.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.metricDescriptors.create@.
module Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Create
    (
    -- * REST Resource
      ProjectsMetricDescriptorsCreateResource

    -- * Creating a Request
    , projectsMetricDescriptorsCreate
    , ProjectsMetricDescriptorsCreate

    -- * Request Lenses
    , pmdcXgafv
    , pmdcUploadProtocol
    , pmdcAccessToken
    , pmdcUploadType
    , pmdcPayload
    , pmdcName
    , pmdcCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.metricDescriptors.create@ method which the
-- 'ProjectsMetricDescriptorsCreate' request conforms to.
type ProjectsMetricDescriptorsCreateResource =
     "v3" :>
       Capture "name" Text :>
         "metricDescriptors" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] MetricDescriptor :>
                         Post '[JSON] MetricDescriptor

-- | Creates a new metric descriptor. User-created metric descriptors define
-- custom metrics.
--
-- /See:/ 'projectsMetricDescriptorsCreate' smart constructor.
data ProjectsMetricDescriptorsCreate =
  ProjectsMetricDescriptorsCreate'
    { _pmdcXgafv          :: !(Maybe Xgafv)
    , _pmdcUploadProtocol :: !(Maybe Text)
    , _pmdcAccessToken    :: !(Maybe Text)
    , _pmdcUploadType     :: !(Maybe Text)
    , _pmdcPayload        :: !MetricDescriptor
    , _pmdcName           :: !Text
    , _pmdcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsMetricDescriptorsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdcXgafv'
--
-- * 'pmdcUploadProtocol'
--
-- * 'pmdcAccessToken'
--
-- * 'pmdcUploadType'
--
-- * 'pmdcPayload'
--
-- * 'pmdcName'
--
-- * 'pmdcCallback'
projectsMetricDescriptorsCreate
    :: MetricDescriptor -- ^ 'pmdcPayload'
    -> Text -- ^ 'pmdcName'
    -> ProjectsMetricDescriptorsCreate
projectsMetricDescriptorsCreate pPmdcPayload_ pPmdcName_ =
  ProjectsMetricDescriptorsCreate'
    { _pmdcXgafv = Nothing
    , _pmdcUploadProtocol = Nothing
    , _pmdcAccessToken = Nothing
    , _pmdcUploadType = Nothing
    , _pmdcPayload = pPmdcPayload_
    , _pmdcName = pPmdcName_
    , _pmdcCallback = Nothing
    }


-- | V1 error format.
pmdcXgafv :: Lens' ProjectsMetricDescriptorsCreate (Maybe Xgafv)
pmdcXgafv
  = lens _pmdcXgafv (\ s a -> s{_pmdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmdcUploadProtocol :: Lens' ProjectsMetricDescriptorsCreate (Maybe Text)
pmdcUploadProtocol
  = lens _pmdcUploadProtocol
      (\ s a -> s{_pmdcUploadProtocol = a})

-- | OAuth access token.
pmdcAccessToken :: Lens' ProjectsMetricDescriptorsCreate (Maybe Text)
pmdcAccessToken
  = lens _pmdcAccessToken
      (\ s a -> s{_pmdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmdcUploadType :: Lens' ProjectsMetricDescriptorsCreate (Maybe Text)
pmdcUploadType
  = lens _pmdcUploadType
      (\ s a -> s{_pmdcUploadType = a})

-- | Multipart request metadata.
pmdcPayload :: Lens' ProjectsMetricDescriptorsCreate MetricDescriptor
pmdcPayload
  = lens _pmdcPayload (\ s a -> s{_pmdcPayload = a})

-- | The project on which to execute the request. The format is
-- \"projects\/{project_id_or_number}\".
pmdcName :: Lens' ProjectsMetricDescriptorsCreate Text
pmdcName = lens _pmdcName (\ s a -> s{_pmdcName = a})

-- | JSONP
pmdcCallback :: Lens' ProjectsMetricDescriptorsCreate (Maybe Text)
pmdcCallback
  = lens _pmdcCallback (\ s a -> s{_pmdcCallback = a})

instance GoogleRequest
           ProjectsMetricDescriptorsCreate
         where
        type Rs ProjectsMetricDescriptorsCreate =
             MetricDescriptor
        type Scopes ProjectsMetricDescriptorsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient ProjectsMetricDescriptorsCreate'{..}
          = go _pmdcName _pmdcXgafv _pmdcUploadProtocol
              _pmdcAccessToken
              _pmdcUploadType
              _pmdcCallback
              (Just AltJSON)
              _pmdcPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsMetricDescriptorsCreateResource)
                      mempty
