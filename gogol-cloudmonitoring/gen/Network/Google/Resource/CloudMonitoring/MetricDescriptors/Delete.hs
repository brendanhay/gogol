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
-- Module      : Network.Google.Resource.CloudMonitoring.MetricDescriptors.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an existing metric.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @cloudmonitoring.metricDescriptors.delete@.
module Network.Google.Resource.CloudMonitoring.MetricDescriptors.Delete
    (
    -- * REST Resource
      MetricDescriptorsDeleteResource

    -- * Creating a Request
    , metricDescriptorsDelete
    , MetricDescriptorsDelete

    -- * Request Lenses
    , mddProject
    , mddMetric
    ) where

import           Network.Google.CloudMonitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudmonitoring.metricDescriptors.delete@ method which the
-- 'MetricDescriptorsDelete' request conforms to.
type MetricDescriptorsDeleteResource =
     "cloudmonitoring" :>
       "v2beta2" :>
         "projects" :>
           Capture "project" Text :>
             "metricDescriptors" :>
               Capture "metric" Text :>
                 QueryParam "alt" AltJSON :>
                   Delete '[JSON] DeleteMetricDescriptorResponse

-- | Delete an existing metric.
--
-- /See:/ 'metricDescriptorsDelete' smart constructor.
data MetricDescriptorsDelete = MetricDescriptorsDelete
    { _mddProject :: !Text
    , _mddMetric  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptorsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddProject'
--
-- * 'mddMetric'
metricDescriptorsDelete
    :: Text -- ^ 'mddProject'
    -> Text -- ^ 'mddMetric'
    -> MetricDescriptorsDelete
metricDescriptorsDelete pMddProject_ pMddMetric_ =
    MetricDescriptorsDelete
    { _mddProject = pMddProject_
    , _mddMetric = pMddMetric_
    }

-- | The project ID to which the metric belongs.
mddProject :: Lens' MetricDescriptorsDelete Text
mddProject
  = lens _mddProject (\ s a -> s{_mddProject = a})

-- | Name of the metric.
mddMetric :: Lens' MetricDescriptorsDelete Text
mddMetric
  = lens _mddMetric (\ s a -> s{_mddMetric = a})

instance GoogleRequest MetricDescriptorsDelete where
        type Rs MetricDescriptorsDelete =
             DeleteMetricDescriptorResponse
        requestClient MetricDescriptorsDelete{..}
          = go _mddProject _mddMetric (Just AltJSON)
              cloudMonitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy MetricDescriptorsDeleteResource)
                      mempty
