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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of VPN tunnels grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeVPNTunnelsAggregatedList@.
module Network.Google.Resource.Compute.VPNTunnels.AggregatedList
    (
    -- * REST Resource
      VpnTunnelsAggregatedListResource

    -- * Creating a Request
    , vPNTunnelsAggregatedList'
    , VPNTunnelsAggregatedList'

    -- * Request Lenses
    , vtalQuotaUser
    , vtalPrettyPrint
    , vtalProject
    , vtalUserIp
    , vtalKey
    , vtalFilter
    , vtalPageToken
    , vtalOauthToken
    , vtalMaxResults
    , vtalFields
    , vtalAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsAggregatedList@ which the
-- 'VPNTunnelsAggregatedList'' request conforms to.
type VpnTunnelsAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "vpnTunnels" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] VPNTunnelAggregatedList

-- | Retrieves the list of VPN tunnels grouped by scope.
--
-- /See:/ 'vPNTunnelsAggregatedList'' smart constructor.
data VPNTunnelsAggregatedList' = VPNTunnelsAggregatedList'
    { _vtalQuotaUser   :: !(Maybe Text)
    , _vtalPrettyPrint :: !Bool
    , _vtalProject     :: !Text
    , _vtalUserIp      :: !(Maybe Text)
    , _vtalKey         :: !(Maybe Text)
    , _vtalFilter      :: !(Maybe Text)
    , _vtalPageToken   :: !(Maybe Text)
    , _vtalOauthToken  :: !(Maybe Text)
    , _vtalMaxResults  :: !Word32
    , _vtalFields      :: !(Maybe Text)
    , _vtalAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtalQuotaUser'
--
-- * 'vtalPrettyPrint'
--
-- * 'vtalProject'
--
-- * 'vtalUserIp'
--
-- * 'vtalKey'
--
-- * 'vtalFilter'
--
-- * 'vtalPageToken'
--
-- * 'vtalOauthToken'
--
-- * 'vtalMaxResults'
--
-- * 'vtalFields'
--
-- * 'vtalAlt'
vPNTunnelsAggregatedList'
    :: Text -- ^ 'project'
    -> VPNTunnelsAggregatedList'
vPNTunnelsAggregatedList' pVtalProject_ =
    VPNTunnelsAggregatedList'
    { _vtalQuotaUser = Nothing
    , _vtalPrettyPrint = True
    , _vtalProject = pVtalProject_
    , _vtalUserIp = Nothing
    , _vtalKey = Nothing
    , _vtalFilter = Nothing
    , _vtalPageToken = Nothing
    , _vtalOauthToken = Nothing
    , _vtalMaxResults = 500
    , _vtalFields = Nothing
    , _vtalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vtalQuotaUser :: Lens' VPNTunnelsAggregatedList' (Maybe Text)
vtalQuotaUser
  = lens _vtalQuotaUser
      (\ s a -> s{_vtalQuotaUser = a})

-- | Returns response with indentations and line breaks.
vtalPrettyPrint :: Lens' VPNTunnelsAggregatedList' Bool
vtalPrettyPrint
  = lens _vtalPrettyPrint
      (\ s a -> s{_vtalPrettyPrint = a})

-- | Project ID for this request.
vtalProject :: Lens' VPNTunnelsAggregatedList' Text
vtalProject
  = lens _vtalProject (\ s a -> s{_vtalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vtalUserIp :: Lens' VPNTunnelsAggregatedList' (Maybe Text)
vtalUserIp
  = lens _vtalUserIp (\ s a -> s{_vtalUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vtalKey :: Lens' VPNTunnelsAggregatedList' (Maybe Text)
vtalKey = lens _vtalKey (\ s a -> s{_vtalKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
vtalFilter :: Lens' VPNTunnelsAggregatedList' (Maybe Text)
vtalFilter
  = lens _vtalFilter (\ s a -> s{_vtalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
vtalPageToken :: Lens' VPNTunnelsAggregatedList' (Maybe Text)
vtalPageToken
  = lens _vtalPageToken
      (\ s a -> s{_vtalPageToken = a})

-- | OAuth 2.0 token for the current user.
vtalOauthToken :: Lens' VPNTunnelsAggregatedList' (Maybe Text)
vtalOauthToken
  = lens _vtalOauthToken
      (\ s a -> s{_vtalOauthToken = a})

-- | Maximum count of results to be returned.
vtalMaxResults :: Lens' VPNTunnelsAggregatedList' Word32
vtalMaxResults
  = lens _vtalMaxResults
      (\ s a -> s{_vtalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
vtalFields :: Lens' VPNTunnelsAggregatedList' (Maybe Text)
vtalFields
  = lens _vtalFields (\ s a -> s{_vtalFields = a})

-- | Data format for the response.
vtalAlt :: Lens' VPNTunnelsAggregatedList' Alt
vtalAlt = lens _vtalAlt (\ s a -> s{_vtalAlt = a})

instance GoogleRequest VPNTunnelsAggregatedList'
         where
        type Rs VPNTunnelsAggregatedList' =
             VPNTunnelAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u VPNTunnelsAggregatedList'{..}
          = go _vtalQuotaUser (Just _vtalPrettyPrint)
              _vtalProject
              _vtalUserIp
              _vtalKey
              _vtalFilter
              _vtalPageToken
              _vtalOauthToken
              (Just _vtalMaxResults)
              _vtalFields
              (Just _vtalAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VpnTunnelsAggregatedListResource)
                      r
                      u
