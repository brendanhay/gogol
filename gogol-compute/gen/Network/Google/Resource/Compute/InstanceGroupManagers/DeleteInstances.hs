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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Schedules a group action to delete the specified instances in the
-- managed instance group. The instances are also removed from any target
-- pools of which they were a member. This method reduces the targetSize of
-- the managed instance group by the number of instances that you delete.
-- This operation is marked as DONE when the action is scheduled even if
-- the instances are still being deleted. You must separately verify the
-- status of the deleting action with the listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersDeleteInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances
    (
    -- * REST Resource
      InstanceGroupManagersDeleteInstancesResource

    -- * Creating a Request
    , instanceGroupManagersDeleteInstances'
    , InstanceGroupManagersDeleteInstances'

    -- * Request Lenses
    , igmdiProject
    , igmdiInstanceGroupManager
    , igmdiZone
    , igmdiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersDeleteInstances@ method which the
-- 'InstanceGroupManagersDeleteInstances'' request conforms to.
type InstanceGroupManagersDeleteInstancesResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "deleteInstances" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     InstanceGroupManagersDeleteInstancesRequest
                     :> Post '[JSON] Operation

-- | Schedules a group action to delete the specified instances in the
-- managed instance group. The instances are also removed from any target
-- pools of which they were a member. This method reduces the targetSize of
-- the managed instance group by the number of instances that you delete.
-- This operation is marked as DONE when the action is scheduled even if
-- the instances are still being deleted. You must separately verify the
-- status of the deleting action with the listmanagedinstances method.
--
-- /See:/ 'instanceGroupManagersDeleteInstances'' smart constructor.
data InstanceGroupManagersDeleteInstances' = InstanceGroupManagersDeleteInstances'
    { _igmdiProject              :: !Text
    , _igmdiInstanceGroupManager :: !Text
    , _igmdiZone                 :: !Text
    , _igmdiPayload              :: !InstanceGroupManagersDeleteInstancesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersDeleteInstances'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdiProject'
--
-- * 'igmdiInstanceGroupManager'
--
-- * 'igmdiZone'
--
-- * 'igmdiPayload'
instanceGroupManagersDeleteInstances'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersDeleteInstancesRequest -- ^ 'payload'
    -> InstanceGroupManagersDeleteInstances'
instanceGroupManagersDeleteInstances' pIgmdiProject_ pIgmdiInstanceGroupManager_ pIgmdiZone_ pIgmdiPayload_ =
    InstanceGroupManagersDeleteInstances'
    { _igmdiProject = pIgmdiProject_
    , _igmdiInstanceGroupManager = pIgmdiInstanceGroupManager_
    , _igmdiZone = pIgmdiZone_
    , _igmdiPayload = pIgmdiPayload_
    }

-- | The project ID for this request.
igmdiProject :: Lens' InstanceGroupManagersDeleteInstances' Text
igmdiProject
  = lens _igmdiProject (\ s a -> s{_igmdiProject = a})

-- | The name of the managed instance group.
igmdiInstanceGroupManager :: Lens' InstanceGroupManagersDeleteInstances' Text
igmdiInstanceGroupManager
  = lens _igmdiInstanceGroupManager
      (\ s a -> s{_igmdiInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmdiZone :: Lens' InstanceGroupManagersDeleteInstances' Text
igmdiZone
  = lens _igmdiZone (\ s a -> s{_igmdiZone = a})

-- | Multipart request metadata.
igmdiPayload :: Lens' InstanceGroupManagersDeleteInstances' InstanceGroupManagersDeleteInstancesRequest
igmdiPayload
  = lens _igmdiPayload (\ s a -> s{_igmdiPayload = a})

instance GoogleRequest
         InstanceGroupManagersDeleteInstances' where
        type Rs InstanceGroupManagersDeleteInstances' =
             Operation
        requestClient
          InstanceGroupManagersDeleteInstances'{..}
          = go _igmdiProject _igmdiZone
              _igmdiInstanceGroupManager
              (Just AltJSON)
              _igmdiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersDeleteInstancesResource)
                      mempty
