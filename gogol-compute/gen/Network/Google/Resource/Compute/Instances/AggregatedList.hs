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
-- Module      : Network.Google.Resource.Compute.Instances.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesAggregatedList@.
module Network.Google.Resource.Compute.Instances.AggregatedList
    (
    -- * REST Resource
      InstancesAggregatedListResource

    -- * Creating a Request
    , instancesAggregatedList'
    , InstancesAggregatedList'

    -- * Request Lenses
    , ialQuotaUser
    , ialPrettyPrint
    , ialProject
    , ialUserIP
    , ialKey
    , ialFilter
    , ialPageToken
    , ialOAuthToken
    , ialMaxResults
    , ialFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesAggregatedList@ which the
-- 'InstancesAggregatedList'' request conforms to.
type InstancesAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "instances" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InstanceAggregatedList

--
-- /See:/ 'instancesAggregatedList'' smart constructor.
data InstancesAggregatedList' = InstancesAggregatedList'
    { _ialQuotaUser   :: !(Maybe Text)
    , _ialPrettyPrint :: !Bool
    , _ialProject     :: !Text
    , _ialUserIP      :: !(Maybe Text)
    , _ialKey         :: !(Maybe Key)
    , _ialFilter      :: !(Maybe Text)
    , _ialPageToken   :: !(Maybe Text)
    , _ialOAuthToken  :: !(Maybe OAuthToken)
    , _ialMaxResults  :: !Word32
    , _ialFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ialQuotaUser'
--
-- * 'ialPrettyPrint'
--
-- * 'ialProject'
--
-- * 'ialUserIP'
--
-- * 'ialKey'
--
-- * 'ialFilter'
--
-- * 'ialPageToken'
--
-- * 'ialOAuthToken'
--
-- * 'ialMaxResults'
--
-- * 'ialFields'
instancesAggregatedList'
    :: Text -- ^ 'project'
    -> InstancesAggregatedList'
instancesAggregatedList' pIalProject_ =
    InstancesAggregatedList'
    { _ialQuotaUser = Nothing
    , _ialPrettyPrint = True
    , _ialProject = pIalProject_
    , _ialUserIP = Nothing
    , _ialKey = Nothing
    , _ialFilter = Nothing
    , _ialPageToken = Nothing
    , _ialOAuthToken = Nothing
    , _ialMaxResults = 500
    , _ialFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ialQuotaUser :: Lens' InstancesAggregatedList' (Maybe Text)
ialQuotaUser
  = lens _ialQuotaUser (\ s a -> s{_ialQuotaUser = a})

-- | Returns response with indentations and line breaks.
ialPrettyPrint :: Lens' InstancesAggregatedList' Bool
ialPrettyPrint
  = lens _ialPrettyPrint
      (\ s a -> s{_ialPrettyPrint = a})

-- | Project ID for this request.
ialProject :: Lens' InstancesAggregatedList' Text
ialProject
  = lens _ialProject (\ s a -> s{_ialProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ialUserIP :: Lens' InstancesAggregatedList' (Maybe Text)
ialUserIP
  = lens _ialUserIP (\ s a -> s{_ialUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ialKey :: Lens' InstancesAggregatedList' (Maybe Key)
ialKey = lens _ialKey (\ s a -> s{_ialKey = a})

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
ialFilter :: Lens' InstancesAggregatedList' (Maybe Text)
ialFilter
  = lens _ialFilter (\ s a -> s{_ialFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
ialPageToken :: Lens' InstancesAggregatedList' (Maybe Text)
ialPageToken
  = lens _ialPageToken (\ s a -> s{_ialPageToken = a})

-- | OAuth 2.0 token for the current user.
ialOAuthToken :: Lens' InstancesAggregatedList' (Maybe OAuthToken)
ialOAuthToken
  = lens _ialOAuthToken
      (\ s a -> s{_ialOAuthToken = a})

-- | Maximum count of results to be returned.
ialMaxResults :: Lens' InstancesAggregatedList' Word32
ialMaxResults
  = lens _ialMaxResults
      (\ s a -> s{_ialMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ialFields :: Lens' InstancesAggregatedList' (Maybe Text)
ialFields
  = lens _ialFields (\ s a -> s{_ialFields = a})

instance GoogleAuth InstancesAggregatedList' where
        authKey = ialKey . _Just
        authToken = ialOAuthToken . _Just

instance GoogleRequest InstancesAggregatedList' where
        type Rs InstancesAggregatedList' =
             InstanceAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstancesAggregatedList'{..}
          = go _ialProject _ialFilter _ialPageToken
              (Just _ialMaxResults)
              _ialQuotaUser
              (Just _ialPrettyPrint)
              _ialUserIP
              _ialFields
              _ialKey
              _ialOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesAggregatedListResource)
                      r
                      u
