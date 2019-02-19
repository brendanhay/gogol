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
-- Module      : Network.Google.Resource.Compute.Networks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network. Gets a list of available networks by
-- making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.get@.
module Network.Google.Resource.Compute.Networks.Get
    (
    -- * REST Resource
      NetworksGetResource

    -- * Creating a Request
    , networksGet
    , NetworksGet

    -- * Request Lenses
    , ngProject
    , ngNetwork
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networks.get@ method which the
-- 'NetworksGet' request conforms to.
type NetworksGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Network

-- | Returns the specified network. Gets a list of available networks by
-- making a list() request.
--
-- /See:/ 'networksGet' smart constructor.
data NetworksGet =
  NetworksGet'
    { _ngProject :: !Text
    , _ngNetwork :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngProject'
--
-- * 'ngNetwork'
networksGet
    :: Text -- ^ 'ngProject'
    -> Text -- ^ 'ngNetwork'
    -> NetworksGet
networksGet pNgProject_ pNgNetwork_ =
  NetworksGet' {_ngProject = pNgProject_, _ngNetwork = pNgNetwork_}

-- | Project ID for this request.
ngProject :: Lens' NetworksGet Text
ngProject
  = lens _ngProject (\ s a -> s{_ngProject = a})

-- | Name of the network to return.
ngNetwork :: Lens' NetworksGet Text
ngNetwork
  = lens _ngNetwork (\ s a -> s{_ngNetwork = a})

instance GoogleRequest NetworksGet where
        type Rs NetworksGet = Network
        type Scopes NetworksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NetworksGet'{..}
          = go _ngProject _ngNetwork (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NetworksGetResource)
                      mempty
