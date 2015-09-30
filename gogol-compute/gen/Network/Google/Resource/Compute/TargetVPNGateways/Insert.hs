{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
    , tvgiUserIp
    , tvgiKey
    , tvgiRegion
    , tvgiOauthToken
    , tvgiFields
    , tvgiAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a TargetVpnGateway resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'targetVPNGatewaysInsert'' smart constructor.
data TargetVPNGatewaysInsert' = TargetVPNGatewaysInsert'
    { _tvgiQuotaUser   :: !(Maybe Text)
    , _tvgiPrettyPrint :: !Bool
    , _tvgiProject     :: !Text
    , _tvgiUserIp      :: !(Maybe Text)
    , _tvgiKey         :: !(Maybe Text)
    , _tvgiRegion      :: !Text
    , _tvgiOauthToken  :: !(Maybe Text)
    , _tvgiFields      :: !(Maybe Text)
    , _tvgiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'tvgiUserIp'
--
-- * 'tvgiKey'
--
-- * 'tvgiRegion'
--
-- * 'tvgiOauthToken'
--
-- * 'tvgiFields'
--
-- * 'tvgiAlt'
targetVPNGatewaysInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> TargetVPNGatewaysInsert'
targetVPNGatewaysInsert' pTvgiProject_ pTvgiRegion_ =
    TargetVPNGatewaysInsert'
    { _tvgiQuotaUser = Nothing
    , _tvgiPrettyPrint = True
    , _tvgiProject = pTvgiProject_
    , _tvgiUserIp = Nothing
    , _tvgiKey = Nothing
    , _tvgiRegion = pTvgiRegion_
    , _tvgiOauthToken = Nothing
    , _tvgiFields = Nothing
    , _tvgiAlt = JSON
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
tvgiUserIp :: Lens' TargetVPNGatewaysInsert' (Maybe Text)
tvgiUserIp
  = lens _tvgiUserIp (\ s a -> s{_tvgiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tvgiKey :: Lens' TargetVPNGatewaysInsert' (Maybe Text)
tvgiKey = lens _tvgiKey (\ s a -> s{_tvgiKey = a})

-- | The name of the region for this request.
tvgiRegion :: Lens' TargetVPNGatewaysInsert' Text
tvgiRegion
  = lens _tvgiRegion (\ s a -> s{_tvgiRegion = a})

-- | OAuth 2.0 token for the current user.
tvgiOauthToken :: Lens' TargetVPNGatewaysInsert' (Maybe Text)
tvgiOauthToken
  = lens _tvgiOauthToken
      (\ s a -> s{_tvgiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tvgiFields :: Lens' TargetVPNGatewaysInsert' (Maybe Text)
tvgiFields
  = lens _tvgiFields (\ s a -> s{_tvgiFields = a})

-- | Data format for the response.
tvgiAlt :: Lens' TargetVPNGatewaysInsert' Alt
tvgiAlt = lens _tvgiAlt (\ s a -> s{_tvgiAlt = a})

instance GoogleRequest TargetVPNGatewaysInsert' where
        type Rs TargetVPNGatewaysInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetVPNGatewaysInsert'{..}
          = go _tvgiQuotaUser (Just _tvgiPrettyPrint)
              _tvgiProject
              _tvgiUserIp
              _tvgiKey
              _tvgiRegion
              _tvgiOauthToken
              _tvgiFields
              (Just _tvgiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetVPNGatewaysInsertResource)
                      r
                      u
