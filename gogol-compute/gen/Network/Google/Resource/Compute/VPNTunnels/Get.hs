{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Compute.VPNTunnels.Get
    (
    -- * REST Resource
      VPNTunnelsGetResource

    -- * Creating a Request
    , vpnTunnelsGet'
    , VPNTunnelsGet'

    -- * Request Lenses
    , vtgQuotaUser
    , vtgPrettyPrint
    , vtgProject
    , vtgUserIP
    , vtgKey
    , vtgVPNTunnel
    , vtgRegion
    , vtgOAuthToken
    , vtgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsGet@ which the
-- 'VPNTunnelsGet'' request conforms to.
type VPNTunnelsGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :>
             Capture "vpnTunnel" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] VPNTunnel

-- | Returns the specified VpnTunnel resource.
--
-- /See:/ 'vpnTunnelsGet'' smart constructor.
data VPNTunnelsGet' = VPNTunnelsGet'
    { _vtgQuotaUser   :: !(Maybe Text)
    , _vtgPrettyPrint :: !Bool
    , _vtgProject     :: !Text
    , _vtgUserIP      :: !(Maybe Text)
    , _vtgKey         :: !(Maybe Key)
    , _vtgVPNTunnel   :: !Text
    , _vtgRegion      :: !Text
    , _vtgOAuthToken  :: !(Maybe OAuthToken)
    , _vtgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'vtgUserIP'
--
-- * 'vtgKey'
--
-- * 'vtgVPNTunnel'
--
-- * 'vtgRegion'
--
-- * 'vtgOAuthToken'
--
-- * 'vtgFields'
vpnTunnelsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'vpnTunnel'
    -> Text -- ^ 'region'
    -> VPNTunnelsGet'
vpnTunnelsGet' pVtgProject_ pVtgVPNTunnel_ pVtgRegion_ =
    VPNTunnelsGet'
    { _vtgQuotaUser = Nothing
    , _vtgPrettyPrint = True
    , _vtgProject = pVtgProject_
    , _vtgUserIP = Nothing
    , _vtgKey = Nothing
    , _vtgVPNTunnel = pVtgVPNTunnel_
    , _vtgRegion = pVtgRegion_
    , _vtgOAuthToken = Nothing
    , _vtgFields = Nothing
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
vtgUserIP :: Lens' VPNTunnelsGet' (Maybe Text)
vtgUserIP
  = lens _vtgUserIP (\ s a -> s{_vtgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vtgKey :: Lens' VPNTunnelsGet' (Maybe Key)
vtgKey = lens _vtgKey (\ s a -> s{_vtgKey = a})

-- | Name of the VpnTunnel resource to return.
vtgVPNTunnel :: Lens' VPNTunnelsGet' Text
vtgVPNTunnel
  = lens _vtgVPNTunnel (\ s a -> s{_vtgVPNTunnel = a})

-- | The name of the region for this request.
vtgRegion :: Lens' VPNTunnelsGet' Text
vtgRegion
  = lens _vtgRegion (\ s a -> s{_vtgRegion = a})

-- | OAuth 2.0 token for the current user.
vtgOAuthToken :: Lens' VPNTunnelsGet' (Maybe OAuthToken)
vtgOAuthToken
  = lens _vtgOAuthToken
      (\ s a -> s{_vtgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vtgFields :: Lens' VPNTunnelsGet' (Maybe Text)
vtgFields
  = lens _vtgFields (\ s a -> s{_vtgFields = a})

instance GoogleAuth VPNTunnelsGet' where
        authKey = vtgKey . _Just
        authToken = vtgOAuthToken . _Just

instance GoogleRequest VPNTunnelsGet' where
        type Rs VPNTunnelsGet' = VPNTunnel
        request = requestWithRoute defReq computeURL
        requestWithRoute r u VPNTunnelsGet'{..}
          = go _vtgProject _vtgRegion _vtgVPNTunnel
              _vtgQuotaUser
              (Just _vtgPrettyPrint)
              _vtgUserIP
              _vtgFields
              _vtgKey
              _vtgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VPNTunnelsGetResource)
                      r
                      u
