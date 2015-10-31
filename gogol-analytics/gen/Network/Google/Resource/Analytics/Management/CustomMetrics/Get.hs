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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a custom metric to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.get@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.Get
    (
    -- * REST Resource
      ManagementCustomMetricsGetResource

    -- * Creating a Request
    , managementCustomMetricsGet
    , ManagementCustomMetricsGet

    -- * Request Lenses
    , mcmgCustomMetricId
    , mcmgWebPropertyId
    , mcmgAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.customMetrics.get@ method which the
-- 'ManagementCustomMetricsGet' request conforms to.
type ManagementCustomMetricsGetResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "customMetrics" :>
                     Capture "customMetricId" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] CustomMetric

-- | Get a custom metric to which the user has access.
--
-- /See:/ 'managementCustomMetricsGet' smart constructor.
data ManagementCustomMetricsGet = ManagementCustomMetricsGet
    { _mcmgCustomMetricId :: !Text
    , _mcmgWebPropertyId  :: !Text
    , _mcmgAccountId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmgCustomMetricId'
--
-- * 'mcmgWebPropertyId'
--
-- * 'mcmgAccountId'
managementCustomMetricsGet
    :: Text -- ^ 'mcmgCustomMetricId'
    -> Text -- ^ 'mcmgWebPropertyId'
    -> Text -- ^ 'mcmgAccountId'
    -> ManagementCustomMetricsGet
managementCustomMetricsGet pMcmgCustomMetricId_ pMcmgWebPropertyId_ pMcmgAccountId_ =
    ManagementCustomMetricsGet
    { _mcmgCustomMetricId = pMcmgCustomMetricId_
    , _mcmgWebPropertyId = pMcmgWebPropertyId_
    , _mcmgAccountId = pMcmgAccountId_
    }

-- | The ID of the custom metric to retrieve.
mcmgCustomMetricId :: Lens' ManagementCustomMetricsGet Text
mcmgCustomMetricId
  = lens _mcmgCustomMetricId
      (\ s a -> s{_mcmgCustomMetricId = a})

-- | Web property ID for the custom metric to retrieve.
mcmgWebPropertyId :: Lens' ManagementCustomMetricsGet Text
mcmgWebPropertyId
  = lens _mcmgWebPropertyId
      (\ s a -> s{_mcmgWebPropertyId = a})

-- | Account ID for the custom metric to retrieve.
mcmgAccountId :: Lens' ManagementCustomMetricsGet Text
mcmgAccountId
  = lens _mcmgAccountId
      (\ s a -> s{_mcmgAccountId = a})

instance GoogleRequest ManagementCustomMetricsGet
         where
        type Rs ManagementCustomMetricsGet = CustomMetric
        type Scopes ManagementCustomMetricsGet =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementCustomMetricsGet{..}
          = go _mcmgAccountId _mcmgWebPropertyId
              _mcmgCustomMetricId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementCustomMetricsGetResource)
                      mempty
