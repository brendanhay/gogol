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
-- Module      : Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network endpoint group. Gets a list of available
-- network endpoint groups by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionNetworkEndpointGroups.get@.
module Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Get
    (
    -- * REST Resource
      RegionNetworkEndpointGroupsGetResource

    -- * Creating a Request
    , regionNetworkEndpointGroupsGet
    , RegionNetworkEndpointGroupsGet

    -- * Request Lenses
    , rneggProject
    , rneggNetworkEndpointGroup
    , rneggRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionNetworkEndpointGroups.get@ method which the
-- 'RegionNetworkEndpointGroupsGet' request conforms to.
type RegionNetworkEndpointGroupsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "networkEndpointGroups" :>
                   Capture "networkEndpointGroup" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] NetworkEndpointGroup

-- | Returns the specified network endpoint group. Gets a list of available
-- network endpoint groups by making a list() request.
--
-- /See:/ 'regionNetworkEndpointGroupsGet' smart constructor.
data RegionNetworkEndpointGroupsGet =
  RegionNetworkEndpointGroupsGet'
    { _rneggProject :: !Text
    , _rneggNetworkEndpointGroup :: !Text
    , _rneggRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionNetworkEndpointGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rneggProject'
--
-- * 'rneggNetworkEndpointGroup'
--
-- * 'rneggRegion'
regionNetworkEndpointGroupsGet
    :: Text -- ^ 'rneggProject'
    -> Text -- ^ 'rneggNetworkEndpointGroup'
    -> Text -- ^ 'rneggRegion'
    -> RegionNetworkEndpointGroupsGet
regionNetworkEndpointGroupsGet pRneggProject_ pRneggNetworkEndpointGroup_ pRneggRegion_ =
  RegionNetworkEndpointGroupsGet'
    { _rneggProject = pRneggProject_
    , _rneggNetworkEndpointGroup = pRneggNetworkEndpointGroup_
    , _rneggRegion = pRneggRegion_
    }


-- | Project ID for this request.
rneggProject :: Lens' RegionNetworkEndpointGroupsGet Text
rneggProject
  = lens _rneggProject (\ s a -> s{_rneggProject = a})

-- | The name of the network endpoint group. It should comply with RFC1035.
rneggNetworkEndpointGroup :: Lens' RegionNetworkEndpointGroupsGet Text
rneggNetworkEndpointGroup
  = lens _rneggNetworkEndpointGroup
      (\ s a -> s{_rneggNetworkEndpointGroup = a})

-- | The name of the region where the network endpoint group is located. It
-- should comply with RFC1035.
rneggRegion :: Lens' RegionNetworkEndpointGroupsGet Text
rneggRegion
  = lens _rneggRegion (\ s a -> s{_rneggRegion = a})

instance GoogleRequest RegionNetworkEndpointGroupsGet
         where
        type Rs RegionNetworkEndpointGroupsGet =
             NetworkEndpointGroup
        type Scopes RegionNetworkEndpointGroupsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionNetworkEndpointGroupsGet'{..}
          = go _rneggProject _rneggRegion
              _rneggNetworkEndpointGroup
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionNetworkEndpointGroupsGetResource)
                      mempty
