{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Jobs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all jobs that you started in the specified project. Job
-- information is available for a six month period after creation. The job
-- list is sorted in reverse chronological order, by job creation time.
-- Requires the Can View project role, or the Is Owner project role if you
-- set the allUsers property.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryJobsList@.
module BigQuery.Jobs.List
    (
    -- * REST Resource
      JobsListAPI

    -- * Creating a Request
    , jobsList
    , JobsList

    -- * Request Lenses
    , jlQuotaUser
    , jlPrettyPrint
    , jlUserIp
    , jlKey
    , jlStateFilter
    , jlProjection
    , jlPageToken
    , jlProjectId
    , jlAllUsers
    , jlOauthToken
    , jlMaxResults
    , jlFields
    , jlAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryJobsList@ which the
-- 'JobsList' request conforms to.
type JobsListAPI =
     "projects" :>
       Capture "projectId" Text :>
         "jobs" :>
           QueryParams "stateFilter" Text :>
             QueryParam "projection" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "allUsers" Bool :>
                   QueryParam "maxResults" Word32 :> Get '[JSON] JobList

-- | Lists all jobs that you started in the specified project. Job
-- information is available for a six month period after creation. The job
-- list is sorted in reverse chronological order, by job creation time.
-- Requires the Can View project role, or the Is Owner project role if you
-- set the allUsers property.
--
-- /See:/ 'jobsList' smart constructor.
data JobsList = JobsList
    { _jlQuotaUser   :: !(Maybe Text)
    , _jlPrettyPrint :: !Bool
    , _jlUserIp      :: !(Maybe Text)
    , _jlKey         :: !(Maybe Text)
    , _jlStateFilter :: !(Maybe Text)
    , _jlProjection  :: !(Maybe Text)
    , _jlPageToken   :: !(Maybe Text)
    , _jlProjectId   :: !Text
    , _jlAllUsers    :: !(Maybe Bool)
    , _jlOauthToken  :: !(Maybe Text)
    , _jlMaxResults  :: !(Maybe Word32)
    , _jlFields      :: !(Maybe Text)
    , _jlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlQuotaUser'
--
-- * 'jlPrettyPrint'
--
-- * 'jlUserIp'
--
-- * 'jlKey'
--
-- * 'jlStateFilter'
--
-- * 'jlProjection'
--
-- * 'jlPageToken'
--
-- * 'jlProjectId'
--
-- * 'jlAllUsers'
--
-- * 'jlOauthToken'
--
-- * 'jlMaxResults'
--
-- * 'jlFields'
--
-- * 'jlAlt'
jobsList
    :: Text -- ^ 'projectId'
    -> JobsList
jobsList pJlProjectId_ =
    JobsList
    { _jlQuotaUser = Nothing
    , _jlPrettyPrint = True
    , _jlUserIp = Nothing
    , _jlKey = Nothing
    , _jlStateFilter = Nothing
    , _jlProjection = Nothing
    , _jlPageToken = Nothing
    , _jlProjectId = pJlProjectId_
    , _jlAllUsers = Nothing
    , _jlOauthToken = Nothing
    , _jlMaxResults = Nothing
    , _jlFields = Nothing
    , _jlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jlQuotaUser :: Lens' JobsList' (Maybe Text)
jlQuotaUser
  = lens _jlQuotaUser (\ s a -> s{_jlQuotaUser = a})

-- | Returns response with indentations and line breaks.
jlPrettyPrint :: Lens' JobsList' Bool
jlPrettyPrint
  = lens _jlPrettyPrint
      (\ s a -> s{_jlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jlUserIp :: Lens' JobsList' (Maybe Text)
jlUserIp = lens _jlUserIp (\ s a -> s{_jlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jlKey :: Lens' JobsList' (Maybe Text)
jlKey = lens _jlKey (\ s a -> s{_jlKey = a})

-- | Filter for job state
jlStateFilter :: Lens' JobsList' (Maybe Text)
jlStateFilter
  = lens _jlStateFilter
      (\ s a -> s{_jlStateFilter = a})

-- | Restrict information returned to a set of selected fields
jlProjection :: Lens' JobsList' (Maybe Text)
jlProjection
  = lens _jlProjection (\ s a -> s{_jlProjection = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
jlPageToken :: Lens' JobsList' (Maybe Text)
jlPageToken
  = lens _jlPageToken (\ s a -> s{_jlPageToken = a})

-- | Project ID of the jobs to list
jlProjectId :: Lens' JobsList' Text
jlProjectId
  = lens _jlProjectId (\ s a -> s{_jlProjectId = a})

-- | Whether to display jobs owned by all users in the project. Default false
jlAllUsers :: Lens' JobsList' (Maybe Bool)
jlAllUsers
  = lens _jlAllUsers (\ s a -> s{_jlAllUsers = a})

-- | OAuth 2.0 token for the current user.
jlOauthToken :: Lens' JobsList' (Maybe Text)
jlOauthToken
  = lens _jlOauthToken (\ s a -> s{_jlOauthToken = a})

-- | Maximum number of results to return
jlMaxResults :: Lens' JobsList' (Maybe Word32)
jlMaxResults
  = lens _jlMaxResults (\ s a -> s{_jlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
jlFields :: Lens' JobsList' (Maybe Text)
jlFields = lens _jlFields (\ s a -> s{_jlFields = a})

-- | Data format for the response.
jlAlt :: Lens' JobsList' Text
jlAlt = lens _jlAlt (\ s a -> s{_jlAlt = a})

instance GoogleRequest JobsList' where
        type Rs JobsList' = JobList
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u JobsList{..}
          = go _jlQuotaUser _jlPrettyPrint _jlUserIp _jlKey
              _jlStateFilter
              _jlProjection
              _jlPageToken
              _jlProjectId
              _jlAllUsers
              _jlOauthToken
              _jlMaxResults
              _jlFields
              _jlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy JobsListAPI) r u
