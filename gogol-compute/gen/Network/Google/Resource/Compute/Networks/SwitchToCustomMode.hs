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
    , nstcmRequestId
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
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Switches the network mode from auto subnet mode to custom subnet mode.
--
-- /See:/ 'networksSwitchToCustomMode' smart constructor.
data NetworksSwitchToCustomMode = NetworksSwitchToCustomMode'
    { _nstcmRequestId :: !(Maybe Text)
    , _nstcmProject   :: !Text
    , _nstcmNetwork   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksSwitchToCustomMode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nstcmRequestId'
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
    { _nstcmRequestId = Nothing
    , _nstcmProject = pNstcmProject_
    , _nstcmNetwork = pNstcmNetwork_
    }

-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
nstcmRequestId :: Lens' NetworksSwitchToCustomMode (Maybe Text)
nstcmRequestId
  = lens _nstcmRequestId
      (\ s a -> s{_nstcmRequestId = a})

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
          = go _nstcmProject _nstcmNetwork _nstcmRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworksSwitchToCustomModeResource)
                      mempty
