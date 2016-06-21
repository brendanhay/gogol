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
-- Module      : Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a metric descriptor. Only user-created [custom
-- metrics](\/monitoring\/custom-metrics) can be deleted.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Google Monitoring API Reference> for @monitoring.projects.metricDescriptors.delete@.
module Network.Google.Resource.Monitoring.Projects.MetricDescriptors.Delete
    (
    -- * REST Resource
      ProjectsMetricDescriptorsDeleteResource

    -- * Creating a Request
    , projectsMetricDescriptorsDelete
    , ProjectsMetricDescriptorsDelete

    -- * Request Lenses
    , pmddXgafv
    , pmddUploadProtocol
    , pmddPp
    , pmddAccessToken
    , pmddUploadType
    , pmddBearerToken
    , pmddName
    , pmddCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.metricDescriptors.delete@ method which the
-- 'ProjectsMetricDescriptorsDelete' request conforms to.
type ProjectsMetricDescriptorsDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a metric descriptor. Only user-created [custom
-- metrics](\/monitoring\/custom-metrics) can be deleted.
--
-- /See:/ 'projectsMetricDescriptorsDelete' smart constructor.
data ProjectsMetricDescriptorsDelete = ProjectsMetricDescriptorsDelete'
    { _pmddXgafv          :: !(Maybe Text)
    , _pmddUploadProtocol :: !(Maybe Text)
    , _pmddPp             :: !Bool
    , _pmddAccessToken    :: !(Maybe Text)
    , _pmddUploadType     :: !(Maybe Text)
    , _pmddBearerToken    :: !(Maybe Text)
    , _pmddName           :: !Text
    , _pmddCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMetricDescriptorsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmddXgafv'
--
-- * 'pmddUploadProtocol'
--
-- * 'pmddPp'
--
-- * 'pmddAccessToken'
--
-- * 'pmddUploadType'
--
-- * 'pmddBearerToken'
--
-- * 'pmddName'
--
-- * 'pmddCallback'
projectsMetricDescriptorsDelete
    :: Text -- ^ 'pmddName'
    -> ProjectsMetricDescriptorsDelete
projectsMetricDescriptorsDelete pPmddName_ =
    ProjectsMetricDescriptorsDelete'
    { _pmddXgafv = Nothing
    , _pmddUploadProtocol = Nothing
    , _pmddPp = True
    , _pmddAccessToken = Nothing
    , _pmddUploadType = Nothing
    , _pmddBearerToken = Nothing
    , _pmddName = pPmddName_
    , _pmddCallback = Nothing
    }

-- | V1 error format.
pmddXgafv :: Lens' ProjectsMetricDescriptorsDelete (Maybe Text)
pmddXgafv
  = lens _pmddXgafv (\ s a -> s{_pmddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmddUploadProtocol :: Lens' ProjectsMetricDescriptorsDelete (Maybe Text)
pmddUploadProtocol
  = lens _pmddUploadProtocol
      (\ s a -> s{_pmddUploadProtocol = a})

-- | Pretty-print response.
pmddPp :: Lens' ProjectsMetricDescriptorsDelete Bool
pmddPp = lens _pmddPp (\ s a -> s{_pmddPp = a})

-- | OAuth access token.
pmddAccessToken :: Lens' ProjectsMetricDescriptorsDelete (Maybe Text)
pmddAccessToken
  = lens _pmddAccessToken
      (\ s a -> s{_pmddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmddUploadType :: Lens' ProjectsMetricDescriptorsDelete (Maybe Text)
pmddUploadType
  = lens _pmddUploadType
      (\ s a -> s{_pmddUploadType = a})

-- | OAuth bearer token.
pmddBearerToken :: Lens' ProjectsMetricDescriptorsDelete (Maybe Text)
pmddBearerToken
  = lens _pmddBearerToken
      (\ s a -> s{_pmddBearerToken = a})

-- | The metric descriptor on which to execute the request. The format is
-- \`\"projects\/{project_id_or_number}\/metricDescriptors\/{metric_id}\"\`.
-- An example of \`{metric_id}\` is:
-- \`\"custom.googleapis.com\/my_test_metric\"\`.
pmddName :: Lens' ProjectsMetricDescriptorsDelete Text
pmddName = lens _pmddName (\ s a -> s{_pmddName = a})

-- | JSONP
pmddCallback :: Lens' ProjectsMetricDescriptorsDelete (Maybe Text)
pmddCallback
  = lens _pmddCallback (\ s a -> s{_pmddCallback = a})

instance GoogleRequest
         ProjectsMetricDescriptorsDelete where
        type Rs ProjectsMetricDescriptorsDelete = Empty
        type Scopes ProjectsMetricDescriptorsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsMetricDescriptorsDelete'{..}
          = go _pmddName _pmddXgafv _pmddUploadProtocol
              (Just _pmddPp)
              _pmddAccessToken
              _pmddUploadType
              _pmddBearerToken
              _pmddCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsMetricDescriptorsDeleteResource)
                      mempty
