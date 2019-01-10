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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Flags the specified instances in the managed instance group to be
-- immediately recreated. The instances are deleted and recreated using the
-- current instance template for the managed instance group. This operation
-- is marked as DONE when the flag is set even if the instances have not
-- yet been recreated. You must separately verify the status of the
-- recreating action with the listmanagedinstances method. If the group is
-- part of a backend service that has enabled connection draining, it can
-- take up to 60 seconds after the connection draining duration has elapsed
-- before the VM instance is removed or deleted. You can specify a maximum
-- of 1000 instances with this method per request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.recreateInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances
    (
    -- * REST Resource
      InstanceGroupManagersRecreateInstancesResource

    -- * Creating a Request
    , instanceGroupManagersRecreateInstances
    , InstanceGroupManagersRecreateInstances

    -- * Request Lenses
    , igmriRequestId
    , igmriProject
    , igmriInstanceGroupManager
    , igmriZone
    , igmriPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.recreateInstances@ method which the
-- 'InstanceGroupManagersRecreateInstances' request conforms to.
type InstanceGroupManagersRecreateInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "recreateInstances" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstanceGroupManagersRecreateInstancesRequest
                             :> Post '[JSON] Operation

-- | Flags the specified instances in the managed instance group to be
-- immediately recreated. The instances are deleted and recreated using the
-- current instance template for the managed instance group. This operation
-- is marked as DONE when the flag is set even if the instances have not
-- yet been recreated. You must separately verify the status of the
-- recreating action with the listmanagedinstances method. If the group is
-- part of a backend service that has enabled connection draining, it can
-- take up to 60 seconds after the connection draining duration has elapsed
-- before the VM instance is removed or deleted. You can specify a maximum
-- of 1000 instances with this method per request.
--
-- /See:/ 'instanceGroupManagersRecreateInstances' smart constructor.
data InstanceGroupManagersRecreateInstances = InstanceGroupManagersRecreateInstances'
    { _igmriRequestId            :: !(Maybe Text)
    , _igmriProject              :: !Text
    , _igmriInstanceGroupManager :: !Text
    , _igmriZone                 :: !Text
    , _igmriPayload              :: !InstanceGroupManagersRecreateInstancesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersRecreateInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmriRequestId'
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
    InstanceGroupManagersRecreateInstances'
    { _igmriRequestId = Nothing
    , _igmriProject = pIgmriProject_
    , _igmriInstanceGroupManager = pIgmriInstanceGroupManager_
    , _igmriZone = pIgmriZone_
    , _igmriPayload = pIgmriPayload_
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
igmriRequestId :: Lens' InstanceGroupManagersRecreateInstances (Maybe Text)
igmriRequestId
  = lens _igmriRequestId
      (\ s a -> s{_igmriRequestId = a})

-- | Project ID for this request.
igmriProject :: Lens' InstanceGroupManagersRecreateInstances Text
igmriProject
  = lens _igmriProject (\ s a -> s{_igmriProject = a})

-- | The name of the managed instance group.
igmriInstanceGroupManager :: Lens' InstanceGroupManagersRecreateInstances Text
igmriInstanceGroupManager
  = lens _igmriInstanceGroupManager
      (\ s a -> s{_igmriInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
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
        type Scopes InstanceGroupManagersRecreateInstances =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersRecreateInstances'{..}
          = go _igmriProject _igmriZone
              _igmriInstanceGroupManager
              _igmriRequestId
              (Just AltJSON)
              _igmriPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersRecreateInstancesResource)
                      mempty
