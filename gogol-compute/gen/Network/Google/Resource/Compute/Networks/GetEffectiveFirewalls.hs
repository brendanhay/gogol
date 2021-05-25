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
-- Module      : Network.Google.Resource.Compute.Networks.GetEffectiveFirewalls
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the effective firewalls on a given network.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.getEffectiveFirewalls@.
module Network.Google.Resource.Compute.Networks.GetEffectiveFirewalls
    (
    -- * REST Resource
      NetworksGetEffectiveFirewallsResource

    -- * Creating a Request
    , networksGetEffectiveFirewalls
    , NetworksGetEffectiveFirewalls

    -- * Request Lenses
    , ngefProject
    , ngefNetwork
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networks.getEffectiveFirewalls@ method which the
-- 'NetworksGetEffectiveFirewalls' request conforms to.
type NetworksGetEffectiveFirewallsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   "getEffectiveFirewalls" :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] NetworksGetEffectiveFirewallsResponse

-- | Returns the effective firewalls on a given network.
--
-- /See:/ 'networksGetEffectiveFirewalls' smart constructor.
data NetworksGetEffectiveFirewalls =
  NetworksGetEffectiveFirewalls'
    { _ngefProject :: !Text
    , _ngefNetwork :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworksGetEffectiveFirewalls' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngefProject'
--
-- * 'ngefNetwork'
networksGetEffectiveFirewalls
    :: Text -- ^ 'ngefProject'
    -> Text -- ^ 'ngefNetwork'
    -> NetworksGetEffectiveFirewalls
networksGetEffectiveFirewalls pNgefProject_ pNgefNetwork_ =
  NetworksGetEffectiveFirewalls'
    {_ngefProject = pNgefProject_, _ngefNetwork = pNgefNetwork_}


-- | Project ID for this request.
ngefProject :: Lens' NetworksGetEffectiveFirewalls Text
ngefProject
  = lens _ngefProject (\ s a -> s{_ngefProject = a})

-- | Name of the network for this request.
ngefNetwork :: Lens' NetworksGetEffectiveFirewalls Text
ngefNetwork
  = lens _ngefNetwork (\ s a -> s{_ngefNetwork = a})

instance GoogleRequest NetworksGetEffectiveFirewalls
         where
        type Rs NetworksGetEffectiveFirewalls =
             NetworksGetEffectiveFirewallsResponse
        type Scopes NetworksGetEffectiveFirewalls =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NetworksGetEffectiveFirewalls'{..}
          = go _ngefProject _ngefNetwork (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy NetworksGetEffectiveFirewallsResource)
                      mempty
