{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.BigQuery.Jobs.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryJobsInsert@.
module BigQuery.Jobs.Insert
    (
    -- * REST Resource
      JobsInsertAPI

    -- * Creating a Request
    , jobsInsert
    , JobsInsert

    -- * Request Lenses
    , jiQuotaUser
    , jiPrettyPrint
    , jiUserIp
    , jiKey
    , jiProjectId
    , jiOauthToken
    , jiFields
    , jiAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryJobsInsert@ which the
-- 'JobsInsert' request conforms to.
type JobsInsertAPI =
     "projects" :>
       Capture "projectId" Text :>
         "jobs" :> Post '[JSON] Job

-- | Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ 'jobsInsert' smart constructor.
data JobsInsert = JobsInsert
    { _jiQuotaUser   :: !(Maybe Text)
    , _jiPrettyPrint :: !Bool
    , _jiUserIp      :: !(Maybe Text)
    , _jiKey         :: !(Maybe Text)
    , _jiProjectId   :: !Text
    , _jiOauthToken  :: !(Maybe Text)
    , _jiFields      :: !(Maybe Text)
    , _jiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jiQuotaUser'
--
-- * 'jiPrettyPrint'
--
-- * 'jiUserIp'
--
-- * 'jiKey'
--
-- * 'jiProjectId'
--
-- * 'jiOauthToken'
--
-- * 'jiFields'
--
-- * 'jiAlt'
jobsInsert
    :: Text -- ^ 'projectId'
    -> JobsInsert
jobsInsert pJiProjectId_ =
    JobsInsert
    { _jiQuotaUser = Nothing
    , _jiPrettyPrint = True
    , _jiUserIp = Nothing
    , _jiKey = Nothing
    , _jiProjectId = pJiProjectId_
    , _jiOauthToken = Nothing
    , _jiFields = Nothing
    , _jiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jiQuotaUser :: Lens' JobsInsert' (Maybe Text)
jiQuotaUser
  = lens _jiQuotaUser (\ s a -> s{_jiQuotaUser = a})

-- | Returns response with indentations and line breaks.
jiPrettyPrint :: Lens' JobsInsert' Bool
jiPrettyPrint
  = lens _jiPrettyPrint
      (\ s a -> s{_jiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jiUserIp :: Lens' JobsInsert' (Maybe Text)
jiUserIp = lens _jiUserIp (\ s a -> s{_jiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jiKey :: Lens' JobsInsert' (Maybe Text)
jiKey = lens _jiKey (\ s a -> s{_jiKey = a})

-- | Project ID of the project that will be billed for the job
jiProjectId :: Lens' JobsInsert' Text
jiProjectId
  = lens _jiProjectId (\ s a -> s{_jiProjectId = a})

-- | OAuth 2.0 token for the current user.
jiOauthToken :: Lens' JobsInsert' (Maybe Text)
jiOauthToken
  = lens _jiOauthToken (\ s a -> s{_jiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
jiFields :: Lens' JobsInsert' (Maybe Text)
jiFields = lens _jiFields (\ s a -> s{_jiFields = a})

-- | Data format for the response.
jiAlt :: Lens' JobsInsert' Text
jiAlt = lens _jiAlt (\ s a -> s{_jiAlt = a})

instance GoogleRequest JobsInsert' where
        type Rs JobsInsert' = Job
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u JobsInsert{..}
          = go _jiQuotaUser _jiPrettyPrint _jiUserIp _jiKey
              _jiProjectId
              _jiOauthToken
              _jiFields
              _jiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy JobsInsertAPI) r u
