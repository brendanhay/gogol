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
    , tvgdUserIP
    , tvgdTargetVPNGateway
    , tvgdKey
    , tvgdRegion
    , tvgdOAuthToken
    , tvgdFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetVpnGateway resource.
--
-- /See:/ 'targetVPNGatewaysDelete'' smart constructor.
data TargetVPNGatewaysDelete' = TargetVPNGatewaysDelete'
    { _tvgdQuotaUser        :: !(Maybe Text)
    , _tvgdPrettyPrint      :: !Bool
    , _tvgdProject          :: !Text
    , _tvgdUserIP           :: !(Maybe Text)
    , _tvgdTargetVPNGateway :: !Text
    , _tvgdKey              :: !(Maybe Key)
    , _tvgdRegion           :: !Text
    , _tvgdOAuthToken       :: !(Maybe OAuthToken)
    , _tvgdFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tvgdUserIP'
--
-- * 'tvgdTargetVPNGateway'
--
-- * 'tvgdKey'
--
-- * 'tvgdRegion'
--
-- * 'tvgdOAuthToken'
--
-- * 'tvgdFields'
targetVPNGatewaysDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetVpnGateway'
    -> Text -- ^ 'region'
    -> TargetVPNGatewaysDelete'
targetVPNGatewaysDelete' pTvgdProject_ pTvgdTargetVPNGateway_ pTvgdRegion_ =
    TargetVPNGatewaysDelete'
    { _tvgdQuotaUser = Nothing
    , _tvgdPrettyPrint = True
    , _tvgdProject = pTvgdProject_
    , _tvgdUserIP = Nothing
    , _tvgdTargetVPNGateway = pTvgdTargetVPNGateway_
    , _tvgdKey = Nothing
    , _tvgdRegion = pTvgdRegion_
    , _tvgdOAuthToken = Nothing
    , _tvgdFields = Nothing
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
tvgdUserIP :: Lens' TargetVPNGatewaysDelete' (Maybe Text)
tvgdUserIP
  = lens _tvgdUserIP (\ s a -> s{_tvgdUserIP = a})

-- | Name of the TargetVpnGateway resource to delete.
tvgdTargetVPNGateway :: Lens' TargetVPNGatewaysDelete' Text
tvgdTargetVPNGateway
  = lens _tvgdTargetVPNGateway
      (\ s a -> s{_tvgdTargetVPNGateway = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tvgdKey :: Lens' TargetVPNGatewaysDelete' (Maybe Key)
tvgdKey = lens _tvgdKey (\ s a -> s{_tvgdKey = a})

-- | The name of the region for this request.
tvgdRegion :: Lens' TargetVPNGatewaysDelete' Text
tvgdRegion
  = lens _tvgdRegion (\ s a -> s{_tvgdRegion = a})

-- | OAuth 2.0 token for the current user.
tvgdOAuthToken :: Lens' TargetVPNGatewaysDelete' (Maybe OAuthToken)
tvgdOAuthToken
  = lens _tvgdOAuthToken
      (\ s a -> s{_tvgdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tvgdFields :: Lens' TargetVPNGatewaysDelete' (Maybe Text)
tvgdFields
  = lens _tvgdFields (\ s a -> s{_tvgdFields = a})

instance GoogleAuth TargetVPNGatewaysDelete' where
        authKey = tvgdKey . _Just
        authToken = tvgdOAuthToken . _Just

instance GoogleRequest TargetVPNGatewaysDelete' where
        type Rs TargetVPNGatewaysDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetVPNGatewaysDelete'{..}
          = go _tvgdProject _tvgdRegion _tvgdTargetVPNGateway
              _tvgdQuotaUser
              (Just _tvgdPrettyPrint)
              _tvgdUserIP
              _tvgdFields
              _tvgdKey
              _tvgdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetVPNGatewaysDeleteResource)
                      r
                      u
