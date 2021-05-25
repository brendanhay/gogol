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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Flags the specified instances in the managed instance group for
-- immediate deletion. The instances are also removed from any target pools
-- of which they were a member. This method reduces the targetSize of the
-- managed instance group by the number of instances that you delete. This
-- operation is marked as DONE when the action is scheduled even if the
-- instances are still being deleted. You must separately verify the status
-- of the deleting action with the listmanagedinstances method. If the
-- group is part of a backend service that has enabled connection draining,
-- it can take up to 60 seconds after the connection draining duration has
-- elapsed before the VM instance is removed or deleted. You can specify a
-- maximum of 1000 instances with this method per request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.deleteInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.DeleteInstances
    (
    -- * REST Resource
      InstanceGroupManagersDeleteInstancesResource

    -- * Creating a Request
    , instanceGroupManagersDeleteInstances
    , InstanceGroupManagersDeleteInstances

    -- * Request Lenses
    , igmdiRequestId
    , igmdiProject
    , igmdiInstanceGroupManager
    , igmdiZone
    , igmdiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.deleteInstances@ method which the
-- 'InstanceGroupManagersDeleteInstances' request conforms to.
type InstanceGroupManagersDeleteInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "deleteInstances" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstanceGroupManagersDeleteInstancesRequest
                             :> Post '[JSON] Operation

-- | Flags the specified instances in the managed instance group for
-- immediate deletion. The instances are also removed from any target pools
-- of which they were a member. This method reduces the targetSize of the
-- managed instance group by the number of instances that you delete. This
-- operation is marked as DONE when the action is scheduled even if the
-- instances are still being deleted. You must separately verify the status
-- of the deleting action with the listmanagedinstances method. If the
-- group is part of a backend service that has enabled connection draining,
-- it can take up to 60 seconds after the connection draining duration has
-- elapsed before the VM instance is removed or deleted. You can specify a
-- maximum of 1000 instances with this method per request.
--
-- /See:/ 'instanceGroupManagersDeleteInstances' smart constructor.
data InstanceGroupManagersDeleteInstances =
  InstanceGroupManagersDeleteInstances'
    { _igmdiRequestId :: !(Maybe Text)
    , _igmdiProject :: !Text
    , _igmdiInstanceGroupManager :: !Text
    , _igmdiZone :: !Text
    , _igmdiPayload :: !InstanceGroupManagersDeleteInstancesRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersDeleteInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdiRequestId'
--
-- * 'igmdiProject'
--
-- * 'igmdiInstanceGroupManager'
--
-- * 'igmdiZone'
--
-- * 'igmdiPayload'
instanceGroupManagersDeleteInstances
    :: Text -- ^ 'igmdiProject'
    -> Text -- ^ 'igmdiInstanceGroupManager'
    -> Text -- ^ 'igmdiZone'
    -> InstanceGroupManagersDeleteInstancesRequest -- ^ 'igmdiPayload'
    -> InstanceGroupManagersDeleteInstances
instanceGroupManagersDeleteInstances pIgmdiProject_ pIgmdiInstanceGroupManager_ pIgmdiZone_ pIgmdiPayload_ =
  InstanceGroupManagersDeleteInstances'
    { _igmdiRequestId = Nothing
    , _igmdiProject = pIgmdiProject_
    , _igmdiInstanceGroupManager = pIgmdiInstanceGroupManager_
    , _igmdiZone = pIgmdiZone_
    , _igmdiPayload = pIgmdiPayload_
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
igmdiRequestId :: Lens' InstanceGroupManagersDeleteInstances (Maybe Text)
igmdiRequestId
  = lens _igmdiRequestId
      (\ s a -> s{_igmdiRequestId = a})

-- | Project ID for this request.
igmdiProject :: Lens' InstanceGroupManagersDeleteInstances Text
igmdiProject
  = lens _igmdiProject (\ s a -> s{_igmdiProject = a})

-- | The name of the managed instance group.
igmdiInstanceGroupManager :: Lens' InstanceGroupManagersDeleteInstances Text
igmdiInstanceGroupManager
  = lens _igmdiInstanceGroupManager
      (\ s a -> s{_igmdiInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmdiZone :: Lens' InstanceGroupManagersDeleteInstances Text
igmdiZone
  = lens _igmdiZone (\ s a -> s{_igmdiZone = a})

-- | Multipart request metadata.
igmdiPayload :: Lens' InstanceGroupManagersDeleteInstances InstanceGroupManagersDeleteInstancesRequest
igmdiPayload
  = lens _igmdiPayload (\ s a -> s{_igmdiPayload = a})

instance GoogleRequest
           InstanceGroupManagersDeleteInstances
         where
        type Rs InstanceGroupManagersDeleteInstances =
             Operation
        type Scopes InstanceGroupManagersDeleteInstances =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersDeleteInstances'{..}
          = go _igmdiProject _igmdiZone
              _igmdiInstanceGroupManager
              _igmdiRequestId
              (Just AltJSON)
              _igmdiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersDeleteInstancesResource)
                      mempty
