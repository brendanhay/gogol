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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a VpnTunnel resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnTunnels.insert@.
module Network.Google.Resource.Compute.VPNTunnels.Insert
    (
    -- * REST Resource
      VPNTunnelsInsertResource

    -- * Creating a Request
    , vpnTunnelsInsert
    , VPNTunnelsInsert

    -- * Request Lenses
    , vtiRequestId
    , vtiProject
    , vtiPayload
    , vtiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.vpnTunnels.insert@ method which the
-- 'VPNTunnelsInsert' request conforms to.
type VPNTunnelsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] VPNTunnel :> Post '[JSON] Operation

-- | Creates a VpnTunnel resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ 'vpnTunnelsInsert' smart constructor.
data VPNTunnelsInsert = VPNTunnelsInsert'
    { _vtiRequestId :: !(Maybe Text)
    , _vtiProject   :: !Text
    , _vtiPayload   :: !VPNTunnel
    , _vtiRegion    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtiRequestId'
--
-- * 'vtiProject'
--
-- * 'vtiPayload'
--
-- * 'vtiRegion'
vpnTunnelsInsert
    :: Text -- ^ 'vtiProject'
    -> VPNTunnel -- ^ 'vtiPayload'
    -> Text -- ^ 'vtiRegion'
    -> VPNTunnelsInsert
vpnTunnelsInsert pVtiProject_ pVtiPayload_ pVtiRegion_ =
    VPNTunnelsInsert'
    { _vtiRequestId = Nothing
    , _vtiProject = pVtiProject_
    , _vtiPayload = pVtiPayload_
    , _vtiRegion = pVtiRegion_
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
vtiRequestId :: Lens' VPNTunnelsInsert (Maybe Text)
vtiRequestId
  = lens _vtiRequestId (\ s a -> s{_vtiRequestId = a})

-- | Project ID for this request.
vtiProject :: Lens' VPNTunnelsInsert Text
vtiProject
  = lens _vtiProject (\ s a -> s{_vtiProject = a})

-- | Multipart request metadata.
vtiPayload :: Lens' VPNTunnelsInsert VPNTunnel
vtiPayload
  = lens _vtiPayload (\ s a -> s{_vtiPayload = a})

-- | Name of the region for this request.
vtiRegion :: Lens' VPNTunnelsInsert Text
vtiRegion
  = lens _vtiRegion (\ s a -> s{_vtiRegion = a})

instance GoogleRequest VPNTunnelsInsert where
        type Rs VPNTunnelsInsert = Operation
        type Scopes VPNTunnelsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient VPNTunnelsInsert'{..}
          = go _vtiProject _vtiRegion _vtiRequestId
              (Just AltJSON)
              _vtiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNTunnelsInsertResource)
                      mempty
