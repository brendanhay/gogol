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
    , vtiQuotaUser
    , vtiPrettyPrint
    , vtiProject
    , vtiUserIP
    , vtiPayload
    , vtiKey
    , vtiRegion
    , vtiOAuthToken
    , vtiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsInsert@ which the
-- 'VPNTunnelsInsert'' request conforms to.
type VPNTunnelsInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] VPNTunnel :> Post '[JSON] Operation

-- | Creates a VpnTunnel resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ 'vpnTunnelsInsert'' smart constructor.
data VPNTunnelsInsert' = VPNTunnelsInsert'
    { _vtiQuotaUser   :: !(Maybe Text)
    , _vtiPrettyPrint :: !Bool
    , _vtiProject     :: !Text
    , _vtiUserIP      :: !(Maybe Text)
    , _vtiPayload     :: !VPNTunnel
    , _vtiKey         :: !(Maybe AuthKey)
    , _vtiRegion      :: !Text
    , _vtiOAuthToken  :: !(Maybe OAuthToken)
    , _vtiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtiQuotaUser'
--
-- * 'vtiPrettyPrint'
--
-- * 'vtiProject'
--
-- * 'vtiUserIP'
--
-- * 'vtiPayload'
--
-- * 'vtiKey'
--
-- * 'vtiRegion'
--
-- * 'vtiOAuthToken'
--
-- * 'vtiFields'
vpnTunnelsInsert'
    :: Text -- ^ 'project'
    -> VPNTunnel -- ^ 'payload'
    -> Text -- ^ 'region'
    -> VPNTunnelsInsert'
vpnTunnelsInsert' pVtiProject_ pVtiPayload_ pVtiRegion_ =
    VPNTunnelsInsert'
    { _vtiQuotaUser = Nothing
    , _vtiPrettyPrint = True
    , _vtiProject = pVtiProject_
    , _vtiUserIP = Nothing
    , _vtiPayload = pVtiPayload_
    , _vtiKey = Nothing
    , _vtiRegion = pVtiRegion_
    , _vtiOAuthToken = Nothing
    , _vtiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vtiQuotaUser :: Lens' VPNTunnelsInsert' (Maybe Text)
vtiQuotaUser
  = lens _vtiQuotaUser (\ s a -> s{_vtiQuotaUser = a})

-- | Returns response with indentations and line breaks.
vtiPrettyPrint :: Lens' VPNTunnelsInsert' Bool
vtiPrettyPrint
  = lens _vtiPrettyPrint
      (\ s a -> s{_vtiPrettyPrint = a})

-- | Project ID for this request.
vtiProject :: Lens' VPNTunnelsInsert' Text
vtiProject
  = lens _vtiProject (\ s a -> s{_vtiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vtiUserIP :: Lens' VPNTunnelsInsert' (Maybe Text)
vtiUserIP
  = lens _vtiUserIP (\ s a -> s{_vtiUserIP = a})

-- | Multipart request metadata.
vtiPayload :: Lens' VPNTunnelsInsert' VPNTunnel
vtiPayload
  = lens _vtiPayload (\ s a -> s{_vtiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vtiKey :: Lens' VPNTunnelsInsert' (Maybe AuthKey)
vtiKey = lens _vtiKey (\ s a -> s{_vtiKey = a})

-- | The name of the region for this request.
vtiRegion :: Lens' VPNTunnelsInsert' Text
vtiRegion
  = lens _vtiRegion (\ s a -> s{_vtiRegion = a})

-- | OAuth 2.0 token for the current user.
vtiOAuthToken :: Lens' VPNTunnelsInsert' (Maybe OAuthToken)
vtiOAuthToken
  = lens _vtiOAuthToken
      (\ s a -> s{_vtiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vtiFields :: Lens' VPNTunnelsInsert' (Maybe Text)
vtiFields
  = lens _vtiFields (\ s a -> s{_vtiFields = a})

instance GoogleAuth VPNTunnelsInsert' where
        _AuthKey = vtiKey . _Just
        _AuthToken = vtiOAuthToken . _Just

instance GoogleRequest VPNTunnelsInsert' where
        type Rs VPNTunnelsInsert' = Operation
        request = requestWith computeRequest
        requestWith rq VPNTunnelsInsert'{..}
          = go _vtiProject _vtiRegion _vtiQuotaUser
              (Just _vtiPrettyPrint)
              _vtiUserIP
              _vtiFields
              _vtiKey
              _vtiOAuthToken
              (Just AltJSON)
              _vtiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy VPNTunnelsInsertResource)
                      rq
