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
-- Module      : Network.Google.Resource.CloudMonitoring.MetricDescriptors.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new metric.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @cloudmonitoring.metricDescriptors.create@.
module Network.Google.Resource.CloudMonitoring.MetricDescriptors.Create
    (
    -- * REST Resource
      MetricDescriptorsCreateResource

    -- * Creating a Request
    , metricDescriptorsCreate
    , MetricDescriptorsCreate

    -- * Request Lenses
    , mdcProject
    , mdcPayload
    ) where

import           Network.Google.CloudMonitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudmonitoring.metricDescriptors.create@ method which the
-- 'MetricDescriptorsCreate' request conforms to.
type MetricDescriptorsCreateResource =
     "cloudmonitoring" :>
       "v2beta2" :>
         "projects" :>
           Capture "project" Text :>
             "metricDescriptors" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] MetricDescriptor :>
                   Post '[JSON] MetricDescriptor

-- | Create a new metric.
--
-- /See:/ 'metricDescriptorsCreate' smart constructor.
data MetricDescriptorsCreate = MetricDescriptorsCreate
    { _mdcProject :: !Text
    , _mdcPayload :: !MetricDescriptor
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptorsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdcProject'
--
-- * 'mdcPayload'
metricDescriptorsCreate
    :: Text -- ^ 'mdcProject'
    -> MetricDescriptor -- ^ 'mdcPayload'
    -> MetricDescriptorsCreate
metricDescriptorsCreate pMdcProject_ pMdcPayload_ =
    MetricDescriptorsCreate
    { _mdcProject = pMdcProject_
    , _mdcPayload = pMdcPayload_
    }

-- | The project id. The value can be the numeric project ID or string-based
-- project name.
mdcProject :: Lens' MetricDescriptorsCreate Text
mdcProject
  = lens _mdcProject (\ s a -> s{_mdcProject = a})

-- | Multipart request metadata.
mdcPayload :: Lens' MetricDescriptorsCreate MetricDescriptor
mdcPayload
  = lens _mdcPayload (\ s a -> s{_mdcPayload = a})

instance GoogleRequest MetricDescriptorsCreate where
        type Rs MetricDescriptorsCreate = MetricDescriptor
        requestClient MetricDescriptorsCreate{..}
          = go _mdcProject (Just AltJSON) _mdcPayload
              cloudMonitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy MetricDescriptorsCreateResource)
                      mempty
