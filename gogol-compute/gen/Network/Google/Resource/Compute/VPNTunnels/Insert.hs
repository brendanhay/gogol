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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a VpnTunnel resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeVPNTunnelsInsert@.
module Network.Google.Resource.Compute.VPNTunnels.Insert
    (
    -- * REST Resource
      VPNTunnelsInsertResource

    -- * Creating a Request
    , vpnTunnelsInsert'
    , VPNTunnelsInsert'

    -- * Request Lenses
    , vtiProject
    , vtiPayload
    , vtiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsInsert@ method which the
-- 'VPNTunnelsInsert'' request conforms to.
type VPNTunnelsInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] VPNTunnel :> Post '[JSON] Operation

-- | Creates a VpnTunnel resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ 'vpnTunnelsInsert'' smart constructor.
data VPNTunnelsInsert' = VPNTunnelsInsert'
    { _vtiProject :: !Text
    , _vtiPayload :: !VPNTunnel
    , _vtiRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtiProject'
--
-- * 'vtiPayload'
--
-- * 'vtiRegion'
vpnTunnelsInsert'
    :: Text -- ^ 'project'
    -> VPNTunnel -- ^ 'payload'
    -> Text -- ^ 'region'
    -> VPNTunnelsInsert'
vpnTunnelsInsert' pVtiProject_ pVtiPayload_ pVtiRegion_ =
    VPNTunnelsInsert'
    { _vtiProject = pVtiProject_
    , _vtiPayload = pVtiPayload_
    , _vtiRegion = pVtiRegion_
    }

-- | Project ID for this request.
vtiProject :: Lens' VPNTunnelsInsert' Text
vtiProject
  = lens _vtiProject (\ s a -> s{_vtiProject = a})

-- | Multipart request metadata.
vtiPayload :: Lens' VPNTunnelsInsert' VPNTunnel
vtiPayload
  = lens _vtiPayload (\ s a -> s{_vtiPayload = a})

-- | The name of the region for this request.
vtiRegion :: Lens' VPNTunnelsInsert' Text
vtiRegion
  = lens _vtiRegion (\ s a -> s{_vtiRegion = a})

instance GoogleRequest VPNTunnelsInsert' where
        type Rs VPNTunnelsInsert' = Operation
        requestClient VPNTunnelsInsert'{..}
          = go _vtiProject _vtiRegion (Just AltJSON)
              _vtiPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy VPNTunnelsInsertResource)
                      mempty
