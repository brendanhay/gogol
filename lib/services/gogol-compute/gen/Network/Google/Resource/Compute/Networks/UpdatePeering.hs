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
-- Module      : Network.Google.Resource.Compute.Networks.UpdatePeering
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified network peering with the data included in the
-- request Only the following fields can be modified:
-- NetworkPeering.export_custom_routes, and
-- NetworkPeering.import_custom_routes
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.updatePeering@.
module Network.Google.Resource.Compute.Networks.UpdatePeering
    (
    -- * REST Resource
      NetworksUpdatePeeringResource

    -- * Creating a Request
    , networksUpdatePeering
    , NetworksUpdatePeering

    -- * Request Lenses
    , nupRequestId
    , nupProject
    , nupNetwork
    , nupPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networks.updatePeering@ method which the
-- 'NetworksUpdatePeering' request conforms to.
type NetworksUpdatePeeringResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   "updatePeering" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] NetworksUpdatePeeringRequest :>
                           Patch '[JSON] Operation

-- | Updates the specified network peering with the data included in the
-- request Only the following fields can be modified:
-- NetworkPeering.export_custom_routes, and
-- NetworkPeering.import_custom_routes
--
-- /See:/ 'networksUpdatePeering' smart constructor.
data NetworksUpdatePeering =
  NetworksUpdatePeering'
    { _nupRequestId :: !(Maybe Text)
    , _nupProject :: !Text
    , _nupNetwork :: !Text
    , _nupPayload :: !NetworksUpdatePeeringRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworksUpdatePeering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nupRequestId'
--
-- * 'nupProject'
--
-- * 'nupNetwork'
--
-- * 'nupPayload'
networksUpdatePeering
    :: Text -- ^ 'nupProject'
    -> Text -- ^ 'nupNetwork'
    -> NetworksUpdatePeeringRequest -- ^ 'nupPayload'
    -> NetworksUpdatePeering
networksUpdatePeering pNupProject_ pNupNetwork_ pNupPayload_ =
  NetworksUpdatePeering'
    { _nupRequestId = Nothing
    , _nupProject = pNupProject_
    , _nupNetwork = pNupNetwork_
    , _nupPayload = pNupPayload_
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
nupRequestId :: Lens' NetworksUpdatePeering (Maybe Text)
nupRequestId
  = lens _nupRequestId (\ s a -> s{_nupRequestId = a})

-- | Project ID for this request.
nupProject :: Lens' NetworksUpdatePeering Text
nupProject
  = lens _nupProject (\ s a -> s{_nupProject = a})

-- | Name of the network resource which the updated peering is belonging to.
nupNetwork :: Lens' NetworksUpdatePeering Text
nupNetwork
  = lens _nupNetwork (\ s a -> s{_nupNetwork = a})

-- | Multipart request metadata.
nupPayload :: Lens' NetworksUpdatePeering NetworksUpdatePeeringRequest
nupPayload
  = lens _nupPayload (\ s a -> s{_nupPayload = a})

instance GoogleRequest NetworksUpdatePeering where
        type Rs NetworksUpdatePeering = Operation
        type Scopes NetworksUpdatePeering =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NetworksUpdatePeering'{..}
          = go _nupProject _nupNetwork _nupRequestId
              (Just AltJSON)
              _nupPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworksUpdatePeeringResource)
                      mempty
