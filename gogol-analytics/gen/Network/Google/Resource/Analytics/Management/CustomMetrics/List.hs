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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists custom metrics to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.list@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.List
    (
    -- * REST Resource
      ManagementCustomMetricsListResource

    -- * Creating a Request
    , managementCustomMetricsList
    , ManagementCustomMetricsList

    -- * Request Lenses
    , mcmlWebPropertyId
    , mcmlAccountId
    , mcmlStartIndex
    , mcmlMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.customMetrics.list@ method which the
-- 'ManagementCustomMetricsList' request conforms to.
type ManagementCustomMetricsListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "customMetrics" :>
                     QueryParam "start-index" (Textual Int32) :>
                       QueryParam "max-results" (Textual Int32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] CustomMetrics

-- | Lists custom metrics to which the user has access.
--
-- /See:/ 'managementCustomMetricsList' smart constructor.
data ManagementCustomMetricsList = ManagementCustomMetricsList'
    { _mcmlWebPropertyId :: !Text
    , _mcmlAccountId     :: !Text
    , _mcmlStartIndex    :: !(Maybe (Textual Int32))
    , _mcmlMaxResults    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmlWebPropertyId'
--
-- * 'mcmlAccountId'
--
-- * 'mcmlStartIndex'
--
-- * 'mcmlMaxResults'
managementCustomMetricsList
    :: Text -- ^ 'mcmlWebPropertyId'
    -> Text -- ^ 'mcmlAccountId'
    -> ManagementCustomMetricsList
managementCustomMetricsList pMcmlWebPropertyId_ pMcmlAccountId_ =
    ManagementCustomMetricsList'
    { _mcmlWebPropertyId = pMcmlWebPropertyId_
    , _mcmlAccountId = pMcmlAccountId_
    , _mcmlStartIndex = Nothing
    , _mcmlMaxResults = Nothing
    }

-- | Web property ID for the custom metrics to retrieve.
mcmlWebPropertyId :: Lens' ManagementCustomMetricsList Text
mcmlWebPropertyId
  = lens _mcmlWebPropertyId
      (\ s a -> s{_mcmlWebPropertyId = a})

-- | Account ID for the custom metrics to retrieve.
mcmlAccountId :: Lens' ManagementCustomMetricsList Text
mcmlAccountId
  = lens _mcmlAccountId
      (\ s a -> s{_mcmlAccountId = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mcmlStartIndex :: Lens' ManagementCustomMetricsList (Maybe Int32)
mcmlStartIndex
  = lens _mcmlStartIndex
      (\ s a -> s{_mcmlStartIndex = a})
      . mapping _Coerce

-- | The maximum number of custom metrics to include in this response.
mcmlMaxResults :: Lens' ManagementCustomMetricsList (Maybe Int32)
mcmlMaxResults
  = lens _mcmlMaxResults
      (\ s a -> s{_mcmlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ManagementCustomMetricsList
         where
        type Rs ManagementCustomMetricsList = CustomMetrics
        type Scopes ManagementCustomMetricsList =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementCustomMetricsList'{..}
          = go _mcmlAccountId _mcmlWebPropertyId
              _mcmlStartIndex
              _mcmlMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementCustomMetricsListResource)
                      mempty
