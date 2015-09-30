{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Jobs.GetQueryResults
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the results of a query job.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryJobsGetQueryResults@.
module BigQuery.Jobs.GetQueryResults
    (
    -- * REST Resource
      JobsGetQueryResultsAPI

    -- * Creating a Request
    , jobsGetQueryResults
    , JobsGetQueryResults

    -- * Request Lenses
    , jgqrQuotaUser
    , jgqrPrettyPrint
    , jgqrJobId
    , jgqrUserIp
    , jgqrKey
    , jgqrTimeoutMs
    , jgqrPageToken
    , jgqrProjectId
    , jgqrOauthToken
    , jgqrStartIndex
    , jgqrMaxResults
    , jgqrFields
    , jgqrAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryJobsGetQueryResults@ which the
-- 'JobsGetQueryResults' request conforms to.
type JobsGetQueryResultsAPI =
     "projects" :>
       Capture "projectId" Text :>
         "queries" :>
           Capture "jobId" Text :>
             QueryParam "timeoutMs" Word32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "startIndex" Word64 :>
                   QueryParam "maxResults" Word32 :>
                     Get '[JSON] GetQueryResultsResponse

-- | Retrieves the results of a query job.
--
-- /See:/ 'jobsGetQueryResults' smart constructor.
data JobsGetQueryResults = JobsGetQueryResults
    { _jgqrQuotaUser   :: !(Maybe Text)
    , _jgqrPrettyPrint :: !Bool
    , _jgqrJobId       :: !Text
    , _jgqrUserIp      :: !(Maybe Text)
    , _jgqrKey         :: !(Maybe Text)
    , _jgqrTimeoutMs   :: !(Maybe Word32)
    , _jgqrPageToken   :: !(Maybe Text)
    , _jgqrProjectId   :: !Text
    , _jgqrOauthToken  :: !(Maybe Text)
    , _jgqrStartIndex  :: !(Maybe Word64)
    , _jgqrMaxResults  :: !(Maybe Word32)
    , _jgqrFields      :: !(Maybe Text)
    , _jgqrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsGetQueryResults'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jgqrQuotaUser'
--
-- * 'jgqrPrettyPrint'
--
-- * 'jgqrJobId'
--
-- * 'jgqrUserIp'
--
-- * 'jgqrKey'
--
-- * 'jgqrTimeoutMs'
--
-- * 'jgqrPageToken'
--
-- * 'jgqrProjectId'
--
-- * 'jgqrOauthToken'
--
-- * 'jgqrStartIndex'
--
-- * 'jgqrMaxResults'
--
-- * 'jgqrFields'
--
-- * 'jgqrAlt'
jobsGetQueryResults
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> JobsGetQueryResults
jobsGetQueryResults pJgqrJobId_ pJgqrProjectId_ =
    JobsGetQueryResults
    { _jgqrQuotaUser = Nothing
    , _jgqrPrettyPrint = True
    , _jgqrJobId = pJgqrJobId_
    , _jgqrUserIp = Nothing
    , _jgqrKey = Nothing
    , _jgqrTimeoutMs = Nothing
    , _jgqrPageToken = Nothing
    , _jgqrProjectId = pJgqrProjectId_
    , _jgqrOauthToken = Nothing
    , _jgqrStartIndex = Nothing
    , _jgqrMaxResults = Nothing
    , _jgqrFields = Nothing
    , _jgqrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jgqrQuotaUser :: Lens' JobsGetQueryResults' (Maybe Text)
jgqrQuotaUser
  = lens _jgqrQuotaUser
      (\ s a -> s{_jgqrQuotaUser = a})

-- | Returns response with indentations and line breaks.
jgqrPrettyPrint :: Lens' JobsGetQueryResults' Bool
jgqrPrettyPrint
  = lens _jgqrPrettyPrint
      (\ s a -> s{_jgqrPrettyPrint = a})

-- | Job ID of the query job
jgqrJobId :: Lens' JobsGetQueryResults' Text
jgqrJobId
  = lens _jgqrJobId (\ s a -> s{_jgqrJobId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jgqrUserIp :: Lens' JobsGetQueryResults' (Maybe Text)
jgqrUserIp
  = lens _jgqrUserIp (\ s a -> s{_jgqrUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jgqrKey :: Lens' JobsGetQueryResults' (Maybe Text)
jgqrKey = lens _jgqrKey (\ s a -> s{_jgqrKey = a})

-- | How long to wait for the query to complete, in milliseconds, before
-- returning. Default is 10 seconds. If the timeout passes before the job
-- completes, the \'jobComplete\' field in the response will be false
jgqrTimeoutMs :: Lens' JobsGetQueryResults' (Maybe Word32)
jgqrTimeoutMs
  = lens _jgqrTimeoutMs
      (\ s a -> s{_jgqrTimeoutMs = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
jgqrPageToken :: Lens' JobsGetQueryResults' (Maybe Text)
jgqrPageToken
  = lens _jgqrPageToken
      (\ s a -> s{_jgqrPageToken = a})

-- | Project ID of the query job
jgqrProjectId :: Lens' JobsGetQueryResults' Text
jgqrProjectId
  = lens _jgqrProjectId
      (\ s a -> s{_jgqrProjectId = a})

-- | OAuth 2.0 token for the current user.
jgqrOauthToken :: Lens' JobsGetQueryResults' (Maybe Text)
jgqrOauthToken
  = lens _jgqrOauthToken
      (\ s a -> s{_jgqrOauthToken = a})

-- | Zero-based index of the starting row
jgqrStartIndex :: Lens' JobsGetQueryResults' (Maybe Word64)
jgqrStartIndex
  = lens _jgqrStartIndex
      (\ s a -> s{_jgqrStartIndex = a})

-- | Maximum number of results to read
jgqrMaxResults :: Lens' JobsGetQueryResults' (Maybe Word32)
jgqrMaxResults
  = lens _jgqrMaxResults
      (\ s a -> s{_jgqrMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
jgqrFields :: Lens' JobsGetQueryResults' (Maybe Text)
jgqrFields
  = lens _jgqrFields (\ s a -> s{_jgqrFields = a})

-- | Data format for the response.
jgqrAlt :: Lens' JobsGetQueryResults' Text
jgqrAlt = lens _jgqrAlt (\ s a -> s{_jgqrAlt = a})

instance GoogleRequest JobsGetQueryResults' where
        type Rs JobsGetQueryResults' =
             GetQueryResultsResponse
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u JobsGetQueryResults{..}
          = go _jgqrQuotaUser _jgqrPrettyPrint _jgqrJobId
              _jgqrUserIp
              _jgqrKey
              _jgqrTimeoutMs
              _jgqrPageToken
              _jgqrProjectId
              _jgqrOauthToken
              _jgqrStartIndex
              _jgqrMaxResults
              _jgqrFields
              _jgqrAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy JobsGetQueryResultsAPI)
                      r
                      u
