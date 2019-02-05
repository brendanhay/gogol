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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified instance group resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroups.get@.
module Network.Google.Resource.Compute.RegionInstanceGroups.Get
    (
    -- * REST Resource
      RegionInstanceGroupsGetResource

    -- * Creating a Request
    , regionInstanceGroupsGet
    , RegionInstanceGroupsGet

    -- * Request Lenses
    , riggProject
    , riggRegion
    , riggInstanceGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroups.get@ method which the
-- 'RegionInstanceGroupsGet' request conforms to.
type RegionInstanceGroupsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] InstanceGroup

-- | Returns the specified instance group resource.
--
-- /See:/ 'regionInstanceGroupsGet' smart constructor.
data RegionInstanceGroupsGet = RegionInstanceGroupsGet'
    { _riggProject       :: !Text
    , _riggRegion        :: !Text
    , _riggInstanceGroup :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riggProject'
--
-- * 'riggRegion'
--
-- * 'riggInstanceGroup'
regionInstanceGroupsGet
    :: Text -- ^ 'riggProject'
    -> Text -- ^ 'riggRegion'
    -> Text -- ^ 'riggInstanceGroup'
    -> RegionInstanceGroupsGet
regionInstanceGroupsGet pRiggProject_ pRiggRegion_ pRiggInstanceGroup_ =
    RegionInstanceGroupsGet'
    { _riggProject = pRiggProject_
    , _riggRegion = pRiggRegion_
    , _riggInstanceGroup = pRiggInstanceGroup_
    }

-- | Project ID for this request.
riggProject :: Lens' RegionInstanceGroupsGet Text
riggProject
  = lens _riggProject (\ s a -> s{_riggProject = a})

-- | Name of the region scoping this request.
riggRegion :: Lens' RegionInstanceGroupsGet Text
riggRegion
  = lens _riggRegion (\ s a -> s{_riggRegion = a})

-- | Name of the instance group resource to return.
riggInstanceGroup :: Lens' RegionInstanceGroupsGet Text
riggInstanceGroup
  = lens _riggInstanceGroup
      (\ s a -> s{_riggInstanceGroup = a})

instance GoogleRequest RegionInstanceGroupsGet where
        type Rs RegionInstanceGroupsGet = InstanceGroup
        type Scopes RegionInstanceGroupsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionInstanceGroupsGet'{..}
          = go _riggProject _riggRegion _riggInstanceGroup
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionInstanceGroupsGetResource)
                      mempty
