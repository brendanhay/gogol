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
-- Module      : Network.Google.Resource.Compute.ExternalVPNGateways.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified externalVpnGateway.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.externalVpnGateways.delete@.
module Network.Google.Resource.Compute.ExternalVPNGateways.Delete
    (
    -- * REST Resource
      ExternalVPNGatewaysDeleteResource

    -- * Creating a Request
    , externalVPNGatewaysDelete
    , ExternalVPNGatewaysDelete

    -- * Request Lenses
    , evgdRequestId
    , evgdProject
    , evgdExternalVPNGateway
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.externalVpnGateways.delete@ method which the
-- 'ExternalVPNGatewaysDelete' request conforms to.
type ExternalVPNGatewaysDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "externalVpnGateways" :>
                 Capture "externalVpnGateway" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified externalVpnGateway.
--
-- /See:/ 'externalVPNGatewaysDelete' smart constructor.
data ExternalVPNGatewaysDelete =
  ExternalVPNGatewaysDelete'
    { _evgdRequestId :: !(Maybe Text)
    , _evgdProject :: !Text
    , _evgdExternalVPNGateway :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalVPNGatewaysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evgdRequestId'
--
-- * 'evgdProject'
--
-- * 'evgdExternalVPNGateway'
externalVPNGatewaysDelete
    :: Text -- ^ 'evgdProject'
    -> Text -- ^ 'evgdExternalVPNGateway'
    -> ExternalVPNGatewaysDelete
externalVPNGatewaysDelete pEvgdProject_ pEvgdExternalVPNGateway_ =
  ExternalVPNGatewaysDelete'
    { _evgdRequestId = Nothing
    , _evgdProject = pEvgdProject_
    , _evgdExternalVPNGateway = pEvgdExternalVPNGateway_
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
evgdRequestId :: Lens' ExternalVPNGatewaysDelete (Maybe Text)
evgdRequestId
  = lens _evgdRequestId
      (\ s a -> s{_evgdRequestId = a})

-- | Project ID for this request.
evgdProject :: Lens' ExternalVPNGatewaysDelete Text
evgdProject
  = lens _evgdProject (\ s a -> s{_evgdProject = a})

-- | Name of the externalVpnGateways to delete.
evgdExternalVPNGateway :: Lens' ExternalVPNGatewaysDelete Text
evgdExternalVPNGateway
  = lens _evgdExternalVPNGateway
      (\ s a -> s{_evgdExternalVPNGateway = a})

instance GoogleRequest ExternalVPNGatewaysDelete
         where
        type Rs ExternalVPNGatewaysDelete = Operation
        type Scopes ExternalVPNGatewaysDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ExternalVPNGatewaysDelete'{..}
          = go _evgdProject _evgdExternalVPNGateway
              _evgdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ExternalVPNGatewaysDeleteResource)
                      mempty
