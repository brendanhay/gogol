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
-- Copyright   : (c) 2015 Brendan Hay
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
    , statscollectionUpdateaggregatedstats'
    , StatscollectionUpdateaggregatedstats'

    -- * Request Lenses
    , suPayload
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudlatencytest.statscollection.updateaggregatedstats@ method which the
-- 'StatscollectionUpdateaggregatedstats'' request conforms to.
type StatscollectionUpdateaggregatedstatsResource =
     "updateaggregatedstats" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] AggregatedStats :>
           Post '[JSON] AggregatedStatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdateaggregatedstats'' smart constructor.
newtype StatscollectionUpdateaggregatedstats' = StatscollectionUpdateaggregatedstats'
    { _suPayload :: AggregatedStats
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdateaggregatedstats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suPayload'
statscollectionUpdateaggregatedstats'
    :: AggregatedStats -- ^ 'suPayload'
    -> StatscollectionUpdateaggregatedstats'
statscollectionUpdateaggregatedstats' pSuPayload_ =
    StatscollectionUpdateaggregatedstats'
    { _suPayload = pSuPayload_
    }

-- | Multipart request metadata.
suPayload :: Lens' StatscollectionUpdateaggregatedstats' AggregatedStats
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

instance GoogleRequest
         StatscollectionUpdateaggregatedstats' where
        type Rs StatscollectionUpdateaggregatedstats' =
             AggregatedStatsReply
        requestClient
          StatscollectionUpdateaggregatedstats'{..}
          = go (Just AltJSON) _suPayload latencyTestService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy StatscollectionUpdateaggregatedstatsResource)
                      mempty
