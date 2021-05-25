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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.Resize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the intended size of the managed instance group. If you increase
-- the size, the group creates new instances using the current instance
-- template. If you decrease the size, the group deletes one or more
-- instances. The resize operation is marked DONE if the resize request is
-- successful. The underlying actions take additional time. You must
-- separately verify the status of the creating or deleting actions with
-- the listmanagedinstances method. If the group is part of a backend
-- service that has enabled connection draining, it can take up to 60
-- seconds after the connection draining duration has elapsed before the VM
-- instance is removed or deleted.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.resize@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Resize
    (
    -- * REST Resource
      RegionInstanceGroupManagersResizeResource

    -- * Creating a Request
    , regionInstanceGroupManagersResize
    , RegionInstanceGroupManagersResize

    -- * Request Lenses
    , rigmrRequestId
    , rigmrProject
    , rigmrSize
    , rigmrInstanceGroupManager
    , rigmrRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.resize@ method which the
-- 'RegionInstanceGroupManagersResize' request conforms to.
type RegionInstanceGroupManagersResizeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "resize" :>
                       QueryParam "size" (Textual Int32) :>
                         QueryParam "requestId" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Changes the intended size of the managed instance group. If you increase
-- the size, the group creates new instances using the current instance
-- template. If you decrease the size, the group deletes one or more
-- instances. The resize operation is marked DONE if the resize request is
-- successful. The underlying actions take additional time. You must
-- separately verify the status of the creating or deleting actions with
-- the listmanagedinstances method. If the group is part of a backend
-- service that has enabled connection draining, it can take up to 60
-- seconds after the connection draining duration has elapsed before the VM
-- instance is removed or deleted.
--
-- /See:/ 'regionInstanceGroupManagersResize' smart constructor.
data RegionInstanceGroupManagersResize =
  RegionInstanceGroupManagersResize'
    { _rigmrRequestId :: !(Maybe Text)
    , _rigmrProject :: !Text
    , _rigmrSize :: !(Textual Int32)
    , _rigmrInstanceGroupManager :: !Text
    , _rigmrRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersResize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmrRequestId'
--
-- * 'rigmrProject'
--
-- * 'rigmrSize'
--
-- * 'rigmrInstanceGroupManager'
--
-- * 'rigmrRegion'
regionInstanceGroupManagersResize
    :: Text -- ^ 'rigmrProject'
    -> Int32 -- ^ 'rigmrSize'
    -> Text -- ^ 'rigmrInstanceGroupManager'
    -> Text -- ^ 'rigmrRegion'
    -> RegionInstanceGroupManagersResize
regionInstanceGroupManagersResize pRigmrProject_ pRigmrSize_ pRigmrInstanceGroupManager_ pRigmrRegion_ =
  RegionInstanceGroupManagersResize'
    { _rigmrRequestId = Nothing
    , _rigmrProject = pRigmrProject_
    , _rigmrSize = _Coerce # pRigmrSize_
    , _rigmrInstanceGroupManager = pRigmrInstanceGroupManager_
    , _rigmrRegion = pRigmrRegion_
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
rigmrRequestId :: Lens' RegionInstanceGroupManagersResize (Maybe Text)
rigmrRequestId
  = lens _rigmrRequestId
      (\ s a -> s{_rigmrRequestId = a})

-- | Project ID for this request.
rigmrProject :: Lens' RegionInstanceGroupManagersResize Text
rigmrProject
  = lens _rigmrProject (\ s a -> s{_rigmrProject = a})

-- | Number of instances that should exist in this instance group manager.
rigmrSize :: Lens' RegionInstanceGroupManagersResize Int32
rigmrSize
  = lens _rigmrSize (\ s a -> s{_rigmrSize = a}) .
      _Coerce

-- | Name of the managed instance group.
rigmrInstanceGroupManager :: Lens' RegionInstanceGroupManagersResize Text
rigmrInstanceGroupManager
  = lens _rigmrInstanceGroupManager
      (\ s a -> s{_rigmrInstanceGroupManager = a})

-- | Name of the region scoping this request.
rigmrRegion :: Lens' RegionInstanceGroupManagersResize Text
rigmrRegion
  = lens _rigmrRegion (\ s a -> s{_rigmrRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersResize
         where
        type Rs RegionInstanceGroupManagersResize = Operation
        type Scopes RegionInstanceGroupManagersResize =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionInstanceGroupManagersResize'{..}
          = go _rigmrProject _rigmrRegion
              _rigmrInstanceGroupManager
              (Just _rigmrSize)
              _rigmrRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersResizeResource)
                      mempty
