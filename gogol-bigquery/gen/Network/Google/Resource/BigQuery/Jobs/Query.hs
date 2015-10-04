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
module Network.Google.Resource.BigQuery.Jobs.Query
    (
    -- * REST Resource
      JobsQueryResource

    -- * Creating a Request
    , jobsQuery'
    , JobsQuery'

    -- * Request Lenses
    , jqQuotaUser
    , jqPrettyPrint
    , jqUserIP
    , jqPayload
    , jqKey
    , jqProjectId
    , jqOAuthToken
    , jqFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryJobsQuery@ which the
-- 'JobsQuery'' request conforms to.
type JobsQueryResource =
     "projects" :>
       Capture "projectId" Text :>
         "queries" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] QueryRequest :>
                           Post '[JSON] QueryResponse

-- | Runs a BigQuery SQL query synchronously and returns query results if the
-- query completes within a specified timeout.
--
-- /See:/ 'jobsQuery'' smart constructor.
data JobsQuery' = JobsQuery'
    { _jqQuotaUser   :: !(Maybe Text)
    , _jqPrettyPrint :: !Bool
    , _jqUserIP      :: !(Maybe Text)
    , _jqPayload     :: !QueryRequest
    , _jqKey         :: !(Maybe Key)
    , _jqProjectId   :: !Text
    , _jqOAuthToken  :: !(Maybe OAuthToken)
    , _jqFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jqQuotaUser'
--
-- * 'jqPrettyPrint'
--
-- * 'jqUserIP'
--
-- * 'jqPayload'
--
-- * 'jqKey'
--
-- * 'jqProjectId'
--
-- * 'jqOAuthToken'
--
-- * 'jqFields'
jobsQuery'
    :: QueryRequest -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> JobsQuery'
jobsQuery' pJqPayload_ pJqProjectId_ =
    JobsQuery'
    { _jqQuotaUser = Nothing
    , _jqPrettyPrint = True
    , _jqUserIP = Nothing
    , _jqPayload = pJqPayload_
    , _jqKey = Nothing
    , _jqProjectId = pJqProjectId_
    , _jqOAuthToken = Nothing
    , _jqFields = Nothing
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
jqUserIP :: Lens' JobsQuery' (Maybe Text)
jqUserIP = lens _jqUserIP (\ s a -> s{_jqUserIP = a})

-- | Multipart request metadata.
jqPayload :: Lens' JobsQuery' QueryRequest
jqPayload
  = lens _jqPayload (\ s a -> s{_jqPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jqKey :: Lens' JobsQuery' (Maybe Key)
jqKey = lens _jqKey (\ s a -> s{_jqKey = a})

-- | Project ID of the project billed for the query
jqProjectId :: Lens' JobsQuery' Text
jqProjectId
  = lens _jqProjectId (\ s a -> s{_jqProjectId = a})

-- | OAuth 2.0 token for the current user.
jqOAuthToken :: Lens' JobsQuery' (Maybe OAuthToken)
jqOAuthToken
  = lens _jqOAuthToken (\ s a -> s{_jqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
jqFields :: Lens' JobsQuery' (Maybe Text)
jqFields = lens _jqFields (\ s a -> s{_jqFields = a})

instance GoogleAuth JobsQuery' where
        authKey = jqKey . _Just
        authToken = jqOAuthToken . _Just

instance GoogleRequest JobsQuery' where
        type Rs JobsQuery' = QueryResponse
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u JobsQuery'{..}
          = go _jqProjectId _jqQuotaUser (Just _jqPrettyPrint)
              _jqUserIP
              _jqFields
              _jqKey
              _jqOAuthToken
              (Just AltJSON)
              _jqPayload
          where go
                  = clientWithRoute (Proxy :: Proxy JobsQueryResource)
                      r
                      u
