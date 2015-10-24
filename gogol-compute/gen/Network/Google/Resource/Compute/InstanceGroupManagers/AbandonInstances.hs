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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules a group action to remove the specified instances from the
-- managed instance group. Abandoning an instance does not delete the
-- instance, but it does remove the instance from any target pools that are
-- applied by the managed instance group. This method reduces the
-- targetSize of the managed instance group by the number of instances that
-- you abandon. This operation is marked as DONE when the action is
-- scheduled even if the instances have not yet been removed from the
-- group. You must separately verify the status of the abandoning action
-- with the listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.abandonInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.AbandonInstances
    (
    -- * REST Resource
      InstanceGroupManagersAbandonInstancesResource

    -- * Creating a Request
    , instanceGroupManagersAbandonInstances
    , InstanceGroupManagersAbandonInstances

    -- * Request Lenses
    , igmaiProject
    , igmaiInstanceGroupManager
    , igmaiZone
    , igmaiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.abandonInstances@ method which the
-- 'InstanceGroupManagersAbandonInstances' request conforms to.
type InstanceGroupManagersAbandonInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "abandonInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           InstanceGroupManagersAbandonInstancesRequest
                           :> Post '[JSON] Operation

-- | Schedules a group action to remove the specified instances from the
-- managed instance group. Abandoning an instance does not delete the
-- instance, but it does remove the instance from any target pools that are
-- applied by the managed instance group. This method reduces the
-- targetSize of the managed instance group by the number of instances that
-- you abandon. This operation is marked as DONE when the action is
-- scheduled even if the instances have not yet been removed from the
-- group. You must separately verify the status of the abandoning action
-- with the listmanagedinstances method.
--
-- /See:/ 'instanceGroupManagersAbandonInstances' smart constructor.
data InstanceGroupManagersAbandonInstances = InstanceGroupManagersAbandonInstances
    { _igmaiProject              :: !Text
    , _igmaiInstanceGroupManager :: !Text
    , _igmaiZone                 :: !Text
    , _igmaiPayload              :: !InstanceGroupManagersAbandonInstancesRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAbandonInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmaiProject'
--
-- * 'igmaiInstanceGroupManager'
--
-- * 'igmaiZone'
--
-- * 'igmaiPayload'
instanceGroupManagersAbandonInstances
    :: Text -- ^ 'igmaiProject'
    -> Text -- ^ 'igmaiInstanceGroupManager'
    -> Text -- ^ 'igmaiZone'
    -> InstanceGroupManagersAbandonInstancesRequest -- ^ 'igmaiPayload'
    -> InstanceGroupManagersAbandonInstances
instanceGroupManagersAbandonInstances pIgmaiProject_ pIgmaiInstanceGroupManager_ pIgmaiZone_ pIgmaiPayload_ =
    InstanceGroupManagersAbandonInstances
    { _igmaiProject = pIgmaiProject_
    , _igmaiInstanceGroupManager = pIgmaiInstanceGroupManager_
    , _igmaiZone = pIgmaiZone_
    , _igmaiPayload = pIgmaiPayload_
    }

-- | The project ID for this request.
igmaiProject :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiProject
  = lens _igmaiProject (\ s a -> s{_igmaiProject = a})

-- | The name of the managed instance group.
igmaiInstanceGroupManager :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiInstanceGroupManager
  = lens _igmaiInstanceGroupManager
      (\ s a -> s{_igmaiInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmaiZone :: Lens' InstanceGroupManagersAbandonInstances Text
igmaiZone
  = lens _igmaiZone (\ s a -> s{_igmaiZone = a})

-- | Multipart request metadata.
igmaiPayload :: Lens' InstanceGroupManagersAbandonInstances InstanceGroupManagersAbandonInstancesRequest
igmaiPayload
  = lens _igmaiPayload (\ s a -> s{_igmaiPayload = a})

instance GoogleRequest
         InstanceGroupManagersAbandonInstances where
        type Rs InstanceGroupManagersAbandonInstances =
             Operation
        requestClient
          InstanceGroupManagersAbandonInstances{..}
          = go _igmaiProject _igmaiZone
              _igmaiInstanceGroupManager
              (Just AltJSON)
              _igmaiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersAbandonInstancesResource)
                      mempty
