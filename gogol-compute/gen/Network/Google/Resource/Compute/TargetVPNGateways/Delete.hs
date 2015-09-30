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
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified TargetVpnGateway resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetVPNGatewaysDelete@.
module Network.Google.Resource.Compute.TargetVPNGateways.Delete
    (
    -- * REST Resource
      TargetVPNGatewaysDeleteResource

    -- * Creating a Request
    , targetVPNGatewaysDelete'
    , TargetVPNGatewaysDelete'

    -- * Request Lenses
    , tvgdQuotaUser
    , tvgdPrettyPrint
    , tvgdProject
    , tvgdUserIp
    , tvgdTargetVpnGateway
    , tvgdKey
    , tvgdRegion
    , tvgdOauthToken
    , tvgdFields
    , tvgdAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetVPNGatewaysDelete@ which the
-- 'TargetVPNGatewaysDelete'' request conforms to.
type TargetVPNGatewaysDeleteResource =
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
                           QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified TargetVpnGateway resource.
--
-- /See:/ 'targetVPNGatewaysDelete'' smart constructor.
data TargetVPNGatewaysDelete' = TargetVPNGatewaysDelete'
    { _tvgdQuotaUser        :: !(Maybe Text)
    , _tvgdPrettyPrint      :: !Bool
    , _tvgdProject          :: !Text
    , _tvgdUserIp           :: !(Maybe Text)
    , _tvgdTargetVpnGateway :: !Text
    , _tvgdKey              :: !(Maybe Text)
    , _tvgdRegion           :: !Text
    , _tvgdOauthToken       :: !(Maybe Text)
    , _tvgdFields           :: !(Maybe Text)
    , _tvgdAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgdQuotaUser'
--
-- * 'tvgdPrettyPrint'
--
-- * 'tvgdProject'
--
-- * 'tvgdUserIp'
--
-- * 'tvgdTargetVpnGateway'
--
-- * 'tvgdKey'
--
-- * 'tvgdRegion'
--
-- * 'tvgdOauthToken'
--
-- * 'tvgdFields'
--
-- * 'tvgdAlt'
targetVPNGatewaysDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetVpnGateway'
    -> Text -- ^ 'region'
    -> TargetVPNGatewaysDelete'
targetVPNGatewaysDelete' pTvgdProject_ pTvgdTargetVpnGateway_ pTvgdRegion_ =
    TargetVPNGatewaysDelete'
    { _tvgdQuotaUser = Nothing
    , _tvgdPrettyPrint = True
    , _tvgdProject = pTvgdProject_
    , _tvgdUserIp = Nothing
    , _tvgdTargetVpnGateway = pTvgdTargetVpnGateway_
    , _tvgdKey = Nothing
    , _tvgdRegion = pTvgdRegion_
    , _tvgdOauthToken = Nothing
    , _tvgdFields = Nothing
    , _tvgdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tvgdQuotaUser :: Lens' TargetVPNGatewaysDelete' (Maybe Text)
tvgdQuotaUser
  = lens _tvgdQuotaUser
      (\ s a -> s{_tvgdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tvgdPrettyPrint :: Lens' TargetVPNGatewaysDelete' Bool
tvgdPrettyPrint
  = lens _tvgdPrettyPrint
      (\ s a -> s{_tvgdPrettyPrint = a})

-- | Project ID for this request.
tvgdProject :: Lens' TargetVPNGatewaysDelete' Text
tvgdProject
  = lens _tvgdProject (\ s a -> s{_tvgdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tvgdUserIp :: Lens' TargetVPNGatewaysDelete' (Maybe Text)
tvgdUserIp
  = lens _tvgdUserIp (\ s a -> s{_tvgdUserIp = a})

-- | Name of the TargetVpnGateway resource to delete.
tvgdTargetVpnGateway :: Lens' TargetVPNGatewaysDelete' Text
tvgdTargetVpnGateway
  = lens _tvgdTargetVpnGateway
      (\ s a -> s{_tvgdTargetVpnGateway = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tvgdKey :: Lens' TargetVPNGatewaysDelete' (Maybe Text)
tvgdKey = lens _tvgdKey (\ s a -> s{_tvgdKey = a})

-- | The name of the region for this request.
tvgdRegion :: Lens' TargetVPNGatewaysDelete' Text
tvgdRegion
  = lens _tvgdRegion (\ s a -> s{_tvgdRegion = a})

-- | OAuth 2.0 token for the current user.
tvgdOauthToken :: Lens' TargetVPNGatewaysDelete' (Maybe Text)
tvgdOauthToken
  = lens _tvgdOauthToken
      (\ s a -> s{_tvgdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tvgdFields :: Lens' TargetVPNGatewaysDelete' (Maybe Text)
tvgdFields
  = lens _tvgdFields (\ s a -> s{_tvgdFields = a})

-- | Data format for the response.
tvgdAlt :: Lens' TargetVPNGatewaysDelete' Alt
tvgdAlt = lens _tvgdAlt (\ s a -> s{_tvgdAlt = a})

instance GoogleRequest TargetVPNGatewaysDelete' where
        type Rs TargetVPNGatewaysDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetVPNGatewaysDelete'{..}
          = go _tvgdQuotaUser (Just _tvgdPrettyPrint)
              _tvgdProject
              _tvgdUserIp
              _tvgdTargetVpnGateway
              _tvgdKey
              _tvgdRegion
              _tvgdOauthToken
              _tvgdFields
              (Just _tvgdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetVPNGatewaysDeleteResource)
                      r
                      u
