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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.SetNamedPorts
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the named ports for the specified instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.setNamedPorts@.
module Network.Google.Resource.Compute.InstanceGroups.SetNamedPorts
    (
    -- * REST Resource
      InstanceGroupsSetNamedPortsResource

    -- * Creating a Request
    , instanceGroupsSetNamedPorts
    , InstanceGroupsSetNamedPorts

    -- * Request Lenses
    , igsnpRequestId
    , igsnpProject
    , igsnpZone
    , igsnpPayload
    , igsnpInstanceGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.setNamedPorts@ method which the
-- 'InstanceGroupsSetNamedPorts' request conforms to.
type InstanceGroupsSetNamedPortsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "setNamedPorts" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstanceGroupsSetNamedPortsRequest :>
                             Post '[JSON] Operation

-- | Sets the named ports for the specified instance group.
--
-- /See:/ 'instanceGroupsSetNamedPorts' smart constructor.
data InstanceGroupsSetNamedPorts =
  InstanceGroupsSetNamedPorts'
    { _igsnpRequestId     :: !(Maybe Text)
    , _igsnpProject       :: !Text
    , _igsnpZone          :: !Text
    , _igsnpPayload       :: !InstanceGroupsSetNamedPortsRequest
    , _igsnpInstanceGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceGroupsSetNamedPorts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igsnpRequestId'
--
-- * 'igsnpProject'
--
-- * 'igsnpZone'
--
-- * 'igsnpPayload'
--
-- * 'igsnpInstanceGroup'
instanceGroupsSetNamedPorts
    :: Text -- ^ 'igsnpProject'
    -> Text -- ^ 'igsnpZone'
    -> InstanceGroupsSetNamedPortsRequest -- ^ 'igsnpPayload'
    -> Text -- ^ 'igsnpInstanceGroup'
    -> InstanceGroupsSetNamedPorts
instanceGroupsSetNamedPorts pIgsnpProject_ pIgsnpZone_ pIgsnpPayload_ pIgsnpInstanceGroup_ =
  InstanceGroupsSetNamedPorts'
    { _igsnpRequestId = Nothing
    , _igsnpProject = pIgsnpProject_
    , _igsnpZone = pIgsnpZone_
    , _igsnpPayload = pIgsnpPayload_
    , _igsnpInstanceGroup = pIgsnpInstanceGroup_
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
igsnpRequestId :: Lens' InstanceGroupsSetNamedPorts (Maybe Text)
igsnpRequestId
  = lens _igsnpRequestId
      (\ s a -> s{_igsnpRequestId = a})

-- | Project ID for this request.
igsnpProject :: Lens' InstanceGroupsSetNamedPorts Text
igsnpProject
  = lens _igsnpProject (\ s a -> s{_igsnpProject = a})

-- | The name of the zone where the instance group is located.
igsnpZone :: Lens' InstanceGroupsSetNamedPorts Text
igsnpZone
  = lens _igsnpZone (\ s a -> s{_igsnpZone = a})

-- | Multipart request metadata.
igsnpPayload :: Lens' InstanceGroupsSetNamedPorts InstanceGroupsSetNamedPortsRequest
igsnpPayload
  = lens _igsnpPayload (\ s a -> s{_igsnpPayload = a})

-- | The name of the instance group where the named ports are updated.
igsnpInstanceGroup :: Lens' InstanceGroupsSetNamedPorts Text
igsnpInstanceGroup
  = lens _igsnpInstanceGroup
      (\ s a -> s{_igsnpInstanceGroup = a})

instance GoogleRequest InstanceGroupsSetNamedPorts
         where
        type Rs InstanceGroupsSetNamedPorts = Operation
        type Scopes InstanceGroupsSetNamedPorts =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupsSetNamedPorts'{..}
          = go _igsnpProject _igsnpZone _igsnpInstanceGroup
              _igsnpRequestId
              (Just AltJSON)
              _igsnpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsSetNamedPortsResource)
                      mempty
