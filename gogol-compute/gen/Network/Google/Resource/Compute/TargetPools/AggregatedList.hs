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
-- Module      : Network.Google.Resource.Compute.TargetPools.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of target pools grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsAggregatedList@.
module Network.Google.Resource.Compute.TargetPools.AggregatedList
    (
    -- * REST Resource
      TargetPoolsAggregatedListResource

    -- * Creating a Request
    , targetPoolsAggregatedList'
    , TargetPoolsAggregatedList'

    -- * Request Lenses
    , tpalQuotaUser
    , tpalPrettyPrint
    , tpalProject
    , tpalUserIP
    , tpalKey
    , tpalFilter
    , tpalPageToken
    , tpalOAuthToken
    , tpalMaxResults
    , tpalFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsAggregatedList@ which the
-- 'TargetPoolsAggregatedList'' request conforms to.
type TargetPoolsAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "targetPools" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetPoolAggregatedList

-- | Retrieves the list of target pools grouped by scope.
--
-- /See:/ 'targetPoolsAggregatedList'' smart constructor.
data TargetPoolsAggregatedList' = TargetPoolsAggregatedList'
    { _tpalQuotaUser   :: !(Maybe Text)
    , _tpalPrettyPrint :: !Bool
    , _tpalProject     :: !Text
    , _tpalUserIP      :: !(Maybe Text)
    , _tpalKey         :: !(Maybe Key)
    , _tpalFilter      :: !(Maybe Text)
    , _tpalPageToken   :: !(Maybe Text)
    , _tpalOAuthToken  :: !(Maybe OAuthToken)
    , _tpalMaxResults  :: !Word32
    , _tpalFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpalQuotaUser'
--
-- * 'tpalPrettyPrint'
--
-- * 'tpalProject'
--
-- * 'tpalUserIP'
--
-- * 'tpalKey'
--
-- * 'tpalFilter'
--
-- * 'tpalPageToken'
--
-- * 'tpalOAuthToken'
--
-- * 'tpalMaxResults'
--
-- * 'tpalFields'
targetPoolsAggregatedList'
    :: Text -- ^ 'project'
    -> TargetPoolsAggregatedList'
targetPoolsAggregatedList' pTpalProject_ =
    TargetPoolsAggregatedList'
    { _tpalQuotaUser = Nothing
    , _tpalPrettyPrint = True
    , _tpalProject = pTpalProject_
    , _tpalUserIP = Nothing
    , _tpalKey = Nothing
    , _tpalFilter = Nothing
    , _tpalPageToken = Nothing
    , _tpalOAuthToken = Nothing
    , _tpalMaxResults = 500
    , _tpalFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpalQuotaUser :: Lens' TargetPoolsAggregatedList' (Maybe Text)
tpalQuotaUser
  = lens _tpalQuotaUser
      (\ s a -> s{_tpalQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpalPrettyPrint :: Lens' TargetPoolsAggregatedList' Bool
tpalPrettyPrint
  = lens _tpalPrettyPrint
      (\ s a -> s{_tpalPrettyPrint = a})

-- | Name of the project scoping this request.
tpalProject :: Lens' TargetPoolsAggregatedList' Text
tpalProject
  = lens _tpalProject (\ s a -> s{_tpalProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpalUserIP :: Lens' TargetPoolsAggregatedList' (Maybe Text)
tpalUserIP
  = lens _tpalUserIP (\ s a -> s{_tpalUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpalKey :: Lens' TargetPoolsAggregatedList' (Maybe Key)
tpalKey = lens _tpalKey (\ s a -> s{_tpalKey = a})

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
tpalFilter :: Lens' TargetPoolsAggregatedList' (Maybe Text)
tpalFilter
  = lens _tpalFilter (\ s a -> s{_tpalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tpalPageToken :: Lens' TargetPoolsAggregatedList' (Maybe Text)
tpalPageToken
  = lens _tpalPageToken
      (\ s a -> s{_tpalPageToken = a})

-- | OAuth 2.0 token for the current user.
tpalOAuthToken :: Lens' TargetPoolsAggregatedList' (Maybe OAuthToken)
tpalOAuthToken
  = lens _tpalOAuthToken
      (\ s a -> s{_tpalOAuthToken = a})

-- | Maximum count of results to be returned.
tpalMaxResults :: Lens' TargetPoolsAggregatedList' Word32
tpalMaxResults
  = lens _tpalMaxResults
      (\ s a -> s{_tpalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tpalFields :: Lens' TargetPoolsAggregatedList' (Maybe Text)
tpalFields
  = lens _tpalFields (\ s a -> s{_tpalFields = a})

instance GoogleAuth TargetPoolsAggregatedList' where
        authKey = tpalKey . _Just
        authToken = tpalOAuthToken . _Just

instance GoogleRequest TargetPoolsAggregatedList'
         where
        type Rs TargetPoolsAggregatedList' =
             TargetPoolAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsAggregatedList'{..}
          = go _tpalQuotaUser (Just _tpalPrettyPrint)
              _tpalProject
              _tpalUserIP
              _tpalKey
              _tpalFilter
              _tpalPageToken
              _tpalOAuthToken
              (Just _tpalMaxResults)
              _tpalFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsAggregatedListResource)
                      r
                      u
