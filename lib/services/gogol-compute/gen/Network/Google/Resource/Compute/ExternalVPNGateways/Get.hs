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
-- Module      : Network.Google.Resource.Compute.ExternalVPNGateways.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified externalVpnGateway. Get a list of available
-- externalVpnGateways by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.externalVpnGateways.get@.
module Network.Google.Resource.Compute.ExternalVPNGateways.Get
    (
    -- * REST Resource
      ExternalVPNGatewaysGetResource

    -- * Creating a Request
    , externalVPNGatewaysGet
    , ExternalVPNGatewaysGet

    -- * Request Lenses
    , evggProject
    , evggExternalVPNGateway
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.externalVpnGateways.get@ method which the
-- 'ExternalVPNGatewaysGet' request conforms to.
type ExternalVPNGatewaysGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "externalVpnGateways" :>
                 Capture "externalVpnGateway" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ExternalVPNGateway

-- | Returns the specified externalVpnGateway. Get a list of available
-- externalVpnGateways by making a list() request.
--
-- /See:/ 'externalVPNGatewaysGet' smart constructor.
data ExternalVPNGatewaysGet =
  ExternalVPNGatewaysGet'
    { _evggProject :: !Text
    , _evggExternalVPNGateway :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalVPNGatewaysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evggProject'
--
-- * 'evggExternalVPNGateway'
externalVPNGatewaysGet
    :: Text -- ^ 'evggProject'
    -> Text -- ^ 'evggExternalVPNGateway'
    -> ExternalVPNGatewaysGet
externalVPNGatewaysGet pEvggProject_ pEvggExternalVPNGateway_ =
  ExternalVPNGatewaysGet'
    { _evggProject = pEvggProject_
    , _evggExternalVPNGateway = pEvggExternalVPNGateway_
    }


-- | Project ID for this request.
evggProject :: Lens' ExternalVPNGatewaysGet Text
evggProject
  = lens _evggProject (\ s a -> s{_evggProject = a})

-- | Name of the externalVpnGateway to return.
evggExternalVPNGateway :: Lens' ExternalVPNGatewaysGet Text
evggExternalVPNGateway
  = lens _evggExternalVPNGateway
      (\ s a -> s{_evggExternalVPNGateway = a})

instance GoogleRequest ExternalVPNGatewaysGet where
        type Rs ExternalVPNGatewaysGet = ExternalVPNGateway
        type Scopes ExternalVPNGatewaysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ExternalVPNGatewaysGet'{..}
          = go _evggProject _evggExternalVPNGateway
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ExternalVPNGatewaysGetResource)
                      mempty
