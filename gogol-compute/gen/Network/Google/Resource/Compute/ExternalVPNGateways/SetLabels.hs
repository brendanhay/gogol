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
-- Module      : Network.Google.Resource.Compute.ExternalVPNGateways.SetLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on an ExternalVpnGateway. To learn more about labels,
-- read the Labeling Resources documentation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.externalVpnGateways.setLabels@.
module Network.Google.Resource.Compute.ExternalVPNGateways.SetLabels
    (
    -- * REST Resource
      ExternalVPNGatewaysSetLabelsResource

    -- * Creating a Request
    , externalVPNGatewaysSetLabels
    , ExternalVPNGatewaysSetLabels

    -- * Request Lenses
    , evgslProject
    , evgslPayload
    , evgslResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.externalVpnGateways.setLabels@ method which the
-- 'ExternalVPNGatewaysSetLabels' request conforms to.
type ExternalVPNGatewaysSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "externalVpnGateways" :>
                 Capture "resource" Text :>
                   "setLabels" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GlobalSetLabelsRequest :>
                         Post '[JSON] Operation

-- | Sets the labels on an ExternalVpnGateway. To learn more about labels,
-- read the Labeling Resources documentation.
--
-- /See:/ 'externalVPNGatewaysSetLabels' smart constructor.
data ExternalVPNGatewaysSetLabels =
  ExternalVPNGatewaysSetLabels'
    { _evgslProject :: !Text
    , _evgslPayload :: !GlobalSetLabelsRequest
    , _evgslResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExternalVPNGatewaysSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evgslProject'
--
-- * 'evgslPayload'
--
-- * 'evgslResource'
externalVPNGatewaysSetLabels
    :: Text -- ^ 'evgslProject'
    -> GlobalSetLabelsRequest -- ^ 'evgslPayload'
    -> Text -- ^ 'evgslResource'
    -> ExternalVPNGatewaysSetLabels
externalVPNGatewaysSetLabels pEvgslProject_ pEvgslPayload_ pEvgslResource_ =
  ExternalVPNGatewaysSetLabels'
    { _evgslProject = pEvgslProject_
    , _evgslPayload = pEvgslPayload_
    , _evgslResource = pEvgslResource_
    }


-- | Project ID for this request.
evgslProject :: Lens' ExternalVPNGatewaysSetLabels Text
evgslProject
  = lens _evgslProject (\ s a -> s{_evgslProject = a})

-- | Multipart request metadata.
evgslPayload :: Lens' ExternalVPNGatewaysSetLabels GlobalSetLabelsRequest
evgslPayload
  = lens _evgslPayload (\ s a -> s{_evgslPayload = a})

-- | Name or id of the resource for this request.
evgslResource :: Lens' ExternalVPNGatewaysSetLabels Text
evgslResource
  = lens _evgslResource
      (\ s a -> s{_evgslResource = a})

instance GoogleRequest ExternalVPNGatewaysSetLabels
         where
        type Rs ExternalVPNGatewaysSetLabels = Operation
        type Scopes ExternalVPNGatewaysSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ExternalVPNGatewaysSetLabels'{..}
          = go _evgslProject _evgslResource (Just AltJSON)
              _evgslPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ExternalVPNGatewaysSetLabelsResource)
                      mempty
