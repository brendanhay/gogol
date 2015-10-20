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
-- Module      : Network.Google.Resource.Analytics.Management.CustomMetrics.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new custom metric.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customMetrics.insert@.
module Network.Google.Resource.Analytics.Management.CustomMetrics.Insert
    (
    -- * REST Resource
      ManagementCustomMetricsInsertResource

    -- * Creating a Request
    , managementCustomMetricsInsert
    , ManagementCustomMetricsInsert

    -- * Request Lenses
    , mcmiWebPropertyId
    , mcmiPayload
    , mcmiAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.customMetrics.insert@ method which the
-- 'ManagementCustomMetricsInsert' request conforms to.
type ManagementCustomMetricsInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customMetrics" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] CustomMetric :>
                     Post '[JSON] CustomMetric

-- | Create a new custom metric.
--
-- /See:/ 'managementCustomMetricsInsert' smart constructor.
data ManagementCustomMetricsInsert = ManagementCustomMetricsInsert
    { _mcmiWebPropertyId :: !Text
    , _mcmiPayload       :: !CustomMetric
    , _mcmiAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomMetricsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcmiWebPropertyId'
--
-- * 'mcmiPayload'
--
-- * 'mcmiAccountId'
managementCustomMetricsInsert
    :: Text -- ^ 'mcmiWebPropertyId'
    -> CustomMetric -- ^ 'mcmiPayload'
    -> Text -- ^ 'mcmiAccountId'
    -> ManagementCustomMetricsInsert
managementCustomMetricsInsert pMcmiWebPropertyId_ pMcmiPayload_ pMcmiAccountId_ =
    ManagementCustomMetricsInsert
    { _mcmiWebPropertyId = pMcmiWebPropertyId_
    , _mcmiPayload = pMcmiPayload_
    , _mcmiAccountId = pMcmiAccountId_
    }

-- | Web property ID for the custom dimension to create.
mcmiWebPropertyId :: Lens' ManagementCustomMetricsInsert Text
mcmiWebPropertyId
  = lens _mcmiWebPropertyId
      (\ s a -> s{_mcmiWebPropertyId = a})

-- | Multipart request metadata.
mcmiPayload :: Lens' ManagementCustomMetricsInsert CustomMetric
mcmiPayload
  = lens _mcmiPayload (\ s a -> s{_mcmiPayload = a})

-- | Account ID for the custom metric to create.
mcmiAccountId :: Lens' ManagementCustomMetricsInsert Text
mcmiAccountId
  = lens _mcmiAccountId
      (\ s a -> s{_mcmiAccountId = a})

instance GoogleRequest ManagementCustomMetricsInsert
         where
        type Rs ManagementCustomMetricsInsert = CustomMetric
        requestClient ManagementCustomMetricsInsert{..}
          = go _mcmiAccountId _mcmiWebPropertyId (Just AltJSON)
              _mcmiPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementCustomMetricsInsertResource)
                      mempty
