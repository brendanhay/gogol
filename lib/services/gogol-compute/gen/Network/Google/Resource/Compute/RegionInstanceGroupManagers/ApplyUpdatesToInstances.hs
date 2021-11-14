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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.ApplyUpdatesToInstances
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Apply updates to selected instances the managed instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.applyUpdatesToInstances@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.ApplyUpdatesToInstances
    (
    -- * REST Resource
      RegionInstanceGroupManagersApplyUpdatesToInstancesResource

    -- * Creating a Request
    , regionInstanceGroupManagersApplyUpdatesToInstances
    , RegionInstanceGroupManagersApplyUpdatesToInstances

    -- * Request Lenses
    , rigmautiProject
    , rigmautiInstanceGroupManager
    , rigmautiPayload
    , rigmautiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.applyUpdatesToInstances@ method which the
-- 'RegionInstanceGroupManagersApplyUpdatesToInstances' request conforms to.
type RegionInstanceGroupManagersApplyUpdatesToInstancesResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "applyUpdatesToInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           RegionInstanceGroupManagersApplyUpdatesRequest
                           :> Post '[JSON] Operation

-- | Apply updates to selected instances the managed instance group.
--
-- /See:/ 'regionInstanceGroupManagersApplyUpdatesToInstances' smart constructor.
data RegionInstanceGroupManagersApplyUpdatesToInstances =
  RegionInstanceGroupManagersApplyUpdatesToInstances'
    { _rigmautiProject :: !Text
    , _rigmautiInstanceGroupManager :: !Text
    , _rigmautiPayload :: !RegionInstanceGroupManagersApplyUpdatesRequest
    , _rigmautiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersApplyUpdatesToInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmautiProject'
--
-- * 'rigmautiInstanceGroupManager'
--
-- * 'rigmautiPayload'
--
-- * 'rigmautiRegion'
regionInstanceGroupManagersApplyUpdatesToInstances
    :: Text -- ^ 'rigmautiProject'
    -> Text -- ^ 'rigmautiInstanceGroupManager'
    -> RegionInstanceGroupManagersApplyUpdatesRequest -- ^ 'rigmautiPayload'
    -> Text -- ^ 'rigmautiRegion'
    -> RegionInstanceGroupManagersApplyUpdatesToInstances
regionInstanceGroupManagersApplyUpdatesToInstances pRigmautiProject_ pRigmautiInstanceGroupManager_ pRigmautiPayload_ pRigmautiRegion_ =
  RegionInstanceGroupManagersApplyUpdatesToInstances'
    { _rigmautiProject = pRigmautiProject_
    , _rigmautiInstanceGroupManager = pRigmautiInstanceGroupManager_
    , _rigmautiPayload = pRigmautiPayload_
    , _rigmautiRegion = pRigmautiRegion_
    }


-- | Project ID for this request.
rigmautiProject :: Lens' RegionInstanceGroupManagersApplyUpdatesToInstances Text
rigmautiProject
  = lens _rigmautiProject
      (\ s a -> s{_rigmautiProject = a})

-- | The name of the managed instance group, should conform to RFC1035.
rigmautiInstanceGroupManager :: Lens' RegionInstanceGroupManagersApplyUpdatesToInstances Text
rigmautiInstanceGroupManager
  = lens _rigmautiInstanceGroupManager
      (\ s a -> s{_rigmautiInstanceGroupManager = a})

-- | Multipart request metadata.
rigmautiPayload :: Lens' RegionInstanceGroupManagersApplyUpdatesToInstances RegionInstanceGroupManagersApplyUpdatesRequest
rigmautiPayload
  = lens _rigmautiPayload
      (\ s a -> s{_rigmautiPayload = a})

-- | Name of the region scoping this request, should conform to RFC1035.
rigmautiRegion :: Lens' RegionInstanceGroupManagersApplyUpdatesToInstances Text
rigmautiRegion
  = lens _rigmautiRegion
      (\ s a -> s{_rigmautiRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersApplyUpdatesToInstances
         where
        type Rs
               RegionInstanceGroupManagersApplyUpdatesToInstances
             = Operation
        type Scopes
               RegionInstanceGroupManagersApplyUpdatesToInstances
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersApplyUpdatesToInstances'{..}
          = go _rigmautiProject _rigmautiRegion
              _rigmautiInstanceGroupManager
              (Just AltJSON)
              _rigmautiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersApplyUpdatesToInstancesResource)
                      mempty
