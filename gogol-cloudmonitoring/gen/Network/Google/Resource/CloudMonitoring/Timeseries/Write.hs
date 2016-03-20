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
-- Module      : Network.Google.Resource.CloudMonitoring.Timeseries.Write
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Put data points to one or more time series for one or more metrics. If a
-- time series does not exist, a new time series will be created. It is not
-- allowed to write a time series point that is older than the existing
-- youngest point of that time series. Points that are older than the
-- existing youngest point of that time series will be discarded silently.
-- Therefore, users should make sure that points of a time series are
-- written sequentially in the order of their end time.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @cloudmonitoring.timeseries.write@.
module Network.Google.Resource.CloudMonitoring.Timeseries.Write
    (
    -- * REST Resource
      TimeseriesWriteResource

    -- * Creating a Request
    , timeseriesWrite
    , TimeseriesWrite

    -- * Request Lenses
    , twProject
    , twPayload
    ) where

import           Network.Google.CloudMonitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudmonitoring.timeseries.write@ method which the
-- 'TimeseriesWrite' request conforms to.
type TimeseriesWriteResource =
     "cloudmonitoring" :>
       "v2beta2" :>
         "projects" :>
           Capture "project" Text :>
             "timeseries:write" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] WriteTimeseriesRequest :>
                   Post '[JSON] WriteTimeseriesResponse

-- | Put data points to one or more time series for one or more metrics. If a
-- time series does not exist, a new time series will be created. It is not
-- allowed to write a time series point that is older than the existing
-- youngest point of that time series. Points that are older than the
-- existing youngest point of that time series will be discarded silently.
-- Therefore, users should make sure that points of a time series are
-- written sequentially in the order of their end time.
--
-- /See:/ 'timeseriesWrite' smart constructor.
data TimeseriesWrite = TimeseriesWrite
    { _twProject :: !Text
    , _twPayload :: !WriteTimeseriesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimeseriesWrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'twProject'
--
-- * 'twPayload'
timeseriesWrite
    :: Text -- ^ 'twProject'
    -> WriteTimeseriesRequest -- ^ 'twPayload'
    -> TimeseriesWrite
timeseriesWrite pTwProject_ pTwPayload_ =
    TimeseriesWrite
    { _twProject = pTwProject_
    , _twPayload = pTwPayload_
    }

-- | The project ID. The value can be the numeric project ID or string-based
-- project name.
twProject :: Lens' TimeseriesWrite Text
twProject
  = lens _twProject (\ s a -> s{_twProject = a})

-- | Multipart request metadata.
twPayload :: Lens' TimeseriesWrite WriteTimeseriesRequest
twPayload
  = lens _twPayload (\ s a -> s{_twPayload = a})

instance GoogleRequest TimeseriesWrite where
        type Rs TimeseriesWrite = WriteTimeseriesResponse
        type Scopes TimeseriesWrite =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient TimeseriesWrite{..}
          = go _twProject (Just AltJSON) _twPayload
              cloudMonitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy TimeseriesWriteResource)
                      mempty
