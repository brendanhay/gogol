{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.InstanceGroups.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of instance groups, and sorts them by zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.aggregatedList@.
module Network.Google.API.Compute.InstanceGroups.AggregatedList
    (
    -- * REST Resource
      InstanceGroupsAggregatedListAPI

    -- * Creating a Request
    , instanceGroupsAggregatedList'
    , InstanceGroupsAggregatedList'

    -- * Request Lenses
    , igalQuotaUser
    , igalPrettyPrint
    , igalProject
    , igalUserIp
    , igalKey
    , igalFilter
    , igalPageToken
    , igalOauthToken
    , igalMaxResults
    , igalFields
    , igalAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.instanceGroups.aggregatedList which the
-- 'InstanceGroupsAggregatedList'' request conforms to.
type InstanceGroupsAggregatedListAPI =
     Capture "project" Text :>
       "aggregated" :>
         "instanceGroups" :>
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
                               Get '[JSON] InstanceGroupAggregatedList

-- | Retrieves the list of instance groups, and sorts them by zone.
--
-- /See:/ 'instanceGroupsAggregatedList'' smart constructor.
data InstanceGroupsAggregatedList' = InstanceGroupsAggregatedList'
    { _igalQuotaUser   :: !(Maybe Text)
    , _igalPrettyPrint :: !Bool
    , _igalProject     :: !Text
    , _igalUserIp      :: !(Maybe Text)
    , _igalKey         :: !(Maybe Text)
    , _igalFilter      :: !(Maybe Text)
    , _igalPageToken   :: !(Maybe Text)
    , _igalOauthToken  :: !(Maybe Text)
    , _igalMaxResults  :: !Word32
    , _igalFields      :: !(Maybe Text)
    , _igalAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igalQuotaUser'
--
-- * 'igalPrettyPrint'
--
-- * 'igalProject'
--
-- * 'igalUserIp'
--
-- * 'igalKey'
--
-- * 'igalFilter'
--
-- * 'igalPageToken'
--
-- * 'igalOauthToken'
--
-- * 'igalMaxResults'
--
-- * 'igalFields'
--
-- * 'igalAlt'
instanceGroupsAggregatedList'
    :: Text -- ^ 'project'
    -> InstanceGroupsAggregatedList'
instanceGroupsAggregatedList' pIgalProject_ =
    InstanceGroupsAggregatedList'
    { _igalQuotaUser = Nothing
    , _igalPrettyPrint = True
    , _igalProject = pIgalProject_
    , _igalUserIp = Nothing
    , _igalKey = Nothing
    , _igalFilter = Nothing
    , _igalPageToken = Nothing
    , _igalOauthToken = Nothing
    , _igalMaxResults = 500
    , _igalFields = Nothing
    , _igalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igalQuotaUser :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalQuotaUser
  = lens _igalQuotaUser
      (\ s a -> s{_igalQuotaUser = a})

-- | Returns response with indentations and line breaks.
igalPrettyPrint :: Lens' InstanceGroupsAggregatedList' Bool
igalPrettyPrint
  = lens _igalPrettyPrint
      (\ s a -> s{_igalPrettyPrint = a})

-- | The project ID for this request.
igalProject :: Lens' InstanceGroupsAggregatedList' Text
igalProject
  = lens _igalProject (\ s a -> s{_igalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igalUserIp :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalUserIp
  = lens _igalUserIp (\ s a -> s{_igalUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igalKey :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalKey = lens _igalKey (\ s a -> s{_igalKey = a})

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
igalFilter :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalFilter
  = lens _igalFilter (\ s a -> s{_igalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
igalPageToken :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalPageToken
  = lens _igalPageToken
      (\ s a -> s{_igalPageToken = a})

-- | OAuth 2.0 token for the current user.
igalOauthToken :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalOauthToken
  = lens _igalOauthToken
      (\ s a -> s{_igalOauthToken = a})

-- | Maximum count of results to be returned.
igalMaxResults :: Lens' InstanceGroupsAggregatedList' Word32
igalMaxResults
  = lens _igalMaxResults
      (\ s a -> s{_igalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
igalFields :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalFields
  = lens _igalFields (\ s a -> s{_igalFields = a})

-- | Data format for the response.
igalAlt :: Lens' InstanceGroupsAggregatedList' Alt
igalAlt = lens _igalAlt (\ s a -> s{_igalAlt = a})

instance GoogleRequest InstanceGroupsAggregatedList'
         where
        type Rs InstanceGroupsAggregatedList' =
             InstanceGroupAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupsAggregatedList'{..}
          = go _igalQuotaUser (Just _igalPrettyPrint)
              _igalProject
              _igalUserIp
              _igalKey
              _igalFilter
              _igalPageToken
              _igalOauthToken
              (Just _igalMaxResults)
              _igalFields
              (Just _igalAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsAggregatedListAPI)
                      r
                      u
