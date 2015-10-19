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
-- Copyright   : (c) 2015 Brendan Hay
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
    , statscollectionUpdatestats'
    , StatscollectionUpdatestats'

    -- * Request Lenses
    , sPayload
    ) where

import           Network.Google.LatencyTest.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudlatencytest.statscollection.updatestats@ method which the
-- 'StatscollectionUpdatestats'' request conforms to.
type StatscollectionUpdatestatsResource =
     "updatestats" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] Stats :> Post '[JSON] StatsReply

-- | RPC to update the new TCP stats.
--
-- /See:/ 'statscollectionUpdatestats'' smart constructor.
newtype StatscollectionUpdatestats' = StatscollectionUpdatestats'
    { _sPayload :: Stats
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatscollectionUpdatestats'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sPayload'
statscollectionUpdatestats'
    :: Stats -- ^ 'sPayload'
    -> StatscollectionUpdatestats'
statscollectionUpdatestats' pSPayload_ =
    StatscollectionUpdatestats'
    { _sPayload = pSPayload_
    }

-- | Multipart request metadata.
sPayload :: Lens' StatscollectionUpdatestats' Stats
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

instance GoogleRequest StatscollectionUpdatestats'
         where
        type Rs StatscollectionUpdatestats' = StatsReply
        requestClient StatscollectionUpdatestats'{..}
          = go (Just AltJSON) _sPayload latencyTestService
          where go
                  = buildClient
                      (Proxy :: Proxy StatscollectionUpdatestatsResource)
                      mempty
