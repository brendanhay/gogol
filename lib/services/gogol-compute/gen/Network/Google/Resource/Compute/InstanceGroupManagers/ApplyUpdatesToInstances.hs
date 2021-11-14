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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.ApplyUpdatesToInstances
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies changes to selected instances on the managed instance group.
-- This method can be used to apply new overrides and\/or new versions.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.applyUpdatesToInstances@.
module Network.Google.Resource.Compute.InstanceGroupManagers.ApplyUpdatesToInstances
    (
    -- * REST Resource
      InstanceGroupManagersApplyUpdatesToInstancesResource

    -- * Creating a Request
    , instanceGroupManagersApplyUpdatesToInstances
    , InstanceGroupManagersApplyUpdatesToInstances

    -- * Request Lenses
    , igmautiProject
    , igmautiInstanceGroupManager
    , igmautiZone
    , igmautiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.applyUpdatesToInstances@ method which the
-- 'InstanceGroupManagersApplyUpdatesToInstances' request conforms to.
type InstanceGroupManagersApplyUpdatesToInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "applyUpdatesToInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           InstanceGroupManagersApplyUpdatesRequest
                           :> Post '[JSON] Operation

-- | Applies changes to selected instances on the managed instance group.
-- This method can be used to apply new overrides and\/or new versions.
--
-- /See:/ 'instanceGroupManagersApplyUpdatesToInstances' smart constructor.
data InstanceGroupManagersApplyUpdatesToInstances =
  InstanceGroupManagersApplyUpdatesToInstances'
    { _igmautiProject :: !Text
    , _igmautiInstanceGroupManager :: !Text
    , _igmautiZone :: !Text
    , _igmautiPayload :: !InstanceGroupManagersApplyUpdatesRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersApplyUpdatesToInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmautiProject'
--
-- * 'igmautiInstanceGroupManager'
--
-- * 'igmautiZone'
--
-- * 'igmautiPayload'
instanceGroupManagersApplyUpdatesToInstances
    :: Text -- ^ 'igmautiProject'
    -> Text -- ^ 'igmautiInstanceGroupManager'
    -> Text -- ^ 'igmautiZone'
    -> InstanceGroupManagersApplyUpdatesRequest -- ^ 'igmautiPayload'
    -> InstanceGroupManagersApplyUpdatesToInstances
instanceGroupManagersApplyUpdatesToInstances pIgmautiProject_ pIgmautiInstanceGroupManager_ pIgmautiZone_ pIgmautiPayload_ =
  InstanceGroupManagersApplyUpdatesToInstances'
    { _igmautiProject = pIgmautiProject_
    , _igmautiInstanceGroupManager = pIgmautiInstanceGroupManager_
    , _igmautiZone = pIgmautiZone_
    , _igmautiPayload = pIgmautiPayload_
    }


-- | Project ID for this request.
igmautiProject :: Lens' InstanceGroupManagersApplyUpdatesToInstances Text
igmautiProject
  = lens _igmautiProject
      (\ s a -> s{_igmautiProject = a})

-- | The name of the managed instance group, should conform to RFC1035.
igmautiInstanceGroupManager :: Lens' InstanceGroupManagersApplyUpdatesToInstances Text
igmautiInstanceGroupManager
  = lens _igmautiInstanceGroupManager
      (\ s a -> s{_igmautiInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located. Should
-- conform to RFC1035.
igmautiZone :: Lens' InstanceGroupManagersApplyUpdatesToInstances Text
igmautiZone
  = lens _igmautiZone (\ s a -> s{_igmautiZone = a})

-- | Multipart request metadata.
igmautiPayload :: Lens' InstanceGroupManagersApplyUpdatesToInstances InstanceGroupManagersApplyUpdatesRequest
igmautiPayload
  = lens _igmautiPayload
      (\ s a -> s{_igmautiPayload = a})

instance GoogleRequest
           InstanceGroupManagersApplyUpdatesToInstances
         where
        type Rs InstanceGroupManagersApplyUpdatesToInstances
             = Operation
        type Scopes
               InstanceGroupManagersApplyUpdatesToInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersApplyUpdatesToInstances'{..}
          = go _igmautiProject _igmautiZone
              _igmautiInstanceGroupManager
              (Just AltJSON)
              _igmautiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersApplyUpdatesToInstancesResource)
                      mempty
