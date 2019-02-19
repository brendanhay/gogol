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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.RecreateInstances
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.recreateInstances@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.RecreateInstances
    (
    -- * REST Resource
      RegionInstanceGroupManagersRecreateInstancesResource

    -- * Creating a Request
    , regionInstanceGroupManagersRecreateInstances
    , RegionInstanceGroupManagersRecreateInstances

    -- * Request Lenses
    , rigmriRequestId
    , rigmriProject
    , rigmriInstanceGroupManager
    , rigmriPayload
    , rigmriRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.recreateInstances@ method which the
-- 'RegionInstanceGroupManagersRecreateInstances' request conforms to.
type RegionInstanceGroupManagersRecreateInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "recreateInstances" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupManagersRecreateRequest
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
-- /See:/ 'regionInstanceGroupManagersRecreateInstances' smart constructor.
data RegionInstanceGroupManagersRecreateInstances =
  RegionInstanceGroupManagersRecreateInstances'
    { _rigmriRequestId            :: !(Maybe Text)
    , _rigmriProject              :: !Text
    , _rigmriInstanceGroupManager :: !Text
    , _rigmriPayload              :: !RegionInstanceGroupManagersRecreateRequest
    , _rigmriRegion               :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersRecreateInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmriRequestId'
--
-- * 'rigmriProject'
--
-- * 'rigmriInstanceGroupManager'
--
-- * 'rigmriPayload'
--
-- * 'rigmriRegion'
regionInstanceGroupManagersRecreateInstances
    :: Text -- ^ 'rigmriProject'
    -> Text -- ^ 'rigmriInstanceGroupManager'
    -> RegionInstanceGroupManagersRecreateRequest -- ^ 'rigmriPayload'
    -> Text -- ^ 'rigmriRegion'
    -> RegionInstanceGroupManagersRecreateInstances
regionInstanceGroupManagersRecreateInstances pRigmriProject_ pRigmriInstanceGroupManager_ pRigmriPayload_ pRigmriRegion_ =
  RegionInstanceGroupManagersRecreateInstances'
    { _rigmriRequestId = Nothing
    , _rigmriProject = pRigmriProject_
    , _rigmriInstanceGroupManager = pRigmriInstanceGroupManager_
    , _rigmriPayload = pRigmriPayload_
    , _rigmriRegion = pRigmriRegion_
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
rigmriRequestId :: Lens' RegionInstanceGroupManagersRecreateInstances (Maybe Text)
rigmriRequestId
  = lens _rigmriRequestId
      (\ s a -> s{_rigmriRequestId = a})

-- | Project ID for this request.
rigmriProject :: Lens' RegionInstanceGroupManagersRecreateInstances Text
rigmriProject
  = lens _rigmriProject
      (\ s a -> s{_rigmriProject = a})

-- | Name of the managed instance group.
rigmriInstanceGroupManager :: Lens' RegionInstanceGroupManagersRecreateInstances Text
rigmriInstanceGroupManager
  = lens _rigmriInstanceGroupManager
      (\ s a -> s{_rigmriInstanceGroupManager = a})

-- | Multipart request metadata.
rigmriPayload :: Lens' RegionInstanceGroupManagersRecreateInstances RegionInstanceGroupManagersRecreateRequest
rigmriPayload
  = lens _rigmriPayload
      (\ s a -> s{_rigmriPayload = a})

-- | Name of the region scoping this request.
rigmriRegion :: Lens' RegionInstanceGroupManagersRecreateInstances Text
rigmriRegion
  = lens _rigmriRegion (\ s a -> s{_rigmriRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersRecreateInstances
         where
        type Rs RegionInstanceGroupManagersRecreateInstances
             = Operation
        type Scopes
               RegionInstanceGroupManagersRecreateInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersRecreateInstances'{..}
          = go _rigmriProject _rigmriRegion
              _rigmriInstanceGroupManager
              _rigmriRequestId
              (Just AltJSON)
              _rigmriPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersRecreateInstancesResource)
                      mempty
