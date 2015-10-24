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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.AbandonInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified instances from the managed instance group, and
-- from any target pools of which they were members, without deleting the
-- instances.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.abandonInstances@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.AbandonInstances
    (
    -- * REST Resource
      InstanceGroupManagersAbandonInstancesResource

    -- * Creating a Request
    , instanceGroupManagersAbandonInstances
    , InstanceGroupManagersAbandonInstances

    -- * Request Lenses
    , igmaiProject
    , igmaiInstanceGroupManager
    , igmaiZone
    , igmaiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.instanceGroupManagers.abandonInstances@ method which the
-- 'InstanceGroupManagersAbandonInstances' request conforms to.
type InstanceGroupManagersAbandonInstancesResource =
     "replicapool" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "abandonInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           InstanceGroupManagersAbandonInstancesRequest
                           :> Post '[JSON] Operation

-- | Removes the specified instances from the managed instance group, and
-- from any target pools of which they were members, without deleting the
-- instances.
--
-- /See:/ 'instanceGroupManagersAbandonInstances' smart constructor.
data InstanceGroupManagersAbandonInstances = InstanceGroupManagersAbandonInstances
    { _igmaiProject              :: !Text
    , _igmaiInstanceGroupManager :: !Text
    , _igmaiZone                 :: !Text
    , _igmaiPayload              :: !InstanceGroupManagersAbandonInstancesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAbandonInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmaiProject'
--
-- * 'igmaiInstanceGroupManager'
--
-- * 'igmaiZone'
--
-- * 'igmaiPayload'
instanceGroupManagersAbandonInstances
    :: Text -- ^ 'igmaiProject'
    -> Text -- ^ 'igmaiInstanceGroupManager'
    -> Text -- ^ 'igmaiZone'
    -> InstanceGroupManagersAbandonInstancesRequest -- ^ 'igmaiPayload'
    -> InstanceGroupManagersAbandonInstances
instanceGroupManagersAbandonInstances pIgmaiProject_ pIgmaiInstanceGroupManager_ pIgmaiZone_ pIgmaiPayload_ =
    InstanceGroupManagersAbandonInstances
    { _igmaiProject = pIgmaiProject_
    , _igmaiInstanceGroupManager = pIgmaiInstanceGroupManager_
    , _igmaiZone = pIgmaiZone_
    , _igmaiPayload = pIgmaiPayload_
    }

-- | The Google Developers Console project name.
igmaiProject :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiProject
  = lens _igmaiProject (\ s a -> s{_igmaiProject = a})

-- | The name of the instance group manager.
igmaiInstanceGroupManager :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiInstanceGroupManager
  = lens _igmaiInstanceGroupManager
      (\ s a -> s{_igmaiInstanceGroupManager = a})

-- | The name of the zone in which the instance group manager resides.
igmaiZone :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiZone
  = lens _igmaiZone (\ s a -> s{_igmaiZone = a})

-- | Multipart request metadata.
igmaiPayload :: Lens' InstanceGroupManagersAbandonInstances InstanceGroupManagersAbandonInstancesRequest
igmaiPayload
  = lens _igmaiPayload (\ s a -> s{_igmaiPayload = a})

instance GoogleRequest
         InstanceGroupManagersAbandonInstances where
        type Rs InstanceGroupManagersAbandonInstances =
             Operation
        requestClient
          InstanceGroupManagersAbandonInstances{..}
          = go _igmaiProject _igmaiZone
              _igmaiInstanceGroupManager
              (Just AltJSON)
              _igmaiPayload
              replicaPoolService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersAbandonInstancesResource)
                      mempty
