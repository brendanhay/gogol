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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Flags the specified instances in the managed instance group to be
-- immediately deleted. The instances are also removed from any target
-- pools of which they were a member. This method reduces the targetSize of
-- the managed instance group by the number of instances that you delete.
-- The deleteInstances operation is marked DONE if the deleteInstances
-- request is successful. The underlying actions take additional time. You
-- must separately verify the status of the deleting action with the
-- listmanagedinstances method. If the group is part of a backend service
-- that has enabled connection draining, it can take up to 60 seconds after
-- the connection draining duration has elapsed before the VM instance is
-- removed or deleted. You can specify a maximum of 1000 instances with
-- this method per request.
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
    , rigmdiRequestId
    , rigmdiProject
    , rigmdiInstanceGroupManager
    , rigmdiPayload
    , rigmdiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

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
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupManagersDeleteInstancesRequest
                             :> Post '[JSON] Operation

-- | Flags the specified instances in the managed instance group to be
-- immediately deleted. The instances are also removed from any target
-- pools of which they were a member. This method reduces the targetSize of
-- the managed instance group by the number of instances that you delete.
-- The deleteInstances operation is marked DONE if the deleteInstances
-- request is successful. The underlying actions take additional time. You
-- must separately verify the status of the deleting action with the
-- listmanagedinstances method. If the group is part of a backend service
-- that has enabled connection draining, it can take up to 60 seconds after
-- the connection draining duration has elapsed before the VM instance is
-- removed or deleted. You can specify a maximum of 1000 instances with
-- this method per request.
--
-- /See:/ 'regionInstanceGroupManagersDeleteInstances' smart constructor.
data RegionInstanceGroupManagersDeleteInstances =
  RegionInstanceGroupManagersDeleteInstances'
    { _rigmdiRequestId :: !(Maybe Text)
    , _rigmdiProject :: !Text
    , _rigmdiInstanceGroupManager :: !Text
    , _rigmdiPayload :: !RegionInstanceGroupManagersDeleteInstancesRequest
    , _rigmdiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersDeleteInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmdiRequestId'
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
    { _rigmdiRequestId = Nothing
    , _rigmdiProject = pRigmdiProject_
    , _rigmdiInstanceGroupManager = pRigmdiInstanceGroupManager_
    , _rigmdiPayload = pRigmdiPayload_
    , _rigmdiRegion = pRigmdiRegion_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
rigmdiRequestId :: Lens' RegionInstanceGroupManagersDeleteInstances (Maybe Text)
rigmdiRequestId
  = lens _rigmdiRequestId
      (\ s a -> s{_rigmdiRequestId = a})

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
           RegionInstanceGroupManagersDeleteInstances
         where
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
              _rigmdiRequestId
              (Just AltJSON)
              _rigmdiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersDeleteInstancesResource)
                      mempty
