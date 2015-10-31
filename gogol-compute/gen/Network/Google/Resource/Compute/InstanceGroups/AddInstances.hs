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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , igaiProject
    , igaiZone
    , igaiPayload
    , igaiInstanceGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InstanceGroupsAddInstancesRequest :>
                           Post '[JSON] Operation

-- | Adds a list of instances to the specified instance group. All of the
-- instances in the instance group must be in the same network\/subnetwork.
-- Read Adding instances for more information.
--
-- /See:/ 'instanceGroupsAddInstances' smart constructor.
data InstanceGroupsAddInstances = InstanceGroupsAddInstances
    { _igaiProject       :: !Text
    , _igaiZone          :: !Text
    , _igaiPayload       :: !InstanceGroupsAddInstancesRequest
    , _igaiInstanceGroup :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsAddInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    InstanceGroupsAddInstances
    { _igaiProject = pIgaiProject_
    , _igaiZone = pIgaiZone_
    , _igaiPayload = pIgaiPayload_
    , _igaiInstanceGroup = pIgaiInstanceGroup_
    }

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
        requestClient InstanceGroupsAddInstances{..}
          = go _igaiProject _igaiZone _igaiInstanceGroup
              (Just AltJSON)
              _igaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsAddInstancesResource)
                      mempty
