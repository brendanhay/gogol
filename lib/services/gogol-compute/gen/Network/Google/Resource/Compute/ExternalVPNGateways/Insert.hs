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
-- Module      : Network.Google.Resource.Compute.ExternalVPNGateways.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a ExternalVpnGateway in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.externalVpnGateways.insert@.
module Network.Google.Resource.Compute.ExternalVPNGateways.Insert
    (
    -- * REST Resource
      ExternalVPNGatewaysInsertResource

    -- * Creating a Request
    , externalVPNGatewaysInsert
    , ExternalVPNGatewaysInsert

    -- * Request Lenses
    , evgiRequestId
    , evgiProject
    , evgiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.externalVpnGateways.insert@ method which the
-- 'ExternalVPNGatewaysInsert' request conforms to.
type ExternalVPNGatewaysInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "externalVpnGateways" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ExternalVPNGateway :>
                       Post '[JSON] Operation

-- | Creates a ExternalVpnGateway in the specified project using the data
-- included in the request.
--
-- /See:/ 'externalVPNGatewaysInsert' smart constructor.
data ExternalVPNGatewaysInsert =
  ExternalVPNGatewaysInsert'
    { _evgiRequestId :: !(Maybe Text)
    , _evgiProject :: !Text
    , _evgiPayload :: !ExternalVPNGateway
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalVPNGatewaysInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evgiRequestId'
--
-- * 'evgiProject'
--
-- * 'evgiPayload'
externalVPNGatewaysInsert
    :: Text -- ^ 'evgiProject'
    -> ExternalVPNGateway -- ^ 'evgiPayload'
    -> ExternalVPNGatewaysInsert
externalVPNGatewaysInsert pEvgiProject_ pEvgiPayload_ =
  ExternalVPNGatewaysInsert'
    { _evgiRequestId = Nothing
    , _evgiProject = pEvgiProject_
    , _evgiPayload = pEvgiPayload_
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
evgiRequestId :: Lens' ExternalVPNGatewaysInsert (Maybe Text)
evgiRequestId
  = lens _evgiRequestId
      (\ s a -> s{_evgiRequestId = a})

-- | Project ID for this request.
evgiProject :: Lens' ExternalVPNGatewaysInsert Text
evgiProject
  = lens _evgiProject (\ s a -> s{_evgiProject = a})

-- | Multipart request metadata.
evgiPayload :: Lens' ExternalVPNGatewaysInsert ExternalVPNGateway
evgiPayload
  = lens _evgiPayload (\ s a -> s{_evgiPayload = a})

instance GoogleRequest ExternalVPNGatewaysInsert
         where
        type Rs ExternalVPNGatewaysInsert = Operation
        type Scopes ExternalVPNGatewaysInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ExternalVPNGatewaysInsert'{..}
          = go _evgiProject _evgiRequestId (Just AltJSON)
              _evgiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ExternalVPNGatewaysInsertResource)
                      mempty
