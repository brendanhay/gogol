{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.TargetVPNGateways.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified TargetVpnGateway resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetVpnGateways.get@.
module Network.Google.API.Compute.TargetVPNGateways.Get
    (
    -- * REST Resource
      TargetVPNGatewaysGetAPI

    -- * Creating a Request
    , targetVPNGatewaysGet'
    , TargetVPNGatewaysGet'

    -- * Request Lenses
    , tvggQuotaUser
    , tvggPrettyPrint
    , tvggProject
    , tvggUserIp
    , tvggTargetVpnGateway
    , tvggKey
    , tvggRegion
    , tvggOauthToken
    , tvggFields
    , tvggAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.targetVpnGateways.get which the
-- 'TargetVPNGatewaysGet'' request conforms to.
type TargetVPNGatewaysGetAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetVpnGateways" :>
             Capture "targetVpnGateway" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] TargetVpnGateway

-- | Returns the specified TargetVpnGateway resource.
--
-- /See:/ 'targetVPNGatewaysGet'' smart constructor.
data TargetVPNGatewaysGet' = TargetVPNGatewaysGet'
    { _tvggQuotaUser        :: !(Maybe Text)
    , _tvggPrettyPrint      :: !Bool
    , _tvggProject          :: !Text
    , _tvggUserIp           :: !(Maybe Text)
    , _tvggTargetVpnGateway :: !Text
    , _tvggKey              :: !(Maybe Text)
    , _tvggRegion           :: !Text
    , _tvggOauthToken       :: !(Maybe Text)
    , _tvggFields           :: !(Maybe Text)
    , _tvggAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvggQuotaUser'
--
-- * 'tvggPrettyPrint'
--
-- * 'tvggProject'
--
-- * 'tvggUserIp'
--
-- * 'tvggTargetVpnGateway'
--
-- * 'tvggKey'
--
-- * 'tvggRegion'
--
-- * 'tvggOauthToken'
--
-- * 'tvggFields'
--
-- * 'tvggAlt'
targetVPNGatewaysGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetVpnGateway'
    -> Text -- ^ 'region'
    -> TargetVPNGatewaysGet'
targetVPNGatewaysGet' pTvggProject_ pTvggTargetVpnGateway_ pTvggRegion_ =
    TargetVPNGatewaysGet'
    { _tvggQuotaUser = Nothing
    , _tvggPrettyPrint = True
    , _tvggProject = pTvggProject_
    , _tvggUserIp = Nothing
    , _tvggTargetVpnGateway = pTvggTargetVpnGateway_
    , _tvggKey = Nothing
    , _tvggRegion = pTvggRegion_
    , _tvggOauthToken = Nothing
    , _tvggFields = Nothing
    , _tvggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tvggQuotaUser :: Lens' TargetVPNGatewaysGet' (Maybe Text)
tvggQuotaUser
  = lens _tvggQuotaUser
      (\ s a -> s{_tvggQuotaUser = a})

-- | Returns response with indentations and line breaks.
tvggPrettyPrint :: Lens' TargetVPNGatewaysGet' Bool
tvggPrettyPrint
  = lens _tvggPrettyPrint
      (\ s a -> s{_tvggPrettyPrint = a})

-- | Project ID for this request.
tvggProject :: Lens' TargetVPNGatewaysGet' Text
tvggProject
  = lens _tvggProject (\ s a -> s{_tvggProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tvggUserIp :: Lens' TargetVPNGatewaysGet' (Maybe Text)
tvggUserIp
  = lens _tvggUserIp (\ s a -> s{_tvggUserIp = a})

-- | Name of the TargetVpnGateway resource to return.
tvggTargetVpnGateway :: Lens' TargetVPNGatewaysGet' Text
tvggTargetVpnGateway
  = lens _tvggTargetVpnGateway
      (\ s a -> s{_tvggTargetVpnGateway = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tvggKey :: Lens' TargetVPNGatewaysGet' (Maybe Text)
tvggKey = lens _tvggKey (\ s a -> s{_tvggKey = a})

-- | The name of the region for this request.
tvggRegion :: Lens' TargetVPNGatewaysGet' Text
tvggRegion
  = lens _tvggRegion (\ s a -> s{_tvggRegion = a})

-- | OAuth 2.0 token for the current user.
tvggOauthToken :: Lens' TargetVPNGatewaysGet' (Maybe Text)
tvggOauthToken
  = lens _tvggOauthToken
      (\ s a -> s{_tvggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tvggFields :: Lens' TargetVPNGatewaysGet' (Maybe Text)
tvggFields
  = lens _tvggFields (\ s a -> s{_tvggFields = a})

-- | Data format for the response.
tvggAlt :: Lens' TargetVPNGatewaysGet' Alt
tvggAlt = lens _tvggAlt (\ s a -> s{_tvggAlt = a})

instance GoogleRequest TargetVPNGatewaysGet' where
        type Rs TargetVPNGatewaysGet' = TargetVpnGateway
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetVPNGatewaysGet'{..}
          = go _tvggQuotaUser (Just _tvggPrettyPrint)
              _tvggProject
              _tvggUserIp
              _tvggTargetVpnGateway
              _tvggKey
              _tvggRegion
              _tvggOauthToken
              _tvggFields
              (Just _tvggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetVPNGatewaysGetAPI)
                      r
                      u
