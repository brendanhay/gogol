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
-- Module      : Network.Google.Resource.Compute.Autoscalers.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of autoscalers grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersAggregatedList@.
module Network.Google.Resource.Compute.Autoscalers.AggregatedList
    (
    -- * REST Resource
      AutoscalersAggregatedListResource

    -- * Creating a Request
    , autoscalersAggregatedList'
    , AutoscalersAggregatedList'

    -- * Request Lenses
    , aalaQuotaUser
    , aalaPrettyPrint
    , aalaProject
    , aalaUserIP
    , aalaKey
    , aalaFilter
    , aalaPageToken
    , aalaOAuthToken
    , aalaMaxResults
    , aalaFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersAggregatedList@ which the
-- 'AutoscalersAggregatedList'' request conforms to.
type AutoscalersAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "autoscalers" :>
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
                               Get '[JSON] AutoscalerAggregatedList

-- | Retrieves the list of autoscalers grouped by scope.
--
-- /See:/ 'autoscalersAggregatedList'' smart constructor.
data AutoscalersAggregatedList' = AutoscalersAggregatedList'
    { _aalaQuotaUser   :: !(Maybe Text)
    , _aalaPrettyPrint :: !Bool
    , _aalaProject     :: !Text
    , _aalaUserIP      :: !(Maybe Text)
    , _aalaKey         :: !(Maybe Key)
    , _aalaFilter      :: !(Maybe Text)
    , _aalaPageToken   :: !(Maybe Text)
    , _aalaOAuthToken  :: !(Maybe OAuthToken)
    , _aalaMaxResults  :: !Word32
    , _aalaFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalaQuotaUser'
--
-- * 'aalaPrettyPrint'
--
-- * 'aalaProject'
--
-- * 'aalaUserIP'
--
-- * 'aalaKey'
--
-- * 'aalaFilter'
--
-- * 'aalaPageToken'
--
-- * 'aalaOAuthToken'
--
-- * 'aalaMaxResults'
--
-- * 'aalaFields'
autoscalersAggregatedList'
    :: Text -- ^ 'project'
    -> AutoscalersAggregatedList'
autoscalersAggregatedList' pAalaProject_ =
    AutoscalersAggregatedList'
    { _aalaQuotaUser = Nothing
    , _aalaPrettyPrint = True
    , _aalaProject = pAalaProject_
    , _aalaUserIP = Nothing
    , _aalaKey = Nothing
    , _aalaFilter = Nothing
    , _aalaPageToken = Nothing
    , _aalaOAuthToken = Nothing
    , _aalaMaxResults = 500
    , _aalaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aalaQuotaUser :: Lens' AutoscalersAggregatedList' (Maybe Text)
aalaQuotaUser
  = lens _aalaQuotaUser
      (\ s a -> s{_aalaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aalaPrettyPrint :: Lens' AutoscalersAggregatedList' Bool
aalaPrettyPrint
  = lens _aalaPrettyPrint
      (\ s a -> s{_aalaPrettyPrint = a})

-- | Name of the project scoping this request.
aalaProject :: Lens' AutoscalersAggregatedList' Text
aalaProject
  = lens _aalaProject (\ s a -> s{_aalaProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aalaUserIP :: Lens' AutoscalersAggregatedList' (Maybe Text)
aalaUserIP
  = lens _aalaUserIP (\ s a -> s{_aalaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aalaKey :: Lens' AutoscalersAggregatedList' (Maybe Key)
aalaKey = lens _aalaKey (\ s a -> s{_aalaKey = a})

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
aalaFilter :: Lens' AutoscalersAggregatedList' (Maybe Text)
aalaFilter
  = lens _aalaFilter (\ s a -> s{_aalaFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
aalaPageToken :: Lens' AutoscalersAggregatedList' (Maybe Text)
aalaPageToken
  = lens _aalaPageToken
      (\ s a -> s{_aalaPageToken = a})

-- | OAuth 2.0 token for the current user.
aalaOAuthToken :: Lens' AutoscalersAggregatedList' (Maybe OAuthToken)
aalaOAuthToken
  = lens _aalaOAuthToken
      (\ s a -> s{_aalaOAuthToken = a})

-- | Maximum count of results to be returned.
aalaMaxResults :: Lens' AutoscalersAggregatedList' Word32
aalaMaxResults
  = lens _aalaMaxResults
      (\ s a -> s{_aalaMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aalaFields :: Lens' AutoscalersAggregatedList' (Maybe Text)
aalaFields
  = lens _aalaFields (\ s a -> s{_aalaFields = a})

instance GoogleAuth AutoscalersAggregatedList' where
        authKey = aalaKey . _Just
        authToken = aalaOAuthToken . _Just

instance GoogleRequest AutoscalersAggregatedList'
         where
        type Rs AutoscalersAggregatedList' =
             AutoscalerAggregatedList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersAggregatedList'{..}
          = go _aalaFilter (Just _aalaMaxResults)
              _aalaPageToken
              _aalaProject
              _aalaQuotaUser
              (Just _aalaPrettyPrint)
              _aalaUserIP
              _aalaFields
              _aalaKey
              _aalaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersAggregatedListResource)
                      r
                      u
