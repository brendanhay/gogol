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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetTargetPools
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the target pools to which all new instances in this group are
-- assigned. Existing instances in the group are not affected.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.setTargetPools@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.SetTargetPools
    (
    -- * REST Resource
      RegionInstanceGroupManagersSetTargetPoolsResource

    -- * Creating a Request
    , regionInstanceGroupManagersSetTargetPools
    , RegionInstanceGroupManagersSetTargetPools

    -- * Request Lenses
    , rigmstpRequestId
    , rigmstpProject
    , rigmstpInstanceGroupManager
    , rigmstpPayload
    , rigmstpRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.setTargetPools@ method which the
-- 'RegionInstanceGroupManagersSetTargetPools' request conforms to.
type RegionInstanceGroupManagersSetTargetPoolsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "setTargetPools" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupManagersSetTargetPoolsRequest
                             :> Post '[JSON] Operation

-- | Modifies the target pools to which all new instances in this group are
-- assigned. Existing instances in the group are not affected.
--
-- /See:/ 'regionInstanceGroupManagersSetTargetPools' smart constructor.
data RegionInstanceGroupManagersSetTargetPools =
  RegionInstanceGroupManagersSetTargetPools'
    { _rigmstpRequestId            :: !(Maybe Text)
    , _rigmstpProject              :: !Text
    , _rigmstpInstanceGroupManager :: !Text
    , _rigmstpPayload              :: !RegionInstanceGroupManagersSetTargetPoolsRequest
    , _rigmstpRegion               :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersSetTargetPools' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmstpRequestId'
--
-- * 'rigmstpProject'
--
-- * 'rigmstpInstanceGroupManager'
--
-- * 'rigmstpPayload'
--
-- * 'rigmstpRegion'
regionInstanceGroupManagersSetTargetPools
    :: Text -- ^ 'rigmstpProject'
    -> Text -- ^ 'rigmstpInstanceGroupManager'
    -> RegionInstanceGroupManagersSetTargetPoolsRequest -- ^ 'rigmstpPayload'
    -> Text -- ^ 'rigmstpRegion'
    -> RegionInstanceGroupManagersSetTargetPools
regionInstanceGroupManagersSetTargetPools pRigmstpProject_ pRigmstpInstanceGroupManager_ pRigmstpPayload_ pRigmstpRegion_ =
  RegionInstanceGroupManagersSetTargetPools'
    { _rigmstpRequestId = Nothing
    , _rigmstpProject = pRigmstpProject_
    , _rigmstpInstanceGroupManager = pRigmstpInstanceGroupManager_
    , _rigmstpPayload = pRigmstpPayload_
    , _rigmstpRegion = pRigmstpRegion_
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
rigmstpRequestId :: Lens' RegionInstanceGroupManagersSetTargetPools (Maybe Text)
rigmstpRequestId
  = lens _rigmstpRequestId
      (\ s a -> s{_rigmstpRequestId = a})

-- | Project ID for this request.
rigmstpProject :: Lens' RegionInstanceGroupManagersSetTargetPools Text
rigmstpProject
  = lens _rigmstpProject
      (\ s a -> s{_rigmstpProject = a})

-- | Name of the managed instance group.
rigmstpInstanceGroupManager :: Lens' RegionInstanceGroupManagersSetTargetPools Text
rigmstpInstanceGroupManager
  = lens _rigmstpInstanceGroupManager
      (\ s a -> s{_rigmstpInstanceGroupManager = a})

-- | Multipart request metadata.
rigmstpPayload :: Lens' RegionInstanceGroupManagersSetTargetPools RegionInstanceGroupManagersSetTargetPoolsRequest
rigmstpPayload
  = lens _rigmstpPayload
      (\ s a -> s{_rigmstpPayload = a})

-- | Name of the region scoping this request.
rigmstpRegion :: Lens' RegionInstanceGroupManagersSetTargetPools Text
rigmstpRegion
  = lens _rigmstpRegion
      (\ s a -> s{_rigmstpRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersSetTargetPools
         where
        type Rs RegionInstanceGroupManagersSetTargetPools =
             Operation
        type Scopes RegionInstanceGroupManagersSetTargetPools
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersSetTargetPools'{..}
          = go _rigmstpProject _rigmstpRegion
              _rigmstpInstanceGroupManager
              _rigmstpRequestId
              (Just AltJSON)
              _rigmstpPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersSetTargetPoolsResource)
                      mempty
