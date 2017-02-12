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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.Resize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the intended size for the managed instance group. If you
-- increase the size, the group schedules actions to create new instances
-- using the current instance template. If you decrease the size, the group
-- schedules delete actions on one or more instances. The resize operation
-- is marked DONE when the resize actions are scheduled even if the group
-- has not yet added or deleted any instances. You must separately verify
-- the status of the creating or deleting actions with the
-- listmanagedinstances method.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.resize@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.Resize
    (
    -- * REST Resource
      RegionInstanceGroupManagersResizeResource

    -- * Creating a Request
    , regionInstanceGroupManagersResize
    , RegionInstanceGroupManagersResize

    -- * Request Lenses
    , rigmrProject
    , rigmrSize
    , rigmrInstanceGroupManager
    , rigmrRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.resize@ method which the
-- 'RegionInstanceGroupManagersResize' request conforms to.
type RegionInstanceGroupManagersResizeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "resize" :>
                       QueryParam "size" (Textual Int32) :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Changes the intended size for the managed instance group. If you
-- increase the size, the group schedules actions to create new instances
-- using the current instance template. If you decrease the size, the group
-- schedules delete actions on one or more instances. The resize operation
-- is marked DONE when the resize actions are scheduled even if the group
-- has not yet added or deleted any instances. You must separately verify
-- the status of the creating or deleting actions with the
-- listmanagedinstances method.
--
-- /See:/ 'regionInstanceGroupManagersResize' smart constructor.
data RegionInstanceGroupManagersResize = RegionInstanceGroupManagersResize'
    { _rigmrProject              :: !Text
    , _rigmrSize                 :: !(Textual Int32)
    , _rigmrInstanceGroupManager :: !Text
    , _rigmrRegion               :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupManagersResize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmrProject'
--
-- * 'rigmrSize'
--
-- * 'rigmrInstanceGroupManager'
--
-- * 'rigmrRegion'
regionInstanceGroupManagersResize
    :: Text -- ^ 'rigmrProject'
    -> Int32 -- ^ 'rigmrSize'
    -> Text -- ^ 'rigmrInstanceGroupManager'
    -> Text -- ^ 'rigmrRegion'
    -> RegionInstanceGroupManagersResize
regionInstanceGroupManagersResize pRigmrProject_ pRigmrSize_ pRigmrInstanceGroupManager_ pRigmrRegion_ =
    RegionInstanceGroupManagersResize'
    { _rigmrProject = pRigmrProject_
    , _rigmrSize = _Coerce # pRigmrSize_
    , _rigmrInstanceGroupManager = pRigmrInstanceGroupManager_
    , _rigmrRegion = pRigmrRegion_
    }

-- | Project ID for this request.
rigmrProject :: Lens' RegionInstanceGroupManagersResize Text
rigmrProject
  = lens _rigmrProject (\ s a -> s{_rigmrProject = a})

-- | Number of instances that should exist in this instance group manager.
rigmrSize :: Lens' RegionInstanceGroupManagersResize Int32
rigmrSize
  = lens _rigmrSize (\ s a -> s{_rigmrSize = a}) .
      _Coerce

-- | Name of the managed instance group.
rigmrInstanceGroupManager :: Lens' RegionInstanceGroupManagersResize Text
rigmrInstanceGroupManager
  = lens _rigmrInstanceGroupManager
      (\ s a -> s{_rigmrInstanceGroupManager = a})

-- | Name of the region scoping this request.
rigmrRegion :: Lens' RegionInstanceGroupManagersResize Text
rigmrRegion
  = lens _rigmrRegion (\ s a -> s{_rigmrRegion = a})

instance GoogleRequest
         RegionInstanceGroupManagersResize where
        type Rs RegionInstanceGroupManagersResize = Operation
        type Scopes RegionInstanceGroupManagersResize =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionInstanceGroupManagersResize'{..}
          = go _rigmrProject _rigmrRegion
              _rigmrInstanceGroupManager
              (Just _rigmrSize)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionInstanceGroupManagersResizeResource)
                      mempty
