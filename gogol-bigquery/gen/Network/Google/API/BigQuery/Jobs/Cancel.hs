{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.BigQuery.Jobs.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests that a job be cancelled. This call will return immediately, and
-- the client will need to poll for the job status to see if the cancel
-- completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.cancel@.
module Network.Google.API.BigQuery.Jobs.Cancel
    (
    -- * REST Resource
      JobsCancelAPI

    -- * Creating a Request
    , jobsCancel'
    , JobsCancel'

    -- * Request Lenses
    , jcQuotaUser
    , jcPrettyPrint
    , jcJobId
    , jcUserIp
    , jcKey
    , jcProjectId
    , jcOauthToken
    , jcFields
    , jcAlt
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for bigquery.jobs.cancel which the
-- 'JobsCancel'' request conforms to.
type JobsCancelAPI =
     "project" :>
       Capture "projectId" Text :>
         "jobs" :>
           Capture "jobId" Text :>
             "cancel" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON] JobCancelResponse

-- | Requests that a job be cancelled. This call will return immediately, and
-- the client will need to poll for the job status to see if the cancel
-- completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ 'jobsCancel'' smart constructor.
data JobsCancel' = JobsCancel'
    { _jcQuotaUser   :: !(Maybe Text)
    , _jcPrettyPrint :: !Bool
    , _jcJobId       :: !Text
    , _jcUserIp      :: !(Maybe Text)
    , _jcKey         :: !(Maybe Text)
    , _jcProjectId   :: !Text
    , _jcOauthToken  :: !(Maybe Text)
    , _jcFields      :: !(Maybe Text)
    , _jcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsCancel'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcQuotaUser'
--
-- * 'jcPrettyPrint'
--
-- * 'jcJobId'
--
-- * 'jcUserIp'
--
-- * 'jcKey'
--
-- * 'jcProjectId'
--
-- * 'jcOauthToken'
--
-- * 'jcFields'
--
-- * 'jcAlt'
jobsCancel'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> JobsCancel'
jobsCancel' pJcJobId_ pJcProjectId_ =
    JobsCancel'
    { _jcQuotaUser = Nothing
    , _jcPrettyPrint = True
    , _jcJobId = pJcJobId_
    , _jcUserIp = Nothing
    , _jcKey = Nothing
    , _jcProjectId = pJcProjectId_
    , _jcOauthToken = Nothing
    , _jcFields = Nothing
    , _jcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jcQuotaUser :: Lens' JobsCancel' (Maybe Text)
jcQuotaUser
  = lens _jcQuotaUser (\ s a -> s{_jcQuotaUser = a})

-- | Returns response with indentations and line breaks.
jcPrettyPrint :: Lens' JobsCancel' Bool
jcPrettyPrint
  = lens _jcPrettyPrint
      (\ s a -> s{_jcPrettyPrint = a})

-- | Job ID of the job to cancel
jcJobId :: Lens' JobsCancel' Text
jcJobId = lens _jcJobId (\ s a -> s{_jcJobId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jcUserIp :: Lens' JobsCancel' (Maybe Text)
jcUserIp = lens _jcUserIp (\ s a -> s{_jcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jcKey :: Lens' JobsCancel' (Maybe Text)
jcKey = lens _jcKey (\ s a -> s{_jcKey = a})

-- | Project ID of the job to cancel
jcProjectId :: Lens' JobsCancel' Text
jcProjectId
  = lens _jcProjectId (\ s a -> s{_jcProjectId = a})

-- | OAuth 2.0 token for the current user.
jcOauthToken :: Lens' JobsCancel' (Maybe Text)
jcOauthToken
  = lens _jcOauthToken (\ s a -> s{_jcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
jcFields :: Lens' JobsCancel' (Maybe Text)
jcFields = lens _jcFields (\ s a -> s{_jcFields = a})

-- | Data format for the response.
jcAlt :: Lens' JobsCancel' Alt
jcAlt = lens _jcAlt (\ s a -> s{_jcAlt = a})

instance GoogleRequest JobsCancel' where
        type Rs JobsCancel' = JobCancelResponse
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u JobsCancel'{..}
          = go _jcQuotaUser (Just _jcPrettyPrint) _jcJobId
              _jcUserIp
              _jcKey
              _jcProjectId
              _jcOauthToken
              _jcFields
              (Just _jcAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy JobsCancelAPI) r u
