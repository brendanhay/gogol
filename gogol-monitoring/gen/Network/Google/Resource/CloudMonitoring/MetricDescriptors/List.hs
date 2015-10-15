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
-- Module      : Network.Google.Resource.CloudMonitoring.MetricDescriptors.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List metric descriptors that match the query. If the query is not set,
-- then all of the metric descriptors will be returned. Large responses
-- will be paginated, use the nextPageToken returned in the response to
-- request subsequent pages of results by setting the pageToken query
-- parameter to the value of the nextPageToken.
--
-- /See:/ <https://cloud.google.com/monitoring/v2beta2/ Cloud Monitoring API Reference> for @CloudMonitoringMetricDescriptorsList@.
module Network.Google.Resource.CloudMonitoring.MetricDescriptors.List
    (
    -- * REST Resource
      MetricDescriptorsListResource

    -- * Creating a Request
    , metricDescriptorsList'
    , MetricDescriptorsList'

    -- * Request Lenses
    , mdlProject
    , mdlCount
    , mdlPayload
    , mdlQuery
    , mdlPageToken
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudMonitoringMetricDescriptorsList@ method which the
-- 'MetricDescriptorsList'' request conforms to.
type MetricDescriptorsListResource =
     Capture "project" Text :>
       "metricDescriptors" :>
         QueryParam "count" Int32 :>
           QueryParam "query" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ListMetricDescriptorsRequest :>
                   Get '[JSON] ListMetricDescriptorsResponse

-- | List metric descriptors that match the query. If the query is not set,
-- then all of the metric descriptors will be returned. Large responses
-- will be paginated, use the nextPageToken returned in the response to
-- request subsequent pages of results by setting the pageToken query
-- parameter to the value of the nextPageToken.
--
-- /See:/ 'metricDescriptorsList'' smart constructor.
data MetricDescriptorsList' = MetricDescriptorsList'
    { _mdlProject   :: !Text
    , _mdlCount     :: !Int32
    , _mdlPayload   :: !ListMetricDescriptorsRequest
    , _mdlQuery     :: !(Maybe Text)
    , _mdlPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetricDescriptorsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdlProject'
--
-- * 'mdlCount'
--
-- * 'mdlPayload'
--
-- * 'mdlQuery'
--
-- * 'mdlPageToken'
metricDescriptorsList'
    :: Text -- ^ 'project'
    -> ListMetricDescriptorsRequest -- ^ 'payload'
    -> MetricDescriptorsList'
metricDescriptorsList' pMdlProject_ pMdlPayload_ =
    MetricDescriptorsList'
    { _mdlProject = pMdlProject_
    , _mdlCount = 100
    , _mdlPayload = pMdlPayload_
    , _mdlQuery = Nothing
    , _mdlPageToken = Nothing
    }

-- | The project id. The value can be the numeric project ID or string-based
-- project name.
mdlProject :: Lens' MetricDescriptorsList' Text
mdlProject
  = lens _mdlProject (\ s a -> s{_mdlProject = a})

-- | Maximum number of metric descriptors per page. Used for pagination. If
-- not specified, count = 100.
mdlCount :: Lens' MetricDescriptorsList' Int32
mdlCount = lens _mdlCount (\ s a -> s{_mdlCount = a})

-- | Multipart request metadata.
mdlPayload :: Lens' MetricDescriptorsList' ListMetricDescriptorsRequest
mdlPayload
  = lens _mdlPayload (\ s a -> s{_mdlPayload = a})

-- | The query used to search against existing metrics. Separate keywords
-- with a space; the service joins all keywords with AND, meaning that all
-- keywords must match for a metric to be returned. If this field is
-- omitted, all metrics are returned. If an empty string is passed with
-- this field, no metrics are returned.
mdlQuery :: Lens' MetricDescriptorsList' (Maybe Text)
mdlQuery = lens _mdlQuery (\ s a -> s{_mdlQuery = a})

-- | The pagination token, which is used to page through large result sets.
-- Set this value to the value of the nextPageToken to retrieve the next
-- page of results.
mdlPageToken :: Lens' MetricDescriptorsList' (Maybe Text)
mdlPageToken
  = lens _mdlPageToken (\ s a -> s{_mdlPageToken = a})

instance GoogleRequest MetricDescriptorsList' where
        type Rs MetricDescriptorsList' =
             ListMetricDescriptorsResponse
        requestClient MetricDescriptorsList'{..}
          = go _mdlProject (Just _mdlCount) _mdlQuery
              _mdlPageToken
              (Just AltJSON)
              _mdlPayload
              monitoring
          where go
                  = buildClient
                      (Proxy :: Proxy MetricDescriptorsListResource)
                      mempty
