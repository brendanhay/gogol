{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Compute.VPNTunnels.Insert
    (
    -- * REST Resource
      VpnTunnelsInsertAPI

    -- * Creating a Request
    , vPNTunnelsInsert
    , VPNTunnelsInsert

    -- * Request Lenses
    , vtiQuotaUser
    , vtiPrettyPrint
    , vtiProject
    , vtiUserIp
    , vtiKey
    , vtiRegion
    , vtiOauthToken
    , vtiFields
    , vtiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsInsert@ which the
-- 'VPNTunnelsInsert' request conforms to.
type VpnTunnelsInsertAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :> Post '[JSON] Operation

-- | Creates a VpnTunnel resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ 'vPNTunnelsInsert' smart constructor.
data VPNTunnelsInsert = VPNTunnelsInsert
    { _vtiQuotaUser   :: !(Maybe Text)
    , _vtiPrettyPrint :: !Bool
    , _vtiProject     :: !Text
    , _vtiUserIp      :: !(Maybe Text)
    , _vtiKey         :: !(Maybe Text)
    , _vtiRegion      :: !Text
    , _vtiOauthToken  :: !(Maybe Text)
    , _vtiFields      :: !(Maybe Text)
    , _vtiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'vtiUserIp'
--
-- * 'vtiKey'
--
-- * 'vtiRegion'
--
-- * 'vtiOauthToken'
--
-- * 'vtiFields'
--
-- * 'vtiAlt'
vPNTunnelsInsert
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> VPNTunnelsInsert
vPNTunnelsInsert pVtiProject_ pVtiRegion_ =
    VPNTunnelsInsert
    { _vtiQuotaUser = Nothing
    , _vtiPrettyPrint = True
    , _vtiProject = pVtiProject_
    , _vtiUserIp = Nothing
    , _vtiKey = Nothing
    , _vtiRegion = pVtiRegion_
    , _vtiOauthToken = Nothing
    , _vtiFields = Nothing
    , _vtiAlt = "json"
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
vtiUserIp :: Lens' VPNTunnelsInsert' (Maybe Text)
vtiUserIp
  = lens _vtiUserIp (\ s a -> s{_vtiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vtiKey :: Lens' VPNTunnelsInsert' (Maybe Text)
vtiKey = lens _vtiKey (\ s a -> s{_vtiKey = a})

-- | The name of the region for this request.
vtiRegion :: Lens' VPNTunnelsInsert' Text
vtiRegion
  = lens _vtiRegion (\ s a -> s{_vtiRegion = a})

-- | OAuth 2.0 token for the current user.
vtiOauthToken :: Lens' VPNTunnelsInsert' (Maybe Text)
vtiOauthToken
  = lens _vtiOauthToken
      (\ s a -> s{_vtiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vtiFields :: Lens' VPNTunnelsInsert' (Maybe Text)
vtiFields
  = lens _vtiFields (\ s a -> s{_vtiFields = a})

-- | Data format for the response.
vtiAlt :: Lens' VPNTunnelsInsert' Text
vtiAlt = lens _vtiAlt (\ s a -> s{_vtiAlt = a})

instance GoogleRequest VPNTunnelsInsert' where
        type Rs VPNTunnelsInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u VPNTunnelsInsert{..}
          = go _vtiQuotaUser _vtiPrettyPrint _vtiProject
              _vtiUserIp
              _vtiKey
              _vtiRegion
              _vtiOauthToken
              _vtiFields
              _vtiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VpnTunnelsInsertAPI)
                      r
                      u
