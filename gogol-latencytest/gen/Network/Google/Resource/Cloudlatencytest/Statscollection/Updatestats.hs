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
-- Module      : Network.Google.Resource.Cloudlatencytest.Statscollection.Updatestats
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RPC to update the new TCP stats.
--
-- /See:/ < Google Cloud Network Performance Monitoring API Reference> for @cloudlatencytest.statscollection.updatestats@.
module Network.Google.Resource.Cloudlatencytest.Statscollection.Updatestats
    (
    -- * REST Resource
      StatscollectionUpdatestatsResource

    -- * Creating a Request
    , statscollectionUpdatestats
    , StatscollectionUpdatestats

    -- * Request Lenses
    , suPayload
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudlatencytest.statscollection.updatestats@ method which the
-- 'StatscollectionUpdatestats' request conforms to.
type StatscollectionUpdatestatsResource =
     "v2" :>
       "statscollection" :>
         "updatestats" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Stats :> Post '[JSON] StatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdatestats' smart constructor.
newtype StatscollectionUpdatestats = StatscollectionUpdatestats'
    { _suPayload :: Stats
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdatestats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suPayload'
statscollectionUpdatestats
    :: Stats -- ^ 'suPayload'
    -> StatscollectionUpdatestats
statscollectionUpdatestats pSuPayload_ =
    StatscollectionUpdatestats'
    { _suPayload = pSuPayload_
    }

-- | Multipart request metadata.
suPayload :: Lens' StatscollectionUpdatestats Stats
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

instance GoogleRequest StatscollectionUpdatestats
         where
        type Rs StatscollectionUpdatestats = StatsReply
        type Scopes StatscollectionUpdatestats =
             '["https://www.googleapis.com/auth/monitoring.readonly"]
        requestClient StatscollectionUpdatestats'{..}
          = go (Just AltJSON) _suPayload latencyTestService
          where go
                  = buildClient
                      (Proxy :: Proxy StatscollectionUpdatestatsResource)
                      mempty
