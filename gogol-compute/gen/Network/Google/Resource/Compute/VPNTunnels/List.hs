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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of VpnTunnel resources contained in the specified
-- project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeVPNTunnelsList@.
module Network.Google.Resource.Compute.VPNTunnels.List
    (
    -- * REST Resource
      VpnTunnelsListResource

    -- * Creating a Request
    , vPNTunnelsList'
    , VPNTunnelsList'

    -- * Request Lenses
    , vtlQuotaUser
    , vtlPrettyPrint
    , vtlProject
    , vtlUserIp
    , vtlKey
    , vtlFilter
    , vtlRegion
    , vtlPageToken
    , vtlOauthToken
    , vtlMaxResults
    , vtlFields
    , vtlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsList@ which the
-- 'VPNTunnelsList'' request conforms to.
type VpnTunnelsListResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
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
                               QueryParam "alt" Alt :> Get '[JSON] VPNTunnelList

-- | Retrieves the list of VpnTunnel resources contained in the specified
-- project and region.
--
-- /See:/ 'vPNTunnelsList'' smart constructor.
data VPNTunnelsList' = VPNTunnelsList'
    { _vtlQuotaUser   :: !(Maybe Text)
    , _vtlPrettyPrint :: !Bool
    , _vtlProject     :: !Text
    , _vtlUserIp      :: !(Maybe Text)
    , _vtlKey         :: !(Maybe Text)
    , _vtlFilter      :: !(Maybe Text)
    , _vtlRegion      :: !Text
    , _vtlPageToken   :: !(Maybe Text)
    , _vtlOauthToken  :: !(Maybe Text)
    , _vtlMaxResults  :: !Word32
    , _vtlFields      :: !(Maybe Text)
    , _vtlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtlQuotaUser'
--
-- * 'vtlPrettyPrint'
--
-- * 'vtlProject'
--
-- * 'vtlUserIp'
--
-- * 'vtlKey'
--
-- * 'vtlFilter'
--
-- * 'vtlRegion'
--
-- * 'vtlPageToken'
--
-- * 'vtlOauthToken'
--
-- * 'vtlMaxResults'
--
-- * 'vtlFields'
--
-- * 'vtlAlt'
vPNTunnelsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> VPNTunnelsList'
vPNTunnelsList' pVtlProject_ pVtlRegion_ =
    VPNTunnelsList'
    { _vtlQuotaUser = Nothing
    , _vtlPrettyPrint = True
    , _vtlProject = pVtlProject_
    , _vtlUserIp = Nothing
    , _vtlKey = Nothing
    , _vtlFilter = Nothing
    , _vtlRegion = pVtlRegion_
    , _vtlPageToken = Nothing
    , _vtlOauthToken = Nothing
    , _vtlMaxResults = 500
    , _vtlFields = Nothing
    , _vtlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vtlQuotaUser :: Lens' VPNTunnelsList' (Maybe Text)
vtlQuotaUser
  = lens _vtlQuotaUser (\ s a -> s{_vtlQuotaUser = a})

-- | Returns response with indentations and line breaks.
vtlPrettyPrint :: Lens' VPNTunnelsList' Bool
vtlPrettyPrint
  = lens _vtlPrettyPrint
      (\ s a -> s{_vtlPrettyPrint = a})

-- | Project ID for this request.
vtlProject :: Lens' VPNTunnelsList' Text
vtlProject
  = lens _vtlProject (\ s a -> s{_vtlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vtlUserIp :: Lens' VPNTunnelsList' (Maybe Text)
vtlUserIp
  = lens _vtlUserIp (\ s a -> s{_vtlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vtlKey :: Lens' VPNTunnelsList' (Maybe Text)
vtlKey = lens _vtlKey (\ s a -> s{_vtlKey = a})

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
vtlFilter :: Lens' VPNTunnelsList' (Maybe Text)
vtlFilter
  = lens _vtlFilter (\ s a -> s{_vtlFilter = a})

-- | The name of the region for this request.
vtlRegion :: Lens' VPNTunnelsList' Text
vtlRegion
  = lens _vtlRegion (\ s a -> s{_vtlRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
vtlPageToken :: Lens' VPNTunnelsList' (Maybe Text)
vtlPageToken
  = lens _vtlPageToken (\ s a -> s{_vtlPageToken = a})

-- | OAuth 2.0 token for the current user.
vtlOauthToken :: Lens' VPNTunnelsList' (Maybe Text)
vtlOauthToken
  = lens _vtlOauthToken
      (\ s a -> s{_vtlOauthToken = a})

-- | Maximum count of results to be returned.
vtlMaxResults :: Lens' VPNTunnelsList' Word32
vtlMaxResults
  = lens _vtlMaxResults
      (\ s a -> s{_vtlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
vtlFields :: Lens' VPNTunnelsList' (Maybe Text)
vtlFields
  = lens _vtlFields (\ s a -> s{_vtlFields = a})

-- | Data format for the response.
vtlAlt :: Lens' VPNTunnelsList' Alt
vtlAlt = lens _vtlAlt (\ s a -> s{_vtlAlt = a})

instance GoogleRequest VPNTunnelsList' where
        type Rs VPNTunnelsList' = VPNTunnelList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u VPNTunnelsList'{..}
          = go _vtlQuotaUser (Just _vtlPrettyPrint) _vtlProject
              _vtlUserIp
              _vtlKey
              _vtlFilter
              _vtlRegion
              _vtlPageToken
              _vtlOauthToken
              (Just _vtlMaxResults)
              _vtlFields
              (Just _vtlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VpnTunnelsListResource)
                      r
                      u
