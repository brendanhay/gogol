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
-- Module      : Network.Google.Resource.AdSense.Metadata.Metrics.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the metadata for the metrics available to this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.metadata.metrics.list@.
module Network.Google.Resource.AdSense.Metadata.Metrics.List
    (
    -- * REST Resource
      MetadataMetricsListResource

    -- * Creating a Request
    , metadataMetricsList
    , MetadataMetricsList

    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.metadata.metrics.list@ method which the
-- 'MetadataMetricsList' request conforms to.
type MetadataMetricsListResource =
     "adsense" :>
       "v1.4" :>
         "metadata" :>
           "metrics" :>
             QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | List the metadata for the metrics available to this AdSense account.
--
-- /See:/ 'metadataMetricsList' smart constructor.
data MetadataMetricsList =
  MetadataMetricsList'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetadataMetricsList' with the minimum fields required to make a request.
--
metadataMetricsList
    :: MetadataMetricsList
metadataMetricsList = MetadataMetricsList'


instance GoogleRequest MetadataMetricsList where
        type Rs MetadataMetricsList = Metadata
        type Scopes MetadataMetricsList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient MetadataMetricsList'{}
          = go (Just AltJSON) adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy MetadataMetricsListResource)
                      mempty
