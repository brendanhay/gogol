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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of instance groups, and sorts them by zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsAggregatedList@.
module Network.Google.Resource.Compute.InstanceGroups.AggregatedList
    (
    -- * REST Resource
      InstanceGroupsAggregatedListResource

    -- * Creating a Request
    , instanceGroupsAggregatedList'
    , InstanceGroupsAggregatedList'

    -- * Request Lenses
    , igalQuotaUser
    , igalPrettyPrint
    , igalProject
    , igalUserIP
    , igalKey
    , igalFilter
    , igalPageToken
    , igalOAuthToken
    , igalMaxResults
    , igalFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsAggregatedList@ which the
-- 'InstanceGroupsAggregatedList'' request conforms to.
type InstanceGroupsAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "instanceGroups" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InstanceGroupAggregatedList

-- | Retrieves the list of instance groups, and sorts them by zone.
--
-- /See:/ 'instanceGroupsAggregatedList'' smart constructor.
data InstanceGroupsAggregatedList' = InstanceGroupsAggregatedList'
    { _igalQuotaUser   :: !(Maybe Text)
    , _igalPrettyPrint :: !Bool
    , _igalProject     :: !Text
    , _igalUserIP      :: !(Maybe Text)
    , _igalKey         :: !(Maybe AuthKey)
    , _igalFilter      :: !(Maybe Text)
    , _igalPageToken   :: !(Maybe Text)
    , _igalOAuthToken  :: !(Maybe OAuthToken)
    , _igalMaxResults  :: !Word32
    , _igalFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'igalUserIP'
--
-- * 'igalKey'
--
-- * 'igalFilter'
--
-- * 'igalPageToken'
--
-- * 'igalOAuthToken'
--
-- * 'igalMaxResults'
--
-- * 'igalFields'
instanceGroupsAggregatedList'
    :: Text -- ^ 'project'
    -> InstanceGroupsAggregatedList'
instanceGroupsAggregatedList' pIgalProject_ =
    InstanceGroupsAggregatedList'
    { _igalQuotaUser = Nothing
    , _igalPrettyPrint = True
    , _igalProject = pIgalProject_
    , _igalUserIP = Nothing
    , _igalKey = Nothing
    , _igalFilter = Nothing
    , _igalPageToken = Nothing
    , _igalOAuthToken = Nothing
    , _igalMaxResults = 500
    , _igalFields = Nothing
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
igalUserIP :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalUserIP
  = lens _igalUserIP (\ s a -> s{_igalUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igalKey :: Lens' InstanceGroupsAggregatedList' (Maybe AuthKey)
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
igalOAuthToken :: Lens' InstanceGroupsAggregatedList' (Maybe OAuthToken)
igalOAuthToken
  = lens _igalOAuthToken
      (\ s a -> s{_igalOAuthToken = a})

-- | Maximum count of results to be returned.
igalMaxResults :: Lens' InstanceGroupsAggregatedList' Word32
igalMaxResults
  = lens _igalMaxResults
      (\ s a -> s{_igalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
igalFields :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalFields
  = lens _igalFields (\ s a -> s{_igalFields = a})

instance GoogleAuth InstanceGroupsAggregatedList'
         where
        authKey = igalKey . _Just
        authToken = igalOAuthToken . _Just

instance GoogleRequest InstanceGroupsAggregatedList'
         where
        type Rs InstanceGroupsAggregatedList' =
             InstanceGroupAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupsAggregatedList'{..}
          = go _igalProject _igalFilter _igalPageToken
              (Just _igalMaxResults)
              _igalQuotaUser
              (Just _igalPrettyPrint)
              _igalUserIP
              _igalFields
              _igalKey
              _igalOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupsAggregatedListResource)
                      r
                      u
