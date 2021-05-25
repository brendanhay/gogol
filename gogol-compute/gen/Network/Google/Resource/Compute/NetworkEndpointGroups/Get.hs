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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network endpoint group. Gets a list of available
-- network endpoint groups by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.get@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.Get
    (
    -- * REST Resource
      NetworkEndpointGroupsGetResource

    -- * Creating a Request
    , networkEndpointGroupsGet
    , NetworkEndpointGroupsGet

    -- * Request Lenses
    , neggProject
    , neggZone
    , neggNetworkEndpointGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.get@ method which the
-- 'NetworkEndpointGroupsGet' request conforms to.
type NetworkEndpointGroupsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "networkEndpointGroups" :>
                   Capture "networkEndpointGroup" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] NetworkEndpointGroup

-- | Returns the specified network endpoint group. Gets a list of available
-- network endpoint groups by making a list() request.
--
-- /See:/ 'networkEndpointGroupsGet' smart constructor.
data NetworkEndpointGroupsGet =
  NetworkEndpointGroupsGet'
    { _neggProject :: !Text
    , _neggZone :: !Text
    , _neggNetworkEndpointGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neggProject'
--
-- * 'neggZone'
--
-- * 'neggNetworkEndpointGroup'
networkEndpointGroupsGet
    :: Text -- ^ 'neggProject'
    -> Text -- ^ 'neggZone'
    -> Text -- ^ 'neggNetworkEndpointGroup'
    -> NetworkEndpointGroupsGet
networkEndpointGroupsGet pNeggProject_ pNeggZone_ pNeggNetworkEndpointGroup_ =
  NetworkEndpointGroupsGet'
    { _neggProject = pNeggProject_
    , _neggZone = pNeggZone_
    , _neggNetworkEndpointGroup = pNeggNetworkEndpointGroup_
    }


-- | Project ID for this request.
neggProject :: Lens' NetworkEndpointGroupsGet Text
neggProject
  = lens _neggProject (\ s a -> s{_neggProject = a})

-- | The name of the zone where the network endpoint group is located. It
-- should comply with RFC1035.
neggZone :: Lens' NetworkEndpointGroupsGet Text
neggZone = lens _neggZone (\ s a -> s{_neggZone = a})

-- | The name of the network endpoint group. It should comply with RFC1035.
neggNetworkEndpointGroup :: Lens' NetworkEndpointGroupsGet Text
neggNetworkEndpointGroup
  = lens _neggNetworkEndpointGroup
      (\ s a -> s{_neggNetworkEndpointGroup = a})

instance GoogleRequest NetworkEndpointGroupsGet where
        type Rs NetworkEndpointGroupsGet =
             NetworkEndpointGroup
        type Scopes NetworkEndpointGroupsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NetworkEndpointGroupsGet'{..}
          = go _neggProject _neggZone _neggNetworkEndpointGroup
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworkEndpointGroupsGetResource)
                      mempty
