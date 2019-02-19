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
-- Module      : Network.Google.Resource.ReplicaPool.Replicas.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific replica.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.replicas.get@.
module Network.Google.Resource.ReplicaPool.Replicas.Get
    (
    -- * REST Resource
      ReplicasGetResource

    -- * Creating a Request
    , replicasGet
    , ReplicasGet

    -- * Request Lenses
    , rgPoolName
    , rgZone
    , rgReplicaName
    , rgProjectName
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.replicas.get@ method which the
-- 'ReplicasGet' request conforms to.
type ReplicasGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Replica

-- | Gets information about a specific replica.
--
-- /See:/ 'replicasGet' smart constructor.
data ReplicasGet =
  ReplicasGet'
    { _rgPoolName    :: !Text
    , _rgZone        :: !Text
    , _rgReplicaName :: !Text
    , _rgProjectName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicasGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgPoolName'
--
-- * 'rgZone'
--
-- * 'rgReplicaName'
--
-- * 'rgProjectName'
replicasGet
    :: Text -- ^ 'rgPoolName'
    -> Text -- ^ 'rgZone'
    -> Text -- ^ 'rgReplicaName'
    -> Text -- ^ 'rgProjectName'
    -> ReplicasGet
replicasGet pRgPoolName_ pRgZone_ pRgReplicaName_ pRgProjectName_ =
  ReplicasGet'
    { _rgPoolName = pRgPoolName_
    , _rgZone = pRgZone_
    , _rgReplicaName = pRgReplicaName_
    , _rgProjectName = pRgProjectName_
    }

-- | The replica pool name for this request.
rgPoolName :: Lens' ReplicasGet Text
rgPoolName
  = lens _rgPoolName (\ s a -> s{_rgPoolName = a})

-- | The zone where the replica lives.
rgZone :: Lens' ReplicasGet Text
rgZone = lens _rgZone (\ s a -> s{_rgZone = a})

-- | The name of the replica for this request.
rgReplicaName :: Lens' ReplicasGet Text
rgReplicaName
  = lens _rgReplicaName
      (\ s a -> s{_rgReplicaName = a})

-- | The project ID for this request.
rgProjectName :: Lens' ReplicasGet Text
rgProjectName
  = lens _rgProjectName
      (\ s a -> s{_rgProjectName = a})

instance GoogleRequest ReplicasGet where
        type Rs ReplicasGet = Replica
        type Scopes ReplicasGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly",
               "https://www.googleapis.com/auth/replicapool",
               "https://www.googleapis.com/auth/replicapool.readonly"]
        requestClient ReplicasGet'{..}
          = go _rgProjectName _rgZone _rgPoolName
              _rgReplicaName
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient (Proxy :: Proxy ReplicasGetResource)
                      mempty
