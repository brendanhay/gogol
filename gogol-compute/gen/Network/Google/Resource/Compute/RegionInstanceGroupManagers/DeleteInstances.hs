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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeleteInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules a group action to delete the specified instances in the
-- managed instance group. The instances are also removed from any target
-- pools of which they were a member. This method reduces the targetSize of
-- the managed instance group by the number of instances that you delete.
-- This operation is marked as DONE when the action is scheduled even if
-- the instances are still being deleted. You must separately verify the
-- status of the deleting action with the listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.deleteInstances@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeleteInstances
    (
    -- * REST Resource
      RegionInstanceGroupManagersDeleteInstancesResource

    -- * Creating a Request
    , regionInstanceGroupManagersDeleteInstances
    , RegionInstanceGroupManagersDeleteInstances

    -- * Request Lenses
    , rigmdiProject
    , rigmdiInstanceGroupManager
    , rigmdiPayload
    , rigmdiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.deleteInstances@ method which the
-- 'RegionInstanceGroupManagersDeleteInstances' request conforms to.
type RegionInstanceGroupManagersDeleteInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "deleteInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           RegionInstanceGroupManagersDeleteInstancesRequest
                           :> Post '[JSON] Operation

-- | Schedules a group action to delete the specified instances in the
-- managed instance group. The instances are also removed from any target
-- pools of which they were a member. This method reduces the targetSize of
-- the managed instance group by the number of instances that you delete.
-- This operation is marked as DONE when the action is scheduled even if
-- the instances are still being deleted. You must separately verify the
-- status of the deleting action with the listmanagedinstances method.
--
-- /See:/ 'regionInstanceGroupManagersDeleteInstances' smart constructor.
data RegionInstanceGroupManagersDeleteInstances = RegionInstanceGroupManagersDeleteInstances'
    { _rigmdiProject              :: !Text
    , _rigmdiInstanceGroupManager :: !Text
    , _rigmdiPayload              :: !RegionInstanceGroupManagersDeleteInstancesRequest
    , _rigmdiRegion               :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersDeleteInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmdiProject'
--
-- * 'rigmdiInstanceGroupManager'
--
-- * 'rigmdiPayload'
--
-- * 'rigmdiRegion'
regionInstanceGroupManagersDeleteInstances
    :: Text -- ^ 'rigmdiProject'
    -> Text -- ^ 'rigmdiInstanceGroupManager'
    -> RegionInstanceGroupManagersDeleteInstancesRequest -- ^ 'rigmdiPayload'
    -> Text -- ^ 'rigmdiRegion'
    -> RegionInstanceGroupManagersDeleteInstances
regionInstanceGroupManagersDeleteInstances pRigmdiProject_ pRigmdiInstanceGroupManager_ pRigmdiPayload_ pRigmdiRegion_ =
    RegionInstanceGroupManagersDeleteInstances'
    { _rigmdiProject = pRigmdiProject_
    , _rigmdiInstanceGroupManager = pRigmdiInstanceGroupManager_
    , _rigmdiPayload = pRigmdiPayload_
    , _rigmdiRegion = pRigmdiRegion_
    }

-- | Project ID for this request.
rigmdiProject :: Lens' RegionInstanceGroupManagersDeleteInstances Text
rigmdiProject
  = lens _rigmdiProject
      (\ s a -> s{_rigmdiProject = a})

-- | Name of the managed instance group.
rigmdiInstanceGroupManager :: Lens' RegionInstanceGroupManagersDeleteInstances Text
rigmdiInstanceGroupManager
  = lens _rigmdiInstanceGroupManager
      (\ s a -> s{_rigmdiInstanceGroupManager = a})

-- | Multipart request metadata.
rigmdiPayload :: Lens' RegionInstanceGroupManagersDeleteInstances RegionInstanceGroupManagersDeleteInstancesRequest
rigmdiPayload
  = lens _rigmdiPayload
      (\ s a -> s{_rigmdiPayload = a})

-- | Name of the region scoping this request.
rigmdiRegion :: Lens' RegionInstanceGroupManagersDeleteInstances Text
rigmdiRegion
  = lens _rigmdiRegion (\ s a -> s{_rigmdiRegion = a})

instance GoogleRequest
         RegionInstanceGroupManagersDeleteInstances where
        type Rs RegionInstanceGroupManagersDeleteInstances =
             Operation
        type Scopes
               RegionInstanceGroupManagersDeleteInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersDeleteInstances'{..}
          = go _rigmdiProject _rigmdiRegion
              _rigmdiInstanceGroupManager
              (Just AltJSON)
              _rigmdiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersDeleteInstancesResource)
                      mempty
