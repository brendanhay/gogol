{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified TargetVpnGateway resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetVPNGatewaysGet@.
module Network.Google.Resource.Compute.TargetVPNGateways.Get
    (
    -- * REST Resource
      TargetVPNGatewaysGetResource

    -- * Creating a Request
    , targetVPNGatewaysGet'
    , TargetVPNGatewaysGet'

    -- * Request Lenses
    , tvggQuotaUser
    , tvggPrettyPrint
    , tvggProject
    , tvggUserIP
    , tvggTargetVPNGateway
    , tvggKey
    , tvggRegion
    , tvggOAuthToken
    , tvggFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetVPNGatewaysGet@ which the
-- 'TargetVPNGatewaysGet'' request conforms to.
type TargetVPNGatewaysGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetVpnGateways" :>
             Capture "targetVpnGateway" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] TargetVPNGateway

-- | Returns the specified TargetVpnGateway resource.
--
-- /See:/ 'targetVPNGatewaysGet'' smart constructor.
data TargetVPNGatewaysGet' = TargetVPNGatewaysGet'
    { _tvggQuotaUser        :: !(Maybe Text)
    , _tvggPrettyPrint      :: !Bool
    , _tvggProject          :: !Text
    , _tvggUserIP           :: !(Maybe Text)
    , _tvggTargetVPNGateway :: !Text
    , _tvggKey              :: !(Maybe Key)
    , _tvggRegion           :: !Text
    , _tvggOAuthToken       :: !(Maybe OAuthToken)
    , _tvggFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tvggUserIP'
--
-- * 'tvggTargetVPNGateway'
--
-- * 'tvggKey'
--
-- * 'tvggRegion'
--
-- * 'tvggOAuthToken'
--
-- * 'tvggFields'
targetVPNGatewaysGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetVpnGateway'
    -> Text -- ^ 'region'
    -> TargetVPNGatewaysGet'
targetVPNGatewaysGet' pTvggProject_ pTvggTargetVPNGateway_ pTvggRegion_ =
    TargetVPNGatewaysGet'
    { _tvggQuotaUser = Nothing
    , _tvggPrettyPrint = True
    , _tvggProject = pTvggProject_
    , _tvggUserIP = Nothing
    , _tvggTargetVPNGateway = pTvggTargetVPNGateway_
    , _tvggKey = Nothing
    , _tvggRegion = pTvggRegion_
    , _tvggOAuthToken = Nothing
    , _tvggFields = Nothing
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
tvggUserIP :: Lens' TargetVPNGatewaysGet' (Maybe Text)
tvggUserIP
  = lens _tvggUserIP (\ s a -> s{_tvggUserIP = a})

-- | Name of the TargetVpnGateway resource to return.
tvggTargetVPNGateway :: Lens' TargetVPNGatewaysGet' Text
tvggTargetVPNGateway
  = lens _tvggTargetVPNGateway
      (\ s a -> s{_tvggTargetVPNGateway = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tvggKey :: Lens' TargetVPNGatewaysGet' (Maybe Key)
tvggKey = lens _tvggKey (\ s a -> s{_tvggKey = a})

-- | The name of the region for this request.
tvggRegion :: Lens' TargetVPNGatewaysGet' Text
tvggRegion
  = lens _tvggRegion (\ s a -> s{_tvggRegion = a})

-- | OAuth 2.0 token for the current user.
tvggOAuthToken :: Lens' TargetVPNGatewaysGet' (Maybe OAuthToken)
tvggOAuthToken
  = lens _tvggOAuthToken
      (\ s a -> s{_tvggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tvggFields :: Lens' TargetVPNGatewaysGet' (Maybe Text)
tvggFields
  = lens _tvggFields (\ s a -> s{_tvggFields = a})

instance GoogleAuth TargetVPNGatewaysGet' where
        authKey = tvggKey . _Just
        authToken = tvggOAuthToken . _Just

instance GoogleRequest TargetVPNGatewaysGet' where
        type Rs TargetVPNGatewaysGet' = TargetVPNGateway
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetVPNGatewaysGet'{..}
          = go _tvggProject _tvggRegion _tvggTargetVPNGateway
              _tvggQuotaUser
              (Just _tvggPrettyPrint)
              _tvggUserIP
              _tvggFields
              _tvggKey
              _tvggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetVPNGatewaysGetResource)
                      r
                      u
