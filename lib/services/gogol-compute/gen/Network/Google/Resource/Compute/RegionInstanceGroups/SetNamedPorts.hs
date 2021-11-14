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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroups.SetNamedPorts
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the named ports for the specified regional instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroups.setNamedPorts@.
module Network.Google.Resource.Compute.RegionInstanceGroups.SetNamedPorts
    (
    -- * REST Resource
      RegionInstanceGroupsSetNamedPortsResource

    -- * Creating a Request
    , regionInstanceGroupsSetNamedPorts
    , RegionInstanceGroupsSetNamedPorts

    -- * Request Lenses
    , rigsnpRequestId
    , rigsnpProject
    , rigsnpPayload
    , rigsnpRegion
    , rigsnpInstanceGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroups.setNamedPorts@ method which the
-- 'RegionInstanceGroupsSetNamedPorts' request conforms to.
type RegionInstanceGroupsSetNamedPortsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "setNamedPorts" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupsSetNamedPortsRequest
                             :> Post '[JSON] Operation

-- | Sets the named ports for the specified regional instance group.
--
-- /See:/ 'regionInstanceGroupsSetNamedPorts' smart constructor.
data RegionInstanceGroupsSetNamedPorts =
  RegionInstanceGroupsSetNamedPorts'
    { _rigsnpRequestId :: !(Maybe Text)
    , _rigsnpProject :: !Text
    , _rigsnpPayload :: !RegionInstanceGroupsSetNamedPortsRequest
    , _rigsnpRegion :: !Text
    , _rigsnpInstanceGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupsSetNamedPorts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigsnpRequestId'
--
-- * 'rigsnpProject'
--
-- * 'rigsnpPayload'
--
-- * 'rigsnpRegion'
--
-- * 'rigsnpInstanceGroup'
regionInstanceGroupsSetNamedPorts
    :: Text -- ^ 'rigsnpProject'
    -> RegionInstanceGroupsSetNamedPortsRequest -- ^ 'rigsnpPayload'
    -> Text -- ^ 'rigsnpRegion'
    -> Text -- ^ 'rigsnpInstanceGroup'
    -> RegionInstanceGroupsSetNamedPorts
regionInstanceGroupsSetNamedPorts pRigsnpProject_ pRigsnpPayload_ pRigsnpRegion_ pRigsnpInstanceGroup_ =
  RegionInstanceGroupsSetNamedPorts'
    { _rigsnpRequestId = Nothing
    , _rigsnpProject = pRigsnpProject_
    , _rigsnpPayload = pRigsnpPayload_
    , _rigsnpRegion = pRigsnpRegion_
    , _rigsnpInstanceGroup = pRigsnpInstanceGroup_
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
rigsnpRequestId :: Lens' RegionInstanceGroupsSetNamedPorts (Maybe Text)
rigsnpRequestId
  = lens _rigsnpRequestId
      (\ s a -> s{_rigsnpRequestId = a})

-- | Project ID for this request.
rigsnpProject :: Lens' RegionInstanceGroupsSetNamedPorts Text
rigsnpProject
  = lens _rigsnpProject
      (\ s a -> s{_rigsnpProject = a})

-- | Multipart request metadata.
rigsnpPayload :: Lens' RegionInstanceGroupsSetNamedPorts RegionInstanceGroupsSetNamedPortsRequest
rigsnpPayload
  = lens _rigsnpPayload
      (\ s a -> s{_rigsnpPayload = a})

-- | Name of the region scoping this request.
rigsnpRegion :: Lens' RegionInstanceGroupsSetNamedPorts Text
rigsnpRegion
  = lens _rigsnpRegion (\ s a -> s{_rigsnpRegion = a})

-- | The name of the regional instance group where the named ports are
-- updated.
rigsnpInstanceGroup :: Lens' RegionInstanceGroupsSetNamedPorts Text
rigsnpInstanceGroup
  = lens _rigsnpInstanceGroup
      (\ s a -> s{_rigsnpInstanceGroup = a})

instance GoogleRequest
           RegionInstanceGroupsSetNamedPorts
         where
        type Rs RegionInstanceGroupsSetNamedPorts = Operation
        type Scopes RegionInstanceGroupsSetNamedPorts =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionInstanceGroupsSetNamedPorts'{..}
          = go _rigsnpProject _rigsnpRegion
              _rigsnpInstanceGroup
              _rigsnpRequestId
              (Just AltJSON)
              _rigsnpPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupsSetNamedPortsResource)
                      mempty
