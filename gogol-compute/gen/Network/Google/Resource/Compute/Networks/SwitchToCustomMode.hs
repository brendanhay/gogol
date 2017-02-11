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
-- Module      : Network.Google.Resource.Compute.Networks.SwitchToCustomMode
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Switches the network mode from auto subnet mode to custom subnet mode.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.switchToCustomMode@.
module Network.Google.Resource.Compute.Networks.SwitchToCustomMode
    (
    -- * REST Resource
      NetworksSwitchToCustomModeResource

    -- * Creating a Request
    , networksSwitchToCustomMode
    , NetworksSwitchToCustomMode

    -- * Request Lenses
    , nstcmProject
    , nstcmNetwork
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networks.switchToCustomMode@ method which the
-- 'NetworksSwitchToCustomMode' request conforms to.
type NetworksSwitchToCustomModeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   "switchToCustomMode" :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Switches the network mode from auto subnet mode to custom subnet mode.
--
-- /See:/ 'networksSwitchToCustomMode' smart constructor.
data NetworksSwitchToCustomMode = NetworksSwitchToCustomMode'
    { _nstcmProject :: !Text
    , _nstcmNetwork :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksSwitchToCustomMode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nstcmProject'
--
-- * 'nstcmNetwork'
networksSwitchToCustomMode
    :: Text -- ^ 'nstcmProject'
    -> Text -- ^ 'nstcmNetwork'
    -> NetworksSwitchToCustomMode
networksSwitchToCustomMode pNstcmProject_ pNstcmNetwork_ =
    NetworksSwitchToCustomMode'
    { _nstcmProject = pNstcmProject_
    , _nstcmNetwork = pNstcmNetwork_
    }

-- | Project ID for this request.
nstcmProject :: Lens' NetworksSwitchToCustomMode Text
nstcmProject
  = lens _nstcmProject (\ s a -> s{_nstcmProject = a})

-- | Name of the network to be updated.
nstcmNetwork :: Lens' NetworksSwitchToCustomMode Text
nstcmNetwork
  = lens _nstcmNetwork (\ s a -> s{_nstcmNetwork = a})

instance GoogleRequest NetworksSwitchToCustomMode
         where
        type Rs NetworksSwitchToCustomMode = Operation
        type Scopes NetworksSwitchToCustomMode =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NetworksSwitchToCustomMode'{..}
          = go _nstcmProject _nstcmNetwork (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworksSwitchToCustomModeResource)
                      mempty
