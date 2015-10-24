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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.RecreateInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Recreates the specified instances. The instances are deleted, then
-- recreated using the instance group manager\'s current instance template.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.recreateInstances@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.RecreateInstances
    (
    -- * REST Resource
      InstanceGroupManagersRecreateInstancesResource

    -- * Creating a Request
    , instanceGroupManagersRecreateInstances
    , InstanceGroupManagersRecreateInstances

    -- * Request Lenses
    , igmriProject
    , igmriInstanceGroupManager
    , igmriZone
    , igmriPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.instanceGroupManagers.recreateInstances@ method which the
-- 'InstanceGroupManagersRecreateInstances' request conforms to.
type InstanceGroupManagersRecreateInstancesResource =
     "replicapool" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "recreateInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           InstanceGroupManagersRecreateInstancesRequest
                           :> Post '[JSON] Operation

-- | Recreates the specified instances. The instances are deleted, then
-- recreated using the instance group manager\'s current instance template.
--
-- /See:/ 'instanceGroupManagersRecreateInstances' smart constructor.
data InstanceGroupManagersRecreateInstances = InstanceGroupManagersRecreateInstances
    { _igmriProject              :: !Text
    , _igmriInstanceGroupManager :: !Text
    , _igmriZone                 :: !Text
    , _igmriPayload              :: !InstanceGroupManagersRecreateInstancesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersRecreateInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmriProject'
--
-- * 'igmriInstanceGroupManager'
--
-- * 'igmriZone'
--
-- * 'igmriPayload'
instanceGroupManagersRecreateInstances
    :: Text -- ^ 'igmriProject'
    -> Text -- ^ 'igmriInstanceGroupManager'
    -> Text -- ^ 'igmriZone'
    -> InstanceGroupManagersRecreateInstancesRequest -- ^ 'igmriPayload'
    -> InstanceGroupManagersRecreateInstances
instanceGroupManagersRecreateInstances pIgmriProject_ pIgmriInstanceGroupManager_ pIgmriZone_ pIgmriPayload_ =
    InstanceGroupManagersRecreateInstances
    { _igmriProject = pIgmriProject_
    , _igmriInstanceGroupManager = pIgmriInstanceGroupManager_
    , _igmriZone = pIgmriZone_
    , _igmriPayload = pIgmriPayload_
    }

-- | The Google Developers Console project name.
igmriProject :: Lens' InstanceGroupManagersRecreateInstances Text
igmriProject
  = lens _igmriProject (\ s a -> s{_igmriProject = a})

-- | The name of the instance group manager.
igmriInstanceGroupManager :: Lens' InstanceGroupManagersRecreateInstances Text
igmriInstanceGroupManager
  = lens _igmriInstanceGroupManager
      (\ s a -> s{_igmriInstanceGroupManager = a})

-- | The name of the zone in which the instance group manager resides.
igmriZone :: Lens' InstanceGroupManagersRecreateInstances Text
igmriZone
  = lens _igmriZone (\ s a -> s{_igmriZone = a})

-- | Multipart request metadata.
igmriPayload :: Lens' InstanceGroupManagersRecreateInstances InstanceGroupManagersRecreateInstancesRequest
igmriPayload
  = lens _igmriPayload (\ s a -> s{_igmriPayload = a})

instance GoogleRequest
         InstanceGroupManagersRecreateInstances where
        type Rs InstanceGroupManagersRecreateInstances =
             Operation
        requestClient
          InstanceGroupManagersRecreateInstances{..}
          = go _igmriProject _igmriZone
              _igmriInstanceGroupManager
              (Just AltJSON)
              _igmriPayload
              replicaPoolService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersRecreateInstancesResource)
                      mempty
