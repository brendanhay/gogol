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
-- Module      : Network.Google.Resource.Compute.ExternalVPNGateways.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.externalVpnGateways.testIamPermissions@.
module Network.Google.Resource.Compute.ExternalVPNGateways.TestIAMPermissions
    (
    -- * REST Resource
      ExternalVPNGatewaysTestIAMPermissionsResource

    -- * Creating a Request
    , externalVPNGatewaysTestIAMPermissions
    , ExternalVPNGatewaysTestIAMPermissions

    -- * Request Lenses
    , evgtipProject
    , evgtipPayload
    , evgtipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.externalVpnGateways.testIamPermissions@ method which the
-- 'ExternalVPNGatewaysTestIAMPermissions' request conforms to.
type ExternalVPNGatewaysTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "externalVpnGateways" :>
                 Capture "resource" Text :>
                   "testIamPermissions" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TestPermissionsRequest :>
                         Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'externalVPNGatewaysTestIAMPermissions' smart constructor.
data ExternalVPNGatewaysTestIAMPermissions =
  ExternalVPNGatewaysTestIAMPermissions'
    { _evgtipProject :: !Text
    , _evgtipPayload :: !TestPermissionsRequest
    , _evgtipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalVPNGatewaysTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evgtipProject'
--
-- * 'evgtipPayload'
--
-- * 'evgtipResource'
externalVPNGatewaysTestIAMPermissions
    :: Text -- ^ 'evgtipProject'
    -> TestPermissionsRequest -- ^ 'evgtipPayload'
    -> Text -- ^ 'evgtipResource'
    -> ExternalVPNGatewaysTestIAMPermissions
externalVPNGatewaysTestIAMPermissions pEvgtipProject_ pEvgtipPayload_ pEvgtipResource_ =
  ExternalVPNGatewaysTestIAMPermissions'
    { _evgtipProject = pEvgtipProject_
    , _evgtipPayload = pEvgtipPayload_
    , _evgtipResource = pEvgtipResource_
    }


-- | Project ID for this request.
evgtipProject :: Lens' ExternalVPNGatewaysTestIAMPermissions Text
evgtipProject
  = lens _evgtipProject
      (\ s a -> s{_evgtipProject = a})

-- | Multipart request metadata.
evgtipPayload :: Lens' ExternalVPNGatewaysTestIAMPermissions TestPermissionsRequest
evgtipPayload
  = lens _evgtipPayload
      (\ s a -> s{_evgtipPayload = a})

-- | Name or id of the resource for this request.
evgtipResource :: Lens' ExternalVPNGatewaysTestIAMPermissions Text
evgtipResource
  = lens _evgtipResource
      (\ s a -> s{_evgtipResource = a})

instance GoogleRequest
           ExternalVPNGatewaysTestIAMPermissions
         where
        type Rs ExternalVPNGatewaysTestIAMPermissions =
             TestPermissionsResponse
        type Scopes ExternalVPNGatewaysTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          ExternalVPNGatewaysTestIAMPermissions'{..}
          = go _evgtipProject _evgtipResource (Just AltJSON)
              _evgtipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ExternalVPNGatewaysTestIAMPermissionsResource)
                      mempty
