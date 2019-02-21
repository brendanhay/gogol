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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Flags the specified instances to be removed from the managed instance
-- group. Abandoning an instance does not delete the instance, but it does
-- remove the instance from any target pools that are applied by the
-- managed instance group. This method reduces the targetSize of the
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.abandonInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
    (
    -- * REST Resource
      InstanceGroupManagersAbandonInstancesResource

    -- * Creating a Request
    , instanceGroupManagersAbandonInstances
    , InstanceGroupManagersAbandonInstances

    -- * Request Lenses
    , igmaiRequestId
    , igmaiProject
    , igmaiInstanceGroupManager
    , igmaiZone
    , igmaiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.abandonInstances@ method which the
-- 'InstanceGroupManagersAbandonInstances' request conforms to.
type InstanceGroupManagersAbandonInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "abandonInstances" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstanceGroupManagersAbandonInstancesRequest
                             :> Post '[JSON] Operation

-- | Flags the specified instances to be removed from the managed instance
-- group. Abandoning an instance does not delete the instance, but it does
-- remove the instance from any target pools that are applied by the
-- managed instance group. This method reduces the targetSize of the
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
-- /See:/ 'instanceGroupManagersAbandonInstances' smart constructor.
data InstanceGroupManagersAbandonInstances =
  InstanceGroupManagersAbandonInstances'
    { _igmaiRequestId            :: !(Maybe Text)
    , _igmaiProject              :: !Text
    , _igmaiInstanceGroupManager :: !Text
    , _igmaiZone                 :: !Text
    , _igmaiPayload              :: !InstanceGroupManagersAbandonInstancesRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersAbandonInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmaiRequestId'
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
  InstanceGroupManagersAbandonInstances'
    { _igmaiRequestId = Nothing
    , _igmaiProject = pIgmaiProject_
    , _igmaiInstanceGroupManager = pIgmaiInstanceGroupManager_
    , _igmaiZone = pIgmaiZone_
    , _igmaiPayload = pIgmaiPayload_
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
igmaiRequestId :: Lens' InstanceGroupManagersAbandonInstances (Maybe Text)
igmaiRequestId
  = lens _igmaiRequestId
      (\ s a -> s{_igmaiRequestId = a})

-- | Project ID for this request.
igmaiProject :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiProject
  = lens _igmaiProject (\ s a -> s{_igmaiProject = a})

-- | The name of the managed instance group.
igmaiInstanceGroupManager :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiInstanceGroupManager
  = lens _igmaiInstanceGroupManager
      (\ s a -> s{_igmaiInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmaiZone :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiZone
  = lens _igmaiZone (\ s a -> s{_igmaiZone = a})

-- | Multipart request metadata.
igmaiPayload :: Lens' InstanceGroupManagersAbandonInstances InstanceGroupManagersAbandonInstancesRequest
igmaiPayload
  = lens _igmaiPayload (\ s a -> s{_igmaiPayload = a})

instance GoogleRequest
           InstanceGroupManagersAbandonInstances
         where
        type Rs InstanceGroupManagersAbandonInstances =
             Operation
        type Scopes InstanceGroupManagersAbandonInstances =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersAbandonInstances'{..}
          = go _igmaiProject _igmaiZone
              _igmaiInstanceGroupManager
              _igmaiRequestId
              (Just AltJSON)
              _igmaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersAbandonInstancesResource)
                      mempty
