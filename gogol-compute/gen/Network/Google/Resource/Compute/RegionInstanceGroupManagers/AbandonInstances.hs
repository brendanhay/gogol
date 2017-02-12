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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.AbandonInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules a group action to remove the specified instances from the
-- managed instance group. Abandoning an instance does not delete the
-- instance, but it does remove the instance from any target pools that are
-- applied by the managed instance group. This method reduces the
-- targetSize of the managed instance group by the number of instances that
-- you abandon. This operation is marked as DONE when the action is
-- scheduled even if the instances have not yet been removed from the
-- group. You must separately verify the status of the abandoning action
-- with the listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.abandonInstances@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.AbandonInstances
    (
    -- * REST Resource
      RegionInstanceGroupManagersAbandonInstancesResource

    -- * Creating a Request
    , regionInstanceGroupManagersAbandonInstances
    , RegionInstanceGroupManagersAbandonInstances

    -- * Request Lenses
    , rigmaiProject
    , rigmaiInstanceGroupManager
    , rigmaiPayload
    , rigmaiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.abandonInstances@ method which the
-- 'RegionInstanceGroupManagersAbandonInstances' request conforms to.
type RegionInstanceGroupManagersAbandonInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "abandonInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           RegionInstanceGroupManagersAbandonInstancesRequest
                           :> Post '[JSON] Operation

-- | Schedules a group action to remove the specified instances from the
-- managed instance group. Abandoning an instance does not delete the
-- instance, but it does remove the instance from any target pools that are
-- applied by the managed instance group. This method reduces the
-- targetSize of the managed instance group by the number of instances that
-- you abandon. This operation is marked as DONE when the action is
-- scheduled even if the instances have not yet been removed from the
-- group. You must separately verify the status of the abandoning action
-- with the listmanagedinstances method.
--
-- /See:/ 'regionInstanceGroupManagersAbandonInstances' smart constructor.
data RegionInstanceGroupManagersAbandonInstances = RegionInstanceGroupManagersAbandonInstances'
    { _rigmaiProject              :: !Text
    , _rigmaiInstanceGroupManager :: !Text
    , _rigmaiPayload              :: !RegionInstanceGroupManagersAbandonInstancesRequest
    , _rigmaiRegion               :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersAbandonInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmaiProject'
--
-- * 'rigmaiInstanceGroupManager'
--
-- * 'rigmaiPayload'
--
-- * 'rigmaiRegion'
regionInstanceGroupManagersAbandonInstances
    :: Text -- ^ 'rigmaiProject'
    -> Text -- ^ 'rigmaiInstanceGroupManager'
    -> RegionInstanceGroupManagersAbandonInstancesRequest -- ^ 'rigmaiPayload'
    -> Text -- ^ 'rigmaiRegion'
    -> RegionInstanceGroupManagersAbandonInstances
regionInstanceGroupManagersAbandonInstances pRigmaiProject_ pRigmaiInstanceGroupManager_ pRigmaiPayload_ pRigmaiRegion_ =
    RegionInstanceGroupManagersAbandonInstances'
    { _rigmaiProject = pRigmaiProject_
    , _rigmaiInstanceGroupManager = pRigmaiInstanceGroupManager_
    , _rigmaiPayload = pRigmaiPayload_
    , _rigmaiRegion = pRigmaiRegion_
    }

-- | Project ID for this request.
rigmaiProject :: Lens' RegionInstanceGroupManagersAbandonInstances Text
rigmaiProject
  = lens _rigmaiProject
      (\ s a -> s{_rigmaiProject = a})

-- | Name of the managed instance group.
rigmaiInstanceGroupManager :: Lens' RegionInstanceGroupManagersAbandonInstances Text
rigmaiInstanceGroupManager
  = lens _rigmaiInstanceGroupManager
      (\ s a -> s{_rigmaiInstanceGroupManager = a})

-- | Multipart request metadata.
rigmaiPayload :: Lens' RegionInstanceGroupManagersAbandonInstances RegionInstanceGroupManagersAbandonInstancesRequest
rigmaiPayload
  = lens _rigmaiPayload
      (\ s a -> s{_rigmaiPayload = a})

-- | Name of the region scoping this request.
rigmaiRegion :: Lens' RegionInstanceGroupManagersAbandonInstances Text
rigmaiRegion
  = lens _rigmaiRegion (\ s a -> s{_rigmaiRegion = a})

instance GoogleRequest
         RegionInstanceGroupManagersAbandonInstances where
        type Rs RegionInstanceGroupManagersAbandonInstances =
             Operation
        type Scopes
               RegionInstanceGroupManagersAbandonInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersAbandonInstances'{..}
          = go _rigmaiProject _rigmaiRegion
              _rigmaiInstanceGroupManager
              (Just AltJSON)
              _rigmaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersAbandonInstancesResource)
                      mempty
