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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing custom metric. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.patch@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.Patch
    (
    -- * REST Resource
      ManagementCustomMetricsPatchResource

    -- * Creating a Request
    , managementCustomMetricsPatch
    , ManagementCustomMetricsPatch

    -- * Request Lenses
    , mcmpCustomMetricId
    , mcmpWebPropertyId
    , mcmpIgnoreCustomDataSourceLinks
    , mcmpPayload
    , mcmpAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.customMetrics.patch@ method which the
-- 'ManagementCustomMetricsPatch' request conforms to.
type ManagementCustomMetricsPatchResource =
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
                             Patch '[JSON] CustomMetric

-- | Updates an existing custom metric. This method supports patch semantics.
--
-- /See:/ 'managementCustomMetricsPatch' smart constructor.
data ManagementCustomMetricsPatch = ManagementCustomMetricsPatch'
    { _mcmpCustomMetricId              :: !Text
    , _mcmpWebPropertyId               :: !Text
    , _mcmpIgnoreCustomDataSourceLinks :: !Bool
    , _mcmpPayload                     :: !CustomMetric
    , _mcmpAccountId                   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmpCustomMetricId'
--
-- * 'mcmpWebPropertyId'
--
-- * 'mcmpIgnoreCustomDataSourceLinks'
--
-- * 'mcmpPayload'
--
-- * 'mcmpAccountId'
managementCustomMetricsPatch
    :: Text -- ^ 'mcmpCustomMetricId'
    -> Text -- ^ 'mcmpWebPropertyId'
    -> CustomMetric -- ^ 'mcmpPayload'
    -> Text -- ^ 'mcmpAccountId'
    -> ManagementCustomMetricsPatch
managementCustomMetricsPatch pMcmpCustomMetricId_ pMcmpWebPropertyId_ pMcmpPayload_ pMcmpAccountId_ =
    ManagementCustomMetricsPatch'
    { _mcmpCustomMetricId = pMcmpCustomMetricId_
    , _mcmpWebPropertyId = pMcmpWebPropertyId_
    , _mcmpIgnoreCustomDataSourceLinks = False
    , _mcmpPayload = pMcmpPayload_
    , _mcmpAccountId = pMcmpAccountId_
    }

-- | Custom metric ID for the custom metric to update.
mcmpCustomMetricId :: Lens' ManagementCustomMetricsPatch Text
mcmpCustomMetricId
  = lens _mcmpCustomMetricId
      (\ s a -> s{_mcmpCustomMetricId = a})

-- | Web property ID for the custom metric to update.
mcmpWebPropertyId :: Lens' ManagementCustomMetricsPatch Text
mcmpWebPropertyId
  = lens _mcmpWebPropertyId
      (\ s a -> s{_mcmpWebPropertyId = a})

-- | Force the update and ignore any warnings related to the custom metric
-- being linked to a custom data source \/ data set.
mcmpIgnoreCustomDataSourceLinks :: Lens' ManagementCustomMetricsPatch Bool
mcmpIgnoreCustomDataSourceLinks
  = lens _mcmpIgnoreCustomDataSourceLinks
      (\ s a -> s{_mcmpIgnoreCustomDataSourceLinks = a})

-- | Multipart request metadata.
mcmpPayload :: Lens' ManagementCustomMetricsPatch CustomMetric
mcmpPayload
  = lens _mcmpPayload (\ s a -> s{_mcmpPayload = a})

-- | Account ID for the custom metric to update.
mcmpAccountId :: Lens' ManagementCustomMetricsPatch Text
mcmpAccountId
  = lens _mcmpAccountId
      (\ s a -> s{_mcmpAccountId = a})

instance GoogleRequest ManagementCustomMetricsPatch
         where
        type Rs ManagementCustomMetricsPatch = CustomMetric
        type Scopes ManagementCustomMetricsPatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementCustomMetricsPatch'{..}
          = go _mcmpAccountId _mcmpWebPropertyId
              _mcmpCustomMetricId
              (Just _mcmpIgnoreCustomDataSourceLinks)
              (Just AltJSON)
              _mcmpPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementCustomMetricsPatchResource)
                      mempty
