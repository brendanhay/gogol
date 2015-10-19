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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified network resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeNetworksGet@.
module Network.Google.Resource.Compute.Networks.Get
    (
    -- * REST Resource
      NetworksGetResource

    -- * Creating a Request
    , networksGet'
    , NetworksGet'

    -- * Request Lenses
    , ngProject
    , ngNetwork
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeNetworksGet@ method which the
-- 'NetworksGet'' request conforms to.
type NetworksGetResource =
     Capture "project" Text :>
       "global" :>
         "networks" :>
           Capture "network" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Network

-- | Returns the specified network resource.
--
-- /See:/ 'networksGet'' smart constructor.
data NetworksGet' = NetworksGet'
    { _ngProject :: !Text
    , _ngNetwork :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngProject'
--
-- * 'ngNetwork'
networksGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'network'
    -> NetworksGet'
networksGet' pNgProject_ pNgNetwork_ =
    NetworksGet'
    { _ngProject = pNgProject_
    , _ngNetwork = pNgNetwork_
    }

-- | Project ID for this request.
ngProject :: Lens' NetworksGet' Text
ngProject
  = lens _ngProject (\ s a -> s{_ngProject = a})

-- | Name of the network resource to return.
ngNetwork :: Lens' NetworksGet' Text
ngNetwork
  = lens _ngNetwork (\ s a -> s{_ngNetwork = a})

instance GoogleRequest NetworksGet' where
        type Rs NetworksGet' = Network
        requestClient NetworksGet'{..}
          = go _ngProject _ngNetwork (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NetworksGetResource)
                      mempty
