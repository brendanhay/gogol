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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.AddInstances
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a list of instances to the specified instance group. All of the
-- instances in the instance group must be in the same network\/subnetwork.
-- Read Adding instances for more information.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.addInstances@.
module Network.Google.Resource.Compute.InstanceGroups.AddInstances
    (
    -- * REST Resource
      InstanceGroupsAddInstancesResource

    -- * Creating a Request
    , instanceGroupsAddInstances
    , InstanceGroupsAddInstances

    -- * Request Lenses
    , igaiRequestId
    , igaiProject
    , igaiZone
    , igaiPayload
    , igaiInstanceGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.addInstances@ method which the
-- 'InstanceGroupsAddInstances' request conforms to.
type InstanceGroupsAddInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "addInstances" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstanceGroupsAddInstancesRequest :>
                             Post '[JSON] Operation

-- | Adds a list of instances to the specified instance group. All of the
-- instances in the instance group must be in the same network\/subnetwork.
-- Read Adding instances for more information.
--
-- /See:/ 'instanceGroupsAddInstances' smart constructor.
data InstanceGroupsAddInstances =
  InstanceGroupsAddInstances'
    { _igaiRequestId :: !(Maybe Text)
    , _igaiProject :: !Text
    , _igaiZone :: !Text
    , _igaiPayload :: !InstanceGroupsAddInstancesRequest
    , _igaiInstanceGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupsAddInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igaiRequestId'
--
-- * 'igaiProject'
--
-- * 'igaiZone'
--
-- * 'igaiPayload'
--
-- * 'igaiInstanceGroup'
instanceGroupsAddInstances
    :: Text -- ^ 'igaiProject'
    -> Text -- ^ 'igaiZone'
    -> InstanceGroupsAddInstancesRequest -- ^ 'igaiPayload'
    -> Text -- ^ 'igaiInstanceGroup'
    -> InstanceGroupsAddInstances
instanceGroupsAddInstances pIgaiProject_ pIgaiZone_ pIgaiPayload_ pIgaiInstanceGroup_ =
  InstanceGroupsAddInstances'
    { _igaiRequestId = Nothing
    , _igaiProject = pIgaiProject_
    , _igaiZone = pIgaiZone_
    , _igaiPayload = pIgaiPayload_
    , _igaiInstanceGroup = pIgaiInstanceGroup_
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
igaiRequestId :: Lens' InstanceGroupsAddInstances (Maybe Text)
igaiRequestId
  = lens _igaiRequestId
      (\ s a -> s{_igaiRequestId = a})

-- | Project ID for this request.
igaiProject :: Lens' InstanceGroupsAddInstances Text
igaiProject
  = lens _igaiProject (\ s a -> s{_igaiProject = a})

-- | The name of the zone where the instance group is located.
igaiZone :: Lens' InstanceGroupsAddInstances Text
igaiZone = lens _igaiZone (\ s a -> s{_igaiZone = a})

-- | Multipart request metadata.
igaiPayload :: Lens' InstanceGroupsAddInstances InstanceGroupsAddInstancesRequest
igaiPayload
  = lens _igaiPayload (\ s a -> s{_igaiPayload = a})

-- | The name of the instance group where you are adding instances.
igaiInstanceGroup :: Lens' InstanceGroupsAddInstances Text
igaiInstanceGroup
  = lens _igaiInstanceGroup
      (\ s a -> s{_igaiInstanceGroup = a})

instance GoogleRequest InstanceGroupsAddInstances
         where
        type Rs InstanceGroupsAddInstances = Operation
        type Scopes InstanceGroupsAddInstances =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupsAddInstances'{..}
          = go _igaiProject _igaiZone _igaiInstanceGroup
              _igaiRequestId
              (Just AltJSON)
              _igaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsAddInstancesResource)
                      mempty
