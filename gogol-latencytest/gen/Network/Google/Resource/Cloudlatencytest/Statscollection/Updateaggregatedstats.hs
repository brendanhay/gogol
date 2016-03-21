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
-- Module      : Network.Google.Resource.Cloudlatencytest.Statscollection.Updateaggregatedstats
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RPC to update the new TCP stats.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference> for @cloudlatencytest.statscollection.updateaggregatedstats@.
module Network.Google.Resource.Cloudlatencytest.Statscollection.Updateaggregatedstats
    (
    -- * REST Resource
      StatscollectionUpdateaggregatedstatsResource

    -- * Creating a Request
    , statscollectionUpdateaggregatedstats
    , StatscollectionUpdateaggregatedstats

    -- * Request Lenses
    , sPayload
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudlatencytest.statscollection.updateaggregatedstats@ method which the
-- 'StatscollectionUpdateaggregatedstats' request conforms to.
type StatscollectionUpdateaggregatedstatsResource =
     "v2" :>
       "statscollection" :>
         "updateaggregatedstats" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] AggregatedStats :>
               Post '[JSON] AggregatedStatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdateaggregatedstats' smart constructor.
newtype StatscollectionUpdateaggregatedstats = StatscollectionUpdateaggregatedstats'
    { _sPayload :: AggregatedStats
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdateaggregatedstats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPayload'
statscollectionUpdateaggregatedstats
    :: AggregatedStats -- ^ 'sPayload'
    -> StatscollectionUpdateaggregatedstats
statscollectionUpdateaggregatedstats pSPayload_ =
    StatscollectionUpdateaggregatedstats'
    { _sPayload = pSPayload_
    }

-- | Multipart request metadata.
sPayload :: Lens' StatscollectionUpdateaggregatedstats AggregatedStats
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

instance GoogleRequest
         StatscollectionUpdateaggregatedstats where
        type Rs StatscollectionUpdateaggregatedstats =
             AggregatedStatsReply
        type Scopes StatscollectionUpdateaggregatedstats =
             '["https://www.googleapis.com/auth/monitoring.readonly"]
        requestClient
          StatscollectionUpdateaggregatedstats'{..}
          = go (Just AltJSON) _sPayload latencyTestService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy StatscollectionUpdateaggregatedstatsResource)
                      mempty
