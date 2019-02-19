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
-- Module      : Network.Google.Resource.Compute.Networks.AddPeering
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a peering to the specified network.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.addPeering@.
module Network.Google.Resource.Compute.Networks.AddPeering
    (
    -- * REST Resource
      NetworksAddPeeringResource

    -- * Creating a Request
    , networksAddPeering
    , NetworksAddPeering

    -- * Request Lenses
    , napRequestId
    , napProject
    , napNetwork
    , napPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networks.addPeering@ method which the
-- 'NetworksAddPeering' request conforms to.
type NetworksAddPeeringResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   "addPeering" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] NetworksAddPeeringRequest :>
                           Post '[JSON] Operation

-- | Adds a peering to the specified network.
--
-- /See:/ 'networksAddPeering' smart constructor.
data NetworksAddPeering =
  NetworksAddPeering'
    { _napRequestId :: !(Maybe Text)
    , _napProject   :: !Text
    , _napNetwork   :: !Text
    , _napPayload   :: !NetworksAddPeeringRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworksAddPeering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'napRequestId'
--
-- * 'napProject'
--
-- * 'napNetwork'
--
-- * 'napPayload'
networksAddPeering
    :: Text -- ^ 'napProject'
    -> Text -- ^ 'napNetwork'
    -> NetworksAddPeeringRequest -- ^ 'napPayload'
    -> NetworksAddPeering
networksAddPeering pNapProject_ pNapNetwork_ pNapPayload_ =
  NetworksAddPeering'
    { _napRequestId = Nothing
    , _napProject = pNapProject_
    , _napNetwork = pNapNetwork_
    , _napPayload = pNapPayload_
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
napRequestId :: Lens' NetworksAddPeering (Maybe Text)
napRequestId
  = lens _napRequestId (\ s a -> s{_napRequestId = a})

-- | Project ID for this request.
napProject :: Lens' NetworksAddPeering Text
napProject
  = lens _napProject (\ s a -> s{_napProject = a})

-- | Name of the network resource to add peering to.
napNetwork :: Lens' NetworksAddPeering Text
napNetwork
  = lens _napNetwork (\ s a -> s{_napNetwork = a})

-- | Multipart request metadata.
napPayload :: Lens' NetworksAddPeering NetworksAddPeeringRequest
napPayload
  = lens _napPayload (\ s a -> s{_napPayload = a})

instance GoogleRequest NetworksAddPeering where
        type Rs NetworksAddPeering = Operation
        type Scopes NetworksAddPeering =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NetworksAddPeering'{..}
          = go _napProject _napNetwork _napRequestId
              (Just AltJSON)
              _napPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworksAddPeeringResource)
                      mempty
