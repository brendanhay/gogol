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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , rigsnpProject
    , rigsnpPayload
    , rigsnpRegion
    , rigsnpInstanceGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           RegionInstanceGroupsSetNamedPortsRequest
                           :> Post '[JSON] Operation

-- | Sets the named ports for the specified regional instance group.
--
-- /See:/ 'regionInstanceGroupsSetNamedPorts' smart constructor.
data RegionInstanceGroupsSetNamedPorts = RegionInstanceGroupsSetNamedPorts'
    { _rigsnpProject       :: !Text
    , _rigsnpPayload       :: !RegionInstanceGroupsSetNamedPortsRequest
    , _rigsnpRegion        :: !Text
    , _rigsnpInstanceGroup :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupsSetNamedPorts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _rigsnpProject = pRigsnpProject_
    , _rigsnpPayload = pRigsnpPayload_
    , _rigsnpRegion = pRigsnpRegion_
    , _rigsnpInstanceGroup = pRigsnpInstanceGroup_
    }

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
         RegionInstanceGroupsSetNamedPorts where
        type Rs RegionInstanceGroupsSetNamedPorts = Operation
        type Scopes RegionInstanceGroupsSetNamedPorts =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionInstanceGroupsSetNamedPorts'{..}
          = go _rigsnpProject _rigsnpRegion
              _rigsnpInstanceGroup
              (Just AltJSON)
              _rigsnpPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupsSetNamedPortsResource)
                      mempty
