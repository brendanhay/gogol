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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules a group action to recreate the specified instances in the
-- managed instance group. The instances are deleted and recreated using
-- the current instance template for the managed instance group. This
-- operation is marked as DONE when the action is scheduled even if the
-- instances have not yet been recreated. You must separately verify the
-- status of the recreating action with the listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.recreateInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.RecreateInstances
    (
    -- * REST Resource
      InstanceGroupManagersRecreateInstancesResource

    -- * Creating a Request
    , instanceGroupManagersRecreateInstances
    , InstanceGroupManagersRecreateInstances

    -- * Request Lenses
    , igmriProject
    , igmriInstanceGroupManager
    , igmriZone
    , igmriPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.recreateInstances@ method which the
-- 'InstanceGroupManagersRecreateInstances' request conforms to.
type InstanceGroupManagersRecreateInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "recreateInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           InstanceGroupManagersRecreateInstancesRequest
                           :> Post '[JSON] Operation

-- | Schedules a group action to recreate the specified instances in the
-- managed instance group. The instances are deleted and recreated using
-- the current instance template for the managed instance group. This
-- operation is marked as DONE when the action is scheduled even if the
-- instances have not yet been recreated. You must separately verify the
-- status of the recreating action with the listmanagedinstances method.
--
-- /See:/ 'instanceGroupManagersRecreateInstances' smart constructor.
data InstanceGroupManagersRecreateInstances = InstanceGroupManagersRecreateInstances
    { _igmriProject              :: !Text
    , _igmriInstanceGroupManager :: !Text
    , _igmriZone                 :: !Text
    , _igmriPayload              :: !InstanceGroupManagersRecreateInstancesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersRecreateInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmriProject'
--
-- * 'igmriInstanceGroupManager'
--
-- * 'igmriZone'
--
-- * 'igmriPayload'
instanceGroupManagersRecreateInstances
    :: Text -- ^ 'igmriProject'
    -> Text -- ^ 'igmriInstanceGroupManager'
    -> Text -- ^ 'igmriZone'
    -> InstanceGroupManagersRecreateInstancesRequest -- ^ 'igmriPayload'
    -> InstanceGroupManagersRecreateInstances
instanceGroupManagersRecreateInstances pIgmriProject_ pIgmriInstanceGroupManager_ pIgmriZone_ pIgmriPayload_ =
    InstanceGroupManagersRecreateInstances
    { _igmriProject = pIgmriProject_
    , _igmriInstanceGroupManager = pIgmriInstanceGroupManager_
    , _igmriZone = pIgmriZone_
    , _igmriPayload = pIgmriPayload_
    }

-- | Project ID for this request.
igmriProject :: Lens' InstanceGroupManagersRecreateInstances Text
igmriProject
  = lens _igmriProject (\ s a -> s{_igmriProject = a})

-- | The name of the managed instance group.
igmriInstanceGroupManager :: Lens' InstanceGroupManagersRecreateInstances Text
igmriInstanceGroupManager
  = lens _igmriInstanceGroupManager
      (\ s a -> s{_igmriInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmriZone :: Lens' InstanceGroupManagersRecreateInstances Text
igmriZone
  = lens _igmriZone (\ s a -> s{_igmriZone = a})

-- | Multipart request metadata.
igmriPayload :: Lens' InstanceGroupManagersRecreateInstances InstanceGroupManagersRecreateInstancesRequest
igmriPayload
  = lens _igmriPayload (\ s a -> s{_igmriPayload = a})

instance GoogleRequest
         InstanceGroupManagersRecreateInstances where
        type Rs InstanceGroupManagersRecreateInstances =
             Operation
        requestClient
          InstanceGroupManagersRecreateInstances{..}
          = go _igmriProject _igmriZone
              _igmriInstanceGroupManager
              (Just AltJSON)
              _igmriPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersRecreateInstancesResource)
                      mempty
