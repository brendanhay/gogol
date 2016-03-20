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
-- Module      : Network.Google.Resource.Compute.Networks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified network.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.delete@.
module Network.Google.Resource.Compute.Networks.Delete
    (
    -- * REST Resource
      NetworksDeleteResource

    -- * Creating a Request
    , networksDelete
    , NetworksDelete

    -- * Request Lenses
    , ndProject
    , ndNetwork
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networks.delete@ method which the
-- 'NetworksDelete' request conforms to.
type NetworksDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified network.
--
-- /See:/ 'networksDelete' smart constructor.
data NetworksDelete = NetworksDelete
    { _ndProject :: !Text
    , _ndNetwork :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ndProject'
--
-- * 'ndNetwork'
networksDelete
    :: Text -- ^ 'ndProject'
    -> Text -- ^ 'ndNetwork'
    -> NetworksDelete
networksDelete pNdProject_ pNdNetwork_ =
    NetworksDelete
    { _ndProject = pNdProject_
    , _ndNetwork = pNdNetwork_
    }

-- | Project ID for this request.
ndProject :: Lens' NetworksDelete Text
ndProject
  = lens _ndProject (\ s a -> s{_ndProject = a})

-- | Name of the network to delete.
ndNetwork :: Lens' NetworksDelete Text
ndNetwork
  = lens _ndNetwork (\ s a -> s{_ndNetwork = a})

instance GoogleRequest NetworksDelete where
        type Rs NetworksDelete = Operation
        requestClient NetworksDelete{..}
          = go _ndProject _ndNetwork (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NetworksDeleteResource)
                      mempty
