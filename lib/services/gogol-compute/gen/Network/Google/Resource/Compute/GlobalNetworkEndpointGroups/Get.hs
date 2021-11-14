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
-- Module      : Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network endpoint group. Gets a list of available
-- network endpoint groups by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.get@.
module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Get
    (
    -- * REST Resource
      GlobalNetworkEndpointGroupsGetResource

    -- * Creating a Request
    , globalNetworkEndpointGroupsGet
    , GlobalNetworkEndpointGroupsGet

    -- * Request Lenses
    , gneggProject
    , gneggNetworkEndpointGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalNetworkEndpointGroups.get@ method which the
-- 'GlobalNetworkEndpointGroupsGet' request conforms to.
type GlobalNetworkEndpointGroupsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networkEndpointGroups" :>
                 Capture "networkEndpointGroup" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] NetworkEndpointGroup

-- | Returns the specified network endpoint group. Gets a list of available
-- network endpoint groups by making a list() request.
--
-- /See:/ 'globalNetworkEndpointGroupsGet' smart constructor.
data GlobalNetworkEndpointGroupsGet =
  GlobalNetworkEndpointGroupsGet'
    { _gneggProject :: !Text
    , _gneggNetworkEndpointGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalNetworkEndpointGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gneggProject'
--
-- * 'gneggNetworkEndpointGroup'
globalNetworkEndpointGroupsGet
    :: Text -- ^ 'gneggProject'
    -> Text -- ^ 'gneggNetworkEndpointGroup'
    -> GlobalNetworkEndpointGroupsGet
globalNetworkEndpointGroupsGet pGneggProject_ pGneggNetworkEndpointGroup_ =
  GlobalNetworkEndpointGroupsGet'
    { _gneggProject = pGneggProject_
    , _gneggNetworkEndpointGroup = pGneggNetworkEndpointGroup_
    }


-- | Project ID for this request.
gneggProject :: Lens' GlobalNetworkEndpointGroupsGet Text
gneggProject
  = lens _gneggProject (\ s a -> s{_gneggProject = a})

-- | The name of the network endpoint group. It should comply with RFC1035.
gneggNetworkEndpointGroup :: Lens' GlobalNetworkEndpointGroupsGet Text
gneggNetworkEndpointGroup
  = lens _gneggNetworkEndpointGroup
      (\ s a -> s{_gneggNetworkEndpointGroup = a})

instance GoogleRequest GlobalNetworkEndpointGroupsGet
         where
        type Rs GlobalNetworkEndpointGroupsGet =
             NetworkEndpointGroup
        type Scopes GlobalNetworkEndpointGroupsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient GlobalNetworkEndpointGroupsGet'{..}
          = go _gneggProject _gneggNetworkEndpointGroup
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalNetworkEndpointGroupsGetResource)
                      mempty
