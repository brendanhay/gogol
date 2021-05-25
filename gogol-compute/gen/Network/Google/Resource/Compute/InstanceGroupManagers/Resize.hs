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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Resize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resizes the managed instance group. If you increase the size, the group
-- creates new instances using the current instance template. If you
-- decrease the size, the group deletes instances. The resize operation is
-- marked DONE when the resize actions are scheduled even if the group has
-- not yet added or deleted any instances. You must separately verify the
-- status of the creating or deleting actions with the listmanagedinstances
-- method. When resizing down, the instance group arbitrarily chooses the
-- order in which VMs are deleted. The group takes into account some VM
-- attributes when making the selection including: + The status of the VM
-- instance. + The health of the VM instance. + The instance template
-- version the VM is based on. + For regional managed instance groups, the
-- location of the VM instance. This list is subject to change. If the
-- group is part of a backend service that has enabled connection draining,
-- it can take up to 60 seconds after the connection draining duration has
-- elapsed before the VM instance is removed or deleted.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.resize@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Resize
    (
    -- * REST Resource
      InstanceGroupManagersResizeResource

    -- * Creating a Request
    , instanceGroupManagersResize
    , InstanceGroupManagersResize

    -- * Request Lenses
    , igmrRequestId
    , igmrProject
    , igmrSize
    , igmrInstanceGroupManager
    , igmrZone
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.resize@ method which the
-- 'InstanceGroupManagersResize' request conforms to.
type InstanceGroupManagersResizeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "resize" :>
                       QueryParam "size" (Textual Int32) :>
                         QueryParam "requestId" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Resizes the managed instance group. If you increase the size, the group
-- creates new instances using the current instance template. If you
-- decrease the size, the group deletes instances. The resize operation is
-- marked DONE when the resize actions are scheduled even if the group has
-- not yet added or deleted any instances. You must separately verify the
-- status of the creating or deleting actions with the listmanagedinstances
-- method. When resizing down, the instance group arbitrarily chooses the
-- order in which VMs are deleted. The group takes into account some VM
-- attributes when making the selection including: + The status of the VM
-- instance. + The health of the VM instance. + The instance template
-- version the VM is based on. + For regional managed instance groups, the
-- location of the VM instance. This list is subject to change. If the
-- group is part of a backend service that has enabled connection draining,
-- it can take up to 60 seconds after the connection draining duration has
-- elapsed before the VM instance is removed or deleted.
--
-- /See:/ 'instanceGroupManagersResize' smart constructor.
data InstanceGroupManagersResize =
  InstanceGroupManagersResize'
    { _igmrRequestId :: !(Maybe Text)
    , _igmrProject :: !Text
    , _igmrSize :: !(Textual Int32)
    , _igmrInstanceGroupManager :: !Text
    , _igmrZone :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersResize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmrRequestId'
--
-- * 'igmrProject'
--
-- * 'igmrSize'
--
-- * 'igmrInstanceGroupManager'
--
-- * 'igmrZone'
instanceGroupManagersResize
    :: Text -- ^ 'igmrProject'
    -> Int32 -- ^ 'igmrSize'
    -> Text -- ^ 'igmrInstanceGroupManager'
    -> Text -- ^ 'igmrZone'
    -> InstanceGroupManagersResize
instanceGroupManagersResize pIgmrProject_ pIgmrSize_ pIgmrInstanceGroupManager_ pIgmrZone_ =
  InstanceGroupManagersResize'
    { _igmrRequestId = Nothing
    , _igmrProject = pIgmrProject_
    , _igmrSize = _Coerce # pIgmrSize_
    , _igmrInstanceGroupManager = pIgmrInstanceGroupManager_
    , _igmrZone = pIgmrZone_
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
igmrRequestId :: Lens' InstanceGroupManagersResize (Maybe Text)
igmrRequestId
  = lens _igmrRequestId
      (\ s a -> s{_igmrRequestId = a})

-- | Project ID for this request.
igmrProject :: Lens' InstanceGroupManagersResize Text
igmrProject
  = lens _igmrProject (\ s a -> s{_igmrProject = a})

-- | The number of running instances that the managed instance group should
-- maintain at any given time. The group automatically adds or removes
-- instances to maintain the number of instances specified by this
-- parameter.
igmrSize :: Lens' InstanceGroupManagersResize Int32
igmrSize
  = lens _igmrSize (\ s a -> s{_igmrSize = a}) .
      _Coerce

-- | The name of the managed instance group.
igmrInstanceGroupManager :: Lens' InstanceGroupManagersResize Text
igmrInstanceGroupManager
  = lens _igmrInstanceGroupManager
      (\ s a -> s{_igmrInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmrZone :: Lens' InstanceGroupManagersResize Text
igmrZone = lens _igmrZone (\ s a -> s{_igmrZone = a})

instance GoogleRequest InstanceGroupManagersResize
         where
        type Rs InstanceGroupManagersResize = Operation
        type Scopes InstanceGroupManagersResize =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupManagersResize'{..}
          = go _igmrProject _igmrZone _igmrInstanceGroupManager
              (Just _igmrSize)
              _igmrRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersResizeResource)
                      mempty
