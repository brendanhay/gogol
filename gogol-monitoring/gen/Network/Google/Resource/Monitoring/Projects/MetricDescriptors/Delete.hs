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
-- Deletes a metric descriptor. Only user-created custom metrics can be
-- deleted.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.metricDescriptors.delete@.
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
    , pmddAccessToken
    , pmddUploadType
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
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a metric descriptor. Only user-created custom metrics can be
-- deleted.
--
-- /See:/ 'projectsMetricDescriptorsDelete' smart constructor.
data ProjectsMetricDescriptorsDelete = ProjectsMetricDescriptorsDelete'
    { _pmddXgafv          :: !(Maybe Xgafv)
    , _pmddUploadProtocol :: !(Maybe Text)
    , _pmddAccessToken    :: !(Maybe Text)
    , _pmddUploadType     :: !(Maybe Text)
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
-- * 'pmddAccessToken'
--
-- * 'pmddUploadType'
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
    , _pmddAccessToken = Nothing
    , _pmddUploadType = Nothing
    , _pmddName = pPmddName_
    , _pmddCallback = Nothing
    }

-- | V1 error format.
pmddXgafv :: Lens' ProjectsMetricDescriptorsDelete (Maybe Xgafv)
pmddXgafv
  = lens _pmddXgafv (\ s a -> s{_pmddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmddUploadProtocol :: Lens' ProjectsMetricDescriptorsDelete (Maybe Text)
pmddUploadProtocol
  = lens _pmddUploadProtocol
      (\ s a -> s{_pmddUploadProtocol = a})

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

-- | The metric descriptor on which to execute the request. The format is
-- \"projects\/{project_id_or_number}\/metricDescriptors\/{metric_id}\". An
-- example of {metric_id} is: \"custom.googleapis.com\/my_test_metric\".
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
              _pmddAccessToken
              _pmddUploadType
              _pmddCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsMetricDescriptorsDeleteResource)
                      mempty
