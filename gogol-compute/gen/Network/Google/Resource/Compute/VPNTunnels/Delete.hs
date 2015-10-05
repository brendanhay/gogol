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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified VpnTunnel resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeVPNTunnelsDelete@.
module Network.Google.Resource.Compute.VPNTunnels.Delete
    (
    -- * REST Resource
      VPNTunnelsDeleteResource

    -- * Creating a Request
    , vpnTunnelsDelete'
    , VPNTunnelsDelete'

    -- * Request Lenses
    , vtdQuotaUser
    , vtdPrettyPrint
    , vtdProject
    , vtdUserIP
    , vtdKey
    , vtdVPNTunnel
    , vtdRegion
    , vtdOAuthToken
    , vtdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsDelete@ which the
-- 'VPNTunnelsDelete'' request conforms to.
type VPNTunnelsDeleteResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :>
             Capture "vpnTunnel" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified VpnTunnel resource.
--
-- /See:/ 'vpnTunnelsDelete'' smart constructor.
data VPNTunnelsDelete' = VPNTunnelsDelete'
    { _vtdQuotaUser   :: !(Maybe Text)
    , _vtdPrettyPrint :: !Bool
    , _vtdProject     :: !Text
    , _vtdUserIP      :: !(Maybe Text)
    , _vtdKey         :: !(Maybe AuthKey)
    , _vtdVPNTunnel   :: !Text
    , _vtdRegion      :: !Text
    , _vtdOAuthToken  :: !(Maybe OAuthToken)
    , _vtdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'vtdUserIP'
--
-- * 'vtdKey'
--
-- * 'vtdVPNTunnel'
--
-- * 'vtdRegion'
--
-- * 'vtdOAuthToken'
--
-- * 'vtdFields'
vpnTunnelsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'vpnTunnel'
    -> Text -- ^ 'region'
    -> VPNTunnelsDelete'
vpnTunnelsDelete' pVtdProject_ pVtdVPNTunnel_ pVtdRegion_ =
    VPNTunnelsDelete'
    { _vtdQuotaUser = Nothing
    , _vtdPrettyPrint = True
    , _vtdProject = pVtdProject_
    , _vtdUserIP = Nothing
    , _vtdKey = Nothing
    , _vtdVPNTunnel = pVtdVPNTunnel_
    , _vtdRegion = pVtdRegion_
    , _vtdOAuthToken = Nothing
    , _vtdFields = Nothing
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
vtdUserIP :: Lens' VPNTunnelsDelete' (Maybe Text)
vtdUserIP
  = lens _vtdUserIP (\ s a -> s{_vtdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vtdKey :: Lens' VPNTunnelsDelete' (Maybe AuthKey)
vtdKey = lens _vtdKey (\ s a -> s{_vtdKey = a})

-- | Name of the VpnTunnel resource to delete.
vtdVPNTunnel :: Lens' VPNTunnelsDelete' Text
vtdVPNTunnel
  = lens _vtdVPNTunnel (\ s a -> s{_vtdVPNTunnel = a})

-- | The name of the region for this request.
vtdRegion :: Lens' VPNTunnelsDelete' Text
vtdRegion
  = lens _vtdRegion (\ s a -> s{_vtdRegion = a})

-- | OAuth 2.0 token for the current user.
vtdOAuthToken :: Lens' VPNTunnelsDelete' (Maybe OAuthToken)
vtdOAuthToken
  = lens _vtdOAuthToken
      (\ s a -> s{_vtdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vtdFields :: Lens' VPNTunnelsDelete' (Maybe Text)
vtdFields
  = lens _vtdFields (\ s a -> s{_vtdFields = a})

instance GoogleAuth VPNTunnelsDelete' where
        authKey = vtdKey . _Just
        authToken = vtdOAuthToken . _Just

instance GoogleRequest VPNTunnelsDelete' where
        type Rs VPNTunnelsDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u VPNTunnelsDelete'{..}
          = go _vtdProject _vtdRegion _vtdVPNTunnel
              _vtdQuotaUser
              (Just _vtdPrettyPrint)
              _vtdUserIP
              _vtdFields
              _vtdKey
              _vtdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VPNTunnelsDeleteResource)
                      r
                      u
