{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.VPNTunnels.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified VpnTunnel resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeVPNTunnelsGet@.
module Compute.VPNTunnels.Get
    (
    -- * REST Resource
      VpnTunnelsGetAPI

    -- * Creating a Request
    , vPNTunnelsGet
    , VPNTunnelsGet

    -- * Request Lenses
    , vtgQuotaUser
    , vtgPrettyPrint
    , vtgProject
    , vtgUserIp
    , vtgKey
    , vtgVpnTunnel
    , vtgRegion
    , vtgOauthToken
    , vtgFields
    , vtgAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsGet@ which the
-- 'VPNTunnelsGet' request conforms to.
type VpnTunnelsGetAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :>
             Capture "vpnTunnel" Text :> Get '[JSON] VPNTunnel

-- | Returns the specified VpnTunnel resource.
--
-- /See:/ 'vPNTunnelsGet' smart constructor.
data VPNTunnelsGet = VPNTunnelsGet
    { _vtgQuotaUser   :: !(Maybe Text)
    , _vtgPrettyPrint :: !Bool
    , _vtgProject     :: !Text
    , _vtgUserIp      :: !(Maybe Text)
    , _vtgKey         :: !(Maybe Text)
    , _vtgVpnTunnel   :: !Text
    , _vtgRegion      :: !Text
    , _vtgOauthToken  :: !(Maybe Text)
    , _vtgFields      :: !(Maybe Text)
    , _vtgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtgQuotaUser'
--
-- * 'vtgPrettyPrint'
--
-- * 'vtgProject'
--
-- * 'vtgUserIp'
--
-- * 'vtgKey'
--
-- * 'vtgVpnTunnel'
--
-- * 'vtgRegion'
--
-- * 'vtgOauthToken'
--
-- * 'vtgFields'
--
-- * 'vtgAlt'
vPNTunnelsGet
    :: Text -- ^ 'project'
    -> Text -- ^ 'vpnTunnel'
    -> Text -- ^ 'region'
    -> VPNTunnelsGet
vPNTunnelsGet pVtgProject_ pVtgVpnTunnel_ pVtgRegion_ =
    VPNTunnelsGet
    { _vtgQuotaUser = Nothing
    , _vtgPrettyPrint = True
    , _vtgProject = pVtgProject_
    , _vtgUserIp = Nothing
    , _vtgKey = Nothing
    , _vtgVpnTunnel = pVtgVpnTunnel_
    , _vtgRegion = pVtgRegion_
    , _vtgOauthToken = Nothing
    , _vtgFields = Nothing
    , _vtgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vtgQuotaUser :: Lens' VPNTunnelsGet' (Maybe Text)
vtgQuotaUser
  = lens _vtgQuotaUser (\ s a -> s{_vtgQuotaUser = a})

-- | Returns response with indentations and line breaks.
vtgPrettyPrint :: Lens' VPNTunnelsGet' Bool
vtgPrettyPrint
  = lens _vtgPrettyPrint
      (\ s a -> s{_vtgPrettyPrint = a})

-- | Project ID for this request.
vtgProject :: Lens' VPNTunnelsGet' Text
vtgProject
  = lens _vtgProject (\ s a -> s{_vtgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vtgUserIp :: Lens' VPNTunnelsGet' (Maybe Text)
vtgUserIp
  = lens _vtgUserIp (\ s a -> s{_vtgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vtgKey :: Lens' VPNTunnelsGet' (Maybe Text)
vtgKey = lens _vtgKey (\ s a -> s{_vtgKey = a})

-- | Name of the VpnTunnel resource to return.
vtgVpnTunnel :: Lens' VPNTunnelsGet' Text
vtgVpnTunnel
  = lens _vtgVpnTunnel (\ s a -> s{_vtgVpnTunnel = a})

-- | The name of the region for this request.
vtgRegion :: Lens' VPNTunnelsGet' Text
vtgRegion
  = lens _vtgRegion (\ s a -> s{_vtgRegion = a})

-- | OAuth 2.0 token for the current user.
vtgOauthToken :: Lens' VPNTunnelsGet' (Maybe Text)
vtgOauthToken
  = lens _vtgOauthToken
      (\ s a -> s{_vtgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vtgFields :: Lens' VPNTunnelsGet' (Maybe Text)
vtgFields
  = lens _vtgFields (\ s a -> s{_vtgFields = a})

-- | Data format for the response.
vtgAlt :: Lens' VPNTunnelsGet' Text
vtgAlt = lens _vtgAlt (\ s a -> s{_vtgAlt = a})

instance GoogleRequest VPNTunnelsGet' where
        type Rs VPNTunnelsGet' = VPNTunnel
        request = requestWithRoute defReq computeURL
        requestWithRoute r u VPNTunnelsGet{..}
          = go _vtgQuotaUser _vtgPrettyPrint _vtgProject
              _vtgUserIp
              _vtgKey
              _vtgVpnTunnel
              _vtgRegion
              _vtgOauthToken
              _vtgFields
              _vtgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy VpnTunnelsGetAPI) r
                      u
