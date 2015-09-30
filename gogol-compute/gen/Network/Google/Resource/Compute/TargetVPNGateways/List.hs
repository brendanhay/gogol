{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of TargetVpnGateway resources available to the
-- specified project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetVPNGatewaysList@.
module Compute.TargetVPNGateways.List
    (
    -- * REST Resource
      TargetVPNGatewaysListAPI

    -- * Creating a Request
    , targetVPNGatewaysList
    , TargetVPNGatewaysList

    -- * Request Lenses
    , tvglQuotaUser
    , tvglPrettyPrint
    , tvglProject
    , tvglUserIp
    , tvglKey
    , tvglFilter
    , tvglRegion
    , tvglPageToken
    , tvglOauthToken
    , tvglMaxResults
    , tvglFields
    , tvglAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetVPNGatewaysList@ which the
-- 'TargetVPNGatewaysList' request conforms to.
type TargetVPNGatewaysListAPI =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetVpnGateways" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   Get '[JSON] TargetVPNGatewayList

-- | Retrieves the list of TargetVpnGateway resources available to the
-- specified project and region.
--
-- /See:/ 'targetVPNGatewaysList' smart constructor.
data TargetVPNGatewaysList = TargetVPNGatewaysList
    { _tvglQuotaUser   :: !(Maybe Text)
    , _tvglPrettyPrint :: !Bool
    , _tvglProject     :: !Text
    , _tvglUserIp      :: !(Maybe Text)
    , _tvglKey         :: !(Maybe Text)
    , _tvglFilter      :: !(Maybe Text)
    , _tvglRegion      :: !Text
    , _tvglPageToken   :: !(Maybe Text)
    , _tvglOauthToken  :: !(Maybe Text)
    , _tvglMaxResults  :: !Word32
    , _tvglFields      :: !(Maybe Text)
    , _tvglAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvglQuotaUser'
--
-- * 'tvglPrettyPrint'
--
-- * 'tvglProject'
--
-- * 'tvglUserIp'
--
-- * 'tvglKey'
--
-- * 'tvglFilter'
--
-- * 'tvglRegion'
--
-- * 'tvglPageToken'
--
-- * 'tvglOauthToken'
--
-- * 'tvglMaxResults'
--
-- * 'tvglFields'
--
-- * 'tvglAlt'
targetVPNGatewaysList
    :: Text -- ^ 'project'
    -> Text -- ^ 'region'
    -> TargetVPNGatewaysList
targetVPNGatewaysList pTvglProject_ pTvglRegion_ =
    TargetVPNGatewaysList
    { _tvglQuotaUser = Nothing
    , _tvglPrettyPrint = True
    , _tvglProject = pTvglProject_
    , _tvglUserIp = Nothing
    , _tvglKey = Nothing
    , _tvglFilter = Nothing
    , _tvglRegion = pTvglRegion_
    , _tvglPageToken = Nothing
    , _tvglOauthToken = Nothing
    , _tvglMaxResults = 500
    , _tvglFields = Nothing
    , _tvglAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tvglQuotaUser :: Lens' TargetVPNGatewaysList' (Maybe Text)
tvglQuotaUser
  = lens _tvglQuotaUser
      (\ s a -> s{_tvglQuotaUser = a})

-- | Returns response with indentations and line breaks.
tvglPrettyPrint :: Lens' TargetVPNGatewaysList' Bool
tvglPrettyPrint
  = lens _tvglPrettyPrint
      (\ s a -> s{_tvglPrettyPrint = a})

-- | Project ID for this request.
tvglProject :: Lens' TargetVPNGatewaysList' Text
tvglProject
  = lens _tvglProject (\ s a -> s{_tvglProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tvglUserIp :: Lens' TargetVPNGatewaysList' (Maybe Text)
tvglUserIp
  = lens _tvglUserIp (\ s a -> s{_tvglUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tvglKey :: Lens' TargetVPNGatewaysList' (Maybe Text)
tvglKey = lens _tvglKey (\ s a -> s{_tvglKey = a})

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
tvglFilter :: Lens' TargetVPNGatewaysList' (Maybe Text)
tvglFilter
  = lens _tvglFilter (\ s a -> s{_tvglFilter = a})

-- | The name of the region for this request.
tvglRegion :: Lens' TargetVPNGatewaysList' Text
tvglRegion
  = lens _tvglRegion (\ s a -> s{_tvglRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tvglPageToken :: Lens' TargetVPNGatewaysList' (Maybe Text)
tvglPageToken
  = lens _tvglPageToken
      (\ s a -> s{_tvglPageToken = a})

-- | OAuth 2.0 token for the current user.
tvglOauthToken :: Lens' TargetVPNGatewaysList' (Maybe Text)
tvglOauthToken
  = lens _tvglOauthToken
      (\ s a -> s{_tvglOauthToken = a})

-- | Maximum count of results to be returned.
tvglMaxResults :: Lens' TargetVPNGatewaysList' Word32
tvglMaxResults
  = lens _tvglMaxResults
      (\ s a -> s{_tvglMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tvglFields :: Lens' TargetVPNGatewaysList' (Maybe Text)
tvglFields
  = lens _tvglFields (\ s a -> s{_tvglFields = a})

-- | Data format for the response.
tvglAlt :: Lens' TargetVPNGatewaysList' Text
tvglAlt = lens _tvglAlt (\ s a -> s{_tvglAlt = a})

instance GoogleRequest TargetVPNGatewaysList' where
        type Rs TargetVPNGatewaysList' = TargetVPNGatewayList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetVPNGatewaysList{..}
          = go _tvglQuotaUser _tvglPrettyPrint _tvglProject
              _tvglUserIp
              _tvglKey
              _tvglFilter
              _tvglRegion
              _tvglPageToken
              _tvglOauthToken
              (Just _tvglMaxResults)
              _tvglFields
              _tvglAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetVPNGatewaysListAPI)
                      r
                      u
