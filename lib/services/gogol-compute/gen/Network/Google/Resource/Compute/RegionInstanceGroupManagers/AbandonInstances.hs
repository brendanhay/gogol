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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Flags the specified instances to be immediately removed from the managed
-- instance group. Abandoning an instance does not delete the instance, but
-- it does remove the instance from any target pools that are applied by
-- the managed instance group. This method reduces the targetSize of the
-- managed instance group by the number of instances that you abandon. This
-- operation is marked as DONE when the action is scheduled even if the
-- instances have not yet been removed from the group. You must separately
-- verify the status of the abandoning action with the listmanagedinstances
-- method. If the group is part of a backend service that has enabled
-- connection draining, it can take up to 60 seconds after the connection
-- draining duration has elapsed before the VM instance is removed or
-- deleted. You can specify a maximum of 1000 instances with this method
-- per request.
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
    , rigmaiRequestId
    , rigmaiProject
    , rigmaiInstanceGroupManager
    , rigmaiPayload
    , rigmaiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

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
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupManagersAbandonInstancesRequest
                             :> Post '[JSON] Operation

-- | Flags the specified instances to be immediately removed from the managed
-- instance group. Abandoning an instance does not delete the instance, but
-- it does remove the instance from any target pools that are applied by
-- the managed instance group. This method reduces the targetSize of the
-- managed instance group by the number of instances that you abandon. This
-- operation is marked as DONE when the action is scheduled even if the
-- instances have not yet been removed from the group. You must separately
-- verify the status of the abandoning action with the listmanagedinstances
-- method. If the group is part of a backend service that has enabled
-- connection draining, it can take up to 60 seconds after the connection
-- draining duration has elapsed before the VM instance is removed or
-- deleted. You can specify a maximum of 1000 instances with this method
-- per request.
--
-- /See:/ 'regionInstanceGroupManagersAbandonInstances' smart constructor.
data RegionInstanceGroupManagersAbandonInstances =
  RegionInstanceGroupManagersAbandonInstances'
    { _rigmaiRequestId :: !(Maybe Text)
    , _rigmaiProject :: !Text
    , _rigmaiInstanceGroupManager :: !Text
    , _rigmaiPayload :: !RegionInstanceGroupManagersAbandonInstancesRequest
    , _rigmaiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersAbandonInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmaiRequestId'
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
    { _rigmaiRequestId = Nothing
    , _rigmaiProject = pRigmaiProject_
    , _rigmaiInstanceGroupManager = pRigmaiInstanceGroupManager_
    , _rigmaiPayload = pRigmaiPayload_
    , _rigmaiRegion = pRigmaiRegion_
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
rigmaiRequestId :: Lens' RegionInstanceGroupManagersAbandonInstances (Maybe Text)
rigmaiRequestId
  = lens _rigmaiRequestId
      (\ s a -> s{_rigmaiRequestId = a})

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
           RegionInstanceGroupManagersAbandonInstances
         where
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
              _rigmaiRequestId
              (Just AltJSON)
              _rigmaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersAbandonInstancesResource)
                      mempty
