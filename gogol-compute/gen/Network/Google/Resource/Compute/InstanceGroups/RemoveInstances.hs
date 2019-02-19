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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more instances from the specified instance group, but
-- does not delete those instances. If the group is part of a backend
-- service that has enabled connection draining, it can take up to 60
-- seconds after the connection draining duration before the VM instance is
-- removed or deleted.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.removeInstances@.
module Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
    (
    -- * REST Resource
      InstanceGroupsRemoveInstancesResource

    -- * Creating a Request
    , instanceGroupsRemoveInstances
    , InstanceGroupsRemoveInstances

    -- * Request Lenses
    , igriRequestId
    , igriProject
    , igriZone
    , igriPayload
    , igriInstanceGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.removeInstances@ method which the
-- 'InstanceGroupsRemoveInstances' request conforms to.
type InstanceGroupsRemoveInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "removeInstances" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstanceGroupsRemoveInstancesRequest
                             :> Post '[JSON] Operation

-- | Removes one or more instances from the specified instance group, but
-- does not delete those instances. If the group is part of a backend
-- service that has enabled connection draining, it can take up to 60
-- seconds after the connection draining duration before the VM instance is
-- removed or deleted.
--
-- /See:/ 'instanceGroupsRemoveInstances' smart constructor.
data InstanceGroupsRemoveInstances =
  InstanceGroupsRemoveInstances'
    { _igriRequestId     :: !(Maybe Text)
    , _igriProject       :: !Text
    , _igriZone          :: !Text
    , _igriPayload       :: !InstanceGroupsRemoveInstancesRequest
    , _igriInstanceGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceGroupsRemoveInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igriRequestId'
--
-- * 'igriProject'
--
-- * 'igriZone'
--
-- * 'igriPayload'
--
-- * 'igriInstanceGroup'
instanceGroupsRemoveInstances
    :: Text -- ^ 'igriProject'
    -> Text -- ^ 'igriZone'
    -> InstanceGroupsRemoveInstancesRequest -- ^ 'igriPayload'
    -> Text -- ^ 'igriInstanceGroup'
    -> InstanceGroupsRemoveInstances
instanceGroupsRemoveInstances pIgriProject_ pIgriZone_ pIgriPayload_ pIgriInstanceGroup_ =
  InstanceGroupsRemoveInstances'
    { _igriRequestId = Nothing
    , _igriProject = pIgriProject_
    , _igriZone = pIgriZone_
    , _igriPayload = pIgriPayload_
    , _igriInstanceGroup = pIgriInstanceGroup_
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
igriRequestId :: Lens' InstanceGroupsRemoveInstances (Maybe Text)
igriRequestId
  = lens _igriRequestId
      (\ s a -> s{_igriRequestId = a})

-- | Project ID for this request.
igriProject :: Lens' InstanceGroupsRemoveInstances Text
igriProject
  = lens _igriProject (\ s a -> s{_igriProject = a})

-- | The name of the zone where the instance group is located.
igriZone :: Lens' InstanceGroupsRemoveInstances Text
igriZone = lens _igriZone (\ s a -> s{_igriZone = a})

-- | Multipart request metadata.
igriPayload :: Lens' InstanceGroupsRemoveInstances InstanceGroupsRemoveInstancesRequest
igriPayload
  = lens _igriPayload (\ s a -> s{_igriPayload = a})

-- | The name of the instance group where the specified instances will be
-- removed.
igriInstanceGroup :: Lens' InstanceGroupsRemoveInstances Text
igriInstanceGroup
  = lens _igriInstanceGroup
      (\ s a -> s{_igriInstanceGroup = a})

instance GoogleRequest InstanceGroupsRemoveInstances
         where
        type Rs InstanceGroupsRemoveInstances = Operation
        type Scopes InstanceGroupsRemoveInstances =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupsRemoveInstances'{..}
          = go _igriProject _igriZone _igriInstanceGroup
              _igriRequestId
              (Just AltJSON)
              _igriPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupsRemoveInstancesResource)
                      mempty
