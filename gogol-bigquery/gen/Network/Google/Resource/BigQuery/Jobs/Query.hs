{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Jobs.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Runs a BigQuery SQL query synchronously and returns query results if the
-- query completes within a specified timeout.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryJobsQuery@.
module BigQuery.Jobs.Query
    (
    -- * REST Resource
      JobsQueryAPI

    -- * Creating a Request
    , jobsQuery
    , JobsQuery

    -- * Request Lenses
    , jqQuotaUser
    , jqPrettyPrint
    , jqUserIp
    , jqKey
    , jqProjectId
    , jqOauthToken
    , jqFields
    , jqAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryJobsQuery@ which the
-- 'JobsQuery' request conforms to.
type JobsQueryAPI =
     "projects" :>
       Capture "projectId" Text :>
         "queries" :> Post '[JSON] QueryResponse

-- | Runs a BigQuery SQL query synchronously and returns query results if the
-- query completes within a specified timeout.
--
-- /See:/ 'jobsQuery' smart constructor.
data JobsQuery = JobsQuery
    { _jqQuotaUser   :: !(Maybe Text)
    , _jqPrettyPrint :: !Bool
    , _jqUserIp      :: !(Maybe Text)
    , _jqKey         :: !(Maybe Text)
    , _jqProjectId   :: !Text
    , _jqOauthToken  :: !(Maybe Text)
    , _jqFields      :: !(Maybe Text)
    , _jqAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jqQuotaUser'
--
-- * 'jqPrettyPrint'
--
-- * 'jqUserIp'
--
-- * 'jqKey'
--
-- * 'jqProjectId'
--
-- * 'jqOauthToken'
--
-- * 'jqFields'
--
-- * 'jqAlt'
jobsQuery
    :: Text -- ^ 'projectId'
    -> JobsQuery
jobsQuery pJqProjectId_ =
    JobsQuery
    { _jqQuotaUser = Nothing
    , _jqPrettyPrint = True
    , _jqUserIp = Nothing
    , _jqKey = Nothing
    , _jqProjectId = pJqProjectId_
    , _jqOauthToken = Nothing
    , _jqFields = Nothing
    , _jqAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jqQuotaUser :: Lens' JobsQuery' (Maybe Text)
jqQuotaUser
  = lens _jqQuotaUser (\ s a -> s{_jqQuotaUser = a})

-- | Returns response with indentations and line breaks.
jqPrettyPrint :: Lens' JobsQuery' Bool
jqPrettyPrint
  = lens _jqPrettyPrint
      (\ s a -> s{_jqPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jqUserIp :: Lens' JobsQuery' (Maybe Text)
jqUserIp = lens _jqUserIp (\ s a -> s{_jqUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jqKey :: Lens' JobsQuery' (Maybe Text)
jqKey = lens _jqKey (\ s a -> s{_jqKey = a})

-- | Project ID of the project billed for the query
jqProjectId :: Lens' JobsQuery' Text
jqProjectId
  = lens _jqProjectId (\ s a -> s{_jqProjectId = a})

-- | OAuth 2.0 token for the current user.
jqOauthToken :: Lens' JobsQuery' (Maybe Text)
jqOauthToken
  = lens _jqOauthToken (\ s a -> s{_jqOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
jqFields :: Lens' JobsQuery' (Maybe Text)
jqFields = lens _jqFields (\ s a -> s{_jqFields = a})

-- | Data format for the response.
jqAlt :: Lens' JobsQuery' Text
jqAlt = lens _jqAlt (\ s a -> s{_jqAlt = a})

instance GoogleRequest JobsQuery' where
        type Rs JobsQuery' = QueryResponse
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u JobsQuery{..}
          = go _jqQuotaUser _jqPrettyPrint _jqUserIp _jqKey
              _jqProjectId
              _jqOauthToken
              _jqFields
              _jqAlt
          where go
                  = clientWithRoute (Proxy :: Proxy JobsQueryAPI) r u
