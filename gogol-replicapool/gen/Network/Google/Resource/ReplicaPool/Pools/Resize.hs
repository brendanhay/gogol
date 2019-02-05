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
-- Module      : Network.Google.Resource.ReplicaPool.Pools.Resize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resize a pool. This is an asynchronous operation, and multiple
-- overlapping resize requests can be made. Replica Pools will use the
-- information from the last resize request.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.resize@.
module Network.Google.Resource.ReplicaPool.Pools.Resize
    (
    -- * REST Resource
      PoolsResizeResource

    -- * Creating a Request
    , poolsResize
    , PoolsResize

    -- * Request Lenses
    , prNumReplicas
    , prPoolName
    , prZone
    , prProjectName
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.resize@ method which the
-- 'PoolsResize' request conforms to.
type PoolsResizeResource =
     "replicapool" :>
       "v1beta1" :>
         "projects" :>
           Capture "projectName" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "pools" :>
                   Capture "poolName" Text :>
                     "resize" :>
                       QueryParam "numReplicas" (Textual Int32) :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Pool

-- | Resize a pool. This is an asynchronous operation, and multiple
-- overlapping resize requests can be made. Replica Pools will use the
-- information from the last resize request.
--
-- /See:/ 'poolsResize' smart constructor.
data PoolsResize = PoolsResize'
    { _prNumReplicas :: !(Maybe (Textual Int32))
    , _prPoolName    :: !Text
    , _prZone        :: !Text
    , _prProjectName :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PoolsResize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prNumReplicas'
--
-- * 'prPoolName'
--
-- * 'prZone'
--
-- * 'prProjectName'
poolsResize
    :: Text -- ^ 'prPoolName'
    -> Text -- ^ 'prZone'
    -> Text -- ^ 'prProjectName'
    -> PoolsResize
poolsResize pPrPoolName_ pPrZone_ pPrProjectName_ =
    PoolsResize'
    { _prNumReplicas = Nothing
    , _prPoolName = pPrPoolName_
    , _prZone = pPrZone_
    , _prProjectName = pPrProjectName_
    }

-- | The desired number of replicas to resize to. If this number is larger
-- than the existing number of replicas, new replicas will be added. If the
-- number is smaller, then existing replicas will be deleted.
prNumReplicas :: Lens' PoolsResize (Maybe Int32)
prNumReplicas
  = lens _prNumReplicas
      (\ s a -> s{_prNumReplicas = a})
      . mapping _Coerce

-- | The name of the replica pool for this request.
prPoolName :: Lens' PoolsResize Text
prPoolName
  = lens _prPoolName (\ s a -> s{_prPoolName = a})

-- | The zone for this replica pool.
prZone :: Lens' PoolsResize Text
prZone = lens _prZone (\ s a -> s{_prZone = a})

-- | The project ID for this replica pool.
prProjectName :: Lens' PoolsResize Text
prProjectName
  = lens _prProjectName
      (\ s a -> s{_prProjectName = a})

instance GoogleRequest PoolsResize where
        type Rs PoolsResize = Pool
        type Scopes PoolsResize =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient PoolsResize'{..}
          = go _prProjectName _prZone _prPoolName
              _prNumReplicas
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient (Proxy :: Proxy PoolsResizeResource)
                      mempty
