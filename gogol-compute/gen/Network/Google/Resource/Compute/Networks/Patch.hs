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
-- Module      : Network.Google.Resource.Compute.Networks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified network with the data included in the request.
-- Only the following fields can be modified: routingConfig.routingMode.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networks.patch@.
module Network.Google.Resource.Compute.Networks.Patch
    (
    -- * REST Resource
      NetworksPatchResource

    -- * Creating a Request
    , networksPatch
    , NetworksPatch

    -- * Request Lenses
    , npRequestId
    , npProject
    , npNetwork
    , npPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networks.patch@ method which the
-- 'NetworksPatch' request conforms to.
type NetworksPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networks" :>
                 Capture "network" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Network :> Patch '[JSON] Operation

-- | Patches the specified network with the data included in the request.
-- Only the following fields can be modified: routingConfig.routingMode.
--
-- /See:/ 'networksPatch' smart constructor.
data NetworksPatch = NetworksPatch'
    { _npRequestId :: !(Maybe Text)
    , _npProject   :: !Text
    , _npNetwork   :: !Text
    , _npPayload   :: !Network
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NetworksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npRequestId'
--
-- * 'npProject'
--
-- * 'npNetwork'
--
-- * 'npPayload'
networksPatch
    :: Text -- ^ 'npProject'
    -> Text -- ^ 'npNetwork'
    -> Network -- ^ 'npPayload'
    -> NetworksPatch
networksPatch pNpProject_ pNpNetwork_ pNpPayload_ =
    NetworksPatch'
    { _npRequestId = Nothing
    , _npProject = pNpProject_
    , _npNetwork = pNpNetwork_
    , _npPayload = pNpPayload_
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
npRequestId :: Lens' NetworksPatch (Maybe Text)
npRequestId
  = lens _npRequestId (\ s a -> s{_npRequestId = a})

-- | Project ID for this request.
npProject :: Lens' NetworksPatch Text
npProject
  = lens _npProject (\ s a -> s{_npProject = a})

-- | Name of the network to update.
npNetwork :: Lens' NetworksPatch Text
npNetwork
  = lens _npNetwork (\ s a -> s{_npNetwork = a})

-- | Multipart request metadata.
npPayload :: Lens' NetworksPatch Network
npPayload
  = lens _npPayload (\ s a -> s{_npPayload = a})

instance GoogleRequest NetworksPatch where
        type Rs NetworksPatch = Operation
        type Scopes NetworksPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NetworksPatch'{..}
          = go _npProject _npNetwork _npRequestId
              (Just AltJSON)
              _npPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy NetworksPatchResource)
                      mempty
