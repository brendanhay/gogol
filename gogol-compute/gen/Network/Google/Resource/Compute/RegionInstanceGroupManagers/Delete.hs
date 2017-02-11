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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified managed instance group and all of the instances in
-- that group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.delete@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Delete
    (
    -- * REST Resource
      RegionInstanceGroupManagersDeleteResource

    -- * Creating a Request
    , regionInstanceGroupManagersDelete
    , RegionInstanceGroupManagersDelete

    -- * Request Lenses
    , rigmdProject
    , rigmdInstanceGroupManager
    , rigmdRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.delete@ method which the
-- 'RegionInstanceGroupManagersDelete' request conforms to.
type RegionInstanceGroupManagersDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified managed instance group and all of the instances in
-- that group.
--
-- /See:/ 'regionInstanceGroupManagersDelete' smart constructor.
data RegionInstanceGroupManagersDelete = RegionInstanceGroupManagersDelete'
    { _rigmdProject              :: !Text
    , _rigmdInstanceGroupManager :: !Text
    , _rigmdRegion               :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmdProject'
--
-- * 'rigmdInstanceGroupManager'
--
-- * 'rigmdRegion'
regionInstanceGroupManagersDelete
    :: Text -- ^ 'rigmdProject'
    -> Text -- ^ 'rigmdInstanceGroupManager'
    -> Text -- ^ 'rigmdRegion'
    -> RegionInstanceGroupManagersDelete
regionInstanceGroupManagersDelete pRigmdProject_ pRigmdInstanceGroupManager_ pRigmdRegion_ =
    RegionInstanceGroupManagersDelete'
    { _rigmdProject = pRigmdProject_
    , _rigmdInstanceGroupManager = pRigmdInstanceGroupManager_
    , _rigmdRegion = pRigmdRegion_
    }

-- | Project ID for this request.
rigmdProject :: Lens' RegionInstanceGroupManagersDelete Text
rigmdProject
  = lens _rigmdProject (\ s a -> s{_rigmdProject = a})

-- | Name of the managed instance group to delete.
rigmdInstanceGroupManager :: Lens' RegionInstanceGroupManagersDelete Text
rigmdInstanceGroupManager
  = lens _rigmdInstanceGroupManager
      (\ s a -> s{_rigmdInstanceGroupManager = a})

-- | Name of the region scoping this request.
rigmdRegion :: Lens' RegionInstanceGroupManagersDelete Text
rigmdRegion
  = lens _rigmdRegion (\ s a -> s{_rigmdRegion = a})

instance GoogleRequest
         RegionInstanceGroupManagersDelete where
        type Rs RegionInstanceGroupManagersDelete = Operation
        type Scopes RegionInstanceGroupManagersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionInstanceGroupManagersDelete'{..}
          = go _rigmdProject _rigmdRegion
              _rigmdInstanceGroupManager
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersDeleteResource)
                      mempty
