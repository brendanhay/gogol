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
-- Module      : Network.Google.Resource.Compute.Networks.RemovePeering
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a peering from the specified network.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.removePeering@.
module Network.Google.Resource.Compute.Networks.RemovePeering
    (
    -- * REST Resource
      NetworksRemovePeeringResource

    -- * Creating a Request
    , networksRemovePeering
    , NetworksRemovePeering

    -- * Request Lenses
    , nrpRequestId
    , nrpProject
    , nrpNetwork
    , nrpPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networks.removePeering@ method which the
-- 'NetworksRemovePeering' request conforms to.
type NetworksRemovePeeringResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   "removePeering" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] NetworksRemovePeeringRequest :>
                           Post '[JSON] Operation

-- | Removes a peering from the specified network.
--
-- /See:/ 'networksRemovePeering' smart constructor.
data NetworksRemovePeering =
  NetworksRemovePeering'
    { _nrpRequestId :: !(Maybe Text)
    , _nrpProject   :: !Text
    , _nrpNetwork   :: !Text
    , _nrpPayload   :: !NetworksRemovePeeringRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworksRemovePeering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrpRequestId'
--
-- * 'nrpProject'
--
-- * 'nrpNetwork'
--
-- * 'nrpPayload'
networksRemovePeering
    :: Text -- ^ 'nrpProject'
    -> Text -- ^ 'nrpNetwork'
    -> NetworksRemovePeeringRequest -- ^ 'nrpPayload'
    -> NetworksRemovePeering
networksRemovePeering pNrpProject_ pNrpNetwork_ pNrpPayload_ =
  NetworksRemovePeering'
    { _nrpRequestId = Nothing
    , _nrpProject = pNrpProject_
    , _nrpNetwork = pNrpNetwork_
    , _nrpPayload = pNrpPayload_
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
nrpRequestId :: Lens' NetworksRemovePeering (Maybe Text)
nrpRequestId
  = lens _nrpRequestId (\ s a -> s{_nrpRequestId = a})

-- | Project ID for this request.
nrpProject :: Lens' NetworksRemovePeering Text
nrpProject
  = lens _nrpProject (\ s a -> s{_nrpProject = a})

-- | Name of the network resource to remove peering from.
nrpNetwork :: Lens' NetworksRemovePeering Text
nrpNetwork
  = lens _nrpNetwork (\ s a -> s{_nrpNetwork = a})

-- | Multipart request metadata.
nrpPayload :: Lens' NetworksRemovePeering NetworksRemovePeeringRequest
nrpPayload
  = lens _nrpPayload (\ s a -> s{_nrpPayload = a})

instance GoogleRequest NetworksRemovePeering where
        type Rs NetworksRemovePeering = Operation
        type Scopes NetworksRemovePeering =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NetworksRemovePeering'{..}
          = go _nrpProject _nrpNetwork _nrpRequestId
              (Just AltJSON)
              _nrpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworksRemovePeeringResource)
                      mempty
