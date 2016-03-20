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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing custom metric.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.update@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.Update
    (
    -- * REST Resource
      ManagementCustomMetricsUpdateResource

    -- * Creating a Request
    , managementCustomMetricsUpdate
    , ManagementCustomMetricsUpdate

    -- * Request Lenses
    , mcmuCustomMetricId
    , mcmuWebPropertyId
    , mcmuIgnoreCustomDataSourceLinks
    , mcmuPayload
    , mcmuAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.customMetrics.update@ method which the
-- 'ManagementCustomMetricsUpdate' request conforms to.
type ManagementCustomMetricsUpdateResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "customMetrics" :>
                     Capture "customMetricId" Text :>
                       QueryParam "ignoreCustomDataSourceLinks" Bool :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CustomMetric :>
                             Put '[JSON] CustomMetric

-- | Updates an existing custom metric.
--
-- /See:/ 'managementCustomMetricsUpdate' smart constructor.
data ManagementCustomMetricsUpdate = ManagementCustomMetricsUpdate
    { _mcmuCustomMetricId              :: !Text
    , _mcmuWebPropertyId               :: !Text
    , _mcmuIgnoreCustomDataSourceLinks :: !Bool
    , _mcmuPayload                     :: !CustomMetric
    , _mcmuAccountId                   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmuCustomMetricId'
--
-- * 'mcmuWebPropertyId'
--
-- * 'mcmuIgnoreCustomDataSourceLinks'
--
-- * 'mcmuPayload'
--
-- * 'mcmuAccountId'
managementCustomMetricsUpdate
    :: Text -- ^ 'mcmuCustomMetricId'
    -> Text -- ^ 'mcmuWebPropertyId'
    -> CustomMetric -- ^ 'mcmuPayload'
    -> Text -- ^ 'mcmuAccountId'
    -> ManagementCustomMetricsUpdate
managementCustomMetricsUpdate pMcmuCustomMetricId_ pMcmuWebPropertyId_ pMcmuPayload_ pMcmuAccountId_ =
    ManagementCustomMetricsUpdate
    { _mcmuCustomMetricId = pMcmuCustomMetricId_
    , _mcmuWebPropertyId = pMcmuWebPropertyId_
    , _mcmuIgnoreCustomDataSourceLinks = False
    , _mcmuPayload = pMcmuPayload_
    , _mcmuAccountId = pMcmuAccountId_
    }

-- | Custom metric ID for the custom metric to update.
mcmuCustomMetricId :: Lens' ManagementCustomMetricsUpdate Text
mcmuCustomMetricId
  = lens _mcmuCustomMetricId
      (\ s a -> s{_mcmuCustomMetricId = a})

-- | Web property ID for the custom metric to update.
mcmuWebPropertyId :: Lens' ManagementCustomMetricsUpdate Text
mcmuWebPropertyId
  = lens _mcmuWebPropertyId
      (\ s a -> s{_mcmuWebPropertyId = a})

-- | Force the update and ignore any warnings related to the custom metric
-- being linked to a custom data source \/ data set.
mcmuIgnoreCustomDataSourceLinks :: Lens' ManagementCustomMetricsUpdate Bool
mcmuIgnoreCustomDataSourceLinks
  = lens _mcmuIgnoreCustomDataSourceLinks
      (\ s a -> s{_mcmuIgnoreCustomDataSourceLinks = a})

-- | Multipart request metadata.
mcmuPayload :: Lens' ManagementCustomMetricsUpdate CustomMetric
mcmuPayload
  = lens _mcmuPayload (\ s a -> s{_mcmuPayload = a})

-- | Account ID for the custom metric to update.
mcmuAccountId :: Lens' ManagementCustomMetricsUpdate Text
mcmuAccountId
  = lens _mcmuAccountId
      (\ s a -> s{_mcmuAccountId = a})

instance GoogleRequest ManagementCustomMetricsUpdate
         where
        type Rs ManagementCustomMetricsUpdate = CustomMetric
        requestClient ManagementCustomMetricsUpdate{..}
          = go _mcmuAccountId _mcmuWebPropertyId
              _mcmuCustomMetricId
              (Just _mcmuIgnoreCustomDataSourceLinks)
              (Just AltJSON)
              _mcmuPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementCustomMetricsUpdateResource)
                      mempty
