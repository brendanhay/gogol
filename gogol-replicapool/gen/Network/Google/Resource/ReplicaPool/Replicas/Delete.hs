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
-- Module      : Network.Google.Resource.ReplicaPool.Replicas.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a replica from the pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.replicas.delete@.
module Network.Google.Resource.ReplicaPool.Replicas.Delete
    (
    -- * REST Resource
      ReplicasDeleteResource

    -- * Creating a Request
    , replicasDelete
    , ReplicasDelete

    -- * Request Lenses
    , rdPoolName
    , rdZone
    , rdPayload
    , rdReplicaName
    , rdProjectName
    ) where

import Network.Google.Prelude
import Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.replicas.delete@ method which the
-- 'ReplicasDelete' request conforms to.
type ReplicasDeleteResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ReplicasDeleteRequest :>
                             Post '[JSON] Replica

-- | Deletes a replica from the pool.
--
-- /See:/ 'replicasDelete' smart constructor.
data ReplicasDelete =
  ReplicasDelete'
    { _rdPoolName :: !Text
    , _rdZone :: !Text
    , _rdPayload :: !ReplicasDeleteRequest
    , _rdReplicaName :: !Text
    , _rdProjectName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicasDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdPoolName'
--
-- * 'rdZone'
--
-- * 'rdPayload'
--
-- * 'rdReplicaName'
--
-- * 'rdProjectName'
replicasDelete
    :: Text -- ^ 'rdPoolName'
    -> Text -- ^ 'rdZone'
    -> ReplicasDeleteRequest -- ^ 'rdPayload'
    -> Text -- ^ 'rdReplicaName'
    -> Text -- ^ 'rdProjectName'
    -> ReplicasDelete
replicasDelete pRdPoolName_ pRdZone_ pRdPayload_ pRdReplicaName_ pRdProjectName_ =
  ReplicasDelete'
    { _rdPoolName = pRdPoolName_
    , _rdZone = pRdZone_
    , _rdPayload = pRdPayload_
    , _rdReplicaName = pRdReplicaName_
    , _rdProjectName = pRdProjectName_
    }


-- | The replica pool name for this request.
rdPoolName :: Lens' ReplicasDelete Text
rdPoolName
  = lens _rdPoolName (\ s a -> s{_rdPoolName = a})

-- | The zone where the replica lives.
rdZone :: Lens' ReplicasDelete Text
rdZone = lens _rdZone (\ s a -> s{_rdZone = a})

-- | Multipart request metadata.
rdPayload :: Lens' ReplicasDelete ReplicasDeleteRequest
rdPayload
  = lens _rdPayload (\ s a -> s{_rdPayload = a})

-- | The name of the replica for this request.
rdReplicaName :: Lens' ReplicasDelete Text
rdReplicaName
  = lens _rdReplicaName
      (\ s a -> s{_rdReplicaName = a})

-- | The project ID for this request.
rdProjectName :: Lens' ReplicasDelete Text
rdProjectName
  = lens _rdProjectName
      (\ s a -> s{_rdProjectName = a})

instance GoogleRequest ReplicasDelete where
        type Rs ReplicasDelete = Replica
        type Scopes ReplicasDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient ReplicasDelete'{..}
          = go _rdProjectName _rdZone _rdPoolName
              _rdReplicaName
              (Just AltJSON)
              _rdPayload
              replicaPoolService
          where go
                  = buildClient (Proxy :: Proxy ReplicasDeleteResource)
                      mempty
