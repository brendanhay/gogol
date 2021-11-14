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
-- Module      : Network.Google.Resource.ReplicaPool.Replicas.Restart
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restarts a replica in a pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.replicas.restart@.
module Network.Google.Resource.ReplicaPool.Replicas.Restart
    (
    -- * REST Resource
      ReplicasRestartResource

    -- * Creating a Request
    , replicasRestart
    , ReplicasRestart

    -- * Request Lenses
    , rrPoolName
    , rrZone
    , rrReplicaName
    , rrProjectName
    ) where

import Network.Google.Prelude
import Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.replicas.restart@ method which the
-- 'ReplicasRestart' request conforms to.
type ReplicasRestartResource =
     "replicapool" :>
       "v1beta1" :>
         "projects" :>
           Capture "projectName" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "pools" :>
                   Capture "poolName" Text :>
                     "replicas" :>
                       Capture "replicaName" Text :>
                         "restart" :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Replica

-- | Restarts a replica in a pool.
--
-- /See:/ 'replicasRestart' smart constructor.
data ReplicasRestart =
  ReplicasRestart'
    { _rrPoolName :: !Text
    , _rrZone :: !Text
    , _rrReplicaName :: !Text
    , _rrProjectName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicasRestart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrPoolName'
--
-- * 'rrZone'
--
-- * 'rrReplicaName'
--
-- * 'rrProjectName'
replicasRestart
    :: Text -- ^ 'rrPoolName'
    -> Text -- ^ 'rrZone'
    -> Text -- ^ 'rrReplicaName'
    -> Text -- ^ 'rrProjectName'
    -> ReplicasRestart
replicasRestart pRrPoolName_ pRrZone_ pRrReplicaName_ pRrProjectName_ =
  ReplicasRestart'
    { _rrPoolName = pRrPoolName_
    , _rrZone = pRrZone_
    , _rrReplicaName = pRrReplicaName_
    , _rrProjectName = pRrProjectName_
    }


-- | The replica pool name for this request.
rrPoolName :: Lens' ReplicasRestart Text
rrPoolName
  = lens _rrPoolName (\ s a -> s{_rrPoolName = a})

-- | The zone where the replica lives.
rrZone :: Lens' ReplicasRestart Text
rrZone = lens _rrZone (\ s a -> s{_rrZone = a})

-- | The name of the replica for this request.
rrReplicaName :: Lens' ReplicasRestart Text
rrReplicaName
  = lens _rrReplicaName
      (\ s a -> s{_rrReplicaName = a})

-- | The project ID for this request.
rrProjectName :: Lens' ReplicasRestart Text
rrProjectName
  = lens _rrProjectName
      (\ s a -> s{_rrProjectName = a})

instance GoogleRequest ReplicasRestart where
        type Rs ReplicasRestart = Replica
        type Scopes ReplicasRestart =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient ReplicasRestart'{..}
          = go _rrProjectName _rrZone _rrPoolName
              _rrReplicaName
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient
                      (Proxy :: Proxy ReplicasRestartResource)
                      mempty
