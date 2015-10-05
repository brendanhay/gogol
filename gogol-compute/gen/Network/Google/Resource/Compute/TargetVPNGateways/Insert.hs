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
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a TargetVpnGateway resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetVPNGatewaysInsert@.
module Network.Google.Resource.Compute.TargetVPNGateways.Insert
    (
    -- * REST Resource
      TargetVPNGatewaysInsertResource

    -- * Creating a Request
    , targetVPNGatewaysInsert'
    , TargetVPNGatewaysInsert'

    -- * Request Lenses
    , tvgiQuotaUser
    , tvgiPrettyPrint
    , tvgiProject
    , tvgiUserIP
    , tvgiPayload
    , tvgiKey
    , tvgiRegion
    , tvgiOAuthToken
    , tvgiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetVPNGatewaysInsert@ which the
-- 'TargetVPNGatewaysInsert'' request conforms to.
type TargetVPNGatewaysInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetVpnGateways" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TargetVPNGateway :>
                             Post '[JSON] Operation

-- | Creates a TargetVpnGateway resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'targetVPNGatewaysInsert'' smart constructor.
data TargetVPNGatewaysInsert' = TargetVPNGatewaysInsert'
    { _tvgiQuotaUser   :: !(Maybe Text)
    , _tvgiPrettyPrint :: !Bool
    , _tvgiProject     :: !Text
    , _tvgiUserIP      :: !(Maybe Text)
    , _tvgiPayload     :: !TargetVPNGateway
    , _tvgiKey         :: !(Maybe Key)
    , _tvgiRegion      :: !Text
    , _tvgiOAuthToken  :: !(Maybe OAuthToken)
    , _tvgiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgiQuotaUser'
--
-- * 'tvgiPrettyPrint'
--
-- * 'tvgiProject'
--
-- * 'tvgiUserIP'
--
-- * 'tvgiPayload'
--
-- * 'tvgiKey'
--
-- * 'tvgiRegion'
--
-- * 'tvgiOAuthToken'
--
-- * 'tvgiFields'
targetVPNGatewaysInsert'
    :: Text -- ^ 'project'
    -> TargetVPNGateway -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetVPNGatewaysInsert'
targetVPNGatewaysInsert' pTvgiProject_ pTvgiPayload_ pTvgiRegion_ =
    TargetVPNGatewaysInsert'
    { _tvgiQuotaUser = Nothing
    , _tvgiPrettyPrint = True
    , _tvgiProject = pTvgiProject_
    , _tvgiUserIP = Nothing
    , _tvgiPayload = pTvgiPayload_
    , _tvgiKey = Nothing
    , _tvgiRegion = pTvgiRegion_
    , _tvgiOAuthToken = Nothing
    , _tvgiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tvgiQuotaUser :: Lens' TargetVPNGatewaysInsert' (Maybe Text)
tvgiQuotaUser
  = lens _tvgiQuotaUser
      (\ s a -> s{_tvgiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tvgiPrettyPrint :: Lens' TargetVPNGatewaysInsert' Bool
tvgiPrettyPrint
  = lens _tvgiPrettyPrint
      (\ s a -> s{_tvgiPrettyPrint = a})

-- | Project ID for this request.
tvgiProject :: Lens' TargetVPNGatewaysInsert' Text
tvgiProject
  = lens _tvgiProject (\ s a -> s{_tvgiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tvgiUserIP :: Lens' TargetVPNGatewaysInsert' (Maybe Text)
tvgiUserIP
  = lens _tvgiUserIP (\ s a -> s{_tvgiUserIP = a})

-- | Multipart request metadata.
tvgiPayload :: Lens' TargetVPNGatewaysInsert' TargetVPNGateway
tvgiPayload
  = lens _tvgiPayload (\ s a -> s{_tvgiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tvgiKey :: Lens' TargetVPNGatewaysInsert' (Maybe Key)
tvgiKey = lens _tvgiKey (\ s a -> s{_tvgiKey = a})

-- | The name of the region for this request.
tvgiRegion :: Lens' TargetVPNGatewaysInsert' Text
tvgiRegion
  = lens _tvgiRegion (\ s a -> s{_tvgiRegion = a})

-- | OAuth 2.0 token for the current user.
tvgiOAuthToken :: Lens' TargetVPNGatewaysInsert' (Maybe OAuthToken)
tvgiOAuthToken
  = lens _tvgiOAuthToken
      (\ s a -> s{_tvgiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tvgiFields :: Lens' TargetVPNGatewaysInsert' (Maybe Text)
tvgiFields
  = lens _tvgiFields (\ s a -> s{_tvgiFields = a})

instance GoogleAuth TargetVPNGatewaysInsert' where
        authKey = tvgiKey . _Just
        authToken = tvgiOAuthToken . _Just

instance GoogleRequest TargetVPNGatewaysInsert' where
        type Rs TargetVPNGatewaysInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetVPNGatewaysInsert'{..}
          = go _tvgiProject _tvgiRegion _tvgiQuotaUser
              (Just _tvgiPrettyPrint)
              _tvgiUserIP
              _tvgiFields
              _tvgiKey
              _tvgiOAuthToken
              (Just AltJSON)
              _tvgiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetVPNGatewaysInsertResource)
                      r
                      u
