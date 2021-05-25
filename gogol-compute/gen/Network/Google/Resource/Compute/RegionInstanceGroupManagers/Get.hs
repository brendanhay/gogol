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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all of the details about the specified managed instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.get@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Get
    (
    -- * REST Resource
      RegionInstanceGroupManagersGetResource

    -- * Creating a Request
    , regionInstanceGroupManagersGet
    , RegionInstanceGroupManagersGet

    -- * Request Lenses
    , rigmgProject
    , rigmgInstanceGroupManager
    , rigmgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.get@ method which the
-- 'RegionInstanceGroupManagersGet' request conforms to.
type RegionInstanceGroupManagersGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] InstanceGroupManager

-- | Returns all of the details about the specified managed instance group.
--
-- /See:/ 'regionInstanceGroupManagersGet' smart constructor.
data RegionInstanceGroupManagersGet =
  RegionInstanceGroupManagersGet'
    { _rigmgProject :: !Text
    , _rigmgInstanceGroupManager :: !Text
    , _rigmgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmgProject'
--
-- * 'rigmgInstanceGroupManager'
--
-- * 'rigmgRegion'
regionInstanceGroupManagersGet
    :: Text -- ^ 'rigmgProject'
    -> Text -- ^ 'rigmgInstanceGroupManager'
    -> Text -- ^ 'rigmgRegion'
    -> RegionInstanceGroupManagersGet
regionInstanceGroupManagersGet pRigmgProject_ pRigmgInstanceGroupManager_ pRigmgRegion_ =
  RegionInstanceGroupManagersGet'
    { _rigmgProject = pRigmgProject_
    , _rigmgInstanceGroupManager = pRigmgInstanceGroupManager_
    , _rigmgRegion = pRigmgRegion_
    }


-- | Project ID for this request.
rigmgProject :: Lens' RegionInstanceGroupManagersGet Text
rigmgProject
  = lens _rigmgProject (\ s a -> s{_rigmgProject = a})

-- | Name of the managed instance group to return.
rigmgInstanceGroupManager :: Lens' RegionInstanceGroupManagersGet Text
rigmgInstanceGroupManager
  = lens _rigmgInstanceGroupManager
      (\ s a -> s{_rigmgInstanceGroupManager = a})

-- | Name of the region scoping this request.
rigmgRegion :: Lens' RegionInstanceGroupManagersGet Text
rigmgRegion
  = lens _rigmgRegion (\ s a -> s{_rigmgRegion = a})

instance GoogleRequest RegionInstanceGroupManagersGet
         where
        type Rs RegionInstanceGroupManagersGet =
             InstanceGroupManager
        type Scopes RegionInstanceGroupManagersGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionInstanceGroupManagersGet'{..}
          = go _rigmgProject _rigmgRegion
              _rigmgInstanceGroupManager
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersGetResource)
                      mempty
