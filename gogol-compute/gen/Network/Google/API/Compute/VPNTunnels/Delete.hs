{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.VPNTunnels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified VpnTunnel resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnTunnels.delete@.
module Network.Google.API.Compute.VPNTunnels.Delete
    (
    -- * REST Resource
      VPNTunnelsDeleteAPI

    -- * Creating a Request
    , vPNTunnelsDelete'
    , VPNTunnelsDelete'

    -- * Request Lenses
    , vtdQuotaUser
    , vtdPrettyPrint
    , vtdProject
    , vtdUserIp
    , vtdKey
    , vtdVpnTunnel
    , vtdRegion
    , vtdOauthToken
    , vtdFields
    , vtdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.vpnTunnels.delete which the
-- 'VPNTunnelsDelete'' request conforms to.
type VPNTunnelsDeleteAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :>
             Capture "vpnTunnel" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified VpnTunnel resource.
--
-- /See:/ 'vPNTunnelsDelete'' smart constructor.
data VPNTunnelsDelete' = VPNTunnelsDelete'
    { _vtdQuotaUser   :: !(Maybe Text)
    , _vtdPrettyPrint :: !Bool
    , _vtdProject     :: !Text
    , _vtdUserIp      :: !(Maybe Text)
    , _vtdKey         :: !(Maybe Text)
    , _vtdVpnTunnel   :: !Text
    , _vtdRegion      :: !Text
    , _vtdOauthToken  :: !(Maybe Text)
    , _vtdFields      :: !(Maybe Text)
    , _vtdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtdQuotaUser'
--
-- * 'vtdPrettyPrint'
--
-- * 'vtdProject'
--
-- * 'vtdUserIp'
--
-- * 'vtdKey'
--
-- * 'vtdVpnTunnel'
--
-- * 'vtdRegion'
--
-- * 'vtdOauthToken'
--
-- * 'vtdFields'
--
-- * 'vtdAlt'
vPNTunnelsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'vpnTunnel'
    -> Text -- ^ 'region'
    -> VPNTunnelsDelete'
vPNTunnelsDelete' pVtdProject_ pVtdVpnTunnel_ pVtdRegion_ =
    VPNTunnelsDelete'
    { _vtdQuotaUser = Nothing
    , _vtdPrettyPrint = True
    , _vtdProject = pVtdProject_
    , _vtdUserIp = Nothing
    , _vtdKey = Nothing
    , _vtdVpnTunnel = pVtdVpnTunnel_
    , _vtdRegion = pVtdRegion_
    , _vtdOauthToken = Nothing
    , _vtdFields = Nothing
    , _vtdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vtdQuotaUser :: Lens' VPNTunnelsDelete' (Maybe Text)
vtdQuotaUser
  = lens _vtdQuotaUser (\ s a -> s{_vtdQuotaUser = a})

-- | Returns response with indentations and line breaks.
vtdPrettyPrint :: Lens' VPNTunnelsDelete' Bool
vtdPrettyPrint
  = lens _vtdPrettyPrint
      (\ s a -> s{_vtdPrettyPrint = a})

-- | Project ID for this request.
vtdProject :: Lens' VPNTunnelsDelete' Text
vtdProject
  = lens _vtdProject (\ s a -> s{_vtdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vtdUserIp :: Lens' VPNTunnelsDelete' (Maybe Text)
vtdUserIp
  = lens _vtdUserIp (\ s a -> s{_vtdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vtdKey :: Lens' VPNTunnelsDelete' (Maybe Text)
vtdKey = lens _vtdKey (\ s a -> s{_vtdKey = a})

-- | Name of the VpnTunnel resource to delete.
vtdVpnTunnel :: Lens' VPNTunnelsDelete' Text
vtdVpnTunnel
  = lens _vtdVpnTunnel (\ s a -> s{_vtdVpnTunnel = a})

-- | The name of the region for this request.
vtdRegion :: Lens' VPNTunnelsDelete' Text
vtdRegion
  = lens _vtdRegion (\ s a -> s{_vtdRegion = a})

-- | OAuth 2.0 token for the current user.
vtdOauthToken :: Lens' VPNTunnelsDelete' (Maybe Text)
vtdOauthToken
  = lens _vtdOauthToken
      (\ s a -> s{_vtdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vtdFields :: Lens' VPNTunnelsDelete' (Maybe Text)
vtdFields
  = lens _vtdFields (\ s a -> s{_vtdFields = a})

-- | Data format for the response.
vtdAlt :: Lens' VPNTunnelsDelete' Alt
vtdAlt = lens _vtdAlt (\ s a -> s{_vtdAlt = a})

instance GoogleRequest VPNTunnelsDelete' where
        type Rs VPNTunnelsDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u VPNTunnelsDelete'{..}
          = go _vtdQuotaUser (Just _vtdPrettyPrint) _vtdProject
              _vtdUserIp
              _vtdKey
              _vtdVpnTunnel
              _vtdRegion
              _vtdOauthToken
              _vtdFields
              (Just _vtdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VPNTunnelsDeleteAPI)
                      r
                      u
