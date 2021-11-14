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
-- Module      : Network.Google.Resource.Compute.VPNGateways.SetLabels
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on a VpnGateway. To learn more about labels, read the
-- Labeling Resources documentation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnGateways.setLabels@.
module Network.Google.Resource.Compute.VPNGateways.SetLabels
    (
    -- * REST Resource
      VPNGatewaysSetLabelsResource

    -- * Creating a Request
    , vpnGatewaysSetLabels
    , VPNGatewaysSetLabels

    -- * Request Lenses
    , vgslRequestId
    , vgslProject
    , vgslPayload
    , vgslResource
    , vgslRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnGateways.setLabels@ method which the
-- 'VPNGatewaysSetLabels' request conforms to.
type VPNGatewaysSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnGateways" :>
                   Capture "resource" Text :>
                     "setLabels" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RegionSetLabelsRequest :>
                             Post '[JSON] Operation

-- | Sets the labels on a VpnGateway. To learn more about labels, read the
-- Labeling Resources documentation.
--
-- /See:/ 'vpnGatewaysSetLabels' smart constructor.
data VPNGatewaysSetLabels =
  VPNGatewaysSetLabels'
    { _vgslRequestId :: !(Maybe Text)
    , _vgslProject :: !Text
    , _vgslPayload :: !RegionSetLabelsRequest
    , _vgslResource :: !Text
    , _vgslRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNGatewaysSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgslRequestId'
--
-- * 'vgslProject'
--
-- * 'vgslPayload'
--
-- * 'vgslResource'
--
-- * 'vgslRegion'
vpnGatewaysSetLabels
    :: Text -- ^ 'vgslProject'
    -> RegionSetLabelsRequest -- ^ 'vgslPayload'
    -> Text -- ^ 'vgslResource'
    -> Text -- ^ 'vgslRegion'
    -> VPNGatewaysSetLabels
vpnGatewaysSetLabels pVgslProject_ pVgslPayload_ pVgslResource_ pVgslRegion_ =
  VPNGatewaysSetLabels'
    { _vgslRequestId = Nothing
    , _vgslProject = pVgslProject_
    , _vgslPayload = pVgslPayload_
    , _vgslResource = pVgslResource_
    , _vgslRegion = pVgslRegion_
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
vgslRequestId :: Lens' VPNGatewaysSetLabels (Maybe Text)
vgslRequestId
  = lens _vgslRequestId
      (\ s a -> s{_vgslRequestId = a})

-- | Project ID for this request.
vgslProject :: Lens' VPNGatewaysSetLabels Text
vgslProject
  = lens _vgslProject (\ s a -> s{_vgslProject = a})

-- | Multipart request metadata.
vgslPayload :: Lens' VPNGatewaysSetLabels RegionSetLabelsRequest
vgslPayload
  = lens _vgslPayload (\ s a -> s{_vgslPayload = a})

-- | Name or id of the resource for this request.
vgslResource :: Lens' VPNGatewaysSetLabels Text
vgslResource
  = lens _vgslResource (\ s a -> s{_vgslResource = a})

-- | The region for this request.
vgslRegion :: Lens' VPNGatewaysSetLabels Text
vgslRegion
  = lens _vgslRegion (\ s a -> s{_vgslRegion = a})

instance GoogleRequest VPNGatewaysSetLabels where
        type Rs VPNGatewaysSetLabels = Operation
        type Scopes VPNGatewaysSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient VPNGatewaysSetLabels'{..}
          = go _vgslProject _vgslRegion _vgslResource
              _vgslRequestId
              (Just AltJSON)
              _vgslPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNGatewaysSetLabelsResource)
                      mempty
