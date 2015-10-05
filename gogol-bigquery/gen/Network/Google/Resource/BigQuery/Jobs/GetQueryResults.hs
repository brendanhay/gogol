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
module Network.Google.Resource.BigQuery.Jobs.GetQueryResults
    (
    -- * REST Resource
      JobsGetQueryResultsResource

    -- * Creating a Request
    , jobsGetQueryResults'
    , JobsGetQueryResults'

    -- * Request Lenses
    , jgqrQuotaUser
    , jgqrPrettyPrint
    , jgqrJobId
    , jgqrUserIP
    , jgqrKey
    , jgqrTimeoutMs
    , jgqrPageToken
    , jgqrProjectId
    , jgqrOAuthToken
    , jgqrStartIndex
    , jgqrMaxResults
    , jgqrFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryJobsGetQueryResults@ which the
-- 'JobsGetQueryResults'' request conforms to.
type JobsGetQueryResultsResource =
     "projects" :>
       Capture "projectId" Text :>
         "queries" :>
           Capture "jobId" Text :>
             QueryParam "timeoutMs" Word32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "startIndex" Word64 :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] GetQueryResultsResponse

-- | Retrieves the results of a query job.
--
-- /See:/ 'jobsGetQueryResults'' smart constructor.
data JobsGetQueryResults' = JobsGetQueryResults'
    { _jgqrQuotaUser   :: !(Maybe Text)
    , _jgqrPrettyPrint :: !Bool
    , _jgqrJobId       :: !Text
    , _jgqrUserIP      :: !(Maybe Text)
    , _jgqrKey         :: !(Maybe Key)
    , _jgqrTimeoutMs   :: !(Maybe Word32)
    , _jgqrPageToken   :: !(Maybe Text)
    , _jgqrProjectId   :: !Text
    , _jgqrOAuthToken  :: !(Maybe OAuthToken)
    , _jgqrStartIndex  :: !(Maybe Word64)
    , _jgqrMaxResults  :: !(Maybe Word32)
    , _jgqrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'jgqrUserIP'
--
-- * 'jgqrKey'
--
-- * 'jgqrTimeoutMs'
--
-- * 'jgqrPageToken'
--
-- * 'jgqrProjectId'
--
-- * 'jgqrOAuthToken'
--
-- * 'jgqrStartIndex'
--
-- * 'jgqrMaxResults'
--
-- * 'jgqrFields'
jobsGetQueryResults'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> JobsGetQueryResults'
jobsGetQueryResults' pJgqrJobId_ pJgqrProjectId_ =
    JobsGetQueryResults'
    { _jgqrQuotaUser = Nothing
    , _jgqrPrettyPrint = True
    , _jgqrJobId = pJgqrJobId_
    , _jgqrUserIP = Nothing
    , _jgqrKey = Nothing
    , _jgqrTimeoutMs = Nothing
    , _jgqrPageToken = Nothing
    , _jgqrProjectId = pJgqrProjectId_
    , _jgqrOAuthToken = Nothing
    , _jgqrStartIndex = Nothing
    , _jgqrMaxResults = Nothing
    , _jgqrFields = Nothing
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
jgqrUserIP :: Lens' JobsGetQueryResults' (Maybe Text)
jgqrUserIP
  = lens _jgqrUserIP (\ s a -> s{_jgqrUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jgqrKey :: Lens' JobsGetQueryResults' (Maybe Key)
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
jgqrOAuthToken :: Lens' JobsGetQueryResults' (Maybe OAuthToken)
jgqrOAuthToken
  = lens _jgqrOAuthToken
      (\ s a -> s{_jgqrOAuthToken = a})

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

instance GoogleAuth JobsGetQueryResults' where
        authKey = jgqrKey . _Just
        authToken = jgqrOAuthToken . _Just

instance GoogleRequest JobsGetQueryResults' where
        type Rs JobsGetQueryResults' =
             GetQueryResultsResponse
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u JobsGetQueryResults'{..}
          = go _jgqrProjectId _jgqrJobId _jgqrTimeoutMs
              _jgqrPageToken
              _jgqrStartIndex
              _jgqrMaxResults
              _jgqrQuotaUser
              (Just _jgqrPrettyPrint)
              _jgqrUserIP
              _jgqrFields
              _jgqrKey
              _jgqrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy JobsGetQueryResultsResource)
                      r
                      u
