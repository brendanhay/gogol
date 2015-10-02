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
-- Module      : Network.Google.Resource.Compute.TargetInstances.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of target instances grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetInstancesAggregatedList@.
module Network.Google.Resource.Compute.TargetInstances.AggregatedList
    (
    -- * REST Resource
      TargetInstancesAggregatedListResource

    -- * Creating a Request
    , targetInstancesAggregatedList'
    , TargetInstancesAggregatedList'

    -- * Request Lenses
    , tialQuotaUser
    , tialPrettyPrint
    , tialProject
    , tialUserIP
    , tialKey
    , tialFilter
    , tialPageToken
    , tialOAuthToken
    , tialMaxResults
    , tialFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetInstancesAggregatedList@ which the
-- 'TargetInstancesAggregatedList'' request conforms to.
type TargetInstancesAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "targetInstances" :>
           QueryParam "filter" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetInstanceAggregatedList

-- | Retrieves the list of target instances grouped by scope.
--
-- /See:/ 'targetInstancesAggregatedList'' smart constructor.
data TargetInstancesAggregatedList' = TargetInstancesAggregatedList'
    { _tialQuotaUser   :: !(Maybe Text)
    , _tialPrettyPrint :: !Bool
    , _tialProject     :: !Text
    , _tialUserIP      :: !(Maybe Text)
    , _tialKey         :: !(Maybe Key)
    , _tialFilter      :: !(Maybe Text)
    , _tialPageToken   :: !(Maybe Text)
    , _tialOAuthToken  :: !(Maybe OAuthToken)
    , _tialMaxResults  :: !Word32
    , _tialFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tialQuotaUser'
--
-- * 'tialPrettyPrint'
--
-- * 'tialProject'
--
-- * 'tialUserIP'
--
-- * 'tialKey'
--
-- * 'tialFilter'
--
-- * 'tialPageToken'
--
-- * 'tialOAuthToken'
--
-- * 'tialMaxResults'
--
-- * 'tialFields'
targetInstancesAggregatedList'
    :: Text -- ^ 'project'
    -> TargetInstancesAggregatedList'
targetInstancesAggregatedList' pTialProject_ =
    TargetInstancesAggregatedList'
    { _tialQuotaUser = Nothing
    , _tialPrettyPrint = True
    , _tialProject = pTialProject_
    , _tialUserIP = Nothing
    , _tialKey = Nothing
    , _tialFilter = Nothing
    , _tialPageToken = Nothing
    , _tialOAuthToken = Nothing
    , _tialMaxResults = 500
    , _tialFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tialQuotaUser :: Lens' TargetInstancesAggregatedList' (Maybe Text)
tialQuotaUser
  = lens _tialQuotaUser
      (\ s a -> s{_tialQuotaUser = a})

-- | Returns response with indentations and line breaks.
tialPrettyPrint :: Lens' TargetInstancesAggregatedList' Bool
tialPrettyPrint
  = lens _tialPrettyPrint
      (\ s a -> s{_tialPrettyPrint = a})

-- | Name of the project scoping this request.
tialProject :: Lens' TargetInstancesAggregatedList' Text
tialProject
  = lens _tialProject (\ s a -> s{_tialProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tialUserIP :: Lens' TargetInstancesAggregatedList' (Maybe Text)
tialUserIP
  = lens _tialUserIP (\ s a -> s{_tialUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tialKey :: Lens' TargetInstancesAggregatedList' (Maybe Key)
tialKey = lens _tialKey (\ s a -> s{_tialKey = a})

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
tialFilter :: Lens' TargetInstancesAggregatedList' (Maybe Text)
tialFilter
  = lens _tialFilter (\ s a -> s{_tialFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tialPageToken :: Lens' TargetInstancesAggregatedList' (Maybe Text)
tialPageToken
  = lens _tialPageToken
      (\ s a -> s{_tialPageToken = a})

-- | OAuth 2.0 token for the current user.
tialOAuthToken :: Lens' TargetInstancesAggregatedList' (Maybe OAuthToken)
tialOAuthToken
  = lens _tialOAuthToken
      (\ s a -> s{_tialOAuthToken = a})

-- | Maximum count of results to be returned.
tialMaxResults :: Lens' TargetInstancesAggregatedList' Word32
tialMaxResults
  = lens _tialMaxResults
      (\ s a -> s{_tialMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tialFields :: Lens' TargetInstancesAggregatedList' (Maybe Text)
tialFields
  = lens _tialFields (\ s a -> s{_tialFields = a})

instance GoogleAuth TargetInstancesAggregatedList'
         where
        authKey = tialKey . _Just
        authToken = tialOAuthToken . _Just

instance GoogleRequest TargetInstancesAggregatedList'
         where
        type Rs TargetInstancesAggregatedList' =
             TargetInstanceAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          TargetInstancesAggregatedList'{..}
          = go _tialFilter (Just _tialMaxResults)
              _tialPageToken
              _tialProject
              _tialQuotaUser
              (Just _tialPrettyPrint)
              _tialUserIP
              _tialFields
              _tialKey
              _tialOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy TargetInstancesAggregatedListResource)
                      r
                      u
